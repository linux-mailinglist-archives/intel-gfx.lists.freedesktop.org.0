Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 158394DB7A9
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 18:56:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 156C210E91B;
	Wed, 16 Mar 2022 17:56:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A1B510E876
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 17:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647453410; x=1678989410;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6Z+Wy+aeF6UVJZEUSacs69DbUFBfOxDX67irHnX2A38=;
 b=npqMr0k+YHfVw8bIm7Yy6bhlblM4y59aWqpacPJjadfYbHeTH4UEVjhg
 +0GjoVtz/1y+Q3AIACYnaFDuxTS11jwXbpc6i3oisIj83qvtf1kpqko4Z
 tEQZk2cK6TaBrQ1Wl0a4OOV8fn89qetSQ/0EkHH5kIn/xAXa11Nr/5VJ2
 6XyVjkSjILaVPd9VgOfXe1e1sVexsiCDidEJe85A3d39EKbSHdA9MKII1
 MtFzg/F8qxOkr/d7NJuDOLh01/AyVpVDQDUzpmC2XFI55SsFx2MalCrRK
 c4vm0HkxMVNnrbfKoPZVsqqzTo22So7+0hpwUCoT1J9yFnMuuFU6z26gN A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10288"; a="238840963"
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400"; d="scan'208";a="238840963"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 10:56:34 -0700
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400"; d="scan'208";a="690676274"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 10:56:33 -0700
Date: Wed, 16 Mar 2022 19:57:07 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220316175707.GD21723@intel.com>
References: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
 <20220309164948.10671-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220309164948.10671-6-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 5/8] drm/i915: Rename pre-icl SAGV
 enable/disable functions
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

On Wed, Mar 09, 2022 at 06:49:45PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Give the pre-icl SAGV control functions a skl_ prefix instead
> of the intel_ prefix to make it a bit more clear that they
> are not some kind of universal things that can be called on
> any platform. Also make the functions void since we never
> use the return value anyway.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 32 ++++++++++++++------------------
>  1 file changed, 14 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 166246fa27e4..bd936d4c5b0f 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -57,7 +57,7 @@
>  #include "vlv_sideband.h"
>  #include "../../../platform/x86/intel_ips.h"
>  
> -static int intel_disable_sagv(struct drm_i915_private *dev_priv);
> +static void skl_sagv_disable(struct drm_i915_private *dev_priv);
>  
>  struct drm_i915_clock_gating_funcs {
>  	void (*init_clock_gating)(struct drm_i915_private *i915);
> @@ -3707,7 +3707,7 @@ static void intel_sagv_init(struct drm_i915_private *i915)
>  	 * For icl+ this was already determined by intel_bw_init_hw().
>  	 */
>  	if (DISPLAY_VER(i915) < 11)
> -		intel_disable_sagv(i915);
> +		skl_sagv_disable(i915);
>  
>  	drm_WARN_ON(&i915->drm, i915->sagv_status == I915_SAGV_UNKNOWN);
>  
> @@ -3737,16 +3737,15 @@ static void intel_sagv_init(struct drm_i915_private *i915)
>   *  - All planes can enable watermarks for latencies >= SAGV engine block time
>   *  - We're not using an interlaced display configuration
>   */
> -static int
> -intel_enable_sagv(struct drm_i915_private *dev_priv)
> +static void skl_sagv_enable(struct drm_i915_private *dev_priv)
>  {
>  	int ret;
>  
>  	if (!intel_has_sagv(dev_priv))
> -		return 0;
> +		return;
>  
>  	if (dev_priv->sagv_status == I915_SAGV_ENABLED)
> -		return 0;
> +		return;
>  
>  	drm_dbg_kms(&dev_priv->drm, "Enabling SAGV\n");
>  	ret = snb_pcode_write(dev_priv, GEN9_PCODE_SAGV_CONTROL,
> @@ -3761,26 +3760,24 @@ intel_enable_sagv(struct drm_i915_private *dev_priv)
>  	if (IS_SKYLAKE(dev_priv) && ret == -ENXIO) {
>  		drm_dbg(&dev_priv->drm, "No SAGV found on system, ignoring\n");
>  		dev_priv->sagv_status = I915_SAGV_NOT_CONTROLLED;
> -		return 0;
> +		return;
>  	} else if (ret < 0) {
>  		drm_err(&dev_priv->drm, "Failed to enable SAGV\n");
> -		return ret;
> +		return;
>  	}
>  
>  	dev_priv->sagv_status = I915_SAGV_ENABLED;
> -	return 0;
>  }
>  
> -static int
> -intel_disable_sagv(struct drm_i915_private *dev_priv)
> +static void skl_sagv_disable(struct drm_i915_private *dev_priv)
>  {
>  	int ret;
>  
>  	if (!intel_has_sagv(dev_priv))
> -		return 0;
> +		return;
>  
>  	if (dev_priv->sagv_status == I915_SAGV_DISABLED)
> -		return 0;
> +		return;
>  
>  	drm_dbg_kms(&dev_priv->drm, "Disabling SAGV\n");
>  	/* bspec says to keep retrying for at least 1 ms */
> @@ -3795,14 +3792,13 @@ intel_disable_sagv(struct drm_i915_private *dev_priv)
>  	if (IS_SKYLAKE(dev_priv) && ret == -ENXIO) {
>  		drm_dbg(&dev_priv->drm, "No SAGV found on system, ignoring\n");
>  		dev_priv->sagv_status = I915_SAGV_NOT_CONTROLLED;
> -		return 0;
> +		return;
>  	} else if (ret < 0) {
>  		drm_err(&dev_priv->drm, "Failed to disable SAGV (%d)\n", ret);
> -		return ret;
> +		return;
>  	}
>  
>  	dev_priv->sagv_status = I915_SAGV_DISABLED;
> -	return 0;
>  }
>  
>  static void skl_sagv_pre_plane_update(struct intel_atomic_state *state)
> @@ -3815,7 +3811,7 @@ static void skl_sagv_pre_plane_update(struct intel_atomic_state *state)
>  		return;
>  
>  	if (!intel_can_enable_sagv(i915, new_bw_state))
> -		intel_disable_sagv(i915);
> +		skl_sagv_disable(i915);
>  }
>  
>  static void skl_sagv_post_plane_update(struct intel_atomic_state *state)
> @@ -3828,7 +3824,7 @@ static void skl_sagv_post_plane_update(struct intel_atomic_state *state)
>  		return;
>  
>  	if (intel_can_enable_sagv(i915, new_bw_state))
> -		intel_enable_sagv(i915);
> +		skl_sagv_enable(i915);
>  }
>  
>  static void icl_sagv_pre_plane_update(struct intel_atomic_state *state)
> -- 
> 2.34.1
> 
