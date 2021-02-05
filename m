Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DECF6310CDB
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 16:04:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 252C56E30D;
	Fri,  5 Feb 2021 15:04:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B4946E30D
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 15:04:52 +0000 (UTC)
IronPort-SDR: ps8kH56YHyYNAXWRCM4TfvhGIxGRcg1qqmMKqqrhpPEIwe52gAqNnaAusUws3ogRyZM2efV6Bi
 WZ4vgOePGiEg==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="160601092"
X-IronPort-AV: E=Sophos;i="5.81,155,1610438400"; d="scan'208";a="160601092"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 07:04:51 -0800
IronPort-SDR: 2W2rUay8cHYuZr8Fw5lIzEAl+ufT8RMJp1JNVQdsQlv39v73nQfnXrP//5pufLEGAultDVYmvP
 5YnkdANaPAXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,155,1610438400"; d="scan'208";a="360422059"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 05 Feb 2021 07:04:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Feb 2021 17:04:47 +0200
Date: Fri, 5 Feb 2021 17:04:47 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YB1ej+Wg3wFnq1IU@intel.com>
References: <cover.1612536383.git.jani.nikula@intel.com>
 <2fa703ffc7b96a41c392fd5ebbd2e6e4ffb6fb05.1612536383.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2fa703ffc7b96a41c392fd5ebbd2e6e4ffb6fb05.1612536383.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v12 7/8] drm/i915: refactor skylake scaler
 code into new file.
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

On Fri, Feb 05, 2021 at 04:48:42PM +0200, Jani Nikula wrote:
> From: Dave Airlie <airlied@redhat.com>
> =

> This moves the code from various places and consolidates it
> into one new file.
> =

> v2:
> - rename skl_program_plane -> skl_program_plane_scaler (Ville)
> - also move skl_pfit_enable, and consequently make some skl_scaler_*
>   functions static to skl_scaler.c (Ville)
> =

> Signed-off-by: Dave Airlie <airlied@redhat.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/icl_dsi.c        |   1 +
>  drivers/gpu/drm/i915/display/intel_atomic.c   |   2 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   1 +
>  drivers/gpu/drm/i915/display/intel_display.c  | 488 +--------------
>  drivers/gpu/drm/i915/display/intel_display.h  |   6 -
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |   1 +
>  drivers/gpu/drm/i915/display/intel_sprite.c   |  62 --
>  drivers/gpu/drm/i915/display/intel_sprite.h   |   7 -
>  drivers/gpu/drm/i915/display/skl_scaler.c     | 556 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/skl_scaler.h     |  29 +
>  .../drm/i915/display/skl_universal_plane.c    |   3 +-
>  .../drm/i915/display/skl_universal_plane.h    |   4 +
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |   1 +
>  14 files changed, 598 insertions(+), 564 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/skl_scaler.c
>  create mode 100644 drivers/gpu/drm/i915/display/skl_scaler.h
> =

> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 9388e09184fe..235679637d1c 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -226,6 +226,7 @@ i915-y +=3D \
>  	display/intel_tc.o \
>  	display/intel_vga.o \
>  	display/i9xx_plane.o \
> +	display/skl_scaler.o \
>  	display/skl_universal_plane.o
>  i915-$(CONFIG_ACPI) +=3D \
>  	display/intel_acpi.o \
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 9eeec6fadec7..7ef6b89c79d9 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -35,6 +35,7 @@
>  #include "intel_dsi.h"
>  #include "intel_panel.h"
>  #include "intel_vdsc.h"
> +#include "skl_scaler.h"
>  #include "skl_universal_plane.h"
>  =

>  static int header_credits_available(struct drm_i915_private *dev_priv,
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/dr=
m/i915/display/intel_atomic.c
> index e00fdc47c0eb..27f7d7109ca3 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -40,7 +40,7 @@
>  #include "intel_global_state.h"
>  #include "intel_hdcp.h"
>  #include "intel_psr.h"
> -#include "intel_sprite.h"
> +#include "skl_universal_plane.h"
>  =

>  /**
>   * intel_digital_connector_atomic_get_property - hook for connector->ato=
mic_get_property.
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index f4746c1edabe..3c4003605f93 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -54,6 +54,7 @@
>  #include "intel_tc.h"
>  #include "intel_vdsc.h"
>  #include "intel_vrr.h"
> +#include "skl_scaler.h"
>  #include "skl_universal_plane.h"
>  =

>  static const u8 index_to_dp_signal_levels[] =3D {
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 1826b4fc6cec..beed08c00b6c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -94,6 +94,7 @@
>  #include "intel_tc.h"
>  #include "intel_vga.h"
>  #include "i9xx_plane.h"
> +#include "skl_scaler.h"
>  #include "skl_universal_plane.h"
>  =

>  static void i9xx_crtc_clock_get(struct intel_crtc *crtc,
> @@ -2521,38 +2522,6 @@ intel_plane_fence_y_offset(const struct intel_plan=
e_state *plane_state)
>  	return y;
>  }
>  =

> -static void skl_detach_scaler(struct intel_crtc *intel_crtc, int id)
> -{
> -	struct drm_device *dev =3D intel_crtc->base.dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> -	unsigned long irqflags;
> -
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
> -	intel_de_write_fw(dev_priv, SKL_PS_CTRL(intel_crtc->pipe, id), 0);
> -	intel_de_write_fw(dev_priv, SKL_PS_WIN_POS(intel_crtc->pipe, id), 0);
> -	intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(intel_crtc->pipe, id), 0);
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> -}
> -
> -/*
> - * This function detaches (aka. unbinds) unused scalers in hardware
> - */
> -static void skl_detach_scalers(const struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	const struct intel_crtc_scaler_state *scaler_state =3D
> -		&crtc_state->scaler_state;
> -	int i;
> -
> -	/* loop through and disable scalers that aren't in use */
> -	for (i =3D 0; i < intel_crtc->num_scalers; i++) {
> -		if (!scaler_state->scalers[i].in_use)
> -			skl_detach_scaler(intel_crtc, i);
> -	}
> -}
> -
>  static int
>  __intel_display_resume(struct drm_device *dev,
>  		       struct drm_atomic_state *state,
> @@ -3117,461 +3086,6 @@ static void cpt_verify_modeset(struct drm_i915_pr=
ivate *dev_priv,
>  	}
>  }
>  =

> -/*
> - * The hardware phase 0.0 refers to the center of the pixel.
> - * We want to start from the top/left edge which is phase
> - * -0.5. That matches how the hardware calculates the scaling
> - * factors (from top-left of the first pixel to bottom-right
> - * of the last pixel, as opposed to the pixel centers).
> - *
> - * For 4:2:0 subsampled chroma planes we obviously have to
> - * adjust that so that the chroma sample position lands in
> - * the right spot.
> - *
> - * Note that for packed YCbCr 4:2:2 formats there is no way to
> - * control chroma siting. The hardware simply replicates the
> - * chroma samples for both of the luma samples, and thus we don't
> - * actually get the expected MPEG2 chroma siting convention :(
> - * The same behaviour is observed on pre-SKL platforms as well.
> - *
> - * Theory behind the formula (note that we ignore sub-pixel
> - * source coordinates):
> - * s =3D source sample position
> - * d =3D destination sample position
> - *
> - * Downscaling 4:1:
> - * -0.5
> - * | 0.0
> - * | |     1.5 (initial phase)
> - * | |     |
> - * v v     v
> - * | s | s | s | s |
> - * |       d       |
> - *
> - * Upscaling 1:4:
> - * -0.5
> - * | -0.375 (initial phase)
> - * | |     0.0
> - * | |     |
> - * v v     v
> - * |       s       |
> - * | d | d | d | d |
> - */
> -u16 skl_scaler_calc_phase(int sub, int scale, bool chroma_cosited)
> -{
> -	int phase =3D -0x8000;
> -	u16 trip =3D 0;
> -
> -	if (chroma_cosited)
> -		phase +=3D (sub - 1) * 0x8000 / sub;
> -
> -	phase +=3D scale / (2 * sub);
> -
> -	/*
> -	 * Hardware initial phase limited to [-0.5:1.5].
> -	 * Since the max hardware scale factor is 3.0, we
> -	 * should never actually excdeed 1.0 here.
> -	 */
> -	WARN_ON(phase < -0x8000 || phase > 0x18000);
> -
> -	if (phase < 0)
> -		phase =3D 0x10000 + phase;
> -	else
> -		trip =3D PS_PHASE_TRIP;
> -
> -	return ((phase >> 2) & PS_PHASE_MASK) | trip;
> -}
> -
> -#define SKL_MIN_SRC_W 8
> -#define SKL_MAX_SRC_W 4096
> -#define SKL_MIN_SRC_H 8
> -#define SKL_MAX_SRC_H 4096
> -#define SKL_MIN_DST_W 8
> -#define SKL_MAX_DST_W 4096
> -#define SKL_MIN_DST_H 8
> -#define SKL_MAX_DST_H 4096
> -#define ICL_MAX_SRC_W 5120
> -#define ICL_MAX_SRC_H 4096
> -#define ICL_MAX_DST_W 5120
> -#define ICL_MAX_DST_H 4096
> -#define SKL_MIN_YUV_420_SRC_W 16
> -#define SKL_MIN_YUV_420_SRC_H 16
> -
> -static int
> -skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
> -		  unsigned int scaler_user, int *scaler_id,
> -		  int src_w, int src_h, int dst_w, int dst_h,
> -		  const struct drm_format_info *format,
> -		  u64 modifier, bool need_scaler)
> -{
> -	struct intel_crtc_scaler_state *scaler_state =3D
> -		&crtc_state->scaler_state;
> -	struct intel_crtc *intel_crtc =3D
> -		to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(intel_crtc->base.dev);
> -	const struct drm_display_mode *adjusted_mode =3D
> -		&crtc_state->hw.adjusted_mode;
> -
> -	/*
> -	 * Src coordinates are already rotated by 270 degrees for
> -	 * the 90/270 degree plane rotation cases (to match the
> -	 * GTT mapping), hence no need to account for rotation here.
> -	 */
> -	if (src_w !=3D dst_w || src_h !=3D dst_h)
> -		need_scaler =3D true;
> -
> -	/*
> -	 * Scaling/fitting not supported in IF-ID mode in GEN9+
> -	 * TODO: Interlace fetch mode doesn't support YUV420 planar formats.
> -	 * Once NV12 is enabled, handle it here while allocating scaler
> -	 * for NV12.
> -	 */
> -	if (INTEL_GEN(dev_priv) >=3D 9 && crtc_state->hw.enable &&
> -	    need_scaler && adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Pipe/Plane scaling not supported with IF-ID mode\n");
> -		return -EINVAL;
> -	}
> -
> -	/*
> -	 * if plane is being disabled or scaler is no more required or force de=
tach
> -	 *  - free scaler binded to this plane/crtc
> -	 *  - in order to do this, update crtc->scaler_usage
> -	 *
> -	 * Here scaler state in crtc_state is set free so that
> -	 * scaler can be assigned to other user. Actual register
> -	 * update to free the scaler is done in plane/panel-fit programming.
> -	 * For this purpose crtc/plane_state->scaler_id isn't reset here.
> -	 */
> -	if (force_detach || !need_scaler) {
> -		if (*scaler_id >=3D 0) {
> -			scaler_state->scaler_users &=3D ~(1 << scaler_user);
> -			scaler_state->scalers[*scaler_id].in_use =3D 0;
> -
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "scaler_user index %u.%u: "
> -				    "Staged freeing scaler id %d scaler_users =3D 0x%x\n",
> -				    intel_crtc->pipe, scaler_user, *scaler_id,
> -				    scaler_state->scaler_users);
> -			*scaler_id =3D -1;
> -		}
> -		return 0;
> -	}
> -
> -	if (format && intel_format_info_is_yuv_semiplanar(format, modifier) &&
> -	    (src_h < SKL_MIN_YUV_420_SRC_H || src_w < SKL_MIN_YUV_420_SRC_W)) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Planar YUV: src dimensions not met\n");
> -		return -EINVAL;
> -	}
> -
> -	/* range checks */
> -	if (src_w < SKL_MIN_SRC_W || src_h < SKL_MIN_SRC_H ||
> -	    dst_w < SKL_MIN_DST_W || dst_h < SKL_MIN_DST_H ||
> -	    (INTEL_GEN(dev_priv) >=3D 11 &&
> -	     (src_w > ICL_MAX_SRC_W || src_h > ICL_MAX_SRC_H ||
> -	      dst_w > ICL_MAX_DST_W || dst_h > ICL_MAX_DST_H)) ||
> -	    (INTEL_GEN(dev_priv) < 11 &&
> -	     (src_w > SKL_MAX_SRC_W || src_h > SKL_MAX_SRC_H ||
> -	      dst_w > SKL_MAX_DST_W || dst_h > SKL_MAX_DST_H)))	{
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "scaler_user index %u.%u: src %ux%u dst %ux%u "
> -			    "size is out of scaler range\n",
> -			    intel_crtc->pipe, scaler_user, src_w, src_h,
> -			    dst_w, dst_h);
> -		return -EINVAL;
> -	}
> -
> -	/* mark this plane as a scaler user in crtc_state */
> -	scaler_state->scaler_users |=3D (1 << scaler_user);
> -	drm_dbg_kms(&dev_priv->drm, "scaler_user index %u.%u: "
> -		    "staged scaling request for %ux%u->%ux%u scaler_users =3D 0x%x\n",
> -		    intel_crtc->pipe, scaler_user, src_w, src_h, dst_w, dst_h,
> -		    scaler_state->scaler_users);
> -
> -	return 0;
> -}
> -
> -static int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state)
> -{
> -	const struct drm_display_mode *pipe_mode =3D &crtc_state->hw.pipe_mode;
> -	int width, height;
> -
> -	if (crtc_state->pch_pfit.enabled) {
> -		width =3D drm_rect_width(&crtc_state->pch_pfit.dst);
> -		height =3D drm_rect_height(&crtc_state->pch_pfit.dst);
> -	} else {
> -		width =3D pipe_mode->crtc_hdisplay;
> -		height =3D pipe_mode->crtc_vdisplay;
> -	}
> -	return skl_update_scaler(crtc_state, !crtc_state->hw.active,
> -				 SKL_CRTC_INDEX,
> -				 &crtc_state->scaler_state.scaler_id,
> -				 crtc_state->pipe_src_w, crtc_state->pipe_src_h,
> -				 width, height, NULL, 0,
> -				 crtc_state->pch_pfit.enabled);
> -}
> -
> -/**
> - * skl_update_scaler_plane - Stages update to scaler state for a given p=
lane.
> - * @crtc_state: crtc's scaler state
> - * @plane_state: atomic plane state to update
> - *
> - * Return
> - *     0 - scaler_usage updated successfully
> - *    error - requested scaling cannot be supported or other error condi=
tion
> - */
> -static int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
> -				   struct intel_plane_state *plane_state)
> -{
> -	struct intel_plane *intel_plane =3D
> -		to_intel_plane(plane_state->uapi.plane);
> -	struct drm_i915_private *dev_priv =3D to_i915(intel_plane->base.dev);
> -	struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	int ret;
> -	bool force_detach =3D !fb || !plane_state->uapi.visible;
> -	bool need_scaler =3D false;
> -
> -	/* Pre-gen11 and SDR planes always need a scaler for planar formats. */
> -	if (!icl_is_hdr_plane(dev_priv, intel_plane->id) &&
> -	    fb && intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
> -		need_scaler =3D true;
> -
> -	ret =3D skl_update_scaler(crtc_state, force_detach,
> -				drm_plane_index(&intel_plane->base),
> -				&plane_state->scaler_id,
> -				drm_rect_width(&plane_state->uapi.src) >> 16,
> -				drm_rect_height(&plane_state->uapi.src) >> 16,
> -				drm_rect_width(&plane_state->uapi.dst),
> -				drm_rect_height(&plane_state->uapi.dst),
> -				fb ? fb->format : NULL,
> -				fb ? fb->modifier : 0,
> -				need_scaler);
> -
> -	if (ret || plane_state->scaler_id < 0)
> -		return ret;
> -
> -	/* check colorkey */
> -	if (plane_state->ckey.flags) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "[PLANE:%d:%s] scaling with color key not allowed",
> -			    intel_plane->base.base.id,
> -			    intel_plane->base.name);
> -		return -EINVAL;
> -	}
> -
> -	/* Check src format */
> -	switch (fb->format->format) {
> -	case DRM_FORMAT_RGB565:
> -	case DRM_FORMAT_XBGR8888:
> -	case DRM_FORMAT_XRGB8888:
> -	case DRM_FORMAT_ABGR8888:
> -	case DRM_FORMAT_ARGB8888:
> -	case DRM_FORMAT_XRGB2101010:
> -	case DRM_FORMAT_XBGR2101010:
> -	case DRM_FORMAT_ARGB2101010:
> -	case DRM_FORMAT_ABGR2101010:
> -	case DRM_FORMAT_YUYV:
> -	case DRM_FORMAT_YVYU:
> -	case DRM_FORMAT_UYVY:
> -	case DRM_FORMAT_VYUY:
> -	case DRM_FORMAT_NV12:
> -	case DRM_FORMAT_XYUV8888:
> -	case DRM_FORMAT_P010:
> -	case DRM_FORMAT_P012:
> -	case DRM_FORMAT_P016:
> -	case DRM_FORMAT_Y210:
> -	case DRM_FORMAT_Y212:
> -	case DRM_FORMAT_Y216:
> -	case DRM_FORMAT_XVYU2101010:
> -	case DRM_FORMAT_XVYU12_16161616:
> -	case DRM_FORMAT_XVYU16161616:
> -		break;
> -	case DRM_FORMAT_XBGR16161616F:
> -	case DRM_FORMAT_ABGR16161616F:
> -	case DRM_FORMAT_XRGB16161616F:
> -	case DRM_FORMAT_ARGB16161616F:
> -		if (INTEL_GEN(dev_priv) >=3D 11)
> -			break;
> -		fallthrough;
> -	default:
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "[PLANE:%d:%s] FB:%d unsupported scaling format 0x%x\n",
> -			    intel_plane->base.base.id, intel_plane->base.name,
> -			    fb->base.id, fb->format->format);
> -		return -EINVAL;
> -	}
> -
> -	return 0;
> -}
> -
> -void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
> -	int i;
> -
> -	for (i =3D 0; i < crtc->num_scalers; i++)
> -		skl_detach_scaler(crtc, i);
> -}
> -
> -static int cnl_coef_tap(int i)
> -{
> -	return i % 7;
> -}
> -
> -static u16 cnl_nearest_filter_coef(int t)
> -{
> -	return t =3D=3D 3 ? 0x0800 : 0x3000;
> -}
> -
> -/*
> - *  Theory behind setting nearest-neighbor integer scaling:
> - *
> - *  17 phase of 7 taps requires 119 coefficients in 60 dwords per set.
> - *  The letter represents the filter tap (D is the center tap) and the n=
umber
> - *  represents the coefficient set for a phase (0-16).
> - *
> - *         +------------+------------------------+----------------------=
--+
> - *         |Index value | Data value coeffient 1 | Data value coeffient =
2 |
> - *         +------------+------------------------+----------------------=
--+
> - *         |   00h      |          B0            |          A0          =
  |
> - *         +------------+------------------------+----------------------=
--+
> - *         |   01h      |          D0            |          C0          =
  |
> - *         +------------+------------------------+----------------------=
--+
> - *         |   02h      |          F0            |          E0          =
  |
> - *         +------------+------------------------+----------------------=
--+
> - *         |   03h      |          A1            |          G0          =
  |
> - *         +------------+------------------------+----------------------=
--+
> - *         |   04h      |          C1            |          B1          =
  |
> - *         +------------+------------------------+----------------------=
--+
> - *         |   ...      |          ...           |          ...         =
  |
> - *         +------------+------------------------+----------------------=
--+
> - *         |   38h      |          B16           |          A16         =
  |
> - *         +------------+------------------------+----------------------=
--+
> - *         |   39h      |          D16           |          C16         =
  |
> - *         +------------+------------------------+----------------------=
--+
> - *         |   3Ah      |          F16           |          C16         =
  |
> - *         +------------+------------------------+----------------------=
--+
> - *         |   3Bh      |        Reserved        |          G16         =
  |
> - *         +------------+------------------------+----------------------=
--+
> - *
> - *  To enable nearest-neighbor scaling:  program scaler coefficents with
> - *  the center tap (Dxx) values set to 1 and all other values set to 0 a=
s per
> - *  SCALER_COEFFICIENT_FORMAT
> - *
> - */
> -
> -static void cnl_program_nearest_filter_coefs(struct drm_i915_private *de=
v_priv,
> -					     enum pipe pipe, int id, int set)
> -{
> -	int i;
> -
> -	intel_de_write_fw(dev_priv, CNL_PS_COEF_INDEX_SET(pipe, id, set),
> -			  PS_COEE_INDEX_AUTO_INC);
> -
> -	for (i =3D 0; i < 17 * 7; i +=3D 2) {
> -		u32 tmp;
> -		int t;
> -
> -		t =3D cnl_coef_tap(i);
> -		tmp =3D cnl_nearest_filter_coef(t);
> -
> -		t =3D cnl_coef_tap(i + 1);
> -		tmp |=3D cnl_nearest_filter_coef(t) << 16;
> -
> -		intel_de_write_fw(dev_priv, CNL_PS_COEF_DATA_SET(pipe, id, set),
> -				  tmp);
> -	}
> -
> -	intel_de_write_fw(dev_priv, CNL_PS_COEF_INDEX_SET(pipe, id, set), 0);
> -}
> -
> -u32 skl_scaler_get_filter_select(enum drm_scaling_filter filter, int set)
> -{
> -	if (filter =3D=3D DRM_SCALING_FILTER_NEAREST_NEIGHBOR) {
> -		return (PS_FILTER_PROGRAMMED |
> -			PS_Y_VERT_FILTER_SELECT(set) |
> -			PS_Y_HORZ_FILTER_SELECT(set) |
> -			PS_UV_VERT_FILTER_SELECT(set) |
> -			PS_UV_HORZ_FILTER_SELECT(set));
> -	}
> -
> -	return PS_FILTER_MEDIUM;
> -}
> -
> -void skl_scaler_setup_filter(struct drm_i915_private *dev_priv, enum pip=
e pipe,
> -			     int id, int set, enum drm_scaling_filter filter)
> -{
> -	switch (filter) {
> -	case DRM_SCALING_FILTER_DEFAULT:
> -		break;
> -	case DRM_SCALING_FILTER_NEAREST_NEIGHBOR:
> -		cnl_program_nearest_filter_coefs(dev_priv, pipe, id, set);
> -		break;
> -	default:
> -		MISSING_CASE(filter);
> -	}
> -}
> -
> -static void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	const struct intel_crtc_scaler_state *scaler_state =3D
> -		&crtc_state->scaler_state;
> -	struct drm_rect src =3D {
> -		.x2 =3D crtc_state->pipe_src_w << 16,
> -		.y2 =3D crtc_state->pipe_src_h << 16,
> -	};
> -	const struct drm_rect *dst =3D &crtc_state->pch_pfit.dst;
> -	u16 uv_rgb_hphase, uv_rgb_vphase;
> -	enum pipe pipe =3D crtc->pipe;
> -	int width =3D drm_rect_width(dst);
> -	int height =3D drm_rect_height(dst);
> -	int x =3D dst->x1;
> -	int y =3D dst->y1;
> -	int hscale, vscale;
> -	unsigned long irqflags;
> -	int id;
> -	u32 ps_ctrl;
> -
> -	if (!crtc_state->pch_pfit.enabled)
> -		return;
> -
> -	if (drm_WARN_ON(&dev_priv->drm,
> -			crtc_state->scaler_state.scaler_id < 0))
> -		return;
> -
> -	hscale =3D drm_rect_calc_hscale(&src, dst, 0, INT_MAX);
> -	vscale =3D drm_rect_calc_vscale(&src, dst, 0, INT_MAX);
> -
> -	uv_rgb_hphase =3D skl_scaler_calc_phase(1, hscale, false);
> -	uv_rgb_vphase =3D skl_scaler_calc_phase(1, vscale, false);
> -
> -	id =3D scaler_state->scaler_id;
> -
> -	ps_ctrl =3D skl_scaler_get_filter_select(crtc_state->hw.scaling_filter,=
 0);
> -	ps_ctrl |=3D  PS_SCALER_EN | scaler_state->scalers[id].mode;
> -
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
> -	skl_scaler_setup_filter(dev_priv, pipe, id, 0,
> -				crtc_state->hw.scaling_filter);
> -
> -	intel_de_write_fw(dev_priv, SKL_PS_CTRL(pipe, id), ps_ctrl);
> -
> -	intel_de_write_fw(dev_priv, SKL_PS_VPHASE(pipe, id),
> -			  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_vphase));
> -	intel_de_write_fw(dev_priv, SKL_PS_HPHASE(pipe, id),
> -			  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_hphase));
> -	intel_de_write_fw(dev_priv, SKL_PS_WIN_POS(pipe, id),
> -			  x << 16 | y);
> -	intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(pipe, id),
> -			  width << 16 | height);
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> -}
> -
>  static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index c80e5a3356ef..e3757ecabbf7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -618,12 +618,6 @@ enum intel_display_power_domain
>  intel_legacy_aux_to_power_domain(enum aux_ch aux_ch);
>  void intel_crtc_arm_fifo_underrun(struct intel_crtc *crtc,
>  				  struct intel_crtc_state *crtc_state);
> -
> -u16 skl_scaler_calc_phase(int sub, int scale, bool chroma_center);
> -void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state);
> -u32 skl_scaler_get_filter_select(enum drm_scaling_filter filter, int set=
);
> -void skl_scaler_setup_filter(struct drm_i915_private *dev_priv, enum pip=
e pipe,
> -			     int id, int set, enum drm_scaling_filter filter);
>  void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state);
>  =

>  int bdw_get_pipemisc_bpp(struct intel_crtc *crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index b4621ed0127e..8e316146b6d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -39,6 +39,7 @@
>  #include "intel_dp_mst.h"
>  #include "intel_dpio_phy.h"
>  #include "intel_hdcp.h"
> +#include "skl_scaler.h"
>  =

>  static int intel_dp_mst_compute_link_config(struct intel_encoder *encode=
r,
>  					    struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 46fcb5b9983f..4cbdb8fd4bb1 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -138,68 +138,6 @@ int intel_plane_check_src_coordinates(struct intel_p=
lane_state *plane_state)
>  	return 0;
>  }
>  =

> -void
> -skl_program_scaler(struct intel_plane *plane,
> -		   const struct intel_crtc_state *crtc_state,
> -		   const struct intel_plane_state *plane_state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	enum pipe pipe =3D plane->pipe;
> -	int scaler_id =3D plane_state->scaler_id;
> -	const struct intel_scaler *scaler =3D
> -		&crtc_state->scaler_state.scalers[scaler_id];
> -	int crtc_x =3D plane_state->uapi.dst.x1;
> -	int crtc_y =3D plane_state->uapi.dst.y1;
> -	u32 crtc_w =3D drm_rect_width(&plane_state->uapi.dst);
> -	u32 crtc_h =3D drm_rect_height(&plane_state->uapi.dst);
> -	u16 y_hphase, uv_rgb_hphase;
> -	u16 y_vphase, uv_rgb_vphase;
> -	int hscale, vscale;
> -	u32 ps_ctrl;
> -
> -	hscale =3D drm_rect_calc_hscale(&plane_state->uapi.src,
> -				      &plane_state->uapi.dst,
> -				      0, INT_MAX);
> -	vscale =3D drm_rect_calc_vscale(&plane_state->uapi.src,
> -				      &plane_state->uapi.dst,
> -				      0, INT_MAX);
> -
> -	/* TODO: handle sub-pixel coordinates */
> -	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
> -	    !icl_is_hdr_plane(dev_priv, plane->id)) {
> -		y_hphase =3D skl_scaler_calc_phase(1, hscale, false);
> -		y_vphase =3D skl_scaler_calc_phase(1, vscale, false);
> -
> -		/* MPEG2 chroma siting convention */
> -		uv_rgb_hphase =3D skl_scaler_calc_phase(2, hscale, true);
> -		uv_rgb_vphase =3D skl_scaler_calc_phase(2, vscale, false);
> -	} else {
> -		/* not used */
> -		y_hphase =3D 0;
> -		y_vphase =3D 0;
> -
> -		uv_rgb_hphase =3D skl_scaler_calc_phase(1, hscale, false);
> -		uv_rgb_vphase =3D skl_scaler_calc_phase(1, vscale, false);
> -	}
> -
> -	ps_ctrl =3D skl_scaler_get_filter_select(plane_state->hw.scaling_filter=
, 0);
> -	ps_ctrl |=3D PS_SCALER_EN | PS_PLANE_SEL(plane->id) | scaler->mode;
> -
> -	skl_scaler_setup_filter(dev_priv, pipe, scaler_id, 0,
> -				plane_state->hw.scaling_filter);
> -
> -	intel_de_write_fw(dev_priv, SKL_PS_CTRL(pipe, scaler_id), ps_ctrl);
> -	intel_de_write_fw(dev_priv, SKL_PS_VPHASE(pipe, scaler_id),
> -			  PS_Y_PHASE(y_vphase) | PS_UV_RGB_PHASE(uv_rgb_vphase));
> -	intel_de_write_fw(dev_priv, SKL_PS_HPHASE(pipe, scaler_id),
> -			  PS_Y_PHASE(y_hphase) | PS_UV_RGB_PHASE(uv_rgb_hphase));
> -	intel_de_write_fw(dev_priv, SKL_PS_WIN_POS(pipe, scaler_id),
> -			  (crtc_x << 16) | crtc_y);
> -	intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(pipe, scaler_id),
> -			  (crtc_w << 16) | crtc_h);
> -}
> -
>  static void i9xx_plane_linear_gamma(u16 gamma[8])
>  {
>  	/* The points are not evenly spaced. */
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.h b/drivers/gpu/dr=
m/i915/display/intel_sprite.h
> index 418897f953fc..f6989da2dc4b 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.h
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.h
> @@ -45,10 +45,6 @@ static inline u8 icl_hdr_plane_mask(void)
>  		BIT(PLANE_SPRITE0) | BIT(PLANE_SPRITE1);
>  }
>  =

> -bool icl_is_nv12_y_plane(struct drm_i915_private *dev_priv,
> -			 enum plane_id plane_id);
> -bool icl_is_hdr_plane(struct drm_i915_private *dev_priv, enum plane_id p=
lane_id);
> -
>  int ivb_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
>  			const struct intel_plane_state *plane_state);
>  int hsw_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
> @@ -56,7 +52,4 @@ int hsw_plane_min_cdclk(const struct intel_crtc_state *=
crtc_state,
>  int vlv_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
>  			const struct intel_plane_state *plane_state);
>  =

> -void skl_program_scaler(struct intel_plane *plane,
> -			const struct intel_crtc_state *crtc_state,
> -			const struct intel_plane_state *plane_state);
>  #endif /* __INTEL_SPRITE_H__ */
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/=
i915/display/skl_scaler.c
> new file mode 100644
> index 000000000000..b37a87bb190f
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -0,0 +1,556 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =A9 2020 Intel Corporation
> + */
> +#include "intel_display_types.h"
> +#include "skl_scaler.h"
> +#include "skl_universal_plane.h"
> +
> +/*
> + * The hardware phase 0.0 refers to the center of the pixel.
> + * We want to start from the top/left edge which is phase
> + * -0.5. That matches how the hardware calculates the scaling
> + * factors (from top-left of the first pixel to bottom-right
> + * of the last pixel, as opposed to the pixel centers).
> + *
> + * For 4:2:0 subsampled chroma planes we obviously have to
> + * adjust that so that the chroma sample position lands in
> + * the right spot.
> + *
> + * Note that for packed YCbCr 4:2:2 formats there is no way to
> + * control chroma siting. The hardware simply replicates the
> + * chroma samples for both of the luma samples, and thus we don't
> + * actually get the expected MPEG2 chroma siting convention :(
> + * The same behaviour is observed on pre-SKL platforms as well.
> + *
> + * Theory behind the formula (note that we ignore sub-pixel
> + * source coordinates):
> + * s =3D source sample position
> + * d =3D destination sample position
> + *
> + * Downscaling 4:1:
> + * -0.5
> + * | 0.0
> + * | |     1.5 (initial phase)
> + * | |     |
> + * v v     v
> + * | s | s | s | s |
> + * |       d       |
> + *
> + * Upscaling 1:4:
> + * -0.5
> + * | -0.375 (initial phase)
> + * | |     0.0
> + * | |     |
> + * v v     v
> + * |       s       |
> + * | d | d | d | d |
> + */
> +static u16 skl_scaler_calc_phase(int sub, int scale, bool chroma_cosited)
> +{
> +	int phase =3D -0x8000;
> +	u16 trip =3D 0;
> +
> +	if (chroma_cosited)
> +		phase +=3D (sub - 1) * 0x8000 / sub;
> +
> +	phase +=3D scale / (2 * sub);
> +
> +	/*
> +	 * Hardware initial phase limited to [-0.5:1.5].
> +	 * Since the max hardware scale factor is 3.0, we
> +	 * should never actually excdeed 1.0 here.
> +	 */
> +	WARN_ON(phase < -0x8000 || phase > 0x18000);
> +
> +	if (phase < 0)
> +		phase =3D 0x10000 + phase;
> +	else
> +		trip =3D PS_PHASE_TRIP;
> +
> +	return ((phase >> 2) & PS_PHASE_MASK) | trip;
> +}
> +
> +#define SKL_MIN_SRC_W 8
> +#define SKL_MAX_SRC_W 4096
> +#define SKL_MIN_SRC_H 8
> +#define SKL_MAX_SRC_H 4096
> +#define SKL_MIN_DST_W 8
> +#define SKL_MAX_DST_W 4096
> +#define SKL_MIN_DST_H 8
> +#define SKL_MAX_DST_H 4096
> +#define ICL_MAX_SRC_W 5120
> +#define ICL_MAX_SRC_H 4096
> +#define ICL_MAX_DST_W 5120
> +#define ICL_MAX_DST_H 4096
> +#define SKL_MIN_YUV_420_SRC_W 16
> +#define SKL_MIN_YUV_420_SRC_H 16
> +
> +static int
> +skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
> +		  unsigned int scaler_user, int *scaler_id,
> +		  int src_w, int src_h, int dst_w, int dst_h,
> +		  const struct drm_format_info *format,
> +		  u64 modifier, bool need_scaler)
> +{
> +	struct intel_crtc_scaler_state *scaler_state =3D
> +		&crtc_state->scaler_state;
> +	struct intel_crtc *intel_crtc =3D
> +		to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(intel_crtc->base.dev);
> +	const struct drm_display_mode *adjusted_mode =3D
> +		&crtc_state->hw.adjusted_mode;
> +
> +	/*
> +	 * Src coordinates are already rotated by 270 degrees for
> +	 * the 90/270 degree plane rotation cases (to match the
> +	 * GTT mapping), hence no need to account for rotation here.
> +	 */
> +	if (src_w !=3D dst_w || src_h !=3D dst_h)
> +		need_scaler =3D true;
> +
> +	/*
> +	 * Scaling/fitting not supported in IF-ID mode in GEN9+
> +	 * TODO: Interlace fetch mode doesn't support YUV420 planar formats.
> +	 * Once NV12 is enabled, handle it here while allocating scaler
> +	 * for NV12.
> +	 */
> +	if (INTEL_GEN(dev_priv) >=3D 9 && crtc_state->hw.enable &&
> +	    need_scaler && adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Pipe/Plane scaling not supported with IF-ID mode\n");
> +		return -EINVAL;
> +	}
> +
> +	/*
> +	 * if plane is being disabled or scaler is no more required or force de=
tach
> +	 *  - free scaler binded to this plane/crtc
> +	 *  - in order to do this, update crtc->scaler_usage
> +	 *
> +	 * Here scaler state in crtc_state is set free so that
> +	 * scaler can be assigned to other user. Actual register
> +	 * update to free the scaler is done in plane/panel-fit programming.
> +	 * For this purpose crtc/plane_state->scaler_id isn't reset here.
> +	 */
> +	if (force_detach || !need_scaler) {
> +		if (*scaler_id >=3D 0) {
> +			scaler_state->scaler_users &=3D ~(1 << scaler_user);
> +			scaler_state->scalers[*scaler_id].in_use =3D 0;
> +
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "scaler_user index %u.%u: "
> +				    "Staged freeing scaler id %d scaler_users =3D 0x%x\n",
> +				    intel_crtc->pipe, scaler_user, *scaler_id,
> +				    scaler_state->scaler_users);
> +			*scaler_id =3D -1;
> +		}
> +		return 0;
> +	}
> +
> +	if (format && intel_format_info_is_yuv_semiplanar(format, modifier) &&
> +	    (src_h < SKL_MIN_YUV_420_SRC_H || src_w < SKL_MIN_YUV_420_SRC_W)) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Planar YUV: src dimensions not met\n");
> +		return -EINVAL;
> +	}
> +
> +	/* range checks */
> +	if (src_w < SKL_MIN_SRC_W || src_h < SKL_MIN_SRC_H ||
> +	    dst_w < SKL_MIN_DST_W || dst_h < SKL_MIN_DST_H ||
> +	    (INTEL_GEN(dev_priv) >=3D 11 &&
> +	     (src_w > ICL_MAX_SRC_W || src_h > ICL_MAX_SRC_H ||
> +	      dst_w > ICL_MAX_DST_W || dst_h > ICL_MAX_DST_H)) ||
> +	    (INTEL_GEN(dev_priv) < 11 &&
> +	     (src_w > SKL_MAX_SRC_W || src_h > SKL_MAX_SRC_H ||
> +	      dst_w > SKL_MAX_DST_W || dst_h > SKL_MAX_DST_H)))	{
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "scaler_user index %u.%u: src %ux%u dst %ux%u "
> +			    "size is out of scaler range\n",
> +			    intel_crtc->pipe, scaler_user, src_w, src_h,
> +			    dst_w, dst_h);
> +		return -EINVAL;
> +	}
> +
> +	/* mark this plane as a scaler user in crtc_state */
> +	scaler_state->scaler_users |=3D (1 << scaler_user);
> +	drm_dbg_kms(&dev_priv->drm, "scaler_user index %u.%u: "
> +		    "staged scaling request for %ux%u->%ux%u scaler_users =3D 0x%x\n",
> +		    intel_crtc->pipe, scaler_user, src_w, src_h, dst_w, dst_h,
> +		    scaler_state->scaler_users);
> +
> +	return 0;
> +}
> +
> +int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state)
> +{
> +	const struct drm_display_mode *pipe_mode =3D &crtc_state->hw.pipe_mode;
> +	int width, height;
> +
> +	if (crtc_state->pch_pfit.enabled) {
> +		width =3D drm_rect_width(&crtc_state->pch_pfit.dst);
> +		height =3D drm_rect_height(&crtc_state->pch_pfit.dst);
> +	} else {
> +		width =3D pipe_mode->crtc_hdisplay;
> +		height =3D pipe_mode->crtc_vdisplay;
> +	}
> +	return skl_update_scaler(crtc_state, !crtc_state->hw.active,
> +				 SKL_CRTC_INDEX,
> +				 &crtc_state->scaler_state.scaler_id,
> +				 crtc_state->pipe_src_w, crtc_state->pipe_src_h,
> +				 width, height, NULL, 0,
> +				 crtc_state->pch_pfit.enabled);
> +}
> +
> +/**
> + * skl_update_scaler_plane - Stages update to scaler state for a given p=
lane.
> + * @crtc_state: crtc's scaler state
> + * @plane_state: atomic plane state to update
> + *
> + * Return
> + *     0 - scaler_usage updated successfully
> + *    error - requested scaling cannot be supported or other error condi=
tion
> + */
> +int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
> +			    struct intel_plane_state *plane_state)
> +{
> +	struct intel_plane *intel_plane =3D
> +		to_intel_plane(plane_state->uapi.plane);
> +	struct drm_i915_private *dev_priv =3D to_i915(intel_plane->base.dev);
> +	struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	int ret;
> +	bool force_detach =3D !fb || !plane_state->uapi.visible;
> +	bool need_scaler =3D false;
> +
> +	/* Pre-gen11 and SDR planes always need a scaler for planar formats. */
> +	if (!icl_is_hdr_plane(dev_priv, intel_plane->id) &&
> +	    fb && intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
> +		need_scaler =3D true;
> +
> +	ret =3D skl_update_scaler(crtc_state, force_detach,
> +				drm_plane_index(&intel_plane->base),
> +				&plane_state->scaler_id,
> +				drm_rect_width(&plane_state->uapi.src) >> 16,
> +				drm_rect_height(&plane_state->uapi.src) >> 16,
> +				drm_rect_width(&plane_state->uapi.dst),
> +				drm_rect_height(&plane_state->uapi.dst),
> +				fb ? fb->format : NULL,
> +				fb ? fb->modifier : 0,
> +				need_scaler);
> +
> +	if (ret || plane_state->scaler_id < 0)
> +		return ret;
> +
> +	/* check colorkey */
> +	if (plane_state->ckey.flags) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "[PLANE:%d:%s] scaling with color key not allowed",
> +			    intel_plane->base.base.id,
> +			    intel_plane->base.name);
> +		return -EINVAL;
> +	}
> +
> +	/* Check src format */
> +	switch (fb->format->format) {
> +	case DRM_FORMAT_RGB565:
> +	case DRM_FORMAT_XBGR8888:
> +	case DRM_FORMAT_XRGB8888:
> +	case DRM_FORMAT_ABGR8888:
> +	case DRM_FORMAT_ARGB8888:
> +	case DRM_FORMAT_XRGB2101010:
> +	case DRM_FORMAT_XBGR2101010:
> +	case DRM_FORMAT_ARGB2101010:
> +	case DRM_FORMAT_ABGR2101010:
> +	case DRM_FORMAT_YUYV:
> +	case DRM_FORMAT_YVYU:
> +	case DRM_FORMAT_UYVY:
> +	case DRM_FORMAT_VYUY:
> +	case DRM_FORMAT_NV12:
> +	case DRM_FORMAT_XYUV8888:
> +	case DRM_FORMAT_P010:
> +	case DRM_FORMAT_P012:
> +	case DRM_FORMAT_P016:
> +	case DRM_FORMAT_Y210:
> +	case DRM_FORMAT_Y212:
> +	case DRM_FORMAT_Y216:
> +	case DRM_FORMAT_XVYU2101010:
> +	case DRM_FORMAT_XVYU12_16161616:
> +	case DRM_FORMAT_XVYU16161616:
> +		break;
> +	case DRM_FORMAT_XBGR16161616F:
> +	case DRM_FORMAT_ABGR16161616F:
> +	case DRM_FORMAT_XRGB16161616F:
> +	case DRM_FORMAT_ARGB16161616F:
> +		if (INTEL_GEN(dev_priv) >=3D 11)
> +			break;
> +		fallthrough;
> +	default:
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "[PLANE:%d:%s] FB:%d unsupported scaling format 0x%x\n",
> +			    intel_plane->base.base.id, intel_plane->base.name,
> +			    fb->base.id, fb->format->format);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int cnl_coef_tap(int i)
> +{
> +	return i % 7;
> +}
> +
> +static u16 cnl_nearest_filter_coef(int t)
> +{
> +	return t =3D=3D 3 ? 0x0800 : 0x3000;
> +}
> +
> +/*
> + *  Theory behind setting nearest-neighbor integer scaling:
> + *
> + *  17 phase of 7 taps requires 119 coefficients in 60 dwords per set.
> + *  The letter represents the filter tap (D is the center tap) and the n=
umber
> + *  represents the coefficient set for a phase (0-16).
> + *
> + *         +------------+------------------------+----------------------=
--+
> + *         |Index value | Data value coeffient 1 | Data value coeffient =
2 |
> + *         +------------+------------------------+----------------------=
--+
> + *         |   00h      |          B0            |          A0          =
  |
> + *         +------------+------------------------+----------------------=
--+
> + *         |   01h      |          D0            |          C0          =
  |
> + *         +------------+------------------------+----------------------=
--+
> + *         |   02h      |          F0            |          E0          =
  |
> + *         +------------+------------------------+----------------------=
--+
> + *         |   03h      |          A1            |          G0          =
  |
> + *         +------------+------------------------+----------------------=
--+
> + *         |   04h      |          C1            |          B1          =
  |
> + *         +------------+------------------------+----------------------=
--+
> + *         |   ...      |          ...           |          ...         =
  |
> + *         +------------+------------------------+----------------------=
--+
> + *         |   38h      |          B16           |          A16         =
  |
> + *         +------------+------------------------+----------------------=
--+
> + *         |   39h      |          D16           |          C16         =
  |
> + *         +------------+------------------------+----------------------=
--+
> + *         |   3Ah      |          F16           |          C16         =
  |
> + *         +------------+------------------------+----------------------=
--+
> + *         |   3Bh      |        Reserved        |          G16         =
  |
> + *         +------------+------------------------+----------------------=
--+
> + *
> + *  To enable nearest-neighbor scaling:  program scaler coefficents with
> + *  the center tap (Dxx) values set to 1 and all other values set to 0 a=
s per
> + *  SCALER_COEFFICIENT_FORMAT
> + *
> + */
> +
> +static void cnl_program_nearest_filter_coefs(struct drm_i915_private *de=
v_priv,
> +					     enum pipe pipe, int id, int set)
> +{
> +	int i;
> +
> +	intel_de_write_fw(dev_priv, CNL_PS_COEF_INDEX_SET(pipe, id, set),
> +			  PS_COEE_INDEX_AUTO_INC);
> +
> +	for (i =3D 0; i < 17 * 7; i +=3D 2) {
> +		u32 tmp;
> +		int t;
> +
> +		t =3D cnl_coef_tap(i);
> +		tmp =3D cnl_nearest_filter_coef(t);
> +
> +		t =3D cnl_coef_tap(i + 1);
> +		tmp |=3D cnl_nearest_filter_coef(t) << 16;
> +
> +		intel_de_write_fw(dev_priv, CNL_PS_COEF_DATA_SET(pipe, id, set),
> +				  tmp);
> +	}
> +
> +	intel_de_write_fw(dev_priv, CNL_PS_COEF_INDEX_SET(pipe, id, set), 0);
> +}
> +
> +static u32 skl_scaler_get_filter_select(enum drm_scaling_filter filter, =
int set)
> +{
> +	if (filter =3D=3D DRM_SCALING_FILTER_NEAREST_NEIGHBOR) {
> +		return (PS_FILTER_PROGRAMMED |
> +			PS_Y_VERT_FILTER_SELECT(set) |
> +			PS_Y_HORZ_FILTER_SELECT(set) |
> +			PS_UV_VERT_FILTER_SELECT(set) |
> +			PS_UV_HORZ_FILTER_SELECT(set));
> +	}
> +
> +	return PS_FILTER_MEDIUM;
> +}
> +
> +static void skl_scaler_setup_filter(struct drm_i915_private *dev_priv, e=
num pipe pipe,
> +				    int id, int set, enum drm_scaling_filter filter)
> +{
> +	switch (filter) {
> +	case DRM_SCALING_FILTER_DEFAULT:
> +		break;
> +	case DRM_SCALING_FILTER_NEAREST_NEIGHBOR:
> +		cnl_program_nearest_filter_coefs(dev_priv, pipe, id, set);
> +		break;
> +	default:
> +		MISSING_CASE(filter);
> +	}
> +}
> +
> +void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	const struct intel_crtc_scaler_state *scaler_state =3D
> +		&crtc_state->scaler_state;
> +	struct drm_rect src =3D {
> +		.x2 =3D crtc_state->pipe_src_w << 16,
> +		.y2 =3D crtc_state->pipe_src_h << 16,
> +	};
> +	const struct drm_rect *dst =3D &crtc_state->pch_pfit.dst;
> +	u16 uv_rgb_hphase, uv_rgb_vphase;
> +	enum pipe pipe =3D crtc->pipe;
> +	int width =3D drm_rect_width(dst);
> +	int height =3D drm_rect_height(dst);
> +	int x =3D dst->x1;
> +	int y =3D dst->y1;
> +	int hscale, vscale;
> +	unsigned long irqflags;
> +	int id;
> +	u32 ps_ctrl;
> +
> +	if (!crtc_state->pch_pfit.enabled)
> +		return;
> +
> +	if (drm_WARN_ON(&dev_priv->drm,
> +			crtc_state->scaler_state.scaler_id < 0))
> +		return;
> +
> +	hscale =3D drm_rect_calc_hscale(&src, dst, 0, INT_MAX);
> +	vscale =3D drm_rect_calc_vscale(&src, dst, 0, INT_MAX);
> +
> +	uv_rgb_hphase =3D skl_scaler_calc_phase(1, hscale, false);
> +	uv_rgb_vphase =3D skl_scaler_calc_phase(1, vscale, false);
> +
> +	id =3D scaler_state->scaler_id;
> +
> +	ps_ctrl =3D skl_scaler_get_filter_select(crtc_state->hw.scaling_filter,=
 0);
> +	ps_ctrl |=3D  PS_SCALER_EN | scaler_state->scalers[id].mode;
> +
> +	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> +
> +	skl_scaler_setup_filter(dev_priv, pipe, id, 0,
> +				crtc_state->hw.scaling_filter);
> +
> +	intel_de_write_fw(dev_priv, SKL_PS_CTRL(pipe, id), ps_ctrl);
> +
> +	intel_de_write_fw(dev_priv, SKL_PS_VPHASE(pipe, id),
> +			  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_vphase));
> +	intel_de_write_fw(dev_priv, SKL_PS_HPHASE(pipe, id),
> +			  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_hphase));
> +	intel_de_write_fw(dev_priv, SKL_PS_WIN_POS(pipe, id),
> +			  x << 16 | y);
> +	intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(pipe, id),
> +			  width << 16 | height);
> +
> +	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +}
> +
> +void
> +skl_program_plane_scaler(struct intel_plane *plane,
> +			 const struct intel_crtc_state *crtc_state,
> +			 const struct intel_plane_state *plane_state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	enum pipe pipe =3D plane->pipe;
> +	int scaler_id =3D plane_state->scaler_id;
> +	const struct intel_scaler *scaler =3D
> +		&crtc_state->scaler_state.scalers[scaler_id];
> +	int crtc_x =3D plane_state->uapi.dst.x1;
> +	int crtc_y =3D plane_state->uapi.dst.y1;
> +	u32 crtc_w =3D drm_rect_width(&plane_state->uapi.dst);
> +	u32 crtc_h =3D drm_rect_height(&plane_state->uapi.dst);
> +	u16 y_hphase, uv_rgb_hphase;
> +	u16 y_vphase, uv_rgb_vphase;
> +	int hscale, vscale;
> +	u32 ps_ctrl;
> +
> +	hscale =3D drm_rect_calc_hscale(&plane_state->uapi.src,
> +				      &plane_state->uapi.dst,
> +				      0, INT_MAX);
> +	vscale =3D drm_rect_calc_vscale(&plane_state->uapi.src,
> +				      &plane_state->uapi.dst,
> +				      0, INT_MAX);
> +
> +	/* TODO: handle sub-pixel coordinates */
> +	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
> +	    !icl_is_hdr_plane(dev_priv, plane->id)) {
> +		y_hphase =3D skl_scaler_calc_phase(1, hscale, false);
> +		y_vphase =3D skl_scaler_calc_phase(1, vscale, false);
> +
> +		/* MPEG2 chroma siting convention */
> +		uv_rgb_hphase =3D skl_scaler_calc_phase(2, hscale, true);
> +		uv_rgb_vphase =3D skl_scaler_calc_phase(2, vscale, false);
> +	} else {
> +		/* not used */
> +		y_hphase =3D 0;
> +		y_vphase =3D 0;
> +
> +		uv_rgb_hphase =3D skl_scaler_calc_phase(1, hscale, false);
> +		uv_rgb_vphase =3D skl_scaler_calc_phase(1, vscale, false);
> +	}
> +
> +	ps_ctrl =3D skl_scaler_get_filter_select(plane_state->hw.scaling_filter=
, 0);
> +	ps_ctrl |=3D PS_SCALER_EN | PS_PLANE_SEL(plane->id) | scaler->mode;
> +
> +	skl_scaler_setup_filter(dev_priv, pipe, scaler_id, 0,
> +				plane_state->hw.scaling_filter);
> +
> +	intel_de_write_fw(dev_priv, SKL_PS_CTRL(pipe, scaler_id), ps_ctrl);
> +	intel_de_write_fw(dev_priv, SKL_PS_VPHASE(pipe, scaler_id),
> +			  PS_Y_PHASE(y_vphase) | PS_UV_RGB_PHASE(uv_rgb_vphase));
> +	intel_de_write_fw(dev_priv, SKL_PS_HPHASE(pipe, scaler_id),
> +			  PS_Y_PHASE(y_hphase) | PS_UV_RGB_PHASE(uv_rgb_hphase));
> +	intel_de_write_fw(dev_priv, SKL_PS_WIN_POS(pipe, scaler_id),
> +			  (crtc_x << 16) | crtc_y);
> +	intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(pipe, scaler_id),
> +			  (crtc_w << 16) | crtc_h);
> +}
> +
> +static void skl_detach_scaler(struct intel_crtc *intel_crtc, int id)
> +{
> +	struct drm_device *dev =3D intel_crtc->base.dev;
> +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	unsigned long irqflags;
> +
> +	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> +
> +	intel_de_write_fw(dev_priv, SKL_PS_CTRL(intel_crtc->pipe, id), 0);
> +	intel_de_write_fw(dev_priv, SKL_PS_WIN_POS(intel_crtc->pipe, id), 0);
> +	intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(intel_crtc->pipe, id), 0);
> +
> +	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +}
> +
> +/*
> + * This function detaches (aka. unbinds) unused scalers in hardware
> + */
> +void skl_detach_scalers(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	const struct intel_crtc_scaler_state *scaler_state =3D
> +		&crtc_state->scaler_state;
> +	int i;
> +
> +	/* loop through and disable scalers that aren't in use */
> +	for (i =3D 0; i < intel_crtc->num_scalers; i++) {
> +		if (!scaler_state->scalers[i].in_use)
> +			skl_detach_scaler(intel_crtc, i);
> +	}
> +}
> +
> +void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
> +	int i;
> +
> +	for (i =3D 0; i < crtc->num_scalers; i++)
> +		skl_detach_scaler(crtc, i);
> +}
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/=
i915/display/skl_scaler.h
> new file mode 100644
> index 000000000000..0097d5d08e10
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> @@ -0,0 +1,29 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =A9 2020 Intel Corporation
> + */
> +#ifndef INTEL_SCALER_H
> +#define INTEL_SCALER_H
> +
> +#include <linux/types.h>
> +
> +enum drm_scaling_filter;
> +struct drm_i915_private;
> +struct intel_crtc_state;
> +struct intel_plane_state;
> +struct intel_plane;
> +enum pipe;
> +
> +int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state);
> +
> +int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
> +			    struct intel_plane_state *plane_state);
> +
> +void skl_pfit_enable(const struct intel_crtc_state *crtc_state);
> +
> +void skl_program_plane_scaler(struct intel_plane *plane,
> +			      const struct intel_crtc_state *crtc_state,
> +			      const struct intel_plane_state *plane_state);
> +void skl_detach_scalers(const struct intel_crtc_state *crtc_state);
> +void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state);
> +#endif
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 4ae1a2ef29ec..1f335cb09149 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -14,6 +14,7 @@
>  #include "intel_pm.h"
>  #include "intel_psr.h"
>  #include "intel_sprite.h"
> +#include "skl_scaler.h"
>  #include "skl_universal_plane.h"
>  =

>  static const u32 skl_plane_formats[] =3D {
> @@ -1054,7 +1055,7 @@ skl_program_plane(struct intel_plane *plane,
>  			  intel_plane_ggtt_offset(plane_state) + surf_addr);
>  =

>  	if (plane_state->scaler_id >=3D 0)
> -		skl_program_scaler(plane, crtc_state, plane_state);
> +		skl_program_plane_scaler(plane, crtc_state, plane_state);
>  =

>  	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.h b/drivers=
/gpu/drm/i915/display/skl_universal_plane.h
> index 70eb5010cd28..818266653630 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.h
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.h
> @@ -30,4 +30,8 @@ int skl_ccs_to_main_plane(const struct drm_framebuffer =
*fb, int ccs_plane);
>  int skl_calc_main_surface_offset(const struct intel_plane_state *plane_s=
tate,
>  				 int *x, int *y, u32 *offset);
>  =

> +bool icl_is_nv12_y_plane(struct drm_i915_private *dev_priv,
> +			 enum plane_id plane_id);
> +bool icl_is_hdr_plane(struct drm_i915_private *dev_priv, enum plane_id p=
lane_id);
> +
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index f94025ec603a..1059a26c1f58 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -38,6 +38,7 @@
>  #include "intel_fifo_underrun.h"
>  #include "intel_panel.h"
>  #include "intel_sideband.h"
> +#include "skl_scaler.h"
>  =

>  /* return pixels in terms of txbyteclkhs */
>  static u16 txbyteclkhs(u16 pixels, int bpp, int lane_count,
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
