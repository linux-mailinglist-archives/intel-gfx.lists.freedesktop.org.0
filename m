Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 059712DE643
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 16:13:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAE646E1F2;
	Fri, 18 Dec 2020 15:13:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DEB36E1F2
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Dec 2020 15:13:15 +0000 (UTC)
IronPort-SDR: XzQfg4OPQdWnT9HptVAzyhudYeaul4pyPYYFc+l2sr5w+lNwqhP3t8vWaxV+u1cSFc5Yaqjsd+
 OJL84dgyDBVg==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="171947656"
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="171947656"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 07:13:14 -0800
IronPort-SDR: 66mTlu5AiGUe7211trVnHl9pn5IeySOibQF/ILfDEYXGsegRhhonR6wSmP1Pl6TKj8i47sR1Vx
 JPnfZWIsC7Xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="414059170"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 18 Dec 2020 07:13:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Dec 2020 17:13:11 +0200
Date: Fri, 18 Dec 2020 17:13:11 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>
Message-ID: <X9zHB33bwOTQVeAm@intel.com>
References: <20201218060420.3203-1-airlied@gmail.com>
 <20201218060420.3203-11-airlied@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201218060420.3203-11-airlied@gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 10/13] drm/i915: migrate skl planes code new
 file (v2)
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

On Fri, Dec 18, 2020 at 04:04:17PM +1000, Dave Airlie wrote:
> From: Dave Airlie <airlied@redhat.com>
> =

> Rework the plane init calls to do the gen test one level higher.
> =

> Rework some of the plane helpers so they can live in new file,
> there is still some scope to clean up the plane/fb interactions
> later.
> =

> v2: drop atomic code back, rename file to Ville suggestions,
> add header file.
> =

> Signed-off-by: Dave Airlie <airlied@redhat.com>
> [Jani: fixed up sparse warnings.]
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |    3 +-
>  drivers/gpu/drm/i915/display/i9xx_plane.c     |    4 -
>  drivers/gpu/drm/i915/display/icl_dsi.c        |    1 +
>  drivers/gpu/drm/i915/display/intel_crtc.c     |   13 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |    1 +
>  drivers/gpu/drm/i915/display/intel_display.c  | 1401 +--------
>  drivers/gpu/drm/i915/display/intel_display.h  |   29 +-
>  .../drm/i915/display/intel_display_types.h    |   21 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |    1 +
>  drivers/gpu/drm/i915/display/intel_sprite.c   | 1395 ---------
>  drivers/gpu/drm/i915/display/intel_sprite.h   |    3 -
>  .../drm/i915/display/skl_universal_plane.c    | 2790 +++++++++++++++++
>  .../drm/i915/display/skl_universal_plane.h    |   37 +
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |    1 +
>  drivers/gpu/drm/i915/intel_pm.c               |    1 +
>  15 files changed, 2893 insertions(+), 2808 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/skl_universal_plane.c
>  create mode 100644 drivers/gpu/drm/i915/display/skl_universal_plane.h
> =

> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index e1a24239e25e..a055860daddb 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -219,7 +219,8 @@ i915-y +=3D \
>  	display/intel_sprite.o \
>  	display/intel_tc.o \
>  	display/intel_vga.o \
> -	display/i9xx_plane.o
> +	display/i9xx_plane.o \
> +	display/skl_universal_plane.o
>  i915-$(CONFIG_ACPI) +=3D \
>  	display/intel_acpi.o \
>  	display/intel_opregion.o
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/=
i915/display/i9xx_plane.c
> index b78985c855a5..6c568079f492 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -578,10 +578,6 @@ intel_primary_plane_create(struct drm_i915_private *=
dev_priv, enum pipe pipe)
>  	int num_formats;
>  	int ret, zpos;
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 9)
> -		return skl_universal_plane_create(dev_priv, pipe,
> -						  PLANE_PRIMARY);
> -
>  	plane =3D intel_plane_alloc();
>  	if (IS_ERR(plane))
>  		return plane;
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 9d245a689323..9eeec6fadec7 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -35,6 +35,7 @@
>  #include "intel_dsi.h"
>  #include "intel_panel.h"
>  #include "intel_vdsc.h"
> +#include "skl_universal_plane.h"
>  =

>  static int header_credits_available(struct drm_i915_private *dev_priv,
>  				    enum transcoder dsi_trans)
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/=
i915/display/intel_crtc.c
> index ad63df163850..d89cf6f2d97d 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -20,6 +20,7 @@
>  #include "intel_pipe_crc.h"
>  #include "intel_sprite.h"
>  #include "i9xx_plane.h"
> +#include "skl_universal_plane.h"
>  =

>  static void assert_vblank_disabled(struct drm_crtc *crtc)
>  {
> @@ -244,7 +245,11 @@ int intel_crtc_init(struct drm_i915_private *dev_pri=
v, enum pipe pipe)
>  	crtc->pipe =3D pipe;
>  	crtc->num_scalers =3D RUNTIME_INFO(dev_priv)->num_scalers[pipe];
>  =

> -	primary =3D intel_primary_plane_create(dev_priv, pipe);
> +	if (INTEL_GEN(dev_priv) >=3D 9)
> +		primary =3D skl_universal_plane_create(dev_priv, pipe,
> +						     PLANE_PRIMARY);
> +	else
> +		primary =3D intel_primary_plane_create(dev_priv, pipe);

Ah, this got inlined here. Seems ok. But I'd probably follow
up with s/intel/i9xx/ renamed for the pre-skl function.

>  	if (IS_ERR(primary)) {
>  		ret =3D PTR_ERR(primary);
>  		goto fail;
> @@ -254,7 +259,11 @@ int intel_crtc_init(struct drm_i915_private *dev_pri=
v, enum pipe pipe)
>  	for_each_sprite(dev_priv, pipe, sprite) {
>  		struct intel_plane *plane;
>  =

> -		plane =3D intel_sprite_plane_create(dev_priv, pipe, sprite);
> +		if (INTEL_GEN(dev_priv) >=3D 9)
> +			plane =3D skl_universal_plane_create(dev_priv, pipe,
> +							   PLANE_SPRITE0 + sprite);
> +		else
> +			plane =3D intel_sprite_plane_create(dev_priv, pipe, sprite);

Ditto here I guess. Though until the sprite code moves into
i9xx_plane.c it does seem a bit off.

Oh well, I guess the intel_ prefix for these two is fine for the time
being.

<snip>
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

The scaler code should not be moved. The scaler is shared by both pfit
and planes. It really should be moved to a totally new file (atm it's
semi-randomly split between intel_display.c and intel_atomic.c).

<snip>
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
> -inline u32 skl_scaler_get_filter_select(enum drm_scaling_filter filter, =
int set)
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

Lot more scaler code that should not be moved.

The rest of patch looks good.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
