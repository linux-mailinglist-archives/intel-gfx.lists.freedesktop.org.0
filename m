Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5841D2DC008
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 13:11:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 278AF898A3;
	Wed, 16 Dec 2020 12:11:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C782B898A3
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Dec 2020 12:11:46 +0000 (UTC)
IronPort-SDR: aI82x48In/i63K4IXYJy++sYFw/qHVil8TTqvOlmgXfgoIYBjVRvvLi19/f1+bDx80v8YtIBcu
 biCBVgy3ltlA==
X-IronPort-AV: E=McAfee;i="6000,8403,9836"; a="154859427"
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="154859427"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 04:11:46 -0800
IronPort-SDR: 9vRQsFch/Sv6m6or7wyZmGTfVKnJ8hDnnZm9OU1wHAb1C/XX5duosQpXi6hdHMEJO4pvW5m724
 gm82giFG7HdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="368992802"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 16 Dec 2020 04:11:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Dec 2020 14:11:43 +0200
Date: Wed, 16 Dec 2020 14:11:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <X9n5ftGnLhFlF2G/@intel.com>
References: <cover.1608117676.git.jani.nikula@intel.com>
 <bd552745b685888a9137d171b5b6acaab8ac7a99.1608117676.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bd552745b685888a9137d171b5b6acaab8ac7a99.1608117676.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4 09/11] drm/i915: migrate skl planes code
 new file
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
Cc: Dave Airlie <airlied@redhat.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 16, 2020 at 01:29:16PM +0200, Jani Nikula wrote:
> From: Dave Airlie <airlied@redhat.com>
> =

> Rework the plane init calls to do the gen test one level higher.
> =

> Signed-off-by: Dave Airlie <airlied@redhat.com>
> [Jani: fixed up sparse warnings.]
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |    1 +
>  .../gpu/drm/i915/display/intel_atomic_plane.c |   76 -
>  drivers/gpu/drm/i915/display/intel_crtc.c     |   16 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 1410 +-------
>  drivers/gpu/drm/i915/display/intel_display.h  |   36 +-
>  .../drm/i915/display/intel_display_types.h    |   21 +
>  .../gpu/drm/i915/display/intel_gen9_plane.c   | 2832 +++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_sprite.c   | 1417 +--------
>  8 files changed, 2931 insertions(+), 2878 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_gen9_plane.c
> =

> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 42f9c1ca3c08..a4f67c795240 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -211,6 +211,7 @@ i915-y +=3D \
>  	display/intel_fifo_underrun.o \
>  	display/intel_frontbuffer.o \
>  	display/intel_global_state.o \
> +	display/intel_gen9_plane.o \

skl_universal_plane.c is what I'd call it.

No corresponding header?

>  	display/intel_hdcp.o \
>  	display/intel_hotplug.o \
>  	display/intel_lpe_audio.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.c
> index b5e1ee99535c..10197cc158c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -399,50 +399,6 @@ int intel_plane_atomic_check(struct intel_atomic_sta=
te *state,
>  						   new_plane_state);
>  }
>  =

> -static struct intel_plane *
> -skl_next_plane_to_commit(struct intel_atomic_state *state,
> -			 struct intel_crtc *crtc,
> -			 struct skl_ddb_entry entries_y[I915_MAX_PLANES],
> -			 struct skl_ddb_entry entries_uv[I915_MAX_PLANES],
> -			 unsigned int *update_mask)
> -{
> -	struct intel_crtc_state *crtc_state =3D
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct intel_plane_state *plane_state;
> -	struct intel_plane *plane;
> -	int i;
> -
> -	if (*update_mask =3D=3D 0)
> -		return NULL;
> -
> -	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
> -		enum plane_id plane_id =3D plane->id;
> -
> -		if (crtc->pipe !=3D plane->pipe ||
> -		    !(*update_mask & BIT(plane_id)))
> -			continue;
> -
> -		if (skl_ddb_allocation_overlaps(&crtc_state->wm.skl.plane_ddb_y[plane_=
id],
> -						entries_y,
> -						I915_MAX_PLANES, plane_id) ||
> -		    skl_ddb_allocation_overlaps(&crtc_state->wm.skl.plane_ddb_uv[plane=
_id],
> -						entries_uv,
> -						I915_MAX_PLANES, plane_id))
> -			continue;
> -
> -		*update_mask &=3D ~BIT(plane_id);
> -		entries_y[plane_id] =3D crtc_state->wm.skl.plane_ddb_y[plane_id];
> -		entries_uv[plane_id] =3D crtc_state->wm.skl.plane_ddb_uv[plane_id];
> -
> -		return plane;
> -	}
> -
> -	/* should never happen */
> -	drm_WARN_ON(state->base.dev, 1);
> -
> -	return NULL;
> -}
> -

I wouldn't bother moving the stuff from intel_atomic_plane.c.
They're much higher level stuff than the rest of the moved code.

<snip>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 376cec71b477..c1ddef60e36e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -52,6 +52,7 @@ struct intel_crtc_state;
>  struct intel_digital_port;
>  struct intel_dp;
>  struct intel_encoder;
> +struct intel_initial_plane_config;
>  struct intel_load_detect_pipe;
>  struct intel_plane;
>  struct intel_plane_state;
> @@ -615,23 +616,12 @@ intel_legacy_aux_to_power_domain(enum aux_ch aux_ch=
);
>  void intel_crtc_arm_fifo_underrun(struct intel_crtc *crtc,
>  				  struct intel_crtc_state *crtc_state);
>  =

> -u16 skl_scaler_calc_phase(int sub, int scale, bool chroma_center);
>  void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state);
> -u32 skl_scaler_get_filter_select(enum drm_scaling_filter filter, int set=
);
> -void skl_scaler_setup_filter(struct drm_i915_private *dev_priv, enum pip=
e pipe,
> -			     int id, int set, enum drm_scaling_filter filter);
>  void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state);
> -u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
> -			const struct intel_plane_state *plane_state);
> -u32 glk_plane_color_ctl_crtc(const struct intel_crtc_state *crtc_state);
> -u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
> -		  const struct intel_plane_state *plane_state);
> -u32 skl_plane_ctl_crtc(const struct intel_crtc_state *crtc_state);
> -u32 skl_plane_stride(const struct intel_plane_state *plane_state,
> -		     int plane);
> -int skl_check_plane_surface(struct intel_plane_state *plane_state);
> +void skl_detach_scalers(const struct intel_crtc_state *crtc_state);
>  int i9xx_check_plane_surface(struct intel_plane_state *plane_state);
>  int skl_format_to_fourcc(int format, bool rgb_order, bool alpha);

We seem to have left a lot of functions as non-static that don't need t
be.

<snip>
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index b7e208816074..ab2cd4825e2e 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
<snip>
> -static const u32 icl_sdr_y_plane_formats[] =3D {
> -	DRM_FORMAT_C8,
> -	DRM_FORMAT_RGB565,
> +static const u64 i9xx_plane_format_modifiers[] =3D {
> +	I915_FORMAT_MOD_X_TILED,
> +	DRM_FORMAT_MOD_LINEAR,
> +	DRM_FORMAT_MOD_INVALID
> +};
> +
> +static const u32 snb_plane_formats[] =3D {

Have we tried --patience to make this part of the diff legible?

>  	DRM_FORMAT_XRGB8888,
>  	DRM_FORMAT_XBGR8888,
> -	DRM_FORMAT_ARGB8888,
> -	DRM_FORMAT_ABGR8888,
>  	DRM_FORMAT_XRGB2101010,
>  	DRM_FORMAT_XBGR2101010,
> -	DRM_FORMAT_ARGB2101010,
> -	DRM_FORMAT_ABGR2101010,
> +	DRM_FORMAT_XRGB16161616F,
> +	DRM_FORMAT_XBGR16161616F,
>  	DRM_FORMAT_YUYV,
>  	DRM_FORMAT_YVYU,
>  	DRM_FORMAT_UYVY,
>  	DRM_FORMAT_VYUY,
> -	DRM_FORMAT_Y210,
> -	DRM_FORMAT_Y212,
> -	DRM_FORMAT_Y216,
> -	DRM_FORMAT_XYUV8888,
> -	DRM_FORMAT_XVYU2101010,
> -	DRM_FORMAT_XVYU12_16161616,
> -	DRM_FORMAT_XVYU16161616,
>  };
>  =

> -static const u32 icl_sdr_uv_plane_formats[] =3D {
> +static const u32 vlv_plane_formats[] =3D {
>  	DRM_FORMAT_C8,
>  	DRM_FORMAT_RGB565,
>  	DRM_FORMAT_XRGB8888,
>  	DRM_FORMAT_XBGR8888,
>  	DRM_FORMAT_ARGB8888,
>  	DRM_FORMAT_ABGR8888,
> -	DRM_FORMAT_XRGB2101010,
>  	DRM_FORMAT_XBGR2101010,
> -	DRM_FORMAT_ARGB2101010,
>  	DRM_FORMAT_ABGR2101010,
>  	DRM_FORMAT_YUYV,
>  	DRM_FORMAT_YVYU,
>  	DRM_FORMAT_UYVY,
>  	DRM_FORMAT_VYUY,
> -	DRM_FORMAT_NV12,
> -	DRM_FORMAT_P010,
> -	DRM_FORMAT_P012,
> -	DRM_FORMAT_P016,
> -	DRM_FORMAT_Y210,
> -	DRM_FORMAT_Y212,
> -	DRM_FORMAT_Y216,
> -	DRM_FORMAT_XYUV8888,
> -	DRM_FORMAT_XVYU2101010,
> -	DRM_FORMAT_XVYU12_16161616,
> -	DRM_FORMAT_XVYU16161616,
>  };
>  =

> -static const u32 icl_hdr_plane_formats[] =3D {
> +static const u32 chv_pipe_b_sprite_formats[] =3D {
>  	DRM_FORMAT_C8,
>  	DRM_FORMAT_RGB565,
>  	DRM_FORMAT_XRGB8888,
> @@ -2813,60 +1859,10 @@ static const u32 icl_hdr_plane_formats[] =3D {
>  	DRM_FORMAT_XBGR2101010,
>  	DRM_FORMAT_ARGB2101010,
>  	DRM_FORMAT_ABGR2101010,
> -	DRM_FORMAT_XRGB16161616F,
> -	DRM_FORMAT_XBGR16161616F,
> -	DRM_FORMAT_ARGB16161616F,
> -	DRM_FORMAT_ABGR16161616F,
>  	DRM_FORMAT_YUYV,
>  	DRM_FORMAT_YVYU,
>  	DRM_FORMAT_UYVY,
>  	DRM_FORMAT_VYUY,
> -	DRM_FORMAT_NV12,
> -	DRM_FORMAT_P010,
> -	DRM_FORMAT_P012,
> -	DRM_FORMAT_P016,
> -	DRM_FORMAT_Y210,
> -	DRM_FORMAT_Y212,
> -	DRM_FORMAT_Y216,
> -	DRM_FORMAT_XYUV8888,
> -	DRM_FORMAT_XVYU2101010,
> -	DRM_FORMAT_XVYU12_16161616,
> -	DRM_FORMAT_XVYU16161616,
> -};
> -
> -static const u64 skl_plane_format_modifiers_noccs[] =3D {
> -	I915_FORMAT_MOD_Yf_TILED,
> -	I915_FORMAT_MOD_Y_TILED,
> -	I915_FORMAT_MOD_X_TILED,
> -	DRM_FORMAT_MOD_LINEAR,
> -	DRM_FORMAT_MOD_INVALID
> -};
> -
> -static const u64 skl_plane_format_modifiers_ccs[] =3D {
> -	I915_FORMAT_MOD_Yf_TILED_CCS,
> -	I915_FORMAT_MOD_Y_TILED_CCS,
> -	I915_FORMAT_MOD_Yf_TILED,
> -	I915_FORMAT_MOD_Y_TILED,
> -	I915_FORMAT_MOD_X_TILED,
> -	DRM_FORMAT_MOD_LINEAR,
> -	DRM_FORMAT_MOD_INVALID
> -};
> -
> -static const u64 gen12_plane_format_modifiers_mc_ccs[] =3D {
> -	I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
> -	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
> -	I915_FORMAT_MOD_Y_TILED,
> -	I915_FORMAT_MOD_X_TILED,
> -	DRM_FORMAT_MOD_LINEAR,
> -	DRM_FORMAT_MOD_INVALID
> -};
> -
> -static const u64 gen12_plane_format_modifiers_rc_ccs[] =3D {
> -	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
> -	I915_FORMAT_MOD_Y_TILED,
> -	I915_FORMAT_MOD_X_TILED,
> -	DRM_FORMAT_MOD_LINEAR,
> -	DRM_FORMAT_MOD_INVALID
>  };
>  =

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
