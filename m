Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68345189D12
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 14:33:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFA606E29E;
	Wed, 18 Mar 2020 13:33:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 711176E8EE
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 13:33:51 +0000 (UTC)
IronPort-SDR: lSr4wUE2kBA9oHcPLz1o5/skye6Sq3/0CAlPIMV0N9u05RZuYkuZ/XyhshVY/831ek5JQW8vop
 pMHVMtKoaxYQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 06:30:51 -0700
IronPort-SDR: ybhCaEHM151lr7n3TJYYKp+ljtnWJG3tGbO4fT+QwehkQZQuWFcnOb7QGDQ1Tsy5ssE0JCowuZ
 OGepseuFQrWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,567,1574150400"; d="scan'208";a="233841644"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 18 Mar 2020 06:30:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Mar 2020 15:30:48 +0200
Date: Wed, 18 Mar 2020 15:30:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200318133048.GY13686@intel.com>
References: <20200219014230.145601-1-jose.souza@intel.com>
 <20200219014230.145601-3-jose.souza@intel.com>
 <20200220172602.GI13686@intel.com>
 <647f33f4e86eb4edecd856b08d505e248afca1b9.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <647f33f4e86eb4edecd856b08d505e248afca1b9.camel@intel.com>
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
Cc: "Vetter, Daniel" <daniel.vetter@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Pandiyan,
 Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 06, 2020 at 01:32:12AM +0000, Souza, Jose wrote:
> On Thu, 2020-02-20 at 19:26 +0200, Ville Syrj=E4l=E4 wrote:
> > On Tue, Feb 18, 2020 at 05:42:30PM -0800, Jos=E9 Roberto de Souza
> > wrote:
> > > dGFX have local memory so it do not have aperture and do not
> > > support
> > > CPU fences but even for iGFX it have a small number of fences.
> > > =

> > > As replacement for fences to track frontbuffer modifications by CPU
> > > we have a software tracking that is already in used by FBC and PSR.
> > > PSR don't support fences so it shows that this tracking is
> > > reliable.
> > > =

> > > So lets make fences a nice-to-have to activate FBC for GEN9+, this
> > > will allow us to enable FBC for dGFXs and iGFXs even when there is
> > > no
> > > available fence.
> > > =

> > > We do not set fences to rotated planes but FBC only have
> > > restrictions
> > > against 16bpp, so adding it here.
> > > =

> > > Also adding a new check for the tiling format, fences are only set
> > > to X and Y tiled planes but again FBC don't have any restrictions
> > > against tiling so adding linear as supported as well, other formats
> > > should be added after tested but IGT only supports drawing in thse
> > > 3 formats.
> > > =

> > > intel_fbc_hw_tracking_covers_screen() maybe can also have the same
> > > treatment as fences but BSpec is not clear if the size limitation
> > > is
> > > for hardware tracking or general use of FBC and I don't have a 5K
> > > display to test it, so keeping as is for safety.
> > > =

> > > v2:
> > > - Added tiling and pixel format rotation checks
> > > - Changed the GEN version not requiring fences to 11 from 9, DDX
> > > needs some changes but it don't have support for GEN11+
> > > =

> > > v3:
> > > - Changed back to GEN9+
> > > - Moved GEN test to inside of tiling_is_valid()
> > > =

> > > Cc: Daniel Vetter <daniel.vetter@intel.com>
> > > Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_fbc.c | 45
> > > ++++++++++++++++++++----
> > >  drivers/gpu/drm/i915/i915_drv.h          |  1 +
> > >  2 files changed, 39 insertions(+), 7 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > index 1d76e3646a25..a0d1d661a006 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > @@ -585,7 +585,7 @@ static bool stride_is_valid(struct
> > > drm_i915_private *dev_priv,
> > >  }
> > >  =

> > >  static bool pixel_format_is_valid(struct drm_i915_private
> > > *dev_priv,
> > > -				  u32 pixel_format)
> > > +				  u32 pixel_format, unsigned int
> > > rotation)
> > >  {
> > >  	switch (pixel_format) {
> > >  	case DRM_FORMAT_XRGB8888:
> > > @@ -599,6 +599,9 @@ static bool pixel_format_is_valid(struct
> > > drm_i915_private *dev_priv,
> > >  		/* WaFbcOnly1to1Ratio:ctg */
> > >  		if (IS_G4X(dev_priv))
> > >  			return false;
> > > +		if ((rotation & (DRM_MODE_ROTATE_90 |
> > > DRM_MODE_ROTATE_270)) &&
> > > +		    INTEL_GEN(dev_priv) >=3D 9)
> > > +			return false;
> > =

> > Would still would prefer a rotations_is_valid() or some such thing.
> =

> Like this?
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 5e35c894bdf9..692edd45b769 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -600,15 +600,21 @@ static bool pixel_format_is_valid(struct
> drm_i915_private *dev_priv,
>                 /* WaFbcOnly1to1Ratio:ctg */
>                 if (IS_G4X(dev_priv))
>                         return false;
> -               if ((rotation & (DRM_MODE_ROTATE_90 |
> DRM_MODE_ROTATE_270)) &&
> -                   INTEL_GEN(dev_priv) >=3D 9)
> -                       return false;
>                 return true;
>         default:
>                 return false;
>         }
>  }
> =

> +static bool rotations_is_valid(struct drm_i915_private *dev_priv,
> +                              u32 pixel_format, unsigned int rotation)
> +{
> +       if (INTEL_GEN(dev_priv) >=3D 9 && pixel_format =3D=3D
> DRM_FORMAT_RGB565 &&
> +           rotation & (DRM_MODE_ROTATE_90 | DRM_MODE_ROTATE_270))

drm_rotation_90_or_270()

> +               return false;
> +       return true;
> +}
> +
>  /*
>   * For some reason, the hardware tracking starts looking at whatever
> we
>   * programmed as the display plane base address register. It does not
> look at
> @@ -810,6 +816,12 @@ static bool intel_fbc_can_activate(struct
> intel_crtc *crtc)
>                 return false;
>         }
> =

> +       if (!rotations_is_valid(dev_priv, cache->fb.format->format,
> +                               cache->plane.rotation)) {
> +               fbc->no_fbc_reason =3D "plane rotation is invalid";
> +               return false;
> +       }

s/rotations/rotation/ + I'd move the pre-g4x rotation check into
that function as well. With that

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +
>         if (cache->plane.pixel_blend_mode !=3D DRM_MODE_BLEND_PIXEL_NONE
> &&
>             cache->fb.format->has_alpha) {
>                 fbc->no_fbc_reason =3D "per-pixel alpha blending is
> incompatible with FBC";
> =

> =

> > =

> > >  		return true;
> > >  	default:
> > >  		return false;
> > > @@ -639,6 +642,22 @@ static bool
> > > intel_fbc_hw_tracking_covers_screen(struct intel_crtc *crtc)
> > >  	return effective_w <=3D max_w && effective_h <=3D max_h;
> > >  }
> > >  =

> > > +static bool tiling_is_valid(struct drm_i915_private *dev_priv,
> > > +			    uint64_t modifier)
> > > +{
> > > +	switch (modifier) {
> > > +	case DRM_FORMAT_MOD_LINEAR:
> > > +		if (INTEL_GEN(dev_priv) >=3D 9)
> > > +			return true;
> > =

> > Have we checked that eg. fbcon cursor still blinks correctly
> > with FBC active and all?
> =

> Hum on fbcon FBC is enabled but it never compress, IGT tests with
> fences complete disables are working fine, screen is updated when tests
> asks to with FBC enabled and compressing.
> =

> I will debug fbcon a little more to understand why it is never
> compressing. =

> =

> > =

> > > +		return false;
> > > +	case I915_FORMAT_MOD_X_TILED:
> > > +	case I915_FORMAT_MOD_Y_TILED:
> > > +		return true;
> > > +	default:
> > > +		return false;
> > > +	}
> > > +}
> > > +
> > >  static void intel_fbc_update_state_cache(struct intel_crtc *crtc,
> > >  					 const struct intel_crtc_state
> > > *crtc_state,
> > >  					 const struct intel_plane_state
> > > *plane_state)
> > > @@ -672,6 +691,7 @@ static void intel_fbc_update_state_cache(struct
> > > intel_crtc *crtc,
> > >  =

> > >  	cache->fb.format =3D fb->format;
> > >  	cache->fb.stride =3D fb->pitches[0];
> > > +	cache->fb.modifier =3D fb->modifier;
> > >  =

> > >  	drm_WARN_ON(&dev_priv->drm, plane_state->flags &
> > > PLANE_HAS_FENCE &&
> > >  		    !plane_state->vma->fence);
> > > @@ -720,23 +740,33 @@ static bool intel_fbc_can_activate(struct
> > > intel_crtc *crtc)
> > >  		return false;
> > >  	}
> > >  =

> > > -	/* The use of a CPU fence is mandatory in order to detect
> > > writes
> > > -	 * by the CPU to the scanout and trigger updates to the FBC.
> > > +	/* The use of a CPU fence is one of two ways to detect writes
> > > by the
> > > +	 * CPU to the scanout and trigger updates to the FBC.
> > > +	 *
> > > +	 * The other method is by software tracking(see
> > > +	 * intel_fbc_invalidate/flush()), it will manually notify FBC
> > > and nuke
> > > +	 * the current compressed buffer and recompress it.
> > >  	 *
> > >  	 * Note that is possible for a tiled surface to be unmappable
> > > (and
> > > -	 * so have no fence associated with it) due to aperture
> > > constaints
> > > +	 * so have no fence associated with it) due to aperture
> > > constraints
> > >  	 * at the time of pinning.
> > >  	 *
> > >  	 * FIXME with 90/270 degree rotation we should use the fence on
> > >  	 * the normal GTT view (the rotated view doesn't even have a
> > >  	 * fence). Would need changes to the FBC fence Y offset as
> > > well.
> > > -	 * For now this will effecively disable FBC with 90/270 degree
> > > +	 * For now this will effectively disable FBC with 90/270 degree
> > >  	 * rotation.
> > >  	 */
> > > -	if (cache->fence_id < 0) {
> > > +	if (INTEL_GEN(dev_priv) < 9 && cache->fence_id < 0) {
> > >  		fbc->no_fbc_reason =3D "framebuffer not tiled or fenced";
> > >  		return false;
> > >  	}
> > > +
> > > +	if (!tiling_is_valid(dev_priv, cache->fb.modifier)) {
> > > +		fbc->no_fbc_reason =3D "tiling unsupported";
> > > +		return false;
> > > +	}
> > > +
> > >  	if (INTEL_GEN(dev_priv) <=3D 4 && !IS_G4X(dev_priv) &&
> > >  	    cache->plane.rotation !=3D DRM_MODE_ROTATE_0) {
> > >  		fbc->no_fbc_reason =3D "rotation unsupported";
> > > @@ -748,7 +778,8 @@ static bool intel_fbc_can_activate(struct
> > > intel_crtc *crtc)
> > >  		return false;
> > >  	}
> > >  =

> > > -	if (!pixel_format_is_valid(dev_priv, cache->fb.format->format)) =

> > > {
> > > +	if (!pixel_format_is_valid(dev_priv, cache->fb.format->format,
> > > +				   cache->plane.rotation)) {
> > >  		fbc->no_fbc_reason =3D "pixel format is invalid";
> > >  		return false;
> > >  	}
> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > > b/drivers/gpu/drm/i915/i915_drv.h
> > > index 3330b538d379..bf88663d8217 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -413,6 +413,7 @@ struct intel_fbc {
> > >  		struct {
> > >  			const struct drm_format_info *format;
> > >  			unsigned int stride;
> > > +			u64 modifier;
> > >  		} fb;
> > >  		u16 gen9_wa_cfb_stride;
> > >  		s8 fence_id;
> > > -- =

> > > 2.25.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
