Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E6B3A1402
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 14:15:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DE5A89CB8;
	Wed,  9 Jun 2021 12:15:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCEAC89CB8
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 12:15:57 +0000 (UTC)
IronPort-SDR: 8GKw6eeqpnLq/4GZBHu8v8kLxMiSd8Ca2n5/XsRw62Ha9NNwOyT130CXPSQqA86Uno5q4MKADK
 H6+AIX7XEHOQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="192168168"
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="192168168"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 05:15:57 -0700
IronPort-SDR: lssOi19Hzpc32pp5PGStD4gItj/iwFMtcVhXMoTOE7PGILoHqwUEpXqV57o4sOcj6UyYUsTPsm
 m9zZa99V06ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="552656763"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 09 Jun 2021 05:15:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Jun 2021 15:15:54 +0300
Date: Wed, 9 Jun 2021 15:15:54 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <YMCw+hnkHVYyWqfM@intel.com>
References: <20210609085632.22026-1-ville.syrjala@linux.intel.com>
 <20210609085632.22026-4-ville.syrjala@linux.intel.com>
 <YMCnofgoTGL0Qwp0@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YMCnofgoTGL0Qwp0@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915: Clean up
 intel_find_initial_plane_obj() a bit
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 09, 2021 at 07:36:01AM -0400, Rodrigo Vivi wrote:
> On Wed, Jun 09, 2021 at 11:56:29AM +0300, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Sort out the mess with the local variables in
> > intel_find_initial_plane_obj(). Get rid of all aliasing pointers
> > and use standard naming/types.
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 113 ++++++++++---------
> >  1 file changed, 62 insertions(+), 51 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 78815a1ac0ca..1615501685c9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1914,20 +1914,50 @@ static void intel_dpt_unpin(struct i915_address=
_space *vm)
> >  	i915_vma_put(dpt->vma);
> >  }
> >  =

> > +static bool
> > +intel_reuse_initial_plane_obj(struct drm_i915_private *i915,
> > +			      const struct intel_initial_plane_config *plane_config,
> > +			      struct drm_framebuffer **fb,
> > +			      struct i915_vma **vma)
> > +{
> > +	struct intel_crtc *crtc;
> > +
> > +	for_each_intel_crtc(&i915->drm, crtc) {
> > +		struct intel_crtc_state *crtc_state =3D
> > +			to_intel_crtc_state(crtc->base.state);
> > +		struct intel_plane *plane =3D
> > +			to_intel_plane(crtc->base.primary);
> > +		struct intel_plane_state *plane_state =3D
> > +			to_intel_plane_state(plane->base.state);
> > +
> > +		if (!crtc_state->uapi.active)
> > +			continue;
> > +
> > +		if (!plane_state->ggtt_vma)
> > +			continue;
> > +
> > +		if (intel_plane_ggtt_offset(plane_state) =3D=3D plane_config->base) {
> > +			*fb =3D plane_state->hw.fb;
> > +			*vma =3D plane_state->ggtt_vma;
> > +			return true;
> > +		}
> > +	}
> > +
> > +	return false;
> > +}
> > +
> >  static void
> > -intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
> > +intel_find_initial_plane_obj(struct intel_crtc *crtc,
> >  			     struct intel_initial_plane_config *plane_config)
> >  {
> > -	struct drm_device *dev =3D intel_crtc->base.dev;
> > +	struct drm_device *dev =3D crtc->base.dev;
> >  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> > -	struct drm_crtc *c;
> > -	struct drm_plane *primary =3D intel_crtc->base.primary;
> > -	struct drm_plane_state *plane_state =3D primary->state;
> > -	struct intel_plane *intel_plane =3D to_intel_plane(primary);
> > -	struct intel_plane_state *intel_state =3D
> > -		to_intel_plane_state(plane_state);
> >  	struct intel_crtc_state *crtc_state =3D
> > -		to_intel_crtc_state(intel_crtc->base.state);
> > +		to_intel_crtc_state(crtc->base.state);
> > +	struct intel_plane *plane =3D
> > +		to_intel_plane(crtc->base.primary);
> > +	struct intel_plane_state *plane_state =3D
> > +		to_intel_plane_state(plane->base.state);
> >  	struct drm_framebuffer *fb;
> >  	struct i915_vma *vma;
> >  =

> > @@ -1939,7 +1969,7 @@ intel_find_initial_plane_obj(struct intel_crtc *i=
ntel_crtc,
> >  	if (!plane_config->fb)
> >  		return;
> >  =

> > -	if (intel_alloc_initial_plane_obj(intel_crtc, plane_config)) {
> > +	if (intel_alloc_initial_plane_obj(crtc, plane_config)) {
> >  		fb =3D &plane_config->fb->base;
> >  		vma =3D plane_config->vma;
> >  		goto valid_fb;
> > @@ -1949,25 +1979,8 @@ intel_find_initial_plane_obj(struct intel_crtc *=
intel_crtc,
> >  	 * Failed to alloc the obj, check to see if we should share
> >  	 * an fb with another CRTC instead
> >  	 */
> > -	for_each_crtc(dev, c) {
> > -		struct intel_plane_state *state;
> > -
> > -		if (c =3D=3D &intel_crtc->base)
> > -			continue;
> > -
> > -		if (!to_intel_crtc_state(c->state)->uapi.active)
> > -			continue;
> > -
> > -		state =3D to_intel_plane_state(c->primary->state);
> > -		if (!state->ggtt_vma)
> > -			continue;
> > -
> > -		if (intel_plane_ggtt_offset(state) =3D=3D plane_config->base) {
> > -			fb =3D state->hw.fb;
> > -			vma =3D state->ggtt_vma;
> > -			goto valid_fb;
> > -		}
> > -	}
> > +	if (intel_reuse_initial_plane_obj(dev_priv, plane_config, &fb, &vma))
> > +		goto valid_fb;
> >  =

> >  	/*
> >  	 * We've failed to reconstruct the BIOS FB.  Current display state
> > @@ -1976,7 +1989,7 @@ intel_find_initial_plane_obj(struct intel_crtc *i=
ntel_crtc,
> >  	 * simplest solution is to just disable the primary plane now and
> >  	 * pretend the BIOS never had it enabled.
> >  	 */
> > -	intel_plane_disable_noatomic(intel_crtc, intel_plane);
> > +	intel_plane_disable_noatomic(crtc, plane);
> >  	if (crtc_state->bigjoiner) {
> >  		struct intel_crtc *slave =3D
> >  			crtc_state->bigjoiner_linked_crtc;
> > @@ -1986,40 +1999,38 @@ intel_find_initial_plane_obj(struct intel_crtc =
*intel_crtc,
> >  	return;
> >  =

> >  valid_fb:
> > -	plane_state->rotation =3D plane_config->rotation;
> > -	intel_fb_fill_view(to_intel_framebuffer(fb), plane_state->rotation,
> > -			   &intel_state->view);
> > +	plane_state->uapi.rotation =3D plane_config->rotation;
> > +	intel_fb_fill_view(to_intel_framebuffer(fb),
> > +			   plane_state->uapi.rotation, &plane_state->view);
> >  =

> >  	__i915_vma_pin(vma);
> > -	intel_state->ggtt_vma =3D i915_vma_get(vma);
> > -	if (intel_plane_uses_fence(intel_state) && i915_vma_pin_fence(vma) =
=3D=3D 0)
> > -		if (vma->fence)
> > -			intel_state->flags |=3D PLANE_HAS_FENCE;
> > +	plane_state->ggtt_vma =3D i915_vma_get(vma);
> > +	if (intel_plane_uses_fence(plane_state) &&
> > +	    i915_vma_pin_fence(vma) =3D=3D 0 && vma->fence)
> > +		plane_state->flags |=3D PLANE_HAS_FENCE;
> >  =

> > -	plane_state->src_x =3D 0;
> > -	plane_state->src_y =3D 0;
> > -	plane_state->src_w =3D fb->width << 16;
> > -	plane_state->src_h =3D fb->height << 16;
> > +	plane_state->uapi.src_x =3D 0;
> > +	plane_state->uapi.src_y =3D 0;
> > +	plane_state->uapi.src_w =3D fb->width << 16;
> > +	plane_state->uapi.src_h =3D fb->height << 16;
> >  =

> > -	plane_state->crtc_x =3D 0;
> > -	plane_state->crtc_y =3D 0;
> > -	plane_state->crtc_w =3D fb->width;
> > -	plane_state->crtc_h =3D fb->height;
> > +	plane_state->uapi.crtc_x =3D 0;
> > +	plane_state->uapi.crtc_y =3D 0;
> > +	plane_state->uapi.crtc_w =3D fb->width;
> > +	plane_state->uapi.crtc_h =3D fb->height;
> >  =

> >  	if (plane_config->tiling)
> >  		dev_priv->preserve_bios_swizzle =3D true;
> >  =

> > -	plane_state->fb =3D fb;
> > +	plane_state->uapi.fb =3D fb;
> =

> I believe we should have a separated patch for these plane_state uapi cha=
nges

There is no change here. &to_intel_plane_state(s)->uapi =3D=3D s

> =

> >  	drm_framebuffer_get(fb);
> >  =

> > -	plane_state->crtc =3D &intel_crtc->base;
> > -	intel_plane_copy_uapi_to_hw_state(intel_state, intel_state,
> > -					  intel_crtc);
> > +	plane_state->uapi.crtc =3D &crtc->base;
> > +	intel_plane_copy_uapi_to_hw_state(plane_state, plane_state, crtc);
> >  =

> >  	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
> >  =

> > -	atomic_or(to_intel_plane(primary)->frontbuffer_bit,
> > -		  &to_intel_frontbuffer(fb)->bits);
> > +	atomic_or(plane->frontbuffer_bit, &to_intel_frontbuffer(fb)->bits);
> >  }
> >  =

> >  unsigned int
> > -- =

> > 2.31.1
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
