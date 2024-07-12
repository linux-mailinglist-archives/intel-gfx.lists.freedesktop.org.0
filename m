Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3069301A9
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2024 23:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70E3A10EDAB;
	Fri, 12 Jul 2024 21:38:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kLaST8pF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0522310EDA4;
 Fri, 12 Jul 2024 21:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720820334; x=1752356334;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ptTuZipiGCTWBcEJlV1Rw2lFO3qWb4h2khzLzmJYgtM=;
 b=kLaST8pFNRoVhKj+kRag7GMIIqkKTTuiMXP+H2CwdTKFpnzVkXIFwjKv
 V33vFzY4tiREua6Hsh/N2A/jGydJ20KtU/47gt2621SaV7mf86DRezhie
 sUQHPkMHi8Nco/PevfAw0RLPiNP8JtugCQ8DGTj6Q5b3os7mDUNqyyf24
 krDjDONAIMzgZI3P7tr3cB5oNFUMx6l0Nat61PUCsRrjx69Uyaj3aA1Mp
 QKPu8dsQw+AVzSnEqAHyYvDM6Sc3iKSjdTxrhXVk82+/Fjeaki8m9XbvA
 ht9+LD1OKmYTzKfCvuTqFwIfPOyY64twzZzPfEeRPh+s6i5usaQ+mDo70 A==;
X-CSE-ConnectionGUID: P01h5lq0RyKtzF797GIOKg==
X-CSE-MsgGUID: FYALCTsGSEinpVEs2GQM8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11131"; a="29671727"
X-IronPort-AV: E=Sophos;i="6.09,204,1716274800"; d="scan'208";a="29671727"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2024 14:38:53 -0700
X-CSE-ConnectionGUID: xkuElYZcSUS52cxqobZtlA==
X-CSE-MsgGUID: fsaV3agwSFS2yIKb6xNgpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,204,1716274800"; d="scan'208";a="48982547"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Jul 2024 14:38:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 13 Jul 2024 00:38:49 +0300
Date: Sat, 13 Jul 2024 00:38:49 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 02/20] drm/i915/fbc: Convert to intel_display, mostly
Message-ID: <ZpGiabxR0UkAKJv2@intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
 <20240705145254.3355-3-ville.syrjala@linux.intel.com>
 <Zo2USSCXVDDOqCvH@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zo2USSCXVDDOqCvH@intel.com>
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

On Tue, Jul 09, 2024 at 03:49:29PM -0400, Rodrigo Vivi wrote:
> On Fri, Jul 05, 2024 at 05:52:36PM +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Switch the FBC code over to intel_display from i915, as
> > much as possible. This is the future direction so that
> > the display code can be shared between i915 and xe more
> > cleanly.
> > 
> > Some of the platform checks and the stolen mem facing stiff
> > still need i915 around though.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  .../drm/i915/display/intel_display_debugfs.c  |   4 +-
> >  .../drm/i915/display/intel_display_driver.c   |   4 +-
> >  drivers/gpu/drm/i915/display/intel_fbc.c      | 422 ++++++++++--------
> >  drivers/gpu/drm/i915/display/intel_fbc.h      |  13 +-
> >  .../drm/i915/display/intel_fifo_underrun.c    |   2 +-
> >  .../drm/i915/display/intel_modeset_setup.c    |   2 +-
> >  6 files changed, 239 insertions(+), 208 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index 91757fed9c6d..5cf9b4af9adf 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -1008,7 +1008,7 @@ i915_fifo_underrun_reset_write(struct file *filp,
> >  			return ret;
> >  	}
> >  
> > -	intel_fbc_reset_underrun(dev_priv);
> > +	intel_fbc_reset_underrun(&dev_priv->display);
> >  
> >  	return cnt;
> >  }
> > @@ -1063,7 +1063,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
> >  	intel_bios_debugfs_register(i915);
> >  	intel_cdclk_debugfs_register(i915);
> >  	intel_dmc_debugfs_register(i915);
> > -	intel_fbc_debugfs_register(i915);
> > +	intel_fbc_debugfs_register(&i915->display);
> >  	intel_hpd_debugfs_register(i915);
> >  	intel_opregion_debugfs_register(i915);
> >  	intel_psr_debugfs_register(i915);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > index 794b4af38055..13e206ec450f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > @@ -265,7 +265,7 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
> >  
> >  	intel_init_quirks(display);
> >  
> > -	intel_fbc_init(i915);
> > +	intel_fbc_init(display);
> >  
> >  	return 0;
> >  
> > @@ -607,7 +607,7 @@ void intel_display_driver_remove_noirq(struct drm_i915_private *i915)
> >  	destroy_workqueue(i915->display.wq.flip);
> >  	destroy_workqueue(i915->display.wq.modeset);
> >  
> > -	intel_fbc_cleanup(i915);
> > +	intel_fbc_cleanup(&i915->display);
> >  }
> >  
> >  /* part #3: call after gem init */
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index ba9820d4b78f..de8caa69a0dd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -61,13 +61,13 @@
> >  #include "intel_fbc_regs.h"
> >  #include "intel_frontbuffer.h"
> >  
> > -#define for_each_fbc_id(__dev_priv, __fbc_id) \
> > +#define for_each_fbc_id(__display, __fbc_id) \
> >  	for ((__fbc_id) = INTEL_FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++) \
> > -		for_each_if(DISPLAY_RUNTIME_INFO(__dev_priv)->fbc_mask & BIT(__fbc_id))
> > +		for_each_if(DISPLAY_RUNTIME_INFO(__display)->fbc_mask & BIT(__fbc_id))
> >  
> > -#define for_each_intel_fbc(__dev_priv, __fbc, __fbc_id) \
> > -	for_each_fbc_id((__dev_priv), (__fbc_id)) \
> > -		for_each_if((__fbc) = (__dev_priv)->display.fbc[(__fbc_id)])
> > +#define for_each_intel_fbc(__display, __fbc, __fbc_id) \
> > +	for_each_fbc_id((__display), (__fbc_id)) \
> > +		for_each_if((__fbc) = (__display)->fbc[(__fbc_id)])
> >  
> >  struct intel_fbc_funcs {
> >  	void (*activate)(struct intel_fbc *fbc);
> > @@ -90,7 +90,7 @@ struct intel_fbc_state {
> >  };
> >  
> >  struct intel_fbc {
> > -	struct drm_i915_private *i915;
> > +	struct intel_display *display;
> >  	const struct intel_fbc_funcs *funcs;
> >  
> >  	/*
> > @@ -151,7 +151,7 @@ static unsigned int _intel_fbc_cfb_stride(const struct intel_plane_state *plane_
> >  /* minimum acceptable cfb stride in bytes, assuming 1:1 compression limit */
> >  static unsigned int skl_fbc_min_cfb_stride(const struct intel_plane_state *plane_state)
> >  {
> > -	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
> > +	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
> >  	unsigned int limit = 4; /* 1:4 compression limit is the worst case */
> >  	unsigned int cpp = 4; /* FBC always 4 bytes per pixel */
> >  	unsigned int width = drm_rect_width(&plane_state->uapi.src) >> 16;
> > @@ -165,7 +165,7 @@ static unsigned int skl_fbc_min_cfb_stride(const struct intel_plane_state *plane
> >  	 * Wa_16011863758: icl+
> >  	 * Avoid some hardware segment address miscalculation.
> >  	 */
> > -	if (DISPLAY_VER(i915) >= 11)
> > +	if (DISPLAY_VER(display) >= 11)
> >  		stride += 64;
> >  
> >  	/*
> > @@ -181,7 +181,7 @@ static unsigned int skl_fbc_min_cfb_stride(const struct intel_plane_state *plane
> >  /* properly aligned cfb stride in bytes, assuming 1:1 compression limit */
> >  static unsigned int intel_fbc_cfb_stride(const struct intel_plane_state *plane_state)
> >  {
> > -	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
> > +	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
> >  	unsigned int stride = _intel_fbc_cfb_stride(plane_state);
> >  
> >  	/*
> > @@ -189,7 +189,7 @@ static unsigned int intel_fbc_cfb_stride(const struct intel_plane_state *plane_s
> >  	 * be 512 byte aligned. Aligning each line to 512 bytes guarantees
> >  	 * that regardless of the compression limit we choose later.
> >  	 */
> > -	if (DISPLAY_VER(i915) >= 9)
> > +	if (DISPLAY_VER(display) >= 9)
> >  		return max(ALIGN(stride, 512), skl_fbc_min_cfb_stride(plane_state));
> >  	else
> >  		return stride;
> > @@ -197,12 +197,12 @@ static unsigned int intel_fbc_cfb_stride(const struct intel_plane_state *plane_s
> >  
> >  static unsigned int intel_fbc_cfb_size(const struct intel_plane_state *plane_state)
> >  {
> > -	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
> > +	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
> >  	int lines = drm_rect_height(&plane_state->uapi.src) >> 16;
> >  
> > -	if (DISPLAY_VER(i915) == 7)
> > +	if (DISPLAY_VER(display) == 7)
> >  		lines = min(lines, 2048);
> > -	else if (DISPLAY_VER(i915) >= 8)
> > +	else if (DISPLAY_VER(display) >= 8)
> >  		lines = min(lines, 2560);
> >  
> >  	return lines * intel_fbc_cfb_stride(plane_state);
> > @@ -210,7 +210,7 @@ static unsigned int intel_fbc_cfb_size(const struct intel_plane_state *plane_sta
> >  
> >  static u16 intel_fbc_override_cfb_stride(const struct intel_plane_state *plane_state)
> >  {
> > -	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
> > +	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
> >  	unsigned int stride_aligned = intel_fbc_cfb_stride(plane_state);
> >  	unsigned int stride = _intel_fbc_cfb_stride(plane_state);
> >  	const struct drm_framebuffer *fb = plane_state->hw.fb;
> > @@ -223,28 +223,31 @@ static u16 intel_fbc_override_cfb_stride(const struct intel_plane_state *plane_s
> >  	 * we always need to use the override there.
> >  	 */
> >  	if (stride != stride_aligned ||
> > -	    (DISPLAY_VER(i915) == 9 && fb->modifier == DRM_FORMAT_MOD_LINEAR))
> > +	    (DISPLAY_VER(display) == 9 && fb->modifier == DRM_FORMAT_MOD_LINEAR))
> >  		return stride_aligned * 4 / 64;
> >  
> >  	return 0;
> >  }
> >  
> > -static bool intel_fbc_has_fences(struct drm_i915_private *i915)
> > +static bool intel_fbc_has_fences(struct intel_display *display)
> >  {
> > +	struct drm_i915_private __maybe_unused *i915 = to_i915(display->drm);
> 
> I was going to ask why __maybe_unused,
> but then I remember about the xe compat-headers where below function is
> defined to 0...

Yaeh this one is needed.


 >  
> > -static u64 intel_fbc_stolen_end(struct drm_i915_private *i915)
> > +static u64 intel_fbc_stolen_end(struct intel_display *display)
> >  {
> > +	struct drm_i915_private __maybe_unused *i915 = to_i915(display->drm);

This one was only needed because I accidentally used to_i915() below
instead of using the local i915 variable. I adjusted this while pushing.

-- 
Ville Syrjälä
Intel
