Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLlFGiPtgWkFMAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 13:42:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB86D9237
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 13:42:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C42810E62C;
	Tue,  3 Feb 2026 12:42:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oAWR1ZPW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA09F10E62C;
 Tue,  3 Feb 2026 12:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770122528; x=1801658528;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=NeFUQAJR0PZzGcKti3RzVFRo8s/naQVcj5vaVrmX+oY=;
 b=oAWR1ZPWPXvIUn4EDqTGN92KNDCLcAh5uj07sxKEE55UVmzeE6Sf7ED9
 tVFiqqukMivLRkwo5ZLdXpdEmhP2CGuN+vx7Bl/QHBBpDhfCqWOYna/Kk
 oEFX9Ri7ViCHxb01ll5x4MKhb9ksRt0QSdBPTqu1xciHZgFEemNyUaxYP
 4dG321TCIs6d3csV2lcmZIrKGKCdjIy1MMzpkW07Wkhz1tdTw9MNtZn8J
 LMn13mjkuNi04I21Gj+xIVgShaDebIwtptw7WUF5GnGsfhv5KJunKs278
 BND67X3cSsI2IJ15W9ZEUqZtSwSV61c4UpyevgZeSe+grVXeZVdB5mgvK g==;
X-CSE-ConnectionGUID: mrHSKvcfTkK4QzSXct5sEQ==
X-CSE-MsgGUID: FS6EK2rKSsyEiqNGfbL+Ag==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="71014400"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="71014400"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 04:42:08 -0800
X-CSE-ConnectionGUID: 4qlF1tVSStWi+AHqa3M19g==
X-CSE-MsgGUID: mTkkH2JDR+2sI6gGafw6Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="247446141"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 04:42:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v3 11/19] drm/i915: Remove i915_reg.h from i9xx_wm.c
In-Reply-To: <20260129211358.1240283-12-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260129211358.1240283-1-uma.shankar@intel.com>
 <20260129211358.1240283-12-uma.shankar@intel.com>
Date: Tue, 03 Feb 2026 14:42:02 +0200
Message-ID: <fc4500752f2a2571d1a65a9023b67880a956e01d@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: CBB86D9237
X-Rspamd-Action: no action

On Fri, 30 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> Move FW_BLC_SELF to common header to make i9xx_wm.c
> free from i915_reg.h include. Introduce a common
> intel_gmd_misc_regs.h to define common miscellaneous
> register definitions across graphics and display.
>
> v2: Introdue a common misc header for GMD
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_wm.c        |  2 +-
>  .../gpu/drm/i915/display/intel_display_regs.h |  8 ++++++-
>  drivers/gpu/drm/i915/i915_reg.h               | 20 +-----------------
>  include/drm/intel/intel_gmd_misc_regs.h       | 21 +++++++++++++++++++
>  4 files changed, 30 insertions(+), 21 deletions(-)
>  create mode 100644 include/drm/intel/intel_gmd_misc_regs.h
>
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i91=
5/display/i9xx_wm.c
> index 39dfceb438ae..24f898efa9dd 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> @@ -6,8 +6,8 @@
>  #include <linux/iopoll.h>
>=20=20
>  #include <drm/drm_print.h>
> +#include <drm/intel/intel_gmd_misc_regs.h>
>=20=20
> -#include "i915_reg.h"
>  #include "i9xx_wm.h"
>  #include "i9xx_wm_regs.h"
>  #include "intel_atomic.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/=
gpu/drm/i915/display/intel_display_regs.h
> index 0164dcbb709f..680020e590cb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -4,6 +4,7 @@
>  #ifndef __INTEL_DISPLAY_REGS_H__
>  #define __INTEL_DISPLAY_REGS_H__
>=20=20
> +#include <drm/intel/intel_gmd_misc_regs.h>

Please only include where needed.

>  #include "intel_display_reg_defs.h"
>=20=20
>  #define GU_CNTL_PROTECTED		_MMIO(0x10100C)
> @@ -3119,6 +3120,11 @@ enum skl_power_gate {
>  #define   MTL_TRAS_MASK			REG_GENMASK(16, 8)
>  #define   MTL_TRDPRE_MASK		REG_GENMASK(7, 0)
>=20=20
> -
> +#define FW_BLC		_MMIO(0x20d8)
> +#define FW_BLC2		_MMIO(0x20dc)
> +#define FW_BLC_SELF	_MMIO(0x20e0) /* 915+ only */
> +#define   FW_BLC_SELF_EN_MASK      REG_BIT(31)
> +#define   FW_BLC_SELF_FIFO_MASK    REG_BIT(16) /* 945 only */
> +#define   FW_BLC_SELF_EN           REG_BIT(15) /* 945 only */
>=20=20
>  #endif /* __INTEL_DISPLAY_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 6cb72e6e9086..b4b749e52b5b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -26,6 +26,7 @@
>  #define _I915_REG_H_
>=20=20
>  #include <drm/intel/intel_pcode.h>
> +#include <drm/intel/intel_gmd_misc_regs.h>

Please only include where needed.

>  #include "i915_reg_defs.h"
>  #include "display/intel_display_reg_defs.h"
>=20=20
> @@ -394,24 +395,10 @@
>=20=20
>  #define GEN2_ERROR_REGS		I915_ERROR_REGS(EMR, EIR)
>=20=20
> -#define INSTPM	        _MMIO(0x20c0)
> -#define   INSTPM_SELF_EN (1 << 12) /* 915GM only */
> -#define   INSTPM_AGPBUSY_INT_EN (1 << 11) /* gen3: when disabled, pendin=
g interrupts
> -					will not assert AGPBUSY# and will only
> -					be delivered when out of C3. */
> -#define   INSTPM_FORCE_ORDERING				(1 << 7) /* GEN6+ */
> -#define   INSTPM_TLB_INVALIDATE	(1 << 9)
> -#define   INSTPM_SYNC_FLUSH	(1 << 5)
>  #define MEM_MODE	_MMIO(0x20cc)
>  #define   MEM_DISPLAY_B_TRICKLE_FEED_DISABLE (1 << 3) /* 830 only */
>  #define   MEM_DISPLAY_A_TRICKLE_FEED_DISABLE (1 << 2) /* 830/845 only */
>  #define   MEM_DISPLAY_TRICKLE_FEED_DISABLE (1 << 2) /* 85x only */
> -#define FW_BLC		_MMIO(0x20d8)
> -#define FW_BLC2		_MMIO(0x20dc)
> -#define FW_BLC_SELF	_MMIO(0x20e0) /* 915+ only */
> -#define   FW_BLC_SELF_EN_MASK      REG_BIT(31)
> -#define   FW_BLC_SELF_FIFO_MASK    REG_BIT(16) /* 945 only */
> -#define   FW_BLC_SELF_EN           REG_BIT(15) /* 945 only */
>  #define MM_BURST_LENGTH     0x00700000
>  #define MM_FIFO_WATERMARK   0x0001F000
>  #define LM_BURST_LENGTH     0x00000700
> @@ -834,11 +821,6 @@
>  #define   KVM_CONFIG_CHANGE_NOTIFICATION_SELECT	REG_BIT(14)
>=20=20
>=20=20
> -#define DISP_ARB_CTL	_MMIO(0x45000)
> -#define   DISP_FBC_MEMORY_WAKE		REG_BIT(31)
> -#define   DISP_TILE_SURFACE_SWIZZLING	REG_BIT(13)
> -#define   DISP_FBC_WM_DIS		REG_BIT(15)
> -
>  #define GEN8_CHICKEN_DCPR_1			_MMIO(0x46430)
>  #define   _LATENCY_REPORTING_REMOVED_PIPE_D	REG_BIT(31)
>  #define   SKL_SELECT_ALTERNATE_DC_EXIT		REG_BIT(30)
> diff --git a/include/drm/intel/intel_gmd_misc_regs.h b/include/drm/intel/=
intel_gmd_misc_regs.h
> new file mode 100644
> index 000000000000..377f4e383699
> --- /dev/null
> +++ b/include/drm/intel/intel_gmd_misc_regs.h
> @@ -0,0 +1,21 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright =C2=A9 2026 Intel Corporation */
> +
> +#ifndef _INTEL_GMD_MISC_REG_H_
> +#define _INTEL_GMD_MISC_REG_H_

Should be REGS_H to match the file name.

> +
> +#define DISP_ARB_CTL	_MMIO(0x45000)
> +#define   DISP_FBC_MEMORY_WAKE		REG_BIT(31)
> +#define   DISP_TILE_SURFACE_SWIZZLING	REG_BIT(13)
> +#define   DISP_FBC_WM_DIS		REG_BIT(15)
> +
> +#define INSTPM	        _MMIO(0x20c0)
> +#define   INSTPM_SELF_EN (1 << 12) /* 915GM only */
> +#define   INSTPM_AGPBUSY_INT_EN (1 << 11) /* gen3: when disabled, pendin=
g interrupts
> +					will not assert AGPBUSY# and will only
> +					be delivered when out of C3. */
> +#define   INSTPM_FORCE_ORDERING				(1 << 7) /* GEN6+ */
> +#define   INSTPM_TLB_INVALIDATE	(1 << 9)
> +#define   INSTPM_SYNC_FLUSH	(1 << 5)
> +
> +#endif

--=20
Jani Nikula, Intel
