module UsersHelper
  def error_helper(user)
    if @user.errors.any?
      pluralize(@user.errors.count, "error")
      @user.errors.full_messages.each do |msg|
        msg
      end
    end
  end
end
