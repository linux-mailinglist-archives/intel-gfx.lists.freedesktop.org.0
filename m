Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5C83EA70F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 17:04:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 147A26E41A;
	Thu, 12 Aug 2021 15:04:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1A186E41A
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 15:04:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="215359583"
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="215359583"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2021 08:04:06 -0700
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="446574066"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2021 08:04:04 -0700
Date: Thu, 12 Aug 2021 18:04:00 +0300
From: Imre Deak <imre.deak@intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Matt Atwood <matthew.s.atwood@intel.com>,
 Uma Shankar <uma.shankar@intel.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210812150400.GC2600583@ideak-desk.fi.intel.com>
References: <20210812054806.22745-1-animesh.manna@intel.com>
 <20210812054806.22745-2-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210812054806.22745-2-animesh.manna@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/dp: Fix eDP max rate for
 display 11+
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

On Thu, Aug 12, 2021 at 11:18:02AM +0530, Animesh Manna wrote:
> From: Matt Atwood <matthew.s.atwood@intel.com>
> 
> intel_dp_set_source_rates() calls intel_dp_is_edp(), which is unsafe to
> use before intel_encoder->type is set. This causes incorrect max source
> rate to be used for display 11+. On EHL and JSL, HBR3 is used instead of
> HBR2, and on the other affected platforms, HBR2 is used instead of HBR3.
> 
> Move intel_dp_set_source_rates() to after intel_encoder->type is
> set. Add comment to intel_dp_is_edp() describing unsafe usages. Cleanup
> intel_dp_init_connector() while at it.
> 
> Note: The same change was originally added as commit 680c45c767f6
> ("drm/i915/dp: Correctly advertise HBR3 for GEN11+"), but later reverted
> due to issues in CI in commit d3913019602e ("Revert "drm/i915/dp:
> Correctly advertise HBR3 for GEN11+"").

AFAIR, this issue was that TGL started to use TPS4, which somehow broke
link training on the panel connected to that box. But I think TPS4 is
supported on TGL, regardless of the link rate used, so this change looks
ok wrt. that.

As a side-note allowing TPS4 only on ports supporting HBR3 looks
incorrect, I think TPS4 is either supported or not by a platform
regardless of what is the max link rate. Due to that we may stop using
TPS4 on EHL/JSL after this patchset, but I think that can be fixed
separately.

> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 28 ++++++++++---------------
>  1 file changed, 11 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 75d4ebc66941..4df56af36b3f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -100,6 +100,8 @@ static const u8 valid_dsc_slicecount[] = {1, 2, 4};
>   *
>   * If a CPU or PCH DP output is attached to an eDP panel, this function
>   * will return true, and false otherwise.
> + *
> + * This function is not safe to use prior to encoder type being set.
>   */
>  bool intel_dp_is_edp(struct intel_dp *intel_dp)
>  {
> @@ -5294,8 +5296,6 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  		     intel_encoder->base.name))
>  		return false;
>  
> -	intel_dp_set_source_rates(intel_dp);
> -
>  	intel_dp->reset_link_params = true;
>  	intel_dp->pps.pps_pipe = INVALID_PIPE;
>  	intel_dp->pps.active_pipe = INVALID_PIPE;
> @@ -5311,28 +5311,22 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  		 */
>  		drm_WARN_ON(dev, intel_phy_is_tc(dev_priv, phy));
>  		type = DRM_MODE_CONNECTOR_eDP;
> +		intel_encoder->type = INTEL_OUTPUT_EDP;
> +
> +		/* eDP only on port B and/or C on vlv/chv */
> +		if (drm_WARN_ON(dev, (IS_VALLEYVIEW(dev_priv) ||
> +				      IS_CHERRYVIEW(dev_priv)) &&
> +				port != PORT_B && port != PORT_C))
> +			return false;
>  	} else {
>  		type = DRM_MODE_CONNECTOR_DisplayPort;
>  	}
>  
> +	intel_dp_set_source_rates(intel_dp);
> +
>  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>  		intel_dp->pps.active_pipe = vlv_active_pipe(intel_dp);
>  
> -	/*
> -	 * For eDP we always set the encoder type to INTEL_OUTPUT_EDP, but
> -	 * for DP the encoder type can be set by the caller to
> -	 * INTEL_OUTPUT_UNKNOWN for DDI, so don't rewrite it.
> -	 */
> -	if (type == DRM_MODE_CONNECTOR_eDP)
> -		intel_encoder->type = INTEL_OUTPUT_EDP;
> -
> -	/* eDP only on port B and/or C on vlv/chv */
> -	if (drm_WARN_ON(dev, (IS_VALLEYVIEW(dev_priv) ||
> -			      IS_CHERRYVIEW(dev_priv)) &&
> -			intel_dp_is_edp(intel_dp) &&
> -			port != PORT_B && port != PORT_C))
> -		return false;
> -
>  	drm_dbg_kms(&dev_priv->drm,
>  		    "Adding %s connector on [ENCODER:%d:%s]\n",
>  		    type == DRM_MODE_CONNECTOR_eDP ? "eDP" : "DP",
> -- 
> 2.29.0
> 
