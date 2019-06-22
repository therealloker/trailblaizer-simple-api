# frozen_string_literal: true

module V1::Users::Operation
  class Register < Trailblazer::Operation
    step Model(User, :new)
    step Contract::Build(constant: V1::Users::Contract::Register)
    step Contract::Validate()
    step Contract::Persist()
    step :renderer_options

    def renderer_options(ctx, **)
      ctx[:renderer_options] = { class: { User: V1::Users::Representer::Register } }
    end
  end
end
