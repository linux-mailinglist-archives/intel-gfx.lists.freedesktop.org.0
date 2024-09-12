Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C07976E97
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 18:22:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84A5110EBD9;
	Thu, 12 Sep 2024 16:22:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iWgZ0gUv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E38ED10EBD9;
 Thu, 12 Sep 2024 16:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726158138; x=1757694138;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Fq+dk9/OVpecXphfjVmVkYo0CrNOC5IunjqHpRGc1i0=;
 b=iWgZ0gUvLw6KTTLWeBAYWgmf+/TNJy33urpuTQ8FJ2e6TotOZQU8Qcbv
 L9Hv0Xu8IF4tWwF99ICIkWxi/OLhTob5ZPKD9NdxSfyw8XYrFUKYtWTjh
 0bc+a7TPw0ViPIOYCYjz3sZkpJdLWyPTFYB+V7CxbWQnXaWDP07O6d2dF
 GioWM0ZwWKJ/nJMeuNG1MuXhkjlOXOaQQlXu43X/APivRp2Uyp8xZKsL9
 un/wTjqajth1yuAuOV+5EZfkJYMN6B3kXzvXnPNYYuNrFqrv5PXTbQJBS
 H9uGCBu7Vev55zAYjzxMmtCZ6wDx7JCpk98OMd8ewS54gjzKfO/l+2xVK A==;
X-CSE-ConnectionGUID: L6NVpLivSx6TsZ5G41qLkw==
X-CSE-MsgGUID: mfxa/HqCT+WPX6FtqwhJGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="25175099"
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="25175099"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 09:22:19 -0700
X-CSE-ConnectionGUID: lC5hSzl5QrKkpCM6jDVKtg==
X-CSE-MsgGUID: sj9uw+sQTrOWvtwp8EQDgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="67848279"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Sep 2024 09:22:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Sep 2024 19:22:15 +0300
Date: Thu, 12 Sep 2024 19:22:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: Don't allow tile4 framebuffer to do
 hflip on Xe2
Message-ID: <ZuMVN5mQ4aZpF1vm@intel.com>
References: <20240912144606.862307-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240912144606.862307-1-juhapekka.heikkila@gmail.com>
X-Patchwork-Hint: comment
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

On Thu, Sep 12, 2024 at 05:46:06PM +0300, Juha-Pekka Heikkila wrote:
> On Intel Xe2 hw tile4 is not supported with horizontal flip
> 
> bspec 69853

That only seems to apply to LNL, I see no defeature noted for BMG.

Curiously they also seem to have added linear+hflip support for LNL...

> 
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c            | 13 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_fb.h            |  1 +
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 12 ++++++++++++
>  3 files changed, 26 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index d2ff21e98545..c9038d239eb2 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -439,6 +439,19 @@ bool intel_fb_needs_64k_phys(u64 modifier)
>  				      INTEL_PLANE_CAP_NEED64K_PHYS);
>  }
>  
> +/**
> + * intel_fb_is_tile4_modifier: Check if a modifier is a tile4 modifier type
> + * @modifier: Modifier to check
> + *
> + * Returns:
> + * Returns %true if @modifier is a tile4 modifier.
> + */
> +bool intel_fb_is_tile4_modifier(u64 modifier)
> +{
> +	return plane_caps_contain_any(lookup_modifier(modifier)->plane_caps,
> +				      INTEL_PLANE_CAP_TILING_4);
> +}
> +
>  static bool check_modifier_display_ver_range(const struct intel_modifier_desc *md,
>  					     u8 display_ver_from, u8 display_ver_until)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
> index 068f3aee99aa..bff87994cf2c 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -35,6 +35,7 @@ bool intel_fb_is_ccs_modifier(u64 modifier);
>  bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
>  bool intel_fb_is_mc_ccs_modifier(u64 modifier);
>  bool intel_fb_needs_64k_phys(u64 modifier);
> +bool intel_fb_is_tile4_modifier(u64 modifier);
>  
>  bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane);
>  int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 17d4c880ecc4..4de41ab5060a 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1591,6 +1591,18 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
>  		return -EINVAL;
>  	}
>  
> +	/*
> +	 * Starting with LNL and BMG tile4 hflip is not supported
> +	 */
> +	if (rotation & DRM_MODE_REFLECT_X &&
> +	    intel_fb_is_tile4_modifier(fb->modifier) &&
> +	    ((DISPLAY_VER(dev_priv) >= 14 && IS_DGFX(dev_priv)) ||
> +	     (DISPLAY_VER(dev_priv) >= 20 && !IS_DGFX(dev_priv)))) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "horizontal flip is not supported with tile4 surface formats\n");
> +		return -EINVAL;
> +	}
> +
>  	if (drm_rotation_90_or_270(rotation)) {
>  		if (!intel_fb_supports_90_270_rotation(to_intel_framebuffer(fb))) {
>  			drm_dbg_kms(&dev_priv->drm,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
