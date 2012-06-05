require "blacklight"
require 'active-fedora'
require 'cancan'

# Hydra libraries
module Hydra
  extend Blacklight::GlobalConfigurable
  extend ActiveSupport::Autoload
  autoload :AccessControlsEvaluation
  autoload :AccessControlsEnforcement
  autoload :Assets
  autoload :Catalog
  autoload :Controller
  autoload :FileAssets
  autoload :GenericContent
  autoload :GenericImage
  autoload :GenericUserAttributes
  autoload :ModelMixins
  autoload :ModsGenericContent
  autoload :ModsImage
  autoload :RepositoryController
  autoload :SubmissionWorkflow
  autoload :SuperuserAttributes
  autoload :User
  autoload :UI
  autoload :Workflow

  # This error is raised when a user isn't allowed to access a given controller action.
  # This usually happens within a call to AccessControlsEnforcement#enforce_access_controls but can be
  # raised manually.
  class Hydra::AccessDenied < CanCan::AccessDenied; end
end



require 'hydra/assets_controller_helper'
require 'hydra/file_assets_helper'

require 'hydra/rights_metadata'
require 'hydra/common_mods_index_methods'
require 'hydra/mods_article'
require 'hydra/model_methods'
require 'hydra/models/file_asset'
require 'mediashelf/active_fedora_helper' #deprecated


