Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A56841EF59
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 16:21:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B02D46ECF4;
	Fri,  1 Oct 2021 14:21:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33E416ECF4
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 14:21:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="248009293"
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="248009293"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 07:18:42 -0700
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="708639604"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 07:18:41 -0700
Date: Fri, 1 Oct 2021 17:18:37 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20211001141837.GC2553962@ideak-desk.fi.intel.com>
References: <20211001130107.1746-1-ville.syrjala@linux.intel.com>
 <20211001130107.1746-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211001130107.1746-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 01/10] drm/i915: Introduce has_iboost()
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

On Fri, Oct 01, 2021 at 04:00:58PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Suck the "do we have iboost?" platform checks into a small helper.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 51cd0420e00e..f6429114ce7c 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -92,6 +92,11 @@ static int intel_ddi_hdmi_level(struct intel_encoder *encoder,
>  	return level;
>  }
>  
> +static bool has_iboost(struct drm_i915_private *i915)
> +{
> +	return DISPLAY_VER(i915) == 9 && !IS_BROXTON(i915);
> +}
> +
>  /*
>   * Starting with Haswell, DDI port buffers must be programmed with correct
>   * values in advance. This function programs the correct values for
> @@ -111,7 +116,7 @@ void hsw_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
>  		return;
>  
>  	/* If we're boosting the current, set bit 31 of trans1 */
> -	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv) &&
> +	if (has_iboost(dev_priv) &&
>  	    intel_bios_encoder_dp_boost_level(encoder->devdata))
>  		iboost_bit = DDI_BUF_BALANCE_LEG_ENABLE;
>  
> @@ -145,7 +150,7 @@ static void hsw_prepare_hdmi_ddi_buffers(struct intel_encoder *encoder,
>  		level = n_entries - 1;
>  
>  	/* If we're boosting the current, set bit 31 of trans1 */
> -	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv) &&
> +	if (has_iboost(dev_priv) &&
>  	    intel_bios_encoder_hdmi_boost_level(encoder->devdata))
>  		iboost_bit = DDI_BUF_BALANCE_LEG_ENABLE;
>  
> @@ -1463,7 +1468,7 @@ hsw_set_signal_levels(struct intel_dp *intel_dp,
>  	intel_dp->DP &= ~DDI_BUF_EMP_MASK;
>  	intel_dp->DP |= signal_levels;
>  
> -	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
> +	if (has_iboost(dev_priv))
>  		skl_ddi_set_iboost(encoder, crtc_state, level);
>  
>  	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
> @@ -3084,7 +3089,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>  	else
>  		hsw_prepare_hdmi_ddi_buffers(encoder, crtc_state, level);
>  
> -	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
> +	if (has_iboost(dev_priv))
>  		skl_ddi_set_iboost(encoder, crtc_state, level);
>  
>  	/* Display WA #1143: skl,kbl,cfl */
> -- 
> 2.32.0
> 
