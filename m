Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 138B93A12D5
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 13:36:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 794DD6E0C6;
	Wed,  9 Jun 2021 11:36:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62EF96E0C6
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 11:36:04 +0000 (UTC)
IronPort-SDR: uMiRj3g1DZFbFRjrXs5mWJsrQaZSta0vCEjzAMXiKd02D0e+5TMdKNZsYa5MN3xu05GJOoskTV
 yvWndzGQYr7A==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="203199770"
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="203199770"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 04:36:03 -0700
IronPort-SDR: t1Ak+685P93SJOicpdg0ODL42L2f67hj2PZp6TIspFCZ9sBGGStPBIInjIs7se2iuIRjgVMTvU
 eguoad9aHzNg==
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="482349792"
Received: from akshayka-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.254.35.119])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 04:36:02 -0700
Date: Wed, 9 Jun 2021 07:36:01 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <YMCnofgoTGL0Qwp0@intel.com>
References: <20210609085632.22026-1-ville.syrjala@linux.intel.com>
 <20210609085632.22026-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210609085632.22026-4-ville.syrjala@linux.intel.com>
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

On Wed, Jun 09, 2021 at 11:56:29AM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Sort out the mess with the local variables in
> intel_find_initial_plane_obj(). Get rid of all aliasing pointers
> and use standard naming/types.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 113 ++++++++++---------
>  1 file changed, 62 insertions(+), 51 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 78815a1ac0ca..1615501685c9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1914,20 +1914,50 @@ static void intel_dpt_unpin(struct i915_address_s=
pace *vm)
>  	i915_vma_put(dpt->vma);
>  }
>  =

> +static bool
> +intel_reuse_initial_plane_obj(struct drm_i915_private *i915,
> +			      const struct intel_initial_plane_config *plane_config,
> +			      struct drm_framebuffer **fb,
> +			      struct i915_vma **vma)
> +{
> +	struct intel_crtc *crtc;
> +
> +	for_each_intel_crtc(&i915->drm, crtc) {
> +		struct intel_crtc_state *crtc_state =3D
> +			to_intel_crtc_state(crtc->base.state);
> +		struct intel_plane *plane =3D
> +			to_intel_plane(crtc->base.primary);
> +		struct intel_plane_state *plane_state =3D
> +			to_intel_plane_state(plane->base.state);
> +
> +		if (!crtc_state->uapi.active)
> +			continue;
> +
> +		if (!plane_state->ggtt_vma)
> +			continue;
> +
> +		if (intel_plane_ggtt_offset(plane_state) =3D=3D plane_config->base) {
> +			*fb =3D plane_state->hw.fb;
> +			*vma =3D plane_state->ggtt_vma;
> +			return true;
> +		}
> +	}
> +
> +	return false;
> +}
> +
>  static void
> -intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
> +intel_find_initial_plane_obj(struct intel_crtc *crtc,
>  			     struct intel_initial_plane_config *plane_config)
>  {
> -	struct drm_device *dev =3D intel_crtc->base.dev;
> +	struct drm_device *dev =3D crtc->base.dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> -	struct drm_crtc *c;
> -	struct drm_plane *primary =3D intel_crtc->base.primary;
> -	struct drm_plane_state *plane_state =3D primary->state;
> -	struct intel_plane *intel_plane =3D to_intel_plane(primary);
> -	struct intel_plane_state *intel_state =3D
> -		to_intel_plane_state(plane_state);
>  	struct intel_crtc_state *crtc_state =3D
> -		to_intel_crtc_state(intel_crtc->base.state);
> +		to_intel_crtc_state(crtc->base.state);
> +	struct intel_plane *plane =3D
> +		to_intel_plane(crtc->base.primary);
> +	struct intel_plane_state *plane_state =3D
> +		to_intel_plane_state(plane->base.state);
>  	struct drm_framebuffer *fb;
>  	struct i915_vma *vma;
>  =

> @@ -1939,7 +1969,7 @@ intel_find_initial_plane_obj(struct intel_crtc *int=
el_crtc,
>  	if (!plane_config->fb)
>  		return;
>  =

> -	if (intel_alloc_initial_plane_obj(intel_crtc, plane_config)) {
> +	if (intel_alloc_initial_plane_obj(crtc, plane_config)) {
>  		fb =3D &plane_config->fb->base;
>  		vma =3D plane_config->vma;
>  		goto valid_fb;
> @@ -1949,25 +1979,8 @@ intel_find_initial_plane_obj(struct intel_crtc *in=
tel_crtc,
>  	 * Failed to alloc the obj, check to see if we should share
>  	 * an fb with another CRTC instead
>  	 */
> -	for_each_crtc(dev, c) {
> -		struct intel_plane_state *state;
> -
> -		if (c =3D=3D &intel_crtc->base)
> -			continue;
> -
> -		if (!to_intel_crtc_state(c->state)->uapi.active)
> -			continue;
> -
> -		state =3D to_intel_plane_state(c->primary->state);
> -		if (!state->ggtt_vma)
> -			continue;
> -
> -		if (intel_plane_ggtt_offset(state) =3D=3D plane_config->base) {
> -			fb =3D state->hw.fb;
> -			vma =3D state->ggtt_vma;
> -			goto valid_fb;
> -		}
> -	}
> +	if (intel_reuse_initial_plane_obj(dev_priv, plane_config, &fb, &vma))
> +		goto valid_fb;
>  =

>  	/*
>  	 * We've failed to reconstruct the BIOS FB.  Current display state
> @@ -1976,7 +1989,7 @@ intel_find_initial_plane_obj(struct intel_crtc *int=
el_crtc,
>  	 * simplest solution is to just disable the primary plane now and
>  	 * pretend the BIOS never had it enabled.
>  	 */
> -	intel_plane_disable_noatomic(intel_crtc, intel_plane);
> +	intel_plane_disable_noatomic(crtc, plane);
>  	if (crtc_state->bigjoiner) {
>  		struct intel_crtc *slave =3D
>  			crtc_state->bigjoiner_linked_crtc;
> @@ -1986,40 +1999,38 @@ intel_find_initial_plane_obj(struct intel_crtc *i=
ntel_crtc,
>  	return;
>  =

>  valid_fb:
> -	plane_state->rotation =3D plane_config->rotation;
> -	intel_fb_fill_view(to_intel_framebuffer(fb), plane_state->rotation,
> -			   &intel_state->view);
> +	plane_state->uapi.rotation =3D plane_config->rotation;
> +	intel_fb_fill_view(to_intel_framebuffer(fb),
> +			   plane_state->uapi.rotation, &plane_state->view);
>  =

>  	__i915_vma_pin(vma);
> -	intel_state->ggtt_vma =3D i915_vma_get(vma);
> -	if (intel_plane_uses_fence(intel_state) && i915_vma_pin_fence(vma) =3D=
=3D 0)
> -		if (vma->fence)
> -			intel_state->flags |=3D PLANE_HAS_FENCE;
> +	plane_state->ggtt_vma =3D i915_vma_get(vma);
> +	if (intel_plane_uses_fence(plane_state) &&
> +	    i915_vma_pin_fence(vma) =3D=3D 0 && vma->fence)
> +		plane_state->flags |=3D PLANE_HAS_FENCE;
>  =

> -	plane_state->src_x =3D 0;
> -	plane_state->src_y =3D 0;
> -	plane_state->src_w =3D fb->width << 16;
> -	plane_state->src_h =3D fb->height << 16;
> +	plane_state->uapi.src_x =3D 0;
> +	plane_state->uapi.src_y =3D 0;
> +	plane_state->uapi.src_w =3D fb->width << 16;
> +	plane_state->uapi.src_h =3D fb->height << 16;
>  =

> -	plane_state->crtc_x =3D 0;
> -	plane_state->crtc_y =3D 0;
> -	plane_state->crtc_w =3D fb->width;
> -	plane_state->crtc_h =3D fb->height;
> +	plane_state->uapi.crtc_x =3D 0;
> +	plane_state->uapi.crtc_y =3D 0;
> +	plane_state->uapi.crtc_w =3D fb->width;
> +	plane_state->uapi.crtc_h =3D fb->height;
>  =

>  	if (plane_config->tiling)
>  		dev_priv->preserve_bios_swizzle =3D true;
>  =

> -	plane_state->fb =3D fb;
> +	plane_state->uapi.fb =3D fb;

I believe we should have a separated patch for these plane_state uapi chang=
es

>  	drm_framebuffer_get(fb);
>  =

> -	plane_state->crtc =3D &intel_crtc->base;
> -	intel_plane_copy_uapi_to_hw_state(intel_state, intel_state,
> -					  intel_crtc);
> +	plane_state->uapi.crtc =3D &crtc->base;
> +	intel_plane_copy_uapi_to_hw_state(plane_state, plane_state, crtc);
>  =

>  	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
>  =

> -	atomic_or(to_intel_plane(primary)->frontbuffer_bit,
> -		  &to_intel_frontbuffer(fb)->bits);
> +	atomic_or(plane->frontbuffer_bit, &to_intel_frontbuffer(fb)->bits);
>  }
>  =

>  unsigned int
> -- =

> 2.31.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
