Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D14A29EE3A2
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 11:04:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB2F710ED22;
	Thu, 12 Dec 2024 10:04:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lo6nsPMJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4771210ED19;
 Thu, 12 Dec 2024 10:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733997864; x=1765533864;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=aaNMOw6yGg2hcR4hcdf8fbQZuFptfqmNNZxlpj9bgFU=;
 b=lo6nsPMJVVpAtMDeAuVvbMVCYZXi1QrSDnTXWuEyF7Vw8H0vD6X67Lig
 s13U18Z4fA7NlnrYeBwoevuK5SEqYod1AOSchBzppHmE0VqZF3em/rga5
 Du+1pBhzPTQMLgoVON24wNO6KeKfn7CFuPf8aFNkKDcP2Hak8kwyIC3yh
 DfMF4CzIHwUD6b8mIHCrjRPNczpFhnKchjVetxy/ZmOfqtui0QQUcYpaj
 que5AGbcYWNaJK3t0KvYdiP7uTAgt2jeFLGxNeLlkiq+EAM8YELRD/WI7
 lkferjiTRnhYOHNQxQtXjK/d2Hjh+LNujrlitEir6JN8dnFHtoZRPS5LT Q==;
X-CSE-ConnectionGUID: B7SdyMZZTHe3Xw1VZ0uXNQ==
X-CSE-MsgGUID: NJ94ktS1Qz2CxEAc6ERG9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11283"; a="45016870"
X-IronPort-AV: E=Sophos;i="6.12,228,1728975600"; d="scan'208";a="45016870"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 02:04:23 -0800
X-CSE-ConnectionGUID: CCF6+7yQTw6w3QdGgsxrzA==
X-CSE-MsgGUID: mYZQINX/S1iqZDGm4rrFLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133571320"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.101])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 02:04:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Simona Vetter <simona@ffwll.ch>, Maxime
 Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v3 01/11] drm/connector: Add a way to init/add a
 connector in separate steps
In-Reply-To: <20241211230328.4012496-2-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241211230328.4012496-1-imre.deak@intel.com>
 <20241211230328.4012496-2-imre.deak@intel.com>
Date: Thu, 12 Dec 2024 12:04:17 +0200
Message-ID: <87jzc5xlni.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 12 Dec 2024, Imre Deak <imre.deak@intel.com> wrote:
> Atm when the connector is added to the drm_mode_config::connector_list,
> the connector may not be fully initialized yet. This is not a problem
> for static connectors initialized/added during driver loading, for which
> the driver ensures that look-ups via the above list are not possible
> until all the connector and other required state is fully initialized
> already. It's also not a problem for user space looking up either a
> static or dynamic (see what this is below) connector, since this will be
> only possible once the connector is registered.
>
> A dynamic - atm only a DP MST - connector can be initialized and added
> after the load time initialization is done. Such a connector may be
> looked up by in-kernel users once it's added to the connector list. In
> particular a hotplug handler could perform a detection on all the
> connectors on the list and hence find a connector there which isn't yet
> initialized. For instance the connector's helper hooks may be unset,
> leading to a NULL dereference while the detect helper calls the
> connector's drm_connector_helper_funcs::detect() or detect_ctx()
> handler.
>
> To resolve the above issue, add a way for dynamic connectors to
> separately initialize the DRM core specific parts of the connector
> without adding it to the connector list - by calling the new
> drm_connector_dynamic_init() - and to add the connector to the list
> later once all the initialization is complete and the connector is
> registered - by calling the new drm_connector_dynamic_register().
>
> Adding the above 2 functions was also motivated to make the distinction
> of the interface between static and dynamic connectors clearer: Drivers
> should manually initialize and register only dynamic connectors (with
> the above 2 functions). A driver should only initialize a static
> connector (with one of the drm_connector_init*, drmm_connector_init*
> functions) while the registration of the connector will be done
> automatically by DRM core.
>
> v2: (Jani)
> - Let initing DDC as well via drm_connector_init_core().
> - Rename __drm_connector_init to drm_connector_init_core_and_add().
>
> v3:
> - Rename drm_connector_init_core() to drm_connector_dynamic_init().
>   (Sima)
> - Instead of exporting drm_connector_add(), move adding the connector
>   to the registration step via a new drm_connector_dynamic_register().
>   (Sima)
> - Update drm_connector_dynamic_init()'s function documentation and the
>   commit log according to the above changes.
> - Update the commit log describing the problematic scenario during
>   connector detection. (Maxime)
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Simona Vetter <simona@ffwll.ch>
> Cc: Maxime Ripard <mripard@kernel.org>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com> (v1)
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Overall

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

with some non-blocking subjective nitpicks inline.

> ---
>  drivers/gpu/drm/drm_connector.c | 150 +++++++++++++++++++++++++++-----
>  include/drm/drm_connector.h     |   6 ++
>  2 files changed, 136 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> index fc35f47e2849e..a53e5629ba6c1 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -218,11 +218,11 @@ void drm_connector_free_work_fn(struct work_struct *work)
>  	}
>  }
>  
> -static int __drm_connector_init(struct drm_device *dev,
> -				struct drm_connector *connector,
> -				const struct drm_connector_funcs *funcs,
> -				int connector_type,
> -				struct i2c_adapter *ddc)
> +static int drm_connector_init_only(struct drm_device *dev,
> +				   struct drm_connector *connector,
> +				   const struct drm_connector_funcs *funcs,
> +				   int connector_type,
> +				   struct i2c_adapter *ddc)
>  {
>  	struct drm_mode_config *config = &dev->mode_config;
>  	int ret;
> @@ -273,6 +273,7 @@ static int __drm_connector_init(struct drm_device *dev,
>  	/* provide ddc symlink in sysfs */
>  	connector->ddc = ddc;
>  
> +	INIT_LIST_HEAD(&connector->head);

Side note, it's confusing the node is called a head, and its
documentation actually describes it as a "list of all connectors".

>  	INIT_LIST_HEAD(&connector->global_connector_list_entry);
>  	INIT_LIST_HEAD(&connector->probed_modes);
>  	INIT_LIST_HEAD(&connector->modes);
> @@ -288,14 +289,6 @@ static int __drm_connector_init(struct drm_device *dev,
>  
>  	drm_connector_get_cmdline_mode(connector);
>  
> -	/* We should add connectors at the end to avoid upsetting the connector
> -	 * index too much.
> -	 */
> -	spin_lock_irq(&config->connector_list_lock);
> -	list_add_tail(&connector->head, &config->connector_list);
> -	config->num_connector++;
> -	spin_unlock_irq(&config->connector_list_lock);
> -
>  	if (connector_type != DRM_MODE_CONNECTOR_VIRTUAL &&
>  	    connector_type != DRM_MODE_CONNECTOR_WRITEBACK)
>  		drm_connector_attach_edid_property(connector);
> @@ -332,6 +325,58 @@ static int __drm_connector_init(struct drm_device *dev,
>  	return ret;
>  }
>  
> +static void drm_connector_add(struct drm_connector *connector)
> +{
> +	struct drm_device *dev = connector->dev;
> +	struct drm_mode_config *config = &dev->mode_config;
> +
> +	/*
> +	 * TODO: Change this to a WARN, once all drivers are converted to
> +	 * call drm_connector_dynamic_init() for MST connectors.
> +	 */
> +	if (!list_empty(&connector->head))
> +		return;
> +
> +	spin_lock_irq(&config->connector_list_lock);
> +	list_add_tail(&connector->head, &config->connector_list);
> +	config->num_connector++;
> +	spin_unlock_irq(&config->connector_list_lock);
> +}
> +
> +static void drm_connector_remove(struct drm_connector *connector)
> +{
> +	struct drm_device *dev = connector->dev;
> +
> +	/*
> +	 * For dynamic connectors drm_connector_cleanup() can call this function
> +	 * before the connector is registered and added to the list.
> +	 */
> +	if (list_empty(&connector->head))
> +		return;
> +
> +	spin_lock_irq(&dev->mode_config.connector_list_lock);
> +	list_del_init(&connector->head);
> +	dev->mode_config.num_connector--;
> +	spin_unlock_irq(&dev->mode_config.connector_list_lock);
> +}

I think there's a bit much going on in this patch, and the splitting of
the above functions could've been a separate prep patch.

> +
> +static int drm_connector_init_and_add(struct drm_device *dev,
> +				      struct drm_connector *connector,
> +				      const struct drm_connector_funcs *funcs,
> +				      int connector_type,
> +				      struct i2c_adapter *ddc)
> +{
> +	int ret;
> +
> +	ret = drm_connector_init_only(dev, connector, funcs, connector_type, ddc);
> +	if (ret)
> +		return ret;
> +
> +	drm_connector_add(connector);
> +
> +	return 0;
> +}
> +
>  /**
>   * drm_connector_init - Init a preallocated connector
>   * @dev: DRM device
> @@ -361,10 +406,51 @@ int drm_connector_init(struct drm_device *dev,
>  	if (drm_WARN_ON(dev, !(funcs && funcs->destroy)))
>  		return -EINVAL;
>  
> -	return __drm_connector_init(dev, connector, funcs, connector_type, NULL);
> +	return drm_connector_init_and_add(dev, connector, funcs, connector_type, NULL);
>  }
>  EXPORT_SYMBOL(drm_connector_init);
>  
> +/**
> + * drm_connector_dynamic_init - Init a preallocated dynamic connector
> + * @dev: DRM device
> + * @connector: the connector to init
> + * @funcs: callbacks for this connector
> + * @connector_type: user visible type of the connector
> + * @ddc: pointer to the associated ddc adapter
> + *
> + * Initialises a preallocated dynamic connector. Connectors should be
> + * subclassed as part of driver connector objects. The connector
> + * structure should not be allocated with devm_kzalloc().
> + *
> + * Drivers should call this for dynamic connectors which can be hotplugged
> + * after drm_dev_register() has been called already, e.g. DP MST connectors.
> + * For all other - static - connectors, drivers should call one of the
> + * drm_connector_init*()/drmm_connector_init*() functions.
> + *
> + * After calling this function the drivers must call
> + * drm_connector_dynamic_register().
> + *
> + * To remove the connector the driver must call drm_connector_unregister()
> + * followed by drm_connector_put(). Putting the last reference will call the
> + * driver's &drm_connector_funcs.destroy hook, which in turn must call
> + * drm_connector_cleanup() and free the connector structure.
> + *
> + * Returns:
> + * Zero on success, error code on failure.
> + */
> +int drm_connector_dynamic_init(struct drm_device *dev,
> +			       struct drm_connector *connector,
> +			       const struct drm_connector_funcs *funcs,
> +			       int connector_type,
> +			       struct i2c_adapter *ddc)
> +{
> +	if (drm_WARN_ON(dev, !(funcs && funcs->destroy)))
> +		return -EINVAL;
> +
> +	return drm_connector_init_only(dev, connector, funcs, connector_type, ddc);
> +}
> +EXPORT_SYMBOL(drm_connector_dynamic_init);
> +
>  /**
>   * drm_connector_init_with_ddc - Init a preallocated connector
>   * @dev: DRM device
> @@ -398,7 +484,7 @@ int drm_connector_init_with_ddc(struct drm_device *dev,
>  	if (drm_WARN_ON(dev, !(funcs && funcs->destroy)))
>  		return -EINVAL;
>  
> -	return __drm_connector_init(dev, connector, funcs, connector_type, ddc);
> +	return drm_connector_init_and_add(dev, connector, funcs, connector_type, ddc);
>  }
>  EXPORT_SYMBOL(drm_connector_init_with_ddc);
>  
> @@ -442,7 +528,7 @@ int drmm_connector_init(struct drm_device *dev,
>  	if (drm_WARN_ON(dev, funcs && funcs->destroy))
>  		return -EINVAL;
>  
> -	ret = __drm_connector_init(dev, connector, funcs, connector_type, ddc);
> +	ret = drm_connector_init_and_add(dev, connector, funcs, connector_type, ddc);
>  	if (ret)
>  		return ret;
>  
> @@ -659,10 +745,8 @@ void drm_connector_cleanup(struct drm_connector *connector)
>  	connector->name = NULL;
>  	fwnode_handle_put(connector->fwnode);
>  	connector->fwnode = NULL;
> -	spin_lock_irq(&dev->mode_config.connector_list_lock);
> -	list_del(&connector->head);
> -	dev->mode_config.num_connector--;
> -	spin_unlock_irq(&dev->mode_config.connector_list_lock);
> +
> +	drm_connector_remove(connector);
>  
>  	WARN_ON(connector->state && !connector->funcs->atomic_destroy_state);
>  	if (connector->state && connector->funcs->atomic_destroy_state)
> @@ -749,6 +833,32 @@ int drm_connector_register(struct drm_connector *connector)
>  }
>  EXPORT_SYMBOL(drm_connector_register);
>  
> +/**
> + * drm_connector_dynamic_register - register a dynamic connector
> + * @connector: the connector to register
> + *
> + * Register userspace interfaces for a connector. Only call this for connectors
> + * initialized by calling drm_connector_dynamic_init(). All other connectors
> + * will be registered automatically when calling drm_dev_register().
> + *
> + * When the connector is no longer available the driver must call
> + * drm_connector_unregister().
> + *
> + * Returns:
> + * Zero on success, error code on failure.
> + */
> +int drm_connector_dynamic_register(struct drm_connector *connector)
> +{
> +	/* Was the connector inited already? */
> +	if (WARN_ON(!(connector->funcs && connector->funcs->destroy)))
> +		return -EINVAL;
> +
> +	drm_connector_add(connector);
> +
> +	return drm_connector_register(connector);
> +}
> +EXPORT_SYMBOL(drm_connector_dynamic_register);

On the one hand I don't want to rehash this series anymore, but on the
other hand... if the dynamic register set a flag, say connector->dynamic
or whatever, we could keep the single drm_connector_register() that
behaves slightly differently for dynamically initialized connectors.

And it could provide some extra sanity checking as well. But
*shrug*. This works.

BR,
Jani.

> +
>  /**
>   * drm_connector_unregister - unregister a connector
>   * @connector: the connector to unregister
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index e3fa43291f449..f766d194221d1 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -2126,6 +2126,11 @@ int drm_connector_init(struct drm_device *dev,
>  		       struct drm_connector *connector,
>  		       const struct drm_connector_funcs *funcs,
>  		       int connector_type);
> +int drm_connector_dynamic_init(struct drm_device *dev,
> +			       struct drm_connector *connector,
> +			       const struct drm_connector_funcs *funcs,
> +			       int connector_type,
> +			       struct i2c_adapter *ddc);
>  int drm_connector_init_with_ddc(struct drm_device *dev,
>  				struct drm_connector *connector,
>  				const struct drm_connector_funcs *funcs,
> @@ -2147,6 +2152,7 @@ int drmm_connector_hdmi_init(struct drm_device *dev,
>  			     unsigned int max_bpc);
>  void drm_connector_attach_edid_property(struct drm_connector *connector);
>  int drm_connector_register(struct drm_connector *connector);
> +int drm_connector_dynamic_register(struct drm_connector *connector);
>  void drm_connector_unregister(struct drm_connector *connector);
>  int drm_connector_attach_encoder(struct drm_connector *connector,
>  				      struct drm_encoder *encoder);

-- 
Jani Nikula, Intel
