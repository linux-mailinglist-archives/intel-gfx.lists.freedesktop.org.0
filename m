Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 731FDCC8047
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 14:57:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 048A310E34A;
	Wed, 17 Dec 2025 13:57:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AAh/ras4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0801710E34A;
 Wed, 17 Dec 2025 13:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765979874; x=1797515874;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=0UHGKetn2UQ38wLpx8WjcDEuoXjZEtY83guUZPrp8Ok=;
 b=AAh/ras4ig8Q/JPHCJrkDIvbnIwyoDSxdLWdRoJJDw2aGPEujijmTpMP
 6kVgeSMT/+Edgsouhc49PtElUfZ+W6YH77cK/HQocjre/mxPwmFLkJrhW
 SASlOPWDUjKgOKaOjysq4oZ3G5HsVF511onbVANyeJ6hK6pCoWa/l9g1P
 MQ8nK0aADc3zSCVBMsqmY2TuxVQVVvd95aGsr+nvxCi2EdYAr+BtirwlU
 QeQF86Zn+GktV/3MDtI1O+3MU+CTpL35ob8DVedes6lB7xni6sHmIIqhb
 O8qc6fhDGlodygt7s99pcakUZlo7SE7OG50g/ETZzKrxhwq/vpSWKAwzN w==;
X-CSE-ConnectionGUID: aJpiWCeMQzi5jE2aETJ+kw==
X-CSE-MsgGUID: Am1ptcrLQbSupdcqSAbjpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="90574639"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="90574639"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 05:57:54 -0800
X-CSE-ConnectionGUID: mq1HzoPbQsW5mAYumpnS0Q==
X-CSE-MsgGUID: 1tsYG5DqTgawI0zBZ5uBNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="198308149"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.216])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 05:57:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [PATCH 01/19] drm/{i915, xe}: Extract common registers into a
 separate file
In-Reply-To: <20251217062209.852324-2-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251217062209.852324-1-uma.shankar@intel.com>
 <20251217062209.852324-2-uma.shankar@intel.com>
Date: Wed, 17 Dec 2025 15:57:48 +0200
Message-ID: <042a56dbef341da715681b1a3cad2addf7201c7b@intel.com>
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

On Wed, 17 Dec 2025, Uma Shankar <uma.shankar@intel.com> wrote:
> There are certain register definitions which are commonly shared
> by i915, xe and display. Extract the same to a common header to
> avoid duplication.

I think TRANS_CHICKEN2 should be moved to intel_display_regs.h instead
of something under include/drm/intel. The goal is that the display
specific parts of intel_clock_gating.c should be moved there too.

BR,
Jani.


>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_pch_display.c    |  2 +-
>  drivers/gpu/drm/i915/i915_reg.h                 | 11 +----------
>  include/drm/intel/intel_gmd_common_regs.h       | 17 +++++++++++++++++
>  3 files changed, 19 insertions(+), 11 deletions(-)
>  create mode 100644 include/drm/intel/intel_gmd_common_regs.h
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/g=
pu/drm/i915/display/intel_pch_display.c
> index 16619f7be5f8..2f39ff32c6d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -4,9 +4,9 @@
>   */
>=20=20
>  #include <drm/drm_print.h>
> +#include <drm/intel/intel_gmd_common_regs.h>
>=20=20
>  #include "g4x_dp.h"
> -#include "i915_reg.h"
>  #include "intel_crt.h"
>  #include "intel_crt_regs.h"
>  #include "intel_de.h"
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 5bf3b4ab2baa..f60259c41c56 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -25,6 +25,7 @@
>  #ifndef _I915_REG_H_
>  #define _I915_REG_H_
>=20=20
> +#include <drm/intel/intel_gmd_common_regs.h>
>  #include "i915_reg_defs.h"
>  #include "display/intel_display_reg_defs.h"
>=20=20
> @@ -1022,16 +1023,6 @@
>  #define   TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE	REG_BIT(10)
>  #define   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE	REG_BIT(4)
>=20=20
> -#define _TRANSA_CHICKEN2	 0xf0064
> -#define _TRANSB_CHICKEN2	 0xf1064
> -#define TRANS_CHICKEN2(pipe)	_MMIO_PIPE(pipe, _TRANSA_CHICKEN2, _TRANSB_=
CHICKEN2)
> -#define   TRANS_CHICKEN2_TIMING_OVERRIDE		REG_BIT(31)
> -#define   TRANS_CHICKEN2_FDI_POLARITY_REVERSED		REG_BIT(29)
> -#define   TRANS_CHICKEN2_FRAME_START_DELAY_MASK		REG_GENMASK(28, 27)
> -#define   TRANS_CHICKEN2_FRAME_START_DELAY(x)		REG_FIELD_PREP(TRANS_CHIC=
KEN2_FRAME_START_DELAY_MASK, (x)) /* 0-3 */
> -#define   TRANS_CHICKEN2_DISABLE_DEEP_COLOR_COUNTER	REG_BIT(26)
> -#define   TRANS_CHICKEN2_DISABLE_DEEP_COLOR_MODESWITCH	REG_BIT(25)
> -
>  #define SOUTH_CHICKEN1		_MMIO(0xc2000)
>  #define  FDIA_PHASE_SYNC_SHIFT_OVR	19
>  #define  FDIA_PHASE_SYNC_SHIFT_EN	18
> diff --git a/include/drm/intel/intel_gmd_common_regs.h b/include/drm/inte=
l/intel_gmd_common_regs.h
> new file mode 100644
> index 000000000000..4d91bc2dbb27
> --- /dev/null
> +++ b/include/drm/intel/intel_gmd_common_regs.h
> @@ -0,0 +1,17 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright =C2=A9 2025 Intel Corporation */
> +
> +#ifndef _INTEL_GMD_COMMON_REG_H_
> +#define _INTEL_GMD_COMMON_REG_H_
> +
> +#define _TRANSA_CHICKEN2	 0xf0064
> +#define _TRANSB_CHICKEN2	 0xf1064
> +#define TRANS_CHICKEN2(pipe)	_MMIO_PIPE(pipe, _TRANSA_CHICKEN2, _TRANSB_=
CHICKEN2)
> +#define   TRANS_CHICKEN2_TIMING_OVERRIDE		REG_BIT(31)
> +#define   TRANS_CHICKEN2_FDI_POLARITY_REVERSED		REG_BIT(29)
> +#define   TRANS_CHICKEN2_FRAME_START_DELAY_MASK		REG_GENMASK(28, 27)
> +#define   TRANS_CHICKEN2_FRAME_START_DELAY(x)		REG_FIELD_PREP(TRANS_CHIC=
KEN2_FRAME_START_DELAY_MASK, (x)) /* 0-3 */
> +#define   TRANS_CHICKEN2_DISABLE_DEEP_COLOR_COUNTER	REG_BIT(26)
> +#define   TRANS_CHICKEN2_DISABLE_DEEP_COLOR_MODESWITCH	REG_BIT(25)
> +
> +#endif

--=20
Jani Nikula, Intel
