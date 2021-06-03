module UsersHelper
  def error_helper(_user)
    if @user.errors.any?
      pluralize(@user.errors.count, 'error')
      err = ''
      @user.errors.full_messages.each do |msg|
        err << "#{msg}  "
      end
      err
    end
  end
end
