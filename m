Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF388C3EAF
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 12:13:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 221F610E214;
	Mon, 13 May 2024 10:13:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O+sMItZW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A2B610E214
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 10:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715595204; x=1747131204;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=1ekwnS1LvlhCHB506LPr8dZChJzvzoQ54omSRiWUnD4=;
 b=O+sMItZWqt1GJixMYGnVv858aY9yxSvjmhK6CFhe04NV3FvLJgTJ4fjr
 QcRgw6tEp3gFcgn2Apxeqrr+uMUGikRLMtYeBql2oLwQAPImgwnEopOtt
 tUIJsL5WfuN70ElRin5hC6e13QQeKhS39rhvidCgEa5Gxi4COCrt0aYPX
 GoFh45kD9TaUABdOBnGieUx7RUYYVFsYmcuok7jawIXH+Eb88DyJTqsa9
 vtLMbenECdA0hHEBpu1bHw4Vscum0Id09i3SBVXc+GXl90/7+7quXiTcn
 BiwQ10RqS2HZhqJRlN/63VuoDAwuXnHiUFNUbj81dsPWgI+kpOksPOloR w==;
X-CSE-ConnectionGUID: HHOdBuJGTvO6fD9fOPGwyQ==
X-CSE-MsgGUID: CyfiO0ZvTCeLsQtd5tOFjw==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="22669589"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="22669589"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:13:24 -0700
X-CSE-ConnectionGUID: aK4XXs+bTwKYCew4T3v2VA==
X-CSE-MsgGUID: kPhaZ35nRVeOtZxKkx4mwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="67791398"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.7])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:13:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.wang.linux@gmail.com>
Subject: Re: [PATCH 04/16] drm/i915: Move skl+ wm/ddb registers to proper
 headers
In-Reply-To: <20240510152329.24098-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
 <20240510152329.24098-5-ville.syrjala@linux.intel.com>
Date: Mon, 13 May 2024 13:13:18 +0300
Message-ID: <87y18ef29t.fsf@intel.com>
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
> On SKL+ the watermark/DDB registers are proper per-plane
> registers. Move the definitons to their respective files.
>
> Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
> CC: Zhi Wang <zhi.wang.linux@gmail.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_cursor_regs.h  | 20 +++++
>  .../i915/display/skl_universal_plane_regs.h   | 64 ++++++++++++++
>  drivers/gpu/drm/i915/display/skl_watermark.c  |  1 +
>  .../gpu/drm/i915/display/skl_watermark_regs.h | 83 -------------------
>  drivers/gpu/drm/i915/gvt/handlers.c           |  1 +
>  5 files changed, 86 insertions(+), 83 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor_regs.h b/drivers/g=
pu/drm/i915/display/intel_cursor_regs.h
> index 62f7fb5c3f10..a478ef5787c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
> @@ -75,4 +75,24 @@
>  #define CUR_CHICKEN(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CUR_CHICKEN_A)
>  #define CURSURFLIVE(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURASURFLIVE)
>=20=20
> +/* skl+ */
> +#define _CUR_WM_A_0		0x70140
> +#define _CUR_WM_B_0		0x71140
> +#define _CUR_WM_SAGV_A		0x70158
> +#define _CUR_WM_SAGV_B		0x71158
> +#define _CUR_WM_SAGV_TRANS_A	0x7015C
> +#define _CUR_WM_SAGV_TRANS_B	0x7115C
> +#define _CUR_WM_TRANS_A		0x70168
> +#define _CUR_WM_TRANS_B		0x71168
> +#define _CUR_WM_0(pipe) _PIPE(pipe, _CUR_WM_A_0, _CUR_WM_B_0)
> +#define CUR_WM(pipe, level) _MMIO(_CUR_WM_0(pipe) + ((4) * (level)))
> +#define CUR_WM_SAGV(pipe) _MMIO_PIPE(pipe, _CUR_WM_SAGV_A, _CUR_WM_SAGV_=
B)
> +#define CUR_WM_SAGV_TRANS(pipe) _MMIO_PIPE(pipe, _CUR_WM_SAGV_TRANS_A, _=
CUR_WM_SAGV_TRANS_B)
> +#define CUR_WM_TRANS(pipe) _MMIO_PIPE(pipe, _CUR_WM_TRANS_A, _CUR_WM_TRA=
NS_B)
> +
> +/* skl+ */
> +#define _CUR_BUF_CFG_A				0x7017c
> +#define _CUR_BUF_CFG_B				0x7117c
> +#define CUR_BUF_CFG(pipe)	_MMIO_PIPE(pipe, _CUR_BUF_CFG_A, _CUR_BUF_CFG_=
B)
> +
>  #endif /* __INTEL_CURSOR_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/dr=
ivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> index 7e34470beb74..2222d0c760e8 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> @@ -402,4 +402,68 @@
>  							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
>  							    (index) * 4)
>=20=20
> +#define _PLANE_WM_1_A_0		0x70240
> +#define _PLANE_WM_1_B_0		0x71240
> +#define _PLANE_WM_2_A_0		0x70340
> +#define _PLANE_WM_2_B_0		0x71340
> +#define _PLANE_WM_SAGV_1_A	0x70258
> +#define _PLANE_WM_SAGV_1_B	0x71258
> +#define _PLANE_WM_SAGV_2_A	0x70358
> +#define _PLANE_WM_SAGV_2_B	0x71358
> +#define _PLANE_WM_SAGV_TRANS_1_A	0x7025C
> +#define _PLANE_WM_SAGV_TRANS_1_B	0x7125C
> +#define _PLANE_WM_SAGV_TRANS_2_A	0x7035C
> +#define _PLANE_WM_SAGV_TRANS_2_B	0x7135C
> +#define _PLANE_WM_TRANS_1_A	0x70268
> +#define _PLANE_WM_TRANS_1_B	0x71268
> +#define _PLANE_WM_TRANS_2_A	0x70368
> +#define _PLANE_WM_TRANS_2_B	0x71368
> +#define   PLANE_WM_EN		(1 << 31)
> +#define   PLANE_WM_IGNORE_LINES	(1 << 30)
> +#define   PLANE_WM_LINES_MASK	REG_GENMASK(26, 14)
> +#define   PLANE_WM_BLOCKS_MASK	REG_GENMASK(11, 0)
> +
> +#define _PLANE_WM_1(pipe) _PIPE(pipe, _PLANE_WM_1_A_0, _PLANE_WM_1_B_0)
> +#define _PLANE_WM_2(pipe) _PIPE(pipe, _PLANE_WM_2_A_0, _PLANE_WM_2_B_0)
> +#define _PLANE_WM_BASE(pipe, plane) \
> +	_PLANE(plane, _PLANE_WM_1(pipe), _PLANE_WM_2(pipe))
> +#define PLANE_WM(pipe, plane, level) \
> +	_MMIO(_PLANE_WM_BASE(pipe, plane) + ((4) * (level)))
> +#define _PLANE_WM_SAGV_1(pipe) \
> +	_PIPE(pipe, _PLANE_WM_SAGV_1_A, _PLANE_WM_SAGV_1_B)
> +#define _PLANE_WM_SAGV_2(pipe) \
> +	_PIPE(pipe, _PLANE_WM_SAGV_2_A, _PLANE_WM_SAGV_2_B)
> +#define PLANE_WM_SAGV(pipe, plane) \
> +	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_1(pipe), _PLANE_WM_SAGV_2(pipe)))
> +#define _PLANE_WM_SAGV_TRANS_1(pipe) \
> +	_PIPE(pipe, _PLANE_WM_SAGV_TRANS_1_A, _PLANE_WM_SAGV_TRANS_1_B)
> +#define _PLANE_WM_SAGV_TRANS_2(pipe) \
> +	_PIPE(pipe, _PLANE_WM_SAGV_TRANS_2_A, _PLANE_WM_SAGV_TRANS_2_B)
> +#define PLANE_WM_SAGV_TRANS(pipe, plane) \
> +	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_TRANS_1(pipe), _PLANE_WM_SAGV_TRANS_=
2(pipe)))
> +#define _PLANE_WM_TRANS_1(pipe) \
> +	_PIPE(pipe, _PLANE_WM_TRANS_1_A, _PLANE_WM_TRANS_1_B)
> +#define _PLANE_WM_TRANS_2(pipe) \
> +	_PIPE(pipe, _PLANE_WM_TRANS_2_A, _PLANE_WM_TRANS_2_B)
> +#define PLANE_WM_TRANS(pipe, plane) \
> +	_MMIO(_PLANE(plane, _PLANE_WM_TRANS_1(pipe), _PLANE_WM_TRANS_2(pipe)))
> +
> +#define _PLANE_BUF_CFG_1_B			0x7127c
> +#define _PLANE_BUF_CFG_2_B			0x7137c
> +#define _PLANE_BUF_CFG_1(pipe)	\
> +	_PIPE(pipe, _PLANE_BUF_CFG_1_A, _PLANE_BUF_CFG_1_B)
> +#define _PLANE_BUF_CFG_2(pipe)	\
> +	_PIPE(pipe, _PLANE_BUF_CFG_2_A, _PLANE_BUF_CFG_2_B)
> +#define PLANE_BUF_CFG(pipe, plane)	\
> +	_MMIO_PLANE(plane, _PLANE_BUF_CFG_1(pipe), _PLANE_BUF_CFG_2(pipe))
> +
> +#define _PLANE_NV12_BUF_CFG_1_B		0x71278
> +#define _PLANE_NV12_BUF_CFG_2_B		0x71378
> +#define _PLANE_NV12_BUF_CFG_1(pipe)	\
> +	_PIPE(pipe, _PLANE_NV12_BUF_CFG_1_A, _PLANE_NV12_BUF_CFG_1_B)
> +#define _PLANE_NV12_BUF_CFG_2(pipe)	\
> +	_PIPE(pipe, _PLANE_NV12_BUF_CFG_2_A, _PLANE_NV12_BUF_CFG_2_B)
> +#define PLANE_NV12_BUF_CFG(pipe, plane)	\
> +	_MMIO_PLANE(plane, _PLANE_NV12_BUF_CFG_1(pipe), _PLANE_NV12_BUF_CFG_2(p=
ipe))
> +
>  #endif /* __SKL_UNIVERSAL_PLANE_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 53a565c673e2..2a2073bf3aca 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -13,6 +13,7 @@
>  #include "intel_bw.h"
>  #include "intel_cdclk.h"
>  #include "intel_crtc.h"
> +#include "intel_cursor_regs.h"
>  #include "intel_de.h"
>  #include "intel_display.h"
>  #include "intel_display_power.h"
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark_regs.h b/drivers/=
gpu/drm/i915/display/skl_watermark_regs.h
> index 269163fa3350..c5572fc0e847 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark_regs.h
> +++ b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
> @@ -43,89 +43,6 @@
>  #define   MBUS_TRANSLATION_THROTTLE_MIN_MASK	REG_GENMASK(15, 13)
>  #define   MBUS_TRANSLATION_THROTTLE_MIN(val)	REG_FIELD_PREP(MBUS_TRANSLA=
TION_THROTTLE_MIN_MASK, val)
>=20=20
> -/* Watermark register definitions for SKL */
> -#define _CUR_WM_A_0		0x70140
> -#define _CUR_WM_B_0		0x71140
> -#define _CUR_WM_SAGV_A		0x70158
> -#define _CUR_WM_SAGV_B		0x71158
> -#define _CUR_WM_SAGV_TRANS_A	0x7015C
> -#define _CUR_WM_SAGV_TRANS_B	0x7115C
> -#define _CUR_WM_TRANS_A		0x70168
> -#define _CUR_WM_TRANS_B		0x71168
> -#define _PLANE_WM_1_A_0		0x70240
> -#define _PLANE_WM_1_B_0		0x71240
> -#define _PLANE_WM_2_A_0		0x70340
> -#define _PLANE_WM_2_B_0		0x71340
> -#define _PLANE_WM_SAGV_1_A	0x70258
> -#define _PLANE_WM_SAGV_1_B	0x71258
> -#define _PLANE_WM_SAGV_2_A	0x70358
> -#define _PLANE_WM_SAGV_2_B	0x71358
> -#define _PLANE_WM_SAGV_TRANS_1_A	0x7025C
> -#define _PLANE_WM_SAGV_TRANS_1_B	0x7125C
> -#define _PLANE_WM_SAGV_TRANS_2_A	0x7035C
> -#define _PLANE_WM_SAGV_TRANS_2_B	0x7135C
> -#define _PLANE_WM_TRANS_1_A	0x70268
> -#define _PLANE_WM_TRANS_1_B	0x71268
> -#define _PLANE_WM_TRANS_2_A	0x70368
> -#define _PLANE_WM_TRANS_2_B	0x71368
> -#define   PLANE_WM_EN		(1 << 31)
> -#define   PLANE_WM_IGNORE_LINES	(1 << 30)
> -#define   PLANE_WM_LINES_MASK	REG_GENMASK(26, 14)
> -#define   PLANE_WM_BLOCKS_MASK	REG_GENMASK(11, 0)
> -
> -#define _CUR_WM_0(pipe) _PIPE(pipe, _CUR_WM_A_0, _CUR_WM_B_0)
> -#define CUR_WM(pipe, level) _MMIO(_CUR_WM_0(pipe) + ((4) * (level)))
> -#define CUR_WM_SAGV(pipe) _MMIO_PIPE(pipe, _CUR_WM_SAGV_A, _CUR_WM_SAGV_=
B)
> -#define CUR_WM_SAGV_TRANS(pipe) _MMIO_PIPE(pipe, _CUR_WM_SAGV_TRANS_A, _=
CUR_WM_SAGV_TRANS_B)
> -#define CUR_WM_TRANS(pipe) _MMIO_PIPE(pipe, _CUR_WM_TRANS_A, _CUR_WM_TRA=
NS_B)
> -#define _PLANE_WM_1(pipe) _PIPE(pipe, _PLANE_WM_1_A_0, _PLANE_WM_1_B_0)
> -#define _PLANE_WM_2(pipe) _PIPE(pipe, _PLANE_WM_2_A_0, _PLANE_WM_2_B_0)
> -#define _PLANE_WM_BASE(pipe, plane) \
> -	_PLANE(plane, _PLANE_WM_1(pipe), _PLANE_WM_2(pipe))
> -#define PLANE_WM(pipe, plane, level) \
> -	_MMIO(_PLANE_WM_BASE(pipe, plane) + ((4) * (level)))
> -#define _PLANE_WM_SAGV_1(pipe) \
> -	_PIPE(pipe, _PLANE_WM_SAGV_1_A, _PLANE_WM_SAGV_1_B)
> -#define _PLANE_WM_SAGV_2(pipe) \
> -	_PIPE(pipe, _PLANE_WM_SAGV_2_A, _PLANE_WM_SAGV_2_B)
> -#define PLANE_WM_SAGV(pipe, plane) \
> -	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_1(pipe), _PLANE_WM_SAGV_2(pipe)))
> -#define _PLANE_WM_SAGV_TRANS_1(pipe) \
> -	_PIPE(pipe, _PLANE_WM_SAGV_TRANS_1_A, _PLANE_WM_SAGV_TRANS_1_B)
> -#define _PLANE_WM_SAGV_TRANS_2(pipe) \
> -	_PIPE(pipe, _PLANE_WM_SAGV_TRANS_2_A, _PLANE_WM_SAGV_TRANS_2_B)
> -#define PLANE_WM_SAGV_TRANS(pipe, plane) \
> -	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_TRANS_1(pipe), _PLANE_WM_SAGV_TRANS_=
2(pipe)))
> -#define _PLANE_WM_TRANS_1(pipe) \
> -	_PIPE(pipe, _PLANE_WM_TRANS_1_A, _PLANE_WM_TRANS_1_B)
> -#define _PLANE_WM_TRANS_2(pipe) \
> -	_PIPE(pipe, _PLANE_WM_TRANS_2_A, _PLANE_WM_TRANS_2_B)
> -#define PLANE_WM_TRANS(pipe, plane) \
> -	_MMIO(_PLANE(plane, _PLANE_WM_TRANS_1(pipe), _PLANE_WM_TRANS_2(pipe)))
> -
> -#define _PLANE_BUF_CFG_1_B			0x7127c
> -#define _PLANE_BUF_CFG_2_B			0x7137c
> -#define _PLANE_BUF_CFG_1(pipe)	\
> -	_PIPE(pipe, _PLANE_BUF_CFG_1_A, _PLANE_BUF_CFG_1_B)
> -#define _PLANE_BUF_CFG_2(pipe)	\
> -	_PIPE(pipe, _PLANE_BUF_CFG_2_A, _PLANE_BUF_CFG_2_B)
> -#define PLANE_BUF_CFG(pipe, plane)	\
> -	_MMIO_PLANE(plane, _PLANE_BUF_CFG_1(pipe), _PLANE_BUF_CFG_2(pipe))
> -
> -#define _PLANE_NV12_BUF_CFG_1_B		0x71278
> -#define _PLANE_NV12_BUF_CFG_2_B		0x71378
> -#define _PLANE_NV12_BUF_CFG_1(pipe)	\
> -	_PIPE(pipe, _PLANE_NV12_BUF_CFG_1_A, _PLANE_NV12_BUF_CFG_1_B)
> -#define _PLANE_NV12_BUF_CFG_2(pipe)	\
> -	_PIPE(pipe, _PLANE_NV12_BUF_CFG_2_A, _PLANE_NV12_BUF_CFG_2_B)
> -#define PLANE_NV12_BUF_CFG(pipe, plane)	\
> -	_MMIO_PLANE(plane, _PLANE_NV12_BUF_CFG_1(pipe), _PLANE_NV12_BUF_CFG_2(p=
ipe))
> -
> -/* SKL new cursor registers */
> -#define _CUR_BUF_CFG_A				0x7017c
> -#define _CUR_BUF_CFG_B				0x7117c
> -#define CUR_BUF_CFG(pipe)	_MMIO_PIPE(pipe, _CUR_BUF_CFG_A, _CUR_BUF_CFG_=
B)
> -
>  /*
>   * The below are numbered starting from "S1" on gen11/gen12, but starting
>   * with display 13, the bspec switches to a 0-based numbering scheme
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/g=
vt/handlers.c
> index aae0443015f0..6c857beb5083 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -42,6 +42,7 @@
>  #include "i915_pvinfo.h"
>  #include "intel_mchbar_regs.h"
>  #include "display/bxt_dpio_phy_regs.h"
> +#include "display/intel_cursor_regs.h"
>  #include "display/intel_display_types.h"
>  #include "display/intel_dmc_regs.h"
>  #include "display/intel_dp_aux_regs.h"

--=20
Jani Nikula, Intel
