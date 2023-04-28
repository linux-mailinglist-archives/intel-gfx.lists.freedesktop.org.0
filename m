Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9789F6F1A81
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 16:32:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEF3F10E297;
	Fri, 28 Apr 2023 14:32:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5723510E297
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 14:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682692369; x=1714228369;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MOryrPG5Ju774Q5BPRaXNsXfir4pAp0NfrGBdRBkoeA=;
 b=VHbq8tshdJi10FbnlslHMVRtrtKjw0E/nZwrR4OnSTcIUeDmnTigtx7Q
 fdrDup+PSu0HLsDSQUSysVntussgp5QfaELTgIumMEpPTWnahYBwLTDsa
 suCK5Q6xQHrN3DWWGhlNfZeGrNzhfC4CK/xskpYHlx4VRP5CeeytZvD9N
 la4Mum8ICLyS45F9xBsw2U7VTg3o7S4z7dU6AIRC21pIj85jUJWHx3EmA
 X0p2e8cIccO8GtLkS/BHomAlowXQ+6ot2TgOsIhSwFWncBTSzoJ6UOCvF
 NpI22yeCuj5jm/kHzEIUtR6eNSovvpEZpTZvlRum89H6dp6b6Ku8weHEh A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="413152796"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="413152796"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 07:32:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="672211047"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="672211047"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga006.jf.intel.com with SMTP; 28 Apr 2023 07:32:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Apr 2023 17:32:44 +0300
Date: Fri, 28 Apr 2023 17:32:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZEvZDP5vxENwuJmk@intel.com>
References: <20230426165305.2049341-1-imre.deak@intel.com>
 <20230426165305.2049341-11-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230426165305.2049341-11-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 10/11] drm/i915: Factor out
 call_with_modeset_ctx()
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 26, 2023 at 07:53:04PM +0300, Imre Deak wrote:
> Factor out a helper to call a function with the atomic locks held,
> required by a follow-up patch resetting an active DP link.
> 
> No functional changes.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 53 ++++++++++++++----------
>  1 file changed, 31 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 29e4bfab46358..0c8bc32f293b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4370,35 +4370,18 @@ static int intel_hdmi_reset_link(struct intel_encoder *encoder,
>  	return modeset_pipe(&crtc->base, ctx);
>  }
>  
> -static enum intel_hotplug_state
> -intel_ddi_hotplug(struct intel_encoder *encoder,
> -		  struct intel_connector *connector)
> +static void call_with_modeset_ctx(int (*fn)(struct intel_encoder *encoder,
> +					    struct drm_modeset_acquire_ctx *ctx),
> +				  struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> -	struct intel_dp *intel_dp = &dig_port->dp;
> -	enum phy phy = intel_port_to_phy(i915, encoder->port);
> -	bool is_tc = intel_phy_is_tc(i915, phy);
>  	struct drm_modeset_acquire_ctx ctx;
> -	enum intel_hotplug_state state;
>  	int ret;
>  
> -	if (intel_dp->compliance.test_active &&
> -	    intel_dp->compliance.test_type == DP_TEST_LINK_PHY_TEST_PATTERN) {
> -		intel_dp_phy_test(encoder);
> -		/* just do the PHY test and nothing else */
> -		return INTEL_HOTPLUG_UNCHANGED;
> -	}
> -
> -	state = intel_encoder_hotplug(encoder, connector);
> -
>  	drm_modeset_acquire_init(&ctx, 0);
>  
>  	for (;;) {
> -		if (connector->base.connector_type == DRM_MODE_CONNECTOR_HDMIA)
> -			ret = intel_hdmi_reset_link(encoder, &ctx);
> -		else
> -			ret = intel_dp_retrain_link(encoder, &ctx);
> +		ret = fn(encoder, &ctx);
>  
>  		if (ret == -EDEADLK) {
>  			drm_modeset_backoff(&ctx);
> @@ -4410,8 +4393,34 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
>  
>  	drm_modeset_drop_locks(&ctx);
>  	drm_modeset_acquire_fini(&ctx);
> -	drm_WARN(encoder->base.dev, ret,
> +	drm_WARN(&i915->drm, ret,
>  		 "Acquiring modeset locks failed with %i\n", ret);
> +}

Seems pretty much a less general version of
https://patchwork.freedesktop.org/series/92607/
Unfortuantely that died in the bikeshed.

Maybe we should look into doing something like that
just for i915 initially...

> +
> +static enum intel_hotplug_state
> +intel_ddi_hotplug(struct intel_encoder *encoder,
> +		  struct intel_connector *connector)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +	struct intel_dp *intel_dp = &dig_port->dp;
> +	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +	bool is_tc = intel_phy_is_tc(i915, phy);
> +	enum intel_hotplug_state state;
> +
> +	if (intel_dp->compliance.test_active &&
> +	    intel_dp->compliance.test_type == DP_TEST_LINK_PHY_TEST_PATTERN) {
> +		intel_dp_phy_test(encoder);
> +		/* just do the PHY test and nothing else */
> +		return INTEL_HOTPLUG_UNCHANGED;
> +	}
> +
> +	state = intel_encoder_hotplug(encoder, connector);
> +
> +	if (connector->base.connector_type == DRM_MODE_CONNECTOR_HDMIA)
> +		call_with_modeset_ctx(intel_hdmi_reset_link, encoder);
> +	else
> +		call_with_modeset_ctx(intel_dp_retrain_link, encoder);
>  
>  	/*
>  	 * Unpowered type-c dongles can take some time to boot and be
> -- 
> 2.37.2

-- 
Ville Syrjälä
Intel
