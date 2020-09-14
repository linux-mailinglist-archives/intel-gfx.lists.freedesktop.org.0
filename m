Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD79268D98
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 16:28:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E26166E4B6;
	Mon, 14 Sep 2020 14:28:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F24986E4B6
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 14:28:34 +0000 (UTC)
IronPort-SDR: Mjk1t5dsEEfMnmeWnwEwRYaVxPaaXhAIPV9Hq7NhllKQj618pIsey7RFf7s+3hY3DVrO1POnAR
 560ddjLHnRlQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="156524561"
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="156524561"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 07:28:33 -0700
IronPort-SDR: dJ2nLsYeG0TPSpFYnrEAeK/pFPSVYOwrznzEkBSxFcZAR0NcEc62VbJP07sy3EB9SRHS4ZQbpF
 EIrc6rIfM1sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="343135543"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 14 Sep 2020 07:28:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Sep 2020 17:28:29 +0300
Date: Mon, 14 Sep 2020 17:28:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200914142829.GO6112@intel.com>
References: <20200901010924.235808-1-jose.souza@intel.com>
 <20200901010924.235808-3-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200901010924.235808-3-jose.souza@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/display: Program PSR2
 selective fetch registers
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

On Mon, Aug 31, 2020 at 06:09:23PM -0700, Jos=E9 Roberto de Souza wrote:
> Another step towards PSR2 selective fetch, here programming plane
> selective fetch registers and MAN_TRK_CTL enabling selective fetch but
> for now it is fetching the whole area of the planes.
> The damaged area calculation will come as next and final step.
> =

> BSpec: 55229
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  10 +-
>  .../drm/i915/display/intel_display_types.h    |   2 +
>  drivers/gpu/drm/i915/display/intel_psr.c      | 129 +++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_psr.h      |  10 +-
>  drivers/gpu/drm/i915/display/intel_sprite.c   |   3 +
>  5 files changed, 145 insertions(+), 9 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index c8b1dd1a9e46..865486e89915 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -11799,6 +11799,9 @@ static void i9xx_update_cursor(struct intel_plane=
 *plane,
>  	if (INTEL_GEN(dev_priv) >=3D 9)
>  		skl_write_cursor_wm(plane, crtc_state);
>  =

> +	if (!needs_modeset(crtc_state))
> +		intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, 0);
> +
>  	if (plane->cursor.base !=3D base ||
>  	    plane->cursor.size !=3D fbc_ctl ||
>  	    plane->cursor.cntl !=3D cntl) {
> @@ -12810,8 +12813,11 @@ static int intel_crtc_atomic_check(struct intel_=
atomic_state *state,
>  =

>  	}
>  =

> -	if (!mode_changed)
> -		intel_psr2_sel_fetch_update(state, crtc);
> +	if (!mode_changed) {
> +		ret =3D intel_psr2_sel_fetch_update(state, crtc);
> +		if (ret)
> +			return ret;
> +	}
>  =

>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 9349b15afff6..2138bb0f1587 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -586,6 +586,8 @@ struct intel_plane_state {
>  	u32 planar_slave;
>  =

>  	struct drm_intel_sprite_colorkey ckey;
> +
> +	struct drm_rect psr2_sel_fetch_area;
>  };
>  =

>  struct intel_initial_plane_config {
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 6698d0209879..b60ea133a527 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1173,6 +1173,46 @@ static void psr_force_hw_tracking_exit(struct drm_=
i915_private *dev_priv)
>  		intel_psr_exit(dev_priv);
>  }
>  =

> +void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
> +					const struct intel_crtc_state *crtc_state,
> +					const struct intel_plane_state *plane_state,
> +					int color_plane)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	const struct drm_rect *clip;
> +	enum pipe pipe =3D plane->pipe;
> +	u32 val;
> +
> +	if (!plane_state || !dev_priv->psr.psr2_sel_fetch_enabled)
> +		return;
> +
> +	/*
> +	 * skl_plane_ctl_crtc()/i9xx_cursor_ctl_crtc() return 0 for gen11+, so
> +	 * plane_state->ctl is the right value
> +	 */
> +	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), plane=
_state->ctl);
> +	if (!plane_state->ctl || plane->id =3D=3D PLANE_CURSOR)
> +		return;
> +
> +	clip =3D &plane_state->psr2_sel_fetch_area;
> +
> +	val =3D (clip->y1 + plane_state->uapi.crtc_y) << 16;

crtc_x/y are the raw values usrspace gave us. That is definitely not
what we should be looking at.

As the first step I think these functions should just program the
registers with *exactly* the same values as we program into the
normal plane register. That gets us to the point where we're
actually programming something into the register without having to
complicate things with calculating the selective fetch area.

> +	val |=3D plane_state->uapi.crtc_x;
> +	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_POS(pipe, plane->id),
> +			  val);
> +
> +	val =3D (clip->y1 + plane_state->color_plane[color_plane].y) << 16;
> +	val |=3D plane_state->color_plane[color_plane].x;
> +	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_OFFSET(pipe, plane->id),
> +			  val);
> +
> +	/* Sizes are 0 based */
> +	val =3D (drm_rect_height(clip) - 1) << 16;
> +	val |=3D (drm_rect_width(&plane_state->uapi.src) >> 16) - 1;
> +	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_SIZE(pipe, plane->id),
> +			  val);
> +}
> +
>  void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state =
*crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> @@ -1187,17 +1227,96 @@ void intel_psr2_program_trans_man_trk_ctl(const s=
truct intel_crtc_state *crtc_st
>  		       crtc_state->psr2_man_track_ctl);
>  }
>  =

> -void intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
> -				 struct intel_crtc *crtc)
> +static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
> +				  struct drm_rect *clip, bool full_update)
> +{
> +	u32 val =3D PSR2_MAN_TRK_CTL_ENABLE;
> +
> +	if (full_update) {
> +		val |=3D PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
> +		goto exit;
> +	}
> +
> +	drm_WARN_ON_ONCE(crtc_state->uapi.crtc->dev, clip->y1 =3D=3D -1);
> +
> +	val |=3D PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE;
> +	val |=3D PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(clip->y1 / 4 + 1);
> +	val |=3D PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(DIV_ROUND_UP(clip->y2, 4) =
+ 1);
> +exit:
> +	crtc_state->psr2_man_track_ctl =3D val;
> +}
> +
> +static void clip_area_update(struct drm_rect *overlap_damage_area,
> +			     struct drm_rect *damage_area)
> +{
> +	if (overlap_damage_area->y1 =3D=3D -1) {
> +		overlap_damage_area->y1 =3D damage_area->y1;
> +		overlap_damage_area->y2 =3D damage_area->y2;
> +		return;
> +	}
> +
> +	if (damage_area->y1 < overlap_damage_area->y1)
> +		overlap_damage_area->y1 =3D damage_area->y1;
> +
> +	if (damage_area->y2 > overlap_damage_area->y2)
> +		overlap_damage_area->y2 =3D damage_area->y2;
> +}
> +
> +int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
> +				struct intel_crtc *crtc)
>  {
>  	struct intel_crtc_state *crtc_state =3D intel_atomic_get_new_crtc_state=
(state, crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct intel_plane_state *new_plane_state, *old_plane_state;
> +	struct drm_rect pipe_clip =3D { .y1 =3D -1 };
> +	struct intel_plane *plane;
> +	bool full_update =3D false;
> +	int i, ret;
>  =

>  	if (!dev_priv->psr.psr2_sel_fetch_enabled)
> -		return;
> +		return 0;
> +
> +	ret =3D drm_atomic_add_affected_planes(&state->base, &crtc->base);
> +	if (ret)
> +		return ret;
> +
> +	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
> +					     new_plane_state, i) {
> +		struct drm_rect *plane_sel_fetch_area, temp;
>  =

> -	crtc_state->psr2_man_track_ctl =3D PSR2_MAN_TRK_CTL_ENABLE |
> -					 PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
> +		if (new_plane_state->uapi.crtc !=3D crtc_state->uapi.crtc)
> +			continue;
> +
> +		/*
> +		 * TODO: Not clear how to handle planes with negative position,
> +		 * also planes are not updated if they have a negative X
> +		 * position so for now doing a full update in this cases
> +		 */
> +		if (new_plane_state->uapi.crtc_y < 0 ||
> +		    new_plane_state->uapi.crtc_x < 0) {
> +			full_update =3D true;
> +			break;
> +		}
> +
> +		if (!new_plane_state->uapi.visible)
> +			continue;
> +
> +		/*
> +		 * For now doing a selective fetch in the whole plane area,
> +		 * optimizations will come in the future.
> +		 */
> +		plane_sel_fetch_area =3D &new_plane_state->psr2_sel_fetch_area;
> +		plane_sel_fetch_area->y1 =3D new_plane_state->uapi.src.y1 >> 16;
> +		plane_sel_fetch_area->y2 =3D new_plane_state->uapi.src.y2 >> 16;
> +
> +		temp =3D *plane_sel_fetch_area;
> +		temp.y1 +=3D new_plane_state->uapi.crtc_y;
> +		temp.y2 +=3D new_plane_state->uapi.crtc_y;
> +		clip_area_update(&pipe_clip, &temp);
> +	}
> +
> +	psr2_man_trk_ctl_calc(crtc_state, &pipe_clip, full_update);
> +	return 0;
>  }
>  =

>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i=
915/display/intel_psr.h
> index 6a83c8e682e6..3eca9dcec3c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -15,6 +15,8 @@ struct intel_crtc_state;
>  struct intel_dp;
>  struct intel_crtc;
>  struct intel_atomic_state;
> +struct intel_plane_state;
> +struct intel_plane;
>  =

>  #define CAN_PSR(dev_priv) (HAS_PSR(dev_priv) && dev_priv->psr.sink_suppo=
rt)
>  void intel_psr_init_dpcd(struct intel_dp *intel_dp);
> @@ -45,8 +47,12 @@ void intel_psr_atomic_check(struct drm_connector *conn=
ector,
>  			    struct drm_connector_state *old_state,
>  			    struct drm_connector_state *new_state);
>  void intel_psr_set_force_mode_changed(struct intel_dp *intel_dp);
> -void intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
> -				 struct intel_crtc *crtc);
> +int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
> +				struct intel_crtc *crtc);
>  void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state =
*crtc_state);
> +void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
> +					const struct intel_crtc_state *crtc_state,
> +					const struct intel_plane_state *plane_state,
> +					int color_plane);
>  =

>  #endif /* __INTEL_PSR_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 1797a06cfd60..24ee9b08ec4a 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -690,6 +690,9 @@ skl_program_plane(struct intel_plane *plane,
>  		intel_de_write_fw(dev_priv, PLANE_AUX_OFFSET(pipe, plane_id),
>  				  (plane_state->color_plane[1].y << 16) | plane_state->color_plane[1=
].x);
>  =

> +	if (!drm_atomic_crtc_needs_modeset(&crtc_state->uapi))
> +		intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, col=
or_plane);
> +
>  	/*
>  	 * The control register self-arms if the plane was previously
>  	 * disabled. Try to make the plane enable atomic by writing
> -- =

> 2.28.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
