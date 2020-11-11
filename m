Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 337152AFB54
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Nov 2020 23:22:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E16F56E0BA;
	Wed, 11 Nov 2020 22:22:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 813C96E0BA
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Nov 2020 22:22:01 +0000 (UTC)
IronPort-SDR: 1MZTTaMX4GgAqwdv3EIQ7PEFEkkagZK1z9wbuV2HjorzWgbM2BDbW3UbsAlp/ccTy+8DvnIYDl
 EpU77yqeuILw==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="149500063"
X-IronPort-AV: E=Sophos;i="5.77,470,1596524400"; d="scan'208";a="149500063"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 14:22:00 -0800
IronPort-SDR: i3uFxaYKCNQyMAnQDV0qyJr4KmmLKmT9X1HLYFLrFTfpMmBWbYXxjgBZNZ2K1skIqfltwiXp/r
 62cJRmw3YVWA==
X-IronPort-AV: E=Sophos;i="5.77,470,1596524400"; d="scan'208";a="474019021"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 14:21:58 -0800
Date: Thu, 12 Nov 2020 00:22:33 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201111222233.GA31444@intel.com>
References: <20201106173042.7534-1-ville.syrjala@linux.intel.com>
 <20201106173042.7534-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201106173042.7534-3-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Nuke
 intel_atomic_crtc_state_for_each_plane_state() from skl+ wm code
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

On Fri, Nov 06, 2020 at 07:30:38PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> intel_atomic_crtc_state_for_each_plane_state() peeks at the
> plane's current state without holding the plane's mutex, trusting
> that the crtc's mutex will protect it. In practice that does work
> since our planes can't move between pipes, but it sets a bad
> example. intel_atomic_crtc_state_for_each_plane_state() also
> relies on crtc_state.uapi.plane_mask which may be full of lies
> when it comes to the bigjoiner stuff, so soon we can't use it as
> is anyway. So best to just get rid of it entirely. Which we can
> easily do by switching to the g4x/vlv "raw" watermark approach.
> =

> Later on we should even be able to move the "raw" watermark
> computation into the normal .plane_check() code, leaving only
> the merging/clamping of the final watermarks to the later
> stages. But that will require adjusting the ilk+ wm code
> similarly as well.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/intel_pm.c               | 41 +++++++++++--------
>  2 files changed, 27 insertions(+), 16 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index f6f0626649e0..6b249969c394 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -755,6 +755,8 @@ struct intel_crtc_wm_state {
>  		} ilk;
>  =

>  		struct {
> +			/* "raw" watermarks */
> +			struct skl_pipe_wm raw;
>  			/* gen9+ only needs 1-step wm programming */
>  			struct skl_pipe_wm optimal;
>  			struct skl_ddb_entry ddb;
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index e9ac6f1a5d28..85b4bfb02e2e 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -5480,7 +5480,7 @@ static int skl_build_plane_wm_single(struct intel_c=
rtc_state *crtc_state,
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	struct skl_plane_wm *wm =3D &crtc_state->wm.skl.optimal.planes[plane_id=
];
> +	struct skl_plane_wm *wm =3D &crtc_state->wm.skl.raw.planes[plane_id];
>  	struct skl_wm_params wm_params;
>  	int ret;
>  =

> @@ -5503,7 +5503,7 @@ static int skl_build_plane_wm_uv(struct intel_crtc_=
state *crtc_state,
>  				 const struct intel_plane_state *plane_state,
>  				 enum plane_id plane_id)
>  {
> -	struct skl_plane_wm *wm =3D &crtc_state->wm.skl.optimal.planes[plane_id=
];
> +	struct skl_plane_wm *wm =3D &crtc_state->wm.skl.raw.planes[plane_id];
>  	struct skl_wm_params wm_params;
>  	int ret;
>  =

> @@ -5524,10 +5524,13 @@ static int skl_build_plane_wm(struct intel_crtc_s=
tate *crtc_state,
>  			      const struct intel_plane_state *plane_state)
>  {
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	enum plane_id plane_id =3D plane->id;
> +	struct skl_plane_wm *wm =3D &crtc_state->wm.skl.raw.planes[plane_id];
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	int ret;
>  =

> +	memset(wm, 0, sizeof(*wm));
> +
>  	if (!intel_wm_plane_visible(crtc_state, plane_state))
>  		return 0;
>  =

> @@ -5549,10 +5552,14 @@ static int skl_build_plane_wm(struct intel_crtc_s=
tate *crtc_state,
>  static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
>  			      const struct intel_plane_state *plane_state)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> -	enum plane_id plane_id =3D to_intel_plane(plane_state->uapi.plane)->id;
> +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	enum plane_id plane_id =3D plane->id;
> +	struct skl_plane_wm *wm =3D &crtc_state->wm.skl.raw.planes[plane_id];
>  	int ret;
>  =

> +	memset(wm, 0, sizeof(*wm));
> +
>  	/* Watermarks calculated in master */
>  	if (plane_state->planar_slave)
>  		return 0;
> @@ -5591,19 +5598,18 @@ static int skl_build_pipe_wm(struct intel_atomic_=
state *state,
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct skl_pipe_wm *pipe_wm =3D &crtc_state->wm.skl.optimal;
> -	struct intel_plane *plane;
>  	const struct intel_plane_state *plane_state;
> -	int ret;
> +	struct intel_plane *plane;
> +	int ret, i;
>  =

> -	/*
> -	 * We'll only calculate watermarks for planes that are actually
> -	 * enabled, so make sure all other planes are set as disabled.
> -	 */
> -	memset(pipe_wm->planes, 0, sizeof(pipe_wm->planes));
> -
> -	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state,
> -						     crtc_state) {
> +	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
> +		/*
> +		 * FIXME should perhaps check {old,new}_plane_crtc->hw.crtc
> +		 * instead but we don't populate that correctly for NV12 Y
> +		 * planes so for now hack this.
> +		 */
> +		if (plane->pipe !=3D crtc->pipe)
> +			continue;
>  =

>  		if (INTEL_GEN(dev_priv) >=3D 11)
>  			ret =3D icl_build_plane_wm(crtc_state, plane_state);
> @@ -5613,6 +5619,8 @@ static int skl_build_pipe_wm(struct intel_atomic_st=
ate *state,
>  			return ret;
>  	}
>  =

> +	crtc_state->wm.skl.optimal =3D crtc_state->wm.skl.raw;
> +
>  	return 0;
>  }
>  =

> @@ -6273,6 +6281,7 @@ void skl_wm_get_hw_state(struct drm_i915_private *d=
ev_priv)
>  		crtc_state =3D to_intel_crtc_state(crtc->base.state);
>  =

>  		skl_pipe_wm_get_hw_state(crtc, &crtc_state->wm.skl.optimal);
> +		crtc_state->wm.skl.raw =3D crtc_state->wm.skl.optimal;
>  	}
>  =

>  	if (dev_priv->active_pipes) {
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
