Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16234C4025F
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 14:37:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 802B210EAC5;
	Fri,  7 Nov 2025 13:37:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LjYe0ols";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA53010EAC5
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Nov 2025 13:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762522672; x=1794058672;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WF7eVMaGcOJT9v5/FBZEDBV0jOuyPinLQ/Giq1gvhUA=;
 b=LjYe0ols9PFhGVOQ4tn1CjXI5uMGlRGIqG/luYScrcgeSbZvhoMieZTw
 FinwWvxch6RRm4QThznLjBkhWdVkcobmdc8UHUDGjcUZR25NcSIgcs2gB
 y10/VQzwViA6Vxh8fcfw0EZZ0mNWpOf2Sw7nwscHMzXUG4kz1cgtWJL5b
 TiQ+CiPfCr7FP3zMnEXSWZ2jQmuhB4YJZ8A1OydhbfJ0UwSS0vJBFB1ms
 N/7VgqXpCM/xpVYmwkPWffBLeoZQPspJO7m7hyBHlOSr2Ty8/3nnY37TM
 rjMIRqGNkaId6iLf4d61r49CU+Afx0oZUv3sKPaDaxPSYXSWzDyqPZ4HK w==;
X-CSE-ConnectionGUID: sMU9D3IASNKpxQ/r2ScIHQ==
X-CSE-MsgGUID: VNnGCgypQ5+tfgChCmCrPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11605"; a="64765862"
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="64765862"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 05:37:51 -0800
X-CSE-ConnectionGUID: DI1+zhhsQ5SQl9ONk/brdQ==
X-CSE-MsgGUID: VBolNgM2RS2jcP1+UFx/Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="187986017"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.106])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 05:37:50 -0800
Date: Fri, 7 Nov 2025 15:37:47 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/3] drm/i915/dram: Fix ICL DIMM_S decoding
Message-ID: <aQ32K_njWN_lEZ4-@intel.com>
References: <20251029204215.12292-1-ville.syrjala@linux.intel.com>
 <20251029204215.12292-4-ville.syrjala@linux.intel.com>
 <5nlmnkl3qcv2kmjeew4wsi632dharewi4323iu7jf6scxpjgj6@sq33zos5nnfl>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5nlmnkl3qcv2kmjeew4wsi632dharewi4323iu7jf6scxpjgj6@sq33zos5nnfl>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Wed, Nov 05, 2025 at 04:25:49PM -0600, Lucas De Marchi wrote:
> On Wed, Oct 29, 2025 at 10:42:15PM +0200, Ville Syrjälä wrote:
> >From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> >Unfortunately the MAD_DIMM DIMM_S and DIMM_L bits on ICL are
> >not idential, so we are currently decoding DIMM_S incorrectly.
> >
> >Fix the problem by defining the DIMM_S and DIMM_L bits separately.
> >And for consistency do that same for SKL, even though there the
> >bits do match between the two DIMMs. The result is rather
> >repetitive in places, but I didn't feel like obfuscatign things
> >with cpp macros/etc.
> >
> >Broken decoding on Dell XPS 13 7390 2-in-1:
> > CH0 DIMM L size: 32 Gb, width: X16, ranks: 2, 16Gb+ DIMMs: no
> > CH0 DIMM S size: 32 Gb, width: X32, ranks: 3, 16Gb+ DIMMs: no
> > CH0 ranks: 2, 16Gb+ DIMMs: no
> > CH1 DIMM L size: 32 Gb, width: X16, ranks: 2, 16Gb+ DIMMs: no
> > CH1 DIMM S size: 32 Gb, width: X32, ranks: 3, 16Gb+ DIMMs: no
> > CH1 ranks: 2, 16Gb+ DIMMs: no
> > Memory configuration is symmetric? no
> >
> >Fixed decoding on Dell XPS 13 7390 2-in-1:
> > CH0 DIMM L size: 32 Gb, width: X16, ranks: 2, 16Gb+ DIMMs: no
> > CH0 DIMM S size: 32 Gb, width: X16, ranks: 2, 16Gb+ DIMMs: no
> > CH0 ranks: 2, 16Gb+ DIMMs: no
> > CH1 DIMM L size: 32 Gb, width: X16, ranks: 2, 16Gb+ DIMMs: no
> > CH1 DIMM S size: 32 Gb, width: X16, ranks: 2, 16Gb+ DIMMs: no
> > CH1 ranks: 2, 16Gb+ DIMMs: no
> > Memory configuration is symmetric? yes
> >
> >Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >---
> > drivers/gpu/drm/i915/intel_mchbar_regs.h |  53 +++++---
> > drivers/gpu/drm/i915/soc/intel_dram.c    | 166 +++++++++++++++++------
> > 2 files changed, 155 insertions(+), 64 deletions(-)
> >
> >diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/drivers/gpu/drm/i915/intel_mchbar_regs.h
> >index a46a45b9d2e1..614d4017b57b 100644
> >--- a/drivers/gpu/drm/i915/intel_mchbar_regs.h
> >+++ b/drivers/gpu/drm/i915/intel_mchbar_regs.h
> >@@ -160,25 +160,40 @@
> >
> > #define SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x500C)
> > #define SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5010)
> >-#define   SKL_DRAM_S_SHIFT			16
> >-#define   SKL_DRAM_RANK_MASK			REG_GENMASK(10, 10)
> >-#define   SKL_DRAM_RANK_1			REG_FIELD_PREP(SKL_DRAM_RANK_MASK, 0)
> >-#define   SKL_DRAM_RANK_2			REG_FIELD_PREP(SKL_DRAM_RANK_MASK, 1)
> >-#define   SKL_DRAM_WIDTH_MASK			REG_GENMASK(9, 8)
> >-#define   SKL_DRAM_WIDTH_X8			REG_FIELD_PREP(SKL_DRAM_WIDTH_MASK, 0)
> >-#define   SKL_DRAM_WIDTH_X16			REG_FIELD_PREP(SKL_DRAM_WIDTH_MASK, 1)
> >-#define   SKL_DRAM_WIDTH_X32			REG_FIELD_PREP(SKL_DRAM_WIDTH_MASK, 2)
> >-#define   SKL_DRAM_SIZE_MASK			REG_GENMASK(5, 0)
> >-#define   ICL_DRAM_RANK_MASK			REG_GENMASK(10, 9)
> >-#define   ICL_DRAM_RANK_1			REG_FIELD_PREP(ICL_DRAM_RANK_MASK, 0)
> >-#define   ICL_DRAM_RANK_2			REG_FIELD_PREP(ICL_DRAM_RANK_MASK, 1)
> >-#define   ICL_DRAM_RANK_3			REG_FIELD_PREP(ICL_DRAM_RANK_MASK, 2)
> >-#define   ICL_DRAM_RANK_4			REG_FIELD_PREP(ICL_DRAM_RANK_MASK, 3)
> >-#define   ICL_DRAM_WIDTH_MASK			REG_GENMASK(8, 7)
> >-#define   ICL_DRAM_WIDTH_X8			REG_FIELD_PREP(ICL_DRAM_WIDTH_MASK, 0)
> >-#define   ICL_DRAM_WIDTH_X16			REG_FIELD_PREP(ICL_DRAM_WIDTH_MASK, 1)
> >-#define   ICL_DRAM_WIDTH_X32			REG_FIELD_PREP(ICL_DRAM_WIDTH_MASK, 2)
> >-#define   ICL_DRAM_SIZE_MASK			REG_GENMASK(6, 0)
> >+#define   SKL_DIMM_S_RANK_MASK			REG_GENMASK(26, 26)
> >+#define   SKL_DIMM_S_RANK_1			REG_FIELD_PREP(SKL_DIMM_S_RANK_MASK, 0)
> >+#define   SKL_DIMM_S_RANK_2			REG_FIELD_PREP(SKL_DIMM_S_RANK_MASK, 1)
> >+#define   SKL_DIMM_S_WIDTH_MASK			REG_GENMASK(25, 24)
> >+#define   SKL_DIMM_S_WIDTH_X8			REG_FIELD_PREP(SKL_DIMM_S_WIDTH_MASK, 0)
> >+#define   SKL_DIMM_S_WIDTH_X16			REG_FIELD_PREP(SKL_DIMM_S_WIDTH_MASK, 1)
> >+#define   SKL_DIMM_S_WIDTH_X32			REG_FIELD_PREP(SKL_DIMM_S_WIDTH_MASK, 2)
> >+#define   SKL_DIMM_S_SIZE_MASK			REG_GENMASK(21, 16)
> >+#define   SKL_DIMM_L_RANK_MASK			REG_GENMASK(10, 10)
> >+#define   SKL_DIMM_L_RANK_1			REG_FIELD_PREP(SKL_DIMM_L_RANK_MASK, 0)
> >+#define   SKL_DIMM_L_RANK_2			REG_FIELD_PREP(SKL_DIMM_L_RANK_MASK, 1)
> >+#define   SKL_DIMM_L_WIDTH_MASK			REG_GENMASK(9, 8)
> >+#define   SKL_DIMM_L_WIDTH_X8			REG_FIELD_PREP(SKL_DIMM_L_WIDTH_MASK, 0)
> >+#define   SKL_DIMM_L_WIDTH_X16			REG_FIELD_PREP(SKL_DIMM_L_WIDTH_MASK, 1)
> >+#define   SKL_DIMM_L_WIDTH_X32			REG_FIELD_PREP(SKL_DIMM_L_WIDTH_MASK, 2)
> >+#define   SKL_DIMM_L_SIZE_MASK			REG_GENMASK(5, 0)
> >+#define   ICL_DIMM_S_RANK_MASK			REG_GENMASK(27, 26)
> >+#define   ICL_DIMM_S_RANK_1			REG_FIELD_PREP(ICL_DIMM_S_RANK_MASK, 0)
> >+#define   ICL_DIMM_S_RANK_2			REG_FIELD_PREP(ICL_DIMM_S_RANK_MASK, 1)
> >+#define   ICL_DIMM_S_WIDTH_MASK			REG_GENMASK(25, 24)
> >+#define   ICL_DIMM_S_WIDTH_X8			REG_FIELD_PREP(ICL_DIMM_S_WIDTH_MASK, 0)
> >+#define   ICL_DIMM_S_WIDTH_X16			REG_FIELD_PREP(ICL_DIMM_S_WIDTH_MASK, 1)
> >+#define   ICL_DIMM_S_WIDTH_X32			REG_FIELD_PREP(ICL_DIMM_S_WIDTH_MASK, 2)
> >+#define   ICL_DIMM_S_SIZE_MASK			REG_GENMASK(22, 16)
> >+#define   ICL_DIMM_L_RANK_MASK			REG_GENMASK(10, 9)
> >+#define   ICL_DIMM_L_RANK_1			REG_FIELD_PREP(ICL_DIMM_L_RANK_MASK, 0)
> >+#define   ICL_DIMM_L_RANK_2			REG_FIELD_PREP(ICL_DIMM_L_RANK_MASK, 1)
> >+#define   ICL_DIMM_L_RANK_3			REG_FIELD_PREP(ICL_DIMM_L_RANK_MASK, 2)
> >+#define   ICL_DIMM_L_RANK_4			REG_FIELD_PREP(ICL_DIMM_L_RANK_MASK, 3)
> >+#define   ICL_DIMM_L_WIDTH_MASK			REG_GENMASK(8, 7)
> >+#define   ICL_DIMM_L_WIDTH_X8			REG_FIELD_PREP(ICL_DIMM_L_WIDTH_MASK, 0)
> >+#define   ICL_DIMM_L_WIDTH_X16			REG_FIELD_PREP(ICL_DIMM_L_WIDTH_MASK, 1)
> >+#define   ICL_DIMM_L_WIDTH_X32			REG_FIELD_PREP(ICL_DIMM_L_WIDTH_MASK, 2)
> >+#define   ICL_DIMM_L_SIZE_MASK			REG_GENMASK(6, 0)
> 
> so we have:
> 
> ICL_DIMM_L_RANK_MASK			REG_GENMASK(10     , 9)
> ICL_DIMM_L_WIDTH_MASK			REG_GENMASK(8      , 7)
> ICL_DIMM_L_SIZE_MASK			REG_GENMASK(6      , 0)
> 
> vs
> 
> ICL_DIMM_S_RANK_MASK			REG_GENMASK(11 + 16, 10 + 16)
> ICL_DIMM_S_WIDTH_MASK			REG_GENMASK(9  + 16, 8  + 16)
> ICL_DIMM_S_SIZE_MASK			REG_GENMASK(6  + 16, 0  + 16)
> 
> 
> I can't really check the soc spec right now, but this fix seems very
> verbose. Maybe the first patch could fix the bug in the simple way and
> then have these refactors on top?
> 
> u16 lval = val & 0xffff;
> u16 sval = val >> 16;
> 
> /*
>   * Some cursing here for format change - "fix" it up by making it compatible
>   * with the lower bits by doing shr where appropriate
>   */
> sval = (sval & ICL_DIMM_L_SIZE_MASK) |
>         ((sval >> 1) & ICL_DIMM_L_WIDTH_MASK) |
>         ((sval >> 1) & ICL_DIMM_L_RANK_MASK);
> 
> ...
> 
> > static int
> > skl_dram_get_channel_info(struct drm_i915_private *i915,
> > 			  struct dram_channel_info *ch,
> > 			  int channel, u32 val)
> > {
> >-	skl_dram_get_dimm_info(i915, &ch->dimm_l,
> >-			       channel, 'L', val & 0xffff);
> >-	skl_dram_get_dimm_info(i915, &ch->dimm_s,
> >-			       channel, 'S', val >> 16);
> 
> Which would mean basically changing this function to derive sval and
> lval as above (untested). This could easily propagate to through stable.

Meh. We have no know issues that this fixes so wasn't planning on
a stable backport anyway.

-- 
Ville Syrjälä
Intel
