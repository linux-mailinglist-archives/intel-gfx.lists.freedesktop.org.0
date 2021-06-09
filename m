Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C28193A1339
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 13:46:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 209716E038;
	Wed,  9 Jun 2021 11:46:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAACF6E133
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 11:46:31 +0000 (UTC)
IronPort-SDR: cpoenatJvB+2C+Or7Y3tMM+fJ9no9LyUwtJt3Hqv5hEwj4Lwad7O7ueHRIrv8ZDvhxAL8MC7z8
 IaWzDz6X3V5g==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="226423507"
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="226423507"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 04:46:29 -0700
IronPort-SDR: Wro16CBwF+i0yjYyDuAeDN1nCmNYWfzys13Gsvc3TBlU09Ea9Owt9XYx7w0udEhmpz8PRMKonh
 LAx6VYDeQBmQ==
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="469846692"
Received: from akshayka-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.254.35.119])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 04:46:29 -0700
Date: Wed, 9 Jun 2021 07:46:28 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <YMCqFKkUQ7ksprUI@intel.com>
References: <20210609085632.22026-1-ville.syrjala@linux.intel.com>
 <20210609085632.22026-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210609085632.22026-6-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Clean up
 intel_fbdev_init_bios() a bit
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

On Wed, Jun 09, 2021 at 11:56:31AM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Sort out the mess with the local variables in
> intel_fbdev_init_bios(). Get rid of all aliasing pointers,
> use standard naming/types, and introduc a few more locals

                                         ^ typo

> in the loops to avoid the hard to read long struct walks.
> =

> While at we also polish the debugs a bit to use the
> canonical [CRTC:%d:%s] style.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c | 94 +++++++++++++---------
>  1 file changed, 56 insertions(+), 38 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm=
/i915/display/intel_fbdev.c
> index 4af40229f5ec..df05d285f0bd 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -335,32 +335,43 @@ static void intel_fbdev_destroy(struct intel_fbdev =
*ifbdev)
>   * fbcon), so we just find the biggest and use that.
>   */
>  static bool intel_fbdev_init_bios(struct drm_device *dev,
> -				 struct intel_fbdev *ifbdev)
> +				  struct intel_fbdev *ifbdev)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(dev);
>  	struct intel_framebuffer *fb =3D NULL;
> -	struct drm_crtc *crtc;
> -	struct intel_crtc *intel_crtc;
> +	struct intel_crtc *crtc;
>  	unsigned int max_size =3D 0;
>  =

>  	/* Find the largest fb */
> -	for_each_crtc(dev, crtc) {
> +	for_each_intel_crtc(dev, crtc) {
> +		struct intel_crtc_state *crtc_state =3D
> +			to_intel_crtc_state(crtc->base.state);
> +		struct intel_plane *plane =3D
> +			to_intel_plane(crtc->base.primary);
> +		struct intel_plane_state *plane_state =3D
> +			to_intel_plane_state(plane->base.state);
>  		struct drm_i915_gem_object *obj =3D
> -			intel_fb_obj(crtc->primary->state->fb);
> -		intel_crtc =3D to_intel_crtc(crtc);
> +			intel_fb_obj(plane_state->uapi.fb);

oh, here we have again that plane_state uapi change that I don't understand
and I'm not seeing any mention in any commit msg..

>  =

> -		if (!crtc->state->active || !obj) {
> +		if (!crtc_state->uapi.active) {
>  			drm_dbg_kms(&i915->drm,
> -				    "pipe %c not active or no fb, skipping\n",
> -				    pipe_name(intel_crtc->pipe));
> +				    "[CRTC:%d:%s] not active, skipping\n",
> +				    crtc->base.base.id, crtc->base.name);
> +			continue;
> +		}
> +
> +		if (!obj) {
> +			drm_dbg_kms(&i915->drm,
> +				    "[PLANE:%d:%s] no fb, skipping\n",
> +				    plane->base.base.id, plane->base.name);
>  			continue;
>  		}
>  =

>  		if (obj->base.size > max_size) {
>  			drm_dbg_kms(&i915->drm,
> -				    "found possible fb from plane %c\n",
> -				    pipe_name(intel_crtc->pipe));
> -			fb =3D to_intel_framebuffer(crtc->primary->state->fb);
> +				    "found possible fb from [PLANE:%d:%s]\n",
> +				    plane->base.base.id, plane->base.name);
> +			fb =3D to_intel_framebuffer(plane_state->uapi.fb);
>  			max_size =3D obj->base.size;
>  		}
>  	}
> @@ -372,60 +383,62 @@ static bool intel_fbdev_init_bios(struct drm_device=
 *dev,
>  	}
>  =

>  	/* Now make sure all the pipes will fit into it */
> -	for_each_crtc(dev, crtc) {
> +	for_each_intel_crtc(dev, crtc) {
> +		struct intel_crtc_state *crtc_state =3D
> +			to_intel_crtc_state(crtc->base.state);
> +		struct intel_plane *plane =3D
> +			to_intel_plane(crtc->base.primary);
>  		unsigned int cur_size;
>  =

> -		intel_crtc =3D to_intel_crtc(crtc);
> -
> -		if (!crtc->state->active) {
> +		if (!crtc_state->uapi.active) {
>  			drm_dbg_kms(&i915->drm,
> -				    "pipe %c not active, skipping\n",
> -				    pipe_name(intel_crtc->pipe));
> +				    "[CRTC:%d:%s] not active, skipping\n",
> +				    crtc->base.base.id, crtc->base.name);
>  			continue;
>  		}
>  =

> -		drm_dbg_kms(&i915->drm, "checking plane %c for BIOS fb\n",
> -			    pipe_name(intel_crtc->pipe));
> +		drm_dbg_kms(&i915->drm, "checking [PLANE:%d:%s] for BIOS fb\n",
> +			    plane->base.base.id, plane->base.name);
>  =

>  		/*
>  		 * See if the plane fb we found above will fit on this
>  		 * pipe.  Note we need to use the selected fb's pitch and bpp
>  		 * rather than the current pipe's, since they differ.
>  		 */
> -		cur_size =3D crtc->state->adjusted_mode.crtc_hdisplay;
> +		cur_size =3D crtc_state->uapi.adjusted_mode.crtc_hdisplay;
>  		cur_size =3D cur_size * fb->base.format->cpp[0];
>  		if (fb->base.pitches[0] < cur_size) {
>  			drm_dbg_kms(&i915->drm,
> -				    "fb not wide enough for plane %c (%d vs %d)\n",
> -				    pipe_name(intel_crtc->pipe),
> +				    "fb not wide enough for [PLANE:%d:%s] (%d vs %d)\n",
> +				    plane->base.base.id, plane->base.name,
>  				    cur_size, fb->base.pitches[0]);
>  			fb =3D NULL;
>  			break;
>  		}
>  =

> -		cur_size =3D crtc->state->adjusted_mode.crtc_vdisplay;
> +		cur_size =3D crtc_state->uapi.adjusted_mode.crtc_vdisplay;
>  		cur_size =3D intel_fb_align_height(&fb->base, 0, cur_size);
>  		cur_size *=3D fb->base.pitches[0];
>  		drm_dbg_kms(&i915->drm,
> -			    "pipe %c area: %dx%d, bpp: %d, size: %d\n",
> -			    pipe_name(intel_crtc->pipe),
> -			    crtc->state->adjusted_mode.crtc_hdisplay,
> -			    crtc->state->adjusted_mode.crtc_vdisplay,
> +			    "[CRTC:%d:%s] area: %dx%d, bpp: %d, size: %d\n",
> +			    crtc->base.base.id, crtc->base.name,
> +			    crtc_state->uapi.adjusted_mode.crtc_hdisplay,
> +			    crtc_state->uapi.adjusted_mode.crtc_vdisplay,
>  			    fb->base.format->cpp[0] * 8,
>  			    cur_size);
>  =

>  		if (cur_size > max_size) {
>  			drm_dbg_kms(&i915->drm,
> -				    "fb not big enough for plane %c (%d vs %d)\n",
> -				    pipe_name(intel_crtc->pipe),
> +				    "fb not big enough for [PLANE:%d:%s] (%d vs %d)\n",
> +				    plane->base.base.id, plane->base.name,
>  				    cur_size, max_size);
>  			fb =3D NULL;
>  			break;
>  		}
>  =

>  		drm_dbg_kms(&i915->drm,
> -			    "fb big enough for plane %c (%d >=3D %d)\n",
> -			    pipe_name(intel_crtc->pipe),
> +			    "fb big enough [PLANE:%d:%s] (%d >=3D %d)\n",
> +			    plane->base.base.id, plane->base.name,
>  			    max_size, cur_size);
>  	}
>  =

> @@ -441,15 +454,20 @@ static bool intel_fbdev_init_bios(struct drm_device=
 *dev,
>  	drm_framebuffer_get(&ifbdev->fb->base);
>  =

>  	/* Final pass to check if any active pipes don't have fbs */
> -	for_each_crtc(dev, crtc) {
> -		intel_crtc =3D to_intel_crtc(crtc);
> +	for_each_intel_crtc(dev, crtc) {
> +		struct intel_crtc_state *crtc_state =3D
> +			to_intel_crtc_state(crtc->base.state);
> +		struct intel_plane *plane =3D
> +			to_intel_plane(crtc->base.primary);
> +		struct intel_plane_state *plane_state =3D
> +			to_intel_plane_state(plane->base.state);
>  =

> -		if (!crtc->state->active)
> +		if (!crtc_state->uapi.active)
>  			continue;
>  =

> -		drm_WARN(dev, !crtc->primary->state->fb,
> -			 "re-used BIOS config but lost an fb on crtc %d\n",
> -			 crtc->base.id);
> +		drm_WARN(dev, !plane_state->uapi.fb,
> +			 "re-used BIOS config but lost an fb on [PLANE:%d:%s]\n",
> +			 plane->base.base.id, plane->base.name);
>  	}
>  =

>  =

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
