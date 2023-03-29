Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8AC6CD89D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 13:40:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AE9A10E16A;
	Wed, 29 Mar 2023 11:40:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91B4710E16A
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 11:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680090028; x=1711626028;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nCsrMOqOFXuHePJx5mfqdaHKQo+epl9PjiMolAeeVRI=;
 b=RE3wUrJVZMelgKpkR4tXJn+Jn3mdWnMEj5UT4gklcEUtiFnPLwvxRKJA
 zPgH78cp3pWFmetUC3OAo6t5hSQXvKoD+dOsp/keYNSrmhrTpIfTSzq+k
 ZG0xVboSAdb/ULHrWcKHbalWr4Eoa9MTN55jCFb0f9FYE6qo/29RfZgj+
 3o7f4v3TbaDYR1kZPj3t3iQ8s0SelzwHdg7wHsRydAml7bc3YHs916a1Y
 INDFsT8rYahP3DPwMwu2FtYGlcXkTxlt6+9DONXH7XPjNlcY3NfDLBjxX
 nP5XQ4xe1JqDP+kZCKAhG+wlBv9ndFMuTkB6auEiMgMQr2GrYAg7gjVMJ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="403476481"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="403476481"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 04:40:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="795205715"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="795205715"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 29 Mar 2023 04:40:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 14:40:25 +0300
Date: Wed, 29 Mar 2023 14:40:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZCQjqUJjyEAqVX1X@intel.com>
References: <20230329094532.221450-1-jouni.hogander@intel.com>
 <20230329094532.221450-3-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230329094532.221450-3-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v6 2/6] drm/i915/psr: Modify/Fix
 Wa_16013835468 and prepare for Wa_14015648006
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

On Wed, Mar 29, 2023 at 12:45:28PM +0300, Jouni Högander wrote:
> Wa_16013835468 is a separate from Wa_14015648006 and needs to be
> applied for TGL onwards. Fix this by removing all the references to
> Wa_14015648006 and apply Wa_16013835468 according to Bspec.
> 
> Also move workaround into separate function as a preparation for
> Wa_14015648006 implementation.
> 
> Bspec: 55378
> 
> v2:
>  - keep applying the wa in intel_psr_enable_source
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 35 ++++++++++++++++--------
>  1 file changed, 24 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 8dbf452d63c2..26ad4365960f 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1134,6 +1134,28 @@ static u32 wa_16013835468_bit_get(struct intel_dp *intel_dp)
>  	}
>  }
>  
> +/*
> + * Wa_16013835468
> + */
> +static void wm_optimization_wa(struct intel_dp *intel_dp,
> +			       const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> +	bool set_wa_bit = false;
> +
> +	/* Wa_16013835468 */
> +	if (DISPLAY_VER(dev_priv) >= 12)

Looks like this should actually be == 12

> +		set_wa_bit |= crtc_state->hw.adjusted_mode.crtc_vblank_start !=
> +			crtc_state->hw.adjusted_mode.crtc_vdisplay;
> +
> +	if (set_wa_bit)
> +		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,

Can you drop that 0 to the next line so the two branches
at least looks a bit more alike?

Alternatively
intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
	     wa_16013835468_bit_get(intel_dp),
	     set_wa_bit ? wa_16013835468_bit_get(intel_dp) : 0);
or something along those lines.

> +			     wa_16013835468_bit_get(intel_dp));
> +	else
> +		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
> +			     wa_16013835468_bit_get(intel_dp), 0);
> +}
> +
>  static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  				    const struct intel_crtc_state *crtc_state)
>  {
> @@ -1175,15 +1197,8 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  
>  	/*
>  	 * Wa_16013835468
> -	 * Wa_14015648006
>  	 */
> -	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> -	    IS_DISPLAY_VER(dev_priv, 12, 13)) {
> -		if (crtc_state->hw.adjusted_mode.crtc_vblank_start !=
> -		    crtc_state->hw.adjusted_mode.crtc_vdisplay)
> -			intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,
> -				     wa_16013835468_bit_get(intel_dp));
> -	}
> +	wm_optimization_wa(intel_dp, crtc_state);
>  
>  	if (intel_dp->psr.psr2_enabled) {
>  		if (DISPLAY_VER(dev_priv) == 9)
> @@ -1359,10 +1374,8 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
>  
>  	/*
>  	 * Wa_16013835468
> -	 * Wa_14015648006
>  	 */
> -	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> -	    IS_DISPLAY_VER(dev_priv, 12, 13))
> +	if (DISPLAY_VER(dev_priv) >= 12)
>  		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
>  			     wa_16013835468_bit_get(intel_dp), 0);
>  
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
