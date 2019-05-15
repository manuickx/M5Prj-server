class ProvidersController < ApplicationController

    def index
        providers = Provider.all
        render json: providers
    end

    def create
        provider = Provider.new(name: params[:name], email: params[:email], password: params[:password])
        if provider.save
            payload = { provider_id: provider.id }
            token = issue_token(payload)
            render json: { jwt: token }
        else
            render json: { error: 'Signup not succesfull!'}
        end
    end

end
