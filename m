Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EA88C483E
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 22:30:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1632610E96D;
	Mon, 13 May 2024 20:30:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AU6vjVcr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0BD810E957
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 20:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715632213; x=1747168213;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=iQENY0EtK9Mbgg02fdmibup5HyWps3GKEvt8rF7N9fg=;
 b=AU6vjVcrwM3EzT7DdSO7Q+zztqRSbhW8CJRry2uc+B18WYN2kYNh+L7P
 L/UNZaDO3bU/x6kxPVDUJLRm+H/0jiyE9NXppCLNYchT2Is1Vvx0G3XBT
 w8NR6ghjUr8btPCbLTzO4pqZgZZqsDNHTYhRP0L9oQcUbi95AaXvjuY5o
 aqiRVrrxjAeZLJuG/TBxf5Q5v+M4t+/+PrGzaukzpfy3/zlWICYWAx8IE
 68UQ2UZ88pRdwv+ec7933DsuS7OJ1t6zo8kR5EwovwT3PP+99nbWZwVBN
 BGJfmMES99bMC3AwzwR50bEw1uNgZHf3boyK+rXGutic9OFIx2GPjuD36 w==;
X-CSE-ConnectionGUID: MMUaHUTmQiWWY787K6UwRw==
X-CSE-MsgGUID: I23oG7RdSRCJWbDgGg8oYA==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="22734491"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="22734491"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 13:30:12 -0700
X-CSE-ConnectionGUID: 1e14tMPcQWS+4IQYo8w1rw==
X-CSE-MsgGUID: leSk0x0lR2GIFs3DQQY+Vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="34950995"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.52])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 13:30:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 10/16] drm/i915: Shuffle the skl+ plane register
 definitions
In-Reply-To: <20240513165909.15234-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240510152329.24098-11-ville.syrjala@linux.intel.com>
 <20240513165909.15234-1-ville.syrjala@linux.intel.com>
Date: Mon, 13 May 2024 23:30:07 +0300
Message-ID: <87frule9ps.fsf@intel.com>
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

On Mon, 13 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Rearrange the plane skl+ universal plane register definitions:
> - keep everything related to the same register in one place
> - sort based on register offset
> - unify the whitespace/etc a bit
>
> v2: Define register contents after all offsets (Jani)

Thanks for doing this.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../i915/display/skl_universal_plane_regs.h   | 481 ++++++++----------
>  1 file changed, 200 insertions(+), 281 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/dr=
ivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> index 49278584caa7..5fcd5898af4f 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> @@ -10,6 +10,11 @@
>=20=20
>  #define _PLANE_CTL_1_A				0x70180
>  #define _PLANE_CTL_2_A				0x70280
> +#define _PLANE_CTL_1_B				0x71180
> +#define _PLANE_CTL_2_B				0x71280
> +#define _PLANE_CTL_1(pipe)		_PIPE(pipe, _PLANE_CTL_1_A, _PLANE_CTL_1_B)
> +#define _PLANE_CTL_2(pipe)		_PIPE(pipe, _PLANE_CTL_2_A, _PLANE_CTL_2_B)
> +#define PLANE_CTL(pipe, plane)		_MMIO_PLANE(plane, _PLANE_CTL_1(pipe), _=
PLANE_CTL_2(pipe))
>  #define   PLANE_CTL_ENABLE			REG_BIT(31)
>  #define   PLANE_CTL_ARB_SLOTS_MASK		REG_GENMASK(30, 28) /* icl+ */
>  #define   PLANE_CTL_ARB_SLOTS(x)		REG_FIELD_PREP(PLANE_CTL_ARB_SLOTS_MAS=
K, (x)) /* icl+ */
> @@ -73,54 +78,132 @@
>  #define   PLANE_CTL_ROTATE_90			REG_FIELD_PREP(PLANE_CTL_ROTATE_MASK, 1)
>  #define   PLANE_CTL_ROTATE_180			REG_FIELD_PREP(PLANE_CTL_ROTATE_MASK, 2)
>  #define   PLANE_CTL_ROTATE_270			REG_FIELD_PREP(PLANE_CTL_ROTATE_MASK, 3)
> +
>  #define _PLANE_STRIDE_1_A			0x70188
>  #define _PLANE_STRIDE_2_A			0x70288
> +#define _PLANE_STRIDE_1_B			0x71188
> +#define _PLANE_STRIDE_2_B			0x71288
> +#define _PLANE_STRIDE_1(pipe)		_PIPE(pipe, _PLANE_STRIDE_1_A, _PLANE_STR=
IDE_1_B)
> +#define _PLANE_STRIDE_2(pipe)		_PIPE(pipe, _PLANE_STRIDE_2_A, _PLANE_STR=
IDE_2_B)
> +#define PLANE_STRIDE(pipe, plane)	_MMIO_PLANE(plane, _PLANE_STRIDE_1(pip=
e), _PLANE_STRIDE_2(pipe))
>  #define   PLANE_STRIDE__MASK			REG_GENMASK(11, 0)
>  #define   PLANE_STRIDE_(stride)			REG_FIELD_PREP(PLANE_STRIDE__MASK, (st=
ride))
> +
>  #define _PLANE_POS_1_A				0x7018c
>  #define _PLANE_POS_2_A				0x7028c
> +#define _PLANE_POS_1_B				0x7118c
> +#define _PLANE_POS_2_B				0x7128c
> +#define _PLANE_POS_1(pipe)		_PIPE(pipe, _PLANE_POS_1_A, _PLANE_POS_1_B)
> +#define _PLANE_POS_2(pipe)		_PIPE(pipe, _PLANE_POS_2_A, _PLANE_POS_2_B)
> +#define PLANE_POS(pipe, plane)		_MMIO_PLANE(plane, _PLANE_POS_1(pipe), _=
PLANE_POS_2(pipe))
>  #define   PLANE_POS_Y_MASK			REG_GENMASK(31, 16)
>  #define   PLANE_POS_Y(y)			REG_FIELD_PREP(PLANE_POS_Y_MASK, (y))
>  #define   PLANE_POS_X_MASK			REG_GENMASK(15, 0)
>  #define   PLANE_POS_X(x)			REG_FIELD_PREP(PLANE_POS_X_MASK, (x))
> +
>  #define _PLANE_SIZE_1_A				0x70190
>  #define _PLANE_SIZE_2_A				0x70290
> +#define _PLANE_SIZE_1_B				0x71190
> +#define _PLANE_SIZE_2_B				0x71290
> +#define _PLANE_SIZE_1(pipe)		_PIPE(pipe, _PLANE_SIZE_1_A, _PLANE_SIZE_1_=
B)
> +#define _PLANE_SIZE_2(pipe)		_PIPE(pipe, _PLANE_SIZE_2_A, _PLANE_SIZE_2_=
B)
> +#define PLANE_SIZE(pipe, plane)		_MMIO_PLANE(plane, _PLANE_SIZE_1(pipe),=
 _PLANE_SIZE_2(pipe))
>  #define   PLANE_HEIGHT_MASK			REG_GENMASK(31, 16)
>  #define   PLANE_HEIGHT(h)			REG_FIELD_PREP(PLANE_HEIGHT_MASK, (h))
>  #define   PLANE_WIDTH_MASK			REG_GENMASK(15, 0)
>  #define   PLANE_WIDTH(w)			REG_FIELD_PREP(PLANE_WIDTH_MASK, (w))
> +
> +#define _PLANE_KEYVAL_1_A			0x70194
> +#define _PLANE_KEYVAL_2_A			0x70294
> +#define _PLANE_KEYVAL_1_B			0x71194
> +#define _PLANE_KEYVAL_2_B			0x71294
> +#define _PLANE_KEYVAL_1(pipe)		_PIPE(pipe, _PLANE_KEYVAL_1_A, _PLANE_KEY=
VAL_1_B)
> +#define _PLANE_KEYVAL_2(pipe)		_PIPE(pipe, _PLANE_KEYVAL_2_A, _PLANE_KEY=
VAL_2_B)
> +#define PLANE_KEYVAL(pipe, plane)	_MMIO_PLANE(plane, _PLANE_KEYVAL_1(pip=
e), _PLANE_KEYVAL_2(pipe))
> +
> +#define _PLANE_KEYMSK_1_A			0x70198
> +#define _PLANE_KEYMSK_2_A			0x70298
> +#define _PLANE_KEYMSK_1_B			0x71198
> +#define _PLANE_KEYMSK_2_B			0x71298
> +#define _PLANE_KEYMSK_1(pipe)		_PIPE(pipe, _PLANE_KEYMSK_1_A, _PLANE_KEY=
MSK_1_B)
> +#define _PLANE_KEYMSK_2(pipe)		_PIPE(pipe, _PLANE_KEYMSK_2_A, _PLANE_KEY=
MSK_2_B)
> +#define PLANE_KEYMSK(pipe, plane)	_MMIO_PLANE(plane, _PLANE_KEYMSK_1(pip=
e), _PLANE_KEYMSK_2(pipe))
> +#define   PLANE_KEYMSK_ALPHA_ENABLE		REG_BIT(31)
> +
>  #define _PLANE_SURF_1_A				0x7019c
>  #define _PLANE_SURF_2_A				0x7029c
> +#define _PLANE_SURF_1_B				0x7119c
> +#define _PLANE_SURF_2_B				0x7129c
> +#define _PLANE_SURF_1(pipe)		_PIPE(pipe, _PLANE_SURF_1_A, _PLANE_SURF_1_=
B)
> +#define _PLANE_SURF_2(pipe)		_PIPE(pipe, _PLANE_SURF_2_A, _PLANE_SURF_2_=
B)
> +#define PLANE_SURF(pipe, plane)		_MMIO_PLANE(plane, _PLANE_SURF_1(pipe),=
 _PLANE_SURF_2(pipe))
>  #define   PLANE_SURF_ADDR_MASK			REG_GENMASK(31, 12)
>  #define   PLANE_SURF_DECRYPT			REG_BIT(2)
> +
> +#define _PLANE_KEYMAX_1_A			0x701a0
> +#define _PLANE_KEYMAX_2_A			0x702a0
> +#define _PLANE_KEYMAX_1_B			0x711a0
> +#define _PLANE_KEYMAX_2_B			0x712a0
> +#define _PLANE_KEYMAX_1(pipe)		_PIPE(pipe, _PLANE_KEYMAX_1_A, _PLANE_KEY=
MAX_1_B)
> +#define _PLANE_KEYMAX_2(pipe)		_PIPE(pipe, _PLANE_KEYMAX_2_A, _PLANE_KEY=
MAX_2_B)
> +#define PLANE_KEYMAX(pipe, plane)	_MMIO_PLANE(plane, _PLANE_KEYMAX_1(pip=
e), _PLANE_KEYMAX_2(pipe))
> +#define   PLANE_KEYMAX_ALPHA_MASK		REG_GENMASK(31, 24)
> +#define   PLANE_KEYMAX_ALPHA(a)			REG_FIELD_PREP(PLANE_KEYMAX_ALPHA_MASK=
, (a))
> +
>  #define _PLANE_OFFSET_1_A			0x701a4
>  #define _PLANE_OFFSET_2_A			0x702a4
> +#define _PLANE_OFFSET_1_B			0x711a4
> +#define _PLANE_OFFSET_2_B			0x712a4
> +#define _PLANE_OFFSET_1(pipe)		_PIPE(pipe, _PLANE_OFFSET_1_A, _PLANE_OFF=
SET_1_B)
> +#define _PLANE_OFFSET_2(pipe)		_PIPE(pipe, _PLANE_OFFSET_2_A, _PLANE_OFF=
SET_2_B)
> +#define PLANE_OFFSET(pipe, plane)	_MMIO_PLANE(plane, _PLANE_OFFSET_1(pip=
e), _PLANE_OFFSET_2(pipe))
>  #define   PLANE_OFFSET_Y_MASK			REG_GENMASK(31, 16)
>  #define   PLANE_OFFSET_Y(y)			REG_FIELD_PREP(PLANE_OFFSET_Y_MASK, (y))
>  #define   PLANE_OFFSET_X_MASK			REG_GENMASK(15, 0)
>  #define   PLANE_OFFSET_X(x)			REG_FIELD_PREP(PLANE_OFFSET_X_MASK, (x))
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
> +
>  #define _PLANE_SURFLIVE_1_A			0x701ac
>  #define _PLANE_SURFLIVE_2_A			0x702ac
> +#define _PLANE_SURFLIVE_1_B			0x711ac
> +#define _PLANE_SURFLIVE_2_B			0x712ac
> +#define _PLANE_SURFLIVE_1(pipe)		_PIPE(pipe, _PLANE_SURFLIVE_1_A, _PLANE=
_SURFLIVE_1_B)
> +#define _PLANE_SURFLIVE_2(pipe)		_PIPE(pipe, _PLANE_SURFLIVE_2_A, _PLANE=
_SURFLIVE_2_B)
> +#define PLANE_SURFLIVE(pipe, plane)	_MMIO_PLANE(plane, _PLANE_SURFLIVE_1=
(pipe), _PLANE_SURFLIVE_2(pipe))
> +
>  #define _PLANE_CC_VAL_1_A			0x701b4
>  #define _PLANE_CC_VAL_2_A			0x702b4
> +#define _PLANE_CC_VAL_1_B			0x711b4
> +#define _PLANE_CC_VAL_2_B			0x712b4
> +#define _PLANE_CC_VAL_1(pipe, dw)	(_PIPE(pipe, _PLANE_CC_VAL_1_A, _PLANE=
_CC_VAL_1_B) + (dw) * 4)
> +#define _PLANE_CC_VAL_2(pipe, dw)	(_PIPE(pipe, _PLANE_CC_VAL_2_A, _PLANE=
_CC_VAL_2_B) + (dw) * 4)
> +#define PLANE_CC_VAL(pipe, plane, dw)	_MMIO_PLANE((plane), _PLANE_CC_VAL=
_1((pipe), (dw)), _PLANE_CC_VAL_2((pipe), (dw)))
> +
>  #define _PLANE_AUX_DIST_1_A			0x701c0
> +#define _PLANE_AUX_DIST_2_A			0x702c0
> +#define _PLANE_AUX_DIST_1_B			0x711c0
> +#define _PLANE_AUX_DIST_2_B			0x712c0
> +#define _PLANE_AUX_DIST_1(pipe)		_PIPE(pipe, _PLANE_AUX_DIST_1_A, _PLANE=
_AUX_DIST_1_B)
> +#define _PLANE_AUX_DIST_2(pipe)		_PIPE(pipe, _PLANE_AUX_DIST_2_A, _PLANE=
_AUX_DIST_2_B)
> +#define PLANE_AUX_DIST(pipe, plane)	_MMIO_PLANE(plane, _PLANE_AUX_DIST_1=
(pipe), _PLANE_AUX_DIST_2(pipe))
>  #define   PLANE_AUX_DISTANCE_MASK		REG_GENMASK(31, 12)
>  #define   PLANE_AUX_STRIDE_MASK			REG_GENMASK(11, 0)
>  #define   PLANE_AUX_STRIDE(stride)		REG_FIELD_PREP(PLANE_AUX_STRIDE_MASK=
, (stride))
> -#define _PLANE_AUX_DIST_2_A			0x702c0
> +
>  #define _PLANE_AUX_OFFSET_1_A			0x701c4
>  #define _PLANE_AUX_OFFSET_2_A			0x702c4
> +#define _PLANE_AUX_OFFSET_1_B			0x711c4
> +#define _PLANE_AUX_OFFSET_2_B			0x712c4
> +#define _PLANE_AUX_OFFSET_1(pipe)	_PIPE(pipe, _PLANE_AUX_OFFSET_1_A, _PL=
ANE_AUX_OFFSET_1_B)
> +#define _PLANE_AUX_OFFSET_2(pipe)	_PIPE(pipe, _PLANE_AUX_OFFSET_2_A, _PL=
ANE_AUX_OFFSET_2_B)
> +#define PLANE_AUX_OFFSET(pipe, plane)	_MMIO_PLANE(plane, _PLANE_AUX_OFFS=
ET_1(pipe), _PLANE_AUX_OFFSET_2(pipe))
> +
>  #define _PLANE_CUS_CTL_1_A			0x701c8
>  #define _PLANE_CUS_CTL_2_A			0x702c8
> +#define _PLANE_CUS_CTL_1_B			0x711c8
> +#define _PLANE_CUS_CTL_2_B			0x712c8
> +#define _PLANE_CUS_CTL_1(pipe)		_PIPE(pipe, _PLANE_CUS_CTL_1_A, _PLANE_C=
US_CTL_1_B)
> +#define _PLANE_CUS_CTL_2(pipe)		_PIPE(pipe, _PLANE_CUS_CTL_2_A, _PLANE_C=
US_CTL_2_B)
> +#define PLANE_CUS_CTL(pipe, plane)	_MMIO_PLANE(plane, _PLANE_CUS_CTL_1(p=
ipe), _PLANE_CUS_CTL_2(pipe))
>  #define   PLANE_CUS_ENABLE			REG_BIT(31)
>  #define   PLANE_CUS_Y_PLANE_MASK			REG_BIT(30)
>  #define   PLANE_CUS_Y_PLANE_4_RKL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK=
, 0)
> @@ -137,8 +220,14 @@
>  #define   PLANE_CUS_VPHASE_0			REG_FIELD_PREP(PLANE_CUS_VPHASE_MASK, 0)
>  #define   PLANE_CUS_VPHASE_0_25			REG_FIELD_PREP(PLANE_CUS_VPHASE_MASK, =
1)
>  #define   PLANE_CUS_VPHASE_0_5			REG_FIELD_PREP(PLANE_CUS_VPHASE_MASK, 2)
> -#define _PLANE_COLOR_CTL_1_A			0x701CC /* GLK+ */
> -#define _PLANE_COLOR_CTL_2_A			0x702CC /* GLK+ */
> +
> +#define _PLANE_COLOR_CTL_1_A			0x701cc /* GLK+ */
> +#define _PLANE_COLOR_CTL_2_A			0x702cc
> +#define _PLANE_COLOR_CTL_1_B			0x711cc
> +#define _PLANE_COLOR_CTL_2_B			0x712cc
> +#define _PLANE_COLOR_CTL_1(pipe)	_PIPE(pipe, _PLANE_COLOR_CTL_1_A, _PLAN=
E_COLOR_CTL_1_B)
> +#define _PLANE_COLOR_CTL_2(pipe)	_PIPE(pipe, _PLANE_COLOR_CTL_2_A, _PLAN=
E_COLOR_CTL_2_B)
> +#define PLANE_COLOR_CTL(pipe, plane)	_MMIO_PLANE(plane, _PLANE_COLOR_CTL=
_1(pipe), _PLANE_COLOR_CTL_2(pipe))
>  #define   PLANE_COLOR_PIPE_GAMMA_ENABLE			REG_BIT(30) /* Pre-ICL */
>  #define   PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE	REG_BIT(28)
>  #define   PLANE_COLOR_PIPE_CSC_ENABLE			REG_BIT(23) /* Pre-ICL */
> @@ -155,296 +244,126 @@
>  #define   PLANE_COLOR_ALPHA_DISABLE			REG_FIELD_PREP(PLANE_COLOR_ALPHA_M=
ASK, 0)
>  #define   PLANE_COLOR_ALPHA_SW_PREMULTIPLY		REG_FIELD_PREP(PLANE_COLOR_A=
LPHA_MASK, 2)
>  #define   PLANE_COLOR_ALPHA_HW_PREMULTIPLY		REG_FIELD_PREP(PLANE_COLOR_A=
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
>=20=20
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
> +#define _PLANE_INPUT_CSC_RY_GY_1_A		0x701e0
> +#define _PLANE_INPUT_CSC_RY_GY_2_A		0x702e0
> +#define _PLANE_INPUT_CSC_RY_GY_1_B		0x711e0
> +#define _PLANE_INPUT_CSC_RY_GY_2_B		0x712e0
> +#define _PLANE_INPUT_CSC_RY_GY_1(pipe)	_PIPE(pipe, _PLANE_INPUT_CSC_RY_G=
Y_1_A, _PLANE_INPUT_CSC_RY_GY_1_B)
> +#define _PLANE_INPUT_CSC_RY_GY_2(pipe)	_PIPE(pipe, _PLANE_INPUT_CSC_RY_G=
Y_2_A, _PLANE_INPUT_CSC_RY_GY_2_B)
> +#define PLANE_INPUT_CSC_COEFF(pipe, plane, index) \
> +	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_RY_GY_1(pipe) + (index) * 4, _PLANE=
_INPUT_CSC_RY_GY_2(pipe) + (index) * 4)
> +
> +#define _PLANE_INPUT_CSC_PREOFF_HI_1_A		0x701f8
> +#define _PLANE_INPUT_CSC_PREOFF_HI_2_A		0x702f8
> +#define _PLANE_INPUT_CSC_PREOFF_HI_1_B		0x711f8
> +#define _PLANE_INPUT_CSC_PREOFF_HI_2_B		0x712f8
> +#define _PLANE_INPUT_CSC_PREOFF_HI_1(pipe)	_PIPE(pipe, _PLANE_INPUT_CSC_=
PREOFF_HI_1_A, _PLANE_INPUT_CSC_PREOFF_HI_1_B)
> +#define _PLANE_INPUT_CSC_PREOFF_HI_2(pipe)	_PIPE(pipe, _PLANE_INPUT_CSC_=
PREOFF_HI_2_A, _PLANE_INPUT_CSC_PREOFF_HI_2_B)
> +#define PLANE_INPUT_CSC_PREOFF(pipe, plane, index) \
> +	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_PREOFF_HI_1(pipe) + (index) * 4, _P=
LANE_INPUT_CSC_PREOFF_HI_2(pipe) + (index) * 4)
>=20=20
>  #define _PLANE_INPUT_CSC_POSTOFF_HI_1_A		0x70204
>  #define _PLANE_INPUT_CSC_POSTOFF_HI_2_A		0x70304
> -
>  #define _PLANE_INPUT_CSC_POSTOFF_HI_1_B		0x71204
>  #define _PLANE_INPUT_CSC_POSTOFF_HI_2_B		0x71304
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
> -#define _PLANE_CTL_1(pipe)	_PIPE(pipe, _PLANE_CTL_1_A, _PLANE_CTL_1_B)
> -#define _PLANE_CTL_2(pipe)	_PIPE(pipe, _PLANE_CTL_2_A, _PLANE_CTL_2_B)
> -#define PLANE_CTL(pipe, plane)	\
> -	_MMIO_PLANE(plane, _PLANE_CTL_1(pipe), _PLANE_CTL_2(pipe))
> -
> -#define _PLANE_STRIDE_1_B			0x71188
> -#define _PLANE_STRIDE_2_B			0x71288
> -#define _PLANE_STRIDE_1(pipe)	\
> -	_PIPE(pipe, _PLANE_STRIDE_1_A, _PLANE_STRIDE_1_B)
> -#define _PLANE_STRIDE_2(pipe)	\
> -	_PIPE(pipe, _PLANE_STRIDE_2_A, _PLANE_STRIDE_2_B)
> -#define PLANE_STRIDE(pipe, plane)	\
> -	_MMIO_PLANE(plane, _PLANE_STRIDE_1(pipe), _PLANE_STRIDE_2(pipe))
> -
> -#define _PLANE_POS_1_B				0x7118c
> -#define _PLANE_POS_2_B				0x7128c
> -#define _PLANE_POS_1(pipe)	_PIPE(pipe, _PLANE_POS_1_A, _PLANE_POS_1_B)
> -#define _PLANE_POS_2(pipe)	_PIPE(pipe, _PLANE_POS_2_A, _PLANE_POS_2_B)
> -#define PLANE_POS(pipe, plane)	\
> -	_MMIO_PLANE(plane, _PLANE_POS_1(pipe), _PLANE_POS_2(pipe))
> -
> -#define _PLANE_SIZE_1_B				0x71190
> -#define _PLANE_SIZE_2_B				0x71290
> -#define _PLANE_SIZE_1(pipe)	_PIPE(pipe, _PLANE_SIZE_1_A, _PLANE_SIZE_1_B)
> -#define _PLANE_SIZE_2(pipe)	_PIPE(pipe, _PLANE_SIZE_2_A, _PLANE_SIZE_2_B)
> -#define PLANE_SIZE(pipe, plane)	\
> -	_MMIO_PLANE(plane, _PLANE_SIZE_1(pipe), _PLANE_SIZE_2(pipe))
> -
> -#define _PLANE_SURF_1_B				0x7119c
> -#define _PLANE_SURF_2_B				0x7129c
> -#define _PLANE_SURF_1(pipe)	_PIPE(pipe, _PLANE_SURF_1_A, _PLANE_SURF_1_B)
> -#define _PLANE_SURF_2(pipe)	_PIPE(pipe, _PLANE_SURF_2_A, _PLANE_SURF_2_B)
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
> -#define _PLANE_COLOR_CTL_1(pipe)	\
> -	_PIPE(pipe, _PLANE_COLOR_CTL_1_A, _PLANE_COLOR_CTL_1_B)
> -#define _PLANE_COLOR_CTL_2(pipe)	\
> -	_PIPE(pipe, _PLANE_COLOR_CTL_2_A, _PLANE_COLOR_CTL_2_B)
> -#define PLANE_COLOR_CTL(pipe, plane)	\
> -	_MMIO_PLANE(plane, _PLANE_COLOR_CTL_1(pipe), _PLANE_COLOR_CTL_2(pipe))
> -
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
> +#define _PLANE_INPUT_CSC_POSTOFF_HI_1(pipe)	_PIPE(pipe, _PLANE_INPUT_CSC=
_POSTOFF_HI_1_A, _PLANE_INPUT_CSC_POSTOFF_HI_1_B)
> +#define _PLANE_INPUT_CSC_POSTOFF_HI_2(pipe)	_PIPE(pipe, _PLANE_INPUT_CSC=
_POSTOFF_HI_2_A, _PLANE_INPUT_CSC_POSTOFF_HI_2_B)
> +#define PLANE_INPUT_CSC_POSTOFF(pipe, plane, index) \
> +	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_POSTOFF_HI_1(pipe) + (index) * 4, _=
PLANE_INPUT_CSC_POSTOFF_HI_2(pipe) + (index) * 4)
> +
> +#define _PLANE_CSC_RY_GY_1_A			0x70210
> +#define _PLANE_CSC_RY_GY_2_A			0x70310
> +#define _PLANE_CSC_RY_GY_1_B			0x71210
> +#define _PLANE_CSC_RY_GY_2_B			0x71310
> +#define _PLANE_CSC_RY_GY_1(pipe)	_PIPE(pipe, _PLANE_CSC_RY_GY_1_A, _PLAN=
E_CSC_RY_GY_1_B)
> +#define _PLANE_CSC_RY_GY_2(pipe)	_PIPE(pipe, _PLANE_CSC_RY_GY_2_A, _PLAN=
E_CSC_RY_GY_2_B)
> +#define PLANE_CSC_COEFF(pipe, plane, index) \
> +	_MMIO_PLANE(plane, _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, _PLANE_CSC_=
RY_GY_2(pipe) + (index) * 4)
>=20=20
>  #define _PLANE_CSC_PREOFF_HI_1_A		0x70228
>  #define _PLANE_CSC_PREOFF_HI_2_A		0x70328
> -
>  #define _PLANE_CSC_PREOFF_HI_1_B		0x71228
>  #define _PLANE_CSC_PREOFF_HI_2_B		0x71328
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
> +#define _PLANE_CSC_PREOFF_HI_1(pipe)	_PIPE(pipe, _PLANE_CSC_PREOFF_HI_1_=
A, _PLANE_CSC_PREOFF_HI_1_B)
> +#define _PLANE_CSC_PREOFF_HI_2(pipe)	_PIPE(pipe, _PLANE_CSC_PREOFF_HI_2_=
A, _PLANE_CSC_PREOFF_HI_2_B)
> +#define PLANE_CSC_PREOFF(pipe, plane, index) \
> +	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + (index) * 4, _PLANE_C=
SC_PREOFF_HI_2(pipe) + (index) * 4)
>=20=20
>  #define _PLANE_CSC_POSTOFF_HI_1_A		0x70234
>  #define _PLANE_CSC_POSTOFF_HI_2_A		0x70334
> -
>  #define _PLANE_CSC_POSTOFF_HI_1_B		0x71234
>  #define _PLANE_CSC_POSTOFF_HI_2_B		0x71334
> +#define _PLANE_CSC_POSTOFF_HI_1(pipe)	_PIPE(pipe, _PLANE_CSC_POSTOFF_HI_=
1_A, _PLANE_CSC_POSTOFF_HI_1_B)
> +#define _PLANE_CSC_POSTOFF_HI_2(pipe)	_PIPE(pipe, _PLANE_CSC_POSTOFF_HI_=
2_A, _PLANE_CSC_POSTOFF_HI_2_B)
> +#define PLANE_CSC_POSTOFF(pipe, plane, index) \
> +	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + (index) * 4, _PLANE_=
CSC_POSTOFF_HI_2(pipe) + (index) * 4)
>=20=20
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
> +#define _PLANE_WM_1_A_0				0x70240
> +#define _PLANE_WM_1_B_0				0x71240
> +#define _PLANE_WM_2_A_0				0x70340
> +#define _PLANE_WM_2_B_0				0x71340
> +#define _PLANE_WM_1(pipe)		_PIPE(pipe, _PLANE_WM_1_A_0, _PLANE_WM_1_B_0)
> +#define _PLANE_WM_2(pipe)		_PIPE(pipe, _PLANE_WM_2_A_0, _PLANE_WM_2_B_0)
> +#define _PLANE_WM_BASE(pipe, plane)	_PLANE(plane, _PLANE_WM_1(pipe), _PL=
ANE_WM_2(pipe))
> +#define PLANE_WM(pipe, plane, level)	_MMIO(_PLANE_WM_BASE(pipe, plane) +=
 ((4) * (level)))
> +#define   PLANE_WM_EN				(1 << 31)
> +#define   PLANE_WM_IGNORE_LINES			(1 << 30)
> +#define   PLANE_WM_LINES_MASK			REG_GENMASK(26, 14)
> +#define   PLANE_WM_BLOCKS_MASK			REG_GENMASK(11, 0)
>=20=20
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
> +#define _PLANE_WM_SAGV_1_A			0x70258
> +#define _PLANE_WM_SAGV_1_B			0x71258
> +#define _PLANE_WM_SAGV_2_A			0x70358
> +#define _PLANE_WM_SAGV_2_B			0x71358
> +#define _PLANE_WM_SAGV_1(pipe)		_PIPE(pipe, _PLANE_WM_SAGV_1_A, _PLANE_W=
M_SAGV_1_B)
> +#define _PLANE_WM_SAGV_2(pipe)		_PIPE(pipe, _PLANE_WM_SAGV_2_A, _PLANE_W=
M_SAGV_2_B)
> +#define PLANE_WM_SAGV(pipe, plane)	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_1(=
pipe), _PLANE_WM_SAGV_2(pipe)))
>=20=20
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
> +#define _PLANE_WM_SAGV_TRANS_1_A		0x7025c
> +#define _PLANE_WM_SAGV_TRANS_1_B		0x7125c
> +#define _PLANE_WM_SAGV_TRANS_2_A		0x7035c
> +#define _PLANE_WM_SAGV_TRANS_2_B		0x7135c
> +#define _PLANE_WM_SAGV_TRANS_1(pipe)	_PIPE(pipe, _PLANE_WM_SAGV_TRANS_1_=
A, _PLANE_WM_SAGV_TRANS_1_B)
> +#define _PLANE_WM_SAGV_TRANS_2(pipe)	_PIPE(pipe, _PLANE_WM_SAGV_TRANS_2_=
A, _PLANE_WM_SAGV_TRANS_2_B)
> +#define PLANE_WM_SAGV_TRANS(pipe, plane)	_MMIO(_PLANE(plane, _PLANE_WM_S=
AGV_TRANS_1(pipe), _PLANE_WM_SAGV_TRANS_2(pipe)))
>=20=20
> +#define _PLANE_WM_TRANS_1_A			0x70268
> +#define _PLANE_WM_TRANS_1_B			0x71268
> +#define _PLANE_WM_TRANS_2_A			0x70368
> +#define _PLANE_WM_TRANS_2_B			0x71368
> +#define _PLANE_WM_TRANS_1(pipe)		_PIPE(pipe, _PLANE_WM_TRANS_1_A, _PLANE=
_WM_TRANS_1_B)
> +#define _PLANE_WM_TRANS_2(pipe)		_PIPE(pipe, _PLANE_WM_TRANS_2_A, _PLANE=
_WM_TRANS_2_B)
> +#define PLANE_WM_TRANS(pipe, plane)	_MMIO(_PLANE(plane, _PLANE_WM_TRANS_=
1(pipe), _PLANE_WM_TRANS_2(pipe)))
> +
> +#define _PLANE_CHICKEN_1_A			0x7026c /* tgl+ */
> +#define _PLANE_CHICKEN_2_A			0x7036c
> +#define _PLANE_CHICKEN_1_B			0x7126c
> +#define _PLANE_CHICKEN_2_B			0x7136c
> +#define _PLANE_CHICKEN_1(pipe)		_PIPE(pipe, _PLANE_CHICKEN_1_A, _PLANE_C=
HICKEN_1_B)
> +#define _PLANE_CHICKEN_2(pipe)		_PIPE(pipe, _PLANE_CHICKEN_2_A, _PLANE_C=
HICKEN_2_B)
> +#define PLANE_CHICKEN(pipe, plane)	_MMIO_PLANE(plane, _PLANE_CHICKEN_1(p=
ipe), _PLANE_CHICKEN_2(pipe))
> +#define   PLANE_CHICKEN_DISABLE_DPT		REG_BIT(19) /* mtl+ */
> +
> +#define _PLANE_NV12_BUF_CFG_1_A			0x70278
> +#define _PLANE_NV12_BUF_CFG_2_A			0x70378
> +#define _PLANE_NV12_BUF_CFG_1_B			0x71278
> +#define _PLANE_NV12_BUF_CFG_2_B			0x71378
> +#define _PLANE_NV12_BUF_CFG_1(pipe)	_PIPE(pipe, _PLANE_NV12_BUF_CFG_1_A,=
 _PLANE_NV12_BUF_CFG_1_B)
> +#define _PLANE_NV12_BUF_CFG_2(pipe)	_PIPE(pipe, _PLANE_NV12_BUF_CFG_2_A,=
 _PLANE_NV12_BUF_CFG_2_B)
> +#define PLANE_NV12_BUF_CFG(pipe, plane)	_MMIO_PLANE(plane, _PLANE_NV12_B=
UF_CFG_1(pipe), _PLANE_NV12_BUF_CFG_2(pipe))
> +
> +#define _PLANE_BUF_CFG_1_A			0x7027c
> +#define _PLANE_BUF_CFG_2_A			0x7037c
>  #define _PLANE_BUF_CFG_1_B			0x7127c
>  #define _PLANE_BUF_CFG_2_B			0x7137c
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
> +#define _PLANE_BUF_CFG_1(pipe)		_PIPE(pipe, _PLANE_BUF_CFG_1_A, _PLANE_B=
UF_CFG_1_B)
> +#define _PLANE_BUF_CFG_2(pipe)		_PIPE(pipe, _PLANE_BUF_CFG_2_A, _PLANE_B=
UF_CFG_2_B)
> +#define PLANE_BUF_CFG(pipe, plane)	_MMIO_PLANE(plane, _PLANE_BUF_CFG_1(p=
ipe), _PLANE_BUF_CFG_2(pipe))
> +/* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */
> +#define   PLANE_BUF_END_MASK			REG_GENMASK(27, 16)
> +#define   PLANE_BUF_END(end)			REG_FIELD_PREP(PLANE_BUF_END_MASK, (end))
> +#define   PLANE_BUF_START_MASK			REG_GENMASK(11, 0)
> +#define   PLANE_BUF_START(start)		REG_FIELD_PREP(PLANE_BUF_START_MASK, (=
start))
>=20=20
>  #endif /* __SKL_UNIVERSAL_PLANE_REGS_H__ */

--=20
Jani Nikula, Intel
