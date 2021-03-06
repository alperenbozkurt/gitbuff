class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def show
    @user = User.find_by(username: params[:username].downcase)      # Eğer kullanıcı var ise getirdik
    @git_user = helpers.user_info(params[:username])                # Githubdan kullanıcının verilerini getirdik.

    if @git_user.include? 'message'                                 # Responsda message anahtarı varsa hata vardır.
      if @git_user['message'] == 'Not Found'                        # Böyle bir kullanıcı hiç yoksa diye view katmanında kontrol yapacağım.
        return
      else
        redirect_to(query_error_path) and return                    # Değilse sorgu limiti dolmuştur, hata sayfasına yönlendiriyorum.
      end
    end

    if @user.nil? && @git_user.present?                             # Kullanıcı veritabanında yok ama githubdan geliyorsa
      @user = User.create(username: @git_user['login'].downcase, image_url: @git_user['avatar_url'], count: 1)
    elsif @user.present?                                            # ^^^^ bu kullanıcıyı veritabanına ekledik.
      @user.count += 1
      @user.save!                                                   # Kullanıcı zaten varsa sayacını bir arttırdık
    end
  end

  def most
    @users = User.paginate(:page => params[:page], :per_page => 10).order(count: :DESC)
  end

  def search
    redirect_to user_show_path(params[:username])
    # Arama formunu get metodu ile show sayfasına bağlayamadığım için araya bir search katmanı koydum.
    # Kullanıcı arama yaptığında user#search çalışıyor. Burdan da user#show 'a yolluyorum.
  end

  def line
    @line_count = helpers.line_count(params[:username])             # Satır sayısını hesaplayan yardımcı methodu çağırdım.
    render layout: false
  end

  def error
    @remaining_time = helpers.remaining_time
  end
end
