Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A189A8C9A22
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 11:10:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9963510E538;
	Mon, 20 May 2024 09:10:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n7a2+Gud";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1659510E538
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 09:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716196236; x=1747732236;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=xY1hXTl6cHPhkgLAjMMgchV6gutSqZE8xf1LAri01LA=;
 b=n7a2+GudmNMF0R6yTUE45kSPVgMV/qSoIs2DMrmSCeMFycIfP4t7HX6I
 uteov4IXQjsCfjz3JhqdVTKEGbovBh6/5eNDnq0ww/VEdgUlAjVecwh8p
 lnU53of9alZSYYxb2SbXy5m51p8pvyrRlLxZVf763ma0vn30Kfzldprwx
 //hbYMZymIQx/oWsqlz8PzNZi2JdhjGz12FVMt98ViNZblj6aPglWc8wd
 KFW/EYOtDv8+eiXdSFvXKdLsUR361f7Sw0ZBDEUSaemPcVzcXKOixSeqc
 h1kxP6Lyk4o1vRKqQlGlc5dAFmlnJ3rGYTzl4AXGN2HDvKbPJ3tZ+wyEd A==;
X-CSE-ConnectionGUID: IDBX7HuWRMCZ6OPJtL8jbw==
X-CSE-MsgGUID: +MpTYU7ZRyuaAKfK8Da4xw==
X-IronPort-AV: E=McAfee;i="6600,9927,11077"; a="22920930"
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="22920930"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 02:10:36 -0700
X-CSE-ConnectionGUID: qn8DPEWpQz69r1P2/3C+0w==
X-CSE-MsgGUID: puf75YdoQvKNWyeORxXC2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="63303977"
Received: from unknown (HELO localhost) ([10.245.246.99])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 02:10:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 02/13] drm/i915: Clean up the cursor register defines
In-Reply-To: <20240516135622.3498-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
 <20240516135622.3498-3-ville.syrjala@linux.intel.com>
Date: Mon, 20 May 2024 12:10:30 +0300
Message-ID: <878r04voft.fsf@intel.com>
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

On Thu, 16 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Group the cursor register defines such that everything to
> do with one register is in one place.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

but a couple of nitpicks inline...

> ---
>  .../gpu/drm/i915/display/intel_cursor_regs.h  | 52 +++++++++----------
>  1 file changed, 26 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor_regs.h b/drivers/g=
pu/drm/i915/display/intel_cursor_regs.h
> index c2190af1e9f5..270c26c2e6df 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
> @@ -9,6 +9,7 @@
>  #include "intel_display_reg_defs.h"
>=20=20
>  #define _CURACNTR		0x70080
> +#define CURCNTR(dev_priv, pipe)	_MMIO_CURSOR2((dev_priv), (pipe), _CURAC=
NTR)

In addition to code movement, these add braces around (dev_priv) and
(pipe). While it makes review harder by breaking 'git show
--color-moved', I also think it's kind of unnecessary when they're only
passed on as parameters. Or is there some corner case where it matters?
Comma has the lowest precedence, and I don't think you could easily pass
in a value with a comma operator.

No need to change for this, it's not wrong either.

>  /* Old style CUR*CNTR flags (desktop 8xx) */
>  #define   CURSOR_ENABLE			REG_BIT(31)
>  #define   CURSOR_PIPE_GAMMA_ENABLE	REG_BIT(30)
> @@ -38,61 +39,60 @@
>  #define   MCURSOR_MODE_128_ARGB_AX	(0x20 | MCURSOR_MODE_128_32B_AX)
>  #define   MCURSOR_MODE_256_ARGB_AX	(0x20 | MCURSOR_MODE_256_32B_AX)
>  #define   MCURSOR_MODE_64_ARGB_AX	(0x20 | MCURSOR_MODE_64_32B_AX)
> +
>  #define _CURABASE		0x70084
> +#define CURBASE(dev_priv, pipe)	_MMIO_CURSOR2((dev_priv), (pipe), _CURAB=
ASE)
> +
>  #define _CURAPOS		0x70088
> -#define _CURAPOS_ERLY_TPT	0x7008c
> +#define CURPOS(dev_priv, pipe)	_MMIO_CURSOR2((dev_priv), (pipe), _CURAPO=
S)
>  #define   CURSOR_POS_Y_SIGN		REG_BIT(31)
>  #define   CURSOR_POS_Y_MASK		REG_GENMASK(30, 16)
>  #define   CURSOR_POS_Y(y)		REG_FIELD_PREP(CURSOR_POS_Y_MASK, (y))
>  #define   CURSOR_POS_X_SIGN		REG_BIT(15)
>  #define   CURSOR_POS_X_MASK		REG_GENMASK(14, 0)
>  #define   CURSOR_POS_X(x)		REG_FIELD_PREP(CURSOR_POS_X_MASK, (x))
> +
> +#define _CURAPOS_ERLY_TPT	0x7008c
> +#define CURPOS_ERLY_TPT(dev_priv, pipe)	_MMIO_CURSOR2((dev_priv), (pipe)=
, _CURAPOS_ERLY_TPT)
> +
>  #define _CURASIZE		0x700a0 /* 845/865 */
> +#define CURSIZE(dev_priv, pipe)	_MMIO_CURSOR2((dev_priv), (pipe), _CURAS=
IZE)
>  #define   CURSOR_HEIGHT_MASK		REG_GENMASK(21, 12)
>  #define   CURSOR_HEIGHT(h)		REG_FIELD_PREP(CURSOR_HEIGHT_MASK, (h))
>  #define   CURSOR_WIDTH_MASK		REG_GENMASK(9, 0)
>  #define   CURSOR_WIDTH(w)		REG_FIELD_PREP(CURSOR_WIDTH_MASK, (w))
> +
>  #define _CUR_FBC_CTL_A		0x700a0 /* ivb+ */
> +#define CUR_FBC_CTL(dev_priv, pipe)	_MMIO_CURSOR2((dev_priv), (pipe), _C=
UR_FBC_CTL_A)
>  #define   CUR_FBC_EN			REG_BIT(31)
>  #define   CUR_FBC_HEIGHT_MASK		REG_GENMASK(7, 0)
>  #define   CUR_FBC_HEIGHT(h)		REG_FIELD_PREP(CUR_FBC_HEIGHT_MASK, (h))
> +
>  #define _CUR_CHICKEN_A		0x700a4 /* mtl+ */
> +#define CUR_CHICKEN(dev_priv, pipe)	_MMIO_CURSOR2((dev_priv), (pipe), _C=
UR_CHICKEN_A)
> +
>  #define _CURASURFLIVE		0x700ac /* g4x+ */
> -#define _CURBCNTR		0x700c0
> -#define _CURBBASE		0x700c4
> -#define _CURBPOS		0x700c8
> -
> -#define _CURBCNTR_IVB		0x71080
> -#define _CURBBASE_IVB		0x71084
> -#define _CURBPOS_IVB		0x71088
> -
> -#define CURCNTR(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURACNTR)
> -#define CURBASE(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURABASE)
> -#define CURPOS(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAPOS)
> -#define CURPOS_ERLY_TPT(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _C=
URAPOS_ERLY_TPT)
> -#define CURSIZE(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURASIZE)
> -#define CUR_FBC_CTL(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CUR_F=
BC_CTL_A)
> -#define CUR_CHICKEN(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CUR_C=
HICKEN_A)
> -#define CURSURFLIVE(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAS=
URFLIVE)
> +#define CURSURFLIVE(dev_priv, pipe)	_MMIO_CURSOR2((dev_priv), (pipe), _C=
URASURFLIVE)
>=20=20
>  /* skl+ */
>  #define _CUR_WM_A_0		0x70140
>  #define _CUR_WM_B_0		0x71140
> +#define CUR_WM(pipe, level)	_MMIO(_PIPE((pipe), _CUR_WM_A_0, _CUR_WM_B_0=
) + (level) * 4)
> +
>  #define _CUR_WM_SAGV_A		0x70158
>  #define _CUR_WM_SAGV_B		0x71158
> +#define CUR_WM_SAGV(pipe)	_MMIO_PIPE((pipe), _CUR_WM_SAGV_A, _CUR_WM_SAG=
V_B)
> +
>  #define _CUR_WM_SAGV_TRANS_A	0x7015C
>  #define _CUR_WM_SAGV_TRANS_B	0x7115C
> +#define CUR_WM_SAGV_TRANS(pipe)	_MMIO_PIPE((pipe), _CUR_WM_SAGV_TRANS_A,=
 _CUR_WM_SAGV_TRANS_B)
> +
>  #define _CUR_WM_TRANS_A		0x70168
>  #define _CUR_WM_TRANS_B		0x71168
> -#define _CUR_WM_0(pipe) _PIPE(pipe, _CUR_WM_A_0, _CUR_WM_B_0)
> -#define CUR_WM(pipe, level) _MMIO(_CUR_WM_0(pipe) + ((4) * (level)))

There's some unmentioned drive-by cleanup here too. No biggie, but I've
found 'git show --color-moved' to be such a powerful aid in reviewing
code movement patches that I'd prefer these to be separate. No need to
change now, because I already reviewed it. :)

BR,
Jani.

> -#define CUR_WM_SAGV(pipe) _MMIO_PIPE(pipe, _CUR_WM_SAGV_A, _CUR_WM_SAGV_=
B)
> -#define CUR_WM_SAGV_TRANS(pipe) _MMIO_PIPE(pipe, _CUR_WM_SAGV_TRANS_A, _=
CUR_WM_SAGV_TRANS_B)
> -#define CUR_WM_TRANS(pipe) _MMIO_PIPE(pipe, _CUR_WM_TRANS_A, _CUR_WM_TRA=
NS_B)
> +#define CUR_WM_TRANS(pipe)	_MMIO_PIPE((pipe), _CUR_WM_TRANS_A, _CUR_WM_T=
RANS_B)
>=20=20
> -/* skl+ */
> -#define _CUR_BUF_CFG_A				0x7017c
> -#define _CUR_BUF_CFG_B				0x7117c
> -#define CUR_BUF_CFG(pipe)	_MMIO_PIPE(pipe, _CUR_BUF_CFG_A, _CUR_BUF_CFG_=
B)
> +#define _CUR_BUF_CFG_A		0x7017c
> +#define _CUR_BUF_CFG_B		0x7117c
> +#define CUR_BUF_CFG(pipe)	_MMIO_PIPE((pipe), _CUR_BUF_CFG_A, _CUR_BUF_CF=
G_B)
>=20=20
>  #endif /* __INTEL_CURSOR_REGS_H__ */

--=20
Jani Nikula, Intel
