Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 060D18C3E98
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 12:08:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46CDC10E079;
	Mon, 13 May 2024 10:08:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VdCXvB4k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD35210E079
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 10:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715594886; x=1747130886;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=mBxTX/qbdQUSeWtBJUNcE0PxC1lWwe9m33tIfW1mQ5M=;
 b=VdCXvB4kPSUBzvXU4xqogKCC7AgSgm6OOxPcTiCSS2HTbT+i7953Anh/
 TV/FkaGOFpgsLtQ82XdiRqg2t6YSFIYv0M6Hir5zEHL5ORErftdVOWOfK
 B3sASs7zsHFU5Iw78qP+3zf4NRkRPwMDIJiJzjOi2lJcuTDjjK30iBZq3
 0zXoSSwPUNLWIAivip0TbMZ5PKQcrHS4DYglkbjN8o1bLytlxVQI3kReU
 CzLA9+iU1DZsKvYbYEM1LRZJ5zW2Z8Q34Nu7ExQdZQ/FQaPPwsirtZBAD
 rtkC+DHa0PSH/chDvox6agbtVu7Mx0YlYaxydzhtchW6iCpW9MInuWbI3 Q==;
X-CSE-ConnectionGUID: JmfI0H90TNebFqUa1aX6xg==
X-CSE-MsgGUID: 3Z8aeHw7SimRsjtffR+ssA==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="22669117"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="22669117"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:08:05 -0700
X-CSE-ConnectionGUID: 6TmpKl24T12C3ylvo7lzSw==
X-CSE-MsgGUID: Qo+SJ2EwQHiRlCW0n8u//w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="67790976"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.7])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:08:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.wang.linux@gmail.com>
Subject: Re: [PATCH 02/16] drm/i915: Extract skl_universal_plane_regs.h
In-Reply-To: <20240510152329.24098-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
 <20240510152329.24098-3-ville.syrjala@linux.intel.com>
Date: Mon, 13 May 2024 13:07:59 +0300
Message-ID: <874jb2gh34.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 10 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Move most of the SKL+ universal plane register definitions
> into their own file. Declutters i915_reg.h a bit more.
>
> Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
> CC: Zhi Wang <zhi.wang.linux@gmail.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |   1 +
>  .../gpu/drm/i915/display/intel_dpt_common.c   |   1 +
>  .../drm/i915/display/skl_universal_plane.c    |   1 +
>  .../i915/display/skl_universal_plane_regs.h   | 405 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/skl_watermark.c  |   1 +
>  drivers/gpu/drm/i915/gvt/dmabuf.c             |   3 +-
>  drivers/gpu/drm/i915/gvt/fb_decoder.c         |   1 +
>  drivers/gpu/drm/i915/gvt/handlers.c           |   1 +
>  drivers/gpu/drm/i915/i915_reg.h               | 395 -----------------
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
>  10 files changed, 414 insertions(+), 396 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/skl_universal_plane_regs=
.h
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index ef986b508431..a2c331c696fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -119,6 +119,7 @@
>  #include "intel_wm.h"
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
> +#include "skl_universal_plane_regs.h"
>  #include "skl_watermark.h"
>  #include "vlv_dpio_phy_regs.h"
>  #include "vlv_dsi.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_dpt_common.c b/drivers/gp=
u/drm/i915/display/intel_dpt_common.c
> index cdba47165c04..573f72068899 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpt_common.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpt_common.c
> @@ -7,6 +7,7 @@
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_dpt_common.h"
> +#include "skl_universal_plane_regs.h"
>=20=20
>  void intel_dpt_configure(struct intel_crtc *crtc)
>  {
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 0a8e781a3648..ab560820bb23 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -21,6 +21,7 @@
>  #include "intel_psr_regs.h"
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
> +#include "skl_universal_plane_regs.h"
>  #include "skl_watermark.h"
>  #include "pxp/intel_pxp.h"
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/dr=
ivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> new file mode 100644
> index 000000000000..7e34470beb74
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> @@ -0,0 +1,405 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2024 Intel Corporation
> + */
> +
> +#ifndef __SKL_UNIVERSAL_PLANE_REGS_H__
> +#define __SKL_UNIVERSAL_PLANE_REGS_H__
> +
> +#include "intel_display_reg_defs.h"
> +
> +#define _PLANE_CTL_1_A				0x70180
> +#define _PLANE_CTL_2_A				0x70280
> +#define _PLANE_CTL_3_A				0x70380
> +#define   PLANE_CTL_ENABLE			REG_BIT(31)
> +#define   PLANE_CTL_ARB_SLOTS_MASK		REG_GENMASK(30, 28) /* icl+ */
> +#define   PLANE_CTL_ARB_SLOTS(x)		REG_FIELD_PREP(PLANE_CTL_ARB_SLOTS_MAS=
K, (x)) /* icl+ */
> +#define   PLANE_CTL_PIPE_GAMMA_ENABLE		REG_BIT(30) /* Pre-GLK */
> +#define   PLANE_CTL_YUV_RANGE_CORRECTION_DISABLE	REG_BIT(28)
> +/*
> + * ICL+ uses the same PLANE_CTL_FORMAT bits, but the field definition
> + * expanded to include bit 23 as well. However, the shift-24 based values
> + * correctly map to the same formats in ICL, as long as bit 23 is set to=
 0
> + */
> +#define   PLANE_CTL_FORMAT_MASK_SKL		REG_GENMASK(27, 24) /* pre-icl */
> +#define   PLANE_CTL_FORMAT_MASK_ICL		REG_GENMASK(27, 23) /* icl+ */
> +#define   PLANE_CTL_FORMAT_YUV422		REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_=
SKL, 0)
> +#define   PLANE_CTL_FORMAT_NV12			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_S=
KL, 1)
> +#define   PLANE_CTL_FORMAT_XRGB_2101010		REG_FIELD_PREP(PLANE_CTL_FORMAT=
_MASK_SKL, 2)
> +#define   PLANE_CTL_FORMAT_P010			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_S=
KL, 3)
> +#define   PLANE_CTL_FORMAT_XRGB_8888		REG_FIELD_PREP(PLANE_CTL_FORMAT_MA=
SK_SKL, 4)
> +#define   PLANE_CTL_FORMAT_P012			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_S=
KL, 5)
> +#define   PLANE_CTL_FORMAT_XRGB_16161616F	REG_FIELD_PREP(PLANE_CTL_FORMA=
T_MASK_SKL, 6)
> +#define   PLANE_CTL_FORMAT_P016			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_S=
KL, 7)
> +#define   PLANE_CTL_FORMAT_XYUV			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_S=
KL, 8)
> +#define   PLANE_CTL_FORMAT_INDEXED		REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK=
_SKL, 12)
> +#define   PLANE_CTL_FORMAT_RGB_565		REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK=
_SKL, 14)
> +#define   PLANE_CTL_FORMAT_Y210			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_I=
CL, 1)
> +#define   PLANE_CTL_FORMAT_Y212			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_I=
CL, 3)
> +#define   PLANE_CTL_FORMAT_Y216			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_I=
CL, 5)
> +#define   PLANE_CTL_FORMAT_Y410			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_I=
CL, 7)
> +#define   PLANE_CTL_FORMAT_Y412			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_I=
CL, 9)
> +#define   PLANE_CTL_FORMAT_Y416			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_I=
CL, 11)
> +#define   PLANE_CTL_PIPE_CSC_ENABLE		REG_BIT(23) /* Pre-GLK */
> +#define   PLANE_CTL_KEY_ENABLE_MASK		REG_GENMASK(22, 21)
> +#define   PLANE_CTL_KEY_ENABLE_SOURCE		REG_FIELD_PREP(PLANE_CTL_KEY_ENAB=
LE_MASK, 1)
> +#define   PLANE_CTL_KEY_ENABLE_DESTINATION	REG_FIELD_PREP(PLANE_CTL_KEY_=
ENABLE_MASK, 2)
> +#define   PLANE_CTL_ORDER_RGBX			REG_BIT(20)
> +#define   PLANE_CTL_YUV420_Y_PLANE		REG_BIT(19)
> +#define   PLANE_CTL_YUV_TO_RGB_CSC_FORMAT_BT709	REG_BIT(18)
> +#define   PLANE_CTL_YUV422_ORDER_MASK		REG_GENMASK(17, 16)
> +#define   PLANE_CTL_YUV422_ORDER_YUYV		REG_FIELD_PREP(PLANE_CTL_YUV422_O=
RDER_MASK, 0)
> +#define   PLANE_CTL_YUV422_ORDER_UYVY		REG_FIELD_PREP(PLANE_CTL_YUV422_O=
RDER_MASK, 1)
> +#define   PLANE_CTL_YUV422_ORDER_YVYU		REG_FIELD_PREP(PLANE_CTL_YUV422_O=
RDER_MASK, 2)
> +#define   PLANE_CTL_YUV422_ORDER_VYUY		REG_FIELD_PREP(PLANE_CTL_YUV422_O=
RDER_MASK, 3)
> +#define   PLANE_CTL_RENDER_DECOMPRESSION_ENABLE	REG_BIT(15)
> +#define   PLANE_CTL_TRICKLE_FEED_DISABLE	REG_BIT(14)
> +#define   PLANE_CTL_CLEAR_COLOR_DISABLE		REG_BIT(13) /* TGL+ */
> +#define   PLANE_CTL_PLANE_GAMMA_DISABLE		REG_BIT(13) /* Pre-GLK */
> +#define   PLANE_CTL_TILED_MASK			REG_GENMASK(12, 10)
> +#define   PLANE_CTL_TILED_LINEAR		REG_FIELD_PREP(PLANE_CTL_TILED_MASK, 0)
> +#define   PLANE_CTL_TILED_X			REG_FIELD_PREP(PLANE_CTL_TILED_MASK, 1)
> +#define   PLANE_CTL_TILED_Y			REG_FIELD_PREP(PLANE_CTL_TILED_MASK, 4)
> +#define   PLANE_CTL_TILED_YF			REG_FIELD_PREP(PLANE_CTL_TILED_MASK, 5)
> +#define   PLANE_CTL_TILED_4                     REG_FIELD_PREP(PLANE_CTL=
_TILED_MASK, 5)
> +#define   PLANE_CTL_ASYNC_FLIP			REG_BIT(9)
> +#define   PLANE_CTL_FLIP_HORIZONTAL		REG_BIT(8)
> +#define   PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE	REG_BIT(4) /* TGL+ */
> +#define   PLANE_CTL_ALPHA_MASK			REG_GENMASK(5, 4) /* Pre-GLK */
> +#define   PLANE_CTL_ALPHA_DISABLE		REG_FIELD_PREP(PLANE_CTL_ALPHA_MASK, =
0)
> +#define   PLANE_CTL_ALPHA_SW_PREMULTIPLY	REG_FIELD_PREP(PLANE_CTL_ALPHA_=
MASK, 2)
> +#define   PLANE_CTL_ALPHA_HW_PREMULTIPLY	REG_FIELD_PREP(PLANE_CTL_ALPHA_=
MASK, 3)
> +#define   PLANE_CTL_ROTATE_MASK			REG_GENMASK(1, 0)
> +#define   PLANE_CTL_ROTATE_0			REG_FIELD_PREP(PLANE_CTL_ROTATE_MASK, 0)
> +#define   PLANE_CTL_ROTATE_90			REG_FIELD_PREP(PLANE_CTL_ROTATE_MASK, 1)
> +#define   PLANE_CTL_ROTATE_180			REG_FIELD_PREP(PLANE_CTL_ROTATE_MASK, 2)
> +#define   PLANE_CTL_ROTATE_270			REG_FIELD_PREP(PLANE_CTL_ROTATE_MASK, 3)
> +#define _PLANE_STRIDE_1_A			0x70188
> +#define _PLANE_STRIDE_2_A			0x70288
> +#define _PLANE_STRIDE_3_A			0x70388
> +#define   PLANE_STRIDE__MASK			REG_GENMASK(11, 0)
> +#define   PLANE_STRIDE_(stride)			REG_FIELD_PREP(PLANE_STRIDE__MASK, (st=
ride))
> +#define _PLANE_POS_1_A				0x7018c
> +#define _PLANE_POS_2_A				0x7028c
> +#define _PLANE_POS_3_A				0x7038c
> +#define   PLANE_POS_Y_MASK			REG_GENMASK(31, 16)
> +#define   PLANE_POS_Y(y)			REG_FIELD_PREP(PLANE_POS_Y_MASK, (y))
> +#define   PLANE_POS_X_MASK			REG_GENMASK(15, 0)
> +#define   PLANE_POS_X(x)			REG_FIELD_PREP(PLANE_POS_X_MASK, (x))
> +#define _PLANE_SIZE_1_A				0x70190
> +#define _PLANE_SIZE_2_A				0x70290
> +#define _PLANE_SIZE_3_A				0x70390
> +#define   PLANE_HEIGHT_MASK			REG_GENMASK(31, 16)
> +#define   PLANE_HEIGHT(h)			REG_FIELD_PREP(PLANE_HEIGHT_MASK, (h))
> +#define   PLANE_WIDTH_MASK			REG_GENMASK(15, 0)
> +#define   PLANE_WIDTH(w)			REG_FIELD_PREP(PLANE_WIDTH_MASK, (w))
> +#define _PLANE_SURF_1_A				0x7019c
> +#define _PLANE_SURF_2_A				0x7029c
> +#define _PLANE_SURF_3_A				0x7039c
> +#define   PLANE_SURF_ADDR_MASK			REG_GENMASK(31, 12)
> +#define   PLANE_SURF_DECRYPT			REG_BIT(2)
> +#define _PLANE_OFFSET_1_A			0x701a4
> +#define _PLANE_OFFSET_2_A			0x702a4
> +#define _PLANE_OFFSET_3_A			0x703a4
> +#define   PLANE_OFFSET_Y_MASK			REG_GENMASK(31, 16)
> +#define   PLANE_OFFSET_Y(y)			REG_FIELD_PREP(PLANE_OFFSET_Y_MASK, (y))
> +#define   PLANE_OFFSET_X_MASK			REG_GENMASK(15, 0)
> +#define   PLANE_OFFSET_X(x)			REG_FIELD_PREP(PLANE_OFFSET_X_MASK, (x))
> +#define _PLANE_KEYVAL_1_A			0x70194
> +#define _PLANE_KEYVAL_2_A			0x70294
> +#define _PLANE_KEYMSK_1_A			0x70198
> +#define _PLANE_KEYMSK_2_A			0x70298
> +#define   PLANE_KEYMSK_ALPHA_ENABLE		REG_BIT(31)
> +#define _PLANE_KEYMAX_1_A			0x701a0
> +#define _PLANE_KEYMAX_2_A			0x702a0
> +#define   PLANE_KEYMAX_ALPHA_MASK		REG_GENMASK(31, 24)
> +#define   PLANE_KEYMAX_ALPHA(a)			REG_FIELD_PREP(PLANE_KEYMAX_ALPHA_MASK=
, (a))
> +#define _PLANE_SURFLIVE_1_A			0x701ac
> +#define _PLANE_SURFLIVE_2_A			0x702ac
> +#define _PLANE_CC_VAL_1_A			0x701b4
> +#define _PLANE_CC_VAL_2_A			0x702b4
> +#define _PLANE_AUX_DIST_1_A			0x701c0
> +#define   PLANE_AUX_DISTANCE_MASK		REG_GENMASK(31, 12)
> +#define   PLANE_AUX_STRIDE_MASK			REG_GENMASK(11, 0)
> +#define   PLANE_AUX_STRIDE(stride)		REG_FIELD_PREP(PLANE_AUX_STRIDE_MASK=
, (stride))
> +#define _PLANE_AUX_DIST_2_A			0x702c0
> +#define _PLANE_AUX_OFFSET_1_A			0x701c4
> +#define _PLANE_AUX_OFFSET_2_A			0x702c4
> +#define _PLANE_CUS_CTL_1_A			0x701c8
> +#define _PLANE_CUS_CTL_2_A			0x702c8
> +#define   PLANE_CUS_ENABLE			REG_BIT(31)
> +#define   PLANE_CUS_Y_PLANE_MASK			REG_BIT(30)
> +#define   PLANE_CUS_Y_PLANE_4_RKL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK=
, 0)
> +#define   PLANE_CUS_Y_PLANE_5_RKL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK=
, 1)
> +#define   PLANE_CUS_Y_PLANE_6_ICL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK=
, 0)
> +#define   PLANE_CUS_Y_PLANE_7_ICL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK=
, 1)
> +#define   PLANE_CUS_HPHASE_SIGN_NEGATIVE		REG_BIT(19)
> +#define   PLANE_CUS_HPHASE_MASK			REG_GENMASK(17, 16)
> +#define   PLANE_CUS_HPHASE_0			REG_FIELD_PREP(PLANE_CUS_HPHASE_MASK, 0)
> +#define   PLANE_CUS_HPHASE_0_25			REG_FIELD_PREP(PLANE_CUS_HPHASE_MASK, =
1)
> +#define   PLANE_CUS_HPHASE_0_5			REG_FIELD_PREP(PLANE_CUS_HPHASE_MASK, 2)
> +#define   PLANE_CUS_VPHASE_SIGN_NEGATIVE		REG_BIT(15)
> +#define   PLANE_CUS_VPHASE_MASK			REG_GENMASK(13, 12)
> +#define   PLANE_CUS_VPHASE_0			REG_FIELD_PREP(PLANE_CUS_VPHASE_MASK, 0)
> +#define   PLANE_CUS_VPHASE_0_25			REG_FIELD_PREP(PLANE_CUS_VPHASE_MASK, =
1)
> +#define   PLANE_CUS_VPHASE_0_5			REG_FIELD_PREP(PLANE_CUS_VPHASE_MASK, 2)
> +#define _PLANE_COLOR_CTL_1_A			0x701CC /* GLK+ */
> +#define _PLANE_COLOR_CTL_2_A			0x702CC /* GLK+ */
> +#define _PLANE_COLOR_CTL_3_A			0x703CC /* GLK+ */
> +#define   PLANE_COLOR_PIPE_GAMMA_ENABLE			REG_BIT(30) /* Pre-ICL */
> +#define   PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE	REG_BIT(28)
> +#define   PLANE_COLOR_PIPE_CSC_ENABLE			REG_BIT(23) /* Pre-ICL */
> +#define   PLANE_COLOR_PLANE_CSC_ENABLE			REG_BIT(21) /* ICL+ */
> +#define   PLANE_COLOR_INPUT_CSC_ENABLE			REG_BIT(20) /* ICL+ */
> +#define   PLANE_COLOR_CSC_MODE_MASK			REG_GENMASK(19, 17)
> +#define   PLANE_COLOR_CSC_MODE_BYPASS			REG_FIELD_PREP(PLANE_COLOR_CSC_M=
ODE_MASK, 0)
> +#define   PLANE_COLOR_CSC_MODE_YUV601_TO_RGB601		REG_FIELD_PREP(PLANE_CO=
LOR_CSC_MODE_MASK, 1)
> +#define   PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709		REG_FIELD_PREP(PLANE_CO=
LOR_CSC_MODE_MASK, 2)
> +#define   PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020	REG_FIELD_PREP(PLANE_C=
OLOR_CSC_MODE_MASK, 3)
> +#define   PLANE_COLOR_CSC_MODE_RGB709_TO_RGB2020	REG_FIELD_PREP(PLANE_CO=
LOR_CSC_MODE_MASK, 4)
> +#define   PLANE_COLOR_PLANE_GAMMA_DISABLE		REG_BIT(13)
> +#define   PLANE_COLOR_ALPHA_MASK			REG_GENMASK(5, 4)
> +#define   PLANE_COLOR_ALPHA_DISABLE			REG_FIELD_PREP(PLANE_COLOR_ALPHA_M=
ASK, 0)
> +#define   PLANE_COLOR_ALPHA_SW_PREMULTIPLY		REG_FIELD_PREP(PLANE_COLOR_A=
LPHA_MASK, 2)
> +#define   PLANE_COLOR_ALPHA_HW_PREMULTIPLY		REG_FIELD_PREP(PLANE_COLOR_A=
LPHA_MASK, 3)
> +#define _PLANE_CHICKEN_1_A			0x7026C /* tgl+ */
> +#define _PLANE_CHICKEN_2_A			0x7036C /* tgl+ */
> +#define   PLANE_CHICKEN_DISABLE_DPT		REG_BIT(19) /* mtl+ */
> +#define _PLANE_BUF_CFG_1_A			0x7027c
> +#define _PLANE_BUF_CFG_2_A			0x7037c
> +/* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */
> +#define   PLANE_BUF_END_MASK		REG_GENMASK(27, 16)
> +#define   PLANE_BUF_END(end)		REG_FIELD_PREP(PLANE_BUF_END_MASK, (end))
> +#define   PLANE_BUF_START_MASK		REG_GENMASK(11, 0)
> +#define   PLANE_BUF_START(start)	REG_FIELD_PREP(PLANE_BUF_START_MASK, (s=
tart))
> +#define _PLANE_NV12_BUF_CFG_1_A		0x70278
> +#define _PLANE_NV12_BUF_CFG_2_A		0x70378
> +
> +#define _PLANE_CC_VAL_1_B		0x711b4
> +#define _PLANE_CC_VAL_2_B		0x712b4
> +#define _PLANE_CC_VAL_1(pipe, dw)	(_PIPE(pipe, _PLANE_CC_VAL_1_A, _PLANE=
_CC_VAL_1_B) + (dw) * 4)
> +#define _PLANE_CC_VAL_2(pipe, dw)	(_PIPE(pipe, _PLANE_CC_VAL_2_A, _PLANE=
_CC_VAL_2_B) + (dw) * 4)
> +#define PLANE_CC_VAL(pipe, plane, dw) \
> +	_MMIO_PLANE((plane), _PLANE_CC_VAL_1((pipe), (dw)), _PLANE_CC_VAL_2((pi=
pe), (dw)))
> +
> +/* Input CSC Register Definitions */
> +#define _PLANE_INPUT_CSC_RY_GY_1_A	0x701E0
> +#define _PLANE_INPUT_CSC_RY_GY_2_A	0x702E0
> +
> +#define _PLANE_INPUT_CSC_RY_GY_1_B	0x711E0
> +#define _PLANE_INPUT_CSC_RY_GY_2_B	0x712E0
> +
> +#define _PLANE_INPUT_CSC_RY_GY_1(pipe)	\
> +	_PIPE(pipe, _PLANE_INPUT_CSC_RY_GY_1_A, \
> +	     _PLANE_INPUT_CSC_RY_GY_1_B)
> +#define _PLANE_INPUT_CSC_RY_GY_2(pipe)	\
> +	_PIPE(pipe, _PLANE_INPUT_CSC_RY_GY_2_A, \
> +	     _PLANE_INPUT_CSC_RY_GY_2_B)
> +
> +#define PLANE_INPUT_CSC_COEFF(pipe, plane, index)	\
> +	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_RY_GY_1(pipe) +  (index) * 4, \
> +		    _PLANE_INPUT_CSC_RY_GY_2(pipe) + (index) * 4)
> +
> +#define _PLANE_INPUT_CSC_PREOFF_HI_1_A		0x701F8
> +#define _PLANE_INPUT_CSC_PREOFF_HI_2_A		0x702F8
> +
> +#define _PLANE_INPUT_CSC_PREOFF_HI_1_B		0x711F8
> +#define _PLANE_INPUT_CSC_PREOFF_HI_2_B		0x712F8
> +
> +#define _PLANE_INPUT_CSC_PREOFF_HI_1(pipe)	\
> +	_PIPE(pipe, _PLANE_INPUT_CSC_PREOFF_HI_1_A, \
> +	     _PLANE_INPUT_CSC_PREOFF_HI_1_B)
> +#define _PLANE_INPUT_CSC_PREOFF_HI_2(pipe)	\
> +	_PIPE(pipe, _PLANE_INPUT_CSC_PREOFF_HI_2_A, \
> +	     _PLANE_INPUT_CSC_PREOFF_HI_2_B)
> +#define PLANE_INPUT_CSC_PREOFF(pipe, plane, index)	\
> +	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_PREOFF_HI_1(pipe) + (index) * 4, \
> +		    _PLANE_INPUT_CSC_PREOFF_HI_2(pipe) + (index) * 4)
> +
> +#define _PLANE_INPUT_CSC_POSTOFF_HI_1_A		0x70204
> +#define _PLANE_INPUT_CSC_POSTOFF_HI_2_A		0x70304
> +
> +#define _PLANE_INPUT_CSC_POSTOFF_HI_1_B		0x71204
> +#define _PLANE_INPUT_CSC_POSTOFF_HI_2_B		0x71304
> +
> +#define _PLANE_INPUT_CSC_POSTOFF_HI_1(pipe)	\
> +	_PIPE(pipe, _PLANE_INPUT_CSC_POSTOFF_HI_1_A, \
> +	     _PLANE_INPUT_CSC_POSTOFF_HI_1_B)
> +#define _PLANE_INPUT_CSC_POSTOFF_HI_2(pipe)	\
> +	_PIPE(pipe, _PLANE_INPUT_CSC_POSTOFF_HI_2_A, \
> +	     _PLANE_INPUT_CSC_POSTOFF_HI_2_B)
> +#define PLANE_INPUT_CSC_POSTOFF(pipe, plane, index)	\
> +	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_POSTOFF_HI_1(pipe) + (index) * 4, \
> +		    _PLANE_INPUT_CSC_POSTOFF_HI_2(pipe) + (index) * 4)
> +
> +#define _PLANE_CTL_1_B				0x71180
> +#define _PLANE_CTL_2_B				0x71280
> +#define _PLANE_CTL_3_B				0x71380
> +#define _PLANE_CTL_1(pipe)	_PIPE(pipe, _PLANE_CTL_1_A, _PLANE_CTL_1_B)
> +#define _PLANE_CTL_2(pipe)	_PIPE(pipe, _PLANE_CTL_2_A, _PLANE_CTL_2_B)
> +#define _PLANE_CTL_3(pipe)	_PIPE(pipe, _PLANE_CTL_3_A, _PLANE_CTL_3_B)
> +#define PLANE_CTL(pipe, plane)	\
> +	_MMIO_PLANE(plane, _PLANE_CTL_1(pipe), _PLANE_CTL_2(pipe))
> +
> +#define _PLANE_STRIDE_1_B			0x71188
> +#define _PLANE_STRIDE_2_B			0x71288
> +#define _PLANE_STRIDE_3_B			0x71388
> +#define _PLANE_STRIDE_1(pipe)	\
> +	_PIPE(pipe, _PLANE_STRIDE_1_A, _PLANE_STRIDE_1_B)
> +#define _PLANE_STRIDE_2(pipe)	\
> +	_PIPE(pipe, _PLANE_STRIDE_2_A, _PLANE_STRIDE_2_B)
> +#define _PLANE_STRIDE_3(pipe)	\
> +	_PIPE(pipe, _PLANE_STRIDE_3_A, _PLANE_STRIDE_3_B)
> +#define PLANE_STRIDE(pipe, plane)	\
> +	_MMIO_PLANE(plane, _PLANE_STRIDE_1(pipe), _PLANE_STRIDE_2(pipe))
> +
> +#define _PLANE_POS_1_B				0x7118c
> +#define _PLANE_POS_2_B				0x7128c
> +#define _PLANE_POS_3_B				0x7138c
> +#define _PLANE_POS_1(pipe)	_PIPE(pipe, _PLANE_POS_1_A, _PLANE_POS_1_B)
> +#define _PLANE_POS_2(pipe)	_PIPE(pipe, _PLANE_POS_2_A, _PLANE_POS_2_B)
> +#define _PLANE_POS_3(pipe)	_PIPE(pipe, _PLANE_POS_3_A, _PLANE_POS_3_B)
> +#define PLANE_POS(pipe, plane)	\
> +	_MMIO_PLANE(plane, _PLANE_POS_1(pipe), _PLANE_POS_2(pipe))
> +
> +#define _PLANE_SIZE_1_B				0x71190
> +#define _PLANE_SIZE_2_B				0x71290
> +#define _PLANE_SIZE_3_B				0x71390
> +#define _PLANE_SIZE_1(pipe)	_PIPE(pipe, _PLANE_SIZE_1_A, _PLANE_SIZE_1_B)
> +#define _PLANE_SIZE_2(pipe)	_PIPE(pipe, _PLANE_SIZE_2_A, _PLANE_SIZE_2_B)
> +#define _PLANE_SIZE_3(pipe)	_PIPE(pipe, _PLANE_SIZE_3_A, _PLANE_SIZE_3_B)
> +#define PLANE_SIZE(pipe, plane)	\
> +	_MMIO_PLANE(plane, _PLANE_SIZE_1(pipe), _PLANE_SIZE_2(pipe))
> +
> +#define _PLANE_SURF_1_B				0x7119c
> +#define _PLANE_SURF_2_B				0x7129c
> +#define _PLANE_SURF_3_B				0x7139c
> +#define _PLANE_SURF_1(pipe)	_PIPE(pipe, _PLANE_SURF_1_A, _PLANE_SURF_1_B)
> +#define _PLANE_SURF_2(pipe)	_PIPE(pipe, _PLANE_SURF_2_A, _PLANE_SURF_2_B)
> +#define _PLANE_SURF_3(pipe)	_PIPE(pipe, _PLANE_SURF_3_A, _PLANE_SURF_3_B)
> +#define PLANE_SURF(pipe, plane)	\
> +	_MMIO_PLANE(plane, _PLANE_SURF_1(pipe), _PLANE_SURF_2(pipe))
> +
> +#define _PLANE_OFFSET_1_B			0x711a4
> +#define _PLANE_OFFSET_2_B			0x712a4
> +#define _PLANE_OFFSET_1(pipe) _PIPE(pipe, _PLANE_OFFSET_1_A, _PLANE_OFFS=
ET_1_B)
> +#define _PLANE_OFFSET_2(pipe) _PIPE(pipe, _PLANE_OFFSET_2_A, _PLANE_OFFS=
ET_2_B)
> +#define PLANE_OFFSET(pipe, plane)	\
> +	_MMIO_PLANE(plane, _PLANE_OFFSET_1(pipe), _PLANE_OFFSET_2(pipe))
> +
> +#define _PLANE_KEYVAL_1_B			0x71194
> +#define _PLANE_KEYVAL_2_B			0x71294
> +#define _PLANE_KEYVAL_1(pipe) _PIPE(pipe, _PLANE_KEYVAL_1_A, _PLANE_KEYV=
AL_1_B)
> +#define _PLANE_KEYVAL_2(pipe) _PIPE(pipe, _PLANE_KEYVAL_2_A, _PLANE_KEYV=
AL_2_B)
> +#define PLANE_KEYVAL(pipe, plane)	\
> +	_MMIO_PLANE(plane, _PLANE_KEYVAL_1(pipe), _PLANE_KEYVAL_2(pipe))
> +
> +#define _PLANE_KEYMSK_1_B			0x71198
> +#define _PLANE_KEYMSK_2_B			0x71298
> +#define _PLANE_KEYMSK_1(pipe) _PIPE(pipe, _PLANE_KEYMSK_1_A, _PLANE_KEYM=
SK_1_B)
> +#define _PLANE_KEYMSK_2(pipe) _PIPE(pipe, _PLANE_KEYMSK_2_A, _PLANE_KEYM=
SK_2_B)
> +#define PLANE_KEYMSK(pipe, plane)	\
> +	_MMIO_PLANE(plane, _PLANE_KEYMSK_1(pipe), _PLANE_KEYMSK_2(pipe))
> +
> +#define _PLANE_KEYMAX_1_B			0x711a0
> +#define _PLANE_KEYMAX_2_B			0x712a0
> +#define _PLANE_KEYMAX_1(pipe) _PIPE(pipe, _PLANE_KEYMAX_1_A, _PLANE_KEYM=
AX_1_B)
> +#define _PLANE_KEYMAX_2(pipe) _PIPE(pipe, _PLANE_KEYMAX_2_A, _PLANE_KEYM=
AX_2_B)
> +#define PLANE_KEYMAX(pipe, plane)	\
> +	_MMIO_PLANE(plane, _PLANE_KEYMAX_1(pipe), _PLANE_KEYMAX_2(pipe))
> +
> +#define _PLANE_SURFLIVE_1_B			0x711ac
> +#define _PLANE_SURFLIVE_2_B			0x712ac
> +#define _PLANE_SURFLIVE_1(pipe)	_PIPE(pipe, _PLANE_SURFLIVE_1_A, _PLANE_=
SURFLIVE_1_B)
> +#define _PLANE_SURFLIVE_2(pipe)	_PIPE(pipe, _PLANE_SURFLIVE_2_A, _PLANE_=
SURFLIVE_2_B)
> +#define PLANE_SURFLIVE(pipe, plane)	\
> +	_MMIO_PLANE(plane, _PLANE_SURFLIVE_1(pipe), _PLANE_SURFLIVE_2(pipe))
> +
> +#define _PLANE_CHICKEN_1_B			0x7126c
> +#define _PLANE_CHICKEN_2_B			0x7136c
> +#define _PLANE_CHICKEN_1(pipe)	_PIPE(pipe, _PLANE_CHICKEN_1_A, _PLANE_CH=
ICKEN_1_B)
> +#define _PLANE_CHICKEN_2(pipe)	_PIPE(pipe, _PLANE_CHICKEN_2_A, _PLANE_CH=
ICKEN_2_B)
> +#define PLANE_CHICKEN(pipe, plane) \
> +	_MMIO_PLANE(plane, _PLANE_CHICKEN_1(pipe), _PLANE_CHICKEN_2(pipe))
> +
> +#define _PLANE_AUX_DIST_1_B		0x711c0
> +#define _PLANE_AUX_DIST_2_B		0x712c0
> +#define _PLANE_AUX_DIST_1(pipe) \
> +			_PIPE(pipe, _PLANE_AUX_DIST_1_A, _PLANE_AUX_DIST_1_B)
> +#define _PLANE_AUX_DIST_2(pipe) \
> +			_PIPE(pipe, _PLANE_AUX_DIST_2_A, _PLANE_AUX_DIST_2_B)
> +#define PLANE_AUX_DIST(pipe, plane)     \
> +	_MMIO_PLANE(plane, _PLANE_AUX_DIST_1(pipe), _PLANE_AUX_DIST_2(pipe))
> +
> +#define _PLANE_AUX_OFFSET_1_B		0x711c4
> +#define _PLANE_AUX_OFFSET_2_B		0x712c4
> +#define _PLANE_AUX_OFFSET_1(pipe)       \
> +		_PIPE(pipe, _PLANE_AUX_OFFSET_1_A, _PLANE_AUX_OFFSET_1_B)
> +#define _PLANE_AUX_OFFSET_2(pipe)       \
> +		_PIPE(pipe, _PLANE_AUX_OFFSET_2_A, _PLANE_AUX_OFFSET_2_B)
> +#define PLANE_AUX_OFFSET(pipe, plane)   \
> +	_MMIO_PLANE(plane, _PLANE_AUX_OFFSET_1(pipe), _PLANE_AUX_OFFSET_2(pipe))
> +
> +#define _PLANE_CUS_CTL_1_B		0x711c8
> +#define _PLANE_CUS_CTL_2_B		0x712c8
> +#define _PLANE_CUS_CTL_1(pipe)       \
> +		_PIPE(pipe, _PLANE_CUS_CTL_1_A, _PLANE_CUS_CTL_1_B)
> +#define _PLANE_CUS_CTL_2(pipe)       \
> +		_PIPE(pipe, _PLANE_CUS_CTL_2_A, _PLANE_CUS_CTL_2_B)
> +#define PLANE_CUS_CTL(pipe, plane)   \
> +	_MMIO_PLANE(plane, _PLANE_CUS_CTL_1(pipe), _PLANE_CUS_CTL_2(pipe))
> +
> +#define _PLANE_COLOR_CTL_1_B			0x711CC
> +#define _PLANE_COLOR_CTL_2_B			0x712CC
> +#define _PLANE_COLOR_CTL_3_B			0x713CC
> +#define _PLANE_COLOR_CTL_1(pipe)	\
> +	_PIPE(pipe, _PLANE_COLOR_CTL_1_A, _PLANE_COLOR_CTL_1_B)
> +#define _PLANE_COLOR_CTL_2(pipe)	\
> +	_PIPE(pipe, _PLANE_COLOR_CTL_2_A, _PLANE_COLOR_CTL_2_B)
> +#define PLANE_COLOR_CTL(pipe, plane)	\
> +	_MMIO_PLANE(plane, _PLANE_COLOR_CTL_1(pipe), _PLANE_COLOR_CTL_2(pipe))
> +
> +/* Plane CSC Registers */
> +#define _PLANE_CSC_RY_GY_1_A	0x70210
> +#define _PLANE_CSC_RY_GY_2_A	0x70310
> +
> +#define _PLANE_CSC_RY_GY_1_B	0x71210
> +#define _PLANE_CSC_RY_GY_2_B	0x71310
> +
> +#define _PLANE_CSC_RY_GY_1(pipe)	_PIPE(pipe, _PLANE_CSC_RY_GY_1_A, \
> +					      _PLANE_CSC_RY_GY_1_B)
> +#define _PLANE_CSC_RY_GY_2(pipe)	_PIPE(pipe, _PLANE_CSC_RY_GY_2_A, \
> +					      _PLANE_CSC_RY_GY_2_B)
> +#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane, \
> +							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
> +							    _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)
> +
> +#define _PLANE_CSC_PREOFF_HI_1_A		0x70228
> +#define _PLANE_CSC_PREOFF_HI_2_A		0x70328
> +
> +#define _PLANE_CSC_PREOFF_HI_1_B		0x71228
> +#define _PLANE_CSC_PREOFF_HI_2_B		0x71328
> +
> +#define _PLANE_CSC_PREOFF_HI_1(pipe)	_PIPE(pipe, _PLANE_CSC_PREOFF_HI_1_=
A, \
> +					      _PLANE_CSC_PREOFF_HI_1_B)
> +#define _PLANE_CSC_PREOFF_HI_2(pipe)	_PIPE(pipe, _PLANE_CSC_PREOFF_HI_2_=
A, \
> +					      _PLANE_CSC_PREOFF_HI_2_B)
> +#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_C=
SC_PREOFF_HI_1(pipe) + \
> +							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \
> +							    (index) * 4)
> +
> +#define _PLANE_CSC_POSTOFF_HI_1_A		0x70234
> +#define _PLANE_CSC_POSTOFF_HI_2_A		0x70334
> +
> +#define _PLANE_CSC_POSTOFF_HI_1_B		0x71234
> +#define _PLANE_CSC_POSTOFF_HI_2_B		0x71334
> +
> +#define _PLANE_CSC_POSTOFF_HI_1(pipe)	_PIPE(pipe, _PLANE_CSC_POSTOFF_HI_=
1_A, \
> +					      _PLANE_CSC_POSTOFF_HI_1_B)
> +#define _PLANE_CSC_POSTOFF_HI_2(pipe)	_PIPE(pipe, _PLANE_CSC_POSTOFF_HI_=
2_A, \
> +					      _PLANE_CSC_POSTOFF_HI_2_B)
> +#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_=
CSC_POSTOFF_HI_1(pipe) + \
> +							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
> +							    (index) * 4)
> +
> +#endif /* __SKL_UNIVERSAL_PLANE_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index f85980aba25e..53a565c673e2 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -21,6 +21,7 @@
>  #include "intel_fixed.h"
>  #include "intel_pcode.h"
>  #include "intel_wm.h"
> +#include "skl_universal_plane_regs.h"
>  #include "skl_watermark.h"
>  #include "skl_watermark_regs.h"
>=20=20
> diff --git a/drivers/gpu/drm/i915/gvt/dmabuf.c b/drivers/gpu/drm/i915/gvt=
/dmabuf.c
> index 6834f9fe40cf..9efc3ca0ce82 100644
> --- a/drivers/gpu/drm/i915/gvt/dmabuf.c
> +++ b/drivers/gpu/drm/i915/gvt/dmabuf.c
> @@ -37,9 +37,10 @@
>  #include "gem/i915_gem_dmabuf.h"
>=20=20
>  #include "i915_drv.h"
> -#include "i915_reg.h"
>  #include "gvt.h"
>=20=20
> +#include "display/skl_universal_plane_regs.h"
> +
>  #define GEN8_DECODE_PTE(pte) (pte & GENMASK_ULL(63, 12))
>=20=20
>  static int vgpu_gem_get_pages(struct drm_i915_gem_object *obj)
> diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.c b/drivers/gpu/drm/i915=
/gvt/fb_decoder.c
> index 4140da68aabb..dd6eb0ae003a 100644
> --- a/drivers/gpu/drm/i915/gvt/fb_decoder.c
> +++ b/drivers/gpu/drm/i915/gvt/fb_decoder.c
> @@ -41,6 +41,7 @@
>  #include "i915_reg.h"
>=20=20
>  #include "display/intel_sprite_regs.h"
> +#include "display/skl_universal_plane_regs.h"
>=20=20
>  #define PRIMARY_FORMAT_NUM	16
>  struct pixel_format {
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/g=
vt/handlers.c
> index 102eb354fed6..aae0443015f0 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -51,6 +51,7 @@
>  #include "display/intel_pps_regs.h"
>  #include "display/intel_psr_regs.h"
>  #include "display/intel_sprite_regs.h"
> +#include "display/skl_universal_plane_regs.h"
>  #include "display/skl_watermark_regs.h"
>  #include "display/vlv_dsi_pll_regs.h"
>  #include "gt/intel_gt_regs.h"
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 0f4a2d542d81..08725dc7883e 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2481,358 +2481,6 @@
>  #define _PIPEDSI0CONF		0x7b008
>  #define _PIPEDSI1CONF		0x7b808
>=20=20
> -/* Skylake plane registers */
> -
> -#define _PLANE_CTL_1_A				0x70180
> -#define _PLANE_CTL_2_A				0x70280
> -#define _PLANE_CTL_3_A				0x70380
> -#define   PLANE_CTL_ENABLE			REG_BIT(31)
> -#define   PLANE_CTL_ARB_SLOTS_MASK		REG_GENMASK(30, 28) /* icl+ */
> -#define   PLANE_CTL_ARB_SLOTS(x)		REG_FIELD_PREP(PLANE_CTL_ARB_SLOTS_MAS=
K, (x)) /* icl+ */
> -#define   PLANE_CTL_PIPE_GAMMA_ENABLE		REG_BIT(30) /* Pre-GLK */
> -#define   PLANE_CTL_YUV_RANGE_CORRECTION_DISABLE	REG_BIT(28)
> -/*
> - * ICL+ uses the same PLANE_CTL_FORMAT bits, but the field definition
> - * expanded to include bit 23 as well. However, the shift-24 based values
> - * correctly map to the same formats in ICL, as long as bit 23 is set to=
 0
> - */
> -#define   PLANE_CTL_FORMAT_MASK_SKL		REG_GENMASK(27, 24) /* pre-icl */
> -#define   PLANE_CTL_FORMAT_MASK_ICL		REG_GENMASK(27, 23) /* icl+ */
> -#define   PLANE_CTL_FORMAT_YUV422		REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_=
SKL, 0)
> -#define   PLANE_CTL_FORMAT_NV12			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_S=
KL, 1)
> -#define   PLANE_CTL_FORMAT_XRGB_2101010		REG_FIELD_PREP(PLANE_CTL_FORMAT=
_MASK_SKL, 2)
> -#define   PLANE_CTL_FORMAT_P010			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_S=
KL, 3)
> -#define   PLANE_CTL_FORMAT_XRGB_8888		REG_FIELD_PREP(PLANE_CTL_FORMAT_MA=
SK_SKL, 4)
> -#define   PLANE_CTL_FORMAT_P012			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_S=
KL, 5)
> -#define   PLANE_CTL_FORMAT_XRGB_16161616F	REG_FIELD_PREP(PLANE_CTL_FORMA=
T_MASK_SKL, 6)
> -#define   PLANE_CTL_FORMAT_P016			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_S=
KL, 7)
> -#define   PLANE_CTL_FORMAT_XYUV			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_S=
KL, 8)
> -#define   PLANE_CTL_FORMAT_INDEXED		REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK=
_SKL, 12)
> -#define   PLANE_CTL_FORMAT_RGB_565		REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK=
_SKL, 14)
> -#define   PLANE_CTL_FORMAT_Y210			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_I=
CL, 1)
> -#define   PLANE_CTL_FORMAT_Y212			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_I=
CL, 3)
> -#define   PLANE_CTL_FORMAT_Y216			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_I=
CL, 5)
> -#define   PLANE_CTL_FORMAT_Y410			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_I=
CL, 7)
> -#define   PLANE_CTL_FORMAT_Y412			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_I=
CL, 9)
> -#define   PLANE_CTL_FORMAT_Y416			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_I=
CL, 11)
> -#define   PLANE_CTL_PIPE_CSC_ENABLE		REG_BIT(23) /* Pre-GLK */
> -#define   PLANE_CTL_KEY_ENABLE_MASK		REG_GENMASK(22, 21)
> -#define   PLANE_CTL_KEY_ENABLE_SOURCE		REG_FIELD_PREP(PLANE_CTL_KEY_ENAB=
LE_MASK, 1)
> -#define   PLANE_CTL_KEY_ENABLE_DESTINATION	REG_FIELD_PREP(PLANE_CTL_KEY_=
ENABLE_MASK, 2)
> -#define   PLANE_CTL_ORDER_RGBX			REG_BIT(20)
> -#define   PLANE_CTL_YUV420_Y_PLANE		REG_BIT(19)
> -#define   PLANE_CTL_YUV_TO_RGB_CSC_FORMAT_BT709	REG_BIT(18)
> -#define   PLANE_CTL_YUV422_ORDER_MASK		REG_GENMASK(17, 16)
> -#define   PLANE_CTL_YUV422_ORDER_YUYV		REG_FIELD_PREP(PLANE_CTL_YUV422_O=
RDER_MASK, 0)
> -#define   PLANE_CTL_YUV422_ORDER_UYVY		REG_FIELD_PREP(PLANE_CTL_YUV422_O=
RDER_MASK, 1)
> -#define   PLANE_CTL_YUV422_ORDER_YVYU		REG_FIELD_PREP(PLANE_CTL_YUV422_O=
RDER_MASK, 2)
> -#define   PLANE_CTL_YUV422_ORDER_VYUY		REG_FIELD_PREP(PLANE_CTL_YUV422_O=
RDER_MASK, 3)
> -#define   PLANE_CTL_RENDER_DECOMPRESSION_ENABLE	REG_BIT(15)
> -#define   PLANE_CTL_TRICKLE_FEED_DISABLE	REG_BIT(14)
> -#define   PLANE_CTL_CLEAR_COLOR_DISABLE		REG_BIT(13) /* TGL+ */
> -#define   PLANE_CTL_PLANE_GAMMA_DISABLE		REG_BIT(13) /* Pre-GLK */
> -#define   PLANE_CTL_TILED_MASK			REG_GENMASK(12, 10)
> -#define   PLANE_CTL_TILED_LINEAR		REG_FIELD_PREP(PLANE_CTL_TILED_MASK, 0)
> -#define   PLANE_CTL_TILED_X			REG_FIELD_PREP(PLANE_CTL_TILED_MASK, 1)
> -#define   PLANE_CTL_TILED_Y			REG_FIELD_PREP(PLANE_CTL_TILED_MASK, 4)
> -#define   PLANE_CTL_TILED_YF			REG_FIELD_PREP(PLANE_CTL_TILED_MASK, 5)
> -#define   PLANE_CTL_TILED_4                     REG_FIELD_PREP(PLANE_CTL=
_TILED_MASK, 5)
> -#define   PLANE_CTL_ASYNC_FLIP			REG_BIT(9)
> -#define   PLANE_CTL_FLIP_HORIZONTAL		REG_BIT(8)
> -#define   PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE	REG_BIT(4) /* TGL+ */
> -#define   PLANE_CTL_ALPHA_MASK			REG_GENMASK(5, 4) /* Pre-GLK */
> -#define   PLANE_CTL_ALPHA_DISABLE		REG_FIELD_PREP(PLANE_CTL_ALPHA_MASK, =
0)
> -#define   PLANE_CTL_ALPHA_SW_PREMULTIPLY	REG_FIELD_PREP(PLANE_CTL_ALPHA_=
MASK, 2)
> -#define   PLANE_CTL_ALPHA_HW_PREMULTIPLY	REG_FIELD_PREP(PLANE_CTL_ALPHA_=
MASK, 3)
> -#define   PLANE_CTL_ROTATE_MASK			REG_GENMASK(1, 0)
> -#define   PLANE_CTL_ROTATE_0			REG_FIELD_PREP(PLANE_CTL_ROTATE_MASK, 0)
> -#define   PLANE_CTL_ROTATE_90			REG_FIELD_PREP(PLANE_CTL_ROTATE_MASK, 1)
> -#define   PLANE_CTL_ROTATE_180			REG_FIELD_PREP(PLANE_CTL_ROTATE_MASK, 2)
> -#define   PLANE_CTL_ROTATE_270			REG_FIELD_PREP(PLANE_CTL_ROTATE_MASK, 3)
> -#define _PLANE_STRIDE_1_A			0x70188
> -#define _PLANE_STRIDE_2_A			0x70288
> -#define _PLANE_STRIDE_3_A			0x70388
> -#define   PLANE_STRIDE__MASK			REG_GENMASK(11, 0)
> -#define   PLANE_STRIDE_(stride)			REG_FIELD_PREP(PLANE_STRIDE__MASK, (st=
ride))
> -#define _PLANE_POS_1_A				0x7018c
> -#define _PLANE_POS_2_A				0x7028c
> -#define _PLANE_POS_3_A				0x7038c
> -#define   PLANE_POS_Y_MASK			REG_GENMASK(31, 16)
> -#define   PLANE_POS_Y(y)			REG_FIELD_PREP(PLANE_POS_Y_MASK, (y))
> -#define   PLANE_POS_X_MASK			REG_GENMASK(15, 0)
> -#define   PLANE_POS_X(x)			REG_FIELD_PREP(PLANE_POS_X_MASK, (x))
> -#define _PLANE_SIZE_1_A				0x70190
> -#define _PLANE_SIZE_2_A				0x70290
> -#define _PLANE_SIZE_3_A				0x70390
> -#define   PLANE_HEIGHT_MASK			REG_GENMASK(31, 16)
> -#define   PLANE_HEIGHT(h)			REG_FIELD_PREP(PLANE_HEIGHT_MASK, (h))
> -#define   PLANE_WIDTH_MASK			REG_GENMASK(15, 0)
> -#define   PLANE_WIDTH(w)			REG_FIELD_PREP(PLANE_WIDTH_MASK, (w))
> -#define _PLANE_SURF_1_A				0x7019c
> -#define _PLANE_SURF_2_A				0x7029c
> -#define _PLANE_SURF_3_A				0x7039c
> -#define   PLANE_SURF_ADDR_MASK			REG_GENMASK(31, 12)
> -#define   PLANE_SURF_DECRYPT			REG_BIT(2)
> -#define _PLANE_OFFSET_1_A			0x701a4
> -#define _PLANE_OFFSET_2_A			0x702a4
> -#define _PLANE_OFFSET_3_A			0x703a4
> -#define   PLANE_OFFSET_Y_MASK			REG_GENMASK(31, 16)
> -#define   PLANE_OFFSET_Y(y)			REG_FIELD_PREP(PLANE_OFFSET_Y_MASK, (y))
> -#define   PLANE_OFFSET_X_MASK			REG_GENMASK(15, 0)
> -#define   PLANE_OFFSET_X(x)			REG_FIELD_PREP(PLANE_OFFSET_X_MASK, (x))
> -#define _PLANE_KEYVAL_1_A			0x70194
> -#define _PLANE_KEYVAL_2_A			0x70294
> -#define _PLANE_KEYMSK_1_A			0x70198
> -#define _PLANE_KEYMSK_2_A			0x70298
> -#define   PLANE_KEYMSK_ALPHA_ENABLE		REG_BIT(31)
> -#define _PLANE_KEYMAX_1_A			0x701a0
> -#define _PLANE_KEYMAX_2_A			0x702a0
> -#define   PLANE_KEYMAX_ALPHA_MASK		REG_GENMASK(31, 24)
> -#define   PLANE_KEYMAX_ALPHA(a)			REG_FIELD_PREP(PLANE_KEYMAX_ALPHA_MASK=
, (a))
> -#define _PLANE_SURFLIVE_1_A			0x701ac
> -#define _PLANE_SURFLIVE_2_A			0x702ac
> -#define _PLANE_CC_VAL_1_A			0x701b4
> -#define _PLANE_CC_VAL_2_A			0x702b4
> -#define _PLANE_AUX_DIST_1_A			0x701c0
> -#define   PLANE_AUX_DISTANCE_MASK		REG_GENMASK(31, 12)
> -#define   PLANE_AUX_STRIDE_MASK			REG_GENMASK(11, 0)
> -#define   PLANE_AUX_STRIDE(stride)		REG_FIELD_PREP(PLANE_AUX_STRIDE_MASK=
, (stride))
> -#define _PLANE_AUX_DIST_2_A			0x702c0
> -#define _PLANE_AUX_OFFSET_1_A			0x701c4
> -#define _PLANE_AUX_OFFSET_2_A			0x702c4
> -#define _PLANE_CUS_CTL_1_A			0x701c8
> -#define _PLANE_CUS_CTL_2_A			0x702c8
> -#define   PLANE_CUS_ENABLE			REG_BIT(31)
> -#define   PLANE_CUS_Y_PLANE_MASK			REG_BIT(30)
> -#define   PLANE_CUS_Y_PLANE_4_RKL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK=
, 0)
> -#define   PLANE_CUS_Y_PLANE_5_RKL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK=
, 1)
> -#define   PLANE_CUS_Y_PLANE_6_ICL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK=
, 0)
> -#define   PLANE_CUS_Y_PLANE_7_ICL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK=
, 1)
> -#define   PLANE_CUS_HPHASE_SIGN_NEGATIVE		REG_BIT(19)
> -#define   PLANE_CUS_HPHASE_MASK			REG_GENMASK(17, 16)
> -#define   PLANE_CUS_HPHASE_0			REG_FIELD_PREP(PLANE_CUS_HPHASE_MASK, 0)
> -#define   PLANE_CUS_HPHASE_0_25			REG_FIELD_PREP(PLANE_CUS_HPHASE_MASK, =
1)
> -#define   PLANE_CUS_HPHASE_0_5			REG_FIELD_PREP(PLANE_CUS_HPHASE_MASK, 2)
> -#define   PLANE_CUS_VPHASE_SIGN_NEGATIVE		REG_BIT(15)
> -#define   PLANE_CUS_VPHASE_MASK			REG_GENMASK(13, 12)
> -#define   PLANE_CUS_VPHASE_0			REG_FIELD_PREP(PLANE_CUS_VPHASE_MASK, 0)
> -#define   PLANE_CUS_VPHASE_0_25			REG_FIELD_PREP(PLANE_CUS_VPHASE_MASK, =
1)
> -#define   PLANE_CUS_VPHASE_0_5			REG_FIELD_PREP(PLANE_CUS_VPHASE_MASK, 2)
> -#define _PLANE_COLOR_CTL_1_A			0x701CC /* GLK+ */
> -#define _PLANE_COLOR_CTL_2_A			0x702CC /* GLK+ */
> -#define _PLANE_COLOR_CTL_3_A			0x703CC /* GLK+ */
> -#define   PLANE_COLOR_PIPE_GAMMA_ENABLE			REG_BIT(30) /* Pre-ICL */
> -#define   PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE	REG_BIT(28)
> -#define   PLANE_COLOR_PIPE_CSC_ENABLE			REG_BIT(23) /* Pre-ICL */
> -#define   PLANE_COLOR_PLANE_CSC_ENABLE			REG_BIT(21) /* ICL+ */
> -#define   PLANE_COLOR_INPUT_CSC_ENABLE			REG_BIT(20) /* ICL+ */
> -#define   PLANE_COLOR_CSC_MODE_MASK			REG_GENMASK(19, 17)
> -#define   PLANE_COLOR_CSC_MODE_BYPASS			REG_FIELD_PREP(PLANE_COLOR_CSC_M=
ODE_MASK, 0)
> -#define   PLANE_COLOR_CSC_MODE_YUV601_TO_RGB601		REG_FIELD_PREP(PLANE_CO=
LOR_CSC_MODE_MASK, 1)
> -#define   PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709		REG_FIELD_PREP(PLANE_CO=
LOR_CSC_MODE_MASK, 2)
> -#define   PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020	REG_FIELD_PREP(PLANE_C=
OLOR_CSC_MODE_MASK, 3)
> -#define   PLANE_COLOR_CSC_MODE_RGB709_TO_RGB2020	REG_FIELD_PREP(PLANE_CO=
LOR_CSC_MODE_MASK, 4)
> -#define   PLANE_COLOR_PLANE_GAMMA_DISABLE		REG_BIT(13)
> -#define   PLANE_COLOR_ALPHA_MASK			REG_GENMASK(5, 4)
> -#define   PLANE_COLOR_ALPHA_DISABLE			REG_FIELD_PREP(PLANE_COLOR_ALPHA_M=
ASK, 0)
> -#define   PLANE_COLOR_ALPHA_SW_PREMULTIPLY		REG_FIELD_PREP(PLANE_COLOR_A=
LPHA_MASK, 2)
> -#define   PLANE_COLOR_ALPHA_HW_PREMULTIPLY		REG_FIELD_PREP(PLANE_COLOR_A=
LPHA_MASK, 3)
> -#define _PLANE_CHICKEN_1_A			0x7026C /* tgl+ */
> -#define _PLANE_CHICKEN_2_A			0x7036C /* tgl+ */
> -#define   PLANE_CHICKEN_DISABLE_DPT		REG_BIT(19) /* mtl+ */
> -#define _PLANE_BUF_CFG_1_A			0x7027c
> -#define _PLANE_BUF_CFG_2_A			0x7037c
> -/* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */
> -#define   PLANE_BUF_END_MASK		REG_GENMASK(27, 16)
> -#define   PLANE_BUF_END(end)		REG_FIELD_PREP(PLANE_BUF_END_MASK, (end))
> -#define   PLANE_BUF_START_MASK		REG_GENMASK(11, 0)
> -#define   PLANE_BUF_START(start)	REG_FIELD_PREP(PLANE_BUF_START_MASK, (s=
tart))
> -#define _PLANE_NV12_BUF_CFG_1_A		0x70278
> -#define _PLANE_NV12_BUF_CFG_2_A		0x70378
> -
> -#define _PLANE_CC_VAL_1_B		0x711b4
> -#define _PLANE_CC_VAL_2_B		0x712b4
> -#define _PLANE_CC_VAL_1(pipe, dw)	(_PIPE(pipe, _PLANE_CC_VAL_1_A, _PLANE=
_CC_VAL_1_B) + (dw) * 4)
> -#define _PLANE_CC_VAL_2(pipe, dw)	(_PIPE(pipe, _PLANE_CC_VAL_2_A, _PLANE=
_CC_VAL_2_B) + (dw) * 4)
> -#define PLANE_CC_VAL(pipe, plane, dw) \
> -	_MMIO_PLANE((plane), _PLANE_CC_VAL_1((pipe), (dw)), _PLANE_CC_VAL_2((pi=
pe), (dw)))
> -
> -/* Input CSC Register Definitions */
> -#define _PLANE_INPUT_CSC_RY_GY_1_A	0x701E0
> -#define _PLANE_INPUT_CSC_RY_GY_2_A	0x702E0
> -
> -#define _PLANE_INPUT_CSC_RY_GY_1_B	0x711E0
> -#define _PLANE_INPUT_CSC_RY_GY_2_B	0x712E0
> -
> -#define _PLANE_INPUT_CSC_RY_GY_1(pipe)	\
> -	_PIPE(pipe, _PLANE_INPUT_CSC_RY_GY_1_A, \
> -	     _PLANE_INPUT_CSC_RY_GY_1_B)
> -#define _PLANE_INPUT_CSC_RY_GY_2(pipe)	\
> -	_PIPE(pipe, _PLANE_INPUT_CSC_RY_GY_2_A, \
> -	     _PLANE_INPUT_CSC_RY_GY_2_B)
> -
> -#define PLANE_INPUT_CSC_COEFF(pipe, plane, index)	\
> -	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_RY_GY_1(pipe) +  (index) * 4, \
> -		    _PLANE_INPUT_CSC_RY_GY_2(pipe) + (index) * 4)
> -
> -#define _PLANE_INPUT_CSC_PREOFF_HI_1_A		0x701F8
> -#define _PLANE_INPUT_CSC_PREOFF_HI_2_A		0x702F8
> -
> -#define _PLANE_INPUT_CSC_PREOFF_HI_1_B		0x711F8
> -#define _PLANE_INPUT_CSC_PREOFF_HI_2_B		0x712F8
> -
> -#define _PLANE_INPUT_CSC_PREOFF_HI_1(pipe)	\
> -	_PIPE(pipe, _PLANE_INPUT_CSC_PREOFF_HI_1_A, \
> -	     _PLANE_INPUT_CSC_PREOFF_HI_1_B)
> -#define _PLANE_INPUT_CSC_PREOFF_HI_2(pipe)	\
> -	_PIPE(pipe, _PLANE_INPUT_CSC_PREOFF_HI_2_A, \
> -	     _PLANE_INPUT_CSC_PREOFF_HI_2_B)
> -#define PLANE_INPUT_CSC_PREOFF(pipe, plane, index)	\
> -	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_PREOFF_HI_1(pipe) + (index) * 4, \
> -		    _PLANE_INPUT_CSC_PREOFF_HI_2(pipe) + (index) * 4)
> -
> -#define _PLANE_INPUT_CSC_POSTOFF_HI_1_A		0x70204
> -#define _PLANE_INPUT_CSC_POSTOFF_HI_2_A		0x70304
> -
> -#define _PLANE_INPUT_CSC_POSTOFF_HI_1_B		0x71204
> -#define _PLANE_INPUT_CSC_POSTOFF_HI_2_B		0x71304
> -
> -#define _PLANE_INPUT_CSC_POSTOFF_HI_1(pipe)	\
> -	_PIPE(pipe, _PLANE_INPUT_CSC_POSTOFF_HI_1_A, \
> -	     _PLANE_INPUT_CSC_POSTOFF_HI_1_B)
> -#define _PLANE_INPUT_CSC_POSTOFF_HI_2(pipe)	\
> -	_PIPE(pipe, _PLANE_INPUT_CSC_POSTOFF_HI_2_A, \
> -	     _PLANE_INPUT_CSC_POSTOFF_HI_2_B)
> -#define PLANE_INPUT_CSC_POSTOFF(pipe, plane, index)	\
> -	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_POSTOFF_HI_1(pipe) + (index) * 4, \
> -		    _PLANE_INPUT_CSC_POSTOFF_HI_2(pipe) + (index) * 4)
> -
> -#define _PLANE_CTL_1_B				0x71180
> -#define _PLANE_CTL_2_B				0x71280
> -#define _PLANE_CTL_3_B				0x71380
> -#define _PLANE_CTL_1(pipe)	_PIPE(pipe, _PLANE_CTL_1_A, _PLANE_CTL_1_B)
> -#define _PLANE_CTL_2(pipe)	_PIPE(pipe, _PLANE_CTL_2_A, _PLANE_CTL_2_B)
> -#define _PLANE_CTL_3(pipe)	_PIPE(pipe, _PLANE_CTL_3_A, _PLANE_CTL_3_B)
> -#define PLANE_CTL(pipe, plane)	\
> -	_MMIO_PLANE(plane, _PLANE_CTL_1(pipe), _PLANE_CTL_2(pipe))
> -
> -#define _PLANE_STRIDE_1_B			0x71188
> -#define _PLANE_STRIDE_2_B			0x71288
> -#define _PLANE_STRIDE_3_B			0x71388
> -#define _PLANE_STRIDE_1(pipe)	\
> -	_PIPE(pipe, _PLANE_STRIDE_1_A, _PLANE_STRIDE_1_B)
> -#define _PLANE_STRIDE_2(pipe)	\
> -	_PIPE(pipe, _PLANE_STRIDE_2_A, _PLANE_STRIDE_2_B)
> -#define _PLANE_STRIDE_3(pipe)	\
> -	_PIPE(pipe, _PLANE_STRIDE_3_A, _PLANE_STRIDE_3_B)
> -#define PLANE_STRIDE(pipe, plane)	\
> -	_MMIO_PLANE(plane, _PLANE_STRIDE_1(pipe), _PLANE_STRIDE_2(pipe))
> -
> -#define _PLANE_POS_1_B				0x7118c
> -#define _PLANE_POS_2_B				0x7128c
> -#define _PLANE_POS_3_B				0x7138c
> -#define _PLANE_POS_1(pipe)	_PIPE(pipe, _PLANE_POS_1_A, _PLANE_POS_1_B)
> -#define _PLANE_POS_2(pipe)	_PIPE(pipe, _PLANE_POS_2_A, _PLANE_POS_2_B)
> -#define _PLANE_POS_3(pipe)	_PIPE(pipe, _PLANE_POS_3_A, _PLANE_POS_3_B)
> -#define PLANE_POS(pipe, plane)	\
> -	_MMIO_PLANE(plane, _PLANE_POS_1(pipe), _PLANE_POS_2(pipe))
> -
> -#define _PLANE_SIZE_1_B				0x71190
> -#define _PLANE_SIZE_2_B				0x71290
> -#define _PLANE_SIZE_3_B				0x71390
> -#define _PLANE_SIZE_1(pipe)	_PIPE(pipe, _PLANE_SIZE_1_A, _PLANE_SIZE_1_B)
> -#define _PLANE_SIZE_2(pipe)	_PIPE(pipe, _PLANE_SIZE_2_A, _PLANE_SIZE_2_B)
> -#define _PLANE_SIZE_3(pipe)	_PIPE(pipe, _PLANE_SIZE_3_A, _PLANE_SIZE_3_B)
> -#define PLANE_SIZE(pipe, plane)	\
> -	_MMIO_PLANE(plane, _PLANE_SIZE_1(pipe), _PLANE_SIZE_2(pipe))
> -
> -#define _PLANE_SURF_1_B				0x7119c
> -#define _PLANE_SURF_2_B				0x7129c
> -#define _PLANE_SURF_3_B				0x7139c
> -#define _PLANE_SURF_1(pipe)	_PIPE(pipe, _PLANE_SURF_1_A, _PLANE_SURF_1_B)
> -#define _PLANE_SURF_2(pipe)	_PIPE(pipe, _PLANE_SURF_2_A, _PLANE_SURF_2_B)
> -#define _PLANE_SURF_3(pipe)	_PIPE(pipe, _PLANE_SURF_3_A, _PLANE_SURF_3_B)
> -#define PLANE_SURF(pipe, plane)	\
> -	_MMIO_PLANE(plane, _PLANE_SURF_1(pipe), _PLANE_SURF_2(pipe))
> -
> -#define _PLANE_OFFSET_1_B			0x711a4
> -#define _PLANE_OFFSET_2_B			0x712a4
> -#define _PLANE_OFFSET_1(pipe) _PIPE(pipe, _PLANE_OFFSET_1_A, _PLANE_OFFS=
ET_1_B)
> -#define _PLANE_OFFSET_2(pipe) _PIPE(pipe, _PLANE_OFFSET_2_A, _PLANE_OFFS=
ET_2_B)
> -#define PLANE_OFFSET(pipe, plane)	\
> -	_MMIO_PLANE(plane, _PLANE_OFFSET_1(pipe), _PLANE_OFFSET_2(pipe))
> -
> -#define _PLANE_KEYVAL_1_B			0x71194
> -#define _PLANE_KEYVAL_2_B			0x71294
> -#define _PLANE_KEYVAL_1(pipe) _PIPE(pipe, _PLANE_KEYVAL_1_A, _PLANE_KEYV=
AL_1_B)
> -#define _PLANE_KEYVAL_2(pipe) _PIPE(pipe, _PLANE_KEYVAL_2_A, _PLANE_KEYV=
AL_2_B)
> -#define PLANE_KEYVAL(pipe, plane)	\
> -	_MMIO_PLANE(plane, _PLANE_KEYVAL_1(pipe), _PLANE_KEYVAL_2(pipe))
> -
> -#define _PLANE_KEYMSK_1_B			0x71198
> -#define _PLANE_KEYMSK_2_B			0x71298
> -#define _PLANE_KEYMSK_1(pipe) _PIPE(pipe, _PLANE_KEYMSK_1_A, _PLANE_KEYM=
SK_1_B)
> -#define _PLANE_KEYMSK_2(pipe) _PIPE(pipe, _PLANE_KEYMSK_2_A, _PLANE_KEYM=
SK_2_B)
> -#define PLANE_KEYMSK(pipe, plane)	\
> -	_MMIO_PLANE(plane, _PLANE_KEYMSK_1(pipe), _PLANE_KEYMSK_2(pipe))
> -
> -#define _PLANE_KEYMAX_1_B			0x711a0
> -#define _PLANE_KEYMAX_2_B			0x712a0
> -#define _PLANE_KEYMAX_1(pipe) _PIPE(pipe, _PLANE_KEYMAX_1_A, _PLANE_KEYM=
AX_1_B)
> -#define _PLANE_KEYMAX_2(pipe) _PIPE(pipe, _PLANE_KEYMAX_2_A, _PLANE_KEYM=
AX_2_B)
> -#define PLANE_KEYMAX(pipe, plane)	\
> -	_MMIO_PLANE(plane, _PLANE_KEYMAX_1(pipe), _PLANE_KEYMAX_2(pipe))
> -
> -#define _PLANE_SURFLIVE_1_B			0x711ac
> -#define _PLANE_SURFLIVE_2_B			0x712ac
> -#define _PLANE_SURFLIVE_1(pipe)	_PIPE(pipe, _PLANE_SURFLIVE_1_A, _PLANE_=
SURFLIVE_1_B)
> -#define _PLANE_SURFLIVE_2(pipe)	_PIPE(pipe, _PLANE_SURFLIVE_2_A, _PLANE_=
SURFLIVE_2_B)
> -#define PLANE_SURFLIVE(pipe, plane)	\
> -	_MMIO_PLANE(plane, _PLANE_SURFLIVE_1(pipe), _PLANE_SURFLIVE_2(pipe))
> -
> -#define _PLANE_CHICKEN_1_B			0x7126c
> -#define _PLANE_CHICKEN_2_B			0x7136c
> -#define _PLANE_CHICKEN_1(pipe)	_PIPE(pipe, _PLANE_CHICKEN_1_A, _PLANE_CH=
ICKEN_1_B)
> -#define _PLANE_CHICKEN_2(pipe)	_PIPE(pipe, _PLANE_CHICKEN_2_A, _PLANE_CH=
ICKEN_2_B)
> -#define PLANE_CHICKEN(pipe, plane) \
> -	_MMIO_PLANE(plane, _PLANE_CHICKEN_1(pipe), _PLANE_CHICKEN_2(pipe))
> -
> -#define _PLANE_AUX_DIST_1_B		0x711c0
> -#define _PLANE_AUX_DIST_2_B		0x712c0
> -#define _PLANE_AUX_DIST_1(pipe) \
> -			_PIPE(pipe, _PLANE_AUX_DIST_1_A, _PLANE_AUX_DIST_1_B)
> -#define _PLANE_AUX_DIST_2(pipe) \
> -			_PIPE(pipe, _PLANE_AUX_DIST_2_A, _PLANE_AUX_DIST_2_B)
> -#define PLANE_AUX_DIST(pipe, plane)     \
> -	_MMIO_PLANE(plane, _PLANE_AUX_DIST_1(pipe), _PLANE_AUX_DIST_2(pipe))
> -
> -#define _PLANE_AUX_OFFSET_1_B		0x711c4
> -#define _PLANE_AUX_OFFSET_2_B		0x712c4
> -#define _PLANE_AUX_OFFSET_1(pipe)       \
> -		_PIPE(pipe, _PLANE_AUX_OFFSET_1_A, _PLANE_AUX_OFFSET_1_B)
> -#define _PLANE_AUX_OFFSET_2(pipe)       \
> -		_PIPE(pipe, _PLANE_AUX_OFFSET_2_A, _PLANE_AUX_OFFSET_2_B)
> -#define PLANE_AUX_OFFSET(pipe, plane)   \
> -	_MMIO_PLANE(plane, _PLANE_AUX_OFFSET_1(pipe), _PLANE_AUX_OFFSET_2(pipe))
> -
> -#define _PLANE_CUS_CTL_1_B		0x711c8
> -#define _PLANE_CUS_CTL_2_B		0x712c8
> -#define _PLANE_CUS_CTL_1(pipe)       \
> -		_PIPE(pipe, _PLANE_CUS_CTL_1_A, _PLANE_CUS_CTL_1_B)
> -#define _PLANE_CUS_CTL_2(pipe)       \
> -		_PIPE(pipe, _PLANE_CUS_CTL_2_A, _PLANE_CUS_CTL_2_B)
> -#define PLANE_CUS_CTL(pipe, plane)   \
> -	_MMIO_PLANE(plane, _PLANE_CUS_CTL_1(pipe), _PLANE_CUS_CTL_2(pipe))
> -
> -#define _PLANE_COLOR_CTL_1_B			0x711CC
> -#define _PLANE_COLOR_CTL_2_B			0x712CC
> -#define _PLANE_COLOR_CTL_3_B			0x713CC
> -#define _PLANE_COLOR_CTL_1(pipe)	\
> -	_PIPE(pipe, _PLANE_COLOR_CTL_1_A, _PLANE_COLOR_CTL_1_B)
> -#define _PLANE_COLOR_CTL_2(pipe)	\
> -	_PIPE(pipe, _PLANE_COLOR_CTL_2_A, _PLANE_COLOR_CTL_2_B)
> -#define PLANE_COLOR_CTL(pipe, plane)	\
> -	_MMIO_PLANE(plane, _PLANE_COLOR_CTL_1(pipe), _PLANE_COLOR_CTL_2(pipe))
>=20=20
>  /* VBIOS regs */
>  #define VGACNTRL		_MMIO(0x71400)
> @@ -5151,49 +4799,6 @@ enum skl_power_gate {
>  #define  WM_DBG_DISALLOW_MAXFIFO	(1 << 1)
>  #define  WM_DBG_DISALLOW_SPRITE		(1 << 2)
>=20=20
> -/* Plane CSC Registers */
> -#define _PLANE_CSC_RY_GY_1_A	0x70210
> -#define _PLANE_CSC_RY_GY_2_A	0x70310
> -
> -#define _PLANE_CSC_RY_GY_1_B	0x71210
> -#define _PLANE_CSC_RY_GY_2_B	0x71310
> -
> -#define _PLANE_CSC_RY_GY_1(pipe)	_PIPE(pipe, _PLANE_CSC_RY_GY_1_A, \
> -					      _PLANE_CSC_RY_GY_1_B)
> -#define _PLANE_CSC_RY_GY_2(pipe)	_PIPE(pipe, _PLANE_CSC_RY_GY_2_A, \
> -					      _PLANE_CSC_RY_GY_2_B)
> -#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane, \
> -							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
> -							    _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)
> -
> -#define _PLANE_CSC_PREOFF_HI_1_A		0x70228
> -#define _PLANE_CSC_PREOFF_HI_2_A		0x70328
> -
> -#define _PLANE_CSC_PREOFF_HI_1_B		0x71228
> -#define _PLANE_CSC_PREOFF_HI_2_B		0x71328
> -
> -#define _PLANE_CSC_PREOFF_HI_1(pipe)	_PIPE(pipe, _PLANE_CSC_PREOFF_HI_1_=
A, \
> -					      _PLANE_CSC_PREOFF_HI_1_B)
> -#define _PLANE_CSC_PREOFF_HI_2(pipe)	_PIPE(pipe, _PLANE_CSC_PREOFF_HI_2_=
A, \
> -					      _PLANE_CSC_PREOFF_HI_2_B)
> -#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_C=
SC_PREOFF_HI_1(pipe) + \
> -							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \
> -							    (index) * 4)
> -
> -#define _PLANE_CSC_POSTOFF_HI_1_A		0x70234
> -#define _PLANE_CSC_POSTOFF_HI_2_A		0x70334
> -
> -#define _PLANE_CSC_POSTOFF_HI_1_B		0x71234
> -#define _PLANE_CSC_POSTOFF_HI_2_B		0x71334
> -
> -#define _PLANE_CSC_POSTOFF_HI_1(pipe)	_PIPE(pipe, _PLANE_CSC_POSTOFF_HI_=
1_A, \
> -					      _PLANE_CSC_POSTOFF_HI_1_B)
> -#define _PLANE_CSC_POSTOFF_HI_2(pipe)	_PIPE(pipe, _PLANE_CSC_POSTOFF_HI_=
2_A, \
> -					      _PLANE_CSC_POSTOFF_HI_2_B)
> -#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_=
CSC_POSTOFF_HI_1(pipe) + \
> -							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
> -							    (index) * 4)
> -
>  /* Gen4+ Timestamp and Pipe Frame time stamp registers */
>  #define GEN4_TIMESTAMP		_MMIO(0x2358)
>  #define ILK_TIMESTAMP_HI	_MMIO(0x70070)
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/dr=
m/i915/intel_gvt_mmio_table.c
> index e1a35f70b544..178eba121881 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -16,6 +16,7 @@
>  #include "display/intel_lvds_regs.h"
>  #include "display/intel_psr_regs.h"
>  #include "display/intel_sprite_regs.h"
> +#include "display/skl_universal_plane_regs.h"
>  #include "display/skl_watermark_regs.h"
>  #include "display/vlv_dsi_pll_regs.h"
>  #include "gt/intel_engine_regs.h"

--=20
Jani Nikula, Intel
