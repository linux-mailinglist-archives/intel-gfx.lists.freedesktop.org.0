Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DBC189C33
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 13:44:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A48F46E290;
	Wed, 18 Mar 2020 12:44:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C69516E290
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 12:44:28 +0000 (UTC)
IronPort-SDR: jO6z6hQgfmmY5fshHppxtxq8v03yQAl2aGemwi3FyoSXfouBrhDE+qe5seCybW0lYf7EQ0k38n
 3vz4kfMkyclA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 05:44:27 -0700
IronPort-SDR: UaIV8KgUj04YUu/1Fd3uuL+Wg/+QuSK9+Yc5ubSIAtEqkf948OhoTl5mWZc7Lknev9YNJ8CzEG
 eFocNPuHJl1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,567,1574150400"; d="scan'208";a="263369087"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 18 Mar 2020 05:44:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Mar 2020 14:44:25 +0200
Date: Wed, 18 Mar 2020 14:44:25 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200318124425.GW13686@intel.com>
References: <20200219014230.145601-1-jose.souza@intel.com>
 <20200219014230.145601-3-jose.souza@intel.com>
 <20200220172602.GI13686@intel.com>
 <647f33f4e86eb4edecd856b08d505e248afca1b9.camel@intel.com>
 <baca2cdbd379190de3c3545b43a8be1a7310da90.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <baca2cdbd379190de3c3545b43a8be1a7310da90.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 3/3] drm/i915/display/fbc: Make fences a
 nice-to-have for GEN9+
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 12, 2020 at 12:35:56AM +0000, Souza, Jose wrote:
> On Thu, 2020-03-05 at 17:33 -0800, Jos=E9 Roberto de Souza wrote:
> > On Thu, 2020-02-20 at 19:26 +0200, Ville Syrj=E4l=E4 wrote:
> > > On Tue, Feb 18, 2020 at 05:42:30PM -0800, Jos=E9 Roberto de Souza
> > > wrote:
> > > > dGFX have local memory so it do not have aperture and do not
> > > > support
> > > > CPU fences but even for iGFX it have a small number of fences.
> > > > =

> > > > As replacement for fences to track frontbuffer modifications by
> > > > CPU
> > > > we have a software tracking that is already in used by FBC and
> > > > PSR.
> > > > PSR don't support fences so it shows that this tracking is
> > > > reliable.
> > > > =

> > > > So lets make fences a nice-to-have to activate FBC for GEN9+,
> > > > this
> > > > will allow us to enable FBC for dGFXs and iGFXs even when there
> > > > is
> > > > no
> > > > available fence.
> > > > =

> > > > We do not set fences to rotated planes but FBC only have
> > > > restrictions
> > > > against 16bpp, so adding it here.
> > > > =

> > > > Also adding a new check for the tiling format, fences are only
> > > > set
> > > > to X and Y tiled planes but again FBC don't have any restrictions
> > > > against tiling so adding linear as supported as well, other
> > > > formats
> > > > should be added after tested but IGT only supports drawing in
> > > > thse
> > > > 3 formats.
> > > > =

> > > > intel_fbc_hw_tracking_covers_screen() maybe can also have the
> > > > same
> > > > treatment as fences but BSpec is not clear if the size limitation
> > > > is
> > > > for hardware tracking or general use of FBC and I don't have a 5K
> > > > display to test it, so keeping as is for safety.
> > > > =

> > > > v2:
> > > > - Added tiling and pixel format rotation checks
> > > > - Changed the GEN version not requiring fences to 11 from 9, DDX
> > > > needs some changes but it don't have support for GEN11+
> > > > =

> > > > v3:
> > > > - Changed back to GEN9+
> > > > - Moved GEN test to inside of tiling_is_valid()
> > > > =

> > > > Cc: Daniel Vetter <daniel.vetter@intel.com>
> > > > Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> > > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_fbc.c | 45
> > > > ++++++++++++++++++++----
> > > >  drivers/gpu/drm/i915/i915_drv.h          |  1 +
> > > >  2 files changed, 39 insertions(+), 7 deletions(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > > b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > > index 1d76e3646a25..a0d1d661a006 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > > @@ -585,7 +585,7 @@ static bool stride_is_valid(struct
> > > > drm_i915_private *dev_priv,
> > > >  }
> > > >  =

> > > >  static bool pixel_format_is_valid(struct drm_i915_private
> > > > *dev_priv,
> > > > -				  u32 pixel_format)
> > > > +				  u32 pixel_format, unsigned int
> > > > rotation)
> > > >  {
> > > >  	switch (pixel_format) {
> > > >  	case DRM_FORMAT_XRGB8888:
> > > > @@ -599,6 +599,9 @@ static bool pixel_format_is_valid(struct
> > > > drm_i915_private *dev_priv,
> > > >  		/* WaFbcOnly1to1Ratio:ctg */
> > > >  		if (IS_G4X(dev_priv))
> > > >  			return false;
> > > > +		if ((rotation & (DRM_MODE_ROTATE_90 |
> > > > DRM_MODE_ROTATE_270)) &&
> > > > +		    INTEL_GEN(dev_priv) >=3D 9)
> > > > +			return false;
> > > =

> > > Would still would prefer a rotations_is_valid() or some such thing.
> > =

> > Like this?
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> > b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index 5e35c894bdf9..692edd45b769 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -600,15 +600,21 @@ static bool pixel_format_is_valid(struct
> > drm_i915_private *dev_priv,
> >                 /* WaFbcOnly1to1Ratio:ctg */
> >                 if (IS_G4X(dev_priv))
> >                         return false;
> > -               if ((rotation & (DRM_MODE_ROTATE_90 |
> > DRM_MODE_ROTATE_270)) &&
> > -                   INTEL_GEN(dev_priv) >=3D 9)
> > -                       return false;
> >                 return true;
> >         default:
> >                 return false;
> >         }
> >  }
> > =

> > +static bool rotations_is_valid(struct drm_i915_private *dev_priv,
> > +                              u32 pixel_format, unsigned int
> > rotation)
> > +{
> > +       if (INTEL_GEN(dev_priv) >=3D 9 && pixel_format =3D=3D
> > DRM_FORMAT_RGB565 &&
> > +           rotation & (DRM_MODE_ROTATE_90 | DRM_MODE_ROTATE_270))
> > +               return false;
> > +       return true;
> > +}
> > +
> >  /*
> >   * For some reason, the hardware tracking starts looking at whatever
> > we
> >   * programmed as the display plane base address register. It does
> > not
> > look at
> > @@ -810,6 +816,12 @@ static bool intel_fbc_can_activate(struct
> > intel_crtc *crtc)
> >                 return false;
> >         }
> > =

> > +       if (!rotations_is_valid(dev_priv, cache->fb.format->format,
> > +                               cache->plane.rotation)) {
> > +               fbc->no_fbc_reason =3D "plane rotation is invalid";
> > +               return false;
> > +       }
> > +
> >         if (cache->plane.pixel_blend_mode !=3D
> > DRM_MODE_BLEND_PIXEL_NONE
> > &&
> >             cache->fb.format->has_alpha) {
> >                 fbc->no_fbc_reason =3D "per-pixel alpha blending is
> > incompatible with FBC";
> > =

> > =

> > > >  		return true;
> > > >  	default:
> > > >  		return false;
> > > > @@ -639,6 +642,22 @@ static bool
> > > > intel_fbc_hw_tracking_covers_screen(struct intel_crtc *crtc)
> > > >  	return effective_w <=3D max_w && effective_h <=3D max_h;
> > > >  }
> > > >  =

> > > > +static bool tiling_is_valid(struct drm_i915_private *dev_priv,
> > > > +			    uint64_t modifier)
> > > > +{
> > > > +	switch (modifier) {
> > > > +	case DRM_FORMAT_MOD_LINEAR:
> > > > +		if (INTEL_GEN(dev_priv) >=3D 9)
> > > > +			return true;
> > > =

> > > Have we checked that eg. fbcon cursor still blinks correctly
> > > with FBC active and all?
> > =

> > Hum on fbcon FBC is enabled but it never compress, IGT tests with
> > fences complete disables are working fine, screen is updated when
> > tests
> > asks to with FBC enabled and compressing.
> > =

> > I will debug fbcon a little more to understand why it is never
> > compressing. =

> =

> Actually is is compressing but is very rare, I even reduced the blink
> rate to 1hz but it did not helped.

Is FBC actually enabled all the time though? By "compressing" I take
you mean the debugfs thing we have? I don't actually remember what
that looks at. Number of compressed segments? Or something else?
You're polling it fast enough to not simply suffer from poor sampling?

> =

> I have compared the plane registers
> between fbcon and IGT both in tiling linear but the only difference is
> the plane surface address:
> =

> # fbcon
> [drm:skl_update_plane [i915]] skl_program_plane() pipeA plane=3DA
> [drm:skl_update_plane [i915]] 	plane_stride=3D78
> [drm:skl_update_plane [i915]] 	plane_pos=3D0
> [drm:skl_update_plane [i915]] 	plane_size=3D437077f
> [drm:skl_update_plane [i915]] 	plane_aux_dist=3D0
> [drm:skl_update_plane [i915]] 	plane_color_ctl=3D2000
> [drm:skl_update_plane [i915]] 	plane_keyval=3D0
> [drm:skl_update_plane [i915]] 	plane_keymsk=3D0
> [drm:skl_update_plane [i915]] 	plane_keymax=3Dff000000
> [drm:skl_update_plane [i915]] 	plane_offset=3D0
> [drm:skl_update_plane [i915]] 	plane_ctl=3D84000000
> [drm:skl_update_plane [i915]] 	plane_surf=3D40000
> =

> # IGT test with tiling linear framebuffer
> [drm:skl_update_plane [i915]] skl_program_plane() pipeA plane=3DA
> [drm:skl_update_plane [i915]] 	plane_stride=3D78
> [drm:skl_update_plane [i915]] 	plane_pos=3D0
> [drm:skl_update_plane [i915]] 	plane_size=3D437077f
> [drm:skl_update_plane [i915]] 	plane_aux_dist=3D0
> [drm:skl_update_plane [i915]] 	plane_color_ctl=3D2000
> [drm:skl_update_plane [i915]] 	plane_keyval=3D0
> [drm:skl_update_plane [i915]] 	plane_keymsk=3D0
> [drm:skl_update_plane [i915]] 	plane_keymax=3Dff000000
> [drm:skl_update_plane [i915]] 	plane_offset=3D0
> [drm:skl_update_plane [i915]] 	plane_ctl=3D84000000
> [drm:skl_update_plane [i915]] 	plane_surf=3D1040000
> =

> Do you have any tips of what could be causing this?
> =

> > =

> > > > +		return false;
> > > > +	case I915_FORMAT_MOD_X_TILED:
> > > > +	case I915_FORMAT_MOD_Y_TILED:
> > > > +		return true;
> > > > +	default:
> > > > +		return false;
> > > > +	}
> > > > +}
> > > > +
> > > >  static void intel_fbc_update_state_cache(struct intel_crtc
> > > > *crtc,
> > > >  					 const struct intel_crtc_state
> > > > *crtc_state,
> > > >  					 const struct intel_plane_state
> > > > *plane_state)
> > > > @@ -672,6 +691,7 @@ static void
> > > > intel_fbc_update_state_cache(struct
> > > > intel_crtc *crtc,
> > > >  =

> > > >  	cache->fb.format =3D fb->format;
> > > >  	cache->fb.stride =3D fb->pitches[0];
> > > > +	cache->fb.modifier =3D fb->modifier;
> > > >  =

> > > >  	drm_WARN_ON(&dev_priv->drm, plane_state->flags &
> > > > PLANE_HAS_FENCE &&
> > > >  		    !plane_state->vma->fence);
> > > > @@ -720,23 +740,33 @@ static bool intel_fbc_can_activate(struct
> > > > intel_crtc *crtc)
> > > >  		return false;
> > > >  	}
> > > >  =

> > > > -	/* The use of a CPU fence is mandatory in order to detect
> > > > writes
> > > > -	 * by the CPU to the scanout and trigger updates to the FBC.
> > > > +	/* The use of a CPU fence is one of two ways to detect writes
> > > > by the
> > > > +	 * CPU to the scanout and trigger updates to the FBC.
> > > > +	 *
> > > > +	 * The other method is by software tracking(see
> > > > +	 * intel_fbc_invalidate/flush()), it will manually notify FBC
> > > > and nuke
> > > > +	 * the current compressed buffer and recompress it.
> > > >  	 *
> > > >  	 * Note that is possible for a tiled surface to be unmappable
> > > > (and
> > > > -	 * so have no fence associated with it) due to aperture
> > > > constaints
> > > > +	 * so have no fence associated with it) due to aperture
> > > > constraints
> > > >  	 * at the time of pinning.
> > > >  	 *
> > > >  	 * FIXME with 90/270 degree rotation we should use the fence on
> > > >  	 * the normal GTT view (the rotated view doesn't even have a
> > > >  	 * fence). Would need changes to the FBC fence Y offset as
> > > > well.
> > > > -	 * For now this will effecively disable FBC with 90/270 degree
> > > > +	 * For now this will effectively disable FBC with 90/270 degree
> > > >  	 * rotation.
> > > >  	 */
> > > > -	if (cache->fence_id < 0) {
> > > > +	if (INTEL_GEN(dev_priv) < 9 && cache->fence_id < 0) {
> > > >  		fbc->no_fbc_reason =3D "framebuffer not tiled or fenced";
> > > >  		return false;
> > > >  	}
> > > > +
> > > > +	if (!tiling_is_valid(dev_priv, cache->fb.modifier)) {
> > > > +		fbc->no_fbc_reason =3D "tiling unsupported";
> > > > +		return false;
> > > > +	}
> > > > +
> > > >  	if (INTEL_GEN(dev_priv) <=3D 4 && !IS_G4X(dev_priv) &&
> > > >  	    cache->plane.rotation !=3D DRM_MODE_ROTATE_0) {
> > > >  		fbc->no_fbc_reason =3D "rotation unsupported";
> > > > @@ -748,7 +778,8 @@ static bool intel_fbc_can_activate(struct
> > > > intel_crtc *crtc)
> > > >  		return false;
> > > >  	}
> > > >  =

> > > > -	if (!pixel_format_is_valid(dev_priv, cache->fb.format-
> > > > >format)) =

> > > > {
> > > > +	if (!pixel_format_is_valid(dev_priv, cache->fb.format->format,
> > > > +				   cache->plane.rotation)) {
> > > >  		fbc->no_fbc_reason =3D "pixel format is invalid";
> > > >  		return false;
> > > >  	}
> > > > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > > > b/drivers/gpu/drm/i915/i915_drv.h
> > > > index 3330b538d379..bf88663d8217 100644
> > > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > > @@ -413,6 +413,7 @@ struct intel_fbc {
> > > >  		struct {
> > > >  			const struct drm_format_info *format;
> > > >  			unsigned int stride;
> > > > +			u64 modifier;
> > > >  		} fb;
> > > >  		u16 gen9_wa_cfb_stride;
> > > >  		s8 fence_id;
> > > > -- =

> > > > 2.25.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
