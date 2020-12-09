Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D13E52D414F
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 12:48:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C56C66EA0E;
	Wed,  9 Dec 2020 11:48:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82D526EA0E
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 11:48:11 +0000 (UTC)
IronPort-SDR: 2QI/Oz+4BSIw2Py/ZPo2s6qvg47Iyc96Jc9l1MuIcYBksIRk6o6cVCO0aTXLgwwkfXyhV1crdv
 1DfKL4hLvung==
X-IronPort-AV: E=McAfee;i="6000,8403,9829"; a="171490873"
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; d="scan'208";a="171490873"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2020 03:48:10 -0800
IronPort-SDR: pWrgMxFhgpHoztQ/Bok9lIuKrkV257FwV5Ts7rsOu6cValYtaDeHu699nGV6R3x+z9sTU4lt+0
 EI7rexXtktkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; d="scan'208";a="375518081"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 09 Dec 2020 03:48:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Dec 2020 13:48:07 +0200
Date: Wed, 9 Dec 2020 13:48:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>
Message-ID: <X9C5d28Cel8ftYz6@intel.com>
References: <20201209005152.18172-1-airlied@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201209005152.18172-1-airlied@gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: refactor cursor code out of
 i915_display.c
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

On Wed, Dec 09, 2020 at 10:51:52AM +1000, Dave Airlie wrote:
> From: Dave Airlie <airlied@redhat.com>
> =

> This file is a monster, let's start simple, the cursor plane code
> seems pretty standalone, and splits out easily enough.

Is this different from
https://patchwork.freedesktop.org/series/83704/ ?

> =

> Signed-off-by: Dave Airlie <airlied@redhat.com>
> ---
>  drivers/gpu/drm/i915/Makefile                |   1 +
>  drivers/gpu/drm/i915/display/intel_cursor.c  | 837 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.c | 786 +----------------
>  drivers/gpu/drm/i915/display/intel_display.h |  12 +
>  4 files changed, 856 insertions(+), 780 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_cursor.c
> =

> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index e5574e506a5c..98a35b939052 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -197,6 +197,7 @@ i915-y +=3D \
>  	display/intel_combo_phy.o \
>  	display/intel_connector.o \
>  	display/intel_csr.o \
> +	display/intel_cursor.o \
>  	display/intel_display.o \
>  	display/intel_display_power.o \
>  	display/intel_dpio_phy.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/dr=
m/i915/display/intel_cursor.c
> new file mode 100644
> index 000000000000..d50e712f9113
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -0,0 +1,837 @@
> +/*
> + * Copyright =A9 2006-2007 Intel Corporation
> + *
> + * Permission is hereby granted, free of charge, to any person obtaining=
 a
> + * copy of this software and associated documentation files (the "Softwa=
re"),
> + * to deal in the Software without restriction, including without limita=
tion
> + * the rights to use, copy, modify, merge, publish, distribute, sublicen=
se,
> + * and/or sell copies of the Software, and to permit persons to whom the
> + * Software is furnished to do so, subject to the following conditions:
> + *
> + * The above copyright notice and this permission notice (including the =
next
> + * paragraph) shall be included in all copies or substantial portions of=
 the
> + * Software.
> + *
> + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRE=
SS OR
> + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILI=
TY,
> + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SH=
ALL
> + * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR =
OTHER
> + * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISI=
NG
> + * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
> + * DEALINGS IN THE SOFTWARE.
> + *
> + */
> +
> +#include <linux/kernel.h>
> +
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_atomic_uapi.h>
> +#include <drm/drm_damage_helper.h>
> +#include <drm/drm_plane_helper.h>
> +#include <drm/drm_fourcc.h>
> +
> +#include "intel_atomic.h"
> +#include "intel_atomic_plane.h"
> +#include "intel_display_types.h"
> +#include "intel_display.h"
> +
> +#include "intel_frontbuffer.h"
> +#include "intel_pm.h"
> +#include "intel_psr.h"
> +#include "intel_sprite.h"
> +
> +/* Cursor formats */
> +static const u32 intel_cursor_formats[] =3D {
> +	DRM_FORMAT_ARGB8888,
> +};
> +
> +static const u64 cursor_format_modifiers[] =3D {
> +	DRM_FORMAT_MOD_LINEAR,
> +	DRM_FORMAT_MOD_INVALID
> +};
> +
> +static bool
> +needs_modeset(const struct intel_crtc_state *state)
> +{
> +	return drm_atomic_crtc_needs_modeset(&state->uapi);
> +}
> +
> +static struct intel_frontbuffer *
> +to_intel_frontbuffer(struct drm_framebuffer *fb)
> +{
> +	return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;
> +}
> +
> +static u32 intel_cursor_base(const struct intel_plane_state *plane_state)
> +{
> +	struct drm_i915_private *dev_priv =3D
> +		to_i915(plane_state->uapi.plane->dev);
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	const struct drm_i915_gem_object *obj =3D intel_fb_obj(fb);
> +	u32 base;
> +
> +	if (INTEL_INFO(dev_priv)->display.cursor_needs_physical)
> +		base =3D sg_dma_address(obj->mm.pages->sgl);
> +	else
> +		base =3D intel_plane_ggtt_offset(plane_state);
> +
> +	return base + plane_state->color_plane[0].offset;
> +}
> +
> +static u32 intel_cursor_position(const struct intel_plane_state *plane_s=
tate)
> +{
> +	int x =3D plane_state->uapi.dst.x1;
> +	int y =3D plane_state->uapi.dst.y1;
> +	u32 pos =3D 0;
> +
> +	if (x < 0) {
> +		pos |=3D CURSOR_POS_SIGN << CURSOR_X_SHIFT;
> +		x =3D -x;
> +	}
> +	pos |=3D x << CURSOR_X_SHIFT;
> +
> +	if (y < 0) {
> +		pos |=3D CURSOR_POS_SIGN << CURSOR_Y_SHIFT;
> +		y =3D -y;
> +	}
> +	pos |=3D y << CURSOR_Y_SHIFT;
> +
> +	return pos;
> +}
> +
> +static bool intel_cursor_size_ok(const struct intel_plane_state *plane_s=
tate)
> +{
> +	const struct drm_mode_config *config =3D
> +		&plane_state->uapi.plane->dev->mode_config;
> +	int width =3D drm_rect_width(&plane_state->uapi.dst);
> +	int height =3D drm_rect_height(&plane_state->uapi.dst);
> +
> +	return width > 0 && width <=3D config->cursor_width &&
> +		height > 0 && height <=3D config->cursor_height;
> +}
> +
> +static int intel_cursor_check_surface(struct intel_plane_state *plane_st=
ate)
> +{
> +	struct drm_i915_private *dev_priv =3D
> +		to_i915(plane_state->uapi.plane->dev);
> +	unsigned int rotation =3D plane_state->hw.rotation;
> +	int src_x, src_y;
> +	u32 offset;
> +	int ret;
> +
> +	ret =3D intel_plane_compute_gtt(plane_state);
> +	if (ret)
> +		return ret;
> +
> +	if (!plane_state->uapi.visible)
> +		return 0;
> +
> +	src_x =3D plane_state->uapi.src.x1 >> 16;
> +	src_y =3D plane_state->uapi.src.y1 >> 16;
> +
> +	intel_add_fb_offsets(&src_x, &src_y, plane_state, 0);
> +	offset =3D intel_plane_compute_aligned_offset(&src_x, &src_y,
> +						    plane_state, 0);
> +
> +	if (src_x !=3D 0 || src_y !=3D 0) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Arbitrary cursor panning not supported\n");
> +		return -EINVAL;
> +	}
> +
> +	/*
> +	 * Put the final coordinates back so that the src
> +	 * coordinate checks will see the right values.
> +	 */
> +	drm_rect_translate_to(&plane_state->uapi.src,
> +			      src_x << 16, src_y << 16);
> +
> +	/* ILK+ do this automagically in hardware */
> +	if (HAS_GMCH(dev_priv) && rotation & DRM_MODE_ROTATE_180) {
> +		const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +		int src_w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> +		int src_h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
> +
> +		offset +=3D (src_h * src_w - 1) * fb->format->cpp[0];
> +	}
> +
> +	plane_state->color_plane[0].offset =3D offset;
> +	plane_state->color_plane[0].x =3D src_x;
> +	plane_state->color_plane[0].y =3D src_y;
> +
> +	return 0;
> +}
> +
> +static int intel_check_cursor(struct intel_crtc_state *crtc_state,
> +			      struct intel_plane_state *plane_state)
> +{
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	struct drm_i915_private *i915 =3D to_i915(plane_state->uapi.plane->dev);
> +	const struct drm_rect src =3D plane_state->uapi.src;
> +	const struct drm_rect dst =3D plane_state->uapi.dst;
> +	int ret;
> +
> +	if (fb && fb->modifier !=3D DRM_FORMAT_MOD_LINEAR) {
> +		drm_dbg_kms(&i915->drm, "cursor cannot be tiled\n");
> +		return -EINVAL;
> +	}
> +
> +	ret =3D intel_atomic_plane_check_clipping(plane_state, crtc_state,
> +						DRM_PLANE_HELPER_NO_SCALING,
> +						DRM_PLANE_HELPER_NO_SCALING,
> +						true);
> +	if (ret)
> +		return ret;
> +
> +	/* Use the unclipped src/dst rectangles, which we program to hw */
> +	plane_state->uapi.src =3D src;
> +	plane_state->uapi.dst =3D dst;
> +
> +	ret =3D intel_cursor_check_surface(plane_state);
> +	if (ret)
> +		return ret;
> +
> +	if (!plane_state->uapi.visible)
> +		return 0;
> +
> +	ret =3D intel_plane_check_src_coordinates(plane_state);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +static unsigned int
> +i845_cursor_max_stride(struct intel_plane *plane,
> +		       u32 pixel_format, u64 modifier,
> +		       unsigned int rotation)
> +{
> +	return 2048;
> +}
> +
> +static u32 i845_cursor_ctl_crtc(const struct intel_crtc_state *crtc_stat=
e)
> +{
> +	u32 cntl =3D 0;
> +
> +	if (crtc_state->gamma_enable)
> +		cntl |=3D CURSOR_GAMMA_ENABLE;
> +
> +	return cntl;
> +}
> +
> +static u32 i845_cursor_ctl(const struct intel_crtc_state *crtc_state,
> +			   const struct intel_plane_state *plane_state)
> +{
> +	return CURSOR_ENABLE |
> +		CURSOR_FORMAT_ARGB |
> +		CURSOR_STRIDE(plane_state->color_plane[0].stride);
> +}
> +
> +static bool i845_cursor_size_ok(const struct intel_plane_state *plane_st=
ate)
> +{
> +	int width =3D drm_rect_width(&plane_state->uapi.dst);
> +
> +	/*
> +	 * 845g/865g are only limited by the width of their cursors,
> +	 * the height is arbitrary up to the precision of the register.
> +	 */
> +	return intel_cursor_size_ok(plane_state) && IS_ALIGNED(width, 64);
> +}
> +
> +static int i845_check_cursor(struct intel_crtc_state *crtc_state,
> +			     struct intel_plane_state *plane_state)
> +{
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	struct drm_i915_private *i915 =3D to_i915(plane_state->uapi.plane->dev);
> +	int ret;
> +
> +	ret =3D intel_check_cursor(crtc_state, plane_state);
> +	if (ret)
> +		return ret;
> +
> +	/* if we want to turn off the cursor ignore width and height */
> +	if (!fb)
> +		return 0;
> +
> +	/* Check for which cursor types we support */
> +	if (!i845_cursor_size_ok(plane_state)) {
> +		drm_dbg_kms(&i915->drm,
> +			    "Cursor dimension %dx%d not supported\n",
> +			    drm_rect_width(&plane_state->uapi.dst),
> +			    drm_rect_height(&plane_state->uapi.dst));
> +		return -EINVAL;
> +	}
> +
> +	drm_WARN_ON(&i915->drm, plane_state->uapi.visible &&
> +		    plane_state->color_plane[0].stride !=3D fb->pitches[0]);
> +
> +	switch (fb->pitches[0]) {
> +	case 256:
> +	case 512:
> +	case 1024:
> +	case 2048:
> +		break;
> +	default:
> +		 drm_dbg_kms(&i915->drm, "Invalid cursor stride (%u)\n",
> +			     fb->pitches[0]);
> +		return -EINVAL;
> +	}
> +
> +	plane_state->ctl =3D i845_cursor_ctl(crtc_state, plane_state);
> +
> +	return 0;
> +}
> +
> +static void i845_update_cursor(struct intel_plane *plane,
> +			       const struct intel_crtc_state *crtc_state,
> +			       const struct intel_plane_state *plane_state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	u32 cntl =3D 0, base =3D 0, pos =3D 0, size =3D 0;
> +	unsigned long irqflags;
> +
> +	if (plane_state && plane_state->uapi.visible) {
> +		unsigned int width =3D drm_rect_width(&plane_state->uapi.dst);
> +		unsigned int height =3D drm_rect_height(&plane_state->uapi.dst);
> +
> +		cntl =3D plane_state->ctl |
> +			i845_cursor_ctl_crtc(crtc_state);
> +
> +		size =3D (height << 12) | width;
> +
> +		base =3D intel_cursor_base(plane_state);
> +		pos =3D intel_cursor_position(plane_state);
> +	}
> +
> +	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> +
> +	/* On these chipsets we can only modify the base/size/stride
> +	 * whilst the cursor is disabled.
> +	 */
> +	if (plane->cursor.base !=3D base ||
> +	    plane->cursor.size !=3D size ||
> +	    plane->cursor.cntl !=3D cntl) {
> +		intel_de_write_fw(dev_priv, CURCNTR(PIPE_A), 0);
> +		intel_de_write_fw(dev_priv, CURBASE(PIPE_A), base);
> +		intel_de_write_fw(dev_priv, CURSIZE, size);
> +		intel_de_write_fw(dev_priv, CURPOS(PIPE_A), pos);
> +		intel_de_write_fw(dev_priv, CURCNTR(PIPE_A), cntl);
> +
> +		plane->cursor.base =3D base;
> +		plane->cursor.size =3D size;
> +		plane->cursor.cntl =3D cntl;
> +	} else {
> +		intel_de_write_fw(dev_priv, CURPOS(PIPE_A), pos);
> +	}
> +
> +	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +}
> +
> +static void i845_disable_cursor(struct intel_plane *plane,
> +				const struct intel_crtc_state *crtc_state)
> +{
> +	i845_update_cursor(plane, crtc_state, NULL);
> +}
> +
> +static bool i845_cursor_get_hw_state(struct intel_plane *plane,
> +				     enum pipe *pipe)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	enum intel_display_power_domain power_domain;
> +	intel_wakeref_t wakeref;
> +	bool ret;
> +
> +	power_domain =3D POWER_DOMAIN_PIPE(PIPE_A);
> +	wakeref =3D intel_display_power_get_if_enabled(dev_priv, power_domain);
> +	if (!wakeref)
> +		return false;
> +
> +	ret =3D intel_de_read(dev_priv, CURCNTR(PIPE_A)) & CURSOR_ENABLE;
> +
> +	*pipe =3D PIPE_A;
> +
> +	intel_display_power_put(dev_priv, power_domain, wakeref);
> +
> +	return ret;
> +}
> +
> +static unsigned int
> +i9xx_cursor_max_stride(struct intel_plane *plane,
> +		       u32 pixel_format, u64 modifier,
> +		       unsigned int rotation)
> +{
> +	return plane->base.dev->mode_config.cursor_width * 4;
> +}
> +
> +static u32 i9xx_cursor_ctl_crtc(const struct intel_crtc_state *crtc_stat=
e)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	u32 cntl =3D 0;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 11)
> +		return cntl;
> +
> +	if (crtc_state->gamma_enable)
> +		cntl =3D MCURSOR_GAMMA_ENABLE;
> +
> +	if (crtc_state->csc_enable)
> +		cntl |=3D MCURSOR_PIPE_CSC_ENABLE;
> +
> +	if (INTEL_GEN(dev_priv) < 5 && !IS_G4X(dev_priv))
> +		cntl |=3D MCURSOR_PIPE_SELECT(crtc->pipe);
> +
> +	return cntl;
> +}
> +
> +static u32 i9xx_cursor_ctl(const struct intel_crtc_state *crtc_state,
> +			   const struct intel_plane_state *plane_state)
> +{
> +	struct drm_i915_private *dev_priv =3D
> +		to_i915(plane_state->uapi.plane->dev);
> +	u32 cntl =3D 0;
> +
> +	if (IS_GEN(dev_priv, 6) || IS_IVYBRIDGE(dev_priv))
> +		cntl |=3D MCURSOR_TRICKLE_FEED_DISABLE;
> +
> +	switch (drm_rect_width(&plane_state->uapi.dst)) {
> +	case 64:
> +		cntl |=3D MCURSOR_MODE_64_ARGB_AX;
> +		break;
> +	case 128:
> +		cntl |=3D MCURSOR_MODE_128_ARGB_AX;
> +		break;
> +	case 256:
> +		cntl |=3D MCURSOR_MODE_256_ARGB_AX;
> +		break;
> +	default:
> +		MISSING_CASE(drm_rect_width(&plane_state->uapi.dst));
> +		return 0;
> +	}
> +
> +	if (plane_state->hw.rotation & DRM_MODE_ROTATE_180)
> +		cntl |=3D MCURSOR_ROTATE_180;
> +
> +	return cntl;
> +}
> +
> +static bool i9xx_cursor_size_ok(const struct intel_plane_state *plane_st=
ate)
> +{
> +	struct drm_i915_private *dev_priv =3D
> +		to_i915(plane_state->uapi.plane->dev);
> +	int width =3D drm_rect_width(&plane_state->uapi.dst);
> +	int height =3D drm_rect_height(&plane_state->uapi.dst);
> +
> +	if (!intel_cursor_size_ok(plane_state))
> +		return false;
> +
> +	/* Cursor width is limited to a few power-of-two sizes */
> +	switch (width) {
> +	case 256:
> +	case 128:
> +	case 64:
> +		break;
> +	default:
> +		return false;
> +	}
> +
> +	/*
> +	 * IVB+ have CUR_FBC_CTL which allows an arbitrary cursor
> +	 * height from 8 lines up to the cursor width, when the
> +	 * cursor is not rotated. Everything else requires square
> +	 * cursors.
> +	 */
> +	if (HAS_CUR_FBC(dev_priv) &&
> +	    plane_state->hw.rotation & DRM_MODE_ROTATE_0) {
> +		if (height < 8 || height > width)
> +			return false;
> +	} else {
> +		if (height !=3D width)
> +			return false;
> +	}
> +
> +	return true;
> +}
> +
> +static int i9xx_check_cursor(struct intel_crtc_state *crtc_state,
> +			     struct intel_plane_state *plane_state)
> +{
> +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	enum pipe pipe =3D plane->pipe;
> +	int ret;
> +
> +	ret =3D intel_check_cursor(crtc_state, plane_state);
> +	if (ret)
> +		return ret;
> +
> +	/* if we want to turn off the cursor ignore width and height */
> +	if (!fb)
> +		return 0;
> +
> +	/* Check for which cursor types we support */
> +	if (!i9xx_cursor_size_ok(plane_state)) {
> +		drm_dbg(&dev_priv->drm,
> +			"Cursor dimension %dx%d not supported\n",
> +			drm_rect_width(&plane_state->uapi.dst),
> +			drm_rect_height(&plane_state->uapi.dst));
> +		return -EINVAL;
> +	}
> +
> +	drm_WARN_ON(&dev_priv->drm, plane_state->uapi.visible &&
> +		    plane_state->color_plane[0].stride !=3D fb->pitches[0]);
> +
> +	if (fb->pitches[0] !=3D
> +	    drm_rect_width(&plane_state->uapi.dst) * fb->format->cpp[0]) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Invalid cursor stride (%u) (cursor width %d)\n",
> +			    fb->pitches[0],
> +			    drm_rect_width(&plane_state->uapi.dst));
> +		return -EINVAL;
> +	}
> +
> +	/*
> +	 * There's something wrong with the cursor on CHV pipe C.
> +	 * If it straddles the left edge of the screen then
> +	 * moving it away from the edge or disabling it often
> +	 * results in a pipe underrun, and often that can lead to
> +	 * dead pipe (constant underrun reported, and it scans
> +	 * out just a solid color). To recover from that, the
> +	 * display power well must be turned off and on again.
> +	 * Refuse the put the cursor into that compromised position.
> +	 */
> +	if (IS_CHERRYVIEW(dev_priv) && pipe =3D=3D PIPE_C &&
> +	    plane_state->uapi.visible && plane_state->uapi.dst.x1 < 0) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "CHV cursor C not allowed to straddle the left screen edge\n");
> +		return -EINVAL;
> +	}
> +
> +	plane_state->ctl =3D i9xx_cursor_ctl(crtc_state, plane_state);
> +
> +	return 0;
> +}
> +
> +static void i9xx_update_cursor(struct intel_plane *plane,
> +			       const struct intel_crtc_state *crtc_state,
> +			       const struct intel_plane_state *plane_state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	enum pipe pipe =3D plane->pipe;
> +	u32 cntl =3D 0, base =3D 0, pos =3D 0, fbc_ctl =3D 0;
> +	unsigned long irqflags;
> +
> +	if (plane_state && plane_state->uapi.visible) {
> +		unsigned width =3D drm_rect_width(&plane_state->uapi.dst);
> +		unsigned height =3D drm_rect_height(&plane_state->uapi.dst);
> +
> +		cntl =3D plane_state->ctl |
> +			i9xx_cursor_ctl_crtc(crtc_state);
> +
> +		if (width !=3D height)
> +			fbc_ctl =3D CUR_FBC_CTL_EN | (height - 1);
> +
> +		base =3D intel_cursor_base(plane_state);
> +		pos =3D intel_cursor_position(plane_state);
> +	}
> +
> +	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> +
> +	/*
> +	 * On some platforms writing CURCNTR first will also
> +	 * cause CURPOS to be armed by the CURBASE write.
> +	 * Without the CURCNTR write the CURPOS write would
> +	 * arm itself. Thus we always update CURCNTR before
> +	 * CURPOS.
> +	 *
> +	 * On other platforms CURPOS always requires the
> +	 * CURBASE write to arm the update. Additonally
> +	 * a write to any of the cursor register will cancel
> +	 * an already armed cursor update. Thus leaving out
> +	 * the CURBASE write after CURPOS could lead to a
> +	 * cursor that doesn't appear to move, or even change
> +	 * shape. Thus we always write CURBASE.
> +	 *
> +	 * The other registers are armed by by the CURBASE write
> +	 * except when the plane is getting enabled at which time
> +	 * the CURCNTR write arms the update.
> +	 */
> +
> +	if (INTEL_GEN(dev_priv) >=3D 9)
> +		skl_write_cursor_wm(plane, crtc_state);
> +
> +	if (!needs_modeset(crtc_state))
> +		intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, 0);
> +
> +	if (plane->cursor.base !=3D base ||
> +	    plane->cursor.size !=3D fbc_ctl ||
> +	    plane->cursor.cntl !=3D cntl) {
> +		if (HAS_CUR_FBC(dev_priv))
> +			intel_de_write_fw(dev_priv, CUR_FBC_CTL(pipe),
> +					  fbc_ctl);
> +		intel_de_write_fw(dev_priv, CURCNTR(pipe), cntl);
> +		intel_de_write_fw(dev_priv, CURPOS(pipe), pos);
> +		intel_de_write_fw(dev_priv, CURBASE(pipe), base);
> +
> +		plane->cursor.base =3D base;
> +		plane->cursor.size =3D fbc_ctl;
> +		plane->cursor.cntl =3D cntl;
> +	} else {
> +		intel_de_write_fw(dev_priv, CURPOS(pipe), pos);
> +		intel_de_write_fw(dev_priv, CURBASE(pipe), base);
> +	}
> +
> +	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +}
> +
> +static void i9xx_disable_cursor(struct intel_plane *plane,
> +				const struct intel_crtc_state *crtc_state)
> +{
> +	i9xx_update_cursor(plane, crtc_state, NULL);
> +}
> +
> +static bool i9xx_cursor_get_hw_state(struct intel_plane *plane,
> +				     enum pipe *pipe)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	enum intel_display_power_domain power_domain;
> +	intel_wakeref_t wakeref;
> +	bool ret;
> +	u32 val;
> +
> +	/*
> +	 * Not 100% correct for planes that can move between pipes,
> +	 * but that's only the case for gen2-3 which don't have any
> +	 * display power wells.
> +	 */
> +	power_domain =3D POWER_DOMAIN_PIPE(plane->pipe);
> +	wakeref =3D intel_display_power_get_if_enabled(dev_priv, power_domain);
> +	if (!wakeref)
> +		return false;
> +
> +	val =3D intel_de_read(dev_priv, CURCNTR(plane->pipe));
> +
> +	ret =3D val & MCURSOR_MODE;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 5 || IS_G4X(dev_priv))
> +		*pipe =3D plane->pipe;
> +	else
> +		*pipe =3D (val & MCURSOR_PIPE_SELECT_MASK) >>
> +			MCURSOR_PIPE_SELECT_SHIFT;
> +
> +	intel_display_power_put(dev_priv, power_domain, wakeref);
> +
> +	return ret;
> +}
> +
> +static bool intel_cursor_format_mod_supported(struct drm_plane *_plane,
> +					      u32 format, u64 modifier)
> +{
> +	return modifier =3D=3D DRM_FORMAT_MOD_LINEAR &&
> +		format =3D=3D DRM_FORMAT_ARGB8888;
> +}
> +
> +static int
> +intel_legacy_cursor_update(struct drm_plane *_plane,
> +			   struct drm_crtc *_crtc,
> +			   struct drm_framebuffer *fb,
> +			   int crtc_x, int crtc_y,
> +			   unsigned int crtc_w, unsigned int crtc_h,
> +			   u32 src_x, u32 src_y,
> +			   u32 src_w, u32 src_h,
> +			   struct drm_modeset_acquire_ctx *ctx)
> +{
> +	struct intel_plane *plane =3D to_intel_plane(_plane);
> +	struct intel_crtc *crtc =3D to_intel_crtc(_crtc);
> +	struct intel_plane_state *old_plane_state =3D
> +		to_intel_plane_state(plane->base.state);
> +	struct intel_plane_state *new_plane_state;
> +	struct intel_crtc_state *crtc_state =3D
> +		to_intel_crtc_state(crtc->base.state);
> +	struct intel_crtc_state *new_crtc_state;
> +	int ret;
> +
> +	/*
> +	 * When crtc is inactive or there is a modeset pending,
> +	 * wait for it to complete in the slowpath
> +	 *
> +	 * FIXME bigjoiner fastpath would be good
> +	 */
> +	if (!crtc_state->hw.active || needs_modeset(crtc_state) ||
> +	    crtc_state->update_pipe || crtc_state->bigjoiner)
> +		goto slow;
> +
> +	/*
> +	 * Don't do an async update if there is an outstanding commit modifying
> +	 * the plane.  This prevents our async update's changes from getting
> +	 * overridden by a previous synchronous update's state.
> +	 */
> +	if (old_plane_state->uapi.commit &&
> +	    !try_wait_for_completion(&old_plane_state->uapi.commit->hw_done))
> +		goto slow;
> +
> +	/*
> +	 * If any parameters change that may affect watermarks,
> +	 * take the slowpath. Only changing fb or position should be
> +	 * in the fastpath.
> +	 */
> +	if (old_plane_state->uapi.crtc !=3D &crtc->base ||
> +	    old_plane_state->uapi.src_w !=3D src_w ||
> +	    old_plane_state->uapi.src_h !=3D src_h ||
> +	    old_plane_state->uapi.crtc_w !=3D crtc_w ||
> +	    old_plane_state->uapi.crtc_h !=3D crtc_h ||
> +	    !old_plane_state->uapi.fb !=3D !fb)
> +		goto slow;
> +
> +	new_plane_state =3D to_intel_plane_state(intel_plane_duplicate_state(&p=
lane->base));
> +	if (!new_plane_state)
> +		return -ENOMEM;
> +
> +	new_crtc_state =3D to_intel_crtc_state(intel_crtc_duplicate_state(&crtc=
->base));
> +	if (!new_crtc_state) {
> +		ret =3D -ENOMEM;
> +		goto out_free;
> +	}
> +
> +	drm_atomic_set_fb_for_plane(&new_plane_state->uapi, fb);
> +
> +	new_plane_state->uapi.src_x =3D src_x;
> +	new_plane_state->uapi.src_y =3D src_y;
> +	new_plane_state->uapi.src_w =3D src_w;
> +	new_plane_state->uapi.src_h =3D src_h;
> +	new_plane_state->uapi.crtc_x =3D crtc_x;
> +	new_plane_state->uapi.crtc_y =3D crtc_y;
> +	new_plane_state->uapi.crtc_w =3D crtc_w;
> +	new_plane_state->uapi.crtc_h =3D crtc_h;
> +
> +	intel_plane_copy_uapi_to_hw_state(new_plane_state, new_plane_state, crt=
c);
> +
> +	ret =3D intel_plane_atomic_check_with_state(crtc_state, new_crtc_state,
> +						  old_plane_state, new_plane_state);
> +	if (ret)
> +		goto out_free;
> +
> +	ret =3D intel_plane_pin_fb(new_plane_state);
> +	if (ret)
> +		goto out_free;
> +
> +	intel_frontbuffer_flush(to_intel_frontbuffer(new_plane_state->hw.fb),
> +				ORIGIN_FLIP);
> +	intel_frontbuffer_track(to_intel_frontbuffer(old_plane_state->hw.fb),
> +				to_intel_frontbuffer(new_plane_state->hw.fb),
> +				plane->frontbuffer_bit);
> +
> +	/* Swap plane state */
> +	plane->base.state =3D &new_plane_state->uapi;
> +
> +	/*
> +	 * We cannot swap crtc_state as it may be in use by an atomic commit or
> +	 * page flip that's running simultaneously. If we swap crtc_state and
> +	 * destroy the old state, we will cause a use-after-free there.
> +	 *
> +	 * Only update active_planes, which is needed for our internal
> +	 * bookkeeping. Either value will do the right thing when updating
> +	 * planes atomically. If the cursor was part of the atomic update then
> +	 * we would have taken the slowpath.
> +	 */
> +	crtc_state->active_planes =3D new_crtc_state->active_planes;
> +
> +	if (new_plane_state->uapi.visible)
> +		intel_update_plane(plane, crtc_state, new_plane_state);
> +	else
> +		intel_disable_plane(plane, crtc_state);
> +
> +	intel_plane_unpin_fb(old_plane_state);
> +
> +out_free:
> +	if (new_crtc_state)
> +		intel_crtc_destroy_state(&crtc->base, &new_crtc_state->uapi);
> +	if (ret)
> +		intel_plane_destroy_state(&plane->base, &new_plane_state->uapi);
> +	else
> +		intel_plane_destroy_state(&plane->base, &old_plane_state->uapi);
> +	return ret;
> +
> +slow:
> +	return drm_atomic_helper_update_plane(&plane->base, &crtc->base, fb,
> +					      crtc_x, crtc_y, crtc_w, crtc_h,
> +					      src_x, src_y, src_w, src_h, ctx);
> +}
> +
> +static const struct drm_plane_funcs intel_cursor_plane_funcs =3D {
> +	.update_plane =3D intel_legacy_cursor_update,
> +	.disable_plane =3D drm_atomic_helper_disable_plane,
> +	.destroy =3D intel_plane_destroy,
> +	.atomic_duplicate_state =3D intel_plane_duplicate_state,
> +	.atomic_destroy_state =3D intel_plane_destroy_state,
> +	.format_mod_supported =3D intel_cursor_format_mod_supported,
> +};
> +
> +struct intel_plane *
> +intel_cursor_plane_create(struct drm_i915_private *dev_priv,
> +			  enum pipe pipe)
> +{
> +	struct intel_plane *cursor;
> +	int ret, zpos;
> +
> +	cursor =3D intel_plane_alloc();
> +	if (IS_ERR(cursor))
> +		return cursor;
> +
> +	cursor->pipe =3D pipe;
> +	cursor->i9xx_plane =3D (enum i9xx_plane_id) pipe;
> +	cursor->id =3D PLANE_CURSOR;
> +	cursor->frontbuffer_bit =3D INTEL_FRONTBUFFER(pipe, cursor->id);
> +
> +	if (IS_I845G(dev_priv) || IS_I865G(dev_priv)) {
> +		cursor->max_stride =3D i845_cursor_max_stride;
> +		cursor->update_plane =3D i845_update_cursor;
> +		cursor->disable_plane =3D i845_disable_cursor;
> +		cursor->get_hw_state =3D i845_cursor_get_hw_state;
> +		cursor->check_plane =3D i845_check_cursor;
> +	} else {
> +		cursor->max_stride =3D i9xx_cursor_max_stride;
> +		cursor->update_plane =3D i9xx_update_cursor;
> +		cursor->disable_plane =3D i9xx_disable_cursor;
> +		cursor->get_hw_state =3D i9xx_cursor_get_hw_state;
> +		cursor->check_plane =3D i9xx_check_cursor;
> +	}
> +
> +	cursor->cursor.base =3D ~0;
> +	cursor->cursor.cntl =3D ~0;
> +
> +	if (IS_I845G(dev_priv) || IS_I865G(dev_priv) || HAS_CUR_FBC(dev_priv))
> +		cursor->cursor.size =3D ~0;
> +
> +	ret =3D drm_universal_plane_init(&dev_priv->drm, &cursor->base,
> +				       0, &intel_cursor_plane_funcs,
> +				       intel_cursor_formats,
> +				       ARRAY_SIZE(intel_cursor_formats),
> +				       cursor_format_modifiers,
> +				       DRM_PLANE_TYPE_CURSOR,
> +				       "cursor %c", pipe_name(pipe));
> +	if (ret)
> +		goto fail;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 4)
> +		drm_plane_create_rotation_property(&cursor->base,
> +						   DRM_MODE_ROTATE_0,
> +						   DRM_MODE_ROTATE_0 |
> +						   DRM_MODE_ROTATE_180);
> +
> +	zpos =3D RUNTIME_INFO(dev_priv)->num_sprites[pipe] + 1;
> +	drm_plane_create_zpos_immutable_property(&cursor->base, zpos);
> +
> +	if (INTEL_GEN(dev_priv) >=3D 12)
> +		drm_plane_enable_fb_damage_clips(&cursor->base);
> +
> +	drm_plane_helper_add(&cursor->base, &intel_plane_helper_funcs);
> +
> +	return cursor;
> +
> +fail:
> +	intel_plane_free(cursor);
> +
> +	return ERR_PTR(ret);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index c567c0cada7e..0f163c2dc621 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2533,9 +2533,9 @@ static u32 intel_compute_aligned_offset(struct drm_=
i915_private *dev_priv,
>  	return offset_aligned;
>  }
>  =

> -static u32 intel_plane_compute_aligned_offset(int *x, int *y,
> -					      const struct intel_plane_state *state,
> -					      int color_plane)
> +u32 intel_plane_compute_aligned_offset(int *x, int *y,
> +				       const struct intel_plane_state *state,
> +				       int color_plane)
>  {
>  	struct intel_plane *intel_plane =3D to_intel_plane(state->uapi.plane);
>  	struct drm_i915_private *dev_priv =3D to_i915(intel_plane->base.dev);
> @@ -3272,7 +3272,7 @@ intel_plane_remap_gtt(struct intel_plane_state *pla=
ne_state)
>  	}
>  }
>  =

> -static int
> +int
>  intel_plane_compute_gtt(struct intel_plane_state *plane_state)
>  {
>  	const struct intel_framebuffer *fb =3D
> @@ -11547,569 +11547,6 @@ static bool intel_crtc_get_pipe_config(struct i=
ntel_crtc_state *crtc_state)
>  	return true;
>  }
>  =

> -static u32 intel_cursor_base(const struct intel_plane_state *plane_state)
> -{
> -	struct drm_i915_private *dev_priv =3D
> -		to_i915(plane_state->uapi.plane->dev);
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	const struct drm_i915_gem_object *obj =3D intel_fb_obj(fb);
> -	u32 base;
> -
> -	if (INTEL_INFO(dev_priv)->display.cursor_needs_physical)
> -		base =3D sg_dma_address(obj->mm.pages->sgl);
> -	else
> -		base =3D intel_plane_ggtt_offset(plane_state);
> -
> -	return base + plane_state->color_plane[0].offset;
> -}
> -
> -static u32 intel_cursor_position(const struct intel_plane_state *plane_s=
tate)
> -{
> -	int x =3D plane_state->uapi.dst.x1;
> -	int y =3D plane_state->uapi.dst.y1;
> -	u32 pos =3D 0;
> -
> -	if (x < 0) {
> -		pos |=3D CURSOR_POS_SIGN << CURSOR_X_SHIFT;
> -		x =3D -x;
> -	}
> -	pos |=3D x << CURSOR_X_SHIFT;
> -
> -	if (y < 0) {
> -		pos |=3D CURSOR_POS_SIGN << CURSOR_Y_SHIFT;
> -		y =3D -y;
> -	}
> -	pos |=3D y << CURSOR_Y_SHIFT;
> -
> -	return pos;
> -}
> -
> -static bool intel_cursor_size_ok(const struct intel_plane_state *plane_s=
tate)
> -{
> -	const struct drm_mode_config *config =3D
> -		&plane_state->uapi.plane->dev->mode_config;
> -	int width =3D drm_rect_width(&plane_state->uapi.dst);
> -	int height =3D drm_rect_height(&plane_state->uapi.dst);
> -
> -	return width > 0 && width <=3D config->cursor_width &&
> -		height > 0 && height <=3D config->cursor_height;
> -}
> -
> -static int intel_cursor_check_surface(struct intel_plane_state *plane_st=
ate)
> -{
> -	struct drm_i915_private *dev_priv =3D
> -		to_i915(plane_state->uapi.plane->dev);
> -	unsigned int rotation =3D plane_state->hw.rotation;
> -	int src_x, src_y;
> -	u32 offset;
> -	int ret;
> -
> -	ret =3D intel_plane_compute_gtt(plane_state);
> -	if (ret)
> -		return ret;
> -
> -	if (!plane_state->uapi.visible)
> -		return 0;
> -
> -	src_x =3D plane_state->uapi.src.x1 >> 16;
> -	src_y =3D plane_state->uapi.src.y1 >> 16;
> -
> -	intel_add_fb_offsets(&src_x, &src_y, plane_state, 0);
> -	offset =3D intel_plane_compute_aligned_offset(&src_x, &src_y,
> -						    plane_state, 0);
> -
> -	if (src_x !=3D 0 || src_y !=3D 0) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Arbitrary cursor panning not supported\n");
> -		return -EINVAL;
> -	}
> -
> -	/*
> -	 * Put the final coordinates back so that the src
> -	 * coordinate checks will see the right values.
> -	 */
> -	drm_rect_translate_to(&plane_state->uapi.src,
> -			      src_x << 16, src_y << 16);
> -
> -	/* ILK+ do this automagically in hardware */
> -	if (HAS_GMCH(dev_priv) && rotation & DRM_MODE_ROTATE_180) {
> -		const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -		int src_w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> -		int src_h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
> -
> -		offset +=3D (src_h * src_w - 1) * fb->format->cpp[0];
> -	}
> -
> -	plane_state->color_plane[0].offset =3D offset;
> -	plane_state->color_plane[0].x =3D src_x;
> -	plane_state->color_plane[0].y =3D src_y;
> -
> -	return 0;
> -}
> -
> -static int intel_check_cursor(struct intel_crtc_state *crtc_state,
> -			      struct intel_plane_state *plane_state)
> -{
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	struct drm_i915_private *i915 =3D to_i915(plane_state->uapi.plane->dev);
> -	const struct drm_rect src =3D plane_state->uapi.src;
> -	const struct drm_rect dst =3D plane_state->uapi.dst;
> -	int ret;
> -
> -	if (fb && fb->modifier !=3D DRM_FORMAT_MOD_LINEAR) {
> -		drm_dbg_kms(&i915->drm, "cursor cannot be tiled\n");
> -		return -EINVAL;
> -	}
> -
> -	ret =3D intel_atomic_plane_check_clipping(plane_state, crtc_state,
> -						DRM_PLANE_HELPER_NO_SCALING,
> -						DRM_PLANE_HELPER_NO_SCALING,
> -						true);
> -	if (ret)
> -		return ret;
> -
> -	/* Use the unclipped src/dst rectangles, which we program to hw */
> -	plane_state->uapi.src =3D src;
> -	plane_state->uapi.dst =3D dst;
> -
> -	ret =3D intel_cursor_check_surface(plane_state);
> -	if (ret)
> -		return ret;
> -
> -	if (!plane_state->uapi.visible)
> -		return 0;
> -
> -	ret =3D intel_plane_check_src_coordinates(plane_state);
> -	if (ret)
> -		return ret;
> -
> -	return 0;
> -}
> -
> -static unsigned int
> -i845_cursor_max_stride(struct intel_plane *plane,
> -		       u32 pixel_format, u64 modifier,
> -		       unsigned int rotation)
> -{
> -	return 2048;
> -}
> -
> -static u32 i845_cursor_ctl_crtc(const struct intel_crtc_state *crtc_stat=
e)
> -{
> -	u32 cntl =3D 0;
> -
> -	if (crtc_state->gamma_enable)
> -		cntl |=3D CURSOR_GAMMA_ENABLE;
> -
> -	return cntl;
> -}
> -
> -static u32 i845_cursor_ctl(const struct intel_crtc_state *crtc_state,
> -			   const struct intel_plane_state *plane_state)
> -{
> -	return CURSOR_ENABLE |
> -		CURSOR_FORMAT_ARGB |
> -		CURSOR_STRIDE(plane_state->color_plane[0].stride);
> -}
> -
> -static bool i845_cursor_size_ok(const struct intel_plane_state *plane_st=
ate)
> -{
> -	int width =3D drm_rect_width(&plane_state->uapi.dst);
> -
> -	/*
> -	 * 845g/865g are only limited by the width of their cursors,
> -	 * the height is arbitrary up to the precision of the register.
> -	 */
> -	return intel_cursor_size_ok(plane_state) && IS_ALIGNED(width, 64);
> -}
> -
> -static int i845_check_cursor(struct intel_crtc_state *crtc_state,
> -			     struct intel_plane_state *plane_state)
> -{
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	struct drm_i915_private *i915 =3D to_i915(plane_state->uapi.plane->dev);
> -	int ret;
> -
> -	ret =3D intel_check_cursor(crtc_state, plane_state);
> -	if (ret)
> -		return ret;
> -
> -	/* if we want to turn off the cursor ignore width and height */
> -	if (!fb)
> -		return 0;
> -
> -	/* Check for which cursor types we support */
> -	if (!i845_cursor_size_ok(plane_state)) {
> -		drm_dbg_kms(&i915->drm,
> -			    "Cursor dimension %dx%d not supported\n",
> -			    drm_rect_width(&plane_state->uapi.dst),
> -			    drm_rect_height(&plane_state->uapi.dst));
> -		return -EINVAL;
> -	}
> -
> -	drm_WARN_ON(&i915->drm, plane_state->uapi.visible &&
> -		    plane_state->color_plane[0].stride !=3D fb->pitches[0]);
> -
> -	switch (fb->pitches[0]) {
> -	case 256:
> -	case 512:
> -	case 1024:
> -	case 2048:
> -		break;
> -	default:
> -		 drm_dbg_kms(&i915->drm, "Invalid cursor stride (%u)\n",
> -			     fb->pitches[0]);
> -		return -EINVAL;
> -	}
> -
> -	plane_state->ctl =3D i845_cursor_ctl(crtc_state, plane_state);
> -
> -	return 0;
> -}
> -
> -static void i845_update_cursor(struct intel_plane *plane,
> -			       const struct intel_crtc_state *crtc_state,
> -			       const struct intel_plane_state *plane_state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	u32 cntl =3D 0, base =3D 0, pos =3D 0, size =3D 0;
> -	unsigned long irqflags;
> -
> -	if (plane_state && plane_state->uapi.visible) {
> -		unsigned int width =3D drm_rect_width(&plane_state->uapi.dst);
> -		unsigned int height =3D drm_rect_height(&plane_state->uapi.dst);
> -
> -		cntl =3D plane_state->ctl |
> -			i845_cursor_ctl_crtc(crtc_state);
> -
> -		size =3D (height << 12) | width;
> -
> -		base =3D intel_cursor_base(plane_state);
> -		pos =3D intel_cursor_position(plane_state);
> -	}
> -
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
> -	/* On these chipsets we can only modify the base/size/stride
> -	 * whilst the cursor is disabled.
> -	 */
> -	if (plane->cursor.base !=3D base ||
> -	    plane->cursor.size !=3D size ||
> -	    plane->cursor.cntl !=3D cntl) {
> -		intel_de_write_fw(dev_priv, CURCNTR(PIPE_A), 0);
> -		intel_de_write_fw(dev_priv, CURBASE(PIPE_A), base);
> -		intel_de_write_fw(dev_priv, CURSIZE, size);
> -		intel_de_write_fw(dev_priv, CURPOS(PIPE_A), pos);
> -		intel_de_write_fw(dev_priv, CURCNTR(PIPE_A), cntl);
> -
> -		plane->cursor.base =3D base;
> -		plane->cursor.size =3D size;
> -		plane->cursor.cntl =3D cntl;
> -	} else {
> -		intel_de_write_fw(dev_priv, CURPOS(PIPE_A), pos);
> -	}
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> -}
> -
> -static void i845_disable_cursor(struct intel_plane *plane,
> -				const struct intel_crtc_state *crtc_state)
> -{
> -	i845_update_cursor(plane, crtc_state, NULL);
> -}
> -
> -static bool i845_cursor_get_hw_state(struct intel_plane *plane,
> -				     enum pipe *pipe)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	enum intel_display_power_domain power_domain;
> -	intel_wakeref_t wakeref;
> -	bool ret;
> -
> -	power_domain =3D POWER_DOMAIN_PIPE(PIPE_A);
> -	wakeref =3D intel_display_power_get_if_enabled(dev_priv, power_domain);
> -	if (!wakeref)
> -		return false;
> -
> -	ret =3D intel_de_read(dev_priv, CURCNTR(PIPE_A)) & CURSOR_ENABLE;
> -
> -	*pipe =3D PIPE_A;
> -
> -	intel_display_power_put(dev_priv, power_domain, wakeref);
> -
> -	return ret;
> -}
> -
> -static unsigned int
> -i9xx_cursor_max_stride(struct intel_plane *plane,
> -		       u32 pixel_format, u64 modifier,
> -		       unsigned int rotation)
> -{
> -	return plane->base.dev->mode_config.cursor_width * 4;
> -}
> -
> -static u32 i9xx_cursor_ctl_crtc(const struct intel_crtc_state *crtc_stat=
e)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	u32 cntl =3D 0;
> -
> -	if (INTEL_GEN(dev_priv) >=3D 11)
> -		return cntl;
> -
> -	if (crtc_state->gamma_enable)
> -		cntl =3D MCURSOR_GAMMA_ENABLE;
> -
> -	if (crtc_state->csc_enable)
> -		cntl |=3D MCURSOR_PIPE_CSC_ENABLE;
> -
> -	if (INTEL_GEN(dev_priv) < 5 && !IS_G4X(dev_priv))
> -		cntl |=3D MCURSOR_PIPE_SELECT(crtc->pipe);
> -
> -	return cntl;
> -}
> -
> -static u32 i9xx_cursor_ctl(const struct intel_crtc_state *crtc_state,
> -			   const struct intel_plane_state *plane_state)
> -{
> -	struct drm_i915_private *dev_priv =3D
> -		to_i915(plane_state->uapi.plane->dev);
> -	u32 cntl =3D 0;
> -
> -	if (IS_GEN(dev_priv, 6) || IS_IVYBRIDGE(dev_priv))
> -		cntl |=3D MCURSOR_TRICKLE_FEED_DISABLE;
> -
> -	switch (drm_rect_width(&plane_state->uapi.dst)) {
> -	case 64:
> -		cntl |=3D MCURSOR_MODE_64_ARGB_AX;
> -		break;
> -	case 128:
> -		cntl |=3D MCURSOR_MODE_128_ARGB_AX;
> -		break;
> -	case 256:
> -		cntl |=3D MCURSOR_MODE_256_ARGB_AX;
> -		break;
> -	default:
> -		MISSING_CASE(drm_rect_width(&plane_state->uapi.dst));
> -		return 0;
> -	}
> -
> -	if (plane_state->hw.rotation & DRM_MODE_ROTATE_180)
> -		cntl |=3D MCURSOR_ROTATE_180;
> -
> -	return cntl;
> -}
> -
> -static bool i9xx_cursor_size_ok(const struct intel_plane_state *plane_st=
ate)
> -{
> -	struct drm_i915_private *dev_priv =3D
> -		to_i915(plane_state->uapi.plane->dev);
> -	int width =3D drm_rect_width(&plane_state->uapi.dst);
> -	int height =3D drm_rect_height(&plane_state->uapi.dst);
> -
> -	if (!intel_cursor_size_ok(plane_state))
> -		return false;
> -
> -	/* Cursor width is limited to a few power-of-two sizes */
> -	switch (width) {
> -	case 256:
> -	case 128:
> -	case 64:
> -		break;
> -	default:
> -		return false;
> -	}
> -
> -	/*
> -	 * IVB+ have CUR_FBC_CTL which allows an arbitrary cursor
> -	 * height from 8 lines up to the cursor width, when the
> -	 * cursor is not rotated. Everything else requires square
> -	 * cursors.
> -	 */
> -	if (HAS_CUR_FBC(dev_priv) &&
> -	    plane_state->hw.rotation & DRM_MODE_ROTATE_0) {
> -		if (height < 8 || height > width)
> -			return false;
> -	} else {
> -		if (height !=3D width)
> -			return false;
> -	}
> -
> -	return true;
> -}
> -
> -static int i9xx_check_cursor(struct intel_crtc_state *crtc_state,
> -			     struct intel_plane_state *plane_state)
> -{
> -	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	enum pipe pipe =3D plane->pipe;
> -	int ret;
> -
> -	ret =3D intel_check_cursor(crtc_state, plane_state);
> -	if (ret)
> -		return ret;
> -
> -	/* if we want to turn off the cursor ignore width and height */
> -	if (!fb)
> -		return 0;
> -
> -	/* Check for which cursor types we support */
> -	if (!i9xx_cursor_size_ok(plane_state)) {
> -		drm_dbg(&dev_priv->drm,
> -			"Cursor dimension %dx%d not supported\n",
> -			drm_rect_width(&plane_state->uapi.dst),
> -			drm_rect_height(&plane_state->uapi.dst));
> -		return -EINVAL;
> -	}
> -
> -	drm_WARN_ON(&dev_priv->drm, plane_state->uapi.visible &&
> -		    plane_state->color_plane[0].stride !=3D fb->pitches[0]);
> -
> -	if (fb->pitches[0] !=3D
> -	    drm_rect_width(&plane_state->uapi.dst) * fb->format->cpp[0]) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Invalid cursor stride (%u) (cursor width %d)\n",
> -			    fb->pitches[0],
> -			    drm_rect_width(&plane_state->uapi.dst));
> -		return -EINVAL;
> -	}
> -
> -	/*
> -	 * There's something wrong with the cursor on CHV pipe C.
> -	 * If it straddles the left edge of the screen then
> -	 * moving it away from the edge or disabling it often
> -	 * results in a pipe underrun, and often that can lead to
> -	 * dead pipe (constant underrun reported, and it scans
> -	 * out just a solid color). To recover from that, the
> -	 * display power well must be turned off and on again.
> -	 * Refuse the put the cursor into that compromised position.
> -	 */
> -	if (IS_CHERRYVIEW(dev_priv) && pipe =3D=3D PIPE_C &&
> -	    plane_state->uapi.visible && plane_state->uapi.dst.x1 < 0) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "CHV cursor C not allowed to straddle the left screen edge\n");
> -		return -EINVAL;
> -	}
> -
> -	plane_state->ctl =3D i9xx_cursor_ctl(crtc_state, plane_state);
> -
> -	return 0;
> -}
> -
> -static void i9xx_update_cursor(struct intel_plane *plane,
> -			       const struct intel_crtc_state *crtc_state,
> -			       const struct intel_plane_state *plane_state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	enum pipe pipe =3D plane->pipe;
> -	u32 cntl =3D 0, base =3D 0, pos =3D 0, fbc_ctl =3D 0;
> -	unsigned long irqflags;
> -
> -	if (plane_state && plane_state->uapi.visible) {
> -		unsigned width =3D drm_rect_width(&plane_state->uapi.dst);
> -		unsigned height =3D drm_rect_height(&plane_state->uapi.dst);
> -
> -		cntl =3D plane_state->ctl |
> -			i9xx_cursor_ctl_crtc(crtc_state);
> -
> -		if (width !=3D height)
> -			fbc_ctl =3D CUR_FBC_CTL_EN | (height - 1);
> -
> -		base =3D intel_cursor_base(plane_state);
> -		pos =3D intel_cursor_position(plane_state);
> -	}
> -
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
> -	/*
> -	 * On some platforms writing CURCNTR first will also
> -	 * cause CURPOS to be armed by the CURBASE write.
> -	 * Without the CURCNTR write the CURPOS write would
> -	 * arm itself. Thus we always update CURCNTR before
> -	 * CURPOS.
> -	 *
> -	 * On other platforms CURPOS always requires the
> -	 * CURBASE write to arm the update. Additonally
> -	 * a write to any of the cursor register will cancel
> -	 * an already armed cursor update. Thus leaving out
> -	 * the CURBASE write after CURPOS could lead to a
> -	 * cursor that doesn't appear to move, or even change
> -	 * shape. Thus we always write CURBASE.
> -	 *
> -	 * The other registers are armed by by the CURBASE write
> -	 * except when the plane is getting enabled at which time
> -	 * the CURCNTR write arms the update.
> -	 */
> -
> -	if (INTEL_GEN(dev_priv) >=3D 9)
> -		skl_write_cursor_wm(plane, crtc_state);
> -
> -	if (!needs_modeset(crtc_state))
> -		intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, 0);
> -
> -	if (plane->cursor.base !=3D base ||
> -	    plane->cursor.size !=3D fbc_ctl ||
> -	    plane->cursor.cntl !=3D cntl) {
> -		if (HAS_CUR_FBC(dev_priv))
> -			intel_de_write_fw(dev_priv, CUR_FBC_CTL(pipe),
> -					  fbc_ctl);
> -		intel_de_write_fw(dev_priv, CURCNTR(pipe), cntl);
> -		intel_de_write_fw(dev_priv, CURPOS(pipe), pos);
> -		intel_de_write_fw(dev_priv, CURBASE(pipe), base);
> -
> -		plane->cursor.base =3D base;
> -		plane->cursor.size =3D fbc_ctl;
> -		plane->cursor.cntl =3D cntl;
> -	} else {
> -		intel_de_write_fw(dev_priv, CURPOS(pipe), pos);
> -		intel_de_write_fw(dev_priv, CURBASE(pipe), base);
> -	}
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> -}
> -
> -static void i9xx_disable_cursor(struct intel_plane *plane,
> -				const struct intel_crtc_state *crtc_state)
> -{
> -	i9xx_update_cursor(plane, crtc_state, NULL);
> -}
> -
> -static bool i9xx_cursor_get_hw_state(struct intel_plane *plane,
> -				     enum pipe *pipe)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	enum intel_display_power_domain power_domain;
> -	intel_wakeref_t wakeref;
> -	bool ret;
> -	u32 val;
> -
> -	/*
> -	 * Not 100% correct for planes that can move between pipes,
> -	 * but that's only the case for gen2-3 which don't have any
> -	 * display power wells.
> -	 */
> -	power_domain =3D POWER_DOMAIN_PIPE(plane->pipe);
> -	wakeref =3D intel_display_power_get_if_enabled(dev_priv, power_domain);
> -	if (!wakeref)
> -		return false;
> -
> -	val =3D intel_de_read(dev_priv, CURCNTR(plane->pipe));
> -
> -	ret =3D val & MCURSOR_MODE;
> -
> -	if (INTEL_GEN(dev_priv) >=3D 5 || IS_G4X(dev_priv))
> -		*pipe =3D plane->pipe;
> -	else
> -		*pipe =3D (val & MCURSOR_PIPE_SELECT_MASK) >>
> -			MCURSOR_PIPE_SELECT_SHIFT;
> -
> -	intel_display_power_put(dev_priv, power_domain, wakeref);
> -
> -	return ret;
> -}
> -
>  /* VESA 640x480x72Hz mode to set on the pipe */
>  static const struct drm_display_mode load_detect_mode =3D {
>  	DRM_MODE("640x480", DRM_MODE_TYPE_DEFAULT, 31500, 640, 664,
> @@ -16620,7 +16057,7 @@ static void add_rps_boost_after_vblank(struct drm=
_crtc *crtc,
>  	add_wait_queue(drm_crtc_vblank_waitqueue(crtc), &wait->wait);
>  }
>  =

> -static int intel_plane_pin_fb(struct intel_plane_state *plane_state)
> +int intel_plane_pin_fb(struct intel_plane_state *plane_state)
>  {
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
>  	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> @@ -16650,7 +16087,7 @@ static int intel_plane_pin_fb(struct intel_plane_=
state *plane_state)
>  	return 0;
>  }
>  =

> -static void intel_plane_unpin_fb(struct intel_plane_state *old_plane_sta=
te)
> +void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
>  {
>  	struct i915_vma *vma;
>  =

> @@ -16886,13 +16323,6 @@ static bool i965_plane_format_mod_supported(stru=
ct drm_plane *_plane,
>  	}
>  }
>  =

> -static bool intel_cursor_format_mod_supported(struct drm_plane *_plane,
> -					      u32 format, u64 modifier)
> -{
> -	return modifier =3D=3D DRM_FORMAT_MOD_LINEAR &&
> -		format =3D=3D DRM_FORMAT_ARGB8888;
> -}
> -
>  static const struct drm_plane_funcs i965_plane_funcs =3D {
>  	.update_plane =3D drm_atomic_helper_update_plane,
>  	.disable_plane =3D drm_atomic_helper_disable_plane,
> @@ -16911,142 +16341,6 @@ static const struct drm_plane_funcs i8xx_plane_=
funcs =3D {
>  	.format_mod_supported =3D i8xx_plane_format_mod_supported,
>  };
>  =

> -static int
> -intel_legacy_cursor_update(struct drm_plane *_plane,
> -			   struct drm_crtc *_crtc,
> -			   struct drm_framebuffer *fb,
> -			   int crtc_x, int crtc_y,
> -			   unsigned int crtc_w, unsigned int crtc_h,
> -			   u32 src_x, u32 src_y,
> -			   u32 src_w, u32 src_h,
> -			   struct drm_modeset_acquire_ctx *ctx)
> -{
> -	struct intel_plane *plane =3D to_intel_plane(_plane);
> -	struct intel_crtc *crtc =3D to_intel_crtc(_crtc);
> -	struct intel_plane_state *old_plane_state =3D
> -		to_intel_plane_state(plane->base.state);
> -	struct intel_plane_state *new_plane_state;
> -	struct intel_crtc_state *crtc_state =3D
> -		to_intel_crtc_state(crtc->base.state);
> -	struct intel_crtc_state *new_crtc_state;
> -	int ret;
> -
> -	/*
> -	 * When crtc is inactive or there is a modeset pending,
> -	 * wait for it to complete in the slowpath
> -	 *
> -	 * FIXME bigjoiner fastpath would be good
> -	 */
> -	if (!crtc_state->hw.active || needs_modeset(crtc_state) ||
> -	    crtc_state->update_pipe || crtc_state->bigjoiner)
> -		goto slow;
> -
> -	/*
> -	 * Don't do an async update if there is an outstanding commit modifying
> -	 * the plane.  This prevents our async update's changes from getting
> -	 * overridden by a previous synchronous update's state.
> -	 */
> -	if (old_plane_state->uapi.commit &&
> -	    !try_wait_for_completion(&old_plane_state->uapi.commit->hw_done))
> -		goto slow;
> -
> -	/*
> -	 * If any parameters change that may affect watermarks,
> -	 * take the slowpath. Only changing fb or position should be
> -	 * in the fastpath.
> -	 */
> -	if (old_plane_state->uapi.crtc !=3D &crtc->base ||
> -	    old_plane_state->uapi.src_w !=3D src_w ||
> -	    old_plane_state->uapi.src_h !=3D src_h ||
> -	    old_plane_state->uapi.crtc_w !=3D crtc_w ||
> -	    old_plane_state->uapi.crtc_h !=3D crtc_h ||
> -	    !old_plane_state->uapi.fb !=3D !fb)
> -		goto slow;
> -
> -	new_plane_state =3D to_intel_plane_state(intel_plane_duplicate_state(&p=
lane->base));
> -	if (!new_plane_state)
> -		return -ENOMEM;
> -
> -	new_crtc_state =3D to_intel_crtc_state(intel_crtc_duplicate_state(&crtc=
->base));
> -	if (!new_crtc_state) {
> -		ret =3D -ENOMEM;
> -		goto out_free;
> -	}
> -
> -	drm_atomic_set_fb_for_plane(&new_plane_state->uapi, fb);
> -
> -	new_plane_state->uapi.src_x =3D src_x;
> -	new_plane_state->uapi.src_y =3D src_y;
> -	new_plane_state->uapi.src_w =3D src_w;
> -	new_plane_state->uapi.src_h =3D src_h;
> -	new_plane_state->uapi.crtc_x =3D crtc_x;
> -	new_plane_state->uapi.crtc_y =3D crtc_y;
> -	new_plane_state->uapi.crtc_w =3D crtc_w;
> -	new_plane_state->uapi.crtc_h =3D crtc_h;
> -
> -	intel_plane_copy_uapi_to_hw_state(new_plane_state, new_plane_state, crt=
c);
> -
> -	ret =3D intel_plane_atomic_check_with_state(crtc_state, new_crtc_state,
> -						  old_plane_state, new_plane_state);
> -	if (ret)
> -		goto out_free;
> -
> -	ret =3D intel_plane_pin_fb(new_plane_state);
> -	if (ret)
> -		goto out_free;
> -
> -	intel_frontbuffer_flush(to_intel_frontbuffer(new_plane_state->hw.fb),
> -				ORIGIN_FLIP);
> -	intel_frontbuffer_track(to_intel_frontbuffer(old_plane_state->hw.fb),
> -				to_intel_frontbuffer(new_plane_state->hw.fb),
> -				plane->frontbuffer_bit);
> -
> -	/* Swap plane state */
> -	plane->base.state =3D &new_plane_state->uapi;
> -
> -	/*
> -	 * We cannot swap crtc_state as it may be in use by an atomic commit or
> -	 * page flip that's running simultaneously. If we swap crtc_state and
> -	 * destroy the old state, we will cause a use-after-free there.
> -	 *
> -	 * Only update active_planes, which is needed for our internal
> -	 * bookkeeping. Either value will do the right thing when updating
> -	 * planes atomically. If the cursor was part of the atomic update then
> -	 * we would have taken the slowpath.
> -	 */
> -	crtc_state->active_planes =3D new_crtc_state->active_planes;
> -
> -	if (new_plane_state->uapi.visible)
> -		intel_update_plane(plane, crtc_state, new_plane_state);
> -	else
> -		intel_disable_plane(plane, crtc_state);
> -
> -	intel_plane_unpin_fb(old_plane_state);
> -
> -out_free:
> -	if (new_crtc_state)
> -		intel_crtc_destroy_state(&crtc->base, &new_crtc_state->uapi);
> -	if (ret)
> -		intel_plane_destroy_state(&plane->base, &new_plane_state->uapi);
> -	else
> -		intel_plane_destroy_state(&plane->base, &old_plane_state->uapi);
> -	return ret;
> -
> -slow:
> -	return drm_atomic_helper_update_plane(&plane->base, &crtc->base, fb,
> -					      crtc_x, crtc_y, crtc_w, crtc_h,
> -					      src_x, src_y, src_w, src_h, ctx);
> -}
> -
> -static const struct drm_plane_funcs intel_cursor_plane_funcs =3D {
> -	.update_plane =3D intel_legacy_cursor_update,
> -	.disable_plane =3D drm_atomic_helper_disable_plane,
> -	.destroy =3D intel_plane_destroy,
> -	.atomic_duplicate_state =3D intel_plane_duplicate_state,
> -	.atomic_destroy_state =3D intel_plane_destroy_state,
> -	.format_mod_supported =3D intel_cursor_format_mod_supported,
> -};
> -
>  static bool i9xx_plane_has_fbc(struct drm_i915_private *dev_priv,
>  			       enum i9xx_plane_id i9xx_plane)
>  {
> @@ -17198,74 +16492,6 @@ intel_primary_plane_create(struct drm_i915_priva=
te *dev_priv, enum pipe pipe)
>  	return ERR_PTR(ret);
>  }
>  =

> -static struct intel_plane *
> -intel_cursor_plane_create(struct drm_i915_private *dev_priv,
> -			  enum pipe pipe)
> -{
> -	struct intel_plane *cursor;
> -	int ret, zpos;
> -
> -	cursor =3D intel_plane_alloc();
> -	if (IS_ERR(cursor))
> -		return cursor;
> -
> -	cursor->pipe =3D pipe;
> -	cursor->i9xx_plane =3D (enum i9xx_plane_id) pipe;
> -	cursor->id =3D PLANE_CURSOR;
> -	cursor->frontbuffer_bit =3D INTEL_FRONTBUFFER(pipe, cursor->id);
> -
> -	if (IS_I845G(dev_priv) || IS_I865G(dev_priv)) {
> -		cursor->max_stride =3D i845_cursor_max_stride;
> -		cursor->update_plane =3D i845_update_cursor;
> -		cursor->disable_plane =3D i845_disable_cursor;
> -		cursor->get_hw_state =3D i845_cursor_get_hw_state;
> -		cursor->check_plane =3D i845_check_cursor;
> -	} else {
> -		cursor->max_stride =3D i9xx_cursor_max_stride;
> -		cursor->update_plane =3D i9xx_update_cursor;
> -		cursor->disable_plane =3D i9xx_disable_cursor;
> -		cursor->get_hw_state =3D i9xx_cursor_get_hw_state;
> -		cursor->check_plane =3D i9xx_check_cursor;
> -	}
> -
> -	cursor->cursor.base =3D ~0;
> -	cursor->cursor.cntl =3D ~0;
> -
> -	if (IS_I845G(dev_priv) || IS_I865G(dev_priv) || HAS_CUR_FBC(dev_priv))
> -		cursor->cursor.size =3D ~0;
> -
> -	ret =3D drm_universal_plane_init(&dev_priv->drm, &cursor->base,
> -				       0, &intel_cursor_plane_funcs,
> -				       intel_cursor_formats,
> -				       ARRAY_SIZE(intel_cursor_formats),
> -				       cursor_format_modifiers,
> -				       DRM_PLANE_TYPE_CURSOR,
> -				       "cursor %c", pipe_name(pipe));
> -	if (ret)
> -		goto fail;
> -
> -	if (INTEL_GEN(dev_priv) >=3D 4)
> -		drm_plane_create_rotation_property(&cursor->base,
> -						   DRM_MODE_ROTATE_0,
> -						   DRM_MODE_ROTATE_0 |
> -						   DRM_MODE_ROTATE_180);
> -
> -	zpos =3D RUNTIME_INFO(dev_priv)->num_sprites[pipe] + 1;
> -	drm_plane_create_zpos_immutable_property(&cursor->base, zpos);
> -
> -	if (INTEL_GEN(dev_priv) >=3D 12)
> -		drm_plane_enable_fb_damage_clips(&cursor->base);
> -
> -	drm_plane_helper_add(&cursor->base, &intel_plane_helper_funcs);
> -
> -	return cursor;
> -
> -fail:
> -	intel_plane_free(cursor);
> -
> -	return ERR_PTR(ret);
> -}
> -
>  static int intel_crtc_late_register(struct drm_crtc *crtc)
>  {
>  	intel_crtc_debugfs_add(crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index a5771bfecba6..f0a5bf69656f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -647,6 +647,18 @@ bool
>  intel_format_info_is_yuv_semiplanar(const struct drm_format_info *info,
>  				    uint64_t modifier);
>  =

> +int intel_plane_compute_gtt(struct intel_plane_state *plane_state);
> +u32 intel_plane_compute_aligned_offset(int *x, int *y,
> +				       const struct intel_plane_state *state,
> +				       int color_plane);
> +int intel_plane_pin_fb(struct intel_plane_state *plane_state);
> +void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state);
> +
> +/* cursor */
> +struct intel_plane *
> +intel_cursor_plane_create(struct drm_i915_private *dev_priv,
> +			  enum pipe pipe);
> +
>  /* modesetting */
>  void intel_modeset_init_hw(struct drm_i915_private *i915);
>  int intel_modeset_init_noirq(struct drm_i915_private *i915);
> -- =

> 2.27.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
