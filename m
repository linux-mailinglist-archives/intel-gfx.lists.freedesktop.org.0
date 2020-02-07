Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99ADD155810
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 14:05:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAD9F6EAB4;
	Fri,  7 Feb 2020 13:05:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 905256EAB4
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 13:05:14 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 05:05:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,413,1574150400"; d="scan'208";a="345884781"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 07 Feb 2020 05:05:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Feb 2020 15:05:10 +0200
Date: Fri, 7 Feb 2020 15:05:10 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200207130510.GV13686@intel.com>
References: <20200206020851.337897-1-jose.souza@intel.com>
 <20200206134613.GR13686@intel.com>
 <5984229f2e9bbf21aed1d852defe4a0af5ce0188.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5984229f2e9bbf21aed1d852defe4a0af5ce0188.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915/display/fbc: Make fences a
 nice-to-have for GEN11+
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

On Fri, Feb 07, 2020 at 12:55:41AM +0000, Souza, Jose wrote:
> On Thu, 2020-02-06 at 15:46 +0200, Ville Syrj=E4l=E4 wrote:
> > On Wed, Feb 05, 2020 at 06:08:49PM -0800, Jos=E9 Roberto de Souza
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

> > > So lets make fences a nice-to-have to activate FBC for GEN11+, this
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
> > =

> > It's already borked, so shouldn't actually make any difference.
> > So IMO just make it gen9+.
> =

> Okay changing back to GEN9
> =

> > =

> > > Cc: Daniel Vetter <daniel.vetter@intel.com>
> > > Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_fbc.c | 42
> > > ++++++++++++++++++++----
> > >  drivers/gpu/drm/i915/i915_drv.h          |  1 +
> > >  2 files changed, 36 insertions(+), 7 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > index ddf8d3bb7a7d..3a9e41e93ebf 100644
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
> > =

> > There is a function for that. Also wrong place for the check.
> =

> We have this check:
> =

> if (INTEL_GEN(dev_priv) <=3D 4 && !IS_G4X(dev_priv) &&
>     cache->plane.rotation !=3D DRM_MODE_ROTATE_0) {
> 	fbc->no_fbc_reason =3D "rotation unsupported";
> 	return false;
> }
> =

> I put in the pixel_format_is_valid() because only 16bpp formats do not
> support this rotations.

Hmm. I'd still prefer to put that into the "rotation not supported"
bucket rather than the "pixel format not supported" bucket.

> =

> > =

> > > +		    INTEL_GEN(dev_priv) >=3D 9)
> > =

> > Pointless gen check. Older hw doesn't do 90/270 degree rotation
> > anyway.
> =

> GEN7 and GEN8 don't have this restrictions on BSpec but anyways we do
> not put fence in a surface if it is rotate so platforms older than GEN9
> will not even reach to this check.

Pre-skl display doesn't support 90/270 rotation at all. But since it's
actually just the 16bpp case we care about I guess having the gen check
would serve as hint where to look in the spec for this. So yeah,
keeping the gen check for this seems fine.

> =

> > =

> > I *think* it should actually be possible to use FBC with 90/270
> > degree
> > rotation. The only complication was the host tracking but if we don't
> > think we need it anwyay then rotation also should work. But that is
> > material for a followup.
> > =

> > > +			return false;
> > >  		return true;
> > >  	default:
> > >  		return false;
> > > @@ -639,6 +642,18 @@ static bool
> > > intel_fbc_hw_tracking_covers_screen(struct intel_crtc *crtc)
> > >  	return effective_w <=3D max_w && effective_h <=3D max_h;
> > >  }
> > >  =

> > > +static bool tiling_is_valid(uint64_t modifier)
> > > +{
> > > +	switch (modifier) {
> > > +	case DRM_FORMAT_MOD_LINEAR:
> > > +	case I915_FORMAT_MOD_X_TILED:
> > > +	case I915_FORMAT_MOD_Y_TILED:
> > > +		return true;
> > =

> > There should be a gen check here.
> =

> Okay moving from the caller to here.
> =

> > =

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
> > > @@ -672,6 +687,7 @@ static void intel_fbc_update_state_cache(struct
> > > intel_crtc *crtc,
> > >  =

> > >  	cache->fb.format =3D fb->format;
> > >  	cache->fb.stride =3D fb->pitches[0];
> > > +	cache->fb.modifier =3D fb->modifier;
> > >  =

> > >  	drm_WARN_ON(&dev_priv->drm, plane_state->flags &
> > > PLANE_HAS_FENCE &&
> > >  		    !plane_state->vma->fence);
> > > @@ -720,23 +736,34 @@ static bool intel_fbc_can_activate(struct
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
> > > +	if (INTEL_GEN(dev_priv) < 11 && cache->fence_id < 0) {
> > >  		fbc->no_fbc_reason =3D "framebuffer not tiled or fenced";
> > >  		return false;
> > >  	}
> > > +
> > > +	/* Only check tiling for platforms that fence is not mandatory
> > > */
> > > +	if (INTEL_GEN(dev_priv) >=3D 11 && !tiling_is_valid(cache-
> > > >fb.modifier)) {
> > > +		fbc->no_fbc_reason =3D "tiling unsupported";
> > > +		return false;
> > > +	}
> > > +
> > >  	if (INTEL_GEN(dev_priv) <=3D 4 && !IS_G4X(dev_priv) &&
> > >  	    cache->plane.rotation !=3D DRM_MODE_ROTATE_0) {
> > >  		fbc->no_fbc_reason =3D "rotation unsupported";
> > > @@ -748,7 +775,8 @@ static bool intel_fbc_can_activate(struct
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
> > > index 3452926d7b77..a481a0454e69 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -413,6 +413,7 @@ struct intel_fbc {
> > >  		struct {
> > >  			const struct drm_format_info *format;
> > >  			unsigned int stride;
> > > +			uint64_t modifier;
> > >  		} fb;
> > >  		u16 gen9_wa_cfb_stride;
> > >  		s8 fence_id;
> > > -- =

> > > 2.25.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
