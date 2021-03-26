Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B0634ACA0
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 17:37:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A3896F404;
	Fri, 26 Mar 2021 16:37:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33ADE6F404
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Mar 2021 16:37:26 +0000 (UTC)
IronPort-SDR: HtTyXH8c2WxQskGGB9A/nSBtGfw3ao/6soxqhvG14cce2++gfNUx3pLEWckyyQ93GlTifQnQHc
 Lgk/Ty7JECww==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="188908166"
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="188908166"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 09:37:25 -0700
IronPort-SDR: njYWwUENefo9Qt/zoLngGMNisWRH8M9enFZhPJiSPHXZ6kIkVCbbmPDSrXl8qa8EuEx3CEUY3x
 /ahXH15AqyNw==
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="416604828"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 09:37:24 -0700
Date: Fri, 26 Mar 2021 18:37:20 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20210326163720.GP2237616@ideak-desk.fi.intel.com>
References: <20210325214808.2071517-1-imre.deak@intel.com>
 <20210325214808.2071517-17-imre.deak@intel.com>
 <YF4M53Gs4U9HaeA0@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YF4M53Gs4U9HaeA0@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 16/25] drm/i915: Unify the FB and plane
 state view information into one struct
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 26, 2021 at 06:33:43PM +0200, Ville Syrj=E4l=E4 wrote:
> On Thu, Mar 25, 2021 at 11:47:59PM +0200, Imre Deak wrote:
> > To allow the simplification of FB/plane view computation in the
> > follow-up patches, unify the corresponding state in the
> > intel_framebuffer and intel_plane_state structs into a new intel_fb_view
> > struct.
> > =

> > This adds some overhead to intel_framebuffer as the rotated view will
> > have now space for 4 color planes instead of the required 2 and it'll
> > also contain the unused offset for each color_plane info. Imo this is an
> > acceptable trade-off to get a simplified way of the remap computation.
> > =

> > Use the new intel_fb_view struct for the FB normal view as well, so (in
> > the follow-up patches) we can remove the special casing for normal view
> > calculation wrt. the calculation of remapped/rotated views. This also
> > adds an overhead to the intel_framebuffer struct, as the gtt remap info
> > and per-color plane offset/pitch is not required for the normal view,
> > but imo this is an acceptable trade-off as above. The per-color plane
> > pitch filed will be used by a follow-up patch, so we can retrieve the
> > pitch for each view in the same way.
> > =

> > No functional changes in this patch.
> > =

> > Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/i9xx_plane.c     | 20 +++---
> >  drivers/gpu/drm/i915/display/intel_cursor.c   | 14 ++--
> >  drivers/gpu/drm/i915/display/intel_display.c  | 22 +++---
> >  .../drm/i915/display/intel_display_types.h    | 61 ++++++++++------
> >  drivers/gpu/drm/i915/display/intel_fb.c       | 66 ++++++++---------
> >  drivers/gpu/drm/i915/display/intel_fb.h       |  3 +
> >  drivers/gpu/drm/i915/display/intel_fbc.c      |  6 +-
> >  drivers/gpu/drm/i915/display/intel_sprite.c   | 26 +++----
> >  .../drm/i915/display/skl_universal_plane.c    | 71 +++++++++----------
> >  9 files changed, 153 insertions(+), 136 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/dr=
m/i915/display/i9xx_plane.c
> > index 40266b78247b2..8ee59490c027a 100644
> > --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> > +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> > @@ -271,7 +271,7 @@ int i9xx_check_plane_surface(struct intel_plane_sta=
te *plane_state)
> >  		u32 alignment =3D intel_surf_alignment(fb, 0);
> >  		int cpp =3D fb->format->cpp[0];
> >  =

> > -		while ((src_x + src_w) * cpp > plane_state->color_plane[0].stride) {
> > +		while ((src_x + src_w) * cpp > plane_state->view.color_plane[0].pitc=
h) {
> >  			if (offset =3D=3D 0) {
> >  				drm_dbg_kms(&dev_priv->drm,
> >  					    "Unable to find suitable display surface offset due to X-tili=
ng\n");
> > @@ -311,9 +311,9 @@ int i9xx_check_plane_surface(struct intel_plane_sta=
te *plane_state)
> >  		drm_WARN_ON(&dev_priv->drm, src_x > 4095 || src_y > 4095);
> >  	}
> >  =

> > -	plane_state->color_plane[0].offset =3D offset;
> > -	plane_state->color_plane[0].x =3D src_x;
> > -	plane_state->color_plane[0].y =3D src_y;
> > +	plane_state->view.color_plane[0].offset =3D offset;
> > +	plane_state->view.color_plane[0].x =3D src_x;
> > +	plane_state->view.color_plane[0].y =3D src_y;
> >  =

> >  	return 0;
> >  }
> > @@ -424,8 +424,8 @@ static void i9xx_update_plane(struct intel_plane *p=
lane,
> >  	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> >  	enum i9xx_plane_id i9xx_plane =3D plane->i9xx_plane;
> >  	u32 linear_offset;
> > -	int x =3D plane_state->color_plane[0].x;
> > -	int y =3D plane_state->color_plane[0].y;
> > +	int x =3D plane_state->view.color_plane[0].x;
> > +	int y =3D plane_state->view.color_plane[0].y;
> >  	int crtc_x =3D plane_state->uapi.dst.x1;
> >  	int crtc_y =3D plane_state->uapi.dst.y1;
> >  	int crtc_w =3D drm_rect_width(&plane_state->uapi.dst);
> > @@ -439,14 +439,14 @@ static void i9xx_update_plane(struct intel_plane =
*plane,
> >  	linear_offset =3D intel_fb_xy_to_linear(x, y, plane_state, 0);
> >  =

> >  	if (DISPLAY_VER(dev_priv) >=3D 4)
> > -		dspaddr_offset =3D plane_state->color_plane[0].offset;
> > +		dspaddr_offset =3D plane_state->view.color_plane[0].offset;
> >  	else
> >  		dspaddr_offset =3D linear_offset;
> >  =

> >  	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> >  =

> >  	intel_de_write_fw(dev_priv, DSPSTRIDE(i9xx_plane),
> > -			  plane_state->color_plane[0].stride);
> > +			  plane_state->view.color_plane[0].pitch);
> >  =

> >  	if (DISPLAY_VER(dev_priv) < 4) {
> >  		/*
> > @@ -531,7 +531,7 @@ g4x_primary_async_flip(struct intel_plane *plane,
> >  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> >  	u32 dspcntr =3D plane_state->ctl | i9xx_plane_ctl_crtc(crtc_state);
> > -	u32 dspaddr_offset =3D plane_state->color_plane[0].offset;
> > +	u32 dspaddr_offset =3D plane_state->view.color_plane[0].offset;
> >  	enum i9xx_plane_id i9xx_plane =3D plane->i9xx_plane;
> >  	unsigned long irqflags;
> >  =

> > @@ -552,7 +552,7 @@ vlv_primary_async_flip(struct intel_plane *plane,
> >  		       bool async_flip)
> >  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> > -	u32 dspaddr_offset =3D plane_state->color_plane[0].offset;
> > +	u32 dspaddr_offset =3D plane_state->view.color_plane[0].offset;
> >  	enum i9xx_plane_id i9xx_plane =3D plane->i9xx_plane;
> >  	unsigned long irqflags;
> >  =

> > diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/=
drm/i915/display/intel_cursor.c
> > index 84099b7f5c358..03dad12cf78fc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> > @@ -45,7 +45,7 @@ static u32 intel_cursor_base(const struct intel_plane=
_state *plane_state)
> >  	else
> >  		base =3D intel_plane_ggtt_offset(plane_state);
> >  =

> > -	return base + plane_state->color_plane[0].offset;
> > +	return base + plane_state->view.color_plane[0].offset;
> >  }
> >  =

> >  static u32 intel_cursor_position(const struct intel_plane_state *plane=
_state)
> > @@ -125,9 +125,9 @@ static int intel_cursor_check_surface(struct intel_=
plane_state *plane_state)
> >  		offset +=3D (src_h * src_w - 1) * fb->format->cpp[0];
> >  	}
> >  =

> > -	plane_state->color_plane[0].offset =3D offset;
> > -	plane_state->color_plane[0].x =3D src_x;
> > -	plane_state->color_plane[0].y =3D src_y;
> > +	plane_state->view.color_plane[0].offset =3D offset;
> > +	plane_state->view.color_plane[0].x =3D src_x;
> > +	plane_state->view.color_plane[0].y =3D src_y;
> >  =

> >  	return 0;
> >  }
> > @@ -194,7 +194,7 @@ static u32 i845_cursor_ctl(const struct intel_crtc_=
state *crtc_state,
> >  {
> >  	return CURSOR_ENABLE |
> >  		CURSOR_FORMAT_ARGB |
> > -		CURSOR_STRIDE(plane_state->color_plane[0].stride);
> > +		CURSOR_STRIDE(plane_state->view.color_plane[0].pitch);
> >  }
> >  =

> >  static bool i845_cursor_size_ok(const struct intel_plane_state *plane_=
state)
> > @@ -233,7 +233,7 @@ static int i845_check_cursor(struct intel_crtc_stat=
e *crtc_state,
> >  	}
> >  =

> >  	drm_WARN_ON(&i915->drm, plane_state->uapi.visible &&
> > -		    plane_state->color_plane[0].stride !=3D fb->pitches[0]);
> > +		    plane_state->view.color_plane[0].pitch !=3D fb->pitches[0]);
> >  =

> >  	switch (fb->pitches[0]) {
> >  	case 256:
> > @@ -450,7 +450,7 @@ static int i9xx_check_cursor(struct intel_crtc_stat=
e *crtc_state,
> >  	}
> >  =

> >  	drm_WARN_ON(&dev_priv->drm, plane_state->uapi.visible &&
> > -		    plane_state->color_plane[0].stride !=3D fb->pitches[0]);
> > +		    plane_state->view.color_plane[0].pitch !=3D fb->pitches[0]);
> >  =

> >  	if (fb->pitches[0] !=3D
> >  	    drm_rect_width(&plane_state->uapi.dst) * fb->format->cpp[0]) {
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 25eaa8a44baa8..4ee7e72142a5f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1013,7 +1013,7 @@ static bool intel_plane_uses_fence(const struct i=
ntel_plane_state *plane_state)
> >  =

> >  	return DISPLAY_VER(dev_priv) < 4 ||
> >  		(plane->has_fbc &&
> > -		 plane_state->view.type =3D=3D I915_GGTT_VIEW_NORMAL);
> > +		 plane_state->view.gtt.type =3D=3D I915_GGTT_VIEW_NORMAL);
> >  }
> >  =

> >  struct i915_vma *
> > @@ -1161,7 +1161,7 @@ u32 intel_fb_xy_to_linear(int x, int y,
> >  {
> >  	const struct drm_framebuffer *fb =3D state->hw.fb;
> >  	unsigned int cpp =3D fb->format->cpp[color_plane];
> > -	unsigned int pitch =3D state->color_plane[color_plane].stride;
> > +	unsigned int pitch =3D state->view.color_plane[color_plane].pitch;
> >  =

> >  	return y * pitch + x * cpp;
> >  }
> > @@ -1176,8 +1176,8 @@ void intel_add_fb_offsets(int *x, int *y,
> >  			  int color_plane)
> >  =

> >  {
> > -	*x +=3D state->color_plane[color_plane].x;
> > -	*y +=3D state->color_plane[color_plane].y;
> > +	*x +=3D state->view.color_plane[color_plane].x;
> > +	*y +=3D state->view.color_plane[color_plane].y;
> >  }
> >  =

> >  static unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
> > @@ -1680,9 +1680,9 @@ intel_find_initial_plane_obj(struct intel_crtc *i=
ntel_crtc,
> >  =

> >  valid_fb:
> >  	plane_state->rotation =3D plane_config->rotation;
> > -	intel_fill_fb_ggtt_view(&intel_state->view, fb,
> > +	intel_fill_fb_ggtt_view(&intel_state->view.gtt, fb,
> >  				plane_state->rotation);
> > -	intel_state->color_plane[0].stride =3D
> > +	intel_state->view.color_plane[0].pitch =3D
> >  		intel_fb_pitch(fb, 0, plane_state->rotation);
> >  =

> >  	__i915_vma_pin(vma);
> > @@ -1723,7 +1723,7 @@ intel_plane_fence_y_offset(const struct intel_pla=
ne_state *plane_state)
> >  	int x =3D 0, y =3D 0;
> >  =

> >  	intel_plane_adjust_aligned_offset(&x, &y, plane_state, 0,
> > -					  plane_state->color_plane[0].offset, 0);
> > +					  plane_state->view.color_plane[0].offset, 0);
> >  =

> >  	return y;
> >  }
> > @@ -6787,8 +6787,6 @@ static int icl_check_nv12_planes(struct intel_crt=
c_state *crtc_state)
> >  		linked_state->ctl =3D plane_state->ctl | PLANE_CTL_YUV420_Y_PLANE;
> >  		linked_state->color_ctl =3D plane_state->color_ctl;
> >  		linked_state->view =3D plane_state->view;
> > -		memcpy(linked_state->color_plane, plane_state->color_plane,
> > -		       sizeof(linked_state->color_plane));
> >  =

> >  		intel_plane_copy_hw_state(linked_state, plane_state);
> >  		linked_state->uapi.src =3D plane_state->uapi.src;
> > @@ -9320,8 +9318,8 @@ static int intel_atomic_check_async(struct intel_=
atomic_state *state)
> >  			return -EINVAL;
> >  		}
> >  =

> > -		if (old_plane_state->color_plane[0].stride !=3D
> > -		    new_plane_state->color_plane[0].stride) {
> > +		if (old_plane_state->view.color_plane[0].pitch !=3D
> > +		    new_plane_state->view.color_plane[0].pitch) {
> >  			drm_dbg_kms(&i915->drm, "Stride cannot be changed in async flip\n");
> >  			return -EINVAL;
> >  		}
> > @@ -10546,7 +10544,7 @@ int intel_plane_pin_fb(struct intel_plane_state=
 *plane_state)
> >  		INTEL_INFO(dev_priv)->display.cursor_needs_physical;
> >  =

> >  	vma =3D intel_pin_and_fence_fb_obj(fb, phys_cursor,
> > -					 &plane_state->view,
> > +					 &plane_state->view.gtt,
> >  					 intel_plane_uses_fence(plane_state),
> >  					 &plane_state->flags);
> >  	if (IS_ERR(vma))
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drive=
rs/gpu/drm/i915/display/intel_display_types.h
> > index 80983cfe9d3b0..b72861f6f68a7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -85,20 +85,49 @@ enum intel_broadcast_rgb {
> >  	INTEL_BROADCAST_RGB_LIMITED,
> >  };
> >  =

> > +struct intel_fb_view {
> > +	/*
> > +	 * The remap information used in the remapped and rotated views to
> > +	 * create the DMA scatter-gather list for each FB color plane. This sg
> > +	 * list is created along with the view type (gtt.type) specific
> > +	 * i915_vma object and contains the list of FB object pages (reordered
> > +	 * in the rotated view) that are visible in the view.
> > +	 * In the normal view the FB object's backing store sg list is used
> > +	 * directly and hence the remap information here is not used.
> > +	 */
> > +	struct i915_ggtt_view gtt;
> > +
> > +	/*
> > +	 * The GTT view (gtt.type) specific information for each FB color
> > +	 * plane. In the normal GTT view all formats (up to 4 color planes),
> > +	 * in the rotated and remapped GTT view all no-CCS formats (up to 2
> > +	 * color planes) are supported.
> > +	 *
> > +	 * TODO: add support for CCS formats in the remapped GTT view.
> > +	 *
> > +	 * The view information shared by all FB color planes in the FB,
> > +	 * like dst x/y and src/dst width, is stored separately in
> > +	 * intel_plane_state.
> > +	 */
> > +	struct i915_color_plane_view {
> > +		u32 offset;
> > +		unsigned int x, y;
> > +		/*
> > +		 * Plane pitch (stride) in:
> > +		 *   bytes for 0/180 degree rotation
> > +		 *   pixels for 90/270 degree rotation
> > +		 */
> > +		unsigned int pitch;
> =

> I've been trying to do a bit of s/pitch/stride/ in general
> since that's the terminology our hw uses. So I would call this
> 'stride'.

Ah ok. I was wondering what's the difference between the two, I thought
first that pitch is always pixels and stride is bytes, but not sure. And
here it can be both. I'll use then stride.

> But if this is easier then I guess it's fine. We could do
> a followup pass to unify the naming more.
> =

> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> > +	} color_plane[4];
> > +};
> > +
> >  struct intel_framebuffer {
> >  	struct drm_framebuffer base;
> >  	struct intel_frontbuffer *frontbuffer;
> > -	struct intel_rotation_info rot_info;
> >  =

> > -	/* for each plane in the normal GTT view */
> > -	struct {
> > -		unsigned int x, y;
> > -	} normal[4];
> > -	/* for each plane in the rotated GTT view for no-CCS formats */
> > -	struct {
> > -		unsigned int x, y;
> > -		unsigned int pitch; /* pixels */
> > -	} rotated[2];
> > +	/* Params to remap the FB pages and program the plane registers in ea=
ch view. */
> > +	struct intel_fb_view normal_view;
> > +	struct intel_fb_view rotated_view;
> >  };
> >  =

> >  struct intel_fbdev {
> > @@ -581,21 +610,11 @@ struct intel_plane_state {
> >  		enum drm_scaling_filter scaling_filter;
> >  	} hw;
> >  =

> > -	struct i915_ggtt_view view;
> >  	struct i915_vma *vma;
> >  	unsigned long flags;
> >  #define PLANE_HAS_FENCE BIT(0)
> >  =

> > -	struct {
> > -		u32 offset;
> > -		/*
> > -		 * Plane stride in:
> > -		 * bytes for 0/180 degree rotation
> > -		 * pixels for 90/270 degree rotation
> > -		 */
> > -		u32 stride;
> > -		int x, y;
> > -	} color_plane[4];
> > +	struct intel_fb_view view;
> >  =

> >  	/* plane control register */
> >  	u32 ctl;
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/=
i915/display/intel_fb.c
> > index 6f8206769c3df..b223e16eb6a22 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > @@ -259,7 +259,7 @@ u32 intel_plane_adjust_aligned_offset(int *x, int *=
y,
> >  {
> >  	return intel_adjust_aligned_offset(x, y, state->hw.fb, color_plane,
> >  					   state->hw.rotation,
> > -					   state->color_plane[color_plane].stride,
> > +					   state->view.color_plane[color_plane].pitch,
> >  					   old_offset, new_offset);
> >  }
> >  =

> > @@ -340,7 +340,7 @@ u32 intel_plane_compute_aligned_offset(int *x, int =
*y,
> >  	struct drm_i915_private *i915 =3D to_i915(intel_plane->base.dev);
> >  	const struct drm_framebuffer *fb =3D state->hw.fb;
> >  	unsigned int rotation =3D state->hw.rotation;
> > -	int pitch =3D state->color_plane[color_plane].stride;
> > +	int pitch =3D state->view.color_plane[color_plane].pitch;
> >  	u32 alignment;
> >  =

> >  	if (intel_plane->id =3D=3D PLANE_CURSOR)
> > @@ -423,8 +423,8 @@ static int intel_fb_check_ccs_xy(const struct drm_f=
ramebuffer *fb, int ccs_plane
> >  	ccs_y =3D (y * vsub) % tile_height;
> >  =

> >  	main_plane =3D skl_ccs_to_main_plane(fb, ccs_plane);
> > -	main_x =3D intel_fb->normal[main_plane].x % tile_width;
> > -	main_y =3D intel_fb->normal[main_plane].y % tile_height;
> > +	main_x =3D intel_fb->normal_view.color_plane[main_plane].x % tile_wid=
th;
> > +	main_y =3D intel_fb->normal_view.color_plane[main_plane].y % tile_hei=
ght;
> >  =

> >  	/*
> >  	 * CCS doesn't have its own x/y offset register, so the intra CCS tile
> > @@ -435,8 +435,8 @@ static int intel_fb_check_ccs_xy(const struct drm_f=
ramebuffer *fb, int ccs_plane
> >  			      "Bad CCS x/y (main %d,%d ccs %d,%d) full (main %d,%d ccs %d,%=
d)\n",
> >  			      main_x, main_y,
> >  			      ccs_x, ccs_y,
> > -			      intel_fb->normal[main_plane].x,
> > -			      intel_fb->normal[main_plane].y,
> > +			      intel_fb->normal_view.color_plane[main_plane].x,
> > +			      intel_fb->normal_view.color_plane[main_plane].y,
> >  			      x, y);
> >  		return -EINVAL;
> >  	}
> > @@ -487,7 +487,7 @@ static bool intel_plane_can_remap(const struct inte=
l_plane_state *plane_state)
> >  int intel_fb_pitch(const struct drm_framebuffer *fb, int color_plane, =
unsigned int rotation)
> >  {
> >  	if (drm_rotation_90_or_270(rotation))
> > -		return to_intel_framebuffer(fb)->rotated[color_plane].pitch;
> > +		return to_intel_framebuffer(fb)->rotated_view.color_plane[color_plan=
e].pitch;
> >  	else
> >  		return fb->pitches[color_plane];
> >  }
> > @@ -584,7 +584,7 @@ static u32 setup_fb_rotation(int plane, const struc=
t intel_remapped_plane_info *
> >  			     struct drm_framebuffer *fb)
> >  {
> >  	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> > -	struct intel_rotation_info *rot_info =3D &intel_fb->rot_info;
> > +	struct intel_rotation_info *rot_info =3D &intel_fb->rotated_view.gtt.=
rotated;
> >  	unsigned int pitch_tiles;
> >  	struct drm_rect r;
> >  =

> > @@ -598,7 +598,7 @@ static u32 setup_fb_rotation(int plane, const struc=
t intel_remapped_plane_info *
> >  =

> >  	rot_info->plane[plane] =3D *plane_info;
> >  =

> > -	intel_fb->rotated[plane].pitch =3D plane_info->height * tile_height;
> > +	intel_fb->rotated_view.color_plane[plane].pitch =3D plane_info->heigh=
t * tile_height;
> >  =

> >  	/* rotate the x/y offsets to match the GTT view */
> >  	drm_rect_init(&r, x, y, width, height);
> > @@ -610,7 +610,7 @@ static u32 setup_fb_rotation(int plane, const struc=
t intel_remapped_plane_info *
> >  	y =3D r.y1;
> >  =

> >  	/* rotate the tile dimensions to match the GTT view */
> > -	pitch_tiles =3D intel_fb->rotated[plane].pitch / tile_height;
> > +	pitch_tiles =3D intel_fb->rotated_view.color_plane[plane].pitch / til=
e_height;
> >  	swap(tile_width, tile_height);
> >  =

> >  	/*
> > @@ -626,8 +626,8 @@ static u32 setup_fb_rotation(int plane, const struc=
t intel_remapped_plane_info *
> >  	 * First pixel of the framebuffer from
> >  	 * the start of the rotated gtt mapping.
> >  	 */
> > -	intel_fb->rotated[plane].x =3D x;
> > -	intel_fb->rotated[plane].y =3D y;
> > +	intel_fb->rotated_view.color_plane[plane].x =3D x;
> > +	intel_fb->rotated_view.color_plane[plane].y =3D y;
> >  =

> >  	return plane_info->width * plane_info->height;
> >  }
> > @@ -742,8 +742,8 @@ int intel_fill_fb_info(struct drm_i915_private *i91=
5, struct drm_framebuffer *fb
> >  		 * First pixel of the framebuffer from
> >  		 * the start of the normal gtt mapping.
> >  		 */
> > -		intel_fb->normal[i].x =3D x;
> > -		intel_fb->normal[i].y =3D y;
> > +		intel_fb->normal_view.color_plane[i].x =3D x;
> > +		intel_fb->normal_view.color_plane[i].y =3D y;
> >  =

> >  		offset =3D calc_plane_aligned_offset(intel_fb, i, &x, &y);
> >  =

> > @@ -785,7 +785,7 @@ static void intel_plane_remap_gtt(struct intel_plan=
e_state *plane_state)
> >  		to_i915(plane_state->uapi.plane->dev);
> >  	struct drm_framebuffer *fb =3D plane_state->hw.fb;
> >  	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> > -	struct intel_rotation_info *info =3D &plane_state->view.rotated;
> > +	struct intel_rotation_info *info =3D &plane_state->view.gtt.rotated;
> >  	unsigned int rotation =3D plane_state->hw.rotation;
> >  	int i, num_planes =3D fb->format->num_planes;
> >  	unsigned int tile_size =3D intel_tile_size(i915);
> > @@ -793,8 +793,8 @@ static void intel_plane_remap_gtt(struct intel_plan=
e_state *plane_state)
> >  	unsigned int src_w, src_h;
> >  	u32 gtt_offset =3D 0;
> >  =

> > -	memset(&plane_state->view, 0, sizeof(plane_state->view));
> > -	plane_state->view.type =3D drm_rotation_90_or_270(rotation) ?
> > +	memset(&plane_state->view.gtt, 0, sizeof(plane_state->view.gtt));
> > +	plane_state->view.gtt.type =3D drm_rotation_90_or_270(rotation) ?
> >  		I915_GGTT_VIEW_ROTATED : I915_GGTT_VIEW_REMAPPED;
> >  =

> >  	src_x =3D plane_state->uapi.src.x1 >> 16;
> > @@ -835,8 +835,8 @@ static void intel_plane_remap_gtt(struct intel_plan=
e_state *plane_state)
> >  		 * First pixel of the src viewport from the
> >  		 * start of the normal gtt mapping.
> >  		 */
> > -		x +=3D intel_fb->normal[i].x;
> > -		y +=3D intel_fb->normal[i].y;
> > +		x +=3D intel_fb->normal_view.color_plane[i].x;
> > +		y +=3D intel_fb->normal_view.color_plane[i].y;
> >  =

> >  		offset =3D calc_plane_aligned_offset(intel_fb, i, &x, &y);
> >  =

> > @@ -860,13 +860,13 @@ static void intel_plane_remap_gtt(struct intel_pl=
ane_state *plane_state)
> >  			y =3D r.y1;
> >  =

> >  			pitch_tiles =3D info->plane[i].height;
> > -			plane_state->color_plane[i].stride =3D pitch_tiles * tile_height;
> > +			plane_state->view.color_plane[i].pitch =3D pitch_tiles * tile_heigh=
t;
> >  =

> >  			/* rotate the tile dimensions to match the GTT view */
> >  			swap(tile_width, tile_height);
> >  		} else {
> >  			pitch_tiles =3D info->plane[i].width;
> > -			plane_state->color_plane[i].stride =3D pitch_tiles * tile_width * c=
pp;
> > +			plane_state->view.color_plane[i].pitch =3D pitch_tiles * tile_width=
 * cpp;
> >  		}
> >  =

> >  		/*
> > @@ -880,9 +880,9 @@ static void intel_plane_remap_gtt(struct intel_plan=
e_state *plane_state)
> >  =

> >  		gtt_offset +=3D info->plane[i].width * info->plane[i].height;
> >  =

> > -		plane_state->color_plane[i].offset =3D 0;
> > -		plane_state->color_plane[i].x =3D x;
> > -		plane_state->color_plane[i].y =3D y;
> > +		plane_state->view.color_plane[i].offset =3D 0;
> > +		plane_state->view.color_plane[i].x =3D x;
> > +		plane_state->view.color_plane[i].y =3D y;
> >  	}
> >  }
> >  =

> > @@ -895,7 +895,7 @@ void intel_fill_fb_ggtt_view(struct i915_ggtt_view =
*view,
> >  	view->type =3D I915_GGTT_VIEW_NORMAL;
> >  	if (drm_rotation_90_or_270(rotation)) {
> >  		view->type =3D I915_GGTT_VIEW_ROTATED;
> > -		view->rotated =3D to_intel_framebuffer(fb)->rot_info;
> > +		view->rotated =3D to_intel_framebuffer(fb)->rotated_view.gtt.rotated;
> >  	}
> >  }
> >  =

> > @@ -917,7 +917,7 @@ static int intel_plane_check_stride(const struct in=
tel_plane_state *plane_state)
> >  		return 0;
> >  =

> >  	/* FIXME other color planes? */
> > -	stride =3D plane_state->color_plane[0].stride;
> > +	stride =3D plane_state->view.color_plane[0].pitch;
> >  	max_stride =3D plane->max_stride(plane, fb->format->format,
> >  				       fb->modifier, rotation);
> >  =

> > @@ -955,18 +955,18 @@ int intel_plane_compute_gtt(struct intel_plane_st=
ate *plane_state)
> >  		return intel_plane_check_stride(plane_state);
> >  	}
> >  =

> > -	intel_fill_fb_ggtt_view(&plane_state->view, &fb->base, rotation);
> > +	intel_fill_fb_ggtt_view(&plane_state->view.gtt, &fb->base, rotation);
> >  =

> >  	for (i =3D 0; i < num_planes; i++) {
> > -		plane_state->color_plane[i].stride =3D intel_fb_pitch(&fb->base, i, =
rotation);
> > -		plane_state->color_plane[i].offset =3D 0;
> > +		plane_state->view.color_plane[i].pitch =3D intel_fb_pitch(&fb->base,=
 i, rotation);
> > +		plane_state->view.color_plane[i].offset =3D 0;
> >  =

> >  		if (drm_rotation_90_or_270(rotation)) {
> > -			plane_state->color_plane[i].x =3D fb->rotated[i].x;
> > -			plane_state->color_plane[i].y =3D fb->rotated[i].y;
> > +			plane_state->view.color_plane[i].x =3D fb->rotated_view.color_plane=
[i].x;
> > +			plane_state->view.color_plane[i].y =3D fb->rotated_view.color_plane=
[i].y;
> >  		} else {
> > -			plane_state->color_plane[i].x =3D fb->normal[i].x;
> > -			plane_state->color_plane[i].y =3D fb->normal[i].y;
> > +			plane_state->view.color_plane[i].x =3D fb->normal_view.color_plane[=
i].x;
> > +			plane_state->view.color_plane[i].y =3D fb->normal_view.color_plane[=
i].y;
> >  		}
> >  	}
> >  =

> > diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/=
i915/display/intel_fb.h
> > index bd1551c694eb3..8ffc883a83c34 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb.h
> > +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> > @@ -14,8 +14,11 @@ struct drm_i915_private;
> >  =

> >  struct i915_ggtt_view;
> >  =

> > +struct intel_fb_view;
> >  struct intel_plane_state;
> >  =

> > +enum i915_ggtt_view_type;
> > +
> >  bool is_ccs_plane(const struct drm_framebuffer *fb, int plane);
> >  bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane);
> >  bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane=
);
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm=
/i915/display/intel_fbc.c
> > index 88e02ee3a6312..f95794bda52ed 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -716,8 +716,8 @@ static void intel_fbc_update_state_cache(struct int=
el_crtc *crtc,
> >  	 */
> >  	cache->plane.src_w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> >  	cache->plane.src_h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
> > -	cache->plane.adjusted_x =3D plane_state->color_plane[0].x;
> > -	cache->plane.adjusted_y =3D plane_state->color_plane[0].y;
> > +	cache->plane.adjusted_x =3D plane_state->view.color_plane[0].x;
> > +	cache->plane.adjusted_y =3D plane_state->view.color_plane[0].y;
> >  =

> >  	cache->plane.pixel_blend_mode =3D plane_state->hw.pixel_blend_mode;
> >  =

> > @@ -725,7 +725,7 @@ static void intel_fbc_update_state_cache(struct int=
el_crtc *crtc,
> >  	cache->fb.modifier =3D fb->modifier;
> >  =

> >  	/* FIXME is this correct? */
> > -	cache->fb.stride =3D plane_state->color_plane[0].stride;
> > +	cache->fb.stride =3D plane_state->view.color_plane[0].pitch;
> >  	if (drm_rotation_90_or_270(plane_state->hw.rotation))
> >  		cache->fb.stride *=3D fb->format->cpp[0];
> >  =

> > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/=
drm/i915/display/intel_sprite.c
> > index af2d617d9eb2b..2ace363f5aac1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > @@ -423,15 +423,15 @@ vlv_update_plane(struct intel_plane *plane,
> >  	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> >  	enum pipe pipe =3D plane->pipe;
> >  	enum plane_id plane_id =3D plane->id;
> > -	u32 sprsurf_offset =3D plane_state->color_plane[0].offset;
> > +	u32 sprsurf_offset =3D plane_state->view.color_plane[0].offset;
> >  	u32 linear_offset;
> >  	const struct drm_intel_sprite_colorkey *key =3D &plane_state->ckey;
> >  	int crtc_x =3D plane_state->uapi.dst.x1;
> >  	int crtc_y =3D plane_state->uapi.dst.y1;
> >  	u32 crtc_w =3D drm_rect_width(&plane_state->uapi.dst);
> >  	u32 crtc_h =3D drm_rect_height(&plane_state->uapi.dst);
> > -	u32 x =3D plane_state->color_plane[0].x;
> > -	u32 y =3D plane_state->color_plane[0].y;
> > +	u32 x =3D plane_state->view.color_plane[0].x;
> > +	u32 y =3D plane_state->view.color_plane[0].y;
> >  	unsigned long irqflags;
> >  	u32 sprctl;
> >  =

> > @@ -446,7 +446,7 @@ vlv_update_plane(struct intel_plane *plane,
> >  	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> >  =

> >  	intel_de_write_fw(dev_priv, SPSTRIDE(pipe, plane_id),
> > -			  plane_state->color_plane[0].stride);
> > +			  plane_state->view.color_plane[0].pitch);
> >  	intel_de_write_fw(dev_priv, SPPOS(pipe, plane_id),
> >  			  (crtc_y << 16) | crtc_x);
> >  	intel_de_write_fw(dev_priv, SPSIZE(pipe, plane_id),
> > @@ -840,15 +840,15 @@ ivb_update_plane(struct intel_plane *plane,
> >  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> >  	enum pipe pipe =3D plane->pipe;
> > -	u32 sprsurf_offset =3D plane_state->color_plane[0].offset;
> > +	u32 sprsurf_offset =3D plane_state->view.color_plane[0].offset;
> >  	u32 linear_offset;
> >  	const struct drm_intel_sprite_colorkey *key =3D &plane_state->ckey;
> >  	int crtc_x =3D plane_state->uapi.dst.x1;
> >  	int crtc_y =3D plane_state->uapi.dst.y1;
> >  	u32 crtc_w =3D drm_rect_width(&plane_state->uapi.dst);
> >  	u32 crtc_h =3D drm_rect_height(&plane_state->uapi.dst);
> > -	u32 x =3D plane_state->color_plane[0].x;
> > -	u32 y =3D plane_state->color_plane[0].y;
> > +	u32 x =3D plane_state->view.color_plane[0].x;
> > +	u32 y =3D plane_state->view.color_plane[0].y;
> >  	u32 src_w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> >  	u32 src_h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
> >  	u32 sprctl, sprscale =3D 0;
> > @@ -870,7 +870,7 @@ ivb_update_plane(struct intel_plane *plane,
> >  	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> >  =

> >  	intel_de_write_fw(dev_priv, SPRSTRIDE(pipe),
> > -			  plane_state->color_plane[0].stride);
> > +			  plane_state->view.color_plane[0].pitch);
> >  	intel_de_write_fw(dev_priv, SPRPOS(pipe), (crtc_y << 16) | crtc_x);
> >  	intel_de_write_fw(dev_priv, SPRSIZE(pipe), (crtc_h << 16) | crtc_w);
> >  	if (IS_IVYBRIDGE(dev_priv))
> > @@ -1168,15 +1168,15 @@ g4x_update_plane(struct intel_plane *plane,
> >  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> >  	enum pipe pipe =3D plane->pipe;
> > -	u32 dvssurf_offset =3D plane_state->color_plane[0].offset;
> > +	u32 dvssurf_offset =3D plane_state->view.color_plane[0].offset;
> >  	u32 linear_offset;
> >  	const struct drm_intel_sprite_colorkey *key =3D &plane_state->ckey;
> >  	int crtc_x =3D plane_state->uapi.dst.x1;
> >  	int crtc_y =3D plane_state->uapi.dst.y1;
> >  	u32 crtc_w =3D drm_rect_width(&plane_state->uapi.dst);
> >  	u32 crtc_h =3D drm_rect_height(&plane_state->uapi.dst);
> > -	u32 x =3D plane_state->color_plane[0].x;
> > -	u32 y =3D plane_state->color_plane[0].y;
> > +	u32 x =3D plane_state->view.color_plane[0].x;
> > +	u32 y =3D plane_state->view.color_plane[0].y;
> >  	u32 src_w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> >  	u32 src_h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
> >  	u32 dvscntr, dvsscale =3D 0;
> > @@ -1198,7 +1198,7 @@ g4x_update_plane(struct intel_plane *plane,
> >  	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> >  =

> >  	intel_de_write_fw(dev_priv, DVSSTRIDE(pipe),
> > -			  plane_state->color_plane[0].stride);
> > +			  plane_state->view.color_plane[0].pitch);
> >  	intel_de_write_fw(dev_priv, DVSPOS(pipe), (crtc_y << 16) | crtc_x);
> >  	intel_de_write_fw(dev_priv, DVSSIZE(pipe), (crtc_h << 16) | crtc_w);
> >  	intel_de_write_fw(dev_priv, DVSSCALE(pipe), dvsscale);
> > @@ -1298,7 +1298,7 @@ g4x_sprite_check_scaling(struct intel_crtc_state =
*crtc_state,
> >  	int src_x, src_w, src_h, crtc_w, crtc_h;
> >  	const struct drm_display_mode *adjusted_mode =3D
> >  		&crtc_state->hw.adjusted_mode;
> > -	unsigned int stride =3D plane_state->color_plane[0].stride;
> > +	unsigned int stride =3D plane_state->view.color_plane[0].pitch;
> >  	unsigned int cpp =3D fb->format->cpp[0];
> >  	unsigned int width_bytes;
> >  	int min_width, min_height;
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drive=
rs/gpu/drm/i915/display/skl_universal_plane.c
> > index 22f7a13020189..00a11fb516e52 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -582,7 +582,7 @@ static u32 skl_plane_stride(const struct intel_plan=
e_state *plane_state,
> >  {
> >  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> >  	unsigned int rotation =3D plane_state->hw.rotation;
> > -	u32 stride =3D plane_state->color_plane[color_plane].stride;
> > +	u32 stride =3D plane_state->view.color_plane[color_plane].pitch;
> >  =

> >  	if (color_plane >=3D fb->format->num_planes)
> >  		return 0;
> > @@ -919,14 +919,14 @@ skl_program_plane(struct intel_plane *plane,
> >  	enum plane_id plane_id =3D plane->id;
> >  	enum pipe pipe =3D plane->pipe;
> >  	const struct drm_intel_sprite_colorkey *key =3D &plane_state->ckey;
> > -	u32 surf_addr =3D plane_state->color_plane[color_plane].offset;
> > +	u32 surf_addr =3D plane_state->view.color_plane[color_plane].offset;
> >  	u32 stride =3D skl_plane_stride(plane_state, color_plane);
> >  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> >  	int aux_plane =3D skl_main_to_aux_plane(fb, color_plane);
> >  	int crtc_x =3D plane_state->uapi.dst.x1;
> >  	int crtc_y =3D plane_state->uapi.dst.y1;
> > -	u32 x =3D plane_state->color_plane[color_plane].x;
> > -	u32 y =3D plane_state->color_plane[color_plane].y;
> > +	u32 x =3D plane_state->view.color_plane[color_plane].x;
> > +	u32 y =3D plane_state->view.color_plane[color_plane].y;
> >  	u32 src_w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> >  	u32 src_h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
> >  	u8 alpha =3D plane_state->hw.alpha >> 8;
> > @@ -958,7 +958,7 @@ skl_program_plane(struct intel_plane *plane,
> >  	}
> >  =

> >  	if (aux_plane) {
> > -		aux_dist =3D plane_state->color_plane[aux_plane].offset - surf_addr;
> > +		aux_dist =3D plane_state->view.color_plane[aux_plane].offset - surf_=
addr;
> >  =

> >  		if (DISPLAY_VER(dev_priv) < 12)
> >  			aux_dist |=3D skl_plane_stride(plane_state, aux_plane);
> > @@ -1001,7 +1001,8 @@ skl_program_plane(struct intel_plane *plane,
> >  =

> >  	if (DISPLAY_VER(dev_priv) < 11)
> >  		intel_de_write_fw(dev_priv, PLANE_AUX_OFFSET(pipe, plane_id),
> > -				  (plane_state->color_plane[1].y << 16) | plane_state->color_plane=
[1].x);
> > +				  (plane_state->view.color_plane[1].y << 16) |
> > +				   plane_state->view.color_plane[1].x);
> >  =

> >  	if (!drm_atomic_crtc_needs_modeset(&crtc_state->uapi))
> >  		intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, c=
olor_plane);
> > @@ -1031,7 +1032,7 @@ skl_plane_async_flip(struct intel_plane *plane,
> >  	unsigned long irqflags;
> >  	enum plane_id plane_id =3D plane->id;
> >  	enum pipe pipe =3D plane->pipe;
> > -	u32 surf_addr =3D plane_state->color_plane[0].offset;
> > +	u32 surf_addr =3D plane_state->view.color_plane[0].offset;
> >  	u32 plane_ctl =3D plane_state->ctl;
> >  =

> >  	plane_ctl |=3D skl_plane_ctl_crtc(crtc_state);
> > @@ -1269,9 +1270,9 @@ skl_check_main_ccs_coordinates(struct intel_plane=
_state *plane_state,
> >  			       int ccs_plane)
> >  {
> >  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> > -	int aux_x =3D plane_state->color_plane[ccs_plane].x;
> > -	int aux_y =3D plane_state->color_plane[ccs_plane].y;
> > -	u32 aux_offset =3D plane_state->color_plane[ccs_plane].offset;
> > +	int aux_x =3D plane_state->view.color_plane[ccs_plane].x;
> > +	int aux_y =3D plane_state->view.color_plane[ccs_plane].y;
> > +	u32 aux_offset =3D plane_state->view.color_plane[ccs_plane].offset;
> >  	u32 alignment =3D intel_surf_alignment(fb, ccs_plane);
> >  	int hsub;
> >  	int vsub;
> > @@ -1301,9 +1302,9 @@ skl_check_main_ccs_coordinates(struct intel_plane=
_state *plane_state,
> >  	if (aux_x !=3D main_x || aux_y !=3D main_y)
> >  		return false;
> >  =

> > -	plane_state->color_plane[ccs_plane].offset =3D aux_offset;
> > -	plane_state->color_plane[ccs_plane].x =3D aux_x;
> > -	plane_state->color_plane[ccs_plane].y =3D aux_y;
> > +	plane_state->view.color_plane[ccs_plane].offset =3D aux_offset;
> > +	plane_state->view.color_plane[ccs_plane].x =3D aux_x;
> > +	plane_state->view.color_plane[ccs_plane].y =3D aux_y;
> >  =

> >  	return true;
> >  }
> > @@ -1316,7 +1317,7 @@ int skl_calc_main_surface_offset(const struct int=
el_plane_state *plane_state,
> >  	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> >  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> >  	const int aux_plane =3D skl_main_to_aux_plane(fb, 0);
> > -	const u32 aux_offset =3D plane_state->color_plane[aux_plane].offset;
> > +	const u32 aux_offset =3D plane_state->view.color_plane[aux_plane].off=
set;
> >  	const u32 alignment =3D intel_surf_alignment(fb, 0);
> >  	const int w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> >  =

> > @@ -1344,7 +1345,7 @@ int skl_calc_main_surface_offset(const struct int=
el_plane_state *plane_state,
> >  	if (fb->modifier =3D=3D I915_FORMAT_MOD_X_TILED) {
> >  		int cpp =3D fb->format->cpp[0];
> >  =

> > -		while ((*x + w) * cpp > plane_state->color_plane[0].stride) {
> > +		while ((*x + w) * cpp > plane_state->view.color_plane[0].pitch) {
> >  			if (*offset =3D=3D 0) {
> >  				drm_dbg_kms(&dev_priv->drm,
> >  					    "Unable to find suitable display surface offset due to X-tili=
ng\n");
> > @@ -1403,8 +1404,8 @@ static int skl_check_main_surface(struct intel_pl=
ane_state *plane_state)
> >  								   offset, offset - alignment);
> >  		}
> >  =

> > -		if (x !=3D plane_state->color_plane[aux_plane].x ||
> > -		    y !=3D plane_state->color_plane[aux_plane].y) {
> > +		if (x !=3D plane_state->view.color_plane[aux_plane].x ||
> > +		    y !=3D plane_state->view.color_plane[aux_plane].y) {
> >  			drm_dbg_kms(&dev_priv->drm,
> >  				    "Unable to find suitable display surface offset due to CCS\n");
> >  			return -EINVAL;
> > @@ -1413,9 +1414,9 @@ static int skl_check_main_surface(struct intel_pl=
ane_state *plane_state)
> >  =

> >  	drm_WARN_ON(&dev_priv->drm, x > 8191 || y > 8191);
> >  =

> > -	plane_state->color_plane[0].offset =3D offset;
> > -	plane_state->color_plane[0].x =3D x;
> > -	plane_state->color_plane[0].y =3D y;
> > +	plane_state->view.color_plane[0].offset =3D 0;
> > +	plane_state->view.color_plane[0].x =3D x;
> > +	plane_state->view.color_plane[0].y =3D y;
> >  =

> >  	/*
> >  	 * Put the final coordinates back so that the src
> > @@ -1456,7 +1457,7 @@ static int skl_check_nv12_aux_surface(struct inte=
l_plane_state *plane_state)
> >  =

> >  	if (is_ccs_modifier(fb->modifier)) {
> >  		int ccs_plane =3D main_to_ccs_plane(fb, uv_plane);
> > -		u32 aux_offset =3D plane_state->color_plane[ccs_plane].offset;
> > +		u32 aux_offset =3D plane_state->view.color_plane[ccs_plane].offset;
> >  		u32 alignment =3D intel_surf_alignment(fb, uv_plane);
> >  =

> >  		if (offset > aux_offset)
> > @@ -1477,8 +1478,8 @@ static int skl_check_nv12_aux_surface(struct inte=
l_plane_state *plane_state)
> >  								   offset, offset - alignment);
> >  		}
> >  =

> > -		if (x !=3D plane_state->color_plane[ccs_plane].x ||
> > -		    y !=3D plane_state->color_plane[ccs_plane].y) {
> > +		if (x !=3D plane_state->view.color_plane[ccs_plane].x ||
> > +		    y !=3D plane_state->view.color_plane[ccs_plane].y) {
> >  			drm_dbg_kms(&i915->drm,
> >  				    "Unable to find suitable display surface offset due to CCS\n");
> >  			return -EINVAL;
> > @@ -1487,9 +1488,9 @@ static int skl_check_nv12_aux_surface(struct inte=
l_plane_state *plane_state)
> >  =

> >  	drm_WARN_ON(&i915->drm, x > 8191 || y > 8191);
> >  =

> > -	plane_state->color_plane[uv_plane].offset =3D offset;
> > -	plane_state->color_plane[uv_plane].x =3D x;
> > -	plane_state->color_plane[uv_plane].y =3D y;
> > +	plane_state->view.color_plane[uv_plane].offset =3D 0;
> > +	plane_state->view.color_plane[uv_plane].x =3D x;
> > +	plane_state->view.color_plane[uv_plane].y =3D y;
> >  =

> >  	return 0;
> >  }
> > @@ -1526,13 +1527,9 @@ static int skl_check_ccs_aux_surface(struct inte=
l_plane_state *plane_state)
> >  							    plane_state,
> >  							    ccs_plane);
> >  =

> > -		plane_state->color_plane[ccs_plane].offset =3D offset;
> > -		plane_state->color_plane[ccs_plane].x =3D (x * hsub +
> > -							 src_x % hsub) /
> > -							main_hsub;
> > -		plane_state->color_plane[ccs_plane].y =3D (y * vsub +
> > -							 src_y % vsub) /
> > -							main_vsub;
> > +		plane_state->view.color_plane[ccs_plane].offset =3D offset;
> > +		plane_state->view.color_plane[ccs_plane].x =3D (x * hsub + src_x % h=
sub) / main_hsub;
> > +		plane_state->view.color_plane[ccs_plane].y =3D (y * vsub + src_y % v=
sub) / main_vsub;
> >  	}
> >  =

> >  	return 0;
> > @@ -1567,10 +1564,10 @@ static int skl_check_plane_surface(struct intel=
_plane_state *plane_state)
> >  			return ret;
> >  	}
> >  =

> > -	for (i =3D fb->format->num_planes; i < ARRAY_SIZE(plane_state->color_=
plane); i++) {
> > -		plane_state->color_plane[i].offset =3D 0;
> > -		plane_state->color_plane[i].x =3D 0;
> > -		plane_state->color_plane[i].y =3D 0;
> > +	for (i =3D fb->format->num_planes; i < ARRAY_SIZE(plane_state->view.c=
olor_plane); i++) {
> > +		plane_state->view.color_plane[i].offset =3D 0;
> > +		plane_state->view.color_plane[i].x =3D 0;
> > +		plane_state->view.color_plane[i].y =3D 0;
> >  	}
> >  =

> >  	ret =3D skl_check_main_surface(plane_state);
> > -- =

> > 2.25.1
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
