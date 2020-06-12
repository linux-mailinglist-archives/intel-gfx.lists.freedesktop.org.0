Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8A01F7B9F
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 18:30:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AA056EA05;
	Fri, 12 Jun 2020 16:30:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85A5E6EA05
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 16:30:36 +0000 (UTC)
IronPort-SDR: 175KQxGXQXyW+aUpZOOFIcmhSQ0TqPlFS2aApwikpl04cTze/BGA3zWj6USET9dKj/mVpRypNI
 H7CvWxHAxNBg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2020 09:30:34 -0700
IronPort-SDR: wonfTxpqmsfakT4fP4rJjtFtdKGyKQaSDR5/WMv+0kRbZgUwXl0y7dreI1ZzczDsESvoMoGmHu
 Nfw5XUdTjQrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,504,1583222400"; d="scan'208";a="307345280"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 12 Jun 2020 09:30:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Jun 2020 19:30:29 +0300
Date: Fri, 12 Jun 2020 19:30:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200612163029.GK6112@intel.com>
References: <20200526221447.64110-1-jose.souza@intel.com>
 <20200526221447.64110-5-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526221447.64110-5-jose.souza@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Implement PSR2 selective fetch
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 26, 2020 at 03:14:46PM -0700, Jos=E9 Roberto de Souza wrote:
> All GEN12 platforms supports PSR2 selective fetch but not all GEN12
> platforms supports PSR2 hardware tracking(aka RKL).
> =

> This feature consists in software program registers with the damaged
> area of each plane this way hardware will only fetch from memory those
> areas and sent the PSR2 selective update blocks to panel, saving even
> more power but to it actually happen userspace needs to send the
> damaged areas otherwise it will still fetch the whole plane as
> fallback.
> As today Gnome3 do not send damaged areas and the only compositor that
> I'm aware that sets the damaged areas is Weston.
> https://gitlab.freedesktop.org/wayland/weston/-/merge_requests/17
> =

> So here implementing page flip part, it is still completely missing
> frontbuffer modifications, that is why the enable_psr2_sel_fetch
> parameter was added.
> =

> The plan is to switch all GEN12 platforms to selective fetch when
> ready, it will also depend in add some tests sending damaged areas.
> I have a hacked version of kms_psr2_su with 3 planes that I can
> cleanup and send in a few days(99% of PSR2 selective fetch changes was
> done during my free time while bored during quarantine rainy days).
> =

> BSpec: 55229
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |   5 +
>  .../drm/i915/display/intel_display_debugfs.c  |   3 +
>  .../drm/i915/display/intel_display_types.h    |  10 +
>  drivers/gpu/drm/i915/display/intel_psr.c      | 329 +++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_psr.h      |  10 +
>  drivers/gpu/drm/i915/display/intel_sprite.c   |   2 +
>  drivers/gpu/drm/i915/i915_drv.h               |   2 +
>  drivers/gpu/drm/i915/i915_params.c            |   5 +
>  drivers/gpu/drm/i915/i915_params.h            |   1 +
>  9 files changed, 352 insertions(+), 15 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index b69878334040..984809208c29 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -11729,6 +11729,8 @@ static void i9xx_update_cursor(struct intel_plane=
 *plane,
>  	if (INTEL_GEN(dev_priv) >=3D 9)
>  		skl_write_cursor_wm(plane, crtc_state);
>  =

> +	intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state);
> +
>  	if (plane->cursor.base !=3D base ||
>  	    plane->cursor.size !=3D fbc_ctl ||
>  	    plane->cursor.cntl !=3D cntl) {
> @@ -15115,6 +15117,8 @@ static void commit_pipe_config(struct intel_atomi=
c_state *state,
>  =

>  		if (new_crtc_state->update_pipe)
>  			intel_pipe_fastset(old_crtc_state, new_crtc_state);
> +
> +		intel_psr2_program_trans_man_trk_ctl(new_crtc_state);
>  	}
>  =

>  	if (dev_priv->display.atomic_update_watermarks)
> @@ -15156,6 +15160,7 @@ static void intel_update_crtc(struct intel_atomic=
_state *state,
>  			intel_color_load_luts(new_crtc_state);
>  =

>  		intel_pre_plane_update(state, crtc);
> +		intel_psr2_sel_fetch_update(state, crtc);
>  =

>  		if (new_crtc_state->update_pipe)
>  			intel_encoders_update_pipe(state, crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 70525623bcdf..0f600974462b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -417,6 +417,9 @@ static int i915_edp_psr_status(struct seq_file *m, vo=
id *data)
>  			su_blocks =3D su_blocks >> PSR2_SU_STATUS_SHIFT(frame);
>  			seq_printf(m, "%d\t%d\n", frame, su_blocks);
>  		}
> +
> +		seq_printf(m, "PSR2 selective fetch: %s\n",
> +			   enableddisabled(psr->psr2_sel_fetch_enabled));
>  	}
>  =

>  unlock:
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 30b2767578dc..b77a512e5362 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -586,6 +586,13 @@ struct intel_plane_state {
>  	u32 planar_slave;
>  =

>  	struct drm_intel_sprite_colorkey ckey;
> +
> +	struct {
> +		u32 ctl;
> +		u32 pos;
> +		u32 offset;
> +		u32 size;
> +	} psr2_sel_fetch;

Do we really need all that here? We don't store them for the normal
plane updates either.

>  };
>  =

>  struct intel_initial_plane_config {
> @@ -931,6 +938,7 @@ struct intel_crtc_state {
>  =

>  	bool has_psr;
>  	bool has_psr2;
> +	bool enable_psr2_sel_fetch;
>  	u32 dc3co_exitline;
>  =

>  	/*
> @@ -1070,6 +1078,8 @@ struct intel_crtc_state {
>  =

>  	/* For DSB related info */
>  	struct intel_dsb *dsb;
> +
> +	u32 psr2_sw_man_track_ctl;
>  };
>  =

>  enum intel_pipe_crc_source {
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 0c86e9e341a2..bc2a2e64fe2a 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -518,6 +518,14 @@ static void hsw_activate_psr2(struct intel_dp *intel=
_dp)
>  	else
>  		val |=3D EDP_PSR2_TP2_TIME_2500us;
>  =

> +	if (dev_priv->psr.psr2_sel_fetch_enabled)
> +		intel_de_write(dev_priv,
> +			       PSR2_MAN_TRK_CTL(dev_priv->psr.transcoder),
> +			       PSR2_MAN_TRK_CTL_ENABLE);
> +	else if (HAS_PSR2_SEL_FETCH(dev_priv))
> +		intel_de_write(dev_priv,
> +			       PSR2_MAN_TRK_CTL(dev_priv->psr.transcoder), 0);
> +
>  	/*
>  	 * PSR2 HW is incorrectly using EDP_PSR_TP1_TP3_SEL and BSpec is
>  	 * recommending keep this bit unset while PSR2 is enabled.
> @@ -628,6 +636,38 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *i=
ntel_dp,
>  	crtc_state->dc3co_exitline =3D crtc_vdisplay - exit_scanlines;
>  }
>  =

> +static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
> +					      struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_atomic_state *state =3D to_intel_atomic_state(crtc_state->=
uapi.state);
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	struct intel_plane_state *plane_state;
> +	struct intel_plane *plane;
> +	int i;
> +
> +	if (!i915_modparams.enable_psr2_sel_fetch) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "PSR2 sel fetch not enabled, disabled by parameter\n");
> +		return false;
> +	}
> +
> +	if (crtc_state->uapi.async_flip) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "PSR2 sel fetch not enabled, async flip enabled\n");
> +		return false;
> +	}

Not supported anyway.

> +
> +	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
> +		if (plane_state->uapi.rotation !=3D DRM_MODE_ROTATE_0) {
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "PSR2 sel fetch not enabled, plane rotated\n");
> +			return false;
> +		}
> +	}
> +
> +	return crtc_state->enable_psr2_sel_fetch =3D true;
> +}
> +
>  static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>  				    struct intel_crtc_state *crtc_state)
>  {
> @@ -697,22 +737,17 @@ static bool intel_psr2_config_valid(struct intel_dp=
 *intel_dp,
>  		return false;
>  	}
>  =

> -	/*
> -	 * Some platforms lack PSR2 HW tracking and instead require manual
> -	 * tracking by software.  In this case, the driver is required to track
> -	 * the areas that need updates and program hardware to send selective
> -	 * updates.
> -	 *
> -	 * So until the software tracking is implemented, PSR2 needs to be
> -	 * disabled for platforms without PSR2 HW tracking.
> -	 */
> -	if (!HAS_PSR_HW_TRACKING(dev_priv)) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "No PSR2 HW tracking in the platform\n");
> -		return false;
> +	if (HAS_PSR2_SEL_FETCH(dev_priv)) {
> +		if (!intel_psr2_sel_fetch_config_valid(intel_dp, crtc_state) &&
> +		    !HAS_PSR_HW_TRACKING(dev_priv)) {
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "PSR2 not enabled, selective fetch not valid and no HW tracking =
available\n");
> +			return false;
> +		}
>  	}
>  =

> -	if (crtc_hdisplay > psr_max_h || crtc_vdisplay > psr_max_v) {
> +	if (!crtc_state->enable_psr2_sel_fetch &&
> +	    (crtc_hdisplay > psr_max_h || crtc_vdisplay > psr_max_v)) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "PSR2 not enabled, resolution %dx%d > max supported %dx%d\n",
>  			    crtc_hdisplay, crtc_vdisplay,
> @@ -863,6 +898,11 @@ static void intel_psr_enable_source(struct intel_dp =
*intel_dp,
>  		val |=3D EXITLINE_ENABLE;
>  		intel_de_write(dev_priv, EXITLINE(cpu_transcoder), val);
>  	}
> +
> +	if (HAS_PSR_HW_TRACKING(dev_priv))
> +		intel_de_rmw(dev_priv, CHICKEN_PAR1_1, IGNORE_PSR2_HW_TRACKING,
> +			     dev_priv->psr.psr2_sel_fetch_enabled ?
> +			     IGNORE_PSR2_HW_TRACKING : 0);
>  }
>  =

>  static void intel_psr_enable_locked(struct drm_i915_private *dev_priv,
> @@ -884,7 +924,7 @@ static void intel_psr_enable_locked(struct drm_i915_p=
rivate *dev_priv,
>  	/* DC5/DC6 requires at least 6 idle frames */
>  	val =3D usecs_to_jiffies(intel_get_frame_time_us(crtc_state) * 6);
>  	dev_priv->psr.dc3co_exit_delay =3D val;
> -
> +	dev_priv->psr.psr2_sel_fetch_enabled =3D crtc_state->enable_psr2_sel_fe=
tch;
>  	/*
>  	 * If a PSR error happened and the driver is reloaded, the EDP_PSR_IIR
>  	 * will still keep the error set even after the reset done in the
> @@ -1080,6 +1120,265 @@ static void psr_force_hw_tracking_exit(struct drm=
_i915_private *dev_priv)
>  		intel_psr_exit(dev_priv);
>  }
>  =

> +void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
> +					const struct intel_crtc_state *crtc_state,
> +					const struct intel_plane_state *plane_state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	enum pipe pipe =3D plane->pipe;
> +
> +	if (!HAS_PSR2_SEL_FETCH(dev_priv) ||
> +	    !plane_state ||
> +	    !crtc_state->enable_psr2_sel_fetch)
> +		return;
> +
> +	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id),
> +			  plane_state->psr2_sel_fetch.ctl);
> +	if (!plane_state->psr2_sel_fetch.ctl || plane->id =3D=3D PLANE_CURSOR)
> +		return;
> +
> +	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_POS(pipe, plane->id),
> +			  plane_state->psr2_sel_fetch.pos);
> +	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_OFFSET(pipe, plane->id),
> +			  plane_state->psr2_sel_fetch.offset);
> +	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_SIZE(pipe, plane->id),
> +			  plane_state->psr2_sel_fetch.size);
> +}
> +
> +void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state =
*crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct i915_psr *psr =3D &dev_priv->psr;
> +
> +	if (!HAS_PSR2_SEL_FETCH(dev_priv) ||
> +	    !crtc_state->enable_psr2_sel_fetch)
> +		return;
> +
> +	intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(psr->transcoder),
> +		       crtc_state->psr2_sw_man_track_ctl);
> +}
> +
> +static void intel_psr2_plane_sel_fetch_calc(struct intel_plane_state *pl=
ane_state,
> +					    struct drm_rect *clip)
> +{
> +	int color_plane =3D plane_state->planar_linked_plane && !plane_state->p=
lanar_slave;
> +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> +	u32 val;
> +
> +	if (plane->id =3D=3D PLANE_CURSOR)
> +		return;
> +
> +	val =3D (plane_state->color_plane[color_plane].y + clip->y1) << 16;
> +	val |=3D plane_state->color_plane[color_plane].x;
> +	plane_state->psr2_sel_fetch.offset =3D val;
> +
> +	val =3D (clip->y1 + plane_state->uapi.crtc_y) << 16;
> +	val |=3D plane_state->uapi.crtc_x;
> +	plane_state->psr2_sel_fetch.pos =3D val;
> +
> +	/* Sizes are 0 based */
> +	val =3D (clip->y2 - clip->y1 - 1) << 16;
> +	val |=3D (drm_rect_width(&plane_state->uapi.src) >> 16) - 1;
> +	plane_state->psr2_sel_fetch.size =3D val;
> +}
> +
> +static void intel_psr2_trans_man_trk_ctl_calc(struct intel_crtc_state *c=
rtc_state,
> +					      struct drm_rect *clip,
> +					      bool full_update)
> +{
> +	u32 val =3D PSR2_MAN_TRK_CTL_ENABLE;
> +
> +	if (full_update) {
> +		val |=3D PSR2_MAN_TRK_CTL_SINGLE_FULL_FRAME;
> +		goto exit;
> +	}
> +
> +	if (clip->y1 =3D=3D -1)
> +		goto exit;
> +
> +	val |=3D PSR2_MAN_TRK_CTL_PARTIAL_FRAME_UPDATE;
> +	val |=3D PSR2_MAN_TRK_CTL_REGION_START_ADDR(clip->y1 / 4 + 1);
> +	val |=3D PSR2_MAN_TRK_CTL_REGION_END_ADDR(DIV_ROUND_UP(clip->y2, 4) + 1=
);
> +exit:
> +	crtc_state->psr2_sw_man_track_ctl =3D val;
> +}
> +
> +static void intel_psr2_plane_sel_fetch_ctl_calc(struct intel_plane *plan=
e,
> +						struct intel_plane_state *plane_state,
> +						bool enable)
> +{
> +	if (!enable)
> +		plane_state->psr2_sel_fetch.ctl =3D 0;
> +	else if (plane->id =3D=3D PLANE_CURSOR)
> +		plane_state->psr2_sel_fetch.ctl =3D plane->cursor.cntl;
> +	else
> +		plane_state->psr2_sel_fetch.ctl =3D plane_state->ctl;
> +}
> +
> +static void clip_update(struct drm_rect *overlap_damage_area,
> +			struct drm_rect *damage_area)
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
> +/* Update plane damage area if planes above moved or have alpha */
> +static void intel_psr2_pipe_dirty_areas_set(struct intel_plane_state *pl=
ane_state,
> +					    struct intel_plane *plane,
> +					    const struct drm_rect *pipe_dirty_areas,
> +					    struct drm_rect *plane_clip)
> +{
> +	enum plane_id i;
> +
> +	for (i =3D PLANE_CURSOR; i > plane->id; i--) {
> +		int j;
> +
> +		for (j =3D 0; j < 2; j++) {
> +			struct drm_rect r =3D pipe_dirty_areas[i * 2 + j];
> +
> +			if (!drm_rect_width(&r))
> +				continue;
> +			if (!drm_rect_intersect(&r, &plane_state->uapi.dst))
> +				continue;
> +
> +			r.y1 -=3D plane_state->uapi.crtc_y;
> +			r.y2 -=3D plane_state->uapi.crtc_y;
> +			clip_update(plane_clip, &r);
> +		}
> +	}
> +}
> +
> +void intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
> +				 struct intel_crtc *crtc)
> +{
> +	struct intel_crtc_state *crtc_state =3D intel_atomic_get_new_crtc_state=
(state, crtc);
> +	struct intel_plane_state *new_plane_state, *old_plane_state;
> +	struct drm_rect pipe_dirty_areas[I915_MAX_PLANES * 2] =3D {};
> +	struct drm_rect pipe_clip =3D { .y1 =3D -1 };
> +	struct intel_plane *plane;
> +	bool full_update =3D false;
> +	int i;
> +
> +	if (!crtc_state->enable_psr2_sel_fetch)
> +		return;
> +
> +	/*
> +	 * Load all the pipes areas where there is a plane with alpha or a plane
> +	 * that moved or plane that the visibility changed in those
> +	 * cases planes bellow it will need to be fetched in those intersection
> +	 * areas even if they are not damaged in those areas.
> +	 */
> +	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
> +					     new_plane_state, i) {
> +		bool alpha, flip, dirty;
> +
> +		if (new_plane_state->uapi.crtc !=3D crtc_state->uapi.crtc)
> +			continue;
> +
> +		alpha =3D new_plane_state->uapi.alpha !=3D U16_MAX;
> +		alpha |=3D old_plane_state->uapi.alpha !=3D U16_MAX;
> +		flip =3D new_plane_state->uapi.fb !=3D old_plane_state->uapi.fb;
> +		dirty =3D alpha && flip;
> +		dirty |=3D !drm_rect_equals(&new_plane_state->uapi.dst,
> +					  &old_plane_state->uapi.dst);
> +		dirty |=3D new_plane_state->uapi.visible !=3D
> +			 old_plane_state->uapi.visible;
> +		if (!dirty)
> +			continue;
> +
> +		if (old_plane_state->uapi.visible)
> +			pipe_dirty_areas[plane->id * 2] =3D old_plane_state->uapi.dst;
> +		if (new_plane_state->uapi.visible)
> +			pipe_dirty_areas[plane->id * 2 + 1] =3D new_plane_state->uapi.dst;
> +	}
> +
> +	/*
> +	 * Iterate over all planes, compute the damaged clip area also including
> +	 * the pipe_dirty_areas, compute plane registers and update pipe damaged
> +	 * area
> +	 */
> +	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
> +					     new_plane_state, i) {
> +		struct drm_rect plane_clip =3D { .y1 =3D -1 };
> +		struct drm_mode_rect *clips;
> +		u32 num_clips;
> +		int j;
> +
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
> +		intel_psr2_plane_sel_fetch_ctl_calc(plane, new_plane_state,
> +						    new_plane_state->uapi.visible);
> +		if (!new_plane_state->uapi.visible)
> +			continue;
> +
> +		clips =3D drm_plane_get_damage_clips(&new_plane_state->uapi);
> +		num_clips =3D drm_plane_get_damage_clips_count(&new_plane_state->uapi);
> +
> +		/*
> +		 * If plane moved mark the whole plane area as damaged so it
> +		 * can be complete draw in the new position
> +		 */
> +		if (!drm_rect_equals(&new_plane_state->uapi.dst,
> +				     &old_plane_state->uapi.dst)) {
> +			num_clips =3D 0;
> +			plane_clip.y1 =3D new_plane_state->uapi.src.y1 >> 16;
> +			plane_clip.y2 =3D new_plane_state->uapi.src.y2 >> 16;
> +		} else if (!num_clips) {
> +			/*
> +			 * If plane don't have damage areas but the framebuffer
> +			 * changed mark the whole plane as damaged
> +			 */
> +			if (new_plane_state->uapi.fb =3D=3D old_plane_state->uapi.fb)
> +				continue;
> +
> +			plane_clip.y1 =3D new_plane_state->uapi.src.y1 >> 16;
> +			plane_clip.y2 =3D new_plane_state->uapi.src.y2 >> 16;
> +		}
> +
> +		for (j =3D 0; j < num_clips; j++) {
> +			struct drm_rect damage_area;
> +
> +			damage_area.x1 =3D clips[j].x1;
> +			damage_area.x2 =3D clips[j].x2;
> +			damage_area.y1 =3D clips[j].y1;
> +			damage_area.y2 =3D clips[j].y2;
> +			clip_update(&plane_clip, &damage_area);
> +		}
> +
> +		intel_psr2_pipe_dirty_areas_set(new_plane_state, plane,
> +						pipe_dirty_areas, &plane_clip);
> +		intel_psr2_plane_sel_fetch_calc(new_plane_state, &plane_clip);
> +
> +		plane_clip.y1 +=3D new_plane_state->uapi.crtc_y;
> +		plane_clip.y2 +=3D new_plane_state->uapi.crtc_y;
> +		clip_update(&pipe_clip, &plane_clip);
> +	}

This whole thing seems rather convoluted. Also using lots of uapi state
in places where I don't expect to see any.

I would suggest the correct way would be something like:
1) for_each_plane_in_state()
	hw.damage =3D translate_to_some_hw_coord_space(union(uapi.damages))
	or just use the full plane size if we have scaling i guess

2) need to add all affected planes to the state and set the appropriate
   bitmask, which may mean we want to track the planes' positions in the
   crtc state. I think atm we only have it in the plane state

3) translate the damage further into the final plane src coordinate
   space. Dunno if we have enough state around still to do it cleanly.
   I was thinking maybe it could be done alongside all the other plane
   surface calculations, but there might be a chicken vs. egg situation
   here since we probably want to do the plane check stuff before doing
   step 1, but plane check is also where we do the surface calculations.
   Dunno if we may just want to split the plane check into two stages

To keep things simple I guess what I'd suggest is to forget about the
damage stuff in the first version of the series and just do full
plane updates. That way we don't have to worry about so many coordinate
space transformations.

> +
> +	intel_psr2_trans_man_trk_ctl_calc(crtc_state, &pipe_clip, full_update);
> +}
> +
>  /**
>   * intel_psr_update - Update PSR state
>   * @intel_dp: Intel DP
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i=
915/display/intel_psr.h
> index b4515186d5f4..d80bd0e46b21 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -13,6 +13,10 @@ struct drm_connector_state;
>  struct drm_i915_private;
>  struct intel_crtc_state;
>  struct intel_dp;
> +struct intel_crtc;
> +struct intel_atomic_state;
> +struct intel_plane_state;
> +struct intel_plane;
>  =

>  #define CAN_PSR(dev_priv) (HAS_PSR(dev_priv) && dev_priv->psr.sink_suppo=
rt)
>  void intel_psr_init_dpcd(struct intel_dp *intel_dp);
> @@ -43,5 +47,11 @@ void intel_psr_atomic_check(struct drm_connector *conn=
ector,
>  			    struct drm_connector_state *old_state,
>  			    struct drm_connector_state *new_state);
>  void intel_psr_set_force_mode_changed(struct intel_dp *intel_dp);
> +void intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
> +				 struct intel_crtc *crtc);
> +void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
> +					const struct intel_crtc_state *crtc_state,
> +					const struct intel_plane_state *plane_state);
> +void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state =
*crtc_state);
>  =

>  #endif /* __INTEL_PSR_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 8be06cb25999..afede372ac05 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -690,6 +690,8 @@ skl_program_plane(struct intel_plane *plane,
>  		intel_de_write_fw(dev_priv, PLANE_AUX_OFFSET(pipe, plane_id),
>  				  (plane_state->color_plane[1].y << 16) | plane_state->color_plane[1=
].x);
>  =

> +	intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state);
> +
>  	/*
>  	 * The control register self-arms if the plane was previously
>  	 * disabled. Try to make the plane enable atomic by writing
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 146bfd276ce7..ae7efc922393 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -503,6 +503,7 @@ struct i915_psr {
>  	bool link_standby;
>  	bool colorimetry_support;
>  	bool psr2_enabled;
> +	bool psr2_sel_fetch_enabled;
>  	u8 sink_sync_latency;
>  	ktime_t last_entry_attempt;
>  	ktime_t last_exit;
> @@ -1634,6 +1635,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
>  #define HAS_PSR_HW_TRACKING(dev_priv) \
>  	(INTEL_INFO(dev_priv)->display.has_psr_hw_tracking)
> +#define HAS_PSR2_SEL_FETCH(dev_priv)	 (INTEL_GEN(dev_priv) >=3D 12)
>  #define HAS_TRANSCODER(dev_priv, trans)	 ((INTEL_INFO(dev_priv)->cpu_tra=
nscoder_mask & BIT(trans)) !=3D 0)
>  =

>  #define HAS_RC6(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6)
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i9=
15_params.c
> index add00ec1f787..3005451c1194 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -88,6 +88,11 @@ i915_param_named_unsafe(enable_psr, int, 0600,
>  	"(0=3Ddisabled, 1=3Denabled) "
>  	"Default: -1 (use per-chip default)");
>  =

> +i915_param_named_unsafe(enable_psr2_sel_fetch, int, 0400,
> +	"Enable PSR2 selective fetch "
> +	"(0=3Ddisabled, 1=3Denabled) "
> +	"Default: 0");
> +
>  i915_param_named_unsafe(force_probe, charp, 0400,
>  	"Force probe the driver for specified devices. "
>  	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i9=
15_params.h
> index 45323732f099..5a0b16923016 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -53,6 +53,7 @@ struct drm_printer;
>  	param(int, enable_dc, -1, 0400) \
>  	param(int, enable_fbc, -1, 0600) \
>  	param(int, enable_psr, -1, 0600) \
> +	param(int, enable_psr2_sel_fetch, 0, 0400) \
>  	param(int, disable_power_well, -1, 0400) \
>  	param(int, enable_ips, 1, 0600) \
>  	param(int, invert_brightness, 0, 0600) \
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
