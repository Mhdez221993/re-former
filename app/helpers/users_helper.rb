module UsersHelper
  def error_helper(user)
    if user.errors.any?
      pluralize(user.errors.count, 'error')
      err = ''
      @user.errors.full_messages.each { |msg| err << "#{msg}  " }
      err
    end
  end
end
