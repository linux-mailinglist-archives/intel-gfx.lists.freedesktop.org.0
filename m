Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E002518A1E3
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 18:46:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 485FC6E2AF;
	Wed, 18 Mar 2020 17:46:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 362106E2AF
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 17:46:42 +0000 (UTC)
IronPort-SDR: Suifl1DD6FKVkwPrDxuoF3fqSWHU1Po6Pe5OenJZu5cnCUACxMO9SgVj8YVXAvZ9pUFdWiItgX
 459Rwj70Hk9Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 10:46:41 -0700
IronPort-SDR: qvQrQsf2KHgtYshuqDUxQ9vcXE/zFgNV/fdLg43fk6CI0L9NkGRiVXGRYVFpGMae+yboSBQulN
 1KqEIAVtzq8A==
X-IronPort-AV: E=Sophos;i="5.70,568,1574150400"; d="scan'208";a="263463756"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.202])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 10:46:41 -0700
Date: Wed, 18 Mar 2020 10:47:05 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200318174705.GE180247@intel.com>
References: <20200305174538.16234-1-ville.syrjala@linux.intel.com>
 <20200318174515.31637-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318174515.31637-1-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Fix crtc nv12 etc. plane
 bitmasks for DPMS off
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

On Wed, Mar 18, 2020 at 07:45:15PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> We only consider crtc_state->enable when initially calculating plane
> visibility. Later on we try to override the plane's state to invisible
> if the crtc is in DPMS off state (crtc_state->active=3D=3Dfalse).
> Unfortunately the code doing that only updates the plane_state.visible
> flag and the crtc_state.active_planes bimask, but forgets to update
> some of the other plane bitmasks stored in the crtc_state. Namely
> crtc_state.nv12_planes is left set up based on the original visibility
> check which makes icl_check_nv12_planes() pick a slave plane for the
> flagged plane in the bitmask. Later on we hit the watermark code
> which sees a plane with a slave assigned and it then makes the
> logical assumption that the master plane must itself be visible.
> Since the master's plane_state.visible flag was already cleared
> we get a WARN.
> =

> Fix the problem by clearing all the plane bitmasks for DPMS off.
> This is more or less the wrong approach and instead we should
> calculate all the plane related state purely based crtc_state->enable
> (to guarantee that the subsequent DPMS on can't fail). However in
> the past we definitely had some roadblocks to making that happen.
> Not sure how many are left these days, but let's stick to the current
> approach since it's a much simpler fix to the immediate problem
> (the WARN).
> =

> v2: Keep the visible=3Dfalse, it's important (Rodrigo)
> =

> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 21 +++++++++++++------
>  .../gpu/drm/i915/display/intel_atomic_plane.h |  2 ++
>  drivers/gpu/drm/i915/display/intel_display.c  |  6 ++----
>  3 files changed, 19 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.c
> index 457b258683d3..25dfeb3197aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -264,6 +264,20 @@ void intel_plane_copy_uapi_to_hw_state(struct intel_=
plane_state *plane_state,
>  	plane_state->hw.color_range =3D from_plane_state->uapi.color_range;
>  }
>  =

> +void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
> +			       struct intel_plane_state *plane_state)
> +{
> +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> +
> +	crtc_state->active_planes &=3D ~BIT(plane->id);
> +	crtc_state->nv12_planes &=3D ~BIT(plane->id);
> +	crtc_state->c8_planes &=3D ~BIT(plane->id);
> +	crtc_state->data_rate[plane->id] =3D 0;
> +	crtc_state->min_cdclk[plane->id] =3D 0;
> +
> +	plane_state->uapi.visible =3D false;
> +}
> +
>  int intel_plane_atomic_check_with_state(const struct intel_crtc_state *o=
ld_crtc_state,
>  					struct intel_crtc_state *new_crtc_state,
>  					const struct intel_plane_state *old_plane_state,
> @@ -273,12 +287,7 @@ int intel_plane_atomic_check_with_state(const struct=
 intel_crtc_state *old_crtc_
>  	const struct drm_framebuffer *fb =3D new_plane_state->hw.fb;
>  	int ret;
>  =

> -	new_crtc_state->active_planes &=3D ~BIT(plane->id);
> -	new_crtc_state->nv12_planes &=3D ~BIT(plane->id);
> -	new_crtc_state->c8_planes &=3D ~BIT(plane->id);
> -	new_crtc_state->data_rate[plane->id] =3D 0;
> -	new_crtc_state->min_cdclk[plane->id] =3D 0;
> -	new_plane_state->uapi.visible =3D false;
> +	intel_plane_set_invisible(new_crtc_state, new_plane_state);
>  =

>  	if (!new_plane_state->hw.crtc && !old_plane_state->hw.crtc)
>  		return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.h
> index a6bbf42bae1f..59dd1fbb02ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> @@ -52,5 +52,7 @@ int intel_plane_atomic_calc_changes(const struct intel_=
crtc_state *old_crtc_stat
>  int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
>  			       struct intel_plane *plane,
>  			       bool *need_cdclk_calc);
> +void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
> +			       struct intel_plane_state *plane_state);
>  =

>  #endif /* __INTEL_ATOMIC_PLANE_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 8f23c4d51c33..37bd7ce88ecd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -12377,10 +12377,8 @@ int intel_plane_atomic_calc_changes(const struct=
 intel_crtc_state *old_crtc_stat
>  	 * only combine the results from all planes in the current place?
>  	 */
>  	if (!is_crtc_enabled) {
> -		plane_state->uapi.visible =3D visible =3D false;
> -		crtc_state->active_planes &=3D ~BIT(plane->id);
> -		crtc_state->data_rate[plane->id] =3D 0;
> -		crtc_state->min_cdclk[plane->id] =3D 0;
> +		intel_plane_set_invisible(crtc_state, plane_state);
> +		visible =3D false;
>  	}
>  =

>  	if (!was_visible && !visible)
> -- =

> 2.24.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
