# frozen_string_literal: true

class DogPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    user.can_read?
  end

  def show?
    index?
  end

  def create?
    user.can_edit?
  end

  def new?
    create?
  end

  def update?
    user.can_edit?
  end

  def edit?
    update?
  end

  def destroy?
    user.can_edit?
  end

  class Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      raise NotImplementedError, "You must define #resolve in #{self.class}"
    end

    private

    attr_reader :user, :scope
  end
end
