Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBgOHckMcmksawAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 12:40:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF80C6622E
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 12:40:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49B5310E98E;
	Thu, 22 Jan 2026 11:40:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bdIgHoeG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F82D10E98A;
 Thu, 22 Jan 2026 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769082054; x=1800618054;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=NCcNokgDRIclX1VpJJkOEGkwn7f6gr2r7Lm8WlflX9s=;
 b=bdIgHoeGqaFHpRRmEoevc8lwTgJgHgGQ1YBvDInB+SE7DXCRsIyn3tfw
 zhc7oK2HpOFUC2LbN79dPcw3WibMlIphD6vSsw8IRQvgnFhA0aAF1v11r
 Y6FoTqvSyAx7wtPc45gBUK2ZYOtbbV2Cg0s7LPDaqwtQ+WlLnLwp6rNJk
 Wb8Gze+CBz9BBmjd2EqFupGsbNzSSlqiWCYSbzNM2FtlS3iTlUm1iZPp7
 8xQeFgm3JmY8+yIpPOg7uJNLkIO/drGbuM8JG3s+jLp2G5Cwau9GdLLQa
 mrqrK/kjsVZ6KNJiQJIRHYMnyl4jnJLDw9M+qnngUIDmE7JED1chm8rMc Q==;
X-CSE-ConnectionGUID: 6typHNgfRIKak2Z/K6jZPw==
X-CSE-MsgGUID: GcrOtV09S16EBisYTcfBDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="95795766"
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="95795766"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:40:53 -0800
X-CSE-ConnectionGUID: o+9Z1zH+Q8iYSn5DN2upag==
X-CSE-MsgGUID: Ltu6KpYdQT2YwY7iNjlqQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="207040136"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:40:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v2 05/19] drm/{i915, xe}: Extract pcode definitions to common
 header
In-Reply-To: <20260121232414.707192-6-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260121232414.707192-1-uma.shankar@intel.com>
 <20260121232414.707192-6-uma.shankar@intel.com>
Date: Thu, 22 Jan 2026 13:40:48 +0200
Message-ID: <fe5fb0c8b1c4a4c9df24ef31e278dbfb1f1c3872@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: BF80C6622E
X-Rspamd-Action: no action

On Thu, 22 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> There are certain register definitions which are commonly shared
> by i915, xe and display. Extract the same to a common header to
> avoid duplication.

I think starting a big new catch-all file for common registers is the
wrong direction. If we're adding new files, they should be per feature.

In this case, it's pcode registers, and the name should reflect that.

Later in the series more stuff gets added, and more files include it,
but it's not at all clear what they need from there. It would be so much
more obvious if it was per feature.

BR,
Jani.


>
> Move GEN6_PCODE_MAILBOX to common header to make intel_cdclk.c
> free from including i915_reg.h
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c |   2 +-
>  drivers/gpu/drm/i915/i915_reg.h            | 101 +------------------
>  include/drm/intel/intel_gmd_common_regs.h  | 108 +++++++++++++++++++++
>  3 files changed, 110 insertions(+), 101 deletions(-)
>  create mode 100644 include/drm/intel/intel_gmd_common_regs.h
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 9bfbfbf34dc0..531db1b452d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -27,9 +27,9 @@
>=20=20
>  #include <drm/drm_fixed.h>
>  #include <drm/drm_print.h>
> +#include <drm/intel/intel_gmd_common_regs.h>
>=20=20
>  #include "hsw_ips.h"
> -#include "i915_reg.h"
>  #include "intel_atomic.h"
>  #include "intel_audio.h"
>  #include "intel_cdclk.h"
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index dc13f9eb4cd7..35122c997b8a 100644
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
> @@ -956,106 +957,6 @@
>  #define    EDRAM_WAYS_IDX(cap)			(((cap) >> 5) & 0x7)
>  #define    EDRAM_SETS_IDX(cap)			(((cap) >> 8) & 0x3)
>=20=20
> -#define GEN6_PCODE_MAILBOX			_MMIO(0x138124)
> -#define   GEN6_PCODE_READY			(1 << 31)
> -#define   GEN6_PCODE_MB_PARAM2			REG_GENMASK(23, 16)
> -#define   GEN6_PCODE_MB_PARAM1			REG_GENMASK(15, 8)
> -#define   GEN6_PCODE_MB_COMMAND			REG_GENMASK(7, 0)
> -#define   GEN6_PCODE_ERROR_MASK			0xFF
> -#define     GEN6_PCODE_SUCCESS			0x0
> -#define     GEN6_PCODE_ILLEGAL_CMD		0x1
> -#define     GEN6_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE 0x2
> -#define     GEN6_PCODE_TIMEOUT			0x3
> -#define     GEN6_PCODE_UNIMPLEMENTED_CMD	0xFF
> -#define     GEN7_PCODE_TIMEOUT			0x2
> -#define     GEN7_PCODE_ILLEGAL_DATA		0x3
> -#define     GEN11_PCODE_ILLEGAL_SUBCOMMAND	0x4
> -#define     GEN11_PCODE_LOCKED			0x6
> -#define     GEN11_PCODE_REJECTED		0x11
> -#define     GEN7_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE 0x10
> -#define   GEN6_PCODE_WRITE_RC6VIDS		0x4
> -#define   GEN6_PCODE_READ_RC6VIDS		0x5
> -#define     GEN6_ENCODE_RC6_VID(mv)		(((mv) - 245) / 5)
> -#define     GEN6_DECODE_RC6_VID(vids)		(((vids) * 5) + 245)
> -#define   BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ	0x18
> -#define   GEN9_PCODE_READ_MEM_LATENCY		0x6
> -#define     GEN9_MEM_LATENCY_LEVEL_3_7_MASK	REG_GENMASK(31, 24)
> -#define     GEN9_MEM_LATENCY_LEVEL_2_6_MASK	REG_GENMASK(23, 16)
> -#define     GEN9_MEM_LATENCY_LEVEL_1_5_MASK	REG_GENMASK(15, 8)
> -#define     GEN9_MEM_LATENCY_LEVEL_0_4_MASK	REG_GENMASK(7, 0)
> -#define   SKL_PCODE_LOAD_HDCP_KEYS		0x5
> -#define   SKL_PCODE_CDCLK_CONTROL		0x7
> -#define     SKL_CDCLK_PREPARE_FOR_CHANGE	0x3
> -#define     SKL_CDCLK_READY_FOR_CHANGE		0x1
> -#define   GEN6_PCODE_WRITE_MIN_FREQ_TABLE	0x8
> -#define   GEN6_PCODE_READ_MIN_FREQ_TABLE	0x9
> -#define   GEN6_READ_OC_PARAMS			0xc
> -#define   ICL_PCODE_MEM_SUBSYSYSTEM_INFO	0xd
> -#define     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO	(0x0 << 8)
> -#define     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point)	(((point) << 16)=
 | (0x1 << 8))
> -#define     ADL_PCODE_MEM_SS_READ_PSF_GV_INFO	((0) | (0x2 << 8))
> -#define   DISPLAY_TO_PCODE_CDCLK_MAX		0x28D
> -#define   DISPLAY_TO_PCODE_VOLTAGE_MASK		REG_GENMASK(1, 0)
> -#define	  DISPLAY_TO_PCODE_VOLTAGE_MAX		DISPLAY_TO_PCODE_VOLTAGE_MASK
> -#define   DISPLAY_TO_PCODE_CDCLK_VALID		REG_BIT(27)
> -#define   DISPLAY_TO_PCODE_PIPE_COUNT_VALID	REG_BIT(31)
> -#define   DISPLAY_TO_PCODE_CDCLK_MASK		REG_GENMASK(25, 16)
> -#define   DISPLAY_TO_PCODE_PIPE_COUNT_MASK	REG_GENMASK(30, 28)
> -#define   DISPLAY_TO_PCODE_CDCLK(x)		REG_FIELD_PREP(DISPLAY_TO_PCODE_CDC=
LK_MASK, (x))
> -#define   DISPLAY_TO_PCODE_PIPE_COUNT(x)	REG_FIELD_PREP(DISPLAY_TO_PCODE=
_PIPE_COUNT_MASK, (x))
> -#define   DISPLAY_TO_PCODE_VOLTAGE(x)		REG_FIELD_PREP(DISPLAY_TO_PCODE_V=
OLTAGE_MASK, (x))
> -#define   DISPLAY_TO_PCODE_UPDATE_MASK(cdclk, num_pipes, voltage_level) \
> -		((DISPLAY_TO_PCODE_CDCLK(cdclk)) | \
> -		(DISPLAY_TO_PCODE_PIPE_COUNT(num_pipes)) | \
> -		(DISPLAY_TO_PCODE_VOLTAGE(voltage_level)))
> -#define   ICL_PCODE_SAGV_DE_MEM_SS_CONFIG	0xe
> -#define     ICL_PCODE_REP_QGV_MASK		REG_GENMASK(1, 0)
> -#define     ICL_PCODE_REP_QGV_SAFE		REG_FIELD_PREP(ICL_PCODE_REP_QGV_MAS=
K, 0)
> -#define     ICL_PCODE_REP_QGV_POLL		REG_FIELD_PREP(ICL_PCODE_REP_QGV_MAS=
K, 1)
> -#define     ICL_PCODE_REP_QGV_REJECTED		REG_FIELD_PREP(ICL_PCODE_REP_QGV=
_MASK, 2)
> -#define     ADLS_PCODE_REP_PSF_MASK		REG_GENMASK(3, 2)
> -#define     ADLS_PCODE_REP_PSF_SAFE		REG_FIELD_PREP(ADLS_PCODE_REP_PSF_M=
ASK, 0)
> -#define     ADLS_PCODE_REP_PSF_POLL		REG_FIELD_PREP(ADLS_PCODE_REP_PSF_M=
ASK, 1)
> -#define     ADLS_PCODE_REP_PSF_REJECTED		REG_FIELD_PREP(ADLS_PCODE_REP_P=
SF_MASK, 2)
> -#define     ICL_PCODE_REQ_QGV_PT_MASK		REG_GENMASK(7, 0)
> -#define     ICL_PCODE_REQ_QGV_PT(x)		REG_FIELD_PREP(ICL_PCODE_REQ_QGV_PT=
_MASK, (x))
> -#define     ADLS_PCODE_REQ_PSF_PT_MASK		REG_GENMASK(10, 8)
> -#define     ADLS_PCODE_REQ_PSF_PT(x)		REG_FIELD_PREP(ADLS_PCODE_REQ_PSF_=
PT_MASK, (x))
> -#define   GEN6_PCODE_READ_D_COMP		0x10
> -#define   GEN6_PCODE_WRITE_D_COMP		0x11
> -#define   ICL_PCODE_EXIT_TCCOLD			0x12
> -#define   HSW_PCODE_DE_WRITE_FREQ_REQ		0x17
> -#define   DISPLAY_IPS_CONTROL			0x19
> -#define   TGL_PCODE_TCCOLD			0x26
> -#define     TGL_PCODE_EXIT_TCCOLD_DATA_L_EXIT_FAILED	REG_BIT(0)
> -#define     TGL_PCODE_EXIT_TCCOLD_DATA_L_BLOCK_REQ	0
> -#define     TGL_PCODE_EXIT_TCCOLD_DATA_L_UNBLOCK_REQ	REG_BIT(0)
> -            /* See also IPS_CTL */
> -#define     IPS_PCODE_CONTROL			(1 << 30)
> -#define   HSW_PCODE_DYNAMIC_DUTY_CYCLE_CONTROL	0x1A
> -#define   GEN9_PCODE_SAGV_CONTROL		0x21
> -#define     GEN9_SAGV_DISABLE			0x0
> -#define     GEN9_SAGV_IS_DISABLED		0x1
> -#define     GEN9_SAGV_ENABLE			0x3
> -#define   DG1_PCODE_STATUS			0x7E
> -#define     DG1_UNCORE_GET_INIT_STATUS		0x0
> -#define     DG1_UNCORE_INIT_STATUS_COMPLETE	0x1
> -#define   PCODE_POWER_SETUP			0x7C
> -#define     POWER_SETUP_SUBCOMMAND_READ_I1	0x4
> -#define     POWER_SETUP_SUBCOMMAND_WRITE_I1	0x5
> -#define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
> -#define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed point format */
> -#define	    POWER_SETUP_I1_DATA_MASK		REG_GENMASK(15, 0)
> -#define     POWER_SETUP_SUBCOMMAND_G8_ENABLE	0x6
> -#define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
> -#define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/* pvc */
> -/* XEHP_PCODE_FREQUENCY_CONFIG sub-commands (param1) */
> -#define     PCODE_MBOX_FC_SC_READ_FUSED_P0	0x0
> -#define     PCODE_MBOX_FC_SC_READ_FUSED_PN	0x1
> -/* PCODE_MBOX_DOMAIN_* - mailbox domain IDs */
> -/*   XEHP_PCODE_FREQUENCY_CONFIG param2 */
> -#define     PCODE_MBOX_DOMAIN_NONE		0x0
> -#define     PCODE_MBOX_DOMAIN_MEDIAFF		0x3
>  #define GEN6_PCODE_DATA				_MMIO(0x138128)
>  #define   GEN6_PCODE_FREQ_IA_RATIO_SHIFT	8
>  #define   GEN6_PCODE_FREQ_RING_RATIO_SHIFT	16
> diff --git a/include/drm/intel/intel_gmd_common_regs.h b/include/drm/inte=
l/intel_gmd_common_regs.h
> new file mode 100644
> index 000000000000..8e9a574c87d9
> --- /dev/null
> +++ b/include/drm/intel/intel_gmd_common_regs.h
> @@ -0,0 +1,108 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright =C2=A9 2026 Intel Corporation */
> +
> +#ifndef _INTEL_GMD_COMMON_REG_H_
> +#define _INTEL_GMD_COMMON_REG_H_
> +
> +#define GEN6_PCODE_MAILBOX			_MMIO(0x138124)
> +#define   GEN6_PCODE_READY			(1 << 31)
> +#define   GEN6_PCODE_MB_PARAM2			REG_GENMASK(23, 16)
> +#define   GEN6_PCODE_MB_PARAM1			REG_GENMASK(15, 8)
> +#define   GEN6_PCODE_MB_COMMAND			REG_GENMASK(7, 0)
> +#define   GEN6_PCODE_ERROR_MASK			0xFF
> +#define     GEN6_PCODE_SUCCESS			0x0
> +#define     GEN6_PCODE_ILLEGAL_CMD		0x1
> +#define     GEN6_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE 0x2
> +#define     GEN6_PCODE_TIMEOUT			0x3
> +#define     GEN6_PCODE_UNIMPLEMENTED_CMD	0xFF
> +#define     GEN7_PCODE_TIMEOUT			0x2
> +#define     GEN7_PCODE_ILLEGAL_DATA		0x3
> +#define     GEN11_PCODE_ILLEGAL_SUBCOMMAND	0x4
> +#define     GEN11_PCODE_LOCKED			0x6
> +#define     GEN11_PCODE_REJECTED		0x11
> +#define     GEN7_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE 0x10
> +#define   GEN6_PCODE_WRITE_RC6VIDS		0x4
> +#define   GEN6_PCODE_READ_RC6VIDS		0x5
> +#define     GEN6_ENCODE_RC6_VID(mv)		(((mv) - 245) / 5)
> +#define     GEN6_DECODE_RC6_VID(vids)		(((vids) * 5) + 245)
> +#define   BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ	0x18
> +#define   GEN9_PCODE_READ_MEM_LATENCY		0x6
> +#define     GEN9_MEM_LATENCY_LEVEL_3_7_MASK	REG_GENMASK(31, 24)
> +#define     GEN9_MEM_LATENCY_LEVEL_2_6_MASK	REG_GENMASK(23, 16)
> +#define     GEN9_MEM_LATENCY_LEVEL_1_5_MASK	REG_GENMASK(15, 8)
> +#define     GEN9_MEM_LATENCY_LEVEL_0_4_MASK	REG_GENMASK(7, 0)
> +#define   SKL_PCODE_LOAD_HDCP_KEYS		0x5
> +#define   SKL_PCODE_CDCLK_CONTROL		0x7
> +#define     SKL_CDCLK_PREPARE_FOR_CHANGE	0x3
> +#define     SKL_CDCLK_READY_FOR_CHANGE		0x1
> +#define   GEN6_PCODE_WRITE_MIN_FREQ_TABLE	0x8
> +#define   GEN6_PCODE_READ_MIN_FREQ_TABLE	0x9
> +#define   GEN6_READ_OC_PARAMS			0xc
> +#define   ICL_PCODE_MEM_SUBSYSYSTEM_INFO	0xd
> +#define     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO	(0x0 << 8)
> +#define     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point)	(((point) << 16)=
 | (0x1 << 8))
> +#define     ADL_PCODE_MEM_SS_READ_PSF_GV_INFO	((0) | (0x2 << 8))
> +#define   DISPLAY_TO_PCODE_CDCLK_MAX		0x28D
> +#define   DISPLAY_TO_PCODE_VOLTAGE_MASK		REG_GENMASK(1, 0)
> +#define	  DISPLAY_TO_PCODE_VOLTAGE_MAX		DISPLAY_TO_PCODE_VOLTAGE_MASK
> +#define   DISPLAY_TO_PCODE_CDCLK_VALID		REG_BIT(27)
> +#define   DISPLAY_TO_PCODE_PIPE_COUNT_VALID	REG_BIT(31)
> +#define   DISPLAY_TO_PCODE_CDCLK_MASK		REG_GENMASK(25, 16)
> +#define   DISPLAY_TO_PCODE_PIPE_COUNT_MASK	REG_GENMASK(30, 28)
> +#define   DISPLAY_TO_PCODE_CDCLK(x)		REG_FIELD_PREP(DISPLAY_TO_PCODE_CDC=
LK_MASK, (x))
> +#define   DISPLAY_TO_PCODE_PIPE_COUNT(x)	REG_FIELD_PREP(DISPLAY_TO_PCODE=
_PIPE_COUNT_MASK, (x))
> +#define   DISPLAY_TO_PCODE_VOLTAGE(x)		REG_FIELD_PREP(DISPLAY_TO_PCODE_V=
OLTAGE_MASK, (x))
> +#define   DISPLAY_TO_PCODE_UPDATE_MASK(cdclk, num_pipes, voltage_level) \
> +		((DISPLAY_TO_PCODE_CDCLK(cdclk)) | \
> +		(DISPLAY_TO_PCODE_PIPE_COUNT(num_pipes)) | \
> +		(DISPLAY_TO_PCODE_VOLTAGE(voltage_level)))
> +#define   ICL_PCODE_SAGV_DE_MEM_SS_CONFIG	0xe
> +#define     ICL_PCODE_REP_QGV_MASK		REG_GENMASK(1, 0)
> +#define     ICL_PCODE_REP_QGV_SAFE		REG_FIELD_PREP(ICL_PCODE_REP_QGV_MAS=
K, 0)
> +#define     ICL_PCODE_REP_QGV_POLL		REG_FIELD_PREP(ICL_PCODE_REP_QGV_MAS=
K, 1)
> +#define     ICL_PCODE_REP_QGV_REJECTED		REG_FIELD_PREP(ICL_PCODE_REP_QGV=
_MASK, 2)
> +#define     ADLS_PCODE_REP_PSF_MASK		REG_GENMASK(3, 2)
> +#define     ADLS_PCODE_REP_PSF_SAFE		REG_FIELD_PREP(ADLS_PCODE_REP_PSF_M=
ASK, 0)
> +#define     ADLS_PCODE_REP_PSF_POLL		REG_FIELD_PREP(ADLS_PCODE_REP_PSF_M=
ASK, 1)
> +#define     ADLS_PCODE_REP_PSF_REJECTED		REG_FIELD_PREP(ADLS_PCODE_REP_P=
SF_MASK, 2)
> +#define     ICL_PCODE_REQ_QGV_PT_MASK		REG_GENMASK(7, 0)
> +#define     ICL_PCODE_REQ_QGV_PT(x)		REG_FIELD_PREP(ICL_PCODE_REQ_QGV_PT=
_MASK, (x))
> +#define     ADLS_PCODE_REQ_PSF_PT_MASK		REG_GENMASK(10, 8)
> +#define     ADLS_PCODE_REQ_PSF_PT(x)		REG_FIELD_PREP(ADLS_PCODE_REQ_PSF_=
PT_MASK, (x))
> +#define   GEN6_PCODE_READ_D_COMP		0x10
> +#define   GEN6_PCODE_WRITE_D_COMP		0x11
> +#define   ICL_PCODE_EXIT_TCCOLD			0x12
> +#define   HSW_PCODE_DE_WRITE_FREQ_REQ		0x17
> +#define   DISPLAY_IPS_CONTROL			0x19
> +#define   TGL_PCODE_TCCOLD			0x26
> +#define     TGL_PCODE_EXIT_TCCOLD_DATA_L_EXIT_FAILED	REG_BIT(0)
> +#define     TGL_PCODE_EXIT_TCCOLD_DATA_L_BLOCK_REQ	0
> +#define     TGL_PCODE_EXIT_TCCOLD_DATA_L_UNBLOCK_REQ	REG_BIT(0)
> +/* See also IPS_CTL */
> +#define     IPS_PCODE_CONTROL			(1 << 30)
> +#define   HSW_PCODE_DYNAMIC_DUTY_CYCLE_CONTROL	0x1A
> +#define   GEN9_PCODE_SAGV_CONTROL		0x21
> +#define     GEN9_SAGV_DISABLE			0x0
> +#define     GEN9_SAGV_IS_DISABLED		0x1
> +#define     GEN9_SAGV_ENABLE			0x3
> +#define   DG1_PCODE_STATUS			0x7E
> +#define     DG1_UNCORE_GET_INIT_STATUS		0x0
> +#define     DG1_UNCORE_INIT_STATUS_COMPLETE	0x1
> +#define   PCODE_POWER_SETUP			0x7C
> +#define     POWER_SETUP_SUBCOMMAND_READ_I1	0x4
> +#define     POWER_SETUP_SUBCOMMAND_WRITE_I1	0x5
> +#define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
> +#define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed point format */
> +#define	    POWER_SETUP_I1_DATA_MASK		REG_GENMASK(15, 0)
> +#define     POWER_SETUP_SUBCOMMAND_G8_ENABLE	0x6
> +#define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
> +#define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/* pvc */
> +/* XEHP_PCODE_FREQUENCY_CONFIG sub-commands (param1) */
> +#define     PCODE_MBOX_FC_SC_READ_FUSED_P0	0x0
> +#define     PCODE_MBOX_FC_SC_READ_FUSED_PN	0x1
> +/* PCODE_MBOX_DOMAIN_* - mailbox domain IDs */
> +/*   XEHP_PCODE_FREQUENCY_CONFIG param2 */
> +#define     PCODE_MBOX_DOMAIN_NONE		0x0
> +#define     PCODE_MBOX_DOMAIN_MEDIAFF		0x3
> +
> +#endif

--=20
Jani Nikula, Intel
