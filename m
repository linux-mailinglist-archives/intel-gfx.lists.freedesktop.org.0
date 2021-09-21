Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E2A4135B1
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 16:56:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBD1B89F33;
	Tue, 21 Sep 2021 14:56:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A32B889F33
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Sep 2021 14:56:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="221496271"
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="221496271"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 07:56:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="556970894"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 21 Sep 2021 07:56:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Sep 2021 17:56:51 +0300
Date: Tue, 21 Sep 2021 17:56:51 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <YUnys0YhOm3Sqae7@intel.com>
References: <20210702204603.596-1-ville.syrjala@linux.intel.com>
 <20210702204603.596-6-ville.syrjala@linux.intel.com>
 <4647cc36df3248a5b338ed93038dbc2a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4647cc36df3248a5b338ed93038dbc2a@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915/fbc: Rework cfb stride/size
 calculations
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

On Mon, Sep 06, 2021 at 05:23:42AM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville Syrjala
> > Sent: Saturday, July 3, 2021 2:16 AM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH 5/8] drm/i915/fbc: Rework cfb stride/size calculations
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > The code to calculate the cfb stride/size is a bit of mess.
> > The cfb size is getting calculated based purely on the plane stride and plane height.
> > That doesn't account for extra alignment we want for the cfb stride. The gen9
> > override stride OTOH is just calculated based on the plane width, and it does try to
> > make things more aligned but any extra alignment added there is not considered in
> > the cfb size calculations.
> > So not at all convinced this is working as intended. Additionally the compression limit
> > handling is split between the cfb allocation code and g4x_dpfc_ctl_limit() (for the
> > 16bpp case), which is just confusing.
> > 
> > Let's streamline the whole thing:
> > - Start with the plane stride, convert that into cfb stride (cfb is
> >   always 4 bytes per pixel). All the calculations will assume 1:1
> >   compression limit since that will give us the max values, and we
> >   don't yet know how much stolen memory we will be able to allocate
> > - Align the cfb stride to 512 bytes on modern platforms. This guarantees
> >   the 4 line segment will be 512 byte aligned regardles of the final
> >   compression limit we choose later. The 512 byte alignment for the
> >   segment is required by at least some of the platforms, and just doing
> >   it always seems like the easiest option
> > - Figure out if we need to use the override stride or not. For X-tiled
> >   it's never needed since the plane stride is already 512 byte aligned,
> >   for Y-tiled it will be needed if the plane stride is not a multiple
> >   of 512 bytes, and for linear it's apparently always needed because the
> >   hardware miscalculates the cfb stride as PLANE_STRIDE*512 instead of
> >   the PLANE_STRIDE*64 that it use with linear.
> > - The cfb size will be calculated based on the aligned cfb stride to
> >   guarantee we actually reserved enough stolen memory and the FBC hw
> >   won't end up scribbling over whatever else is allocated in stolen
> > - The compression limit handling we just do fully in the cfb allocation
> >   code to make things less confusing
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 141 ++++++++++++++---------
> >  drivers/gpu/drm/i915/i915_drv.h          |   4 +-
> >  2 files changed, 90 insertions(+), 55 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> > b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index f5cbbc53837c..2baf58af016c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -62,19 +62,54 @@ static void intel_fbc_get_plane_source_size(const struct
> > intel_fbc_state_cache *
> >  		*height = cache->plane.src_h;
> >  }
> > 
> > -static int intel_fbc_calculate_cfb_size(struct drm_i915_private *dev_priv,
> > -					const struct intel_fbc_state_cache *cache)
> > +/* plane stride in pixels */
> > +static unsigned int intel_fbc_plane_stride(const struct
> > +intel_plane_state *plane_state)
> >  {
> > -	int lines;
> > +	const struct drm_framebuffer *fb = plane_state->hw.fb;
> > +	unsigned int stride;
> > +
> > +	stride = plane_state->view.color_plane[0].stride;
> > +	if (!drm_rotation_90_or_270(plane_state->hw.rotation))
> > +		stride /= fb->format->cpp[0];
> > +
> > +	return stride;
> > +}
> > +
> > +/* plane stride based cfb stride in bytes, assuming 1:1 compression
> > +limit */ static unsigned int _intel_fbc_cfb_stride(const struct
> > +intel_fbc_state_cache *cache) {
> > +	/* FBC always 4 bytes per pixel internally */
> > +	return cache->fb.stride * 4;
> > +}
> > +
> > +/* properly aligned cfb stride in bytes, assuming 1:1 compression limit
> > +*/ static unsigned int intel_fbc_cfb_stride(struct drm_i915_private *i915,
> > +					 const struct intel_fbc_state_cache *cache)
> > {
> > +	unsigned int stride = _intel_fbc_cfb_stride(cache);
> > +
> > +	/*
> > +	 * At least some of the platforms require each 4 line segment to
> > +	 * be 512 byte aligned. Aligning each line to 512 bytes guarantees
> > +	 * that regardless of the compression limit we choose later.
> > +	 */
> > +	if (DISPLAY_VER(i915) == 9)
> > +		return ALIGN(stride, 512);
> > +	else
> > +		return stride;
> > +}
> > +
> > +static unsigned int intel_fbc_cfb_size(struct drm_i915_private *dev_priv,
> > +				       const struct intel_fbc_state_cache *cache) {
> > +	int lines = cache->plane.src_h;
> > 
> > -	intel_fbc_get_plane_source_size(cache, NULL, &lines);
> >  	if (DISPLAY_VER(dev_priv) == 7)
> >  		lines = min(lines, 2048);
> >  	else if (DISPLAY_VER(dev_priv) >= 8)
> >  		lines = min(lines, 2560);
> > 
> > -	/* Hardware needs the full buffer stride, not just the active area. */
> > -	return lines * cache->fb.stride;
> > +	return lines * intel_fbc_cfb_stride(dev_priv, cache);
> >  }
> > 
> >  static void i8xx_fbc_deactivate(struct drm_i915_private *dev_priv) @@ -150,15
> > +185,9 @@ static bool i8xx_fbc_is_active(struct drm_i915_private *dev_priv)
> > 
> >  static u32 g4x_dpfc_ctl_limit(struct drm_i915_private *i915)  {
> > -	const struct intel_fbc_reg_params *params = &i915->fbc.params;
> > -	int limit = i915->fbc.limit;
> > -
> > -	if (params->fb.format->cpp[0] == 2)
> > -		limit <<= 1;
> > -
> > -	switch (limit) {
> > +	switch (i915->fbc.limit) {
> >  	default:
> > -		MISSING_CASE(limit);
> > +		MISSING_CASE(i915->fbc.limit);
> >  		fallthrough;
> >  	case 1:
> >  		return DPFC_CTL_LIMIT_1X;
> > @@ -301,7 +330,8 @@ static bool ilk_fbc_is_active(struct drm_i915_private
> > *dev_priv)
> > 
> >  static void gen7_fbc_activate(struct drm_i915_private *dev_priv)  {
> > -	struct intel_fbc_reg_params *params = &dev_priv->fbc.params;
> > +	struct intel_fbc *fbc = &dev_priv->fbc;
> > +	const struct intel_fbc_reg_params *params = &fbc->params;
> >  	u32 dpfc_ctl;
> > 
> >  	/* Display WA #0529: skl, kbl, bxt. */ @@ -310,7 +340,7 @@ static void
> > gen7_fbc_activate(struct drm_i915_private *dev_priv)
> > 
> >  		if (params->override_cfb_stride)
> >  			val |= CHICKEN_FBC_STRIDE_OVERRIDE |
> > -				CHICKEN_FBC_STRIDE(params-
> > >override_cfb_stride);
> > +				CHICKEN_FBC_STRIDE(params-
> > >override_cfb_stride / fbc->limit);
> > 
> >  		intel_de_rmw(dev_priv, CHICKEN_MISC_4,
> >  			     CHICKEN_FBC_STRIDE_OVERRIDE |
> > @@ -443,7 +473,12 @@ static u64 intel_fbc_stolen_end(struct drm_i915_private
> > *dev_priv)
> >  	return min(end, intel_fbc_cfb_base_max(dev_priv));
> >  }
> > 
> > -static int intel_fbc_max_limit(struct drm_i915_private *dev_priv, int fb_cpp)
> > +static int intel_fbc_min_limit(int fb_cpp) {
> > +	return fb_cpp == 2 ? 2 : 1;
> > +}
> > +
> > +static int intel_fbc_max_limit(struct drm_i915_private *dev_priv)
> >  {
> >  	/*
> >  	 * FIXME: FBC1 can have arbitrary cfb stride, @@ -457,7 +492,7 @@ static
> > int intel_fbc_max_limit(struct drm_i915_private *dev_priv, int fb_cpp)
> >  		return 1;
> > 
> >  	/* FBC2 can only do 1:1, 1:2, 1:4 */
> > -	return fb_cpp == 2 ? 2 : 4;
> > +	return 4;
> >  }
> > 
> >  static int find_compression_limit(struct drm_i915_private *dev_priv, @@ -466,7
> > +501,9 @@ static int find_compression_limit(struct drm_i915_private *dev_priv,  {
> >  	struct intel_fbc *fbc = &dev_priv->fbc;
> >  	u64 end = intel_fbc_stolen_end(dev_priv);
> > -	int ret, limit = 1;
> > +	int ret, limit = intel_fbc_min_limit(fb_cpp);
> > +
> > +	size /= limit;
> > 
> >  	/* Try to over-allocate to reduce reallocations and fragmentation. */
> >  	ret = i915_gem_stolen_insert_node_in_range(dev_priv, &fbc-
> > >compressed_fb, @@ -474,7 +511,7 @@ static int find_compression_limit(struct
> > drm_i915_private *dev_priv,
> >  	if (ret == 0)
> >  		return limit;
> > 
> > -	for (; limit <= intel_fbc_max_limit(dev_priv, fb_cpp); limit <<= 1) {
> > +	for (; limit <= intel_fbc_max_limit(dev_priv); limit <<= 1) {
> >  		ret = i915_gem_stolen_insert_node_in_range(dev_priv, &fbc-
> > >compressed_fb,
> >  							   size >>= 1, 4096, 0, end);
> >  		if (ret == 0)
> > @@ -505,10 +542,9 @@ static int intel_fbc_alloc_cfb(struct drm_i915_private
> > *dev_priv,
> >  	ret = find_compression_limit(dev_priv, size, fb_cpp);
> >  	if (!ret)
> >  		goto err_llb;
> > -	else if (ret > 1) {
> > +	else if (ret > intel_fbc_min_limit(fb_cpp))
> >  		drm_info_once(&dev_priv->drm,
> >  			      "Reducing the compressed framebuffer size. This may
> > lead to less power savings than a non-reduced-size. Try to increase stolen memory
> > size if available in BIOS.\n");
> > -	}
> > 
> >  	fbc->limit = ret;
> > 
> > @@ -719,11 +755,7 @@ static void intel_fbc_update_state_cache(struct intel_crtc
> > *crtc,
> > 
> >  	cache->fb.format = fb->format;
> >  	cache->fb.modifier = fb->modifier;
> > -
> > -	/* FIXME is this correct? */
> > -	cache->fb.stride = plane_state->view.color_plane[0].stride;
> > -	if (drm_rotation_90_or_270(plane_state->hw.rotation))
> > -		cache->fb.stride *= fb->format->cpp[0];
> > +	cache->fb.stride = intel_fbc_plane_stride(plane_state);
> > 
> >  	/* FBC1 compression interval: arbitrary choice of 1 second */
> >  	cache->interval = drm_mode_vrefresh(&crtc_state->hw.adjusted_mode);
> > @@ -746,27 +778,29 @@ static bool intel_fbc_cfb_size_changed(struct
> > drm_i915_private *dev_priv)  {
> >  	struct intel_fbc *fbc = &dev_priv->fbc;
> > 
> > -	return intel_fbc_calculate_cfb_size(dev_priv, &fbc->state_cache) >
> > +	return intel_fbc_cfb_size(dev_priv, &fbc->state_cache) >
> >  		fbc->compressed_fb.size * fbc->limit;  }
> > 
> > -static u16 intel_fbc_override_cfb_stride(struct drm_i915_private *dev_priv)
> > +static u16 intel_fbc_override_cfb_stride(struct drm_i915_private *dev_priv,
> > +					 const struct intel_fbc_state_cache *cache)
> >  {
> > -	struct intel_fbc *fbc = &dev_priv->fbc;
> > -	struct intel_fbc_state_cache *cache = &fbc->state_cache;
> > +	unsigned int stride = _intel_fbc_cfb_stride(cache);
> > +	unsigned int stride_aligned = intel_fbc_cfb_stride(dev_priv, cache);
> > 
> > -	if ((DISPLAY_VER(dev_priv) == 9) &&
> > -	    cache->fb.modifier != I915_FORMAT_MOD_X_TILED)
> > -		return DIV_ROUND_UP(cache->plane.src_w, 32 * fbc->limit) * 8;
> > -	else
> > -		return 0;
> > -}
> > +	/*
> > +	 * Override stride in 64 byte units per 4 line segment.
> > +	 *
> > +	 * Gen9 hw miscalculates cfb stride for linear as
> > +	 * PLANE_STRIDE*512 instead of PLANE_STRIDE*64, so
> > +	 * we always need to use the override there.
> > +	 */
> > +	if (stride != stride_aligned ||
> > +	    (DISPLAY_VER(dev_priv) == 9 &&
> > +	     cache->fb.modifier == DRM_FORMAT_MOD_LINEAR))
> > +		return stride_aligned * 4 / 64;
> 
> As per bspec WA: 0529
> "Corruption in some cases when FBC is enabled and the plane surface format is in linear, tile Y legacy, or tile Yf
> WA: Display register 4208Ch bit 13 must be set to 1b and bits 12:0 must be programmed with the compressed
> buffer stride value. The compressed buffer stride must be calculated using the following equation:
> 
> Compressed buffer stride = ceiling [(at least plane width in pixels) / (32 * compression limit factor)] * 8"
> 
> We need to use override stride even for TileY/Yf as well along with linear. Does the 512 alignment takes care of that.

TileY is actually fine without the w/a if the plane stride is
suitably aligned. It only goes bad when the stride is misaligned.

Not quite sure about Yf since I've not tested it, but we don't
even allow FBC with Yf at the moment so doesn't really matter.

> And also whether the calculation for linear aligns with bspec WA. Just wanted to highlight, so that we don't miss.

The bspec calculations are written in a bit convoluted way. I'll
respin these patches a bit to write the calcualtions out in a way
that actually makes it clear what we're doing...

> Will go with your discretion.
> 
> > 
> > -static bool intel_fbc_override_cfb_stride_changed(struct drm_i915_private
> > *dev_priv) -{
> > -	struct intel_fbc *fbc = &dev_priv->fbc;
> > -
> > -	return fbc->params.override_cfb_stride !=
> > intel_fbc_override_cfb_stride(dev_priv);
> > +	return 0;
> >  }
> > 
> >  static bool intel_fbc_can_enable(struct drm_i915_private *dev_priv) @@ -861,7
> > +895,8 @@ static bool intel_fbc_can_activate(struct intel_crtc *crtc)
> >  		return false;
> >  	}
> > 
> > -	if (!stride_is_valid(dev_priv, cache->fb.modifier, cache->fb.stride)) {
> > +	if (!stride_is_valid(dev_priv, cache->fb.modifier,
> > +			     cache->fb.stride * cache->fb.format->cpp[0])) {
> >  		fbc->no_fbc_reason = "framebuffer stride not supported";
> >  		return false;
> >  	}
> > @@ -949,9 +984,9 @@ static void intel_fbc_get_reg_params(struct intel_crtc *crtc,
> >  	params->fb.modifier = cache->fb.modifier;
> >  	params->fb.stride = cache->fb.stride;
> > 
> > -	params->cfb_size = intel_fbc_calculate_cfb_size(dev_priv, cache);
> > -
> > -	params->override_cfb_stride = cache->override_cfb_stride;
> > +	params->cfb_stride = intel_fbc_cfb_stride(dev_priv, cache);
> > +	params->cfb_size = intel_fbc_cfb_size(dev_priv, cache);
> > +	params->override_cfb_stride = intel_fbc_override_cfb_stride(dev_priv,
> > +cache);
> > 
> >  	params->plane_visible = cache->plane.visible;  } @@ -982,10 +1017,13 @@
> > static bool intel_fbc_can_flip_nuke(const struct intel_crtc_state *crtc_state)
> >  	if (params->fb.stride != cache->fb.stride)
> >  		return false;
> > 
> > -	if (params->cfb_size != intel_fbc_calculate_cfb_size(dev_priv, cache))
> > +	if (params->cfb_stride != intel_fbc_cfb_stride(dev_priv, cache))
> >  		return false;
> > 
> > -	if (params->override_cfb_stride != cache->override_cfb_stride)
> > +	if (params->cfb_size != intel_fbc_cfb_size(dev_priv, cache))
> > +		return false;
> > +
> > +	if (params->override_cfb_stride !=
> > +intel_fbc_override_cfb_stride(dev_priv, cache))
> >  		return false;
> > 
> >  	return true;
> > @@ -1266,8 +1304,7 @@ static void intel_fbc_enable(struct intel_atomic_state
> > *state,
> > 
> >  	if (fbc->crtc) {
> >  		if (fbc->crtc != crtc ||
> > -		    (!intel_fbc_cfb_size_changed(dev_priv) &&
> > -		     !intel_fbc_override_cfb_stride_changed(dev_priv)))
> > +		    !intel_fbc_cfb_size_changed(dev_priv))
> >  			goto out;
> > 
> >  		__intel_fbc_disable(dev_priv);
> > @@ -1282,15 +1319,13 @@ static void intel_fbc_enable(struct intel_atomic_state
> > *state,
> >  		goto out;
> > 
> >  	if (intel_fbc_alloc_cfb(dev_priv,
> > -				intel_fbc_calculate_cfb_size(dev_priv, cache),
> > +				intel_fbc_cfb_size(dev_priv, cache),
> >  				plane_state->hw.fb->format->cpp[0])) {
> >  		cache->plane.visible = false;
> >  		fbc->no_fbc_reason = "not enough stolen memory";
> >  		goto out;
> >  	}
> > 
> > -	cache->override_cfb_stride = intel_fbc_override_cfb_stride(dev_priv);
> > -
> >  	drm_dbg_kms(&dev_priv->drm, "Enabling FBC on pipe %c\n",
> >  		    pipe_name(crtc->pipe));
> >  	fbc->no_fbc_reason = "FBC enabled but not active yet\n"; diff --git
> > a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h index
> > 91a2d2425fd3..d124306c0a08 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -401,7 +401,6 @@ struct intel_fbc {
> >  		} fb;
> > 
> >  		unsigned int fence_y_offset;
> > -		u16 override_cfb_stride;
> >  		u16 interval;
> >  		s8 fence_id;
> >  		bool psr2_active;
> > @@ -426,7 +425,8 @@ struct intel_fbc {
> >  			u64 modifier;
> >  		} fb;
> > 
> > -		int cfb_size;
> > +		unsigned int cfb_stride;
> > +		unsigned int cfb_size;
> >  		unsigned int fence_y_offset;
> >  		u16 override_cfb_stride;
> >  		u16 interval;
> > --
> > 2.31.1
> > 
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Ville Syrjälä
Intel
