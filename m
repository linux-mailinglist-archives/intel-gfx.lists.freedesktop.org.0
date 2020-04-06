Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 854D319F409
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 13:03:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A18396E320;
	Mon,  6 Apr 2020 11:03:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E92C6E326
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 11:03:03 +0000 (UTC)
IronPort-SDR: vGrmwevlOZbOCnziAUAO6ZL/0MQuVXaiezCIM+PPqMTONSWkwcGrQARSRGyRT5Y9rbf8gXEbn5
 k1nSlWraZaZA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 04:03:02 -0700
IronPort-SDR: djlFMai/4Tlhw8ZNCPPrM3mZKmdez7e2iN39nA6fLDeXMUc/d8bQQfUgNGw7kGeDQ0kDqbKXZr
 UOz0Uqq8/7tA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,350,1580803200"; d="scan'208";a="397463382"
Received: from plaxmina-desktop.iind.intel.com ([10.145.162.62])
 by orsmga004.jf.intel.com with ESMTP; 06 Apr 2020 04:02:59 -0700
Date: Mon, 6 Apr 2020 16:24:01 +0530
From: "Bharadiya,Pankaj" <pankaj.laxminarayan.bharadiya@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200406105401.GA16300@plaxmina-desktop.iind.intel.com>
References: <20200402114819.17232-1-jani.nikula@intel.com>
 <20200402114819.17232-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402114819.17232-2-jani.nikula@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 02/17] drm/i915/panel: use struct drm_device
 based logging
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
Cc: intel-gfx@lists.freedesktop.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 02, 2020 at 02:48:04PM +0300, Jani Nikula wrote:
> Convert all the DRM_* logging macros to the struct drm_device based
> macros to provide device specific logging.
> 
> No functional changes.
> 
> Generated using the following semantic patch, originally written by
> Wambui Karuga <wambui.karugax@gmail.com>, with manual fixups on top:
> 
> @@
> identifier fn, T;
> @@
> 
> fn(...,struct drm_i915_private *T,...) {
> <+...
> (
> -DRM_INFO(
> +drm_info(&T->drm,
> ...)
> |
> -DRM_NOTE(
> +drm_notice(&T->drm,
> ...)
> |
> -DRM_ERROR(
> +drm_err(&T->drm,
> ...)
> |
> -DRM_WARN(
> +drm_warn(&T->drm,
> ...)
> |
> -DRM_DEBUG_DRIVER(
> +drm_dbg(&T->drm,
> ...)
> |
> -DRM_DEBUG_KMS(
> +drm_dbg_kms(&T->drm,
> ...)
> |
> -DRM_DEBUG_ATOMIC(
> +drm_dbg_atomic(&T->drm,
> ...)
> )
> ...+>
> }
> 
> @@
> identifier fn, T;
> @@
> 
> fn(...) {
> ...
> struct drm_i915_private *T = ...;
> <+...
> (
> -DRM_INFO(
> +drm_info(&T->drm,
> ...)
> |
> -DRM_NOTE(
> +drm_notice(&T->drm,
> ...)
> |
> -DRM_ERROR(
> +drm_err(&T->drm,
> ...)
> |
> -DRM_WARN(
> +drm_warn(&T->drm,
> ...)
> |
> -DRM_DEBUG_DRIVER(
> +drm_dbg(&T->drm,
> ...)
> |
> -DRM_DEBUG_KMS(
> +drm_dbg_kms(&T->drm,
> ...)
> |
> -DRM_DEBUG_ATOMIC(
> +drm_dbg_atomic(&T->drm,
> ...)
> )
> ...+>
> }
> 
> Cc: Wambui Karuga <wambui.karugax@gmail.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 19 +++++++++++--------
>  1 file changed, 11 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index 276f43870802..a080a623bed6 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -684,9 +684,10 @@ static void
>  intel_panel_actually_set_backlight(const struct drm_connector_state *conn_state, u32 level)
>  {
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);

This addition does not match with the cocci script mentioned in the
commit description.
Are you sure same script is used to generate this patch?

>  	struct intel_panel *panel = &connector->panel;
>  
> -	DRM_DEBUG_DRIVER("set backlight PWM = %d\n", level);
> +	drm_dbg_kms(&i915->drm, "set backlight PWM = %d\n", level);
>  
>  	level = intel_panel_compute_brightness(connector, level);
>  	panel->backlight.set(conn_state, level);
> @@ -867,8 +868,8 @@ void intel_panel_disable_backlight(const struct drm_connector_state *old_conn_st
>  	 * another client is not activated.
>  	 */
>  	if (dev_priv->drm.switch_power_state == DRM_SWITCH_POWER_CHANGING) {
> -		drm_dbg(&dev_priv->drm,
> -			"Skipping backlight disable on vga switch\n");
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Skipping backlight disable on vga switch\n");
>  		return;
>  	}
>  
> @@ -1244,7 +1245,7 @@ static u32 intel_panel_get_backlight(struct intel_connector *connector)
>  
>  	mutex_unlock(&dev_priv->backlight_lock);
>  
> -	drm_dbg(&dev_priv->drm, "get backlight PWM = %d\n", val);
> +	drm_dbg_kms(&dev_priv->drm, "get backlight PWM = %d\n", val);
>  	return val;
>  }
>  
> @@ -1335,6 +1336,7 @@ static const struct backlight_ops intel_backlight_device_ops = {
>  
>  int intel_backlight_device_register(struct intel_connector *connector)
>  {
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);

Same as above.

>  	struct intel_panel *panel = &connector->panel;
>  	struct backlight_properties props;
>  
> @@ -1374,14 +1376,15 @@ int intel_backlight_device_register(struct intel_connector *connector)
>  					  &intel_backlight_device_ops, &props);
>  
>  	if (IS_ERR(panel->backlight.device)) {
> -		DRM_ERROR("Failed to register backlight: %ld\n",
> -			  PTR_ERR(panel->backlight.device));
> +		drm_err(&i915->drm, "Failed to register backlight: %ld\n",
> +			PTR_ERR(panel->backlight.device));
>  		panel->backlight.device = NULL;
>  		return -ENODEV;
>  	}
>  
> -	DRM_DEBUG_KMS("Connector %s backlight sysfs interface registered\n",
> -		      connector->base.name);
> +	drm_dbg_kms(&i915->drm,
> +		    "Connector %s backlight sysfs interface registered\n",
> +		    connector->base.name);
>  
>  	return 0;
>  }
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
