Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AA2949339
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 16:37:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD8DE10E393;
	Tue,  6 Aug 2024 14:37:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L3Hdu9BS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3223E10E393;
 Tue,  6 Aug 2024 14:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722955052; x=1754491052;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=oMR6RU3sP6VKxFLt+0aQd3K/qY0iDZmOE4PoBYahKOM=;
 b=L3Hdu9BSp02J9yd9vV5xbxYckxiO0clD/3y1r3JW+6ehkyFDXqm4US7I
 9B8ny2+eUyI8wWJ4SUdzNo5bf2zGQU2hAo4fPfBehlAM2H6NFHjUBdhXS
 INgU2Xrlh9ooOSSnDhVLLl89uqPLphkZfcXIiSiGNex7UtqbupNFutKgr
 1HTLhtG5k5SmNRqF02HnFna2LOr8mOq2nXtJzrIbpsrtmuNGBMsxNjzWy
 6VpW5OPLEcVe0L9114ETKbHIs+UXKwulNRDg7ZFFAahrRPO37yHSvOxjS
 0JMj+RVFJK+u/RuCwkOoL2y89DBuyHFviSVt5Ah2pWqw1XbZkiet8JFrP g==;
X-CSE-ConnectionGUID: CEQ0lllOT4KNl8CaE57baA==
X-CSE-MsgGUID: +NzApaf7Sr+y85mAQVYDdw==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="43501354"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="43501354"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 07:37:31 -0700
X-CSE-ConnectionGUID: aw9HygQyTqOnjIvr7+uusA==
X-CSE-MsgGUID: aguFfwslRB60g9rSp9V4+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="61158793"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 07:37:29 -0700
Date: Tue, 6 Aug 2024 17:37:48 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/4] drm/i915/opregion: convert to struct intel_display
Message-ID: <ZrI1PI2autugbl-p@ideak-desk.fi.intel.com>
References: <cover.1722444150.git.jani.nikula@intel.com>
 <8a71cea4f260a992200c76480c5358b72a7f9187.1722444150.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8a71cea4f260a992200c76480c5358b72a7f9187.1722444150.git.jani.nikula@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 31, 2024 at 07:44:35PM +0300, Jani Nikula wrote:
> Going forward, struct intel_display shall replace struct
> drm_i915_private as the main display device data pointer type. Convert
> intel_opregion.[ch] to struct intel_display.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     |  10 +-
>  .../drm/i915/display/intel_display_debugfs.c  |   5 +-
>  .../drm/i915/display/intel_display_device.c   |   8 +-
>  .../drm/i915/display/intel_display_driver.c   |   6 +-
>  .../gpu/drm/i915/display/intel_display_irq.c  |  24 +-
>  drivers/gpu/drm/i915/display/intel_opregion.c | 296 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_opregion.h |  54 ++--
>  drivers/gpu/drm/i915/i915_driver.c            |  22 +-
>  drivers/gpu/drm/xe/display/xe_display.c       |  19 +-
>  9 files changed, 238 insertions(+), 206 deletions(-)
> 
> [...]
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index 4c9b9e7ebc91..0cf6c0711dae 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> [...]
>  
> @@ -384,18 +384,18 @@ static int swsci(struct drm_i915_private *dev_priv,
>  int intel_opregion_notify_encoder(struct intel_encoder *encoder,
>  				  bool enable)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder->base.dev);

Nit: AFAICS, this could be just to_intel_display(encoder).

>  	u32 parm = 0;
>  	u32 type = 0;
>  	u32 port;
>  	int ret;
>  
>  	/* don't care about old stuff for now */
> -	if (!HAS_DDI(dev_priv))
> +	if (!HAS_DDI(display))
>  		return 0;
>  
>  	/* Avoid port out of bounds checks if SWSCI isn't there. */
> -	ret = check_swsci_function(dev_priv, SWSCI_SBCB_DISPLAY_POWER_STATE);
> +	ret = check_swsci_function(display, SWSCI_SBCB_DISPLAY_POWER_STATE);
>  	if (ret)
>  		return ret;
>  
> @@ -419,7 +419,7 @@ int intel_opregion_notify_encoder(struct intel_encoder *encoder,
>  	 * number is out of bounds after mapping.
>  	 */
>  	if (port > 4) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "[ENCODER:%d:%s] port %c (index %u) out of bounds for display power state notification\n",
>  			    encoder->base.base.id, encoder->base.name,
>  			    port_name(encoder->port), port);
> @@ -444,7 +444,7 @@ int intel_opregion_notify_encoder(struct intel_encoder *encoder,
>  		type = DISPLAY_TYPE_INTERNAL_FLAT_PANEL;
>  		break;
>  	default:
> -		drm_WARN_ONCE(&dev_priv->drm, 1,
> +		drm_WARN_ONCE(display->drm, 1,
>  			      "unsupported intel_encoder type %d\n",
>  			      encoder->type);
>  		return -EINVAL;
> @@ -452,7 +452,7 @@ int intel_opregion_notify_encoder(struct intel_encoder *encoder,
>  
>  	parm |= type << (16 + port * 3);
>  
> -	return swsci(dev_priv, SWSCI_SBCB_DISPLAY_POWER_STATE, parm, NULL);
> +	return swsci(display, SWSCI_SBCB_DISPLAY_POWER_STATE, parm, NULL);
>  }
>  
>  static const struct {
> @@ -466,33 +466,33 @@ static const struct {
>  	{ PCI_D3cold,	0x04 },
>  };
>  
> -int intel_opregion_notify_adapter(struct drm_i915_private *dev_priv,
> +int intel_opregion_notify_adapter(struct intel_display *display,
>  				  pci_power_t state)

Missing change in the forward declartion for !CONFIG_ACPI, also reported
by lkp.

>  {
>  	int i;
>  
> -	if (!HAS_DDI(dev_priv))
> +	if (!HAS_DDI(display))
>  		return 0;
>  
>  	for (i = 0; i < ARRAY_SIZE(power_state_map); i++) {
>  		if (state == power_state_map[i].pci_power_state)
> -			return swsci(dev_priv, SWSCI_SBCB_ADAPTER_POWER_STATE,
> +			return swsci(display, SWSCI_SBCB_ADAPTER_POWER_STATE,
>  				     power_state_map[i].parm, NULL);
>  	}
>  
>  	return -EINVAL;
>  }
>  
> [...]
>  int
> -intel_opregion_get_panel_type(struct drm_i915_private *dev_priv)
> +intel_opregion_get_panel_type(struct intel_display *display)

Same as above.

>  {
>  	u32 panel_details;
>  	int ret;
>  
> -	ret = swsci(dev_priv, SWSCI_GBDA_PANEL_DETAILS, 0x0, &panel_details);
> +	ret = swsci(display, SWSCI_GBDA_PANEL_DETAILS, 0x0, &panel_details);
>  	if (ret)
>  		return ret;
>  
>  	ret = (panel_details >> 8) & 0xff;
>  	if (ret > 0x10) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Invalid OpRegion panel type 0x%x\n", ret);
>  		return -EINVAL;
>  	}
>  
>  	/* fall back to VBT panel type? */
>  	if (ret == 0x0) {
> -		drm_dbg_kms(&dev_priv->drm, "No panel type in OpRegion\n");
> +		drm_dbg_kms(display->drm, "No panel type in OpRegion\n");
>  		return -ENODEV;
>  	}
>  
> @@ -1083,7 +1084,7 @@ intel_opregion_get_panel_type(struct drm_i915_private *dev_priv)
>  	 * via a quirk list :(
>  	 */
>  	if (!dmi_check_system(intel_use_opregion_panel_type)) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Ignoring OpRegion panel type (%d)\n", ret - 1);
>  		return -ENODEV;
>  	}
> @@ -1104,8 +1105,8 @@ intel_opregion_get_panel_type(struct drm_i915_private *dev_priv)
>   */
>  const struct drm_edid *intel_opregion_get_edid(struct intel_connector *connector)
>  {
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> -	struct intel_opregion *opregion = i915->display.opregion;
> +	struct intel_display *display = to_intel_display(connector->base.dev);

Nit: this could be just to_intel_display(connector).

With the forward declarations fixed looks ok:
Reviewed-by: Imre Deak <imre.deak@intel.com>
