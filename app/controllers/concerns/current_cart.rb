
module CurrentCart
	extend ActiveSupport::Concern

	private
		def set_cart
			@cart = Cart.find(session[:cart_id])
		rescue ActiveRecord::RecordNotFound
			@cart = Cart.create
			session[:cart_id] = @cart.id
		end

		def set_counter
		  @counter = 0
			if session[:counter]
				@counter = session[:counter]
				@counter = @counter + 1
			end
			session[:counter] = @counter
		end

		def reset_counter
			session[:counter] = nil
		end
end
