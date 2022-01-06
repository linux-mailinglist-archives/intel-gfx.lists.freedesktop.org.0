Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FFE486D89
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 00:08:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D1B110E1A1;
	Thu,  6 Jan 2022 23:08:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 176EA10E2CF
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jan 2022 23:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641510521; x=1673046521;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yzGCxB8y/4xWh93+FI4x4GNguaY/ZSTwHiYtOvXFsd0=;
 b=DD/qKkeZIhk3MCFFDb6uWeV7LsJf62m6/NSAhxFgB+xOpkeMaTO6IhyC
 4bX9a0JeuFp3GLqvTMnqkkmzlynKQePrKpCJ1ewgCNUAiXw0d2gx9S5i/
 TKzGNcitHwTWIRUoiKBxgCG2LVV6Vqr1vGcc0coPGsPgg+lFIt2+1jDTz
 QGDisxmZGtWksJHHUn50zJda3/qUoSB0I199hWx981Srxj7hFdSZVd47S
 b7JwU6ELBKC34cToeUzryqivlX5vr2jDCcHlY1MVTorVpLrS1IpIs9zeI
 7bn7mxiHvF9NkkAizJ2lJIM0K6QMcngZUZelujJYyUvQlprGnSBPVC/7L w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="230099733"
X-IronPort-AV: E=Sophos;i="5.88,268,1635231600"; d="scan'208";a="230099733"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 15:08:40 -0800
X-IronPort-AV: E=Sophos;i="5.88,268,1635231600"; d="scan'208";a="591536115"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 15:08:39 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Jan 2022 15:08:23 -0800
Message-Id: <20220106230823.2791203-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220106230823.2791203-1-matthew.d.roper@intel.com>
References: <20220106230823.2791203-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915: Drop unused register definitions
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A large percentage (nearly 25%) of the register and bit definitions in
i915_reg.h are not used by the i915 driver and are effectively dead
code.  There are a few origins for these unused definitions:

 * Registers only accessed by workarounds that were either retracted by
   the hardware team or that only applied to pre-production steppings
   and have been removed from the driver.

 * General refactoring of the codebase (e.g., separate definitions of
   REG1, REG2, REG3 being replaced by a parameterized REG(n) macro
   without the original definitions being dropped.

 * In the early days of i915, all registers in an area of the hardware,
   or all bits in a given register got documented in i915_reg.h "just in
   case" they needed to be used in the future.  With the exploding
   complexity of the hardware and huge number of platforms we now
   support, mass-documenting everything as #define's doesn't scale.
   We'd also generally prefer *not* to have definitions already in the
   driver before they're used since we'd rather review them explicitly
   alongside new code that is starting to use them.

Let's start cleaning up the register definition file by removing a bunch
of dead code.  I used a cscope database to track down most of these via
searches like:

   for x in $(grep '^#define' drivers/gpu/drm/i915/i915_reg.h | awk '{ print $2 }' | cut -d'(' -f1); do count=$(cscope -d -R -L0 $x | wc -l); if (($count <= 1)); then echo $x; fi; done

although I had to watch out for cases where register/bit names are never
referenced directly, but are constructed elsewhere by macro
concatenation (e.g., GEN3_IRQ_INIT()).

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 3107 +------------------------------
 1 file changed, 9 insertions(+), 3098 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index e20e832162b4..9e91984385dc 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -298,10 +298,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   GC_CLOCK_166_250		(7 << 0)
 
 #define I915_GDRST 0xc0 /* PCI config register */
-#define   GRDOM_FULL		(0 << 2)
 #define   GRDOM_RENDER		(1 << 2)
 #define   GRDOM_MEDIA		(3 << 2)
-#define   GRDOM_MASK		(3 << 2)
 #define   GRDOM_RESET_STATUS	(1 << 1)
 #define   GRDOM_RESET_ENABLE	(1 << 0)
 
@@ -311,7 +309,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 
 #define GCDGMBUS 0xcc
 
-#define GCFGC2	0xda
 #define GCFGC	0xf0 /* 915+ only */
 #define   GC_LOW_FREQUENCY_ENABLE	(1 << 7)
 #define   GC_DISPLAY_CLOCK_190_200_MHZ	(0 << 4)
@@ -323,27 +320,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   GC_DISPLAY_CLOCK_133_MHZ_PNV	(6 << 4)
 #define   GC_DISPLAY_CLOCK_167_MHZ_PNV	(7 << 4)
 #define   GC_DISPLAY_CLOCK_MASK		(7 << 4)
-#define   GM45_GC_RENDER_CLOCK_MASK	(0xf << 0)
-#define   GM45_GC_RENDER_CLOCK_266_MHZ	(8 << 0)
-#define   GM45_GC_RENDER_CLOCK_320_MHZ	(9 << 0)
-#define   GM45_GC_RENDER_CLOCK_400_MHZ	(0xb << 0)
-#define   GM45_GC_RENDER_CLOCK_533_MHZ	(0xc << 0)
-#define   I965_GC_RENDER_CLOCK_MASK	(0xf << 0)
-#define   I965_GC_RENDER_CLOCK_267_MHZ	(2 << 0)
-#define   I965_GC_RENDER_CLOCK_333_MHZ	(3 << 0)
-#define   I965_GC_RENDER_CLOCK_444_MHZ	(4 << 0)
-#define   I965_GC_RENDER_CLOCK_533_MHZ	(5 << 0)
-#define   I945_GC_RENDER_CLOCK_MASK	(7 << 0)
-#define   I945_GC_RENDER_CLOCK_166_MHZ	(0 << 0)
-#define   I945_GC_RENDER_CLOCK_200_MHZ	(1 << 0)
-#define   I945_GC_RENDER_CLOCK_250_MHZ	(3 << 0)
-#define   I945_GC_RENDER_CLOCK_400_MHZ	(5 << 0)
-#define   I915_GC_RENDER_CLOCK_MASK	(7 << 0)
-#define   I915_GC_RENDER_CLOCK_166_MHZ	(0 << 0)
-#define   I915_GC_RENDER_CLOCK_200_MHZ	(1 << 0)
-#define   I915_GC_RENDER_CLOCK_333_MHZ	(4 << 0)
-
-#define ASLE	0xe4
+
 #define ASLS	0xfc
 
 #define SWSCI	0xe8
@@ -354,19 +331,13 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 
 
 #define ILK_GDSR _MMIO(MCHBAR_MIRROR_BASE + 0x2ca4)
-#define  ILK_GRDOM_FULL		(0 << 1)
 #define  ILK_GRDOM_RENDER	(1 << 1)
 #define  ILK_GRDOM_MEDIA	(3 << 1)
-#define  ILK_GRDOM_MASK		(3 << 1)
 #define  ILK_GRDOM_RESET_ENABLE (1 << 0)
 
 #define GEN6_MBCUNIT_SNPCR	_MMIO(0x900c) /* for LLC config */
-#define   GEN6_MBC_SNPCR_SHIFT	21
 #define   GEN6_MBC_SNPCR_MASK	(3 << 21)
-#define   GEN6_MBC_SNPCR_MAX	(0 << 21)
 #define   GEN6_MBC_SNPCR_MED	(1 << 21)
-#define   GEN6_MBC_SNPCR_LOW	(2 << 21)
-#define   GEN6_MBC_SNPCR_MIN	(3 << 21) /* only 1/16th of the cache is shared */
 
 #define VLV_G3DCTL		_MMIO(0x9024)
 #define VLV_GSCKGCTL		_MMIO(0x9028)
@@ -376,10 +347,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 
 #define GEN6_MBCTL		_MMIO(0x0907c)
 #define   GEN6_MBCTL_ENABLE_BOOT_FETCH	(1 << 4)
-#define   GEN6_MBCTL_CTX_FETCH_NEEDED	(1 << 3)
-#define   GEN6_MBCTL_BME_UPDATE_ENABLE	(1 << 2)
-#define   GEN6_MBCTL_MAE_UPDATE_ENABLE	(1 << 1)
-#define   GEN6_MBCTL_BOOT_FETCH_MECH	(1 << 0)
 
 #define GEN6_GDRST	_MMIO(0x941c)
 #define  GEN6_GRDOM_FULL		(1 << 0)
@@ -407,9 +374,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define  GEN11_GRDOM_VECS3		(1 << 15)
 #define  GEN11_GRDOM_VECS4		(1 << 16)
 #define  GEN11_GRDOM_SFC0		(1 << 17)
-#define  GEN11_GRDOM_SFC1		(1 << 18)
-#define  GEN11_GRDOM_SFC2		(1 << 19)
-#define  GEN11_GRDOM_SFC3		(1 << 20)
 
 #define  GEN11_VCS_SFC_RESET_BIT(instance)	(GEN11_GRDOM_SFC0 << ((instance) >> 1))
 #define  GEN11_VECS_SFC_RESET_BIT(instance)	(GEN11_GRDOM_SFC0 << (instance))
@@ -427,10 +391,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GEN11_VECS_SFC_USAGE(engine)		_MMIO((engine)->mmio_base + 0x2014)
 #define   GEN11_VECS_SFC_USAGE_BIT		(1 << 0)
 
-#define GEN12_HCP_SFC_FORCED_LOCK(engine)	_MMIO((engine)->mmio_base + 0x2910)
-#define   GEN12_HCP_SFC_FORCED_LOCK_BIT		REG_BIT(0)
 #define GEN12_HCP_SFC_LOCK_STATUS(engine)	_MMIO((engine)->mmio_base + 0x2914)
-#define   GEN12_HCP_SFC_LOCK_ACK_BIT		REG_BIT(1)
 #define   GEN12_HCP_SFC_USAGE_BIT			REG_BIT(0)
 
 #define GEN12_SFC_DONE(n)		_MMIO(0x1cc000 + (n) * 0x1000)
@@ -460,26 +421,13 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   GEN8_RPCS_EU_MIN_MASK		(0xf << GEN8_RPCS_EU_MIN_SHIFT)
 
 #define WAIT_FOR_RC6_EXIT		_MMIO(0x20CC)
-/* HSW only */
-#define   HSW_SELECTIVE_READ_ADDRESSING_SHIFT		2
-#define   HSW_SELECTIVE_READ_ADDRESSING_MASK		(0x3 << HSW_SLECTIVE_READ_ADDRESSING_SHIFT)
-#define   HSW_SELECTIVE_WRITE_ADDRESS_SHIFT		4
-#define   HSW_SELECTIVE_WRITE_ADDRESS_MASK		(0x7 << HSW_SELECTIVE_WRITE_ADDRESS_SHIFT)
 /* HSW+ */
 #define   HSW_WAIT_FOR_RC6_EXIT_ENABLE			(1 << 0)
-#define   HSW_RCS_CONTEXT_ENABLE			(1 << 7)
-#define   HSW_RCS_INHIBIT				(1 << 8)
 /* Gen8 */
 #define   GEN8_SELECTIVE_WRITE_ADDRESS_SHIFT		4
 #define   GEN8_SELECTIVE_WRITE_ADDRESS_MASK		(0x3 << GEN8_SELECTIVE_WRITE_ADDRESS_SHIFT)
 #define   GEN8_SELECTIVE_WRITE_ADDRESS_SHIFT		4
 #define   GEN8_SELECTIVE_WRITE_ADDRESS_MASK		(0x3 << GEN8_SELECTIVE_WRITE_ADDRESS_SHIFT)
-#define   GEN8_SELECTIVE_WRITE_ADDRESSING_ENABLE	(1 << 6)
-#define   GEN8_SELECTIVE_READ_SUBSLICE_SELECT_SHIFT	9
-#define   GEN8_SELECTIVE_READ_SUBSLICE_SELECT_MASK	(0x3 << GEN8_SELECTIVE_READ_SUBSLICE_SELECT_SHIFT)
-#define   GEN8_SELECTIVE_READ_SLICE_SELECT_SHIFT	11
-#define   GEN8_SELECTIVE_READ_SLICE_SELECT_MASK		(0x3 << GEN8_SELECTIVE_READ_SLICE_SELECT_SHIFT)
-#define   GEN8_SELECTIVE_READ_ADDRESSING_ENABLE         (1 << 13)
 
 #define GAM_ECOCHK			_MMIO(0x4090)
 #define   BDW_DISABLE_HDC_INVALIDATION	(1 << 25)
@@ -487,11 +435,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   ECOCHK_DIS_TLB		(1 << 8)
 #define   HSW_ECOCHK_ARB_PRIO_SOL	(1 << 6)
 #define   ECOCHK_PPGTT_CACHE64B		(0x3 << 3)
-#define   ECOCHK_PPGTT_CACHE4B		(0x0 << 3)
 #define   ECOCHK_PPGTT_GFDT_IVB		(0x1 << 4)
 #define   ECOCHK_PPGTT_LLC_IVB		(0x1 << 3)
-#define   ECOCHK_PPGTT_UC_HSW		(0x1 << 3)
-#define   ECOCHK_PPGTT_WT_HSW		(0x2 << 3)
 #define   ECOCHK_PPGTT_WB_HSW		(0x3 << 3)
 
 #define GEN8_RC6_CTX_INFO		_MMIO(0x8504)
@@ -499,7 +444,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GAC_ECO_BITS			_MMIO(0x14090)
 #define   ECOBITS_SNB_BIT		(1 << 13)
 #define   ECOBITS_PPGTT_CACHE64B	(3 << 8)
-#define   ECOBITS_PPGTT_CACHE4B		(0 << 8)
 
 #define GEN12_GAMCNTRL_CTRL			_MMIO(0xcf54)
 #define   INVALIDATION_BROADCAST_MODE_DIS	REG_BIT(12)
@@ -538,55 +482,18 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GEN6_STOLEN_RESERVED_ENABLE	(1 << 0)
 #define GEN11_STOLEN_RESERVED_ADDR_MASK	(0xFFFFFFFFFFFULL << 20)
 
-/* VGA stuff */
-
-#define VGA_ST01_MDA 0x3ba
-#define VGA_ST01_CGA 0x3da
-
 #define _VGA_MSR_WRITE _MMIO(0x3c2)
 #define VGA_MSR_WRITE 0x3c2
 #define VGA_MSR_READ 0x3cc
-#define   VGA_MSR_MEM_EN (1 << 1)
-#define   VGA_MSR_CGA_MODE (1 << 0)
 
 #define VGA_SR_INDEX 0x3c4
 #define SR01			1
 #define VGA_SR_DATA 0x3c5
 
-#define VGA_AR_INDEX 0x3c0
-#define   VGA_AR_VID_EN (1 << 5)
-#define VGA_AR_DATA_WRITE 0x3c0
-#define VGA_AR_DATA_READ 0x3c1
-
-#define VGA_GR_INDEX 0x3ce
-#define VGA_GR_DATA 0x3cf
-/* GR05 */
-#define   VGA_GR_MEM_READ_MODE_SHIFT 3
-#define     VGA_GR_MEM_READ_MODE_PLANE 1
-/* GR06 */
-#define   VGA_GR_MEM_MODE_MASK 0xc
-#define   VGA_GR_MEM_MODE_SHIFT 2
-#define   VGA_GR_MEM_A0000_AFFFF 0
-#define   VGA_GR_MEM_A0000_BFFFF 1
-#define   VGA_GR_MEM_B0000_B7FFF 2
-#define   VGA_GR_MEM_B0000_BFFFF 3
-
-#define VGA_DACMASK 0x3c6
-#define VGA_DACRX 0x3c7
-#define VGA_DACWX 0x3c8
-#define VGA_DACDATA 0x3c9
-
-#define VGA_CR_INDEX_MDA 0x3b4
-#define VGA_CR_DATA_MDA 0x3b5
-#define VGA_CR_INDEX_CGA 0x3d4
-#define VGA_CR_DATA_CGA 0x3d5
-
 #define MI_PREDICATE_SRC0	_MMIO(0x2400)
 #define MI_PREDICATE_SRC0_UDW	_MMIO(0x2400 + 4)
 #define MI_PREDICATE_SRC1	_MMIO(0x2408)
 #define MI_PREDICATE_SRC1_UDW	_MMIO(0x2408 + 4)
-#define MI_PREDICATE_DATA       _MMIO(0x2410)
-#define MI_PREDICATE_RESULT     _MMIO(0x2418)
 #define MI_PREDICATE_RESULT_1   _MMIO(0x241c)
 #define MI_PREDICATE_RESULT_2	_MMIO(0x2214)
 #define  LOWER_SLICE_ENABLED	(1 << 0)
@@ -652,49 +559,26 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 
 #define GEN7_OACONTROL _MMIO(0x2360)
 #define  GEN7_OACONTROL_CTX_MASK	    0xFFFFF000
-#define  GEN7_OACONTROL_TIMER_PERIOD_MASK   0x3F
 #define  GEN7_OACONTROL_TIMER_PERIOD_SHIFT  6
 #define  GEN7_OACONTROL_TIMER_ENABLE	    (1 << 5)
-#define  GEN7_OACONTROL_FORMAT_A13	    (0 << 2)
-#define  GEN7_OACONTROL_FORMAT_A29	    (1 << 2)
-#define  GEN7_OACONTROL_FORMAT_A13_B8_C8    (2 << 2)
-#define  GEN7_OACONTROL_FORMAT_A29_B8_C8    (3 << 2)
-#define  GEN7_OACONTROL_FORMAT_B4_C8	    (4 << 2)
-#define  GEN7_OACONTROL_FORMAT_A45_B8_C8    (5 << 2)
-#define  GEN7_OACONTROL_FORMAT_B4_C8_A16    (6 << 2)
-#define  GEN7_OACONTROL_FORMAT_C4_B8	    (7 << 2)
 #define  GEN7_OACONTROL_FORMAT_SHIFT	    2
 #define  GEN7_OACONTROL_PER_CTX_ENABLE	    (1 << 1)
 #define  GEN7_OACONTROL_ENABLE		    (1 << 0)
 
-#define GEN8_OACTXID _MMIO(0x2364)
-
 #define GEN8_OA_DEBUG _MMIO(0x2B04)
 #define  GEN9_OA_DEBUG_DISABLE_CLK_RATIO_REPORTS    (1 << 5)
 #define  GEN9_OA_DEBUG_INCLUDE_CLK_RATIO	    (1 << 6)
-#define  GEN9_OA_DEBUG_DISABLE_GO_1_0_REPORTS	    (1 << 2)
-#define  GEN9_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS   (1 << 1)
 
 #define GEN8_OACONTROL _MMIO(0x2B00)
-#define  GEN8_OA_REPORT_FORMAT_A12	    (0 << 2)
-#define  GEN8_OA_REPORT_FORMAT_A12_B8_C8    (2 << 2)
-#define  GEN8_OA_REPORT_FORMAT_A36_B8_C8    (5 << 2)
-#define  GEN8_OA_REPORT_FORMAT_C4_B8	    (7 << 2)
 #define  GEN8_OA_REPORT_FORMAT_SHIFT	    2
-#define  GEN8_OA_SPECIFIC_CONTEXT_ENABLE    (1 << 1)
 #define  GEN8_OA_COUNTER_ENABLE             (1 << 0)
 
 #define GEN8_OACTXCONTROL _MMIO(0x2360)
-#define  GEN8_OA_TIMER_PERIOD_MASK	    0x3F
 #define  GEN8_OA_TIMER_PERIOD_SHIFT	    2
 #define  GEN8_OA_TIMER_ENABLE		    (1 << 1)
 #define  GEN8_OA_COUNTER_RESUME		    (1 << 0)
 
 #define GEN7_OABUFFER _MMIO(0x23B0) /* R/W */
-#define  GEN7_OABUFFER_OVERRUN_DISABLE	    (1 << 3)
-#define  GEN7_OABUFFER_EDGE_TRIGGER	    (1 << 2)
-#define  GEN7_OABUFFER_STOP_RESUME_ENABLE   (1 << 1)
-#define  GEN7_OABUFFER_RESUME		    (1 << 0)
 
 #define GEN8_OABUFFER_UDW _MMIO(0x23b4)
 #define GEN8_OABUFFER _MMIO(0x2b14)
@@ -702,7 +586,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 
 #define GEN7_OASTATUS1 _MMIO(0x2364)
 #define  GEN7_OASTATUS1_TAIL_MASK	    0xffffffc0
-#define  GEN7_OASTATUS1_COUNTER_OVERFLOW    (1 << 2)
 #define  GEN7_OASTATUS1_OABUFFER_OVERFLOW   (1 << 1)
 #define  GEN7_OASTATUS1_REPORT_LOST	    (1 << 0)
 
@@ -713,23 +596,14 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GEN8_OASTATUS _MMIO(0x2b08)
 #define  GEN8_OASTATUS_TAIL_POINTER_WRAP    (1 << 17)
 #define  GEN8_OASTATUS_HEAD_POINTER_WRAP    (1 << 16)
-#define  GEN8_OASTATUS_OVERRUN_STATUS	    (1 << 3)
 #define  GEN8_OASTATUS_COUNTER_OVERFLOW     (1 << 2)
 #define  GEN8_OASTATUS_OABUFFER_OVERFLOW    (1 << 1)
 #define  GEN8_OASTATUS_REPORT_LOST	    (1 << 0)
 
 #define GEN8_OAHEADPTR _MMIO(0x2B0C)
-#define GEN8_OAHEADPTR_MASK    0xffffffc0
 #define GEN8_OATAILPTR _MMIO(0x2B10)
 #define GEN8_OATAILPTR_MASK    0xffffffc0
 
-#define OABUFFER_SIZE_128K  (0 << 3)
-#define OABUFFER_SIZE_256K  (1 << 3)
-#define OABUFFER_SIZE_512K  (2 << 3)
-#define OABUFFER_SIZE_1M    (3 << 3)
-#define OABUFFER_SIZE_2M    (4 << 3)
-#define OABUFFER_SIZE_4M    (5 << 3)
-#define OABUFFER_SIZE_8M    (6 << 3)
 #define OABUFFER_SIZE_16M   (7 << 3)
 
 #define GEN12_OA_TLB_INV_CR _MMIO(0xceec)
@@ -742,9 +616,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define  GEN12_OAR_OACONTROL_COUNTER_FORMAT_SHIFT 1
 #define  GEN12_OAR_OACONTROL_COUNTER_ENABLE       (1 << 0)
 
-#define GEN12_OACTXCONTROL _MMIO(0x2360)
-#define GEN12_OAR_OASTATUS _MMIO(0x2968)
-
 /* Gen12 OAG unit */
 #define GEN12_OAG_OAHEADPTR _MMIO(0xdb00)
 #define  GEN12_OAG_OAHEADPTR_MASK 0xffffffc0
@@ -752,9 +623,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define  GEN12_OAG_OATAILPTR_MASK 0xffffffc0
 
 #define GEN12_OAG_OABUFFER  _MMIO(0xdb08)
-#define  GEN12_OAG_OABUFFER_BUFFER_SIZE_MASK  (0x7)
-#define  GEN12_OAG_OABUFFER_BUFFER_SIZE_SHIFT (3)
-#define  GEN12_OAG_OABUFFER_MEMORY_SELECT     (1 << 0) /* 0: PPGTT, 1: GGTT */
 
 #define GEN12_OAG_OAGLBCTXCTRL _MMIO(0x2b28)
 #define  GEN12_OAG_OAGLBCTXCTRL_TIMER_PERIOD_SHIFT 2
@@ -768,13 +636,9 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GEN12_OAG_OA_DEBUG _MMIO(0xdaf8)
 #define  GEN12_OAG_OA_DEBUG_INCLUDE_CLK_RATIO          (1 << 6)
 #define  GEN12_OAG_OA_DEBUG_DISABLE_CLK_RATIO_REPORTS  (1 << 5)
-#define  GEN12_OAG_OA_DEBUG_DISABLE_GO_1_0_REPORTS     (1 << 2)
 #define  GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS (1 << 1)
 
 #define GEN12_OAG_OASTATUS _MMIO(0xdafc)
-#define  GEN12_OAG_OASTATUS_COUNTER_OVERFLOW (1 << 2)
-#define  GEN12_OAG_OASTATUS_BUFFER_OVERFLOW  (1 << 1)
-#define  GEN12_OAG_OASTATUS_REPORT_LOST      (1 << 0)
 
 /*
  * Flexible, Aggregate EU Counter Registers.
@@ -796,331 +660,34 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
  */
 
 #define OASTARTTRIG1 _MMIO(0x2710)
-#define OASTARTTRIG1_THRESHOLD_COUNT_MASK_MBZ 0xffff0000
-#define OASTARTTRIG1_THRESHOLD_MASK	      0xffff
-
-#define OASTARTTRIG2 _MMIO(0x2714)
-#define OASTARTTRIG2_INVERT_A_0 (1 << 0)
-#define OASTARTTRIG2_INVERT_A_1 (1 << 1)
-#define OASTARTTRIG2_INVERT_A_2 (1 << 2)
-#define OASTARTTRIG2_INVERT_A_3 (1 << 3)
-#define OASTARTTRIG2_INVERT_A_4 (1 << 4)
-#define OASTARTTRIG2_INVERT_A_5 (1 << 5)
-#define OASTARTTRIG2_INVERT_A_6 (1 << 6)
-#define OASTARTTRIG2_INVERT_A_7 (1 << 7)
-#define OASTARTTRIG2_INVERT_A_8 (1 << 8)
-#define OASTARTTRIG2_INVERT_A_9 (1 << 9)
-#define OASTARTTRIG2_INVERT_A_10 (1 << 10)
-#define OASTARTTRIG2_INVERT_A_11 (1 << 11)
-#define OASTARTTRIG2_INVERT_A_12 (1 << 12)
-#define OASTARTTRIG2_INVERT_A_13 (1 << 13)
-#define OASTARTTRIG2_INVERT_A_14 (1 << 14)
-#define OASTARTTRIG2_INVERT_A_15 (1 << 15)
-#define OASTARTTRIG2_INVERT_B_0 (1 << 16)
-#define OASTARTTRIG2_INVERT_B_1 (1 << 17)
-#define OASTARTTRIG2_INVERT_B_2 (1 << 18)
-#define OASTARTTRIG2_INVERT_B_3 (1 << 19)
-#define OASTARTTRIG2_INVERT_C_0 (1 << 20)
-#define OASTARTTRIG2_INVERT_C_1 (1 << 21)
-#define OASTARTTRIG2_INVERT_D_0 (1 << 22)
-#define OASTARTTRIG2_THRESHOLD_ENABLE	    (1 << 23)
-#define OASTARTTRIG2_START_TRIG_FLAG_MBZ    (1 << 24)
-#define OASTARTTRIG2_EVENT_SELECT_0  (1 << 28)
-#define OASTARTTRIG2_EVENT_SELECT_1  (1 << 29)
-#define OASTARTTRIG2_EVENT_SELECT_2  (1 << 30)
-#define OASTARTTRIG2_EVENT_SELECT_3  (1 << 31)
-
-#define OASTARTTRIG3 _MMIO(0x2718)
-#define OASTARTTRIG3_NOA_SELECT_MASK	   0xf
-#define OASTARTTRIG3_NOA_SELECT_8_SHIFT    0
-#define OASTARTTRIG3_NOA_SELECT_9_SHIFT    4
-#define OASTARTTRIG3_NOA_SELECT_10_SHIFT   8
-#define OASTARTTRIG3_NOA_SELECT_11_SHIFT   12
-#define OASTARTTRIG3_NOA_SELECT_12_SHIFT   16
-#define OASTARTTRIG3_NOA_SELECT_13_SHIFT   20
-#define OASTARTTRIG3_NOA_SELECT_14_SHIFT   24
-#define OASTARTTRIG3_NOA_SELECT_15_SHIFT   28
-
-#define OASTARTTRIG4 _MMIO(0x271c)
-#define OASTARTTRIG4_NOA_SELECT_MASK	    0xf
-#define OASTARTTRIG4_NOA_SELECT_0_SHIFT    0
-#define OASTARTTRIG4_NOA_SELECT_1_SHIFT    4
-#define OASTARTTRIG4_NOA_SELECT_2_SHIFT    8
-#define OASTARTTRIG4_NOA_SELECT_3_SHIFT    12
-#define OASTARTTRIG4_NOA_SELECT_4_SHIFT    16
-#define OASTARTTRIG4_NOA_SELECT_5_SHIFT    20
-#define OASTARTTRIG4_NOA_SELECT_6_SHIFT    24
-#define OASTARTTRIG4_NOA_SELECT_7_SHIFT    28
-
-#define OASTARTTRIG5 _MMIO(0x2720)
-#define OASTARTTRIG5_THRESHOLD_COUNT_MASK_MBZ 0xffff0000
-#define OASTARTTRIG5_THRESHOLD_MASK	      0xffff
-
-#define OASTARTTRIG6 _MMIO(0x2724)
-#define OASTARTTRIG6_INVERT_A_0 (1 << 0)
-#define OASTARTTRIG6_INVERT_A_1 (1 << 1)
-#define OASTARTTRIG6_INVERT_A_2 (1 << 2)
-#define OASTARTTRIG6_INVERT_A_3 (1 << 3)
-#define OASTARTTRIG6_INVERT_A_4 (1 << 4)
-#define OASTARTTRIG6_INVERT_A_5 (1 << 5)
-#define OASTARTTRIG6_INVERT_A_6 (1 << 6)
-#define OASTARTTRIG6_INVERT_A_7 (1 << 7)
-#define OASTARTTRIG6_INVERT_A_8 (1 << 8)
-#define OASTARTTRIG6_INVERT_A_9 (1 << 9)
-#define OASTARTTRIG6_INVERT_A_10 (1 << 10)
-#define OASTARTTRIG6_INVERT_A_11 (1 << 11)
-#define OASTARTTRIG6_INVERT_A_12 (1 << 12)
-#define OASTARTTRIG6_INVERT_A_13 (1 << 13)
-#define OASTARTTRIG6_INVERT_A_14 (1 << 14)
-#define OASTARTTRIG6_INVERT_A_15 (1 << 15)
-#define OASTARTTRIG6_INVERT_B_0 (1 << 16)
-#define OASTARTTRIG6_INVERT_B_1 (1 << 17)
-#define OASTARTTRIG6_INVERT_B_2 (1 << 18)
-#define OASTARTTRIG6_INVERT_B_3 (1 << 19)
-#define OASTARTTRIG6_INVERT_C_0 (1 << 20)
-#define OASTARTTRIG6_INVERT_C_1 (1 << 21)
-#define OASTARTTRIG6_INVERT_D_0 (1 << 22)
-#define OASTARTTRIG6_THRESHOLD_ENABLE	    (1 << 23)
-#define OASTARTTRIG6_START_TRIG_FLAG_MBZ    (1 << 24)
-#define OASTARTTRIG6_EVENT_SELECT_4  (1 << 28)
-#define OASTARTTRIG6_EVENT_SELECT_5  (1 << 29)
-#define OASTARTTRIG6_EVENT_SELECT_6  (1 << 30)
-#define OASTARTTRIG6_EVENT_SELECT_7  (1 << 31)
-
-#define OASTARTTRIG7 _MMIO(0x2728)
-#define OASTARTTRIG7_NOA_SELECT_MASK	   0xf
-#define OASTARTTRIG7_NOA_SELECT_8_SHIFT    0
-#define OASTARTTRIG7_NOA_SELECT_9_SHIFT    4
-#define OASTARTTRIG7_NOA_SELECT_10_SHIFT   8
-#define OASTARTTRIG7_NOA_SELECT_11_SHIFT   12
-#define OASTARTTRIG7_NOA_SELECT_12_SHIFT   16
-#define OASTARTTRIG7_NOA_SELECT_13_SHIFT   20
-#define OASTARTTRIG7_NOA_SELECT_14_SHIFT   24
-#define OASTARTTRIG7_NOA_SELECT_15_SHIFT   28
-
 #define OASTARTTRIG8 _MMIO(0x272c)
-#define OASTARTTRIG8_NOA_SELECT_MASK	   0xf
-#define OASTARTTRIG8_NOA_SELECT_0_SHIFT    0
-#define OASTARTTRIG8_NOA_SELECT_1_SHIFT    4
-#define OASTARTTRIG8_NOA_SELECT_2_SHIFT    8
-#define OASTARTTRIG8_NOA_SELECT_3_SHIFT    12
-#define OASTARTTRIG8_NOA_SELECT_4_SHIFT    16
-#define OASTARTTRIG8_NOA_SELECT_5_SHIFT    20
-#define OASTARTTRIG8_NOA_SELECT_6_SHIFT    24
-#define OASTARTTRIG8_NOA_SELECT_7_SHIFT    28
 
 #define OAREPORTTRIG1 _MMIO(0x2740)
-#define OAREPORTTRIG1_THRESHOLD_MASK 0xffff
-#define OAREPORTTRIG1_EDGE_LEVEL_TRIGGER_SELECT_MASK 0xffff0000 /* 0=level */
-
-#define OAREPORTTRIG2 _MMIO(0x2744)
-#define OAREPORTTRIG2_INVERT_A_0  (1 << 0)
-#define OAREPORTTRIG2_INVERT_A_1  (1 << 1)
-#define OAREPORTTRIG2_INVERT_A_2  (1 << 2)
-#define OAREPORTTRIG2_INVERT_A_3  (1 << 3)
-#define OAREPORTTRIG2_INVERT_A_4  (1 << 4)
-#define OAREPORTTRIG2_INVERT_A_5  (1 << 5)
-#define OAREPORTTRIG2_INVERT_A_6  (1 << 6)
-#define OAREPORTTRIG2_INVERT_A_7  (1 << 7)
-#define OAREPORTTRIG2_INVERT_A_8  (1 << 8)
-#define OAREPORTTRIG2_INVERT_A_9  (1 << 9)
-#define OAREPORTTRIG2_INVERT_A_10 (1 << 10)
-#define OAREPORTTRIG2_INVERT_A_11 (1 << 11)
-#define OAREPORTTRIG2_INVERT_A_12 (1 << 12)
-#define OAREPORTTRIG2_INVERT_A_13 (1 << 13)
-#define OAREPORTTRIG2_INVERT_A_14 (1 << 14)
-#define OAREPORTTRIG2_INVERT_A_15 (1 << 15)
-#define OAREPORTTRIG2_INVERT_B_0  (1 << 16)
-#define OAREPORTTRIG2_INVERT_B_1  (1 << 17)
-#define OAREPORTTRIG2_INVERT_B_2  (1 << 18)
-#define OAREPORTTRIG2_INVERT_B_3  (1 << 19)
-#define OAREPORTTRIG2_INVERT_C_0  (1 << 20)
-#define OAREPORTTRIG2_INVERT_C_1  (1 << 21)
-#define OAREPORTTRIG2_INVERT_D_0  (1 << 22)
-#define OAREPORTTRIG2_THRESHOLD_ENABLE	    (1 << 23)
-#define OAREPORTTRIG2_REPORT_TRIGGER_ENABLE (1 << 31)
-
-#define OAREPORTTRIG3 _MMIO(0x2748)
-#define OAREPORTTRIG3_NOA_SELECT_MASK	    0xf
-#define OAREPORTTRIG3_NOA_SELECT_8_SHIFT    0
-#define OAREPORTTRIG3_NOA_SELECT_9_SHIFT    4
-#define OAREPORTTRIG3_NOA_SELECT_10_SHIFT   8
-#define OAREPORTTRIG3_NOA_SELECT_11_SHIFT   12
-#define OAREPORTTRIG3_NOA_SELECT_12_SHIFT   16
-#define OAREPORTTRIG3_NOA_SELECT_13_SHIFT   20
-#define OAREPORTTRIG3_NOA_SELECT_14_SHIFT   24
-#define OAREPORTTRIG3_NOA_SELECT_15_SHIFT   28
-
-#define OAREPORTTRIG4 _MMIO(0x274c)
-#define OAREPORTTRIG4_NOA_SELECT_MASK	    0xf
-#define OAREPORTTRIG4_NOA_SELECT_0_SHIFT    0
-#define OAREPORTTRIG4_NOA_SELECT_1_SHIFT    4
-#define OAREPORTTRIG4_NOA_SELECT_2_SHIFT    8
-#define OAREPORTTRIG4_NOA_SELECT_3_SHIFT    12
-#define OAREPORTTRIG4_NOA_SELECT_4_SHIFT    16
-#define OAREPORTTRIG4_NOA_SELECT_5_SHIFT    20
-#define OAREPORTTRIG4_NOA_SELECT_6_SHIFT    24
-#define OAREPORTTRIG4_NOA_SELECT_7_SHIFT    28
-
-#define OAREPORTTRIG5 _MMIO(0x2750)
-#define OAREPORTTRIG5_THRESHOLD_MASK 0xffff
-#define OAREPORTTRIG5_EDGE_LEVEL_TRIGGER_SELECT_MASK 0xffff0000 /* 0=level */
-
-#define OAREPORTTRIG6 _MMIO(0x2754)
-#define OAREPORTTRIG6_INVERT_A_0  (1 << 0)
-#define OAREPORTTRIG6_INVERT_A_1  (1 << 1)
-#define OAREPORTTRIG6_INVERT_A_2  (1 << 2)
-#define OAREPORTTRIG6_INVERT_A_3  (1 << 3)
-#define OAREPORTTRIG6_INVERT_A_4  (1 << 4)
-#define OAREPORTTRIG6_INVERT_A_5  (1 << 5)
-#define OAREPORTTRIG6_INVERT_A_6  (1 << 6)
-#define OAREPORTTRIG6_INVERT_A_7  (1 << 7)
-#define OAREPORTTRIG6_INVERT_A_8  (1 << 8)
-#define OAREPORTTRIG6_INVERT_A_9  (1 << 9)
-#define OAREPORTTRIG6_INVERT_A_10 (1 << 10)
-#define OAREPORTTRIG6_INVERT_A_11 (1 << 11)
-#define OAREPORTTRIG6_INVERT_A_12 (1 << 12)
-#define OAREPORTTRIG6_INVERT_A_13 (1 << 13)
-#define OAREPORTTRIG6_INVERT_A_14 (1 << 14)
-#define OAREPORTTRIG6_INVERT_A_15 (1 << 15)
-#define OAREPORTTRIG6_INVERT_B_0  (1 << 16)
-#define OAREPORTTRIG6_INVERT_B_1  (1 << 17)
-#define OAREPORTTRIG6_INVERT_B_2  (1 << 18)
-#define OAREPORTTRIG6_INVERT_B_3  (1 << 19)
-#define OAREPORTTRIG6_INVERT_C_0  (1 << 20)
-#define OAREPORTTRIG6_INVERT_C_1  (1 << 21)
-#define OAREPORTTRIG6_INVERT_D_0  (1 << 22)
-#define OAREPORTTRIG6_THRESHOLD_ENABLE	    (1 << 23)
-#define OAREPORTTRIG6_REPORT_TRIGGER_ENABLE (1 << 31)
-
-#define OAREPORTTRIG7 _MMIO(0x2758)
-#define OAREPORTTRIG7_NOA_SELECT_MASK	    0xf
-#define OAREPORTTRIG7_NOA_SELECT_8_SHIFT    0
-#define OAREPORTTRIG7_NOA_SELECT_9_SHIFT    4
-#define OAREPORTTRIG7_NOA_SELECT_10_SHIFT   8
-#define OAREPORTTRIG7_NOA_SELECT_11_SHIFT   12
-#define OAREPORTTRIG7_NOA_SELECT_12_SHIFT   16
-#define OAREPORTTRIG7_NOA_SELECT_13_SHIFT   20
-#define OAREPORTTRIG7_NOA_SELECT_14_SHIFT   24
-#define OAREPORTTRIG7_NOA_SELECT_15_SHIFT   28
-
 #define OAREPORTTRIG8 _MMIO(0x275c)
-#define OAREPORTTRIG8_NOA_SELECT_MASK	    0xf
-#define OAREPORTTRIG8_NOA_SELECT_0_SHIFT    0
-#define OAREPORTTRIG8_NOA_SELECT_1_SHIFT    4
-#define OAREPORTTRIG8_NOA_SELECT_2_SHIFT    8
-#define OAREPORTTRIG8_NOA_SELECT_3_SHIFT    12
-#define OAREPORTTRIG8_NOA_SELECT_4_SHIFT    16
-#define OAREPORTTRIG8_NOA_SELECT_5_SHIFT    20
-#define OAREPORTTRIG8_NOA_SELECT_6_SHIFT    24
-#define OAREPORTTRIG8_NOA_SELECT_7_SHIFT    28
 
 /* Same layout as OASTARTTRIGX */
 #define GEN12_OAG_OASTARTTRIG1 _MMIO(0xd900)
-#define GEN12_OAG_OASTARTTRIG2 _MMIO(0xd904)
-#define GEN12_OAG_OASTARTTRIG3 _MMIO(0xd908)
-#define GEN12_OAG_OASTARTTRIG4 _MMIO(0xd90c)
-#define GEN12_OAG_OASTARTTRIG5 _MMIO(0xd910)
-#define GEN12_OAG_OASTARTTRIG6 _MMIO(0xd914)
-#define GEN12_OAG_OASTARTTRIG7 _MMIO(0xd918)
 #define GEN12_OAG_OASTARTTRIG8 _MMIO(0xd91c)
 
 /* Same layout as OAREPORTTRIGX */
 #define GEN12_OAG_OAREPORTTRIG1 _MMIO(0xd920)
-#define GEN12_OAG_OAREPORTTRIG2 _MMIO(0xd924)
-#define GEN12_OAG_OAREPORTTRIG3 _MMIO(0xd928)
-#define GEN12_OAG_OAREPORTTRIG4 _MMIO(0xd92c)
-#define GEN12_OAG_OAREPORTTRIG5 _MMIO(0xd930)
-#define GEN12_OAG_OAREPORTTRIG6 _MMIO(0xd934)
-#define GEN12_OAG_OAREPORTTRIG7 _MMIO(0xd938)
 #define GEN12_OAG_OAREPORTTRIG8 _MMIO(0xd93c)
 
-/* CECX_0 */
-#define OACEC_COMPARE_LESS_OR_EQUAL	6
-#define OACEC_COMPARE_NOT_EQUAL		5
-#define OACEC_COMPARE_LESS_THAN		4
-#define OACEC_COMPARE_GREATER_OR_EQUAL	3
-#define OACEC_COMPARE_EQUAL		2
-#define OACEC_COMPARE_GREATER_THAN	1
-#define OACEC_COMPARE_ANY_EQUAL		0
-
-#define OACEC_COMPARE_VALUE_MASK    0xffff
-#define OACEC_COMPARE_VALUE_SHIFT   3
-
-#define OACEC_SELECT_NOA	(0 << 19)
-#define OACEC_SELECT_PREV	(1 << 19)
-#define OACEC_SELECT_BOOLEAN	(2 << 19)
-
-/* 11-bit array 0: pass-through, 1: negated */
-#define GEN12_OASCEC_NEGATE_MASK  0x7ff
-#define GEN12_OASCEC_NEGATE_SHIFT 21
-
-/* CECX_1 */
-#define OACEC_MASK_MASK		    0xffff
-#define OACEC_CONSIDERATIONS_MASK   0xffff
-#define OACEC_CONSIDERATIONS_SHIFT  16
-
 #define OACEC0_0 _MMIO(0x2770)
-#define OACEC0_1 _MMIO(0x2774)
-#define OACEC1_0 _MMIO(0x2778)
-#define OACEC1_1 _MMIO(0x277c)
-#define OACEC2_0 _MMIO(0x2780)
-#define OACEC2_1 _MMIO(0x2784)
-#define OACEC3_0 _MMIO(0x2788)
-#define OACEC3_1 _MMIO(0x278c)
-#define OACEC4_0 _MMIO(0x2790)
-#define OACEC4_1 _MMIO(0x2794)
-#define OACEC5_0 _MMIO(0x2798)
-#define OACEC5_1 _MMIO(0x279c)
-#define OACEC6_0 _MMIO(0x27a0)
-#define OACEC6_1 _MMIO(0x27a4)
-#define OACEC7_0 _MMIO(0x27a8)
 #define OACEC7_1 _MMIO(0x27ac)
 
 /* Same layout as CECX_Y */
 #define GEN12_OAG_CEC0_0 _MMIO(0xd940)
-#define GEN12_OAG_CEC0_1 _MMIO(0xd944)
-#define GEN12_OAG_CEC1_0 _MMIO(0xd948)
-#define GEN12_OAG_CEC1_1 _MMIO(0xd94c)
-#define GEN12_OAG_CEC2_0 _MMIO(0xd950)
-#define GEN12_OAG_CEC2_1 _MMIO(0xd954)
-#define GEN12_OAG_CEC3_0 _MMIO(0xd958)
-#define GEN12_OAG_CEC3_1 _MMIO(0xd95c)
-#define GEN12_OAG_CEC4_0 _MMIO(0xd960)
-#define GEN12_OAG_CEC4_1 _MMIO(0xd964)
-#define GEN12_OAG_CEC5_0 _MMIO(0xd968)
-#define GEN12_OAG_CEC5_1 _MMIO(0xd96c)
-#define GEN12_OAG_CEC6_0 _MMIO(0xd970)
-#define GEN12_OAG_CEC6_1 _MMIO(0xd974)
-#define GEN12_OAG_CEC7_0 _MMIO(0xd978)
 #define GEN12_OAG_CEC7_1 _MMIO(0xd97c)
 
 /* Same layout as CECX_Y + negate 11-bit array */
 #define GEN12_OAG_SCEC0_0 _MMIO(0xdc00)
-#define GEN12_OAG_SCEC0_1 _MMIO(0xdc04)
-#define GEN12_OAG_SCEC1_0 _MMIO(0xdc08)
-#define GEN12_OAG_SCEC1_1 _MMIO(0xdc0c)
-#define GEN12_OAG_SCEC2_0 _MMIO(0xdc10)
-#define GEN12_OAG_SCEC2_1 _MMIO(0xdc14)
-#define GEN12_OAG_SCEC3_0 _MMIO(0xdc18)
-#define GEN12_OAG_SCEC3_1 _MMIO(0xdc1c)
-#define GEN12_OAG_SCEC4_0 _MMIO(0xdc20)
-#define GEN12_OAG_SCEC4_1 _MMIO(0xdc24)
-#define GEN12_OAG_SCEC5_0 _MMIO(0xdc28)
-#define GEN12_OAG_SCEC5_1 _MMIO(0xdc2c)
-#define GEN12_OAG_SCEC6_0 _MMIO(0xdc30)
-#define GEN12_OAG_SCEC6_1 _MMIO(0xdc34)
-#define GEN12_OAG_SCEC7_0 _MMIO(0xdc38)
 #define GEN12_OAG_SCEC7_1 _MMIO(0xdc3c)
 
 /* OA perf counters */
 #define OA_PERFCNT1_LO      _MMIO(0x91B8)
-#define OA_PERFCNT1_HI      _MMIO(0x91BC)
-#define OA_PERFCNT2_LO      _MMIO(0x91C0)
 #define OA_PERFCNT2_HI      _MMIO(0x91C4)
 #define OA_PERFCNT3_LO      _MMIO(0x91C8)
-#define OA_PERFCNT3_HI      _MMIO(0x91CC)
-#define OA_PERFCNT4_LO      _MMIO(0x91D8)
 #define OA_PERFCNT4_HI      _MMIO(0x91DC)
 
 #define OA_PERFMATRIX_LO    _MMIO(0x91C8)
@@ -1147,24 +714,12 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 /* GPM unit config (Gen9+) */
 #define CTC_MODE			_MMIO(0xA26C)
 #define  CTC_SOURCE_PARAMETER_MASK 1
-#define  CTC_SOURCE_CRYSTAL_CLOCK	0
 #define  CTC_SOURCE_DIVIDE_LOGIC	1
 #define  CTC_SHIFT_PARAMETER_SHIFT	1
 #define  CTC_SHIFT_PARAMETER_MASK	(0x3 << CTC_SHIFT_PARAMETER_SHIFT)
 
-/* RCP unit config (Gen8+) */
-#define RCP_CONFIG	    _MMIO(0x0D08)
-
 /* NOA (HSW) */
 #define HSW_MBVID2_NOA0		_MMIO(0x9E80)
-#define HSW_MBVID2_NOA1		_MMIO(0x9E84)
-#define HSW_MBVID2_NOA2		_MMIO(0x9E88)
-#define HSW_MBVID2_NOA3		_MMIO(0x9E8C)
-#define HSW_MBVID2_NOA4		_MMIO(0x9E90)
-#define HSW_MBVID2_NOA5		_MMIO(0x9E94)
-#define HSW_MBVID2_NOA6		_MMIO(0x9E98)
-#define HSW_MBVID2_NOA7		_MMIO(0x9E9C)
-#define HSW_MBVID2_NOA8		_MMIO(0x9EA0)
 #define HSW_MBVID2_NOA9		_MMIO(0x9EA4)
 
 #define HSW_MBVID2_MISR0	_MMIO(0x9EC0)
@@ -1173,25 +728,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define NOA_CONFIG(i)	    _MMIO(0x0D0C + (i) * 4)
 
 #define MICRO_BP0_0	    _MMIO(0x9800)
-#define MICRO_BP0_2	    _MMIO(0x9804)
-#define MICRO_BP0_1	    _MMIO(0x9808)
-
-#define MICRO_BP1_0	    _MMIO(0x980C)
-#define MICRO_BP1_2	    _MMIO(0x9810)
-#define MICRO_BP1_1	    _MMIO(0x9814)
-
-#define MICRO_BP2_0	    _MMIO(0x9818)
-#define MICRO_BP2_2	    _MMIO(0x981C)
-#define MICRO_BP2_1	    _MMIO(0x9820)
-
-#define MICRO_BP3_0	    _MMIO(0x9824)
-#define MICRO_BP3_2	    _MMIO(0x9828)
-#define MICRO_BP3_1	    _MMIO(0x982C)
-
-#define MICRO_BP_TRIGGER		_MMIO(0x9830)
-#define MICRO_BP3_COUNT_STATUS01	_MMIO(0x9834)
-#define MICRO_BP3_COUNT_STATUS23	_MMIO(0x9838)
-#define MICRO_BP_FIRED_ARMED		_MMIO(0x983C)
 
 #define GEN12_OAA_DBG_REG _MMIO(0xdc44)
 #define GEN12_OAG_OA_PESS _MMIO(0x2b2c)
@@ -1200,22 +736,9 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GDT_CHICKEN_BITS    _MMIO(0x9840)
 #define   GT_NOA_ENABLE	    0x00000080
 
-#define NOA_DATA	    _MMIO(0x986C)
 #define NOA_WRITE	    _MMIO(0x9888)
 #define GEN10_NOA_WRITE_HIGH _MMIO(0x9884)
 
-#define _GEN7_PIPEA_DE_LOAD_SL	0x70068
-#define _GEN7_PIPEB_DE_LOAD_SL	0x71068
-#define GEN7_PIPE_DE_LOAD_SL(pipe) _MMIO_PIPE(pipe, _GEN7_PIPEA_DE_LOAD_SL, _GEN7_PIPEB_DE_LOAD_SL)
-
-/*
- * Reset registers
- */
-#define DEBUG_RESET_I830		_MMIO(0x6070)
-#define  DEBUG_RESET_FULL		(1 << 7)
-#define  DEBUG_RESET_RENDER		(1 << 8)
-#define  DEBUG_RESET_DISPLAY		(1 << 9)
-
 /*
  * IOSF sideband
  */
@@ -1234,8 +757,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   IOSF_PORT_CCK				0x14
 #define   IOSF_PORT_DPIO_2			0x1a
 #define   IOSF_PORT_FLISDSI			0x1b
-#define   IOSF_PORT_GPIO_SC			0x48
-#define   IOSF_PORT_GPIO_SUS			0xa8
 #define   IOSF_PORT_CCU				0xa9
 #define   CHV_IOSF_PORT_GPIO_N			0x13
 #define   CHV_IOSF_PORT_GPIO_SE			0x48
@@ -1250,27 +771,9 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 /* PUNIT_REG_*SSPM0 */
 #define   _SSPM0_SSC(val)			((val) << 0)
 #define   SSPM0_SSC_MASK			_SSPM0_SSC(0x3)
-#define   SSPM0_SSC_PWR_ON			_SSPM0_SSC(0x0)
-#define   SSPM0_SSC_CLK_GATE			_SSPM0_SSC(0x1)
-#define   SSPM0_SSC_RESET			_SSPM0_SSC(0x2)
 #define   SSPM0_SSC_PWR_GATE			_SSPM0_SSC(0x3)
-#define   _SSPM0_SSS(val)			((val) << 24)
-#define   SSPM0_SSS_MASK			_SSPM0_SSS(0x3)
-#define   SSPM0_SSS_PWR_ON			_SSPM0_SSS(0x0)
-#define   SSPM0_SSS_CLK_GATE			_SSPM0_SSS(0x1)
-#define   SSPM0_SSS_RESET			_SSPM0_SSS(0x2)
-#define   SSPM0_SSS_PWR_GATE			_SSPM0_SSS(0x3)
-
-/* PUNIT_REG_*SSPM1 */
-#define   SSPM1_FREQSTAT_SHIFT			24
-#define   SSPM1_FREQSTAT_MASK			(0x1f << SSPM1_FREQSTAT_SHIFT)
-#define   SSPM1_FREQGUAR_SHIFT			8
-#define   SSPM1_FREQGUAR_MASK			(0x1f << SSPM1_FREQGUAR_SHIFT)
-#define   SSPM1_FREQ_SHIFT			0
-#define   SSPM1_FREQ_MASK			(0x1f << SSPM1_FREQ_SHIFT)
 
 #define PUNIT_REG_VEDSSPM0			0x32
-#define PUNIT_REG_VEDSSPM1			0x33
 
 #define PUNIT_REG_DSPSSPM			0x36
 #define   DSPFREQSTAT_SHIFT_CHV			24
@@ -1281,55 +784,36 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   DSPFREQSTAT_MASK			(0x3 << DSPFREQSTAT_SHIFT)
 #define   DSPFREQGUAR_SHIFT			14
 #define   DSPFREQGUAR_MASK			(0x3 << DSPFREQGUAR_SHIFT)
-#define   DSP_MAXFIFO_PM5_STATUS		(1 << 22) /* chv */
-#define   DSP_AUTO_CDCLK_GATE_DISABLE		(1 << 7) /* chv */
 #define   DSP_MAXFIFO_PM5_ENABLE		(1 << 6) /* chv */
 #define   _DP_SSC(val, pipe)			((val) << (2 * (pipe)))
 #define   DP_SSC_MASK(pipe)			_DP_SSC(0x3, (pipe))
 #define   DP_SSC_PWR_ON(pipe)			_DP_SSC(0x0, (pipe))
-#define   DP_SSC_CLK_GATE(pipe)			_DP_SSC(0x1, (pipe))
-#define   DP_SSC_RESET(pipe)			_DP_SSC(0x2, (pipe))
 #define   DP_SSC_PWR_GATE(pipe)			_DP_SSC(0x3, (pipe))
 #define   _DP_SSS(val, pipe)			((val) << (2 * (pipe) + 16))
 #define   DP_SSS_MASK(pipe)			_DP_SSS(0x3, (pipe))
 #define   DP_SSS_PWR_ON(pipe)			_DP_SSS(0x0, (pipe))
-#define   DP_SSS_CLK_GATE(pipe)			_DP_SSS(0x1, (pipe))
-#define   DP_SSS_RESET(pipe)			_DP_SSS(0x2, (pipe))
 #define   DP_SSS_PWR_GATE(pipe)			_DP_SSS(0x3, (pipe))
 
 #define PUNIT_REG_ISPSSPM0			0x39
-#define PUNIT_REG_ISPSSPM1			0x3a
 
 #define PUNIT_REG_PWRGT_CTRL			0x60
 #define PUNIT_REG_PWRGT_STATUS			0x61
 #define   PUNIT_PWRGT_MASK(pw_idx)		(3 << ((pw_idx) * 2))
 #define   PUNIT_PWRGT_PWR_ON(pw_idx)		(0 << ((pw_idx) * 2))
-#define   PUNIT_PWRGT_CLK_GATE(pw_idx)		(1 << ((pw_idx) * 2))
-#define   PUNIT_PWRGT_RESET(pw_idx)		(2 << ((pw_idx) * 2))
 #define   PUNIT_PWRGT_PWR_GATE(pw_idx)		(3 << ((pw_idx) * 2))
 
-#define PUNIT_PWGT_IDX_RENDER			0
-#define PUNIT_PWGT_IDX_MEDIA			1
 #define PUNIT_PWGT_IDX_DISP2D			3
 #define PUNIT_PWGT_IDX_DPIO_CMN_BC		5
 #define PUNIT_PWGT_IDX_DPIO_TX_B_LANES_01	6
 #define PUNIT_PWGT_IDX_DPIO_TX_B_LANES_23	7
 #define PUNIT_PWGT_IDX_DPIO_TX_C_LANES_01	8
 #define PUNIT_PWGT_IDX_DPIO_TX_C_LANES_23	9
-#define PUNIT_PWGT_IDX_DPIO_RX0			10
-#define PUNIT_PWGT_IDX_DPIO_RX1			11
 #define PUNIT_PWGT_IDX_DPIO_CMN_D		12
 
 #define PUNIT_REG_GPU_LFM			0xd3
 #define PUNIT_REG_GPU_FREQ_REQ			0xd4
 #define PUNIT_REG_GPU_FREQ_STS			0xd8
 #define   GPLLENABLE				(1 << 4)
-#define   GENFREQSTATUS				(1 << 0)
-#define PUNIT_REG_MEDIA_TURBO_FREQ_REQ		0xdc
-#define PUNIT_REG_CZ_TIMESTAMP			0xce
-
-#define PUNIT_FUSE_BUS2				0xf6 /* bits 47:40 */
-#define PUNIT_FUSE_BUS1				0xf5 /* bits 55:48 */
 
 #define FB_GFX_FMAX_AT_VMAX_FUSE		0x136
 #define FB_GFX_FREQ_FUSE_MASK			0xff
@@ -1345,12 +829,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   FORCE_DDR_LOW_FREQ			(1 << 1)
 #define   FORCE_DDR_HIGH_FREQ			(1 << 0)
 
-#define PUNIT_GPU_STATUS_REG			0xdb
-#define PUNIT_GPU_STATUS_MAX_FREQ_SHIFT	16
-#define PUNIT_GPU_STATUS_MAX_FREQ_MASK		0xff
-#define PUNIT_GPU_STATIS_GFX_MIN_FREQ_SHIFT	8
-#define PUNIT_GPU_STATUS_GFX_MIN_FREQ_MASK	0xff
-
 #define PUNIT_GPU_DUTYCYCLE_REG		0xdf
 #define PUNIT_GPU_DUTYCYCLE_RPE_FREQ_SHIFT	8
 #define PUNIT_GPU_DUTYCYCLE_RPE_FREQ_MASK	0xff
@@ -1375,32 +853,15 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 /* vlv2 north clock has */
 #define CCK_FUSE_REG				0x8
 #define  CCK_FUSE_HPLL_FREQ_MASK		0x3
-#define CCK_REG_DSI_PLL_FUSE			0x44
 #define CCK_REG_DSI_PLL_CONTROL			0x48
 #define  DSI_PLL_VCO_EN				(1 << 31)
 #define  DSI_PLL_LDO_GATE			(1 << 30)
 #define  DSI_PLL_P1_POST_DIV_SHIFT		17
 #define  DSI_PLL_P1_POST_DIV_MASK		(0x1ff << 17)
-#define  DSI_PLL_P2_MUX_DSI0_DIV2		(1 << 13)
-#define  DSI_PLL_P3_MUX_DSI1_DIV2		(1 << 12)
-#define  DSI_PLL_MUX_MASK			(3 << 9)
-#define  DSI_PLL_MUX_DSI0_DSIPLL		(0 << 10)
-#define  DSI_PLL_MUX_DSI0_CCK			(1 << 10)
-#define  DSI_PLL_MUX_DSI1_DSIPLL		(0 << 9)
-#define  DSI_PLL_MUX_DSI1_CCK			(1 << 9)
-#define  DSI_PLL_CLK_GATE_MASK			(0xf << 5)
 #define  DSI_PLL_CLK_GATE_DSI0_DSIPLL		(1 << 8)
 #define  DSI_PLL_CLK_GATE_DSI1_DSIPLL		(1 << 7)
-#define  DSI_PLL_CLK_GATE_DSI0_CCK		(1 << 6)
-#define  DSI_PLL_CLK_GATE_DSI1_CCK		(1 << 5)
 #define  DSI_PLL_LOCK				(1 << 0)
 #define CCK_REG_DSI_PLL_DIVIDER			0x4c
-#define  DSI_PLL_LFSR				(1 << 31)
-#define  DSI_PLL_FRACTION_EN			(1 << 30)
-#define  DSI_PLL_FRAC_COUNTER_SHIFT		27
-#define  DSI_PLL_FRAC_COUNTER_MASK		(7 << 27)
-#define  DSI_PLL_USYNC_CNT_SHIFT		18
-#define  DSI_PLL_USYNC_CNT_MASK			(0x1ff << 18)
 #define  DSI_PLL_N1_DIV_SHIFT			16
 #define  DSI_PLL_N1_DIV_MASK			(3 << 16)
 #define  DSI_PLL_M1_DIV_SHIFT			0
@@ -1409,8 +870,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define CCK_GPLL_CLOCK_CONTROL			0x67
 #define CCK_DISPLAY_CLOCK_CONTROL		0x6b
 #define CCK_DISPLAY_REF_CLOCK_CONTROL		0x6c
-#define  CCK_TRUNK_FORCE_ON			(1 << 17)
-#define  CCK_TRUNK_FORCE_OFF			(1 << 16)
 #define  CCK_FREQUENCY_STATUS			(0x1f << 8)
 #define  CCK_FREQUENCY_STATUS_SHIFT		8
 #define  CCK_FREQUENCY_VALUES			(0x1f << 0)
@@ -1419,8 +878,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define DPIO_DEVFN			0
 
 #define DPIO_CTL			_MMIO(VLV_DISPLAY_BASE + 0x2110)
-#define  DPIO_MODSEL1			(1 << 3) /* if ref clk b == 27 */
-#define  DPIO_MODSEL0			(1 << 2) /* if ref clk a == 27 */
 #define  DPIO_SFR_BYPASS		(1 << 1)
 #define  DPIO_CMNRST			(1 << 0)
 
@@ -1431,10 +888,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
  */
 #define _VLV_PLL_DW3_CH0		0x800c
 #define   DPIO_POST_DIV_SHIFT		(28) /* 3 bits */
-#define   DPIO_POST_DIV_DAC		0
 #define   DPIO_POST_DIV_HDMIDP		1 /* DAC 225-400M rate */
-#define   DPIO_POST_DIV_LVDS1		2
-#define   DPIO_POST_DIV_LVDS2		3
 #define   DPIO_K_SHIFT			(24) /* 4 bits */
 #define   DPIO_P1_SHIFT			(21) /* 3 bits */
 #define   DPIO_P2_SHIFT			(16) /* 5 bits */
@@ -1446,13 +900,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define VLV_PLL_DW3(ch) _PIPE(ch, _VLV_PLL_DW3_CH0, _VLV_PLL_DW3_CH1)
 
 #define _VLV_PLL_DW5_CH0		0x8014
-#define   DPIO_REFSEL_OVERRIDE		27
-#define   DPIO_PLL_MODESEL_SHIFT	24 /* 3 bits */
-#define   DPIO_BIAS_CURRENT_CTL_SHIFT	21 /* 3 bits, always 0x7 */
-#define   DPIO_PLL_REFCLK_SEL_SHIFT	16 /* 2 bits */
-#define   DPIO_PLL_REFCLK_SEL_MASK	3
-#define   DPIO_DRIVER_CTL_SHIFT		12 /* always set to 0x8 */
-#define   DPIO_CLK_BIAS_CTL_SHIFT	8 /* always set to 0x5 */
 #define _VLV_PLL_DW5_CH1		0x8034
 #define VLV_PLL_DW5(ch) _PIPE(ch, _VLV_PLL_DW5_CH0, _VLV_PLL_DW5_CH1)
 
@@ -1490,8 +937,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define _VLV_PCS_DW0_CH1		0x8400
 #define   DPIO_PCS_TX_LANE2_RESET	(1 << 16)
 #define   DPIO_PCS_TX_LANE1_RESET	(1 << 7)
-#define   DPIO_LEFT_TXFIFO_RST_MASTER2	(1 << 4)
-#define   DPIO_RIGHT_TXFIFO_RST_MASTER2	(1 << 3)
 #define VLV_PCS_DW0(ch) _PORT(ch, _VLV_PCS_DW0_CH0, _VLV_PCS_DW0_CH1)
 
 #define _VLV_PCS01_DW0_CH0		0x200
@@ -1534,10 +979,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define _VLV_PCS_DW9_CH1		0x8424
 #define   DPIO_PCS_TX2MARGIN_MASK	(0x7 << 13)
 #define   DPIO_PCS_TX2MARGIN_000	(0 << 13)
-#define   DPIO_PCS_TX2MARGIN_101	(1 << 13)
 #define   DPIO_PCS_TX1MARGIN_MASK	(0x7 << 10)
 #define   DPIO_PCS_TX1MARGIN_000	(0 << 10)
-#define   DPIO_PCS_TX1MARGIN_101	(1 << 10)
 #define	VLV_PCS_DW9(ch) _PORT(ch, _VLV_PCS_DW9_CH0, _VLV_PCS_DW9_CH1)
 
 #define _VLV_PCS01_DW9_CH0		0x224
@@ -1547,17 +990,12 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define VLV_PCS01_DW9(ch) _PORT(ch, _VLV_PCS01_DW9_CH0, _VLV_PCS01_DW9_CH1)
 #define VLV_PCS23_DW9(ch) _PORT(ch, _VLV_PCS23_DW9_CH0, _VLV_PCS23_DW9_CH1)
 
-#define _CHV_PCS_DW10_CH0		0x8228
-#define _CHV_PCS_DW10_CH1		0x8428
 #define   DPIO_PCS_SWING_CALC_TX0_TX2	(1 << 30)
 #define   DPIO_PCS_SWING_CALC_TX1_TX3	(1 << 31)
 #define   DPIO_PCS_TX2DEEMP_MASK	(0xf << 24)
 #define   DPIO_PCS_TX2DEEMP_9P5		(0 << 24)
-#define   DPIO_PCS_TX2DEEMP_6P0		(2 << 24)
 #define   DPIO_PCS_TX1DEEMP_MASK	(0xf << 16)
 #define   DPIO_PCS_TX1DEEMP_9P5		(0 << 16)
-#define   DPIO_PCS_TX1DEEMP_6P0		(2 << 16)
-#define CHV_PCS_DW10(ch) _PORT(ch, _CHV_PCS_DW10_CH0, _CHV_PCS_DW10_CH1)
 
 #define _VLV_PCS01_DW10_CH0		0x0228
 #define _VLV_PCS23_DW10_CH0		0x0428
@@ -1570,8 +1008,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define _VLV_PCS_DW11_CH1		0x842c
 #define   DPIO_TX2_STAGGER_MASK(x)	((x) << 24)
 #define   DPIO_LANEDESKEW_STRAP_OVRD	(1 << 3)
-#define   DPIO_LEFT_TXFIFO_RST_MASTER	(1 << 1)
-#define   DPIO_RIGHT_TXFIFO_RST_MASTER	(1 << 0)
 #define VLV_PCS_DW11(ch) _PORT(ch, _VLV_PCS_DW11_CH0, _VLV_PCS_DW11_CH1)
 
 #define _VLV_PCS01_DW11_CH0		0x022c
@@ -1616,16 +1052,12 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define _VLV_TX_DW3_CH1			0x848c
 /* The following bit for CHV phy */
 #define   DPIO_TX_UNIQ_TRANS_SCALE_EN	(1 << 27)
-#define   DPIO_SWING_MARGIN101_SHIFT	16
-#define   DPIO_SWING_MARGIN101_MASK	(0xff << DPIO_SWING_MARGIN101_SHIFT)
 #define VLV_TX_DW3(ch) _PORT(ch, _VLV_TX_DW3_CH0, _VLV_TX_DW3_CH1)
 
 #define _VLV_TX_DW4_CH0			0x8290
 #define _VLV_TX_DW4_CH1			0x8490
 #define   DPIO_SWING_DEEMPH9P5_SHIFT	24
 #define   DPIO_SWING_DEEMPH9P5_MASK	(0xff << DPIO_SWING_DEEMPH9P5_SHIFT)
-#define   DPIO_SWING_DEEMPH6P0_SHIFT	16
-#define   DPIO_SWING_DEEMPH6P0_MASK	(0xff << DPIO_SWING_DEEMPH6P0_SHIFT)
 #define VLV_TX_DW4(ch) _PORT(ch, _VLV_TX_DW4_CH0, _VLV_TX_DW4_CH1)
 
 #define _VLV_TX3_DW4_CH0		0x690
@@ -1663,8 +1095,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define _CHV_PLL_DW3_CH0		0x800c
 #define _CHV_PLL_DW3_CH1		0x818c
 #define  DPIO_CHV_FRAC_DIV_EN		(1 << 16)
-#define  DPIO_CHV_FIRST_MOD		(0 << 8)
-#define  DPIO_CHV_SECOND_MOD		(1 << 8)
 #define  DPIO_CHV_FEEDFWD_GAIN_SHIFT	0
 #define  DPIO_CHV_FEEDFWD_GAIN_MASK		(0xF << 0)
 #define CHV_PLL_DW3(ch) _PIPE(ch, _CHV_PLL_DW3_CH0, _CHV_PLL_DW3_CH1)
@@ -1690,18 +1120,13 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define CHV_PLL_DW9(ch) _PIPE(ch, _CHV_PLL_DW9_CH0, _CHV_PLL_DW9_CH1)
 
 #define _CHV_CMN_DW0_CH0               0x8100
-#define   DPIO_ALLDL_POWERDOWN_SHIFT_CH0	19
 #define   DPIO_ANYDL_POWERDOWN_SHIFT_CH0	18
 #define   DPIO_ALLDL_POWERDOWN			(1 << 1)
 #define   DPIO_ANYDL_POWERDOWN			(1 << 0)
 
 #define _CHV_CMN_DW5_CH0               0x8114
-#define   CHV_BUFRIGHTENA1_DISABLE	(0 << 20)
-#define   CHV_BUFRIGHTENA1_NORMAL	(1 << 20)
 #define   CHV_BUFRIGHTENA1_FORCE	(3 << 20)
 #define   CHV_BUFRIGHTENA1_MASK		(3 << 20)
-#define   CHV_BUFLEFTENA1_DISABLE	(0 << 22)
-#define   CHV_BUFLEFTENA1_NORMAL	(1 << 22)
 #define   CHV_BUFLEFTENA1_FORCE		(3 << 22)
 #define   CHV_BUFLEFTENA1_MASK		(3 << 22)
 
@@ -1711,27 +1136,20 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   DPIO_CHV_P1_DIV_SHIFT		13 /* 3 bits */
 #define   DPIO_CHV_P2_DIV_SHIFT		8  /* 5 bits */
 #define   DPIO_CHV_K_DIV_SHIFT		4
-#define   DPIO_PLL_FREQLOCK		(1 << 1)
-#define   DPIO_PLL_LOCK			(1 << 0)
 #define CHV_CMN_DW13(ch) _PIPE(ch, _CHV_CMN_DW13_CH0, _CHV_CMN_DW0_CH1)
 
 #define _CHV_CMN_DW14_CH0		0x8138
 #define _CHV_CMN_DW1_CH1		0x8084
 #define   DPIO_AFC_RECAL		(1 << 14)
 #define   DPIO_DCLKP_EN			(1 << 13)
-#define   CHV_BUFLEFTENA2_DISABLE	(0 << 17) /* CL2 DW1 only */
-#define   CHV_BUFLEFTENA2_NORMAL	(1 << 17) /* CL2 DW1 only */
 #define   CHV_BUFLEFTENA2_FORCE		(3 << 17) /* CL2 DW1 only */
 #define   CHV_BUFLEFTENA2_MASK		(3 << 17) /* CL2 DW1 only */
-#define   CHV_BUFRIGHTENA2_DISABLE	(0 << 19) /* CL2 DW1 only */
-#define   CHV_BUFRIGHTENA2_NORMAL	(1 << 19) /* CL2 DW1 only */
 #define   CHV_BUFRIGHTENA2_FORCE	(3 << 19) /* CL2 DW1 only */
 #define   CHV_BUFRIGHTENA2_MASK		(3 << 19) /* CL2 DW1 only */
 #define CHV_CMN_DW14(ch) _PIPE(ch, _CHV_CMN_DW14_CH0, _CHV_CMN_DW1_CH1)
 
 #define _CHV_CMN_DW19_CH0		0x814c
 #define _CHV_CMN_DW6_CH1		0x8098
-#define   DPIO_ALLDL_POWERDOWN_SHIFT_CH1	30 /* CL2 DW6 only */
 #define   DPIO_ANYDL_POWERDOWN_SHIFT_CH1	29 /* CL2 DW6 only */
 #define   DPIO_DYNPWRDOWNEN_CH1		(1 << 28) /* CL2 DW6 only */
 #define   CHV_CMN_USEDCLKCHANNEL	(1 << 13)
@@ -1741,31 +1159,17 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define CHV_CMN_DW28			0x8170
 #define   DPIO_CL1POWERDOWNEN		(1 << 23)
 #define   DPIO_DYNPWRDOWNEN_CH0		(1 << 22)
-#define   DPIO_SUS_CLK_CONFIG_ON		(0 << 0)
-#define   DPIO_SUS_CLK_CONFIG_CLKREQ		(1 << 0)
-#define   DPIO_SUS_CLK_CONFIG_GATE		(2 << 0)
 #define   DPIO_SUS_CLK_CONFIG_GATE_CLKREQ	(3 << 0)
 
 #define CHV_CMN_DW30			0x8178
 #define   DPIO_CL2_LDOFUSE_PWRENB	(1 << 6)
-#define   DPIO_LRC_BYPASS		(1 << 3)
 
 #define _TXLANE(ch, lane, offset) ((ch ? 0x2400 : 0) + \
 					(lane) * 0x200 + (offset))
 
-#define CHV_TX_DW0(ch, lane) _TXLANE(ch, lane, 0x80)
-#define CHV_TX_DW1(ch, lane) _TXLANE(ch, lane, 0x84)
 #define CHV_TX_DW2(ch, lane) _TXLANE(ch, lane, 0x88)
 #define CHV_TX_DW3(ch, lane) _TXLANE(ch, lane, 0x8c)
 #define CHV_TX_DW4(ch, lane) _TXLANE(ch, lane, 0x90)
-#define CHV_TX_DW5(ch, lane) _TXLANE(ch, lane, 0x94)
-#define CHV_TX_DW6(ch, lane) _TXLANE(ch, lane, 0x98)
-#define CHV_TX_DW7(ch, lane) _TXLANE(ch, lane, 0x9c)
-#define CHV_TX_DW8(ch, lane) _TXLANE(ch, lane, 0xa0)
-#define CHV_TX_DW9(ch, lane) _TXLANE(ch, lane, 0xa4)
-#define CHV_TX_DW10(ch, lane) _TXLANE(ch, lane, 0xa8)
-#define CHV_TX_DW11(ch, lane) _TXLANE(ch, lane, 0xac)
-#define   DPIO_FRC_LATENCY_SHFIT	8
 #define CHV_TX_DW14(ch, lane) _TXLANE(ch, lane, 0xb8)
 #define   DPIO_UPAR_SHIFT		30
 
@@ -1809,7 +1213,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 /* BXT PHY PLL registers */
 #define _PORT_PLL_A			0x46074
 #define _PORT_PLL_B			0x46078
-#define _PORT_PLL_C			0x4607c
 #define   PORT_PLL_ENABLE		(1 << 31)
 #define   PORT_PLL_LOCK			(1 << 30)
 #define   PORT_PLL_REF_SEL		(1 << 27)
@@ -1817,7 +1220,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   PORT_PLL_POWER_STATE		(1 << 25)
 #define BXT_PORT_PLL_ENABLE(port)	_MMIO_PORT(port, _PORT_PLL_A, _PORT_PLL_B)
 
-#define _PORT_PLL_EBB_0_A		0x162034
 #define _PORT_PLL_EBB_0_B		0x6C034
 #define _PORT_PLL_EBB_0_C		0x6C340
 #define   PORT_PLL_P1_SHIFT		13
@@ -1830,7 +1232,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 							 _PORT_PLL_EBB_0_B, \
 							 _PORT_PLL_EBB_0_C)
 
-#define _PORT_PLL_EBB_4_A		0x162038
 #define _PORT_PLL_EBB_4_B		0x6C038
 #define _PORT_PLL_EBB_4_C		0x6C344
 #define   PORT_PLL_10BIT_CLK_ENABLE	(1 << 13)
@@ -1839,7 +1240,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 							 _PORT_PLL_EBB_4_B, \
 							 _PORT_PLL_EBB_4_C)
 
-#define _PORT_PLL_0_A			0x162100
 #define _PORT_PLL_0_B			0x6C100
 #define _PORT_PLL_0_C			0x6C380
 /* PORT_PLL_0_A */
@@ -1875,34 +1275,28 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 					      (idx) * 4)
 
 /* BXT PHY common lane registers */
-#define _PORT_CL1CM_DW0_A		0x162000
 #define _PORT_CL1CM_DW0_BC		0x6C000
 #define   PHY_POWER_GOOD		(1 << 16)
 #define   PHY_RESERVED			(1 << 7)
 #define BXT_PORT_CL1CM_DW0(phy)		_BXT_PHY((phy), _PORT_CL1CM_DW0_BC)
 
-#define _PORT_CL1CM_DW9_A		0x162024
 #define _PORT_CL1CM_DW9_BC		0x6C024
 #define   IREF0RC_OFFSET_SHIFT		8
 #define   IREF0RC_OFFSET_MASK		(0xFF << IREF0RC_OFFSET_SHIFT)
 #define BXT_PORT_CL1CM_DW9(phy)		_BXT_PHY((phy), _PORT_CL1CM_DW9_BC)
 
-#define _PORT_CL1CM_DW10_A		0x162028
 #define _PORT_CL1CM_DW10_BC		0x6C028
 #define   IREF1RC_OFFSET_SHIFT		8
 #define   IREF1RC_OFFSET_MASK		(0xFF << IREF1RC_OFFSET_SHIFT)
 #define BXT_PORT_CL1CM_DW10(phy)	_BXT_PHY((phy), _PORT_CL1CM_DW10_BC)
 
-#define _PORT_CL1CM_DW28_A		0x162070
 #define _PORT_CL1CM_DW28_BC		0x6C070
 #define   OCL1_POWER_DOWN_EN		(1 << 23)
 #define   DW28_OLDO_DYN_PWR_DOWN_EN	(1 << 22)
 #define   SUS_CLK_CONFIG		0x3
 #define BXT_PORT_CL1CM_DW28(phy)	_BXT_PHY((phy), _PORT_CL1CM_DW28_BC)
 
-#define _PORT_CL1CM_DW30_A		0x162078
 #define _PORT_CL1CM_DW30_BC		0x6C078
-#define   OCL2_LDOFUSE_PWR_DIS		(1 << 6)
 #define BXT_PORT_CL1CM_DW30(phy)	_BXT_PHY((phy), _PORT_CL1CM_DW30_BC)
 
 /*
@@ -1929,9 +1323,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   SUS_CLOCK_CONFIG		(3 << 0)
 
 #define ICL_PORT_CL_DW10(phy)		_MMIO(_ICL_PORT_CL_DW(10, phy))
-#define  PG_SEQ_DELAY_OVERRIDE_MASK	(3 << 25)
-#define  PG_SEQ_DELAY_OVERRIDE_SHIFT	25
-#define  PG_SEQ_DELAY_OVERRIDE_ENABLE	(1 << 24)
 #define  PWR_UP_ALL_LANES		(0x0 << 4)
 #define  PWR_DOWN_LN_3_2_1		(0xe << 4)
 #define  PWR_DOWN_LN_3_2		(0xc << 4)
@@ -1941,7 +1332,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define  PWR_DOWN_LN_3_1		(0xa << 4)
 #define  PWR_DOWN_LN_3_1_0		(0xb << 4)
 #define  PWR_DOWN_LN_MASK		(0xf << 4)
-#define  PWR_DOWN_LN_SHIFT		4
 #define  EDP4K2K_MODE_OVRD_EN		(1 << 3)
 #define  EDP4K2K_MODE_OVRD_OPTIMIZED	(1 << 2)
 
@@ -1961,14 +1351,11 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define ICL_PORT_COMP_DW3(phy)		_MMIO(_ICL_PORT_COMP_DW(3, phy))
 #define   PROCESS_INFO_DOT_0		(0 << 26)
 #define   PROCESS_INFO_DOT_1		(1 << 26)
-#define   PROCESS_INFO_DOT_4		(2 << 26)
 #define   PROCESS_INFO_MASK		(7 << 26)
-#define   PROCESS_INFO_SHIFT		26
 #define   VOLTAGE_INFO_0_85V		(0 << 24)
 #define   VOLTAGE_INFO_0_95V		(1 << 24)
 #define   VOLTAGE_INFO_1_05V		(2 << 24)
 #define   VOLTAGE_INFO_MASK		(3 << 24)
-#define   VOLTAGE_INFO_SHIFT		24
 
 #define ICL_PORT_COMP_DW8(phy)		_MMIO(_ICL_PORT_COMP_DW(8, phy))
 #define   IREFGEN			(1 << 24)
@@ -2021,7 +1408,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   RCOMP_SCALAR_MASK		(0xFF << 0)
 
 #define ICL_PORT_TX_DW4_AUX(phy)	_MMIO(_ICL_PORT_TX_DW_AUX(4, phy))
-#define ICL_PORT_TX_DW4_GRP(phy)	_MMIO(_ICL_PORT_TX_DW_GRP(4, phy))
 #define ICL_PORT_TX_DW4_LN(ln, phy)	_MMIO(_ICL_PORT_TX_DW_LN(4, ln, phy))
 #define   LOADGEN_SELECT		(1 << 31)
 #define   POST_CURSOR_1(x)		((x) << 12)
@@ -2042,13 +1428,10 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   RTERM_SELECT(x)		((x) << 3)
 #define   RTERM_SELECT_MASK		(0x7 << 3)
 
-#define ICL_PORT_TX_DW7_AUX(phy)	_MMIO(_ICL_PORT_TX_DW_AUX(7, phy))
-#define ICL_PORT_TX_DW7_GRP(phy)	_MMIO(_ICL_PORT_TX_DW_GRP(7, phy))
 #define ICL_PORT_TX_DW7_LN(ln, phy)	_MMIO(_ICL_PORT_TX_DW_LN(7, ln, phy))
 #define   N_SCALAR(x)			((x) << 24)
 #define   N_SCALAR_MASK			(0x7F << 24)
 
-#define ICL_PORT_TX_DW8_AUX(phy)		_MMIO(_ICL_PORT_TX_DW_AUX(8, phy))
 #define ICL_PORT_TX_DW8_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(8, phy))
 #define ICL_PORT_TX_DW8_LN(ln, phy)		_MMIO(_ICL_PORT_TX_DW_LN(8, ln, phy))
 #define   ICL_PORT_TX_DW8_ODCC_CLK_SEL		REG_BIT(31)
@@ -2065,11 +1448,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define MG_TX_LINK_PARAMS_TX1LN0_PORT1		0x16812C
 #define MG_TX_LINK_PARAMS_TX1LN1_PORT1		0x16852C
 #define MG_TX_LINK_PARAMS_TX1LN0_PORT2		0x16912C
-#define MG_TX_LINK_PARAMS_TX1LN1_PORT2		0x16952C
-#define MG_TX_LINK_PARAMS_TX1LN0_PORT3		0x16A12C
-#define MG_TX_LINK_PARAMS_TX1LN1_PORT3		0x16A52C
-#define MG_TX_LINK_PARAMS_TX1LN0_PORT4		0x16B12C
-#define MG_TX_LINK_PARAMS_TX1LN1_PORT4		0x16B52C
 #define MG_TX1_LINK_PARAMS(ln, tc_port) \
 	MG_PHY_PORT_LN(ln, tc_port, MG_TX_LINK_PARAMS_TX1LN0_PORT1, \
 				    MG_TX_LINK_PARAMS_TX1LN0_PORT2, \
@@ -2078,11 +1456,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define MG_TX_LINK_PARAMS_TX2LN0_PORT1		0x1680AC
 #define MG_TX_LINK_PARAMS_TX2LN1_PORT1		0x1684AC
 #define MG_TX_LINK_PARAMS_TX2LN0_PORT2		0x1690AC
-#define MG_TX_LINK_PARAMS_TX2LN1_PORT2		0x1694AC
-#define MG_TX_LINK_PARAMS_TX2LN0_PORT3		0x16A0AC
-#define MG_TX_LINK_PARAMS_TX2LN1_PORT3		0x16A4AC
-#define MG_TX_LINK_PARAMS_TX2LN0_PORT4		0x16B0AC
-#define MG_TX_LINK_PARAMS_TX2LN1_PORT4		0x16B4AC
 #define MG_TX2_LINK_PARAMS(ln, tc_port) \
 	MG_PHY_PORT_LN(ln, tc_port, MG_TX_LINK_PARAMS_TX2LN0_PORT1, \
 				    MG_TX_LINK_PARAMS_TX2LN0_PORT2, \
@@ -2092,11 +1465,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define MG_TX_PISO_READLOAD_TX1LN0_PORT1		0x16814C
 #define MG_TX_PISO_READLOAD_TX1LN1_PORT1		0x16854C
 #define MG_TX_PISO_READLOAD_TX1LN0_PORT2		0x16914C
-#define MG_TX_PISO_READLOAD_TX1LN1_PORT2		0x16954C
-#define MG_TX_PISO_READLOAD_TX1LN0_PORT3		0x16A14C
-#define MG_TX_PISO_READLOAD_TX1LN1_PORT3		0x16A54C
-#define MG_TX_PISO_READLOAD_TX1LN0_PORT4		0x16B14C
-#define MG_TX_PISO_READLOAD_TX1LN1_PORT4		0x16B54C
 #define MG_TX1_PISO_READLOAD(ln, tc_port) \
 	MG_PHY_PORT_LN(ln, tc_port, MG_TX_PISO_READLOAD_TX1LN0_PORT1, \
 				    MG_TX_PISO_READLOAD_TX1LN0_PORT2, \
@@ -2105,11 +1473,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define MG_TX_PISO_READLOAD_TX2LN0_PORT1		0x1680CC
 #define MG_TX_PISO_READLOAD_TX2LN1_PORT1		0x1684CC
 #define MG_TX_PISO_READLOAD_TX2LN0_PORT2		0x1690CC
-#define MG_TX_PISO_READLOAD_TX2LN1_PORT2		0x1694CC
-#define MG_TX_PISO_READLOAD_TX2LN0_PORT3		0x16A0CC
-#define MG_TX_PISO_READLOAD_TX2LN1_PORT3		0x16A4CC
-#define MG_TX_PISO_READLOAD_TX2LN0_PORT4		0x16B0CC
-#define MG_TX_PISO_READLOAD_TX2LN1_PORT4		0x16B4CC
 #define MG_TX2_PISO_READLOAD(ln, tc_port) \
 	MG_PHY_PORT_LN(ln, tc_port, MG_TX_PISO_READLOAD_TX2LN0_PORT1, \
 				    MG_TX_PISO_READLOAD_TX2LN0_PORT2, \
@@ -2119,11 +1482,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define MG_TX_SWINGCTRL_TX1LN0_PORT1		0x168148
 #define MG_TX_SWINGCTRL_TX1LN1_PORT1		0x168548
 #define MG_TX_SWINGCTRL_TX1LN0_PORT2		0x169148
-#define MG_TX_SWINGCTRL_TX1LN1_PORT2		0x169548
-#define MG_TX_SWINGCTRL_TX1LN0_PORT3		0x16A148
-#define MG_TX_SWINGCTRL_TX1LN1_PORT3		0x16A548
-#define MG_TX_SWINGCTRL_TX1LN0_PORT4		0x16B148
-#define MG_TX_SWINGCTRL_TX1LN1_PORT4		0x16B548
 #define MG_TX1_SWINGCTRL(ln, tc_port) \
 	MG_PHY_PORT_LN(ln, tc_port, MG_TX_SWINGCTRL_TX1LN0_PORT1, \
 				    MG_TX_SWINGCTRL_TX1LN0_PORT2, \
@@ -2132,11 +1490,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define MG_TX_SWINGCTRL_TX2LN0_PORT1		0x1680C8
 #define MG_TX_SWINGCTRL_TX2LN1_PORT1		0x1684C8
 #define MG_TX_SWINGCTRL_TX2LN0_PORT2		0x1690C8
-#define MG_TX_SWINGCTRL_TX2LN1_PORT2		0x1694C8
-#define MG_TX_SWINGCTRL_TX2LN0_PORT3		0x16A0C8
-#define MG_TX_SWINGCTRL_TX2LN1_PORT3		0x16A4C8
-#define MG_TX_SWINGCTRL_TX2LN0_PORT4		0x16B0C8
-#define MG_TX_SWINGCTRL_TX2LN1_PORT4		0x16B4C8
 #define MG_TX2_SWINGCTRL(ln, tc_port) \
 	MG_PHY_PORT_LN(ln, tc_port, MG_TX_SWINGCTRL_TX2LN0_PORT1, \
 				    MG_TX_SWINGCTRL_TX2LN0_PORT2, \
@@ -2147,11 +1500,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define MG_TX_DRVCTRL_TX1LN0_TXPORT1			0x168144
 #define MG_TX_DRVCTRL_TX1LN1_TXPORT1			0x168544
 #define MG_TX_DRVCTRL_TX1LN0_TXPORT2			0x169144
-#define MG_TX_DRVCTRL_TX1LN1_TXPORT2			0x169544
-#define MG_TX_DRVCTRL_TX1LN0_TXPORT3			0x16A144
-#define MG_TX_DRVCTRL_TX1LN1_TXPORT3			0x16A544
-#define MG_TX_DRVCTRL_TX1LN0_TXPORT4			0x16B144
-#define MG_TX_DRVCTRL_TX1LN1_TXPORT4			0x16B544
 #define MG_TX1_DRVCTRL(ln, tc_port) \
 	MG_PHY_PORT_LN(ln, tc_port, MG_TX_DRVCTRL_TX1LN0_TXPORT1, \
 				    MG_TX_DRVCTRL_TX1LN0_TXPORT2, \
@@ -2160,11 +1508,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define MG_TX_DRVCTRL_TX2LN0_PORT1			0x1680C4
 #define MG_TX_DRVCTRL_TX2LN1_PORT1			0x1684C4
 #define MG_TX_DRVCTRL_TX2LN0_PORT2			0x1690C4
-#define MG_TX_DRVCTRL_TX2LN1_PORT2			0x1694C4
-#define MG_TX_DRVCTRL_TX2LN0_PORT3			0x16A0C4
-#define MG_TX_DRVCTRL_TX2LN1_PORT3			0x16A4C4
-#define MG_TX_DRVCTRL_TX2LN0_PORT4			0x16B0C4
-#define MG_TX_DRVCTRL_TX2LN1_PORT4			0x16B4C4
 #define MG_TX2_DRVCTRL(ln, tc_port) \
 	MG_PHY_PORT_LN(ln, tc_port, MG_TX_DRVCTRL_TX2LN0_PORT1, \
 				    MG_TX_DRVCTRL_TX2LN0_PORT2, \
@@ -2174,17 +1517,10 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   CRI_TXDEEMPH_OVERRIDE_EN			(1 << 22)
 #define   CRI_TXDEEMPH_OVERRIDE_5_0(x)			((x) << 16)
 #define   CRI_TXDEEMPH_OVERRIDE_5_0_MASK		(0x3F << 16)
-#define   CRI_LOADGEN_SEL(x)				((x) << 12)
-#define   CRI_LOADGEN_SEL_MASK				(0x3 << 12)
 
 #define MG_CLKHUB_LN0_PORT1			0x16839C
 #define MG_CLKHUB_LN1_PORT1			0x16879C
 #define MG_CLKHUB_LN0_PORT2			0x16939C
-#define MG_CLKHUB_LN1_PORT2			0x16979C
-#define MG_CLKHUB_LN0_PORT3			0x16A39C
-#define MG_CLKHUB_LN1_PORT3			0x16A79C
-#define MG_CLKHUB_LN0_PORT4			0x16B39C
-#define MG_CLKHUB_LN1_PORT4			0x16B79C
 #define MG_CLKHUB(ln, tc_port) \
 	MG_PHY_PORT_LN(ln, tc_port, MG_CLKHUB_LN0_PORT1, \
 				    MG_CLKHUB_LN0_PORT2, \
@@ -2194,11 +1530,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define MG_TX_DCC_TX1LN0_PORT1			0x168110
 #define MG_TX_DCC_TX1LN1_PORT1			0x168510
 #define MG_TX_DCC_TX1LN0_PORT2			0x169110
-#define MG_TX_DCC_TX1LN1_PORT2			0x169510
-#define MG_TX_DCC_TX1LN0_PORT3			0x16A110
-#define MG_TX_DCC_TX1LN1_PORT3			0x16A510
-#define MG_TX_DCC_TX1LN0_PORT4			0x16B110
-#define MG_TX_DCC_TX1LN1_PORT4			0x16B510
 #define MG_TX1_DCC(ln, tc_port) \
 	MG_PHY_PORT_LN(ln, tc_port, MG_TX_DCC_TX1LN0_PORT1, \
 				    MG_TX_DCC_TX1LN0_PORT2, \
@@ -2206,11 +1537,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define MG_TX_DCC_TX2LN0_PORT1			0x168090
 #define MG_TX_DCC_TX2LN1_PORT1			0x168490
 #define MG_TX_DCC_TX2LN0_PORT2			0x169090
-#define MG_TX_DCC_TX2LN1_PORT2			0x169490
-#define MG_TX_DCC_TX2LN0_PORT3			0x16A090
-#define MG_TX_DCC_TX2LN1_PORT3			0x16A490
-#define MG_TX_DCC_TX2LN0_PORT4			0x16B090
-#define MG_TX_DCC_TX2LN1_PORT4			0x16B490
 #define MG_TX2_DCC(ln, tc_port) \
 	MG_PHY_PORT_LN(ln, tc_port, MG_TX_DCC_TX2LN0_PORT1, \
 				    MG_TX_DCC_TX2LN0_PORT2, \
@@ -2222,11 +1548,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define MG_DP_MODE_LN0_ACU_PORT1			0x1683A0
 #define MG_DP_MODE_LN1_ACU_PORT1			0x1687A0
 #define MG_DP_MODE_LN0_ACU_PORT2			0x1693A0
-#define MG_DP_MODE_LN1_ACU_PORT2			0x1697A0
-#define MG_DP_MODE_LN0_ACU_PORT3			0x16A3A0
-#define MG_DP_MODE_LN1_ACU_PORT3			0x16A7A0
-#define MG_DP_MODE_LN0_ACU_PORT4			0x16B3A0
-#define MG_DP_MODE_LN1_ACU_PORT4			0x16B7A0
 #define MG_DP_MODE(ln, tc_port)	\
 	MG_PHY_PORT_LN(ln, tc_port, MG_DP_MODE_LN0_ACU_PORT1, \
 				    MG_DP_MODE_LN0_ACU_PORT2, \
@@ -2285,7 +1606,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   SNPS_PHY_MPLLB_SSC_STEPSIZE		REG_GENMASK(31, 11)
 
 #define SNPS_PHY_MPLLB_DIV2(phy)		_MMIO_SNPS(phy, 0x16801C)
-#define   SNPS_PHY_MPLLB_HDMI_PIXEL_CLK_DIV	REG_GENMASK(19, 18)
 #define   SNPS_PHY_MPLLB_HDMI_DIV		REG_GENMASK(17, 15)
 #define   SNPS_PHY_MPLLB_REF_CLK_DIV		REG_GENMASK(14, 12)
 #define   SNPS_PHY_MPLLB_MULTIPLIER		REG_GENMASK(11, 0)
@@ -2304,7 +1624,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 /* The spec defines this only for BXT PHY0, but lets assume that this
  * would exist for PHY1 too if it had a second channel.
  */
-#define _PORT_CL2CM_DW6_A		0x162358
 #define _PORT_CL2CM_DW6_BC		0x6C358
 #define BXT_PORT_CL2CM_DW6(phy)		_BXT_PHY((phy), _PORT_CL2CM_DW6_BC)
 #define   DW6_OLDO_DYN_PWR_DOWN_EN	(1 << 28)
@@ -2325,12 +1644,10 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   DFLEXDPMLE1_DPMLETC_ML3_0(idx)	(15 << (4 * (idx)))
 
 /* BXT PHY Ref registers */
-#define _PORT_REF_DW3_A			0x16218C
 #define _PORT_REF_DW3_BC		0x6C18C
 #define   GRC_DONE			(1 << 22)
 #define BXT_PORT_REF_DW3(phy)		_BXT_PHY((phy), _PORT_REF_DW3_BC)
 
-#define _PORT_REF_DW6_A			0x162198
 #define _PORT_REF_DW6_BC		0x6C198
 #define   GRC_CODE_SHIFT		24
 #define   GRC_CODE_MASK			(0xFF << GRC_CODE_SHIFT)
@@ -2341,17 +1658,14 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   GRC_CODE_NOM_MASK		0xFF
 #define BXT_PORT_REF_DW6(phy)		_BXT_PHY((phy), _PORT_REF_DW6_BC)
 
-#define _PORT_REF_DW8_A			0x1621A0
 #define _PORT_REF_DW8_BC		0x6C1A0
 #define   GRC_DIS			(1 << 15)
 #define   GRC_RDY_OVRD			(1 << 1)
 #define BXT_PORT_REF_DW8(phy)		_BXT_PHY((phy), _PORT_REF_DW8_BC)
 
 /* BXT PHY PCS registers */
-#define _PORT_PCS_DW10_LN01_A		0x162428
 #define _PORT_PCS_DW10_LN01_B		0x6C428
 #define _PORT_PCS_DW10_LN01_C		0x6C828
-#define _PORT_PCS_DW10_GRP_A		0x162C28
 #define _PORT_PCS_DW10_GRP_B		0x6CC28
 #define _PORT_PCS_DW10_GRP_C		0x6CE28
 #define BXT_PORT_PCS_DW10_LN01(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
@@ -2364,10 +1678,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   TX2_SWING_CALC_INIT		(1 << 31)
 #define   TX1_SWING_CALC_INIT		(1 << 30)
 
-#define _PORT_PCS_DW12_LN01_A		0x162430
 #define _PORT_PCS_DW12_LN01_B		0x6C430
 #define _PORT_PCS_DW12_LN01_C		0x6C830
-#define _PORT_PCS_DW12_LN23_A		0x162630
 #define _PORT_PCS_DW12_LN23_B		0x6C630
 #define _PORT_PCS_DW12_LN23_C		0x6CA30
 #define _PORT_PCS_DW12_GRP_A		0x162c30
@@ -2389,10 +1701,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define _BXT_LANE_OFFSET(lane)           (((lane) >> 1) * 0x200 +	\
 					  ((lane) & 1) * 0x80)
 
-#define _PORT_TX_DW2_LN0_A		0x162508
 #define _PORT_TX_DW2_LN0_B		0x6C508
 #define _PORT_TX_DW2_LN0_C		0x6C908
-#define _PORT_TX_DW2_GRP_A		0x162D08
 #define _PORT_TX_DW2_GRP_B		0x6CD08
 #define _PORT_TX_DW2_GRP_C		0x6CF08
 #define BXT_PORT_TX_DW2_LN0(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
@@ -2406,10 +1716,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   UNIQ_TRANS_SCALE_SHIFT	8
 #define   UNIQ_TRANS_SCALE		(0xFF << UNIQ_TRANS_SCALE_SHIFT)
 
-#define _PORT_TX_DW3_LN0_A		0x16250C
 #define _PORT_TX_DW3_LN0_B		0x6C50C
 #define _PORT_TX_DW3_LN0_C		0x6C90C
-#define _PORT_TX_DW3_GRP_A		0x162D0C
 #define _PORT_TX_DW3_GRP_B		0x6CD0C
 #define _PORT_TX_DW3_GRP_C		0x6CF0C
 #define BXT_PORT_TX_DW3_LN0(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
@@ -2421,10 +1729,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   SCALE_DCOMP_METHOD		(1 << 26)
 #define   UNIQUE_TRANGE_EN_METHOD	(1 << 27)
 
-#define _PORT_TX_DW4_LN0_A		0x162510
 #define _PORT_TX_DW4_LN0_B		0x6C510
 #define _PORT_TX_DW4_LN0_C		0x6C910
-#define _PORT_TX_DW4_GRP_A		0x162D10
 #define _PORT_TX_DW4_GRP_B		0x6CD10
 #define _PORT_TX_DW4_GRP_C		0x6CF10
 #define BXT_PORT_TX_DW4_LN0(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
@@ -2436,10 +1742,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   DEEMPH_SHIFT			24
 #define   DE_EMPHASIS			(0xFF << DEEMPH_SHIFT)
 
-#define _PORT_TX_DW5_LN0_A		0x162514
 #define _PORT_TX_DW5_LN0_B		0x6C514
 #define _PORT_TX_DW5_LN0_C		0x6C914
-#define _PORT_TX_DW5_GRP_A		0x162D14
 #define _PORT_TX_DW5_GRP_B		0x6CD14
 #define _PORT_TX_DW5_GRP_C		0x6CF14
 #define BXT_PORT_TX_DW5_LN0(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
@@ -2448,10 +1752,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define BXT_PORT_TX_DW5_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
 							 _PORT_TX_DW5_GRP_B, \
 							 _PORT_TX_DW5_GRP_C)
-#define   DCC_DELAY_RANGE_1		(1 << 9)
 #define   DCC_DELAY_RANGE_2		(1 << 8)
 
-#define _PORT_TX_DW14_LN0_A		0x162538
 #define _PORT_TX_DW14_LN0_B		0x6C538
 #define _PORT_TX_DW14_LN0_C		0x6C938
 #define   LATENCY_OPTIM_SHIFT		30
@@ -2461,17 +1763,12 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 				   _PORT_TX_DW14_LN0_C) +		\
 	      _BXT_LANE_OFFSET(lane))
 
-/* UAIMI scratch pad register 1 */
-#define UAIMI_SPR1			_MMIO(0x4F074)
-/* SKL VccIO mask */
-#define SKL_VCCIO_MASK			0x1
 /* SKL balance leg register */
 #define DISPIO_CR_TX_BMU_CR0		_MMIO(0x6C00C)
 /* I_boost values */
 #define BALANCE_LEG_SHIFT(port)		(8 + 3 * (port))
 #define BALANCE_LEG_MASK(port)		(7 << (8 + 3 * (port)))
 /* Balance leg disable bits */
-#define BALANCE_LEG_DISABLE_SHIFT	23
 #define BALANCE_LEG_DISABLE(port)	(1 << (23 + (port)))
 
 /*
@@ -2485,16 +1782,11 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
  * [0-31] @ 0x100000 gen7+
  */
 #define FENCE_REG(i)			_MMIO(0x2000 + (((i) & 8) << 9) + ((i) & 7) * 4)
-#define   I830_FENCE_START_MASK		0x07f80000
 #define   I830_FENCE_TILING_Y_SHIFT	12
 #define   I830_FENCE_SIZE_BITS(size)	((ffs((size) >> 19) - 1) << 8)
 #define   I830_FENCE_PITCH_SHIFT	4
 #define   I830_FENCE_REG_VALID		(1 << 0)
-#define   I915_FENCE_MAX_PITCH_VAL	4
-#define   I830_FENCE_MAX_PITCH_VAL	6
-#define   I830_FENCE_MAX_SIZE_VAL	(1 << 8)
 
-#define   I915_FENCE_START_MASK		0x0ff00000
 #define   I915_FENCE_SIZE_BITS(size)	((ffs((size) >> 20) - 1) << 8)
 
 #define FENCE_REG_965_LO(i)		_MMIO(0x03000 + (i) * 8)
@@ -2513,9 +1805,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 /* control register for cpu gtt access */
 #define TILECTL				_MMIO(0x101000)
 #define   TILECTL_SWZCTL			(1 << 0)
-#define   TILECTL_TLBPF			(1 << 1)
-#define   TILECTL_TLB_PREFETCH_DIS	(1 << 2)
-#define   TILECTL_BACKSNOOP_DIS		(1 << 3)
 
 /*
  * Instruction and interrupt control regs
@@ -2524,7 +1813,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   PGTBL_ADDRESS_LO_MASK	0xfffff000 /* bits [31:12] */
 #define   PGTBL_ADDRESS_HI_MASK	0x000000f0 /* bits [35:32] (gen4) */
 #define PGTBL_ER	_MMIO(0x02024)
-#define PRB0_BASE	(0x2030 - 0x30)
 #define PRB1_BASE	(0x2040 - 0x30) /* 830,gen3 */
 #define PRB2_BASE	(0x2050 - 0x30) /* gen3 */
 #define SRB0_BASE	(0x2100 - 0x30) /* gen2 */
@@ -2556,20 +1844,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   RING_CTL_SIZE(size)	((size) - PAGE_SIZE) /* in bytes -> pages */
 #define RING_SYNC_0(base)	_MMIO((base) + 0x40)
 #define RING_SYNC_1(base)	_MMIO((base) + 0x44)
-#define RING_SYNC_2(base)	_MMIO((base) + 0x48)
-#define GEN6_RVSYNC	(RING_SYNC_0(RENDER_RING_BASE))
-#define GEN6_RBSYNC	(RING_SYNC_1(RENDER_RING_BASE))
-#define GEN6_RVESYNC	(RING_SYNC_2(RENDER_RING_BASE))
-#define GEN6_VBSYNC	(RING_SYNC_0(GEN6_BSD_RING_BASE))
-#define GEN6_VRSYNC	(RING_SYNC_1(GEN6_BSD_RING_BASE))
-#define GEN6_VVESYNC	(RING_SYNC_2(GEN6_BSD_RING_BASE))
-#define GEN6_BRSYNC	(RING_SYNC_0(BLT_RING_BASE))
-#define GEN6_BVSYNC	(RING_SYNC_1(BLT_RING_BASE))
-#define GEN6_BVESYNC	(RING_SYNC_2(BLT_RING_BASE))
-#define GEN6_VEBSYNC	(RING_SYNC_0(VEBOX_RING_BASE))
-#define GEN6_VERSYNC	(RING_SYNC_1(VEBOX_RING_BASE))
-#define GEN6_VEVSYNC	(RING_SYNC_2(VEBOX_RING_BASE))
-#define GEN6_NOSYNC	INVALID_MMIO_REG
 #define RING_PSMI_CTL(base)	_MMIO((base) + 0x50)
 #define RING_MAX_IDLE(base)	_MMIO((base) + 0x54)
 #define RING_HWS_PGA(base)	_MMIO((base) + 0x80)
@@ -2624,7 +1898,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GEN7_GFX_MAX_REQ_COUNT		_MMIO(0x4074)
 
 #define GAMTARBMODE		_MMIO(0x04a08)
-#define   ARB_MODE_BWGTLB_DISABLE (1 << 9)
 #define   ARB_MODE_SWIZZLE_BDW	(1 << 1)
 #define RENDER_HWS_PGA_GEN7	_MMIO(0x04080)
 
@@ -2680,15 +1953,11 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   RING_VALID_MASK	0x00000001
 #define   RING_VALID		0x00000001
 #define   RING_INVALID		0x00000000
-#define   RING_WAIT_I8XX	(1 << 0) /* gen2, PRBx_HEAD */
 #define   RING_WAIT		(1 << 11) /* gen3+, PRBx_CTL */
 #define   RING_WAIT_SEMAPHORE	(1 << 10) /* gen6+ */
 
-#define GUCPMTIMESTAMP          _MMIO(0xC3E8)
-
 /* There are 16 64-bit CS General Purpose Registers per-engine on Gen8+ */
 #define GEN8_RING_CS_GPR(base, n)	_MMIO((base) + 0x600 + (n) * 8)
-#define GEN8_RING_CS_GPR_UDW(base, n)	_MMIO((base) + 0x600 + (n) * 8 + 4)
 
 #define RING_FORCE_TO_NONPRIV(base, i) _MMIO(((base) + 0x4D0) + (i) * 4)
 #define   RING_FORCE_TO_NONPRIV_ADDRESS_MASK	REG_GENMASK(25, 2)
@@ -2697,10 +1966,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   RING_FORCE_TO_NONPRIV_ACCESS_WR	(2 << 28)
 #define   RING_FORCE_TO_NONPRIV_ACCESS_INVALID	(3 << 28)
 #define   RING_FORCE_TO_NONPRIV_ACCESS_MASK	(3 << 28)
-#define   RING_FORCE_TO_NONPRIV_RANGE_1		(0 << 0)     /* CFL+ & Gen11+ */
 #define   RING_FORCE_TO_NONPRIV_RANGE_4		(1 << 0)
-#define   RING_FORCE_TO_NONPRIV_RANGE_16	(2 << 0)
-#define   RING_FORCE_TO_NONPRIV_RANGE_64	(3 << 0)
 #define   RING_FORCE_TO_NONPRIV_RANGE_MASK	(3 << 0)
 #define   RING_FORCE_TO_NONPRIV_MASK_VALID	\
 					(RING_FORCE_TO_NONPRIV_RANGE_MASK \
@@ -2719,20 +1985,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GAMT_CHKN_BIT_REG	_MMIO(0x4ab8)
 #define   GAMT_CHKN_DISABLE_L3_COH_PIPE			(1 << 31)
 #define   GAMT_CHKN_DISABLE_DYNAMIC_CREDIT_SHARING	(1 << 28)
-#define   GAMT_CHKN_DISABLE_I2M_CYCLE_ON_WR_PORT	(1 << 24)
-
-#if 0
-#define PRB0_TAIL	_MMIO(0x2030)
-#define PRB0_HEAD	_MMIO(0x2034)
-#define PRB0_START	_MMIO(0x2038)
-#define PRB0_CTL	_MMIO(0x203c)
-#define PRB1_TAIL	_MMIO(0x2040) /* 915+ only */
-#define PRB1_HEAD	_MMIO(0x2044) /* 915+ only */
-#define PRB1_START	_MMIO(0x2048) /* 915+ only */
-#define PRB1_CTL	_MMIO(0x204c) /* 915+ only */
-#endif
+
 #define IPEIR_I965	_MMIO(0x2064)
-#define IPEHR_I965	_MMIO(0x2068)
 #define GEN7_SC_INSTDONE	_MMIO(0x7100)
 #define GEN12_SC_INSTDONE_EXTRA		_MMIO(0x7104)
 #define GEN12_SC_INSTDONE_EXTRA2	_MMIO(0x7108)
@@ -2767,25 +2021,14 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define RING_INSTPM(base)	_MMIO((base) + 0xc0)
 #define RING_MI_MODE(base)	_MMIO((base) + 0x9c)
 #define RING_CMD_BUF_CCTL(base) _MMIO((base) + 0x84)
-#define INSTPS		_MMIO(0x2070) /* 965+ only */
 #define GEN4_INSTDONE1	_MMIO(0x207c) /* 965+ only, aka INSTDONE_2 on SNB */
-#define ACTHD_I965	_MMIO(0x2074)
 #define HWS_PGA		_MMIO(0x2080)
-#define HWS_ADDRESS_MASK	0xfffff000
-#define HWS_START_ADDRESS_SHIFT	4
-#define PWRCTXA		_MMIO(0x2088) /* 965GM+ only */
-#define   PWRCTX_EN	(1 << 0)
 #define IPEIR(base)	_MMIO((base) + 0x88)
 #define IPEHR(base)	_MMIO((base) + 0x8c)
 #define GEN2_INSTDONE	_MMIO(0x2090)
-#define NOPID		_MMIO(0x2094)
 #define HWSTAM		_MMIO(0x2098)
 #define DMA_FADD_I8XX(base)	_MMIO((base) + 0xd0)
 #define RING_BBSTATE(base)	_MMIO((base) + 0x110)
-#define   RING_BB_PPGTT		(1 << 5)
-#define RING_SBBADDR(base)	_MMIO((base) + 0x114) /* hsw+ */
-#define RING_SBBSTATE(base)	_MMIO((base) + 0x118) /* hsw+ */
-#define RING_SBBADDR_UDW(base)	_MMIO((base) + 0x11c) /* gen8+ */
 #define RING_BBADDR(base)	_MMIO((base) + 0x140)
 #define RING_BBADDR_UDW(base)	_MMIO((base) + 0x168) /* gen8+ */
 #define RING_BB_PER_CTX_PTR(base)	_MMIO((base) + 0x1c0) /* gen8+ */
@@ -2802,14 +2045,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define ERROR_GEN6	_MMIO(0x40a0)
 #define GEN7_ERR_INT	_MMIO(0x44040)
 #define   ERR_INT_POISON		(1 << 31)
-#define   ERR_INT_MMIO_UNCLAIMED	(1 << 13)
-#define   ERR_INT_PIPE_CRC_DONE_C	(1 << 8)
-#define   ERR_INT_FIFO_UNDERRUN_C	(1 << 6)
-#define   ERR_INT_PIPE_CRC_DONE_B	(1 << 5)
-#define   ERR_INT_FIFO_UNDERRUN_B	(1 << 3)
-#define   ERR_INT_PIPE_CRC_DONE_A	(1 << 2)
 #define   ERR_INT_PIPE_CRC_DONE(pipe)	(1 << (2 + (pipe) * 3))
-#define   ERR_INT_FIFO_UNDERRUN_A	(1 << 0)
 #define   ERR_INT_FIFO_UNDERRUN(pipe)	(1 << ((pipe) * 3))
 
 #define GEN8_FAULT_TLB_DATA0		_MMIO(0x4b10)
@@ -2830,24 +2066,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   CLAIM_ER_CTR_MASK	REG_GENMASK(15, 0)
 
 #define DERRMR		_MMIO(0x44050)
-/* Note that HBLANK events are reserved on bdw+ */
-#define   DERRMR_PIPEA_SCANLINE		(1 << 0)
-#define   DERRMR_PIPEA_PRI_FLIP_DONE	(1 << 1)
-#define   DERRMR_PIPEA_SPR_FLIP_DONE	(1 << 2)
-#define   DERRMR_PIPEA_VBLANK		(1 << 3)
-#define   DERRMR_PIPEA_HBLANK		(1 << 5)
-#define   DERRMR_PIPEB_SCANLINE		(1 << 8)
-#define   DERRMR_PIPEB_PRI_FLIP_DONE	(1 << 9)
-#define   DERRMR_PIPEB_SPR_FLIP_DONE	(1 << 10)
-#define   DERRMR_PIPEB_VBLANK		(1 << 11)
-#define   DERRMR_PIPEB_HBLANK		(1 << 13)
-/* Note that PIPEC is not a simple translation of PIPEA/PIPEB */
-#define   DERRMR_PIPEC_SCANLINE		(1 << 14)
-#define   DERRMR_PIPEC_PRI_FLIP_DONE	(1 << 15)
-#define   DERRMR_PIPEC_SPR_FLIP_DONE	(1 << 20)
-#define   DERRMR_PIPEC_VBLANK		(1 << 21)
-#define   DERRMR_PIPEC_HBLANK		(1 << 22)
-
 
 /* GM45+ chicken bits -- debug workaround bits that may be required
  * for various sorts of correct behavior.  The top 16 bits of each are
@@ -2870,12 +2088,10 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define  _3D_CHICKEN_SF_DISABLE_OBJEND_CULL		(1 << 10)
 #define  _3D_CHICKEN3_AA_LINE_QUALITY_FIX_ENABLE	(1 << 5)
 #define  _3D_CHICKEN3_SF_DISABLE_FASTCLIP_CULL		(1 << 5)
-#define  _3D_CHICKEN_SDE_LIMIT_FIFO_POLY_DEPTH(x)	((x) << 1) /* gen8+ */
 #define  _3D_CHICKEN3_SF_DISABLE_PIPELINED_ATTR_FETCH	(1 << 1) /* gen6 */
 
 #define MI_MODE		_MMIO(0x209c)
 # define VS_TIMER_DISPATCH				(1 << 6)
-# define MI_FLUSH_ENABLE				(1 << 12)
 # define TGL_NESTED_BB_EN				(1 << 12)
 # define ASYNC_FLIP_PERF_DISABLE			(1 << 14)
 # define MODE_IDLE					(1 << 9)
@@ -2884,11 +2100,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GEN6_GT_MODE	_MMIO(0x20d0)
 #define GEN7_GT_MODE	_MMIO(0x7008)
 #define   GEN6_WIZ_HASHING(hi, lo)			(((hi) << 9) | ((lo) << 7))
-#define   GEN6_WIZ_HASHING_8x8				GEN6_WIZ_HASHING(0, 0)
-#define   GEN6_WIZ_HASHING_8x4				GEN6_WIZ_HASHING(0, 1)
 #define   GEN6_WIZ_HASHING_16x4				GEN6_WIZ_HASHING(1, 0)
 #define   GEN6_WIZ_HASHING_MASK				GEN6_WIZ_HASHING(1, 1)
-#define   GEN6_TD_FOUR_ROW_DISPATCH_DISABLE		(1 << 5)
 #define   GEN9_IZ_HASHING_MASK(slice)			(0x3 << ((slice) * 2))
 #define   GEN9_IZ_HASHING(slice, val)			((val) << ((slice) * 2))
 
@@ -2906,34 +2119,13 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define L3SQCREG1_CCS0		_MMIO(0xb200)
 #define   FLUSHALLNONCOH	REG_BIT(5)
 
-/* WaClearTdlStateAckDirtyBits */
-#define GEN8_STATE_ACK		_MMIO(0x20F0)
-#define GEN9_STATE_ACK_SLICE1	_MMIO(0x20F8)
-#define GEN9_STATE_ACK_SLICE2	_MMIO(0x2100)
-#define   GEN9_STATE_ACK_TDL0 (1 << 12)
-#define   GEN9_STATE_ACK_TDL1 (1 << 13)
-#define   GEN9_STATE_ACK_TDL2 (1 << 14)
-#define   GEN9_STATE_ACK_TDL3 (1 << 15)
-#define   GEN9_SUBSLICE_TDL_ACK_BITS \
-	(GEN9_STATE_ACK_TDL3 | GEN9_STATE_ACK_TDL2 | \
-	 GEN9_STATE_ACK_TDL1 | GEN9_STATE_ACK_TDL0)
-
 #define GFX_MODE	_MMIO(0x2520)
 #define GFX_MODE_GEN7	_MMIO(0x229c)
 #define RING_MODE_GEN7(base)	_MMIO((base) + 0x29c)
 #define   GFX_RUN_LIST_ENABLE		(1 << 15)
-#define   GFX_INTERRUPT_STEERING	(1 << 14)
 #define   GFX_TLB_INVALIDATE_EXPLICIT	(1 << 13)
-#define   GFX_SURFACE_FAULT_ENABLE	(1 << 12)
 #define   GFX_REPLAY_MODE		(1 << 11)
-#define   GFX_PSMI_GRANULARITY		(1 << 10)
 #define   GFX_PPGTT_ENABLE		(1 << 9)
-#define   GEN8_GFX_PPGTT_48B		(1 << 7)
-
-#define   GFX_FORWARD_VBLANK_MASK	(3 << 5)
-#define   GFX_FORWARD_VBLANK_NEVER	(0 << 5)
-#define   GFX_FORWARD_VBLANK_ALWAYS	(1 << 5)
-#define   GFX_FORWARD_VBLANK_COND	(2 << 5)
 
 #define   GEN11_GFX_DISABLE_LEGACY_MODE	(1 << 3)
 
@@ -2947,18 +2139,14 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GEN2_IMR	_MMIO(0x20a8)
 #define GEN2_ISR	_MMIO(0x20ac)
 #define VLV_GUNIT_CLOCK_GATE	_MMIO(VLV_DISPLAY_BASE + 0x2060)
-#define   GINT_DIS		(1 << 22)
 #define   GCFG_DIS		(1 << 8)
 #define VLV_GUNIT_CLOCK_GATE2	_MMIO(VLV_DISPLAY_BASE + 0x2064)
-#define VLV_IIR_RW	_MMIO(VLV_DISPLAY_BASE + 0x2084)
 #define VLV_IER		_MMIO(VLV_DISPLAY_BASE + 0x20a0)
 #define VLV_IIR		_MMIO(VLV_DISPLAY_BASE + 0x20a4)
 #define VLV_IMR		_MMIO(VLV_DISPLAY_BASE + 0x20a8)
-#define VLV_ISR		_MMIO(VLV_DISPLAY_BASE + 0x20ac)
 #define VLV_PCBR	_MMIO(VLV_DISPLAY_BASE + 0x2120)
 #define VLV_PCBR_ADDR_SHIFT	12
 
-#define   DISPLAY_PLANE_FLIP_PENDING(plane) (1 << (11 - (plane))) /* A and B only */
 #define EIR		_MMIO(0x20b0)
 #define EMR		_MMIO(0x20b4)
 #define ESR		_MMIO(0x20b8)
@@ -2984,13 +2172,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define FW_BLC		_MMIO(0x20d8)
 #define FW_BLC2		_MMIO(0x20dc)
 #define FW_BLC_SELF	_MMIO(0x20e0) /* 915+ only */
-#define   FW_BLC_SELF_EN_MASK      (1 << 31)
 #define   FW_BLC_SELF_FIFO_MASK    (1 << 16) /* 945 only */
 #define   FW_BLC_SELF_EN           (1 << 15) /* 945 only */
-#define MM_BURST_LENGTH     0x00700000
-#define MM_FIFO_WATERMARK   0x0001F000
-#define LM_BURST_LENGTH     0x00000700
-#define LM_FIFO_WATERMARK   0x0000001F
 #define MI_ARB_STATE	_MMIO(0x20e4) /* 915+ only */
 
 #define _MBUS_ABOX0_CTL			0x45038
@@ -3012,17 +2195,10 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define _PIPEB_MBUS_DBOX_CTL		0x7103C
 #define PIPE_MBUS_DBOX_CTL(pipe)	_MMIO_PIPE(pipe, _PIPEA_MBUS_DBOX_CTL, \
 						   _PIPEB_MBUS_DBOX_CTL)
-#define MBUS_DBOX_BW_CREDIT_MASK	(3 << 14)
 #define MBUS_DBOX_BW_CREDIT(x)		((x) << 14)
-#define MBUS_DBOX_B_CREDIT_MASK		(0x1F << 8)
 #define MBUS_DBOX_B_CREDIT(x)		((x) << 8)
-#define MBUS_DBOX_A_CREDIT_MASK		(0xF << 0)
 #define MBUS_DBOX_A_CREDIT(x)		((x) << 0)
 
-#define MBUS_UBOX_CTL			_MMIO(0x4503C)
-#define MBUS_BBOX_CTL_S1		_MMIO(0x45040)
-#define MBUS_BBOX_CTL_S2		_MMIO(0x45044)
-
 #define MBUS_CTL			_MMIO(0x4438C)
 #define MBUS_JOIN			REG_BIT(31)
 #define MBUS_HASHING_MODE_MASK		REG_BIT(30)
@@ -3037,82 +2213,22 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   HDPORT_DDI_USED(phy)		REG_BIT(2 * (phy) + 1)
 #define   HDPORT_ENABLED		REG_BIT(0)
 
-/* Make render/texture TLB fetches lower priorty than associated data
- *   fetches. This is not turned on by default
- */
-#define   MI_ARB_RENDER_TLB_LOW_PRIORITY	(1 << 15)
-
-/* Isoch request wait on GTT enable (Display A/B/C streams).
- * Make isoch requests stall on the TLB update. May cause
- * display underruns (test mode only)
- */
-#define   MI_ARB_ISOCH_WAIT_GTT			(1 << 14)
-
-/* Block grant count for isoch requests when block count is
- * set to a finite value.
- */
-#define   MI_ARB_BLOCK_GRANT_MASK		(3 << 12)
-#define   MI_ARB_BLOCK_GRANT_8			(0 << 12)	/* for 3 display planes */
-#define   MI_ARB_BLOCK_GRANT_4			(1 << 12)	/* for 2 display planes */
-#define   MI_ARB_BLOCK_GRANT_2			(2 << 12)	/* for 1 display plane */
-#define   MI_ARB_BLOCK_GRANT_0			(3 << 12)	/* don't use */
-
 /* Enable render writes to complete in C2/C3/C4 power states.
  * If this isn't enabled, render writes are prevented in low
  * power states. That seems bad to me.
  */
 #define   MI_ARB_C3_LP_WRITE_ENABLE		(1 << 11)
 
-/* This acknowledges an async flip immediately instead
- * of waiting for 2TLB fetches.
- */
-#define   MI_ARB_ASYNC_FLIP_ACK_IMMEDIATE	(1 << 10)
-
-/* Enables non-sequential data reads through arbiter
- */
-#define   MI_ARB_DUAL_DATA_PHASE_DISABLE	(1 << 9)
-
-/* Disable FSB snooping of cacheable write cycles from binner/render
- * command stream
- */
-#define   MI_ARB_CACHE_SNOOP_DISABLE		(1 << 8)
-
-/* Arbiter time slice for non-isoch streams */
-#define   MI_ARB_TIME_SLICE_MASK		(7 << 5)
-#define   MI_ARB_TIME_SLICE_1			(0 << 5)
-#define   MI_ARB_TIME_SLICE_2			(1 << 5)
-#define   MI_ARB_TIME_SLICE_4			(2 << 5)
-#define   MI_ARB_TIME_SLICE_6			(3 << 5)
-#define   MI_ARB_TIME_SLICE_8			(4 << 5)
-#define   MI_ARB_TIME_SLICE_10			(5 << 5)
-#define   MI_ARB_TIME_SLICE_14			(6 << 5)
-#define   MI_ARB_TIME_SLICE_16			(7 << 5)
-
-/* Low priority grace period page size */
-#define   MI_ARB_LOW_PRIORITY_GRACE_4KB		(0 << 4)	/* default */
-#define   MI_ARB_LOW_PRIORITY_GRACE_8KB		(1 << 4)
-
 /* Disable display A/B trickle feed */
 #define   MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE	(1 << 2)
 
-/* Set display plane priority */
-#define   MI_ARB_DISPLAY_PRIORITY_A_B		(0 << 0)	/* display A > display B */
-#define   MI_ARB_DISPLAY_PRIORITY_B_A		(1 << 0)	/* display B > display A */
-
 #define MI_STATE	_MMIO(0x20e4) /* gen2 only */
 #define   MI_AGPBUSY_INT_EN			(1 << 1) /* 85x only */
 #define   MI_AGPBUSY_830_MODE			(1 << 0) /* 85x only */
 
 #define CACHE_MODE_0	_MMIO(0x2120) /* 915+ only */
 #define   CM0_PIPELINED_RENDER_FLUSH_DISABLE (1 << 8)
-#define   CM0_IZ_OPT_DISABLE      (1 << 6)
-#define   CM0_ZR_OPT_DISABLE      (1 << 5)
 #define	  CM0_STC_EVICT_DISABLE_LRA_SNB	(1 << 5)
-#define   CM0_DEPTH_EVICT_DISABLE (1 << 4)
-#define   CM0_COLOR_EVICT_DISABLE (1 << 3)
-#define   CM0_DEPTH_WRITE_DISABLE (1 << 1)
-#define   CM0_RC_OP_FLUSH_DISABLE (1 << 0)
-#define GFX_FLSH_CNTL	_MMIO(0x2170) /* 915+ only */
 #define GFX_FLSH_CNTL_GEN6	_MMIO(0x101008)
 #define   GFX_FLSH_CNTL_EN	(1 << 0)
 #define ECOSKPD		_MMIO(0x21d0)
@@ -3129,17 +2245,11 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE	(1 << 1)
 
 #define GEN6_BLITTER_ECOSKPD	_MMIO(0x221d0)
-#define   GEN6_BLITTER_LOCK_SHIFT			16
-#define   GEN6_BLITTER_FBC_NOTIFY			(1 << 3)
 
 #define GEN6_RC_SLEEP_PSMI_CONTROL	_MMIO(0x2050)
 #define   GEN6_PSMI_SLEEP_MSG_DISABLE	(1 << 0)
 #define   GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE REG_BIT(7)
 #define   GEN8_RC_SEMA_IDLE_MSG_DISABLE	(1 << 12)
-#define   GEN8_FF_DOP_CLOCK_GATE_DISABLE	(1 << 10)
-
-#define GEN6_RCS_PWR_FSM _MMIO(0x22ac)
-#define GEN9_RCS_FE_FSM2 _MMIO(0x22a4)
 
 #define GEN10_CACHE_MODE_SS			_MMIO(0xe420)
 #define   ENABLE_PREFETCH_INTO_IC		REG_BIT(3)
@@ -3174,13 +2284,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   GEN9_F2_SS_DIS_SHIFT		20
 #define   GEN9_F2_SS_DIS_MASK		(0xf << GEN9_F2_SS_DIS_SHIFT)
 
-#define   GEN10_F2_S_ENA_SHIFT		22
-#define   GEN10_F2_S_ENA_MASK		(0x3f << GEN10_F2_S_ENA_SHIFT)
-#define   GEN10_F2_SS_DIS_SHIFT		18
-#define   GEN10_F2_SS_DIS_MASK		(0xf << GEN10_F2_SS_DIS_SHIFT)
-
 #define	GEN10_MIRROR_FUSE3		_MMIO(0x9118)
-#define GEN10_L3BANK_PAIR_COUNT     4
 #define GEN10_L3BANK_MASK   0x0F
 /* on Xe_HP the same fuses indicates mslices instead of L3 banks */
 #define GEN12_MAX_MSLICES 4
@@ -3189,21 +2293,16 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GEN8_EU_DISABLE0		_MMIO(0x9134)
 #define   GEN8_EU_DIS0_S0_MASK		0xffffff
 #define   GEN8_EU_DIS0_S1_SHIFT		24
-#define   GEN8_EU_DIS0_S1_MASK		(0xff << GEN8_EU_DIS0_S1_SHIFT)
 
 #define GEN8_EU_DISABLE1		_MMIO(0x9138)
 #define   GEN8_EU_DIS1_S1_MASK		0xffff
 #define   GEN8_EU_DIS1_S2_SHIFT		16
-#define   GEN8_EU_DIS1_S2_MASK		(0xffff << GEN8_EU_DIS1_S2_SHIFT)
 
 #define GEN8_EU_DISABLE2		_MMIO(0x913c)
 #define   GEN8_EU_DIS2_S2_MASK		0xff
 
 #define GEN9_EU_DISABLE(slice)		_MMIO(0x9134 + (slice) * 0x4)
 
-#define GEN10_EU_DISABLE3		_MMIO(0x9140)
-#define   GEN10_EU_DIS_SS_MASK		0xff
-
 #define GEN11_GT_VEBOX_VDBOX_DISABLE	_MMIO(0x9140)
 #define   GEN11_GT_VDBOX_DISABLE_MASK	0xff
 #define   GEN11_GT_VEBOX_DISABLE_SHIFT	16
@@ -3225,9 +2324,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 
 #define GEN6_BSD_SLEEP_PSMI_CONTROL	_MMIO(0x12050)
 #define   GEN6_BSD_SLEEP_MSG_DISABLE	(1 << 0)
-#define   GEN6_BSD_SLEEP_FLUSH_DISABLE	(1 << 2)
 #define   GEN6_BSD_SLEEP_INDICATOR	(1 << 3)
-#define   GEN6_BSD_GO_INDICATOR		(1 << 4)
 
 /* On modern GEN architectures interrupt control consists of two sets
  * of registers. The first set pertains to the ring generating the
@@ -3240,7 +2337,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
  * These defines should cover us well from SNB->HSW with minor exceptions
  * it can also work on ILK.
  */
-#define GT_BLT_FLUSHDW_NOTIFY_INTERRUPT		(1 << 26)
 #define GT_BLT_CS_ERROR_INTERRUPT		(1 << 25)
 #define GT_BLT_USER_INTERRUPT			(1 << 22)
 #define GT_BSD_CS_ERROR_INTERRUPT		(1 << 15)
@@ -3249,10 +2345,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GT_WAIT_SEMAPHORE_INTERRUPT		REG_BIT(11) /* bdw+ */
 #define GT_CONTEXT_SWITCH_INTERRUPT		(1 <<  8)
 #define GT_RENDER_L3_PARITY_ERROR_INTERRUPT	(1 <<  5) /* !snb */
-#define GT_RENDER_PIPECTL_NOTIFY_INTERRUPT	(1 <<  4)
 #define GT_CS_MASTER_ERROR_INTERRUPT		REG_BIT(3)
-#define GT_RENDER_SYNC_STATUS_INTERRUPT		(1 <<  2)
-#define GT_RENDER_DEBUG_INTERRUPT		(1 <<  1)
 #define GT_RENDER_USER_INTERRUPT		(1 <<  0)
 
 #define PM_VEBOX_CS_ERROR_INTERRUPT		(1 << 12) /* hsw+ */
@@ -3265,38 +2358,15 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 /* These are all the "old" interrupts */
 #define ILK_BSD_USER_INTERRUPT				(1 << 5)
 
-#define I915_PM_INTERRUPT				(1 << 31)
-#define I915_ISP_INTERRUPT				(1 << 22)
 #define I915_LPE_PIPE_B_INTERRUPT			(1 << 21)
 #define I915_LPE_PIPE_A_INTERRUPT			(1 << 20)
-#define I915_MIPIC_INTERRUPT				(1 << 19)
-#define I915_MIPIA_INTERRUPT				(1 << 18)
-#define I915_PIPE_CONTROL_NOTIFY_INTERRUPT		(1 << 18)
 #define I915_DISPLAY_PORT_INTERRUPT			(1 << 17)
-#define I915_DISPLAY_PIPE_C_HBLANK_INTERRUPT		(1 << 16)
 #define I915_MASTER_ERROR_INTERRUPT			(1 << 15)
-#define I915_DISPLAY_PIPE_B_HBLANK_INTERRUPT		(1 << 14)
-#define I915_GMCH_THERMAL_SENSOR_EVENT_INTERRUPT	(1 << 14) /* p-state */
-#define I915_DISPLAY_PIPE_A_HBLANK_INTERRUPT		(1 << 13)
-#define I915_HWB_OOM_INTERRUPT				(1 << 13)
 #define I915_LPE_PIPE_C_INTERRUPT			(1 << 12)
-#define I915_SYNC_STATUS_INTERRUPT			(1 << 12)
-#define I915_MISC_INTERRUPT				(1 << 11)
-#define I915_DISPLAY_PLANE_A_FLIP_PENDING_INTERRUPT	(1 << 11)
-#define I915_DISPLAY_PIPE_C_VBLANK_INTERRUPT		(1 << 10)
-#define I915_DISPLAY_PLANE_B_FLIP_PENDING_INTERRUPT	(1 << 10)
 #define I915_DISPLAY_PIPE_C_EVENT_INTERRUPT		(1 << 9)
 #define I915_OVERLAY_PLANE_FLIP_PENDING_INTERRUPT	(1 << 9)
-#define I915_DISPLAY_PIPE_C_DPBM_INTERRUPT		(1 << 8)
-#define I915_DISPLAY_PLANE_C_FLIP_PENDING_INTERRUPT	(1 << 8)
-#define I915_DISPLAY_PIPE_A_VBLANK_INTERRUPT		(1 << 7)
 #define I915_DISPLAY_PIPE_A_EVENT_INTERRUPT		(1 << 6)
-#define I915_DISPLAY_PIPE_B_VBLANK_INTERRUPT		(1 << 5)
 #define I915_DISPLAY_PIPE_B_EVENT_INTERRUPT		(1 << 4)
-#define I915_DISPLAY_PIPE_A_DPBM_INTERRUPT		(1 << 3)
-#define I915_DISPLAY_PIPE_B_DPBM_INTERRUPT		(1 << 2)
-#define I915_DEBUG_INTERRUPT				(1 << 2)
-#define I915_WINVALID_INTERRUPT				(1 << 1)
 #define I915_USER_INTERRUPT				(1 << 1)
 #define I915_ASLE_INTERRUPT				(1 << 0)
 #define I915_BSD_USER_INTERRUPT				(1 << 25)
@@ -3323,18 +2393,9 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   GEN7_FF_SCHED_MASK		0x0077070
 #define   GEN8_FF_DS_REF_CNT_FFME	(1 << 19)
 #define   GEN12_FF_TESSELATION_DOP_GATE_DISABLE BIT(19)
-#define   GEN7_FF_TS_SCHED_HS1		(0x5 << 16)
-#define   GEN7_FF_TS_SCHED_HS0		(0x3 << 16)
-#define   GEN7_FF_TS_SCHED_LOAD_BALANCE	(0x1 << 16)
 #define   GEN7_FF_TS_SCHED_HW		(0x0 << 16) /* Default */
 #define   GEN7_FF_VS_REF_CNT_FFME	(1 << 15)
-#define   GEN7_FF_VS_SCHED_HS1		(0x5 << 12)
-#define   GEN7_FF_VS_SCHED_HS0		(0x3 << 12)
-#define   GEN7_FF_VS_SCHED_LOAD_BALANCE	(0x1 << 12) /* Default */
 #define   GEN7_FF_VS_SCHED_HW		(0x0 << 12)
-#define   GEN7_FF_DS_SCHED_HS1		(0x5 << 4)
-#define   GEN7_FF_DS_SCHED_HS0		(0x3 << 4)
-#define   GEN7_FF_DS_SCHED_LOAD_BALANCE	(0x1 << 4)  /* Default */
 #define   GEN7_FF_DS_SCHED_HW		(0x0 << 4)
 
 /*
@@ -3348,40 +2409,23 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   FBC_CTL_PERIODIC		REG_BIT(30)
 #define   FBC_CTL_INTERVAL_MASK		REG_GENMASK(29, 16)
 #define   FBC_CTL_INTERVAL(x)		REG_FIELD_PREP(FBC_CTL_INTERVAL_MASK, (x))
-#define   FBC_CTL_STOP_ON_MOD		REG_BIT(15)
-#define   FBC_CTL_UNCOMPRESSIBLE	REG_BIT(14) /* i915+ */
 #define   FBC_CTL_C3_IDLE		REG_BIT(13) /* i945gm only */
 #define   FBC_CTL_STRIDE_MASK		REG_GENMASK(12, 5)
 #define   FBC_CTL_STRIDE(x)		REG_FIELD_PREP(FBC_CTL_STRIDE_MASK, (x))
 #define   FBC_CTL_FENCENO_MASK		REG_GENMASK(3, 0)
 #define   FBC_CTL_FENCENO(x)		REG_FIELD_PREP(FBC_CTL_FENCENO_MASK, (x))
-#define FBC_COMMAND		_MMIO(0x320c)
-#define   FBC_CMD_COMPRESS		REG_BIT(0)
 #define FBC_STATUS		_MMIO(0x3210)
 #define   FBC_STAT_COMPRESSING		REG_BIT(31)
 #define   FBC_STAT_COMPRESSED		REG_BIT(30)
-#define   FBC_STAT_MODIFIED		REG_BIT(29)
-#define   FBC_STAT_CURRENT_LINE_MASK	REG_GENMASK(10, 0)
 #define FBC_CONTROL2		_MMIO(0x3214) /* i965gm only */
 #define   FBC_CTL_FENCE_DBL		REG_BIT(4)
 #define   FBC_CTL_IDLE_MASK		REG_GENMASK(3, 2)
 #define   FBC_CTL_IDLE_IMM		REG_FIELD_PREP(FBC_CTL_IDLE_MASK, 0)
-#define   FBC_CTL_IDLE_FULL		REG_FIELD_PREP(FBC_CTL_IDLE_MASK, 1)
-#define   FBC_CTL_IDLE_LINE		REG_FIELD_PREP(FBC_CTL_IDLE_MASK, 2)
-#define   FBC_CTL_IDLE_DEBUG		REG_FIELD_PREP(FBC_CTL_IDLE_MASK, 3)
 #define   FBC_CTL_CPU_FENCE_EN		REG_BIT(1)
 #define   FBC_CTL_PLANE_MASK		REG_GENMASK(1, 0)
 #define   FBC_CTL_PLANE(i9xx_plane)	REG_FIELD_PREP(FBC_CTL_PLANE_MASK, (i9xx_plane))
 #define FBC_FENCE_OFF		_MMIO(0x3218)  /* i965gm only, BSpec typo has 321Bh */
-#define FBC_MOD_NUM		_MMIO(0x3220)  /* i965gm only */
-#define   FBC_MOD_NUM_MASK		REG_GENMASK(31, 1)
-#define   FBC_MOD_NUM_VALID		REG_BIT(0)
 #define FBC_TAG(i)		_MMIO(0x3300 + (i) * 4) /* 49 reisters */
-#define   FBC_TAG_MASK			REG_GENMASK(1, 0) /* 16 tags per register */
-#define   FBC_TAG_MODIFIED		REG_FIELD_PREP(FBC_TAG_MASK, 0)
-#define   FBC_TAG_UNCOMPRESSED		REG_FIELD_PREP(FBC_TAG_MASK, 1)
-#define   FBC_TAG_UNCOMPRESSIBLE	REG_FIELD_PREP(FBC_TAG_MASK, 2)
-#define   FBC_TAG_COMPRESSED		REG_FIELD_PREP(FBC_TAG_MASK, 3)
 
 #define FBC_LL_SIZE		(1536)
 
@@ -3397,33 +2441,23 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   DPFC_CTL_PLANE_MASK_IVB		REG_GENMASK(30, 29) /* ivb only */
 #define   DPFC_CTL_PLANE_IVB(i9xx_plane)	REG_FIELD_PREP(DPFC_CTL_PLANE_MASK_IVB, (i9xx_plane))
 #define   DPFC_CTL_FENCE_EN_IVB			REG_BIT(28) /* ivb+ */
-#define   DPFC_CTL_PERSISTENT_MODE		REG_BIT(25) /* g4x-snb */
 #define   DPFC_CTL_FALSE_COLOR			REG_BIT(10) /* ivb+ */
 #define   DPFC_CTL_SR_EN			REG_BIT(10) /* g4x only */
-#define   DPFC_CTL_SR_EXIT_DIS			REG_BIT(9) /* g4x only */
 #define   DPFC_CTL_LIMIT_MASK			REG_GENMASK(7, 6)
 #define   DPFC_CTL_LIMIT_1X			REG_FIELD_PREP(DPFC_CTL_LIMIT_MASK, 0)
 #define   DPFC_CTL_LIMIT_2X			REG_FIELD_PREP(DPFC_CTL_LIMIT_MASK, 1)
 #define   DPFC_CTL_LIMIT_4X			REG_FIELD_PREP(DPFC_CTL_LIMIT_MASK, 2)
 #define   DPFC_CTL_FENCENO_MASK			REG_GENMASK(3, 0)
 #define   DPFC_CTL_FENCENO(fence)		REG_FIELD_PREP(DPFC_CTL_FENCENO_MASK, (fence))
-#define DPFC_RECOMP_CTL			_MMIO(0x320c)
 #define ILK_DPFC_RECOMP_CTL(fbc_id)	_MMIO_PIPE((fbc_id), 0x4320c, 0x4324c)
-#define   DPFC_RECOMP_STALL_EN			REG_BIT(27)
-#define   DPFC_RECOMP_STALL_WM_MASK		REG_GENMASK(26, 16)
-#define   DPFC_RECOMP_TIMER_COUNT_MASK		REG_GENMASK(5, 0)
 #define DPFC_STATUS			_MMIO(0x3210)
 #define ILK_DPFC_STATUS(fbc_id)		_MMIO_PIPE((fbc_id), 0x43210, 0x43250)
-#define   DPFC_INVAL_SEG_MASK			REG_GENMASK(26, 16)
 #define   DPFC_COMP_SEG_MASK			REG_GENMASK(10, 0)
-#define DPFC_STATUS2			_MMIO(0x3214)
 #define ILK_DPFC_STATUS2(fbc_id)	_MMIO_PIPE((fbc_id), 0x43214, 0x43254)
 #define   DPFC_COMP_SEG_MASK_IVB		REG_GENMASK(11, 0)
 #define DPFC_FENCE_YOFF			_MMIO(0x3218)
 #define ILK_DPFC_FENCE_YOFF(fbc_id)	_MMIO_PIPE((fbc_id), 0x43218, 0x43258)
-#define DPFC_CHICKEN			_MMIO(0x3224)
 #define ILK_DPFC_CHICKEN(fbc_id)	_MMIO_PIPE((fbc_id), 0x43224, 0x43264)
-#define   DPFC_HT_MODIFY			REG_BIT(31) /* pre-ivb */
 #define   DPFC_NUKE_ON_ANY_MODIFICATION		REG_BIT(23) /* bdw+ */
 #define   DPFC_CHICKEN_COMP_DUMMY_PIXEL		REG_BIT(14) /* glk+ */
 #define   DPFC_DISABLE_DUMMY0			REG_BIT(8) /* ivb+ */
@@ -3435,23 +2469,10 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 
 #define ILK_FBC_RT_BASE		_MMIO(0x2128)
 #define   ILK_FBC_RT_VALID	REG_BIT(0)
-#define   SNB_FBC_FRONT_BUFFER	REG_BIT(1)
 
 #define ILK_DISPLAY_CHICKEN1	_MMIO(0x42000)
 #define   ILK_FBCQ_DIS		(1 << 22)
 #define   ILK_PABSTRETCH_DIS	REG_BIT(21)
-#define   ILK_SABSTRETCH_DIS	REG_BIT(20)
-#define   IVB_PRI_STRETCH_MAX_MASK	REG_GENMASK(21, 20)
-#define   IVB_PRI_STRETCH_MAX_X8	REG_FIELD_PREP(IVB_PRI_STRETCH_MAX_MASK, 0)
-#define   IVB_PRI_STRETCH_MAX_X4	REG_FIELD_PREP(IVB_PRI_STRETCH_MAX_MASK, 1)
-#define   IVB_PRI_STRETCH_MAX_X2	REG_FIELD_PREP(IVB_PRI_STRETCH_MAX_MASK, 2)
-#define   IVB_PRI_STRETCH_MAX_X1	REG_FIELD_PREP(IVB_PRI_STRETCH_MAX_MASK, 3)
-#define   IVB_SPR_STRETCH_MAX_MASK	REG_GENMASK(19, 18)
-#define   IVB_SPR_STRETCH_MAX_X8	REG_FIELD_PREP(IVB_SPR_STRETCH_MAX_MASK, 0)
-#define   IVB_SPR_STRETCH_MAX_X4	REG_FIELD_PREP(IVB_SPR_STRETCH_MAX_MASK, 1)
-#define   IVB_SPR_STRETCH_MAX_X2	REG_FIELD_PREP(IVB_SPR_STRETCH_MAX_MASK, 2)
-#define   IVB_SPR_STRETCH_MAX_X1	REG_FIELD_PREP(IVB_SPR_STRETCH_MAX_MASK, 3)
-
 
 /*
  * Framebuffer compression for Sandybridge
@@ -3473,7 +2494,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 
 #define MSG_FBC_REND_STATE(fbc_id)	_MMIO_PIPE((fbc_id), 0x50380, 0x50384)
 #define   FBC_REND_NUKE			REG_BIT(2)
-#define   FBC_REND_CACHE_CLEAN		REG_BIT(1)
 
 /*
  * GPIO regs
@@ -3546,17 +2566,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define _CHV_DPLL_C (DISPLAY_MMIO_BASE(dev_priv) + 0x6030)
 #define DPLL(pipe) _MMIO_PIPE3((pipe), _DPLL_A, _DPLL_B, _CHV_DPLL_C)
 
-#define VGA0	_MMIO(0x6000)
-#define VGA1	_MMIO(0x6004)
 #define VGA_PD	_MMIO(0x6010)
-#define   VGA0_PD_P2_DIV_4	(1 << 7)
-#define   VGA0_PD_P1_DIV_2	(1 << 5)
-#define   VGA0_PD_P1_SHIFT	0
-#define   VGA0_PD_P1_MASK	(0x1f << 0)
-#define   VGA1_PD_P2_DIV_4	(1 << 15)
-#define   VGA1_PD_P1_DIV_2	(1 << 13)
-#define   VGA1_PD_P1_SHIFT	8
-#define   VGA1_PD_P1_MASK	(0x1f << 8)
 #define   DPLL_VCO_ENABLE		(1 << 31)
 #define   DPLL_SDVO_HIGH_SPEED		(1 << 30)
 #define   DPLL_DVO_2X_MODE		(1 << 30)
@@ -3588,12 +2598,9 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   DPLL_PORTD_READY_MASK		(0xf)
 #define DISPLAY_PHY_CONTROL _MMIO(VLV_DISPLAY_BASE + 0x60100)
 #define   PHY_CH_POWER_DOWN_OVRD_EN(phy, ch)	(1 << (2 * (phy) + (ch) + 27))
-#define   PHY_LDO_DELAY_0NS			0x0
-#define   PHY_LDO_DELAY_200NS			0x1
 #define   PHY_LDO_DELAY_600NS			0x2
 #define   PHY_LDO_SEQ_DELAY(delay, phy)		((delay) << (2 * (phy) + 23))
 #define   PHY_CH_POWER_DOWN_OVRD(mask, phy, ch)	((mask) << (8 * (phy) + 4 * (ch) + 11))
-#define   PHY_CH_SU_PSR				0x1
 #define   PHY_CH_DEEP_PSR			0x7
 #define   PHY_CH_POWER_MODE(mode, phy, ch)	((mode) << (6 * (phy) + 3 * (ch) + 2))
 #define   PHY_COM_LANE_RESET_DEASSERT(phy)	(1 << (phy))
@@ -3621,9 +2628,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 /* Ironlake */
 # define PLL_REF_SDVO_HDMI_MULTIPLIER_SHIFT     9
 # define PLL_REF_SDVO_HDMI_MULTIPLIER_MASK      (7 << 9)
-# define PLL_REF_SDVO_HDMI_MULTIPLIER(x)	(((x) - 1) << 9)
 # define DPLL_FPA1_P1_POST_DIV_SHIFT            0
-# define DPLL_FPA1_P1_POST_DIV_MASK             0xff
 
 /*
  * Parallel to Serial Load Pulse phase selection.
@@ -3710,113 +2715,34 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   DPLLA_TEST_M_BYPASS		(1 << 2)
 #define   DPLLA_INPUT_BUFFER_ENABLE	(1 << 0)
 #define D_STATE		_MMIO(0x6104)
-#define  DSTATE_GFX_RESET_I830			(1 << 6)
 #define  DSTATE_PLL_D3_OFF			(1 << 3)
 #define  DSTATE_GFX_CLOCK_GATING		(1 << 1)
 #define  DSTATE_DOT_CLOCK_GATING		(1 << 0)
 #define DSPCLK_GATE_D	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x6200)
-# define DPUNIT_B_CLOCK_GATE_DISABLE		(1 << 30) /* 965 */
-# define VSUNIT_CLOCK_GATE_DISABLE		(1 << 29) /* 965 */
 # define VRHUNIT_CLOCK_GATE_DISABLE		(1 << 28) /* 965 */
-# define VRDUNIT_CLOCK_GATE_DISABLE		(1 << 27) /* 965 */
-# define AUDUNIT_CLOCK_GATE_DISABLE		(1 << 26) /* 965 */
-# define DPUNIT_A_CLOCK_GATE_DISABLE		(1 << 25) /* 965 */
 # define DPCUNIT_CLOCK_GATE_DISABLE		(1 << 24) /* 965 */
 # define PNV_GMBUSUNIT_CLOCK_GATE_DISABLE	(1 << 24) /* pnv */
-# define TVRUNIT_CLOCK_GATE_DISABLE		(1 << 23) /* 915-945 */
-# define TVCUNIT_CLOCK_GATE_DISABLE		(1 << 22) /* 915-945 */
-# define TVFUNIT_CLOCK_GATE_DISABLE		(1 << 21) /* 915-945 */
-# define TVEUNIT_CLOCK_GATE_DISABLE		(1 << 20) /* 915-945 */
-# define DVSUNIT_CLOCK_GATE_DISABLE		(1 << 19) /* 915-945 */
 # define DSSUNIT_CLOCK_GATE_DISABLE		(1 << 18) /* 915-945 */
-# define DDBUNIT_CLOCK_GATE_DISABLE		(1 << 17) /* 915-945 */
-# define DPRUNIT_CLOCK_GATE_DISABLE		(1 << 16) /* 915-945 */
-# define DPFUNIT_CLOCK_GATE_DISABLE		(1 << 15) /* 915-945 */
-# define DPBMUNIT_CLOCK_GATE_DISABLE		(1 << 14) /* 915-945 */
 # define DPLSUNIT_CLOCK_GATE_DISABLE		(1 << 13) /* 915-945 */
-# define DPLUNIT_CLOCK_GATE_DISABLE		(1 << 12) /* 915-945 */
 # define DPOUNIT_CLOCK_GATE_DISABLE		(1 << 11)
-# define DPBUNIT_CLOCK_GATE_DISABLE		(1 << 10)
-# define DCUNIT_CLOCK_GATE_DISABLE		(1 << 9)
-# define DPUNIT_CLOCK_GATE_DISABLE		(1 << 8)
-# define VRUNIT_CLOCK_GATE_DISABLE		(1 << 7) /* 915+: reserved */
-# define OVHUNIT_CLOCK_GATE_DISABLE		(1 << 6) /* 830-865 */
 # define DPIOUNIT_CLOCK_GATE_DISABLE		(1 << 6) /* 915-945 */
-# define OVFUNIT_CLOCK_GATE_DISABLE		(1 << 5)
-# define OVBUNIT_CLOCK_GATE_DISABLE		(1 << 4)
 /*
  * This bit must be set on the 830 to prevent hangs when turning off the
  * overlay scaler.
  */
 # define OVRUNIT_CLOCK_GATE_DISABLE		(1 << 3)
 # define OVCUNIT_CLOCK_GATE_DISABLE		(1 << 2)
-# define OVUUNIT_CLOCK_GATE_DISABLE		(1 << 1)
-# define ZVUNIT_CLOCK_GATE_DISABLE		(1 << 0) /* 830 */
-# define OVLUNIT_CLOCK_GATE_DISABLE		(1 << 0) /* 845,865 */
 
 #define RENCLK_GATE_D1		_MMIO(0x6204)
-# define BLITTER_CLOCK_GATE_DISABLE		(1 << 13) /* 945GM only */
-# define MPEG_CLOCK_GATE_DISABLE		(1 << 12) /* 945GM only */
-# define PC_FE_CLOCK_GATE_DISABLE		(1 << 11)
-# define PC_BE_CLOCK_GATE_DISABLE		(1 << 10)
-# define WINDOWER_CLOCK_GATE_DISABLE		(1 << 9)
-# define INTERPOLATOR_CLOCK_GATE_DISABLE	(1 << 8)
-# define COLOR_CALCULATOR_CLOCK_GATE_DISABLE	(1 << 7)
-# define MOTION_COMP_CLOCK_GATE_DISABLE		(1 << 6)
-# define MAG_CLOCK_GATE_DISABLE			(1 << 5)
-/* This bit must be unset on 855,865 */
-# define MECI_CLOCK_GATE_DISABLE		(1 << 4)
-# define DCMP_CLOCK_GATE_DISABLE		(1 << 3)
-# define MEC_CLOCK_GATE_DISABLE			(1 << 2)
-# define MECO_CLOCK_GATE_DISABLE		(1 << 1)
 /* This bit must be set on 855,865. */
 # define SV_CLOCK_GATE_DISABLE			(1 << 0)
-# define I915_MPEG_CLOCK_GATE_DISABLE		(1 << 16)
-# define I915_VLD_IP_PR_CLOCK_GATE_DISABLE	(1 << 15)
-# define I915_MOTION_COMP_CLOCK_GATE_DISABLE	(1 << 14)
-# define I915_BD_BF_CLOCK_GATE_DISABLE		(1 << 13)
-# define I915_SF_SE_CLOCK_GATE_DISABLE		(1 << 12)
-# define I915_WM_CLOCK_GATE_DISABLE		(1 << 11)
-# define I915_IZ_CLOCK_GATE_DISABLE		(1 << 10)
-# define I915_PI_CLOCK_GATE_DISABLE		(1 << 9)
-# define I915_DI_CLOCK_GATE_DISABLE		(1 << 8)
-# define I915_SH_SV_CLOCK_GATE_DISABLE		(1 << 7)
-# define I915_PL_DG_QC_FT_CLOCK_GATE_DISABLE	(1 << 6)
-# define I915_SC_CLOCK_GATE_DISABLE		(1 << 5)
-# define I915_FL_CLOCK_GATE_DISABLE		(1 << 4)
-# define I915_DM_CLOCK_GATE_DISABLE		(1 << 3)
-# define I915_PS_CLOCK_GATE_DISABLE		(1 << 2)
-# define I915_CC_CLOCK_GATE_DISABLE		(1 << 1)
-# define I915_BY_CLOCK_GATE_DISABLE		(1 << 0)
-
 # define I965_RCZ_CLOCK_GATE_DISABLE		(1 << 30)
 /* This bit must always be set on 965G/965GM */
 # define I965_RCC_CLOCK_GATE_DISABLE		(1 << 29)
 # define I965_RCPB_CLOCK_GATE_DISABLE		(1 << 28)
-# define I965_DAP_CLOCK_GATE_DISABLE		(1 << 27)
-# define I965_ROC_CLOCK_GATE_DISABLE		(1 << 26)
-# define I965_GW_CLOCK_GATE_DISABLE		(1 << 25)
-# define I965_TD_CLOCK_GATE_DISABLE		(1 << 24)
 /* This bit must always be set on 965G */
 # define I965_ISC_CLOCK_GATE_DISABLE		(1 << 23)
-# define I965_IC_CLOCK_GATE_DISABLE		(1 << 22)
-# define I965_EU_CLOCK_GATE_DISABLE		(1 << 21)
-# define I965_IF_CLOCK_GATE_DISABLE		(1 << 20)
-# define I965_TC_CLOCK_GATE_DISABLE		(1 << 19)
-# define I965_SO_CLOCK_GATE_DISABLE		(1 << 17)
 # define I965_FBC_CLOCK_GATE_DISABLE		(1 << 16)
-# define I965_MARI_CLOCK_GATE_DISABLE		(1 << 15)
-# define I965_MASF_CLOCK_GATE_DISABLE		(1 << 14)
-# define I965_MAWB_CLOCK_GATE_DISABLE		(1 << 13)
-# define I965_EM_CLOCK_GATE_DISABLE		(1 << 12)
-# define I965_UC_CLOCK_GATE_DISABLE		(1 << 11)
-# define I965_SI_CLOCK_GATE_DISABLE		(1 << 6)
-# define I965_MT_CLOCK_GATE_DISABLE		(1 << 5)
-# define I965_PL_CLOCK_GATE_DISABLE		(1 << 4)
-# define I965_DG_CLOCK_GATE_DISABLE		(1 << 3)
-# define I965_QC_CLOCK_GATE_DISABLE		(1 << 2)
-# define I965_FT_CLOCK_GATE_DISABLE		(1 << 1)
-# define I965_DM_CLOCK_GATE_DISABLE		(1 << 0)
 
 #define RENCLK_GATE_D2		_MMIO(0x6208)
 #define VF_UNIT_CLOCK_GATE_DISABLE		(1 << 9)
@@ -3834,14 +2760,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 
 #define MI_ARB_VLV		_MMIO(VLV_DISPLAY_BASE + 0x6504)
 
-#define CZCLK_CDCLK_FREQ_RATIO	_MMIO(VLV_DISPLAY_BASE + 0x6508)
-#define   CDCLK_FREQ_SHIFT	4
-#define   CDCLK_FREQ_MASK	(0x1f << CDCLK_FREQ_SHIFT)
-#define   CZCLK_FREQ_MASK	0xf
-
 #define GCI_CONTROL		_MMIO(VLV_DISPLAY_BASE + 0x650C)
 #define   PFI_CREDIT_63		(9 << 28)		/* chv only */
-#define   PFI_CREDIT_31		(8 << 28)		/* chv only */
 #define   PFI_CREDIT(x)		(((x) - 8) << 28)	/* 8-15 */
 #define   PFI_CREDIT_RESEND	(1 << 27)
 #define   VGA_FAST_MODE_DISABLE	(1 << 14)
@@ -3910,18 +2830,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define MAD_DIMM_C0			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5004)
 #define MAD_DIMM_C1			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5008)
 #define MAD_DIMM_C2			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x500C)
-#define   MAD_DIMM_ECC_MASK		(0x3 << 24)
-#define   MAD_DIMM_ECC_OFF		(0x0 << 24)
-#define   MAD_DIMM_ECC_IO_ON_LOGIC_OFF	(0x1 << 24)
-#define   MAD_DIMM_ECC_IO_OFF_LOGIC_ON	(0x2 << 24)
-#define   MAD_DIMM_ECC_ON		(0x3 << 24)
-#define   MAD_DIMM_ENH_INTERLEAVE	(0x1 << 22)
-#define   MAD_DIMM_RANK_INTERLEAVE	(0x1 << 21)
-#define   MAD_DIMM_B_WIDTH_X16		(0x1 << 20) /* X8 chips if unset */
-#define   MAD_DIMM_A_WIDTH_X16		(0x1 << 19) /* X8 chips if unset */
-#define   MAD_DIMM_B_DUAL_RANK		(0x1 << 18)
-#define   MAD_DIMM_A_DUAL_RANK		(0x1 << 17)
-#define   MAD_DIMM_A_SELECT		(0x1 << 16)
 /* DIMM sizes are in multiples of 256mb. */
 #define   MAD_DIMM_B_SIZE_SHIFT		8
 #define   MAD_DIMM_B_SIZE_MASK		(0xff << MAD_DIMM_B_SIZE_SHIFT)
@@ -3966,130 +2874,36 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define PXVFREQ(fstart)		_MMIO(0x11110 + (fstart) * 4)  /* P[0-15]VIDFREQ (0x1114c) (Ironlake) */
 #define   PXVFREQ_PX_MASK	0x7f000000
 #define   PXVFREQ_PX_SHIFT	24
-#define VIDFREQ_BASE		_MMIO(0x11110)
-#define VIDFREQ1		_MMIO(0x11110) /* VIDFREQ1-4 (0x1111c) (Cantiga) */
-#define VIDFREQ2		_MMIO(0x11114)
-#define VIDFREQ3		_MMIO(0x11118)
-#define VIDFREQ4		_MMIO(0x1111c)
-#define   VIDFREQ_P0_MASK	0x1f000000
-#define   VIDFREQ_P0_SHIFT	24
-#define   VIDFREQ_P0_CSCLK_MASK	0x00f00000
-#define   VIDFREQ_P0_CSCLK_SHIFT 20
-#define   VIDFREQ_P0_CRCLK_MASK	0x000f0000
-#define   VIDFREQ_P0_CRCLK_SHIFT 16
-#define   VIDFREQ_P1_MASK	0x00001f00
-#define   VIDFREQ_P1_SHIFT	8
-#define   VIDFREQ_P1_CSCLK_MASK	0x000000f0
-#define   VIDFREQ_P1_CSCLK_SHIFT 4
-#define   VIDFREQ_P1_CRCLK_MASK	0x0000000f
-#define INTTOEXT_BASE_ILK	_MMIO(0x11300)
-#define INTTOEXT_BASE		_MMIO(0x11120) /* INTTOEXT1-8 (0x1113c) */
-#define   INTTOEXT_MAP3_SHIFT	24
-#define   INTTOEXT_MAP3_MASK	(0x1f << INTTOEXT_MAP3_SHIFT)
-#define   INTTOEXT_MAP2_SHIFT	16
-#define   INTTOEXT_MAP2_MASK	(0x1f << INTTOEXT_MAP2_SHIFT)
-#define   INTTOEXT_MAP1_SHIFT	8
-#define   INTTOEXT_MAP1_MASK	(0x1f << INTTOEXT_MAP1_SHIFT)
-#define   INTTOEXT_MAP0_SHIFT	0
-#define   INTTOEXT_MAP0_MASK	(0x1f << INTTOEXT_MAP0_SHIFT)
 #define MEMSWCTL		_MMIO(0x11170) /* Ironlake only */
-#define   MEMCTL_CMD_MASK	0xe000
 #define   MEMCTL_CMD_SHIFT	13
-#define   MEMCTL_CMD_RCLK_OFF	0
-#define   MEMCTL_CMD_RCLK_ON	1
 #define   MEMCTL_CMD_CHFREQ	2
-#define   MEMCTL_CMD_CHVID	3
-#define   MEMCTL_CMD_VMMOFF	4
-#define   MEMCTL_CMD_VMMON	5
 #define   MEMCTL_CMD_STS	(1 << 12) /* write 1 triggers command, clears
 					   when command complete */
-#define   MEMCTL_FREQ_MASK	0x0f00 /* jitter, from 0-15 */
 #define   MEMCTL_FREQ_SHIFT	8
 #define   MEMCTL_SFCAVM		(1 << 7)
-#define   MEMCTL_TGT_VID_MASK	0x007f
 #define MEMIHYST		_MMIO(0x1117c)
 #define MEMINTREN		_MMIO(0x11180) /* 16 bits */
-#define   MEMINT_RSEXIT_EN	(1 << 8)
 #define   MEMINT_CX_SUPR_EN	(1 << 7)
-#define   MEMINT_CONT_BUSY_EN	(1 << 6)
-#define   MEMINT_AVG_BUSY_EN	(1 << 5)
 #define   MEMINT_EVAL_CHG_EN	(1 << 4)
-#define   MEMINT_MON_IDLE_EN	(1 << 3)
-#define   MEMINT_UP_EVAL_EN	(1 << 2)
-#define   MEMINT_DOWN_EVAL_EN	(1 << 1)
-#define   MEMINT_SW_CMD_EN	(1 << 0)
-#define MEMINTRSTR		_MMIO(0x11182) /* 16 bits */
-#define   MEM_RSEXIT_MASK	0xc000
-#define   MEM_RSEXIT_SHIFT	14
-#define   MEM_CONT_BUSY_MASK	0x3000
-#define   MEM_CONT_BUSY_SHIFT	12
-#define   MEM_AVG_BUSY_MASK	0x0c00
-#define   MEM_AVG_BUSY_SHIFT	10
-#define   MEM_EVAL_CHG_MASK	0x0300
-#define   MEM_EVAL_BUSY_SHIFT	8
-#define   MEM_MON_IDLE_MASK	0x00c0
-#define   MEM_MON_IDLE_SHIFT	6
-#define   MEM_UP_EVAL_MASK	0x0030
-#define   MEM_UP_EVAL_SHIFT	4
-#define   MEM_DOWN_EVAL_MASK	0x000c
-#define   MEM_DOWN_EVAL_SHIFT	2
-#define   MEM_SW_CMD_MASK	0x0003
-#define   MEM_INT_STEER_GFX	0
-#define   MEM_INT_STEER_CMR	1
-#define   MEM_INT_STEER_SMI	2
-#define   MEM_INT_STEER_SCI	3
 #define MEMINTRSTS		_MMIO(0x11184)
-#define   MEMINT_RSEXIT		(1 << 7)
-#define   MEMINT_CONT_BUSY	(1 << 6)
-#define   MEMINT_AVG_BUSY	(1 << 5)
 #define   MEMINT_EVAL_CHG	(1 << 4)
-#define   MEMINT_MON_IDLE	(1 << 3)
-#define   MEMINT_UP_EVAL	(1 << 2)
-#define   MEMINT_DOWN_EVAL	(1 << 1)
-#define   MEMINT_SW_CMD		(1 << 0)
 #define MEMMODECTL		_MMIO(0x11190)
 #define   MEMMODE_BOOST_EN	(1 << 31)
 #define   MEMMODE_BOOST_FREQ_MASK 0x0f000000 /* jitter for boost, 0-15 */
 #define   MEMMODE_BOOST_FREQ_SHIFT 24
-#define   MEMMODE_IDLE_MODE_MASK 0x00030000
-#define   MEMMODE_IDLE_MODE_SHIFT 16
-#define   MEMMODE_IDLE_MODE_EVAL 0
-#define   MEMMODE_IDLE_MODE_CONT 1
 #define   MEMMODE_HWIDLE_EN	(1 << 15)
 #define   MEMMODE_SWMODE_EN	(1 << 14)
 #define   MEMMODE_RCLK_GATE	(1 << 13)
-#define   MEMMODE_HW_UPDATE	(1 << 12)
 #define   MEMMODE_FSTART_MASK	0x00000f00 /* starting jitter, 0-15 */
 #define   MEMMODE_FSTART_SHIFT	8
 #define   MEMMODE_FMAX_MASK	0x000000f0 /* max jitter, 0-15 */
 #define   MEMMODE_FMAX_SHIFT	4
 #define   MEMMODE_FMIN_MASK	0x0000000f /* min jitter, 0-15 */
 #define RCBMAXAVG		_MMIO(0x1119c)
-#define MEMSWCTL2		_MMIO(0x1119e) /* Cantiga only */
-#define   SWMEMCMD_RENDER_OFF	(0 << 13)
-#define   SWMEMCMD_RENDER_ON	(1 << 13)
-#define   SWMEMCMD_SWFREQ	(2 << 13)
-#define   SWMEMCMD_TARVID	(3 << 13)
-#define   SWMEMCMD_VRM_OFF	(4 << 13)
-#define   SWMEMCMD_VRM_ON	(5 << 13)
-#define   CMDSTS		(1 << 12)
-#define   SFCAVM		(1 << 11)
-#define   SWFREQ_MASK		0x0380 /* P0-7 */
-#define   SWFREQ_SHIFT		7
-#define   TARVID_MASK		0x001f
-#define MEMSTAT_CTG		_MMIO(0x111a0)
 #define RCBMINAVG		_MMIO(0x111a0)
 #define RCUPEI			_MMIO(0x111b0)
 #define RCDNEI			_MMIO(0x111b4)
 #define RSTDBYCTL		_MMIO(0x111b8)
-#define   RS1EN			(1 << 31)
-#define   RS2EN			(1 << 30)
-#define   RS3EN			(1 << 29)
-#define   D3RS3EN		(1 << 28) /* Display D3 imlies RS3 */
-#define   SWPROMORSX		(1 << 27) /* RSx promotion timers ignored */
-#define   RCWAKERW		(1 << 26) /* Resetwarn from PCH causes wakeup */
-#define   DPRSLPVREN		(1 << 25) /* Fast voltage ramp enable */
-#define   GFXTGHYST		(1 << 24) /* Hysteresis to allow trunk gating */
 #define   RCX_SW_EXIT		(1 << 23) /* Leave RSx and prevent re-entry */
 #define   RSX_STATUS_MASK	(7 << 20)
 #define   RSX_STATUS_ON		(0 << 20)
@@ -4097,48 +2911,13 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   RSX_STATUS_RC1E	(2 << 20)
 #define   RSX_STATUS_RS1	(3 << 20)
 #define   RSX_STATUS_RS2	(4 << 20) /* aka rc6 */
-#define   RSX_STATUS_RSVD	(5 << 20) /* deep rc6 unsupported on ilk */
 #define   RSX_STATUS_RS3	(6 << 20) /* rs3 unsupported on ilk */
-#define   RSX_STATUS_RSVD2	(7 << 20)
-#define   UWRCRSXE		(1 << 19) /* wake counter limit prevents rsx */
-#define   RSCRP			(1 << 18) /* rs requests control on rs1/2 reqs */
-#define   JRSC			(1 << 17) /* rsx coupled to cpu c-state */
-#define   RS2INC0		(1 << 16) /* allow rs2 in cpu c0 */
-#define   RS1CONTSAV_MASK	(3 << 14)
-#define   RS1CONTSAV_NO_RS1	(0 << 14) /* rs1 doesn't save/restore context */
-#define   RS1CONTSAV_RSVD	(1 << 14)
-#define   RS1CONTSAV_SAVE_RS1	(2 << 14) /* rs1 saves context */
-#define   RS1CONTSAV_FULL_RS1	(3 << 14) /* rs1 saves and restores context */
-#define   NORMSLEXLAT_MASK	(3 << 12)
-#define   SLOW_RS123		(0 << 12)
-#define   SLOW_RS23		(1 << 12)
-#define   SLOW_RS3		(2 << 12)
-#define   NORMAL_RS123		(3 << 12)
-#define   RCMODE_TIMEOUT	(1 << 11) /* 0 is eval interval method */
-#define   IMPROMOEN		(1 << 10) /* promo is immediate or delayed until next idle interval (only for timeout method above) */
-#define   RCENTSYNC		(1 << 9) /* rs coupled to cpu c-state (3/6/7) */
-#define   STATELOCK		(1 << 7) /* locked to rs_cstate if 0 */
-#define   RS_CSTATE_MASK	(3 << 4)
-#define   RS_CSTATE_C367_RS1	(0 << 4)
-#define   RS_CSTATE_C36_RS1_C7_RS2 (1 << 4)
-#define   RS_CSTATE_RSVD	(2 << 4)
-#define   RS_CSTATE_C367_RS2	(3 << 4)
-#define   REDSAVES		(1 << 3) /* no context save if was idle during rs0 */
-#define   REDRESTORES		(1 << 2) /* no restore if was idle during rs0 */
-#define VIDCTL			_MMIO(0x111c0)
-#define VIDSTS			_MMIO(0x111c8)
 #define VIDSTART		_MMIO(0x111cc) /* 8 bits */
 #define MEMSTAT_ILK		_MMIO(0x111f8)
 #define   MEMSTAT_VID_MASK	0x7f00
 #define   MEMSTAT_VID_SHIFT	8
 #define   MEMSTAT_PSTATE_MASK	0x00f8
 #define   MEMSTAT_PSTATE_SHIFT  3
-#define   MEMSTAT_MON_ACTV	(1 << 2)
-#define   MEMSTAT_SRC_CTL_MASK	0x0003
-#define   MEMSTAT_SRC_CTL_CORE	0
-#define   MEMSTAT_SRC_CTL_TRB	1
-#define   MEMSTAT_SRC_CTL_THM	2
-#define   MEMSTAT_SRC_CTL_STDBY 3
 #define RCPREVBSYTUPAVG		_MMIO(0x113b8)
 #define RCPREVBSYTDNAVG		_MMIO(0x113bc)
 #define PMMISC			_MMIO(0x11214)
@@ -4149,19 +2928,11 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define CSIEW2			_MMIO(0x11258)
 #define PEW(i)			_MMIO(0x1125c + (i) * 4) /* 5 registers */
 #define DEW(i)			_MMIO(0x11270 + (i) * 4) /* 3 registers */
-#define MCHAFE			_MMIO(0x112c0)
 #define CSIEC			_MMIO(0x112e0)
 #define DMIEC			_MMIO(0x112e4)
 #define DDREC			_MMIO(0x112e8)
-#define PEG0EC			_MMIO(0x112ec)
-#define PEG1EC			_MMIO(0x112f0)
 #define GFXEC			_MMIO(0x112f4)
-#define RPPREVBSYTUPAVG		_MMIO(0x113b8)
-#define RPPREVBSYTDNAVG		_MMIO(0x113bc)
 #define ECR			_MMIO(0x11600)
-#define   ECR_GPFE		(1 << 31)
-#define   ECR_IMONE		(1 << 30)
-#define   ECR_CAP_MASK		0x0000001f /* Event range, 0-31 */
 #define OGW0			_MMIO(0x11608)
 #define OGW1			_MMIO(0x1160c)
 #define EG0			_MMIO(0x11610)
@@ -4198,9 +2969,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
  * Logical Context regs
  */
 #define CCID(base)			_MMIO((base) + 0x180)
-#define   CCID_EN			BIT(0)
-#define   CCID_EXTENDED_STATE_RESTORE	BIT(2)
-#define   CCID_EXTENDED_STATE_SAVE	BIT(3)
 /*
  * Notes on SNB/IVB/VLV context size:
  * - Power context is saved elsewhere (LLC or stolen)
@@ -4215,20 +2983,14 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
  *   doesn't need saving on GT1
  */
 #define CXT_SIZE		_MMIO(0x21a0)
-#define GEN6_CXT_POWER_SIZE(cxt_reg)	(((cxt_reg) >> 24) & 0x3f)
 #define GEN6_CXT_RING_SIZE(cxt_reg)	(((cxt_reg) >> 18) & 0x3f)
-#define GEN6_CXT_RENDER_SIZE(cxt_reg)	(((cxt_reg) >> 12) & 0x3f)
 #define GEN6_CXT_EXTENDED_SIZE(cxt_reg)	(((cxt_reg) >> 6) & 0x3f)
 #define GEN6_CXT_PIPELINE_SIZE(cxt_reg)	(((cxt_reg) >> 0) & 0x3f)
 #define GEN6_CXT_TOTAL_SIZE(cxt_reg)	(GEN6_CXT_RING_SIZE(cxt_reg) + \
 					GEN6_CXT_EXTENDED_SIZE(cxt_reg) + \
 					GEN6_CXT_PIPELINE_SIZE(cxt_reg))
 #define GEN7_CXT_SIZE		_MMIO(0x21a8)
-#define GEN7_CXT_POWER_SIZE(ctx_reg)	(((ctx_reg) >> 25) & 0x7f)
-#define GEN7_CXT_RING_SIZE(ctx_reg)	(((ctx_reg) >> 22) & 0x7)
-#define GEN7_CXT_RENDER_SIZE(ctx_reg)	(((ctx_reg) >> 16) & 0x3f)
 #define GEN7_CXT_EXTENDED_SIZE(ctx_reg)	(((ctx_reg) >> 9) & 0x7f)
-#define GEN7_CXT_GT1_SIZE(ctx_reg)	(((ctx_reg) >> 6) & 0x7)
 #define GEN7_CXT_VFSTATE_SIZE(ctx_reg)	(((ctx_reg) >> 0) & 0x3f)
 #define GEN7_CXT_TOTAL_SIZE(ctx_reg)	(GEN7_CXT_EXTENDED_SIZE(ctx_reg) + \
 					 GEN7_CXT_VFSTATE_SIZE(ctx_reg))
@@ -4249,13 +3011,10 @@ enum {
 
 #define CTX_GTT_ADDRESS_MASK GENMASK(31, 12)
 #define GEN8_CTX_VALID (1 << 0)
-#define GEN8_CTX_FORCE_PD_RESTORE (1 << 1)
-#define GEN8_CTX_FORCE_RESTORE (1 << 2)
 #define GEN8_CTX_L3LLC_COHERENT (1 << 5)
 #define GEN8_CTX_PRIVILEGE (1 << 8)
 #define GEN8_CTX_ADDRESSING_MODE_SHIFT 3
 
-#define GEN8_CTX_ID_SHIFT 32
 #define GEN8_CTX_ID_WIDTH 21
 #define GEN11_SW_CTX_ID_SHIFT 37
 #define GEN11_SW_CTX_ID_WIDTH 11
@@ -4266,20 +3025,12 @@ enum {
 
 #define XEHP_SW_CTX_ID_SHIFT 39
 #define XEHP_SW_CTX_ID_WIDTH 16
-#define XEHP_SW_COUNTER_SHIFT 58
-#define XEHP_SW_COUNTER_WIDTH 6
-
-#define CHV_CLK_CTL1			_MMIO(0x101100)
-#define VLV_CLK_CTL2			_MMIO(0x101104)
-#define   CLK_CTL2_CZCOUNT_30NS_SHIFT	28
 
 /*
  * Overlay regs
  */
 
-#define OVADD			_MMIO(0x30000)
 #define DOVSTA			_MMIO(0x30008)
-#define OC_BUF			(0x3 << 20)
 #define OGAMC5			_MMIO(0x30010)
 #define OGAMC4			_MMIO(0x30014)
 #define OGAMC3			_MMIO(0x30018)
@@ -4307,10 +3058,8 @@ enum {
 
 #define _CLKGATE_DIS_PSL_A		0x46520
 #define _CLKGATE_DIS_PSL_B		0x46524
-#define _CLKGATE_DIS_PSL_C		0x46528
 #define   DUPS1_GATING_DIS		(1 << 15)
 #define   DUPS2_GATING_DIS		(1 << 19)
-#define   DUPS3_GATING_DIS		(1 << 23)
 #define   CURSOR_GATING_DIS		REG_BIT(28)
 #define   DPF_GATING_DIS		(1 << 10)
 #define   DPF_RAM_GATING_DIS		(1 << 9)
@@ -4356,9 +3105,6 @@ enum {
 #define   LTCDD_CLKGATE_DIS		REG_BIT(10)
 
 #define SLICE_UNIT_LEVEL_CLKGATE	_MMIO(0x94d4)
-#define  SARBUNIT_CLKGATE_DIS		(1 << 5)
-#define  RCCUNIT_CLKGATE_DIS		(1 << 7)
-#define  MSCUNIT_CLKGATE_DIS		(1 << 10)
 #define  NODEDSS_CLKGATE_DIS		REG_BIT(12)
 #define  L3_CLKGATE_DIS			REG_BIT(16)
 #define  L3_CR2X_CLKGATE_DIS		REG_BIT(17)
@@ -4385,9 +3131,6 @@ enum {
 #define   VSUNIT_CLKGATE_DIS_TGL	REG_BIT(19)
 #define   PSDUNIT_CLKGATE_DIS		REG_BIT(5)
 
-#define INF_UNIT_LEVEL_CLKGATE		_MMIO(0x9560)
-#define   CGPSF_CLKGATE_DIS		(1 << 3)
-
 /*
  * Display engine regs
  */
@@ -4415,14 +3158,9 @@ enum {
 #define   PIPE_CRC_SOURCE_PRIMARY_ILK	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_ILK, 0)
 #define   PIPE_CRC_SOURCE_SPRITE_ILK	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_ILK, 1)
 #define   PIPE_CRC_SOURCE_PIPE_ILK	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_ILK, 2)
-/* embedded DP port on the north display block */
-#define   PIPE_CRC_SOURCE_PORT_A_ILK	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_ILK, 4)
-#define   PIPE_CRC_SOURCE_FDI_ILK	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_ILK, 5)
 /* vlv source selection */
 #define   PIPE_CRC_SOURCE_MASK_VLV	REG_GENMASK(30, 27)
 #define   PIPE_CRC_SOURCE_PIPE_VLV	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_VLV, 0)
-#define   PIPE_CRC_SOURCE_HDMIB_VLV	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_VLV, 1)
-#define   PIPE_CRC_SOURCE_HDMIC_VLV	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_VLV, 2)
 /* with DP port the pipe source is invalid */
 #define   PIPE_CRC_SOURCE_DP_D_VLV	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_VLV, 3)
 #define   PIPE_CRC_SOURCE_DP_B_VLV	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_VLV, 6)
@@ -4430,14 +3168,8 @@ enum {
 /* gen3+ source selection */
 #define   PIPE_CRC_SOURCE_MASK_I9XX	REG_GENMASK(30, 28)
 #define   PIPE_CRC_SOURCE_PIPE_I9XX	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 0)
-#define   PIPE_CRC_SOURCE_SDVOB_I9XX	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 1)
-#define   PIPE_CRC_SOURCE_SDVOC_I9XX	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 2)
 /* with DP/TV port the pipe source is invalid */
-#define   PIPE_CRC_SOURCE_DP_D_G4X	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 3)
 #define   PIPE_CRC_SOURCE_TV_PRE	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 4)
-#define   PIPE_CRC_SOURCE_TV_POST	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 5)
-#define   PIPE_CRC_SOURCE_DP_B_G4X	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 6)
-#define   PIPE_CRC_SOURCE_DP_C_G4X	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 7)
 /* gen2 doesn't have source selection bits */
 #define   PIPE_CRC_INCLUDE_BORDER_I8XX	REG_BIT(30)
 
@@ -4453,13 +3185,6 @@ enum {
 #define _PIPE_CRC_RES_RES1_A_I915	0x6006c
 #define _PIPE_CRC_RES_RES2_A_G4X	0x60080
 
-/* Pipe B CRC regs */
-#define _PIPE_CRC_RES_1_B_IVB		0x61064
-#define _PIPE_CRC_RES_2_B_IVB		0x61068
-#define _PIPE_CRC_RES_3_B_IVB		0x6106c
-#define _PIPE_CRC_RES_4_B_IVB		0x61070
-#define _PIPE_CRC_RES_5_B_IVB		0x61074
-
 #define PIPE_CRC_CTL(pipe)		_MMIO_TRANS2(pipe, _PIPE_CRC_CTL_A)
 #define PIPE_CRC_RES_1_IVB(pipe)	_MMIO_TRANS2(pipe, _PIPE_CRC_RES_1_A_IVB)
 #define PIPE_CRC_RES_2_IVB(pipe)	_MMIO_TRANS2(pipe, _PIPE_CRC_RES_2_A_IVB)
@@ -4486,32 +3211,6 @@ enum {
 #define _VSYNCSHIFT_A	0x60028
 #define _PIPE_MULT_A	0x6002c
 
-/* Pipe B timing regs */
-#define _HTOTAL_B	0x61000
-#define _HBLANK_B	0x61004
-#define _HSYNC_B	0x61008
-#define _VTOTAL_B	0x6100c
-#define _VBLANK_B	0x61010
-#define _VSYNC_B	0x61014
-#define _PIPEBSRC	0x6101c
-#define _BCLRPAT_B	0x61020
-#define _VSYNCSHIFT_B	0x61028
-#define _PIPE_MULT_B	0x6102c
-
-/* DSI 0 timing regs */
-#define _HTOTAL_DSI0		0x6b000
-#define _HSYNC_DSI0		0x6b008
-#define _VTOTAL_DSI0		0x6b00c
-#define _VSYNC_DSI0		0x6b014
-#define _VSYNCSHIFT_DSI0	0x6b028
-
-/* DSI 1 timing regs */
-#define _HTOTAL_DSI1		0x6b800
-#define _HSYNC_DSI1		0x6b808
-#define _VTOTAL_DSI1		0x6b80c
-#define _VSYNC_DSI1		0x6b814
-#define _VSYNCSHIFT_DSI1	0x6b828
-
 #define TRANSCODER_A_OFFSET 0x60000
 #define TRANSCODER_B_OFFSET 0x61000
 #define TRANSCODER_C_OFFSET 0x62000
@@ -4539,9 +3238,6 @@ enum {
 
 /* VRR registers */
 #define _TRANS_VRR_CTL_A		0x60420
-#define _TRANS_VRR_CTL_B		0x61420
-#define _TRANS_VRR_CTL_C		0x62420
-#define _TRANS_VRR_CTL_D		0x63420
 #define TRANS_VRR_CTL(trans)			_MMIO_TRANS2(trans, _TRANS_VRR_CTL_A)
 #define   VRR_CTL_VRR_ENABLE			REG_BIT(31)
 #define   VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
@@ -4553,79 +3249,17 @@ enum {
 #define	  XELPD_VRR_CTL_VRR_GUARDBAND(x)	REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))
 
 #define _TRANS_VRR_VMAX_A		0x60424
-#define _TRANS_VRR_VMAX_B		0x61424
-#define _TRANS_VRR_VMAX_C		0x62424
-#define _TRANS_VRR_VMAX_D		0x63424
 #define TRANS_VRR_VMAX(trans)		_MMIO_TRANS2(trans, _TRANS_VRR_VMAX_A)
-#define   VRR_VMAX_MASK			REG_GENMASK(19, 0)
 
 #define _TRANS_VRR_VMIN_A		0x60434
-#define _TRANS_VRR_VMIN_B		0x61434
-#define _TRANS_VRR_VMIN_C		0x62434
-#define _TRANS_VRR_VMIN_D		0x63434
 #define TRANS_VRR_VMIN(trans)		_MMIO_TRANS2(trans, _TRANS_VRR_VMIN_A)
-#define   VRR_VMIN_MASK			REG_GENMASK(15, 0)
-
-#define _TRANS_VRR_VMAXSHIFT_A		0x60428
-#define _TRANS_VRR_VMAXSHIFT_B		0x61428
-#define _TRANS_VRR_VMAXSHIFT_C		0x62428
-#define _TRANS_VRR_VMAXSHIFT_D		0x63428
-#define TRANS_VRR_VMAXSHIFT(trans)	_MMIO_TRANS2(trans, \
-					_TRANS_VRR_VMAXSHIFT_A)
-#define   VRR_VMAXSHIFT_DEC_MASK	REG_GENMASK(29, 16)
-#define   VRR_VMAXSHIFT_DEC		REG_BIT(16)
-#define   VRR_VMAXSHIFT_INC_MASK	REG_GENMASK(12, 0)
-
-#define _TRANS_VRR_STATUS_A		0x6042C
-#define _TRANS_VRR_STATUS_B		0x6142C
-#define _TRANS_VRR_STATUS_C		0x6242C
-#define _TRANS_VRR_STATUS_D		0x6342C
-#define TRANS_VRR_STATUS(trans)		_MMIO_TRANS2(trans, _TRANS_VRR_STATUS_A)
-#define   VRR_STATUS_VMAX_REACHED	REG_BIT(31)
-#define   VRR_STATUS_NOFLIP_TILL_BNDR	REG_BIT(30)
-#define   VRR_STATUS_FLIP_BEF_BNDR	REG_BIT(29)
-#define   VRR_STATUS_NO_FLIP_FRAME	REG_BIT(28)
-#define   VRR_STATUS_VRR_EN_LIVE	REG_BIT(27)
-#define   VRR_STATUS_FLIPS_SERVICED	REG_BIT(26)
-#define   VRR_STATUS_VBLANK_MASK	REG_GENMASK(22, 20)
-#define   STATUS_FSM_IDLE		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 0)
-#define   STATUS_FSM_WAIT_TILL_FDB	REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 1)
-#define   STATUS_FSM_WAIT_TILL_FS	REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 2)
-#define   STATUS_FSM_WAIT_TILL_FLIP	REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 3)
-#define   STATUS_FSM_PIPELINE_FILL	REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 4)
-#define   STATUS_FSM_ACTIVE		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 5)
-#define   STATUS_FSM_LEGACY_VBLANK	REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 6)
-
-#define _TRANS_VRR_VTOTAL_PREV_A	0x60480
-#define _TRANS_VRR_VTOTAL_PREV_B	0x61480
-#define _TRANS_VRR_VTOTAL_PREV_C	0x62480
-#define _TRANS_VRR_VTOTAL_PREV_D	0x63480
-#define TRANS_VRR_VTOTAL_PREV(trans)	_MMIO_TRANS2(trans, \
-					_TRANS_VRR_VTOTAL_PREV_A)
-#define   VRR_VTOTAL_FLIP_BEFR_BNDR	REG_BIT(31)
-#define   VRR_VTOTAL_FLIP_AFTER_BNDR	REG_BIT(30)
-#define   VRR_VTOTAL_FLIP_AFTER_DBLBUF	REG_BIT(29)
-#define   VRR_VTOTAL_PREV_FRAME_MASK	REG_GENMASK(19, 0)
 
 #define _TRANS_VRR_FLIPLINE_A		0x60438
-#define _TRANS_VRR_FLIPLINE_B		0x61438
-#define _TRANS_VRR_FLIPLINE_C		0x62438
-#define _TRANS_VRR_FLIPLINE_D		0x63438
 #define TRANS_VRR_FLIPLINE(trans)	_MMIO_TRANS2(trans, \
 					_TRANS_VRR_FLIPLINE_A)
-#define   VRR_FLIPLINE_MASK		REG_GENMASK(19, 0)
 
-#define _TRANS_VRR_STATUS2_A		0x6043C
-#define _TRANS_VRR_STATUS2_B		0x6143C
-#define _TRANS_VRR_STATUS2_C		0x6243C
-#define _TRANS_VRR_STATUS2_D		0x6343C
-#define TRANS_VRR_STATUS2(trans)	_MMIO_TRANS2(trans, _TRANS_VRR_STATUS2_A)
-#define   VRR_STATUS2_VERT_LN_CNT_MASK	REG_GENMASK(19, 0)
 
 #define _TRANS_PUSH_A			0x60A70
-#define _TRANS_PUSH_B			0x61A70
-#define _TRANS_PUSH_C			0x62A70
-#define _TRANS_PUSH_D			0x63A70
 #define TRANS_PUSH(trans)		_MMIO_TRANS2(trans, _TRANS_PUSH_A)
 #define   TRANS_PUSH_EN			REG_BIT(31)
 #define   TRANS_PUSH_SEND		REG_BIT(30)
@@ -4640,16 +3274,10 @@ enum {
 #define _SRD_CTL_EDP				0x6f800
 #define EDP_PSR_CTL(tran)			_MMIO(_TRANS2(tran, _SRD_CTL_A))
 #define   EDP_PSR_ENABLE			(1 << 31)
-#define   BDW_PSR_SINGLE_FRAME			(1 << 30)
 #define   EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK	(1 << 29) /* SW can't modify */
 #define   EDP_PSR_LINK_STANDBY			(1 << 27)
-#define   EDP_PSR_MIN_LINK_ENTRY_TIME_MASK	(3 << 25)
 #define   EDP_PSR_MIN_LINK_ENTRY_TIME_8_LINES	(0 << 25)
-#define   EDP_PSR_MIN_LINK_ENTRY_TIME_4_LINES	(1 << 25)
-#define   EDP_PSR_MIN_LINK_ENTRY_TIME_2_LINES	(2 << 25)
-#define   EDP_PSR_MIN_LINK_ENTRY_TIME_0_LINES	(3 << 25)
 #define   EDP_PSR_MAX_SLEEP_TIME_SHIFT		20
-#define   EDP_PSR_SKIP_AUX_EXIT			(1 << 12)
 #define   EDP_PSR_TP1_TP2_SEL			(0 << 11)
 #define   EDP_PSR_TP1_TP3_SEL			(1 << 11)
 #define   EDP_PSR_CRC_ENABLE			(1 << 10) /* BDW+ */
@@ -4682,94 +3310,50 @@ enum {
 #define   EDP_PSR_POST_EXIT(trans)		(0x2 << _EDP_PSR_TRANS_SHIFT(trans))
 #define   EDP_PSR_PRE_ENTRY(trans)		(0x1 << _EDP_PSR_TRANS_SHIFT(trans))
 
-#define _SRD_AUX_DATA_A				0x60814
-#define _SRD_AUX_DATA_EDP			0x6f814
-#define EDP_PSR_AUX_DATA(tran, i)		_MMIO(_TRANS2(tran, _SRD_AUX_DATA_A) + (i) + 4) /* 5 registers */
-
 #define _SRD_STATUS_A				0x60840
-#define _SRD_STATUS_EDP				0x6f840
 #define EDP_PSR_STATUS(tran)			_MMIO(_TRANS2(tran, _SRD_STATUS_A))
 #define   EDP_PSR_STATUS_STATE_MASK		(7 << 29)
 #define   EDP_PSR_STATUS_STATE_SHIFT		29
-#define   EDP_PSR_STATUS_STATE_IDLE		(0 << 29)
-#define   EDP_PSR_STATUS_STATE_SRDONACK		(1 << 29)
-#define   EDP_PSR_STATUS_STATE_SRDENT		(2 << 29)
-#define   EDP_PSR_STATUS_STATE_BUFOFF		(3 << 29)
-#define   EDP_PSR_STATUS_STATE_BUFON		(4 << 29)
-#define   EDP_PSR_STATUS_STATE_AUXACK		(5 << 29)
-#define   EDP_PSR_STATUS_STATE_SRDOFFACK	(6 << 29)
-#define   EDP_PSR_STATUS_LINK_MASK		(3 << 26)
-#define   EDP_PSR_STATUS_LINK_FULL_OFF		(0 << 26)
-#define   EDP_PSR_STATUS_LINK_FULL_ON		(1 << 26)
-#define   EDP_PSR_STATUS_LINK_STANDBY		(2 << 26)
-#define   EDP_PSR_STATUS_MAX_SLEEP_TIMER_SHIFT	20
-#define   EDP_PSR_STATUS_MAX_SLEEP_TIMER_MASK	0x1f
-#define   EDP_PSR_STATUS_COUNT_SHIFT		16
-#define   EDP_PSR_STATUS_COUNT_MASK		0xf
-#define   EDP_PSR_STATUS_AUX_ERROR		(1 << 15)
-#define   EDP_PSR_STATUS_AUX_SENDING		(1 << 12)
-#define   EDP_PSR_STATUS_SENDING_IDLE		(1 << 9)
-#define   EDP_PSR_STATUS_SENDING_TP2_TP3	(1 << 8)
-#define   EDP_PSR_STATUS_SENDING_TP1		(1 << 4)
-#define   EDP_PSR_STATUS_IDLE_MASK		0xf
 
 #define _SRD_PERF_CNT_A			0x60844
-#define _SRD_PERF_CNT_EDP		0x6f844
 #define EDP_PSR_PERF_CNT(tran)		_MMIO(_TRANS2(tran, _SRD_PERF_CNT_A))
 #define   EDP_PSR_PERF_CNT_MASK		0xffffff
 
 /* PSR_MASK on SKL+ */
 #define _SRD_DEBUG_A				0x60860
-#define _SRD_DEBUG_EDP				0x6f860
 #define EDP_PSR_DEBUG(tran)			_MMIO(_TRANS2(tran, _SRD_DEBUG_A))
 #define   EDP_PSR_DEBUG_MASK_MAX_SLEEP         (1 << 28)
 #define   EDP_PSR_DEBUG_MASK_LPSP              (1 << 27)
 #define   EDP_PSR_DEBUG_MASK_MEMUP             (1 << 26)
 #define   EDP_PSR_DEBUG_MASK_HPD               (1 << 25)
 #define   EDP_PSR_DEBUG_MASK_DISP_REG_WRITE    (1 << 16) /* Reserved in ICL+ */
-#define   EDP_PSR_DEBUG_EXIT_ON_PIXEL_UNDERRUN (1 << 15) /* SKL+ */
 
 #define _PSR2_CTL_A				0x60900
-#define _PSR2_CTL_EDP				0x6f900
 #define EDP_PSR2_CTL(tran)			_MMIO_TRANS2(tran, _PSR2_CTL_A)
 #define   EDP_PSR2_ENABLE			(1 << 31)
 #define   EDP_SU_TRACK_ENABLE			(1 << 30) /* up to adl-p */
 #define   TGL_EDP_PSR2_BLOCK_COUNT_NUM_2	(0 << 28)
-#define   TGL_EDP_PSR2_BLOCK_COUNT_NUM_3	(1 << 28)
 #define   EDP_Y_COORDINATE_ENABLE		REG_BIT(25) /* display 10, 11 and 12 */
 #define   EDP_PSR2_SU_SDP_SCANLINE		REG_BIT(25) /* display 13+ */
-#define   EDP_MAX_SU_DISABLE_TIME(t)		((t) << 20)
-#define   EDP_MAX_SU_DISABLE_TIME_MASK		(0x1f << 20)
 #define   EDP_PSR2_IO_BUFFER_WAKE_MAX_LINES	8
 #define   EDP_PSR2_IO_BUFFER_WAKE(lines)	((EDP_PSR2_IO_BUFFER_WAKE_MAX_LINES - (lines)) << 13)
-#define   EDP_PSR2_IO_BUFFER_WAKE_MASK		(3 << 13)
 #define   TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES	5
 #define   TGL_EDP_PSR2_IO_BUFFER_WAKE_SHIFT	13
 #define   TGL_EDP_PSR2_IO_BUFFER_WAKE(lines)	(((lines) - TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES) << TGL_EDP_PSR2_IO_BUFFER_WAKE_SHIFT)
-#define   TGL_EDP_PSR2_IO_BUFFER_WAKE_MASK	(7 << 13)
 #define   EDP_PSR2_FAST_WAKE_MAX_LINES		8
 #define   EDP_PSR2_FAST_WAKE(lines)		((EDP_PSR2_FAST_WAKE_MAX_LINES - (lines)) << 11)
-#define   EDP_PSR2_FAST_WAKE_MASK		(3 << 11)
 #define   TGL_EDP_PSR2_FAST_WAKE_MIN_LINES	5
 #define   TGL_EDP_PSR2_FAST_WAKE_MIN_SHIFT	10
 #define   TGL_EDP_PSR2_FAST_WAKE(lines)		(((lines) - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES) << TGL_EDP_PSR2_FAST_WAKE_MIN_SHIFT)
-#define   TGL_EDP_PSR2_FAST_WAKE_MASK		(7 << 10)
 #define   EDP_PSR2_TP2_TIME_500us		(0 << 8)
 #define   EDP_PSR2_TP2_TIME_100us		(1 << 8)
 #define   EDP_PSR2_TP2_TIME_2500us		(2 << 8)
 #define   EDP_PSR2_TP2_TIME_50us		(3 << 8)
-#define   EDP_PSR2_TP2_TIME_MASK		(3 << 8)
-#define   EDP_PSR2_FRAME_BEFORE_SU_SHIFT	4
-#define   EDP_PSR2_FRAME_BEFORE_SU_MASK		(0xf << 4)
 #define   EDP_PSR2_FRAME_BEFORE_SU(a)		((a) << 4)
 #define   EDP_PSR2_IDLE_FRAME_MASK		0xf
 #define   EDP_PSR2_IDLE_FRAME_SHIFT		0
 
 #define _PSR_EVENT_TRANS_A			0x60848
-#define _PSR_EVENT_TRANS_B			0x61848
-#define _PSR_EVENT_TRANS_C			0x62848
-#define _PSR_EVENT_TRANS_D			0x63848
-#define _PSR_EVENT_TRANS_EDP			0x6f848
 #define PSR_EVENT(tran)				_MMIO_TRANS2(tran, _PSR_EVENT_TRANS_A)
 #define  PSR_EVENT_PSR2_WD_TIMER_EXPIRE		(1 << 17)
 #define  PSR_EVENT_PSR2_DISABLED		(1 << 16)
@@ -4789,13 +3373,11 @@ enum {
 #define  PSR_EVENT_PSR_DISABLE			(1 << 0)
 
 #define _PSR2_STATUS_A				0x60940
-#define _PSR2_STATUS_EDP			0x6f940
 #define EDP_PSR2_STATUS(tran)			_MMIO_TRANS2(tran, _PSR2_STATUS_A)
 #define EDP_PSR2_STATUS_STATE_MASK		REG_GENMASK(31, 28)
 #define EDP_PSR2_STATUS_STATE_DEEP_SLEEP	REG_FIELD_PREP(EDP_PSR2_STATUS_STATE_MASK, 0x8)
 
 #define _PSR2_SU_STATUS_A		0x60914
-#define _PSR2_SU_STATUS_EDP		0x6f914
 #define _PSR2_SU_STATUS(tran, index)	_MMIO(_TRANS2(tran, _PSR2_SU_STATUS_A) + (index) * 4)
 #define PSR2_SU_STATUS(tran, frame)	(_PSR2_SU_STATUS(tran, (frame) / 3))
 #define PSR2_SU_STATUS_SHIFT(frame)	(((frame) % 3) * 10)
@@ -4803,7 +3385,6 @@ enum {
 #define PSR2_SU_STATUS_FRAMES		8
 
 #define _PSR2_MAN_TRK_CTL_A					0x60910
-#define _PSR2_MAN_TRK_CTL_EDP					0x6f910
 #define PSR2_MAN_TRK_CTL(tran)					_MMIO_TRANS2(tran, _PSR2_MAN_TRK_CTL_A)
 #define  PSR2_MAN_TRK_CTL_ENABLE				REG_BIT(31)
 #define  PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK		REG_GENMASK(30, 21)
@@ -4811,14 +3392,12 @@ enum {
 #define  PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK		REG_GENMASK(20, 11)
 #define  PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(val)		REG_FIELD_PREP(PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK, val)
 #define  PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME			REG_BIT(3)
-#define  PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME		REG_BIT(2)
 #define  PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE		REG_BIT(1)
 #define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK	REG_GENMASK(28, 16)
 #define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)	REG_FIELD_PREP(ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)
 #define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK		REG_GENMASK(12, 0)
 #define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(val)		REG_FIELD_PREP(ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK, val)
 #define  ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME		REG_BIT(14)
-#define  ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME		REG_BIT(13)
 
 /* Icelake DSC Rate Control Range Parameter Registers */
 #define DSCA_RC_RANGE_PARAMETERS_0		_MMIO(0x6B240)
@@ -4938,23 +3517,13 @@ enum {
 #define   ADPA_PIPE_SEL_MASK_CPT	(3 << 29)
 #define   ADPA_PIPE_SEL_CPT(pipe)	((pipe) << 29)
 #define   ADPA_CRT_HOTPLUG_MASK  0x03ff0000 /* bit 25-16 */
-#define   ADPA_CRT_HOTPLUG_MONITOR_NONE  (0 << 24)
 #define   ADPA_CRT_HOTPLUG_MONITOR_MASK  (3 << 24)
-#define   ADPA_CRT_HOTPLUG_MONITOR_COLOR (3 << 24)
-#define   ADPA_CRT_HOTPLUG_MONITOR_MONO  (2 << 24)
 #define   ADPA_CRT_HOTPLUG_ENABLE        (1 << 23)
-#define   ADPA_CRT_HOTPLUG_PERIOD_64     (0 << 22)
 #define   ADPA_CRT_HOTPLUG_PERIOD_128    (1 << 22)
-#define   ADPA_CRT_HOTPLUG_WARMUP_5MS    (0 << 21)
 #define   ADPA_CRT_HOTPLUG_WARMUP_10MS   (1 << 21)
-#define   ADPA_CRT_HOTPLUG_SAMPLE_2S     (0 << 20)
 #define   ADPA_CRT_HOTPLUG_SAMPLE_4S     (1 << 20)
-#define   ADPA_CRT_HOTPLUG_VOLTAGE_40    (0 << 18)
 #define   ADPA_CRT_HOTPLUG_VOLTAGE_50    (1 << 18)
-#define   ADPA_CRT_HOTPLUG_VOLTAGE_60    (2 << 18)
-#define   ADPA_CRT_HOTPLUG_VOLTAGE_70    (3 << 18)
 #define   ADPA_CRT_HOTPLUG_VOLREF_325MV  (0 << 17)
-#define   ADPA_CRT_HOTPLUG_VOLREF_475MV  (1 << 17)
 #define   ADPA_CRT_HOTPLUG_FORCE_TRIGGER (1 << 16)
 #define   ADPA_USE_VGA_HVPOLARITY (1 << 15)
 #define   ADPA_SETS_HVPOLARITY	0
@@ -4966,11 +3535,6 @@ enum {
 #define   ADPA_VSYNC_ACTIVE_LOW	0
 #define   ADPA_HSYNC_ACTIVE_HIGH (1 << 3)
 #define   ADPA_HSYNC_ACTIVE_LOW	0
-#define   ADPA_DPMS_MASK	(~(3 << 10))
-#define   ADPA_DPMS_ON		(0 << 10)
-#define   ADPA_DPMS_SUSPEND	(1 << 10)
-#define   ADPA_DPMS_STANDBY	(2 << 10)
-#define   ADPA_DPMS_OFF		(3 << 10)
 
 
 /* Hotplug control (945+ only) */
@@ -4989,7 +3553,6 @@ enum {
 						 SDVOB_HOTPLUG_INT_EN | \
 						 CRT_HOTPLUG_INT_EN)
 #define   CRT_HOTPLUG_FORCE_DETECT		(1 << 3)
-#define CRT_HOTPLUG_ACTIVATION_PERIOD_32	(0 << 8)
 /* must use period 64 on GM45 according to docs */
 #define CRT_HOTPLUG_ACTIVATION_PERIOD_64	(1 << 8)
 #define CRT_HOTPLUG_DAC_ON_TIME_2M		(0 << 7)
@@ -5022,13 +3585,10 @@ enum {
 #define   PORTB_HOTPLUG_LIVE_STATUS_G4X		(1 << 29)
 #define   PORTD_HOTPLUG_INT_STATUS		(3 << 21)
 #define   PORTD_HOTPLUG_INT_LONG_PULSE		(2 << 21)
-#define   PORTD_HOTPLUG_INT_SHORT_PULSE		(1 << 21)
 #define   PORTC_HOTPLUG_INT_STATUS		(3 << 19)
 #define   PORTC_HOTPLUG_INT_LONG_PULSE		(2 << 19)
-#define   PORTC_HOTPLUG_INT_SHORT_PULSE		(1 << 19)
 #define   PORTB_HOTPLUG_INT_STATUS		(3 << 17)
 #define   PORTB_HOTPLUG_INT_LONG_PULSE		(2 << 17)
-#define   PORTB_HOTPLUG_INT_SHORT_PLUSE		(1 << 17)
 /* CRT/TV common between gen3+ */
 #define   CRT_HOTPLUG_INT_STATUS		(1 << 11)
 #define   TV_HOTPLUG_INT_STATUS			(1 << 10)
@@ -5036,9 +3596,6 @@ enum {
 #define   CRT_HOTPLUG_MONITOR_COLOR		(3 << 8)
 #define   CRT_HOTPLUG_MONITOR_MONO		(2 << 8)
 #define   CRT_HOTPLUG_MONITOR_NONE		(0 << 8)
-#define   DP_AUX_CHANNEL_D_INT_STATUS_G4X	(1 << 6)
-#define   DP_AUX_CHANNEL_C_INT_STATUS_G4X	(1 << 5)
-#define   DP_AUX_CHANNEL_B_INT_STATUS_G4X	(1 << 4)
 #define   DP_AUX_CHANNEL_MASK_INT_STATUS_G4X	(7 << 4)
 
 /* SDVO is different across gen3/4 */
@@ -5050,8 +3607,6 @@ enum {
  * bits here (and the comment!) to help any other lost wanderers back onto the
  * right tracks.
  */
-#define   SDVOC_HOTPLUG_INT_STATUS_I965		(3 << 4)
-#define   SDVOB_HOTPLUG_INT_STATUS_I965		(3 << 2)
 #define   SDVOC_HOTPLUG_INT_STATUS_I915		(1 << 7)
 #define   SDVOB_HOTPLUG_INT_STATUS_I915		(1 << 6)
 #define   HOTPLUG_INT_STATUS_G4X		(CRT_HOTPLUG_INT_STATUS | \
@@ -5084,8 +3639,6 @@ enum {
 #define PCH_HDMIC	_MMIO(0xe1150)
 #define PCH_HDMID	_MMIO(0xe1160)
 
-#define PORT_DFT_I9XX				_MMIO(0x61150)
-#define   DC_BALANCE_RESET			(1 << 25)
 #define PORT_DFT2_G4X		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61154)
 #define   DC_BALANCE_RESET_VLV			(1 << 31)
 #define   PIPE_SCRAMBLE_RESET_MASK		((1 << 14) | (0x3 << 0))
@@ -5122,10 +3675,8 @@ enum {
 /* Gen 4 SDVO/HDMI bits: */
 #define   SDVO_COLOR_FORMAT_8bpc		(0 << 26)
 #define   SDVO_COLOR_FORMAT_MASK		(7 << 26)
-#define   SDVO_ENCODING_SDVO			(0 << 10)
 #define   SDVO_ENCODING_HDMI			(2 << 10)
 #define   HDMI_MODE_SELECT_HDMI			(1 << 9) /* HDMI only */
-#define   HDMI_MODE_SELECT_DVI			(0 << 9) /* HDMI only */
 #define   HDMI_COLOR_RANGE_16_235		(1 << 8) /* HDMI only */
 #define   HDMI_AUDIO_ENABLE			(1 << 6) /* HDMI only */
 /* VSYNC/HSYNC bits new with 965, default is to be set */
@@ -5134,7 +3685,6 @@ enum {
 
 /* Gen 5 (IBX) SDVO/HDMI bits: */
 #define   HDMI_COLOR_FORMAT_12bpc		(3 << 26) /* HDMI only */
-#define   SDVOB_HOTPLUG_ENABLE			(1 << 23) /* SDVO only */
 
 /* Gen 6 (CPT) SDVO/HDMI bits: */
 #define   SDVO_PIPE_SEL_SHIFT_CPT		29
@@ -5158,27 +3708,13 @@ enum {
 #define   DVO_PIPE_SEL_SHIFT		30
 #define   DVO_PIPE_SEL_MASK		(1 << 30)
 #define   DVO_PIPE_SEL(pipe)		((pipe) << 30)
-#define   DVO_PIPE_STALL_UNUSED		(0 << 28)
 #define   DVO_PIPE_STALL		(1 << 28)
-#define   DVO_PIPE_STALL_TV		(2 << 28)
-#define   DVO_PIPE_STALL_MASK		(3 << 28)
-#define   DVO_USE_VGA_SYNC		(1 << 15)
-#define   DVO_DATA_ORDER_I740		(0 << 14)
 #define   DVO_DATA_ORDER_FP		(1 << 14)
-#define   DVO_VSYNC_DISABLE		(1 << 11)
-#define   DVO_HSYNC_DISABLE		(1 << 10)
-#define   DVO_VSYNC_TRISTATE		(1 << 9)
-#define   DVO_HSYNC_TRISTATE		(1 << 8)
 #define   DVO_BORDER_ENABLE		(1 << 7)
 #define   DVO_DATA_ORDER_GBRG		(1 << 6)
-#define   DVO_DATA_ORDER_RGGB		(0 << 6)
-#define   DVO_DATA_ORDER_GBRG_ERRATA	(0 << 6)
-#define   DVO_DATA_ORDER_RGGB_ERRATA	(1 << 6)
 #define   DVO_VSYNC_ACTIVE_HIGH		(1 << 4)
 #define   DVO_HSYNC_ACTIVE_HIGH		(1 << 3)
 #define   DVO_BLANK_ACTIVE_HIGH		(1 << 2)
-#define   DVO_OUTPUT_CSTATE_PIXELS	(1 << 1)	/* SDG only */
-#define   DVO_OUTPUT_SOURCE_SIZE_PIXELS	(1 << 0)	/* SDG only */
 #define   DVO_PRESERVE_MASK		(0x7 << 24)
 #define DVOA_SRCDIM		_MMIO(0x61124)
 #define DVOB_SRCDIM		_MMIO(0x61144)
@@ -5263,19 +3799,10 @@ enum {
 #define   VIDEO_DIP_SELECT_GAMUT	(2 << 19)
 #define   VIDEO_DIP_SELECT_SPD		(3 << 19)
 #define   VIDEO_DIP_SELECT_MASK		(3 << 19)
-#define   VIDEO_DIP_FREQ_ONCE		(0 << 16)
 #define   VIDEO_DIP_FREQ_VSYNC		(1 << 16)
-#define   VIDEO_DIP_FREQ_2VSYNC		(2 << 16)
 #define   VIDEO_DIP_FREQ_MASK		(3 << 16)
 /* HSW and later: */
 #define   VIDEO_DIP_ENABLE_DRM_GLK	(1 << 28)
-#define   PSR_VSC_BIT_7_SET		(1 << 27)
-#define   VSC_SELECT_MASK		(0x3 << 25)
-#define   VSC_SELECT_SHIFT		25
-#define   VSC_DIP_HW_HEA_DATA		(0 << 25)
-#define   VSC_DIP_HW_HEA_SW_DATA	(1 << 25)
-#define   VSC_DIP_HW_DATA_SW_HEA	(2 << 25)
-#define   VSC_DIP_SW_HEA_DATA		(3 << 25)
 #define   VDIP_ENABLE_PPS		(1 << 24)
 #define   VIDEO_DIP_ENABLE_VSC_HSW	(1 << 20)
 #define   VIDEO_DIP_ENABLE_GCP_HSW	(1 << 16)
@@ -5306,19 +3833,11 @@ enum {
 #define   PP_READY			REG_BIT(30)
 #define   PP_SEQUENCE_MASK		REG_GENMASK(29, 28)
 #define   PP_SEQUENCE_NONE		REG_FIELD_PREP(PP_SEQUENCE_MASK, 0)
-#define   PP_SEQUENCE_POWER_UP		REG_FIELD_PREP(PP_SEQUENCE_MASK, 1)
 #define   PP_SEQUENCE_POWER_DOWN	REG_FIELD_PREP(PP_SEQUENCE_MASK, 2)
 #define   PP_CYCLE_DELAY_ACTIVE		REG_BIT(27)
 #define   PP_SEQUENCE_STATE_MASK	REG_GENMASK(3, 0)
 #define   PP_SEQUENCE_STATE_OFF_IDLE	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0x0)
-#define   PP_SEQUENCE_STATE_OFF_S0_1	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0x1)
-#define   PP_SEQUENCE_STATE_OFF_S0_2	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0x2)
-#define   PP_SEQUENCE_STATE_OFF_S0_3	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0x3)
 #define   PP_SEQUENCE_STATE_ON_IDLE	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0x8)
-#define   PP_SEQUENCE_STATE_ON_S1_1	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0x9)
-#define   PP_SEQUENCE_STATE_ON_S1_2	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0xa)
-#define   PP_SEQUENCE_STATE_ON_S1_3	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0xb)
-#define   PP_SEQUENCE_STATE_RESET	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0xf)
 
 #define _PP_CONTROL			0x61204
 #define PP_CONTROL(pps_idx)		_MMIO_PPS(pps_idx, _PP_CONTROL)
@@ -5368,7 +3887,6 @@ enum {
 #define   PANEL_8TO6_DITHER_ENABLE (1 << 3)
 #define   PFIT_FILTER_FUZZY	(0 << 24)
 #define   PFIT_SCALING_AUTO	(0 << 26)
-#define   PFIT_SCALING_PROGRAMMED (1 << 26)
 #define   PFIT_SCALING_PILLAR	(2 << 26)
 #define   PFIT_SCALING_LETTER	(3 << 26)
 #define PFIT_PGM_RATIOS _MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61234)
@@ -5379,9 +3897,6 @@ enum {
 #define		PFIT_HORIZ_SCALE_MASK		0x0000fff0
 /* 965+ */
 #define		PFIT_VERT_SCALE_SHIFT_965	16
-#define		PFIT_VERT_SCALE_MASK_965	0x1fff0000
-#define		PFIT_HORIZ_SCALE_SHIFT_965	0
-#define		PFIT_HORIZ_SCALE_MASK_965	0x00001fff
 
 #define PFIT_AUTO_RATIOS _MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61238)
 
@@ -5395,35 +3910,13 @@ enum {
 #define VLV_BLC_PWM_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL_A, \
 					_VLV_BLC_PWM_CTL_B)
 
-#define _VLV_BLC_HIST_CTL_A (DISPLAY_MMIO_BASE(dev_priv) + 0x61260)
-#define _VLV_BLC_HIST_CTL_B (DISPLAY_MMIO_BASE(dev_priv) + 0x61360)
-#define VLV_BLC_HIST_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_HIST_CTL_A, \
-					 _VLV_BLC_HIST_CTL_B)
-
 /* Backlight control */
 #define BLC_PWM_CTL2	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61250) /* 965+ only */
 #define   BLM_PWM_ENABLE		(1 << 31)
 #define   BLM_COMBINATION_MODE		(1 << 30) /* gen4 only */
-#define   BLM_PIPE_SELECT		(1 << 29)
-#define   BLM_PIPE_SELECT_IVB		(3 << 29)
-#define   BLM_PIPE_A			(0 << 29)
-#define   BLM_PIPE_B			(1 << 29)
-#define   BLM_PIPE_C			(2 << 29) /* ivb + */
-#define   BLM_TRANSCODER_A		BLM_PIPE_A /* hsw */
-#define   BLM_TRANSCODER_B		BLM_PIPE_B
-#define   BLM_TRANSCODER_C		BLM_PIPE_C
 #define   BLM_TRANSCODER_EDP		(3 << 29)
 #define   BLM_PIPE(pipe)		((pipe) << 29)
 #define   BLM_POLARITY_I965		(1 << 28) /* gen4 only */
-#define   BLM_PHASE_IN_INTERUPT_STATUS	(1 << 26)
-#define   BLM_PHASE_IN_ENABLE		(1 << 25)
-#define   BLM_PHASE_IN_INTERUPT_ENABL	(1 << 24)
-#define   BLM_PHASE_IN_TIME_BASE_SHIFT	(16)
-#define   BLM_PHASE_IN_TIME_BASE_MASK	(0xff << 16)
-#define   BLM_PHASE_IN_COUNT_SHIFT	(8)
-#define   BLM_PHASE_IN_COUNT_MASK	(0xff << 8)
-#define   BLM_PHASE_IN_INCR_SHIFT	(0)
-#define   BLM_PHASE_IN_INCR_MASK	(0xff << 0)
 #define BLC_PWM_CTL	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61254)
 /*
  * This is the most significant 15 bits of the number of backlight cycles in a
@@ -5466,18 +3959,10 @@ enum {
 
 #define UTIL_PIN_CTL			_MMIO(0x48400)
 #define   UTIL_PIN_ENABLE		(1 << 31)
-#define   UTIL_PIN_PIPE_MASK		(3 << 29)
 #define   UTIL_PIN_PIPE(x)		((x) << 29)
-#define   UTIL_PIN_MODE_MASK		(0xf << 24)
-#define   UTIL_PIN_MODE_DATA		(0 << 24)
 #define   UTIL_PIN_MODE_PWM		(1 << 24)
-#define   UTIL_PIN_MODE_VBLANK		(4 << 24)
-#define   UTIL_PIN_MODE_VSYNC		(5 << 24)
-#define   UTIL_PIN_MODE_EYE_LEVEL	(8 << 24)
-#define   UTIL_PIN_OUTPUT_DATA		(1 << 23)
 #define   UTIL_PIN_POLARITY		(1 << 22)
 #define   UTIL_PIN_DIRECTION_INPUT	(1 << 19)
-#define   UTIL_PIN_INPUT_DATA		(1 << 16)
 
 /* BXT backlight register definition. */
 #define _BXT_BLC_PWM_CTL1			0xC8250
@@ -5514,11 +3999,7 @@ enum {
 # define TV_ENC_OUTPUT_SVIDEO		(1 << 28)
 /* Outputs Component video (DAC A/B/C) */
 # define TV_ENC_OUTPUT_COMPONENT	(2 << 28)
-/* Outputs Composite and SVideo (DAC A/B/C) */
-# define TV_ENC_OUTPUT_SVIDEO_COMPOSITE	(3 << 28)
 # define TV_TRILEVEL_SYNC		(1 << 21)
-/* Enables slow sync generation (945GM only) */
-# define TV_SLOW_SYNC			(1 << 20)
 /* Selects 4x oversampling for 480i and 576p */
 # define TV_OVERSAMPLE_4X		(0 << 18)
 /* Selects 2x oversampling for 720p and 1080i */
@@ -5532,8 +4013,6 @@ enum {
 # define TV_PROGRESSIVE			(1 << 17)
 /* Sets the colorburst to PAL mode.  Required for non-M PAL modes. */
 # define TV_PAL_BURST			(1 << 16)
-/* Field for setting delay of Y compared to C */
-# define TV_YC_SKEW_MASK		(7 << 12)
 /* Enables a fix for 480p/576p standard definition modes on the 915GM only */
 # define TV_ENC_SDP_FIX			(1 << 11)
 /*
@@ -5545,24 +4024,8 @@ enum {
 /* Bits that must be preserved by software */
 # define TV_CTL_SAVE			((1 << 11) | (3 << 9) | (7 << 6) | 0xf)
 # define TV_FUSE_STATE_MASK		(3 << 4)
-/* Read-only state that reports all features enabled */
-# define TV_FUSE_STATE_ENABLED		(0 << 4)
-/* Read-only state that reports that Macrovision is disabled in hardware*/
-# define TV_FUSE_STATE_NO_MACROVISION	(1 << 4)
 /* Read-only state that reports that TV-out is disabled in hardware. */
 # define TV_FUSE_STATE_DISABLED		(2 << 4)
-/* Normal operation */
-# define TV_TEST_MODE_NORMAL		(0 << 0)
-/* Encoder test pattern 1 - combo pattern */
-# define TV_TEST_MODE_PATTERN_1		(1 << 0)
-/* Encoder test pattern 2 - full screen vertical 75% color bars */
-# define TV_TEST_MODE_PATTERN_2		(2 << 0)
-/* Encoder test pattern 3 - full screen horizontal 75% color bars */
-# define TV_TEST_MODE_PATTERN_3		(3 << 0)
-/* Encoder test pattern 4 - random noise */
-# define TV_TEST_MODE_PATTERN_4		(4 << 0)
-/* Encoder test pattern 5 - linear color ramps */
-# define TV_TEST_MODE_PATTERN_5		(5 << 0)
 /*
  * This test mode forces the DACs to 50% of full output.
  *
@@ -5573,12 +4036,6 @@ enum {
 
 #define TV_DAC			_MMIO(0x68004)
 # define TV_DAC_SAVE		0x00ffff00
-/*
- * Reports that DAC state change logic has reported change (RO).
- *
- * This gets cleared when TV_DAC_STATE_EN is cleared
-*/
-# define TVDAC_STATE_CHG		(1 << 31)
 # define TVDAC_SENSE_MASK		(7 << 28)
 /* Reports that DAC A voltage is above the detect threshold */
 # define TVDAC_A_SENSE			(1 << 30)
@@ -5601,18 +4058,10 @@ enum {
 # define TVDAC_C_SENSE_CTL		(1 << 24)
 /* Overrides the ENC_ENABLE and DAC voltage levels */
 # define DAC_CTL_OVERRIDE		(1 << 7)
-/* Sets the slew rate.  Must be preserved in software */
-# define ENC_TVDAC_SLEW_FAST		(1 << 6)
-# define DAC_A_1_3_V			(0 << 4)
-# define DAC_A_1_1_V			(1 << 4)
 # define DAC_A_0_7_V			(2 << 4)
 # define DAC_A_MASK			(3 << 4)
-# define DAC_B_1_3_V			(0 << 2)
-# define DAC_B_1_1_V			(1 << 2)
 # define DAC_B_0_7_V			(2 << 2)
 # define DAC_B_MASK			(3 << 2)
-# define DAC_C_1_3_V			(0 << 0)
-# define DAC_C_1_1_V			(1 << 0)
 # define DAC_C_0_7_V			(2 << 0)
 # define DAC_C_MASK			(3 << 0)
 
@@ -5623,76 +4072,21 @@ enum {
  * -1 (0x3) being the only legal negative value.
  */
 #define TV_CSC_Y		_MMIO(0x68010)
-# define TV_RY_MASK			0x07ff0000
-# define TV_RY_SHIFT			16
-# define TV_GY_MASK			0x00000fff
-# define TV_GY_SHIFT			0
 
 #define TV_CSC_Y2		_MMIO(0x68014)
-# define TV_BY_MASK			0x07ff0000
-# define TV_BY_SHIFT			16
-/*
- * Y attenuation for component video.
- *
- * Stored in 1.9 fixed point.
- */
-# define TV_AY_MASK			0x000003ff
-# define TV_AY_SHIFT			0
 
 #define TV_CSC_U		_MMIO(0x68018)
-# define TV_RU_MASK			0x07ff0000
-# define TV_RU_SHIFT			16
-# define TV_GU_MASK			0x000007ff
-# define TV_GU_SHIFT			0
 
 #define TV_CSC_U2		_MMIO(0x6801c)
-# define TV_BU_MASK			0x07ff0000
-# define TV_BU_SHIFT			16
-/*
- * U attenuation for component video.
- *
- * Stored in 1.9 fixed point.
- */
-# define TV_AU_MASK			0x000003ff
-# define TV_AU_SHIFT			0
 
 #define TV_CSC_V		_MMIO(0x68020)
-# define TV_RV_MASK			0x0fff0000
-# define TV_RV_SHIFT			16
-# define TV_GV_MASK			0x000007ff
-# define TV_GV_SHIFT			0
 
 #define TV_CSC_V2		_MMIO(0x68024)
-# define TV_BV_MASK			0x07ff0000
-# define TV_BV_SHIFT			16
-/*
- * V attenuation for component video.
- *
- * Stored in 1.9 fixed point.
- */
-# define TV_AV_MASK			0x000007ff
-# define TV_AV_SHIFT			0
 
 #define TV_CLR_KNOBS		_MMIO(0x68028)
-/* 2s-complement brightness adjustment */
-# define TV_BRIGHTNESS_MASK		0xff000000
-# define TV_BRIGHTNESS_SHIFT		24
-/* Contrast adjustment, as a 2.6 unsigned floating point number */
-# define TV_CONTRAST_MASK		0x00ff0000
-# define TV_CONTRAST_SHIFT		16
-/* Saturation adjustment, as a 2.6 unsigned floating point number */
-# define TV_SATURATION_MASK		0x0000ff00
-# define TV_SATURATION_SHIFT		8
-/* Hue adjustment, as an integer phase angle in degrees */
-# define TV_HUE_MASK			0x000000ff
-# define TV_HUE_SHIFT			0
 
 #define TV_CLR_LEVEL		_MMIO(0x6802c)
-/* Controls the DAC level for black */
-# define TV_BLACK_LEVEL_MASK		0x01ff0000
 # define TV_BLACK_LEVEL_SHIFT		16
-/* Controls the DAC level for blanking */
-# define TV_BLANK_LEVEL_MASK		0x000001ff
 # define TV_BLANK_LEVEL_SHIFT		0
 
 #define TV_H_CTL_1		_MMIO(0x68030)
@@ -5706,17 +4100,12 @@ enum {
 #define TV_H_CTL_2		_MMIO(0x68034)
 /* Enables the colorburst (needed for non-component color) */
 # define TV_BURST_ENA			(1 << 31)
-/* Offset of the colorburst from the start of hsync, in pixels minus one. */
-# define TV_HBURST_START_SHIFT		16
-# define TV_HBURST_START_MASK		0x1fff0000
-/* Length of the colorburst */
+
 # define TV_HBURST_LEN_SHIFT		0
-# define TV_HBURST_LEN_MASK		0x0001fff
 
 #define TV_H_CTL_3		_MMIO(0x68038)
 /* End of hblank, measured in pixels minus one from start of hsync */
 # define TV_HBLANK_END_SHIFT		16
-# define TV_HBLANK_END_MASK		0x1fff0000
 /* Start of hblank, measured in pixels minus one from start of hsync */
 # define TV_HBLANK_START_SHIFT		0
 # define TV_HBLANK_START_MASK		0x0001fff
@@ -5751,75 +4140,25 @@ enum {
 #define TV_V_CTL_3		_MMIO(0x68044)
 /* Enables generation of the equalization signal */
 # define TV_EQUAL_ENA			(1 << 31)
-/* Length of vsync, in half lines */
-# define TV_VEQ_LEN_MASK		0x007f0000
+
 # define TV_VEQ_LEN_SHIFT		16
-/* Offset of the start of equalization in field 1, measured in one less than
- * the number of half lines.
- */
-# define TV_VEQ_START_F1_MASK		0x0007f00
 # define TV_VEQ_START_F1_SHIFT		8
-/*
- * Offset of the start of equalization in field 2, measured in one less than
- * the number of half lines.
- */
-# define TV_VEQ_START_F2_MASK		0x000007f
 # define TV_VEQ_START_F2_SHIFT		0
 
 #define TV_V_CTL_4		_MMIO(0x68048)
-/*
- * Offset to start of vertical colorburst, measured in one less than the
- * number of lines from vertical start.
- */
-# define TV_VBURST_START_F1_MASK	0x003f0000
 # define TV_VBURST_START_F1_SHIFT	16
-/*
- * Offset to the end of vertical colorburst, measured in one less than the
- * number of lines from the start of NBR.
- */
-# define TV_VBURST_END_F1_MASK		0x000000ff
 # define TV_VBURST_END_F1_SHIFT		0
 
 #define TV_V_CTL_5		_MMIO(0x6804c)
-/*
- * Offset to start of vertical colorburst, measured in one less than the
- * number of lines from vertical start.
- */
-# define TV_VBURST_START_F2_MASK	0x003f0000
 # define TV_VBURST_START_F2_SHIFT	16
-/*
- * Offset to the end of vertical colorburst, measured in one less than the
- * number of lines from the start of NBR.
- */
-# define TV_VBURST_END_F2_MASK		0x000000ff
 # define TV_VBURST_END_F2_SHIFT		0
 
 #define TV_V_CTL_6		_MMIO(0x68050)
-/*
- * Offset to start of vertical colorburst, measured in one less than the
- * number of lines from vertical start.
- */
-# define TV_VBURST_START_F3_MASK	0x003f0000
 # define TV_VBURST_START_F3_SHIFT	16
-/*
- * Offset to the end of vertical colorburst, measured in one less than the
- * number of lines from the start of NBR.
- */
-# define TV_VBURST_END_F3_MASK		0x000000ff
 # define TV_VBURST_END_F3_SHIFT		0
 
 #define TV_V_CTL_7		_MMIO(0x68054)
-/*
- * Offset to start of vertical colorburst, measured in one less than the
- * number of lines from vertical start.
- */
-# define TV_VBURST_START_F4_MASK	0x003f0000
 # define TV_VBURST_START_F4_SHIFT	16
-/*
- * Offset to the end of vertical colorburst, measured in one less than the
- * number of lines from the start of NBR.
- */
-# define TV_VBURST_END_F4_MASK		0x000000ff
 # define TV_VBURST_END_F4_SHIFT		0
 
 #define TV_SC_CTL_1		_MMIO(0x68060)
@@ -5829,56 +4168,26 @@ enum {
 # define TV_SC_DDA2_EN			(1 << 30)
 /* Turns on the first subcarrier phase generation DDA */
 # define TV_SC_DDA3_EN			(1 << 29)
-/* Sets the subcarrier DDA to reset frequency every other field */
-# define TV_SC_RESET_EVERY_2		(0 << 24)
 /* Sets the subcarrier DDA to reset frequency every fourth field */
 # define TV_SC_RESET_EVERY_4		(1 << 24)
 /* Sets the subcarrier DDA to reset frequency every eighth field */
 # define TV_SC_RESET_EVERY_8		(2 << 24)
 /* Sets the subcarrier DDA to never reset the frequency */
 # define TV_SC_RESET_NEVER		(3 << 24)
-/* Sets the peak amplitude of the colorburst.*/
-# define TV_BURST_LEVEL_MASK		0x00ff0000
 # define TV_BURST_LEVEL_SHIFT		16
-/* Sets the increment of the first subcarrier phase generation DDA */
-# define TV_SCDDA1_INC_MASK		0x00000fff
 # define TV_SCDDA1_INC_SHIFT		0
 
 #define TV_SC_CTL_2		_MMIO(0x68064)
-/* Sets the rollover for the second subcarrier phase generation DDA */
-# define TV_SCDDA2_SIZE_MASK		0x7fff0000
 # define TV_SCDDA2_SIZE_SHIFT		16
-/* Sets the increent of the second subcarrier phase generation DDA */
-# define TV_SCDDA2_INC_MASK		0x00007fff
 # define TV_SCDDA2_INC_SHIFT		0
 
 #define TV_SC_CTL_3		_MMIO(0x68068)
-/* Sets the rollover for the third subcarrier phase generation DDA */
-# define TV_SCDDA3_SIZE_MASK		0x7fff0000
 # define TV_SCDDA3_SIZE_SHIFT		16
-/* Sets the increent of the third subcarrier phase generation DDA */
-# define TV_SCDDA3_INC_MASK		0x00007fff
 # define TV_SCDDA3_INC_SHIFT		0
 
 #define TV_WIN_POS		_MMIO(0x68070)
-/* X coordinate of the display from the start of horizontal active */
-# define TV_XPOS_MASK			0x1fff0000
-# define TV_XPOS_SHIFT			16
-/* Y coordinate of the display from the start of vertical active (NBR) */
-# define TV_YPOS_MASK			0x00000fff
-# define TV_YPOS_SHIFT			0
 
 #define TV_WIN_SIZE		_MMIO(0x68074)
-/* Horizontal size of the display window, measured in pixels*/
-# define TV_XSIZE_MASK			0x1fff0000
-# define TV_XSIZE_SHIFT			16
-/*
- * Vertical size of the display window, measured in pixels.
- *
- * Must be even for interlaced modes.
- */
-# define TV_YSIZE_MASK			0x00000fff
-# define TV_YSIZE_SHIFT			0
 
 #define TV_FILTER_CTL_1		_MMIO(0x68080)
 /*
@@ -5893,86 +4202,6 @@ enum {
  *
  * This is required on modes more than 1024 pixels wide */
 # define TV_V_FILTER_BYPASS		(1 << 29)
-/* Enables adaptive vertical filtering */
-# define TV_VADAPT			(1 << 28)
-# define TV_VADAPT_MODE_MASK		(3 << 26)
-/* Selects the least adaptive vertical filtering mode */
-# define TV_VADAPT_MODE_LEAST		(0 << 26)
-/* Selects the moderately adaptive vertical filtering mode */
-# define TV_VADAPT_MODE_MODERATE	(1 << 26)
-/* Selects the most adaptive vertical filtering mode */
-# define TV_VADAPT_MODE_MOST		(3 << 26)
-/*
- * Sets the horizontal scaling factor.
- *
- * This should be the fractional part of the horizontal scaling factor divided
- * by the oversampling rate.  TV_HSCALE should be less than 1, and set to:
- *
- * (src width - 1) / ((oversample * dest width) - 1)
- */
-# define TV_HSCALE_FRAC_MASK		0x00003fff
-# define TV_HSCALE_FRAC_SHIFT		0
-
-#define TV_FILTER_CTL_2		_MMIO(0x68084)
-/*
- * Sets the integer part of the 3.15 fixed-point vertical scaling factor.
- *
- * TV_VSCALE should be (src height - 1) / ((interlace * dest height) - 1)
- */
-# define TV_VSCALE_INT_MASK		0x00038000
-# define TV_VSCALE_INT_SHIFT		15
-/*
- * Sets the fractional part of the 3.15 fixed-point vertical scaling factor.
- *
- * \sa TV_VSCALE_INT_MASK
- */
-# define TV_VSCALE_FRAC_MASK		0x00007fff
-# define TV_VSCALE_FRAC_SHIFT		0
-
-#define TV_FILTER_CTL_3		_MMIO(0x68088)
-/*
- * Sets the integer part of the 3.15 fixed-point vertical scaling factor.
- *
- * TV_VSCALE should be (src height - 1) / (1/4 * (dest height - 1))
- *
- * For progressive modes, TV_VSCALE_IP_INT should be set to zeroes.
- */
-# define TV_VSCALE_IP_INT_MASK		0x00038000
-# define TV_VSCALE_IP_INT_SHIFT		15
-/*
- * Sets the fractional part of the 3.15 fixed-point vertical scaling factor.
- *
- * For progressive modes, TV_VSCALE_IP_INT should be set to zeroes.
- *
- * \sa TV_VSCALE_IP_INT_MASK
- */
-# define TV_VSCALE_IP_FRAC_MASK		0x00007fff
-# define TV_VSCALE_IP_FRAC_SHIFT		0
-
-#define TV_CC_CONTROL		_MMIO(0x68090)
-# define TV_CC_ENABLE			(1 << 31)
-/*
- * Specifies which field to send the CC data in.
- *
- * CC data is usually sent in field 0.
- */
-# define TV_CC_FID_MASK			(1 << 27)
-# define TV_CC_FID_SHIFT		27
-/* Sets the horizontal position of the CC data.  Usually 135. */
-# define TV_CC_HOFF_MASK		0x03ff0000
-# define TV_CC_HOFF_SHIFT		16
-/* Sets the vertical position of the CC data.  Usually 21 */
-# define TV_CC_LINE_MASK		0x0000003f
-# define TV_CC_LINE_SHIFT		0
-
-#define TV_CC_DATA		_MMIO(0x68094)
-# define TV_CC_RDY			(1 << 31)
-/* Second word of CC data to be transmitted. */
-# define TV_CC_DATA_2_MASK		0x007f0000
-# define TV_CC_DATA_2_SHIFT		16
-/* First word of CC data to be transmitted. */
-# define TV_CC_DATA_1_MASK		0x0000007f
-# define TV_CC_DATA_1_SHIFT		0
 
 #define TV_H_LUMA(i)		_MMIO(0x68100 + (i) * 4) /* 60 registers */
 #define TV_H_CHROMA(i)		_MMIO(0x68200 + (i) * 4) /* 60 registers */
@@ -6014,7 +4243,6 @@ enum {
 #define   DP_LINK_TRAIN_PAT_IDLE_CPT	(2 << 8)
 #define   DP_LINK_TRAIN_OFF_CPT		(3 << 8)
 #define   DP_LINK_TRAIN_MASK_CPT	(7 << 8)
-#define   DP_LINK_TRAIN_SHIFT_CPT	8
 
 /* Signal voltages. These are mostly controlled by the other end */
 #define   DP_VOLTAGE_0_4		(0 << 25)
@@ -6107,11 +4335,7 @@ enum {
 #define   DP_AUX_CH_CTL_PRECHARGE_TEST	    (1 << 11)
 #define   DP_AUX_CH_CTL_BIT_CLOCK_2X_MASK    (0x7ff)
 #define   DP_AUX_CH_CTL_BIT_CLOCK_2X_SHIFT   0
-#define   DP_AUX_CH_CTL_PSR_DATA_AUX_REG_SKL	(1 << 14)
-#define   DP_AUX_CH_CTL_FS_DATA_AUX_REG_SKL	(1 << 13)
-#define   DP_AUX_CH_CTL_GTC_DATA_AUX_REG_SKL	(1 << 12)
 #define   DP_AUX_CH_CTL_TBT_IO			(1 << 11)
-#define   DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL_MASK (0x1f << 5)
 #define   DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL(c) (((c) - 1) << 5)
 #define   DP_AUX_CH_CTL_SYNC_PULSE_SKL(c)   ((c) - 1)
 
@@ -6175,22 +4399,13 @@ enum {
 #define   DSL_LINEMASK_GEN3	0x00001fff
 #define _PIPEACONF		0x70008
 #define   PIPECONF_ENABLE	(1 << 31)
-#define   PIPECONF_DISABLE	0
 #define   PIPECONF_DOUBLE_WIDE	(1 << 30)
 #define   I965_PIPECONF_ACTIVE	(1 << 30)
-#define   PIPECONF_DSI_PLL_LOCKED	(1 << 29) /* vlv & pipe A only */
 #define   PIPECONF_FRAME_START_DELAY_MASK	(3 << 27) /* pre-hsw */
 #define   PIPECONF_FRAME_START_DELAY(x)		((x) << 27) /* pre-hsw: 0-3 */
-#define   PIPECONF_SINGLE_WIDE	0
-#define   PIPECONF_PIPE_UNLOCKED 0
-#define   PIPECONF_PIPE_LOCKED	(1 << 25)
 #define   PIPECONF_FORCE_BORDER	(1 << 25)
 #define   PIPECONF_GAMMA_MODE_MASK_I9XX	(1 << 24) /* gmch */
 #define   PIPECONF_GAMMA_MODE_MASK_ILK	(3 << 24) /* ilk-ivb */
-#define   PIPECONF_GAMMA_MODE_8BIT	(0 << 24) /* gmch,ilk-ivb */
-#define   PIPECONF_GAMMA_MODE_10BIT	(1 << 24) /* gmch,ilk-ivb */
-#define   PIPECONF_GAMMA_MODE_12BIT	(2 << 24) /* ilk-ivb */
-#define   PIPECONF_GAMMA_MODE_SPLIT	(3 << 24) /* ivb */
 #define   PIPECONF_GAMMA_MODE(x)	((x) << 24) /* pass in GAMMA_MODE_MODE_* */
 #define   PIPECONF_GAMMA_MODE_SHIFT	24
 #define   PIPECONF_INTERLACE_MASK	(7 << 21)
@@ -6198,24 +4413,17 @@ enum {
 /* Note that pre-gen3 does not support interlaced display directly. Panel
  * fitting must be disabled on pre-ilk for interlaced. */
 #define   PIPECONF_PROGRESSIVE			(0 << 21)
-#define   PIPECONF_INTERLACE_W_SYNC_SHIFT_PANEL	(4 << 21) /* gen4 only */
 #define   PIPECONF_INTERLACE_W_SYNC_SHIFT	(5 << 21) /* gen4 only */
 #define   PIPECONF_INTERLACE_W_FIELD_INDICATION	(6 << 21)
 #define   PIPECONF_INTERLACE_FIELD_0_ONLY	(7 << 21) /* gen3 only */
 /* Ironlake and later have a complete new set of values for interlaced. PFIT
  * means panel fitter required, PF means progressive fetch, DBL means power
  * saving pixel doubling. */
-#define   PIPECONF_PFIT_PF_INTERLACED_ILK	(1 << 21)
 #define   PIPECONF_INTERLACED_ILK		(3 << 21)
-#define   PIPECONF_INTERLACED_DBL_ILK		(4 << 21) /* ilk/snb only */
-#define   PIPECONF_PFIT_PF_INTERLACED_DBL_ILK	(5 << 21) /* ilk/snb only */
-#define   PIPECONF_INTERLACE_MODE_MASK		(7 << 21)
 #define   PIPECONF_EDP_RR_MODE_SWITCH		(1 << 20)
-#define   PIPECONF_CXSR_DOWNCLOCK	(1 << 16)
 #define   PIPECONF_EDP_RR_MODE_SWITCH_VLV	(1 << 14)
 #define   PIPECONF_COLOR_RANGE_SELECT	(1 << 13)
 #define   PIPECONF_OUTPUT_COLORSPACE_MASK	(3 << 11) /* ilk-ivb */
-#define   PIPECONF_OUTPUT_COLORSPACE_RGB	(0 << 11) /* ilk-ivb */
 #define   PIPECONF_OUTPUT_COLORSPACE_YUV601	(1 << 11) /* ilk-ivb */
 #define   PIPECONF_OUTPUT_COLORSPACE_YUV709	(2 << 11) /* ilk-ivb */
 #define   PIPECONF_OUTPUT_COLORSPACE_YUV_HSW	(1 << 11) /* hsw only */
@@ -6225,58 +4433,28 @@ enum {
 #define   PIPECONF_6BPC		(2 << 5)
 #define   PIPECONF_12BPC	(3 << 5)
 #define   PIPECONF_DITHER_EN	(1 << 4)
-#define   PIPECONF_DITHER_TYPE_MASK (0x0000000c)
 #define   PIPECONF_DITHER_TYPE_SP (0 << 2)
-#define   PIPECONF_DITHER_TYPE_ST1 (1 << 2)
-#define   PIPECONF_DITHER_TYPE_ST2 (2 << 2)
-#define   PIPECONF_DITHER_TYPE_TEMP (3 << 2)
 #define _PIPEASTAT		0x70024
 #define   PIPE_FIFO_UNDERRUN_STATUS		(1UL << 31)
 #define   SPRITE1_FLIP_DONE_INT_EN_VLV		(1UL << 30)
-#define   PIPE_CRC_ERROR_ENABLE			(1UL << 29)
-#define   PIPE_CRC_DONE_ENABLE			(1UL << 28)
-#define   PERF_COUNTER2_INTERRUPT_EN		(1UL << 27)
-#define   PIPE_GMBUS_EVENT_ENABLE		(1UL << 27)
-#define   PLANE_FLIP_DONE_INT_EN_VLV		(1UL << 26)
-#define   PIPE_HOTPLUG_INTERRUPT_ENABLE		(1UL << 26)
-#define   PIPE_VSYNC_INTERRUPT_ENABLE		(1UL << 25)
-#define   PIPE_DISPLAY_LINE_COMPARE_ENABLE	(1UL << 24)
 #define   PIPE_DPST_EVENT_ENABLE		(1UL << 23)
 #define   SPRITE0_FLIP_DONE_INT_EN_VLV		(1UL << 22)
 #define   PIPE_LEGACY_BLC_EVENT_ENABLE		(1UL << 22)
-#define   PIPE_ODD_FIELD_INTERRUPT_ENABLE	(1UL << 21)
-#define   PIPE_EVEN_FIELD_INTERRUPT_ENABLE	(1UL << 20)
-#define   PIPE_B_PSR_INTERRUPT_ENABLE_VLV	(1UL << 19)
-#define   PERF_COUNTER_INTERRUPT_EN		(1UL << 19)
-#define   PIPE_HOTPLUG_TV_INTERRUPT_ENABLE	(1UL << 18) /* pre-965 */
 #define   PIPE_START_VBLANK_INTERRUPT_ENABLE	(1UL << 18) /* 965 or later */
-#define   PIPE_FRAMESTART_INTERRUPT_ENABLE	(1UL << 17)
 #define   PIPE_VBLANK_INTERRUPT_ENABLE		(1UL << 17)
-#define   PIPEA_HBLANK_INT_EN_VLV		(1UL << 16)
-#define   PIPE_OVERLAY_UPDATED_ENABLE		(1UL << 16)
 #define   SPRITE1_FLIP_DONE_INT_STATUS_VLV	(1UL << 15)
 #define   SPRITE0_FLIP_DONE_INT_STATUS_VLV	(1UL << 14)
-#define   PIPE_CRC_ERROR_INTERRUPT_STATUS	(1UL << 13)
 #define   PIPE_CRC_DONE_INTERRUPT_STATUS	(1UL << 12)
-#define   PERF_COUNTER2_INTERRUPT_STATUS	(1UL << 11)
 #define   PIPE_GMBUS_INTERRUPT_STATUS		(1UL << 11)
 #define   PLANE_FLIP_DONE_INT_STATUS_VLV	(1UL << 10)
 #define   PIPE_HOTPLUG_INTERRUPT_STATUS		(1UL << 10)
-#define   PIPE_VSYNC_INTERRUPT_STATUS		(1UL << 9)
-#define   PIPE_DISPLAY_LINE_COMPARE_STATUS	(1UL << 8)
 #define   PIPE_DPST_EVENT_STATUS		(1UL << 7)
 #define   PIPE_A_PSR_STATUS_VLV			(1UL << 6)
 #define   PIPE_LEGACY_BLC_EVENT_STATUS		(1UL << 6)
-#define   PIPE_ODD_FIELD_INTERRUPT_STATUS	(1UL << 5)
-#define   PIPE_EVEN_FIELD_INTERRUPT_STATUS	(1UL << 4)
 #define   PIPE_B_PSR_STATUS_VLV			(1UL << 3)
-#define   PERF_COUNTER_INTERRUPT_STATUS		(1UL << 3)
 #define   PIPE_HOTPLUG_TV_INTERRUPT_STATUS	(1UL << 2) /* pre-965 */
 #define   PIPE_START_VBLANK_INTERRUPT_STATUS	(1UL << 2) /* 965 or later */
-#define   PIPE_FRAMESTART_INTERRUPT_STATUS	(1UL << 1)
 #define   PIPE_VBLANK_INTERRUPT_STATUS		(1UL << 1)
-#define   PIPE_HBLANK_INT_STATUS		(1UL << 0)
-#define   PIPE_OVERLAY_UPDATED_STATUS		(1UL << 0)
 
 #define PIPESTAT_INT_ENABLE_MASK		0x7fff0000
 #define PIPESTAT_INT_STATUS_MASK		0x0000ffff
@@ -6305,7 +4483,6 @@ enum {
 #define PIPESTAT(pipe)		_MMIO_PIPE2(pipe, _PIPEASTAT)
 
 #define  _PIPEAGCMAX           0x70010
-#define  _PIPEBGCMAX           0x71010
 #define PIPEGCMAX(pipe, i)     _MMIO_PIPE2(pipe, _PIPEAGCMAX + (i) * 4)
 
 #define _PIPE_ARB_CTL_A			0x70028 /* icl+ */
@@ -6313,7 +4490,6 @@ enum {
 #define   PIPE_ARB_USE_PROG_SLOTS	REG_BIT(13)
 
 #define _PIPE_MISC_A			0x70030
-#define _PIPE_MISC_B			0x71030
 #define   PIPEMISC_YUV420_ENABLE	(1 << 27) /* glk+ */
 #define   PIPEMISC_YUV420_MODE_FULL_BLEND (1 << 26) /* glk+ */
 #define   PIPEMISC_HDR_MODE_PRECISION	(1 << 23) /* icl+ */
@@ -6331,12 +4507,10 @@ enum {
 #define   PIPEMISC_6_BPC		(2 << 5)
 #define   PIPEMISC_12_BPC_ADLP		(4 << 5) /* adlp+ */
 #define   PIPEMISC_DITHER_ENABLE	(1 << 4)
-#define   PIPEMISC_DITHER_TYPE_MASK	(3 << 2)
 #define   PIPEMISC_DITHER_TYPE_SP	(0 << 2)
 #define PIPEMISC(pipe)			_MMIO_PIPE2(pipe, _PIPE_MISC_A)
 
 #define _PIPE_MISC2_A					0x7002C
-#define _PIPE_MISC2_B					0x7102C
 #define   PIPE_MISC2_BUBBLE_COUNTER_SCALER_EN		(0x50 << 24)
 #define   PIPE_MISC2_BUBBLE_COUNTER_SCALER_DIS		(0x14 << 24)
 #define   PIPE_MISC2_UNDERRUN_BUBBLE_COUNTER_MASK	(0xff << 24)
@@ -6355,64 +4529,13 @@ enum {
 #define   PIPE_STATUS_HARD_UNDERRUN_XELPD		REG_BIT(27)
 #define   PIPE_STATUS_PORT_UNDERRUN_XELPD		REG_BIT(26)
 
-#define VLV_DPFLIPSTAT				_MMIO(VLV_DISPLAY_BASE + 0x70028)
-#define   PIPEB_LINE_COMPARE_INT_EN			REG_BIT(29)
-#define   PIPEB_HLINE_INT_EN			REG_BIT(28)
-#define   PIPEB_VBLANK_INT_EN			REG_BIT(27)
-#define   SPRITED_FLIP_DONE_INT_EN			REG_BIT(26)
-#define   SPRITEC_FLIP_DONE_INT_EN			REG_BIT(25)
-#define   PLANEB_FLIP_DONE_INT_EN			REG_BIT(24)
-#define   PIPE_PSR_INT_EN			REG_BIT(22)
-#define   PIPEA_LINE_COMPARE_INT_EN			REG_BIT(21)
-#define   PIPEA_HLINE_INT_EN			REG_BIT(20)
-#define   PIPEA_VBLANK_INT_EN			REG_BIT(19)
-#define   SPRITEB_FLIP_DONE_INT_EN			REG_BIT(18)
-#define   SPRITEA_FLIP_DONE_INT_EN			REG_BIT(17)
-#define   PLANEA_FLIPDONE_INT_EN			REG_BIT(16)
-#define   PIPEC_LINE_COMPARE_INT_EN			REG_BIT(13)
-#define   PIPEC_HLINE_INT_EN			REG_BIT(12)
-#define   PIPEC_VBLANK_INT_EN			REG_BIT(11)
-#define   SPRITEF_FLIPDONE_INT_EN			REG_BIT(10)
-#define   SPRITEE_FLIPDONE_INT_EN			REG_BIT(9)
-#define   PLANEC_FLIPDONE_INT_EN			REG_BIT(8)
-
 #define DPINVGTT				_MMIO(VLV_DISPLAY_BASE + 0x7002c) /* VLV/CHV only */
-#define   DPINVGTT_EN_MASK_CHV				REG_GENMASK(27, 16)
-#define   DPINVGTT_EN_MASK_VLV				REG_GENMASK(23, 16)
-#define   SPRITEF_INVALID_GTT_INT_EN			REG_BIT(27)
-#define   SPRITEE_INVALID_GTT_INT_EN			REG_BIT(26)
-#define   PLANEC_INVALID_GTT_INT_EN			REG_BIT(25)
-#define   CURSORC_INVALID_GTT_INT_EN			REG_BIT(24)
-#define   CURSORB_INVALID_GTT_INT_EN			REG_BIT(23)
-#define   CURSORA_INVALID_GTT_INT_EN			REG_BIT(22)
-#define   SPRITED_INVALID_GTT_INT_EN			REG_BIT(21)
-#define   SPRITEC_INVALID_GTT_INT_EN			REG_BIT(20)
-#define   PLANEB_INVALID_GTT_INT_EN			REG_BIT(19)
-#define   SPRITEB_INVALID_GTT_INT_EN			REG_BIT(18)
-#define   SPRITEA_INVALID_GTT_INT_EN			REG_BIT(17)
-#define   PLANEA_INVALID_GTT_INT_EN			REG_BIT(16)
 #define   DPINVGTT_STATUS_MASK_CHV			REG_GENMASK(11, 0)
 #define   DPINVGTT_STATUS_MASK_VLV			REG_GENMASK(7, 0)
-#define   SPRITEF_INVALID_GTT_STATUS			REG_BIT(11)
-#define   SPRITEE_INVALID_GTT_STATUS			REG_BIT(10)
-#define   PLANEC_INVALID_GTT_STATUS			REG_BIT(9)
-#define   CURSORC_INVALID_GTT_STATUS			REG_BIT(8)
-#define   CURSORB_INVALID_GTT_STATUS			REG_BIT(7)
-#define   CURSORA_INVALID_GTT_STATUS			REG_BIT(6)
-#define   SPRITED_INVALID_GTT_STATUS			REG_BIT(5)
-#define   SPRITEC_INVALID_GTT_STATUS			REG_BIT(4)
-#define   PLANEB_INVALID_GTT_STATUS			REG_BIT(3)
-#define   SPRITEB_INVALID_GTT_STATUS			REG_BIT(2)
-#define   SPRITEA_INVALID_GTT_STATUS			REG_BIT(1)
-#define   PLANEA_INVALID_GTT_STATUS			REG_BIT(0)
 
 #define DSPARB			_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70030)
-#define   DSPARB_CSTART_MASK	(0x7f << 7)
 #define   DSPARB_CSTART_SHIFT	7
-#define   DSPARB_BSTART_MASK	(0x7f)
-#define   DSPARB_BSTART_SHIFT	0
 #define   DSPARB_BEND_SHIFT	9 /* on 855 */
-#define   DSPARB_AEND_SHIFT	0
 #define   DSPARB_SPRITEA_SHIFT_VLV	0
 #define   DSPARB_SPRITEA_MASK_VLV	(0xff << 0)
 #define   DSPARB_SPRITEB_SHIFT_VLV	8
@@ -6550,26 +4673,6 @@ enum {
 #define   DSPFW_PLANEA_HI_SHIFT		0
 #define   DSPFW_PLANEA_HI_MASK		(1 << 0)
 #define DSPHOWM1	_MMIO(VLV_DISPLAY_BASE + 0x70068)
-#define   DSPFW_SR_WM1_HI_SHIFT		24
-#define   DSPFW_SR_WM1_HI_MASK		(3 << 24) /* 2 bits for chv, 1 for vlv */
-#define   DSPFW_SPRITEF_WM1_HI_SHIFT	23
-#define   DSPFW_SPRITEF_WM1_HI_MASK	(1 << 23)
-#define   DSPFW_SPRITEE_WM1_HI_SHIFT	22
-#define   DSPFW_SPRITEE_WM1_HI_MASK	(1 << 22)
-#define   DSPFW_PLANEC_WM1_HI_SHIFT	21
-#define   DSPFW_PLANEC_WM1_HI_MASK	(1 << 21)
-#define   DSPFW_SPRITED_WM1_HI_SHIFT	20
-#define   DSPFW_SPRITED_WM1_HI_MASK	(1 << 20)
-#define   DSPFW_SPRITEC_WM1_HI_SHIFT	16
-#define   DSPFW_SPRITEC_WM1_HI_MASK	(1 << 16)
-#define   DSPFW_PLANEB_WM1_HI_SHIFT	12
-#define   DSPFW_PLANEB_WM1_HI_MASK	(1 << 12)
-#define   DSPFW_SPRITEB_WM1_HI_SHIFT	8
-#define   DSPFW_SPRITEB_WM1_HI_MASK	(1 << 8)
-#define   DSPFW_SPRITEA_WM1_HI_SHIFT	4
-#define   DSPFW_SPRITEA_WM1_HI_MASK	(1 << 4)
-#define   DSPFW_PLANEA_WM1_HI_SHIFT	0
-#define   DSPFW_PLANEA_WM1_HI_MASK	(1 << 0)
 
 /* drain latency register values*/
 #define VLV_DDL(pipe)			_MMIO(VLV_DISPLAY_BASE + 0x70050 + 4 * (pipe))
@@ -6577,31 +4680,24 @@ enum {
 #define DDL_SPRITE_SHIFT(sprite)	(8 + 8 * (sprite))
 #define DDL_PLANE_SHIFT			0
 #define DDL_PRECISION_HIGH		(1 << 7)
-#define DDL_PRECISION_LOW		(0 << 7)
 #define DRAIN_LATENCY_MASK		0x7f
 
 #define CBR1_VLV			_MMIO(VLV_DISPLAY_BASE + 0x70400)
-#define  CBR_PND_DEADLINE_DISABLE	(1 << 31)
 #define  CBR_PWM_CLOCK_MUX_SELECT	(1 << 30)
 
 #define CBR4_VLV			_MMIO(VLV_DISPLAY_BASE + 0x70450)
 #define  CBR_DPLLBMD_PIPE(pipe)		(1 << (7 + (pipe) * 11)) /* pipes B and C */
 
 /* FIFO watermark sizes etc */
-#define G4X_FIFO_LINE_SIZE	64
 #define I915_FIFO_LINE_SIZE	64
 #define I830_FIFO_LINE_SIZE	32
 
-#define VALLEYVIEW_FIFO_SIZE	255
-#define G4X_FIFO_SIZE		127
 #define I965_FIFO_SIZE		512
 #define I945_FIFO_SIZE		127
 #define I915_FIFO_SIZE		95
 #define I855GM_FIFO_SIZE	127 /* In cachelines */
 #define I830_FIFO_SIZE		95
 
-#define VALLEYVIEW_MAX_WM	0xff
-#define G4X_MAX_WM		0x3f
 #define I915_MAX_WM		0x3f
 
 #define PINEVIEW_DISPLAY_FIFO	512 /* in 64byte unit */
@@ -6615,7 +4711,6 @@ enum {
 #define PINEVIEW_CURSOR_DFT_WM	0
 #define PINEVIEW_CURSOR_GUARD_WM	5
 
-#define VALLEYVIEW_CURSOR_MAX_WM 64
 #define I965_CURSOR_FIFO	64
 #define I965_CURSOR_MAX_WM	32
 #define I965_CURSOR_DFT_WM	8
@@ -6694,26 +4789,16 @@ enum {
 #define WM1_LP_ILK		_MMIO(0x45108)
 #define  WM1_LP_SR_EN		(1 << 31)
 #define  WM1_LP_LATENCY_SHIFT	24
-#define  WM1_LP_LATENCY_MASK	(0x7f << 24)
-#define  WM1_LP_FBC_MASK	(0xf << 20)
 #define  WM1_LP_FBC_SHIFT	20
 #define  WM1_LP_FBC_SHIFT_BDW	19
-#define  WM1_LP_SR_MASK		(0x7ff << 8)
 #define  WM1_LP_SR_SHIFT	8
-#define  WM1_LP_CURSOR_MASK	(0xff)
 #define WM2_LP_ILK		_MMIO(0x4510c)
-#define  WM2_LP_EN		(1 << 31)
 #define WM3_LP_ILK		_MMIO(0x45110)
-#define  WM3_LP_EN		(1 << 31)
 #define WM1S_LP_ILK		_MMIO(0x45120)
 #define WM2S_LP_IVB		_MMIO(0x45124)
 #define WM3S_LP_IVB		_MMIO(0x45128)
 #define  WM1S_LP_EN		(1 << 31)
 
-#define HSW_WM_LP_VAL(lat, fbc, pri, cur) \
-	(WM3_LP_EN | ((lat) << WM1_LP_LATENCY_SHIFT) | \
-	 ((fbc) << WM1_LP_FBC_SHIFT) | ((pri) << WM1_LP_SR_SHIFT) | (cur))
-
 /* Memory latency timer register */
 #define MLTR_ILK		_MMIO(0x11222)
 #define  MLTR_WM1_SHIFT		0
@@ -6723,7 +4808,6 @@ enum {
 
 
 /* the address where we get all kinds of latency value */
-#define SSKPD			_MMIO(0x5d10)
 #define SSKPD_WM_MASK		0x3f
 #define SSKPD_WM0_SHIFT		0
 #define SSKPD_WM1_SHIFT		8
@@ -6767,12 +4851,7 @@ enum {
 #define   CURSOR_STRIDE_SHIFT	28
 #define   CURSOR_STRIDE(x)	((ffs(x) - 9) << CURSOR_STRIDE_SHIFT) /* 256,512,1k,2k */
 #define   CURSOR_FORMAT_SHIFT	24
-#define   CURSOR_FORMAT_MASK	(0x07 << CURSOR_FORMAT_SHIFT)
-#define   CURSOR_FORMAT_2C	(0x00 << CURSOR_FORMAT_SHIFT)
-#define   CURSOR_FORMAT_3C	(0x01 << CURSOR_FORMAT_SHIFT)
-#define   CURSOR_FORMAT_4C	(0x02 << CURSOR_FORMAT_SHIFT)
 #define   CURSOR_FORMAT_ARGB	(0x04 << CURSOR_FORMAT_SHIFT)
-#define   CURSOR_FORMAT_XRGB	(0x05 << CURSOR_FORMAT_SHIFT)
 /* New style CUR*CNTR flags */
 #define   MCURSOR_MODE		0x27
 #define   MCURSOR_MODE_DISABLE   0x00
@@ -6801,13 +4880,6 @@ enum {
 #define _CUR_FBC_CTL_A		0x700a0 /* ivb+ */
 #define   CUR_FBC_CTL_EN	(1 << 31)
 #define _CURASURFLIVE		0x700ac /* g4x+ */
-#define _CURBCNTR		0x700c0
-#define _CURBBASE		0x700c4
-#define _CURBPOS		0x700c8
-
-#define _CURBCNTR_IVB		0x71080
-#define _CURBBASE_IVB		0x71084
-#define _CURBPOS_IVB		0x71088
 
 #define CURCNTR(pipe) _CURSOR2(pipe, _CURACNTR)
 #define CURBASE(pipe) _CURSOR2(pipe, _CURABASE)
@@ -6830,7 +4902,6 @@ enum {
 #define   DISPPLANE_GAMMA_ENABLE		(1 << 30)
 #define   DISPPLANE_GAMMA_DISABLE		0
 #define   DISPPLANE_PIXFORMAT_MASK		(0xf << 26)
-#define   DISPPLANE_YUV422			(0x0 << 26)
 #define   DISPPLANE_8BPP			(0x2 << 26)
 #define   DISPPLANE_BGRA555			(0x3 << 26)
 #define   DISPPLANE_BGRX555			(0x4 << 26)
@@ -6856,7 +4927,6 @@ enum {
 #define   DISPPLANE_NO_LINE_DOUBLE		0
 #define   DISPPLANE_STEREO_POLARITY_FIRST	0
 #define   DISPPLANE_STEREO_POLARITY_SECOND	(1 << 18)
-#define   DISPPLANE_ALPHA_PREMULTIPLY		(1 << 16) /* CHV pipe B */
 #define   DISPPLANE_ROTATE_180			(1 << 15)
 #define   DISPPLANE_TRICKLE_FEED_DISABLE	(1 << 14) /* Ironlake */
 #define   DISPPLANE_TILED			(1 << 10)
@@ -6870,7 +4940,6 @@ enum {
 #define _DSPATILEOFF				0x701A4 /* 965+ only */
 #define _DSPAOFFSET				0x701A4 /* HSW */
 #define _DSPASURFLIVE				0x701AC
-#define _DSPAGAMC				0x701E0
 
 #define DSPADDR_VLV(plane)	_MMIO_PIPE2(plane, _DSPAADDR_VLV)
 #define DSPCNTR(plane)		_MMIO_PIPE2(plane, _DSPACNTR)
@@ -6883,19 +4952,14 @@ enum {
 #define DSPLINOFF(plane)	DSPADDR(plane)
 #define DSPOFFSET(plane)	_MMIO_PIPE2(plane, _DSPAOFFSET)
 #define DSPSURFLIVE(plane)	_MMIO_PIPE2(plane, _DSPASURFLIVE)
-#define DSPGAMC(plane, i)	_MMIO(_PIPE2(plane, _DSPAGAMC) + (5 - (i)) * 4) /* plane C only, 6 x u0.8 */
 
 /* CHV pipe B blender and primary plane */
 #define _CHV_BLEND_A		0x60a00
 #define   CHV_BLEND_LEGACY		(0 << 30)
-#define   CHV_BLEND_ANDROID		(1 << 30)
-#define   CHV_BLEND_MPO			(2 << 30)
-#define   CHV_BLEND_MASK		(3 << 30)
 #define _CHV_CANVAS_A		0x60a04
 #define _PRIMPOS_A		0x60a08
 #define _PRIMSIZE_A		0x60a0c
 #define _PRIMCNSTALPHA_A	0x60a10
-#define   PRIM_CONST_ALPHA_ENABLE	(1 << 31)
 
 #define CHV_BLEND(pipe)		_MMIO_TRANS2(pipe, _CHV_BLEND_A)
 #define CHV_CANVAS(pipe)	_MMIO_TRANS2(pipe, _CHV_CANVAS_A)
@@ -6903,11 +4967,6 @@ enum {
 #define PRIMSIZE(plane)		_MMIO_TRANS2(plane, _PRIMSIZE_A)
 #define PRIMCNSTALPHA(plane)	_MMIO_TRANS2(plane, _PRIMCNSTALPHA_A)
 
-/* Display/Sprite base address macros */
-#define DISP_BASEADDR_MASK	(0xfffff000)
-#define I915_LO_DISPBASE(val)	((val) & ~DISP_BASEADDR_MASK)
-#define I915_HI_DISPBASE(val)	((val) & DISP_BASEADDR_MASK)
-
 /*
  * VBIOS flags
  * gen2:
@@ -6924,41 +4983,17 @@ enum {
 #define SWF3(i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x72414 + (i) * 4)
 #define SWF_ILK(i)	_MMIO(0x4F000 + (i) * 4)
 
-/* Pipe B */
-#define _PIPEBDSL		(DISPLAY_MMIO_BASE(dev_priv) + 0x71000)
-#define _PIPEBCONF		(DISPLAY_MMIO_BASE(dev_priv) + 0x71008)
-#define _PIPEBSTAT		(DISPLAY_MMIO_BASE(dev_priv) + 0x71024)
-#define _PIPEBFRAMEHIGH		0x71040
-#define _PIPEBFRAMEPIXEL	0x71044
-#define _PIPEB_FRMCOUNT_G4X	(DISPLAY_MMIO_BASE(dev_priv) + 0x71040)
-#define _PIPEB_FLIPCOUNT_G4X	(DISPLAY_MMIO_BASE(dev_priv) + 0x71044)
-
-
 /* Display B control */
-#define _DSPBCNTR		(DISPLAY_MMIO_BASE(dev_priv) + 0x71180)
 #define   DISPPLANE_ALPHA_TRANS_ENABLE		(1 << 15)
 #define   DISPPLANE_ALPHA_TRANS_DISABLE		0
-#define   DISPPLANE_SPRITE_ABOVE_DISPLAY	0
 #define   DISPPLANE_SPRITE_ABOVE_OVERLAY	(1)
-#define _DSPBADDR		(DISPLAY_MMIO_BASE(dev_priv) + 0x71184)
-#define _DSPBSTRIDE		(DISPLAY_MMIO_BASE(dev_priv) + 0x71188)
-#define _DSPBPOS		(DISPLAY_MMIO_BASE(dev_priv) + 0x7118C)
-#define _DSPBSIZE		(DISPLAY_MMIO_BASE(dev_priv) + 0x71190)
 #define _DSPBSURF		(DISPLAY_MMIO_BASE(dev_priv) + 0x7119C)
-#define _DSPBTILEOFF		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
-#define _DSPBOFFSET		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
-#define _DSPBSURFLIVE		(DISPLAY_MMIO_BASE(dev_priv) + 0x711AC)
-
-/* ICL DSI 0 and 1 */
-#define _PIPEDSI0CONF		0x7b008
-#define _PIPEDSI1CONF		0x7b808
 
 /* Sprite A control */
 #define _DVSACNTR		0x72180
 #define   DVS_ENABLE		(1 << 31)
 #define   DVS_GAMMA_ENABLE	(1 << 30)
 #define   DVS_YUV_RANGE_CORRECTION_DISABLE	(1 << 27)
-#define   DVS_PIXFORMAT_MASK	(3 << 25)
 #define   DVS_FORMAT_YUV422	(0 << 25)
 #define   DVS_FORMAT_RGBX101010	(1 << 25)
 #define   DVS_FORMAT_RGBX888	(2 << 25)
@@ -6967,7 +5002,6 @@ enum {
 #define   DVS_SOURCE_KEY	(1 << 22)
 #define   DVS_RGB_ORDER_XBGR	(1 << 20)
 #define   DVS_YUV_FORMAT_BT709	(1 << 18)
-#define   DVS_YUV_ORDER_MASK	(3 << 16)
 #define   DVS_YUV_ORDER_YUYV	(0 << 16)
 #define   DVS_YUV_ORDER_UYVY	(1 << 16)
 #define   DVS_YUV_ORDER_YVYU	(2 << 16)
@@ -6985,16 +5019,9 @@ enum {
 #define _DVSASURF		0x7219c
 #define _DVSAKEYMAXVAL		0x721a0
 #define _DVSATILEOFF		0x721a4
-#define _DVSASURFLIVE		0x721ac
 #define _DVSAGAMC_G4X		0x721e0 /* g4x */
 #define _DVSASCALE		0x72204
 #define   DVS_SCALE_ENABLE	(1 << 31)
-#define   DVS_FILTER_MASK	(3 << 29)
-#define   DVS_FILTER_MEDIUM	(0 << 29)
-#define   DVS_FILTER_ENHANCING	(1 << 29)
-#define   DVS_FILTER_SOFTENING	(2 << 29)
-#define   DVS_VERTICAL_OFFSET_HALF (1 << 28) /* must be enabled below */
-#define   DVS_VERTICAL_OFFSET_ENABLE (1 << 27)
 #define _DVSAGAMC_ILK		0x72300 /* ilk/snb */
 #define _DVSAGAMCMAX_ILK	0x72340 /* ilk/snb */
 
@@ -7008,7 +5035,6 @@ enum {
 #define _DVSBSURF		0x7319c
 #define _DVSBKEYMAXVAL		0x731a0
 #define _DVSBTILEOFF		0x731a4
-#define _DVSBSURFLIVE		0x731ac
 #define _DVSBGAMC_G4X		0x731e0 /* g4x */
 #define _DVSBSCALE		0x73204
 #define _DVSBGAMC_ILK		0x73300 /* ilk/snb */
@@ -7025,7 +5051,6 @@ enum {
 #define DVSTILEOFF(pipe) _MMIO_PIPE(pipe, _DVSATILEOFF, _DVSBTILEOFF)
 #define DVSKEYVAL(pipe) _MMIO_PIPE(pipe, _DVSAKEYVAL, _DVSBKEYVAL)
 #define DVSKEYMSK(pipe) _MMIO_PIPE(pipe, _DVSAKEYMSK, _DVSBKEYMSK)
-#define DVSSURFLIVE(pipe) _MMIO_PIPE(pipe, _DVSASURFLIVE, _DVSBSURFLIVE)
 #define DVSGAMC_G4X(pipe, i) _MMIO(_PIPE(pipe, _DVSAGAMC_G4X, _DVSBGAMC_G4X) + (5 - (i)) * 4) /* 6 x u0.8 */
 #define DVSGAMC_ILK(pipe, i) _MMIO(_PIPE(pipe, _DVSAGAMC_ILK, _DVSBGAMC_ILK) + (i) * 4) /* 16 x u0.10 */
 #define DVSGAMCMAX_ILK(pipe, i) _MMIO(_PIPE(pipe, _DVSAGAMCMAX_ILK, _DVSBGAMCMAX_ILK) + (i) * 4) /* 3 x u1.10 */
@@ -7039,12 +5064,9 @@ enum {
 #define   SPRITE_FORMAT_RGBX101010	(1 << 25)
 #define   SPRITE_FORMAT_RGBX888		(2 << 25)
 #define   SPRITE_FORMAT_RGBX161616	(3 << 25)
-#define   SPRITE_FORMAT_YUV444		(4 << 25)
-#define   SPRITE_FORMAT_XR_BGR101010	(5 << 25) /* Extended range */
 #define   SPRITE_PIPE_CSC_ENABLE	(1 << 24)
 #define   SPRITE_SOURCE_KEY		(1 << 22)
 #define   SPRITE_RGB_ORDER_RGBX		(1 << 20) /* only for 888 and 161616 */
-#define   SPRITE_YUV_TO_RGB_CSC_DISABLE	(1 << 19)
 #define   SPRITE_YUV_TO_RGB_CSC_FORMAT_BT709	(1 << 18) /* 0 is BT601 */
 #define   SPRITE_YUV_ORDER_MASK		(3 << 16)
 #define   SPRITE_YUV_ORDER_YUYV		(0 << 16)
@@ -7069,12 +5091,6 @@ enum {
 #define _SPRA_SURFLIVE		0x702ac
 #define _SPRA_SCALE		0x70304
 #define   SPRITE_SCALE_ENABLE	(1 << 31)
-#define   SPRITE_FILTER_MASK	(3 << 29)
-#define   SPRITE_FILTER_MEDIUM	(0 << 29)
-#define   SPRITE_FILTER_ENHANCING	(1 << 29)
-#define   SPRITE_FILTER_SOFTENING	(2 << 29)
-#define   SPRITE_VERTICAL_OFFSET_HALF	(1 << 28) /* must be enabled below */
-#define   SPRITE_VERTICAL_OFFSET_ENABLE	(1 << 27)
 #define _SPRA_GAMC		0x70400
 #define _SPRA_GAMC16		0x70440
 #define _SPRA_GAMC17		0x7044c
@@ -7116,7 +5132,6 @@ enum {
 #define _SPACNTR		(VLV_DISPLAY_BASE + 0x72180)
 #define   SP_ENABLE			(1 << 31)
 #define   SP_GAMMA_ENABLE		(1 << 30)
-#define   SP_PIXFORMAT_MASK		(0xf << 26)
 #define   SP_FORMAT_YUV422		(0x0 << 26)
 #define   SP_FORMAT_8BPP		(0x2 << 26)
 #define   SP_FORMAT_BGR565		(0x5 << 26)
@@ -7128,10 +5143,8 @@ enum {
 #define   SP_FORMAT_BGRA1010102		(0xb << 26) /* CHV pipe B */
 #define   SP_FORMAT_RGBX8888		(0xe << 26)
 #define   SP_FORMAT_RGBA8888		(0xf << 26)
-#define   SP_ALPHA_PREMULTIPLY		(1 << 23) /* CHV pipe B */
 #define   SP_SOURCE_KEY			(1 << 22)
 #define   SP_YUV_FORMAT_BT709		(1 << 18)
-#define   SP_YUV_ORDER_MASK		(3 << 16)
 #define   SP_YUV_ORDER_YUYV		(0 << 16)
 #define   SP_YUV_ORDER_UYVY		(1 << 16)
 #define   SP_YUV_ORDER_YVYU		(2 << 16)
@@ -7149,7 +5162,6 @@ enum {
 #define _SPAKEYMAXVAL		(VLV_DISPLAY_BASE + 0x721a0)
 #define _SPATILEOFF		(VLV_DISPLAY_BASE + 0x721a4)
 #define _SPACONSTALPHA		(VLV_DISPLAY_BASE + 0x721a8)
-#define   SP_CONST_ALPHA_ENABLE		(1 << 31)
 #define _SPACLRC0		(VLV_DISPLAY_BASE + 0x721d0)
 #define   SP_CONTRAST(x)		((x) << 18) /* u3.6 */
 #define   SP_BRIGHTNESS(x)		((x) & 0xff) /* s8 */
@@ -7264,10 +5276,8 @@ enum {
 #define   PLANE_CTL_FORMAT_Y410                 (7 << 23)
 #define   PLANE_CTL_FORMAT_Y412                 (9 << 23)
 #define   PLANE_CTL_FORMAT_Y416                 (0xb << 23)
-#define   PLANE_CTL_KEY_ENABLE_MASK		(0x3 << 21)
 #define   PLANE_CTL_KEY_ENABLE_SOURCE		(1 << 21)
 #define   PLANE_CTL_KEY_ENABLE_DESTINATION	(2 << 21)
-#define   PLANE_CTL_ORDER_BGRX			(0 << 20)
 #define   PLANE_CTL_ORDER_RGBX			(1 << 20)
 #define   PLANE_CTL_YUV420_Y_PLANE		(1 << 19)
 #define   PLANE_CTL_YUV_TO_RGB_CSC_FORMAT_BT709	(1 << 18)
@@ -7277,7 +5287,6 @@ enum {
 #define   PLANE_CTL_YUV422_ORDER_YVYU		(2 << 16)
 #define   PLANE_CTL_YUV422_ORDER_VYUY		(3 << 16)
 #define   PLANE_CTL_RENDER_DECOMPRESSION_ENABLE	(1 << 15)
-#define   PLANE_CTL_TRICKLE_FEED_DISABLE	(1 << 14)
 #define   PLANE_CTL_CLEAR_COLOR_DISABLE		(1 << 13) /* TGL+ */
 #define   PLANE_CTL_PLANE_GAMMA_DISABLE		(1 << 13) /* Pre-GLK */
 #define   PLANE_CTL_TILED_MASK			(0x7 << 10)
@@ -7299,19 +5308,15 @@ enum {
 #define   PLANE_CTL_ROTATE_270			0x3
 #define _PLANE_STRIDE_1_A			0x70188
 #define _PLANE_STRIDE_2_A			0x70288
-#define _PLANE_STRIDE_3_A			0x70388
 #define _PLANE_POS_1_A				0x7018c
 #define _PLANE_POS_2_A				0x7028c
-#define _PLANE_POS_3_A				0x7038c
 #define _PLANE_SIZE_1_A				0x70190
 #define _PLANE_SIZE_2_A				0x70290
-#define _PLANE_SIZE_3_A				0x70390
 #define _PLANE_SURF_1_A				0x7019c
 #define _PLANE_SURF_2_A				0x7029c
 #define _PLANE_SURF_3_A				0x7039c
 #define _PLANE_OFFSET_1_A			0x701a4
 #define _PLANE_OFFSET_2_A			0x702a4
-#define _PLANE_OFFSET_3_A			0x703a4
 #define _PLANE_KEYVAL_1_A			0x70194
 #define _PLANE_KEYVAL_2_A			0x70294
 #define _PLANE_KEYMSK_1_A			0x70198
@@ -7333,27 +5338,19 @@ enum {
 #define  PLANE_CUS_Y_PLANE_5_RKL		(1 << 30)
 #define  PLANE_CUS_Y_PLANE_6_ICL		(0 << 30)
 #define  PLANE_CUS_Y_PLANE_7_ICL		(1 << 30)
-#define  PLANE_CUS_HPHASE_SIGN_NEGATIVE		(1 << 19)
 #define  PLANE_CUS_HPHASE_0			(0 << 16)
-#define  PLANE_CUS_HPHASE_0_25			(1 << 16)
-#define  PLANE_CUS_HPHASE_0_5			(2 << 16)
 #define  PLANE_CUS_VPHASE_SIGN_NEGATIVE		(1 << 15)
-#define  PLANE_CUS_VPHASE_0			(0 << 12)
 #define  PLANE_CUS_VPHASE_0_25			(1 << 12)
-#define  PLANE_CUS_VPHASE_0_5			(2 << 12)
 #define _PLANE_COLOR_CTL_1_A			0x701CC /* GLK+ */
 #define _PLANE_COLOR_CTL_2_A			0x702CC /* GLK+ */
-#define _PLANE_COLOR_CTL_3_A			0x703CC /* GLK+ */
 #define   PLANE_COLOR_PIPE_GAMMA_ENABLE		(1 << 30) /* Pre-ICL */
 #define   PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE	(1 << 28)
 #define   PLANE_COLOR_PLANE_CSC_ENABLE			REG_BIT(21) /* ICL+ */
 #define   PLANE_COLOR_INPUT_CSC_ENABLE		(1 << 20) /* ICL+ */
 #define   PLANE_COLOR_PIPE_CSC_ENABLE		(1 << 23) /* Pre-ICL */
-#define   PLANE_COLOR_CSC_MODE_BYPASS			(0 << 17)
 #define   PLANE_COLOR_CSC_MODE_YUV601_TO_RGB601		(1 << 17)
 #define   PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709		(2 << 17)
 #define   PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020	(3 << 17)
-#define   PLANE_COLOR_CSC_MODE_RGB709_TO_RGB2020	(4 << 17)
 #define   PLANE_COLOR_PLANE_GAMMA_DISABLE	(1 << 13)
 #define   PLANE_COLOR_ALPHA_MASK		(0x3 << 4)
 #define   PLANE_COLOR_ALPHA_DISABLE		(0 << 4)
@@ -7426,19 +5423,15 @@ enum {
 #define _PLANE_CTL_3_B				0x71380
 #define _PLANE_CTL_1(pipe)	_PIPE(pipe, _PLANE_CTL_1_A, _PLANE_CTL_1_B)
 #define _PLANE_CTL_2(pipe)	_PIPE(pipe, _PLANE_CTL_2_A, _PLANE_CTL_2_B)
-#define _PLANE_CTL_3(pipe)	_PIPE(pipe, _PLANE_CTL_3_A, _PLANE_CTL_3_B)
 #define PLANE_CTL(pipe, plane)	\
 	_MMIO_PLANE(plane, _PLANE_CTL_1(pipe), _PLANE_CTL_2(pipe))
 
 #define _PLANE_STRIDE_1_B			0x71188
 #define _PLANE_STRIDE_2_B			0x71288
-#define _PLANE_STRIDE_3_B			0x71388
 #define _PLANE_STRIDE_1(pipe)	\
 	_PIPE(pipe, _PLANE_STRIDE_1_A, _PLANE_STRIDE_1_B)
 #define _PLANE_STRIDE_2(pipe)	\
 	_PIPE(pipe, _PLANE_STRIDE_2_A, _PLANE_STRIDE_2_B)
-#define _PLANE_STRIDE_3(pipe)	\
-	_PIPE(pipe, _PLANE_STRIDE_3_A, _PLANE_STRIDE_3_B)
 #define PLANE_STRIDE(pipe, plane)	\
 	_MMIO_PLANE(plane, _PLANE_STRIDE_1(pipe), _PLANE_STRIDE_2(pipe))
 #define PLANE_STRIDE_MASK		REG_GENMASK(10, 0)
@@ -7446,19 +5439,15 @@ enum {
 
 #define _PLANE_POS_1_B				0x7118c
 #define _PLANE_POS_2_B				0x7128c
-#define _PLANE_POS_3_B				0x7138c
 #define _PLANE_POS_1(pipe)	_PIPE(pipe, _PLANE_POS_1_A, _PLANE_POS_1_B)
 #define _PLANE_POS_2(pipe)	_PIPE(pipe, _PLANE_POS_2_A, _PLANE_POS_2_B)
-#define _PLANE_POS_3(pipe)	_PIPE(pipe, _PLANE_POS_3_A, _PLANE_POS_3_B)
 #define PLANE_POS(pipe, plane)	\
 	_MMIO_PLANE(plane, _PLANE_POS_1(pipe), _PLANE_POS_2(pipe))
 
 #define _PLANE_SIZE_1_B				0x71190
 #define _PLANE_SIZE_2_B				0x71290
-#define _PLANE_SIZE_3_B				0x71390
 #define _PLANE_SIZE_1(pipe)	_PIPE(pipe, _PLANE_SIZE_1_A, _PLANE_SIZE_1_B)
 #define _PLANE_SIZE_2(pipe)	_PIPE(pipe, _PLANE_SIZE_2_A, _PLANE_SIZE_2_B)
-#define _PLANE_SIZE_3(pipe)	_PIPE(pipe, _PLANE_SIZE_3_A, _PLANE_SIZE_3_B)
 #define PLANE_SIZE(pipe, plane)	\
 	_MMIO_PLANE(plane, _PLANE_SIZE_1(pipe), _PLANE_SIZE_2(pipe))
 
@@ -7467,7 +5456,6 @@ enum {
 #define _PLANE_SURF_3_B				0x7139c
 #define _PLANE_SURF_1(pipe)	_PIPE(pipe, _PLANE_SURF_1_A, _PLANE_SURF_1_B)
 #define _PLANE_SURF_2(pipe)	_PIPE(pipe, _PLANE_SURF_2_A, _PLANE_SURF_2_B)
-#define _PLANE_SURF_3(pipe)	_PIPE(pipe, _PLANE_SURF_3_A, _PLANE_SURF_3_B)
 #define PLANE_SURF(pipe, plane)	\
 	_MMIO_PLANE(plane, _PLANE_SURF_1(pipe), _PLANE_SURF_2(pipe))
 #define   PLANE_SURF_DECRYPT			REG_BIT(2)
@@ -7549,7 +5537,6 @@ enum {
 
 #define _PLANE_COLOR_CTL_1_B			0x711CC
 #define _PLANE_COLOR_CTL_2_B			0x712CC
-#define _PLANE_COLOR_CTL_3_B			0x713CC
 #define _PLANE_COLOR_CTL_1(pipe)	\
 	_PIPE(pipe, _PLANE_COLOR_CTL_1_A, _PLANE_COLOR_CTL_1_B)
 #define _PLANE_COLOR_CTL_2(pipe)	\
@@ -7622,27 +5609,11 @@ enum {
 #define DIGITAL_PORT_HOTPLUG_CNTRL	_MMIO(0x44030)
 #define  DIGITAL_PORTA_HOTPLUG_ENABLE		(1 << 4)
 #define  DIGITAL_PORTA_PULSE_DURATION_2ms	(0 << 2) /* pre-HSW */
-#define  DIGITAL_PORTA_PULSE_DURATION_4_5ms	(1 << 2) /* pre-HSW */
-#define  DIGITAL_PORTA_PULSE_DURATION_6ms	(2 << 2) /* pre-HSW */
-#define  DIGITAL_PORTA_PULSE_DURATION_100ms	(3 << 2) /* pre-HSW */
 #define  DIGITAL_PORTA_PULSE_DURATION_MASK	(3 << 2) /* pre-HSW */
-#define  DIGITAL_PORTA_HOTPLUG_STATUS_MASK	(3 << 0)
-#define  DIGITAL_PORTA_HOTPLUG_NO_DETECT	(0 << 0)
-#define  DIGITAL_PORTA_HOTPLUG_SHORT_DETECT	(1 << 0)
 #define  DIGITAL_PORTA_HOTPLUG_LONG_DETECT	(2 << 0)
 
-/* refresh rate hardware control */
-#define RR_HW_CTL       _MMIO(0x45300)
-#define  RR_HW_LOW_POWER_FRAMES_MASK    0xff
-#define  RR_HW_HIGH_POWER_FRAMES_MASK   0xff00
-
 #define FDI_PLL_BIOS_0  _MMIO(0x46000)
 #define  FDI_PLL_FB_CLOCK_MASK  0xff
-#define FDI_PLL_BIOS_1  _MMIO(0x46004)
-#define FDI_PLL_BIOS_2  _MMIO(0x46008)
-#define DISPLAY_PORT_PLL_BIOS_0         _MMIO(0x4600c)
-#define DISPLAY_PORT_PLL_BIOS_1         _MMIO(0x46010)
-#define DISPLAY_PORT_PLL_BIOS_2         _MMIO(0x46014)
 
 #define PCH_3DCGDIS0		_MMIO(0x46020)
 # define MARIUNIT_CLOCK_GATE_DISABLE		(1 << 18)
@@ -7651,42 +5622,17 @@ enum {
 #define PCH_3DCGDIS1		_MMIO(0x46024)
 # define VFMUNIT_CLOCK_GATE_DISABLE		(1 << 11)
 
-#define FDI_PLL_FREQ_CTL        _MMIO(0x46030)
-#define  FDI_PLL_FREQ_CHANGE_REQUEST    (1 << 24)
-#define  FDI_PLL_FREQ_LOCK_LIMIT_MASK   0xfff00
-#define  FDI_PLL_FREQ_DISABLE_COUNT_LIMIT_MASK  0xff
-
-
 #define _PIPEA_DATA_M1		0x60030
-#define  PIPE_DATA_M1_OFFSET    0
 #define _PIPEA_DATA_N1		0x60034
-#define  PIPE_DATA_N1_OFFSET    0
 
 #define _PIPEA_DATA_M2		0x60038
-#define  PIPE_DATA_M2_OFFSET    0
 #define _PIPEA_DATA_N2		0x6003c
-#define  PIPE_DATA_N2_OFFSET    0
 
 #define _PIPEA_LINK_M1		0x60040
-#define  PIPE_LINK_M1_OFFSET    0
 #define _PIPEA_LINK_N1		0x60044
-#define  PIPE_LINK_N1_OFFSET    0
 
 #define _PIPEA_LINK_M2		0x60048
-#define  PIPE_LINK_M2_OFFSET    0
 #define _PIPEA_LINK_N2		0x6004c
-#define  PIPE_LINK_N2_OFFSET    0
-
-/* PIPEB timing regs are same start from 0x61000 */
-
-#define _PIPEB_DATA_M1		0x61030
-#define _PIPEB_DATA_N1		0x61034
-#define _PIPEB_DATA_M2		0x61038
-#define _PIPEB_DATA_N2		0x6103c
-#define _PIPEB_LINK_M1		0x61040
-#define _PIPEB_LINK_N1		0x61044
-#define _PIPEB_LINK_M2		0x61048
-#define _PIPEB_LINK_N2		0x6104c
 
 #define PIPE_DATA_M1(tran) _MMIO_TRANS2(tran, _PIPEA_DATA_M1)
 #define PIPE_DATA_N1(tran) _MMIO_TRANS2(tran, _PIPEA_DATA_N1)
@@ -7704,11 +5650,7 @@ enum {
 #define  PF_ENABLE              (1 << 31)
 #define  PF_PIPE_SEL_MASK_IVB	(3 << 29)
 #define  PF_PIPE_SEL_IVB(pipe)	((pipe) << 29)
-#define  PF_FILTER_MASK		(3 << 23)
-#define  PF_FILTER_PROGRAMMED	(0 << 23)
 #define  PF_FILTER_MED_3x3	(1 << 23)
-#define  PF_FILTER_EDGE_ENHANCE	(2 << 23)
-#define  PF_FILTER_EDGE_SOFTEN	(3 << 23)
 #define _PFA_WIN_SZ		0x68074
 #define _PFB_WIN_SZ		0x68874
 #define _PFA_WIN_POS		0x68070
@@ -7724,18 +5666,6 @@ enum {
 #define PF_VSCALE(pipe)		_MMIO_PIPE(pipe, _PFA_VSCALE, _PFB_VSCALE)
 #define PF_HSCALE(pipe)		_MMIO_PIPE(pipe, _PFA_HSCALE, _PFB_HSCALE)
 
-#define _PSA_CTL		0x68180
-#define _PSB_CTL		0x68980
-#define PS_ENABLE		(1 << 31)
-#define _PSA_WIN_SZ		0x68174
-#define _PSB_WIN_SZ		0x68974
-#define _PSA_WIN_POS		0x68170
-#define _PSB_WIN_POS		0x68970
-
-#define PS_CTL(pipe)		_MMIO_PIPE(pipe, _PSA_CTL, _PSB_CTL)
-#define PS_WIN_SZ(pipe)		_MMIO_PIPE(pipe, _PSA_WIN_SZ, _PSB_WIN_SZ)
-#define PS_WIN_POS(pipe)	_MMIO_PIPE(pipe, _PSA_WIN_POS, _PSB_WIN_POS)
-
 /*
  * Skylake scalers
  */
@@ -7745,7 +5675,6 @@ enum {
 #define _PS_2B_CTRL      0x68A80
 #define _PS_1C_CTRL      0x69180
 #define PS_SCALER_EN        (1 << 31)
-#define SKL_PS_SCALER_MODE_MASK (3 << 28)
 #define SKL_PS_SCALER_MODE_DYN  (0 << 28)
 #define SKL_PS_SCALER_MODE_HQ  (1 << 28)
 #define SKL_PS_SCALER_MODE_NV12 (2 << 28)
@@ -7753,72 +5682,28 @@ enum {
 #define PS_SCALER_MODE_NORMAL (0 << 29)
 #define PS_PLANE_SEL_MASK  (7 << 25)
 #define PS_PLANE_SEL(plane) (((plane) + 1) << 25)
-#define PS_FILTER_MASK         (3 << 23)
 #define PS_FILTER_MEDIUM       (0 << 23)
 #define PS_FILTER_PROGRAMMED   (1 << 23)
-#define PS_FILTER_EDGE_ENHANCE (2 << 23)
-#define PS_FILTER_BILINEAR     (3 << 23)
-#define PS_VERT3TAP            (1 << 21)
-#define PS_VERT_INT_INVERT_FIELD1 (0 << 20)
-#define PS_VERT_INT_INVERT_FIELD0 (1 << 20)
-#define PS_PWRUP_PROGRESS         (1 << 17)
-#define PS_V_FILTER_BYPASS        (1 << 8)
-#define PS_VADAPT_EN              (1 << 7)
-#define PS_VADAPT_MODE_MASK        (3 << 5)
-#define PS_VADAPT_MODE_LEAST_ADAPT (0 << 5)
-#define PS_VADAPT_MODE_MOD_ADAPT   (1 << 5)
-#define PS_VADAPT_MODE_MOST_ADAPT  (3 << 5)
-#define PS_PLANE_Y_SEL_MASK  (7 << 5)
 #define PS_PLANE_Y_SEL(plane) (((plane) + 1) << 5)
 #define PS_Y_VERT_FILTER_SELECT(set)   ((set) << 4)
 #define PS_Y_HORZ_FILTER_SELECT(set)   ((set) << 3)
 #define PS_UV_VERT_FILTER_SELECT(set)  ((set) << 2)
 #define PS_UV_HORZ_FILTER_SELECT(set)  ((set) << 1)
 
-#define _PS_PWR_GATE_1A     0x68160
-#define _PS_PWR_GATE_2A     0x68260
-#define _PS_PWR_GATE_1B     0x68960
-#define _PS_PWR_GATE_2B     0x68A60
-#define _PS_PWR_GATE_1C     0x69160
-#define PS_PWR_GATE_DIS_OVERRIDE       (1 << 31)
-#define PS_PWR_GATE_SETTLING_TIME_32   (0 << 3)
-#define PS_PWR_GATE_SETTLING_TIME_64   (1 << 3)
-#define PS_PWR_GATE_SETTLING_TIME_96   (2 << 3)
-#define PS_PWR_GATE_SETTLING_TIME_128  (3 << 3)
-#define PS_PWR_GATE_SLPEN_8             0
-#define PS_PWR_GATE_SLPEN_16            1
-#define PS_PWR_GATE_SLPEN_24            2
-#define PS_PWR_GATE_SLPEN_32            3
-
 #define _PS_WIN_POS_1A      0x68170
 #define _PS_WIN_POS_2A      0x68270
 #define _PS_WIN_POS_1B      0x68970
 #define _PS_WIN_POS_2B      0x68A70
-#define _PS_WIN_POS_1C      0x69170
 
 #define _PS_WIN_SZ_1A       0x68174
 #define _PS_WIN_SZ_2A       0x68274
 #define _PS_WIN_SZ_1B       0x68974
 #define _PS_WIN_SZ_2B       0x68A74
-#define _PS_WIN_SZ_1C       0x69174
-
-#define _PS_VSCALE_1A       0x68184
-#define _PS_VSCALE_2A       0x68284
-#define _PS_VSCALE_1B       0x68984
-#define _PS_VSCALE_2B       0x68A84
-#define _PS_VSCALE_1C       0x69184
-
-#define _PS_HSCALE_1A       0x68190
-#define _PS_HSCALE_2A       0x68290
-#define _PS_HSCALE_1B       0x68990
-#define _PS_HSCALE_2B       0x68A90
-#define _PS_HSCALE_1C       0x69190
 
 #define _PS_VPHASE_1A       0x68188
 #define _PS_VPHASE_2A       0x68288
 #define _PS_VPHASE_1B       0x68988
 #define _PS_VPHASE_2B       0x68A88
-#define _PS_VPHASE_1C       0x69188
 #define  PS_Y_PHASE(x)		((x) << 16)
 #define  PS_UV_RGB_PHASE(x)	((x) << 0)
 #define   PS_PHASE_MASK	(0x7fff << 1) /* u2.13 */
@@ -7828,13 +5713,6 @@ enum {
 #define _PS_HPHASE_2A       0x68294
 #define _PS_HPHASE_1B       0x68994
 #define _PS_HPHASE_2B       0x68A94
-#define _PS_HPHASE_1C       0x69194
-
-#define _PS_ECC_STAT_1A     0x681D0
-#define _PS_ECC_STAT_2A     0x682D0
-#define _PS_ECC_STAT_1B     0x689D0
-#define _PS_ECC_STAT_2B     0x68AD0
-#define _PS_ECC_STAT_1C     0x691D0
 
 #define _PS_COEF_SET0_INDEX_1A	   0x68198
 #define _PS_COEF_SET0_INDEX_2A	   0x68298
@@ -7851,30 +5729,18 @@ enum {
 #define SKL_PS_CTRL(pipe, id) _MMIO_PIPE(pipe,        \
 			_ID(id, _PS_1A_CTRL, _PS_2A_CTRL),       \
 			_ID(id, _PS_1B_CTRL, _PS_2B_CTRL))
-#define SKL_PS_PWR_GATE(pipe, id) _MMIO_PIPE(pipe,    \
-			_ID(id, _PS_PWR_GATE_1A, _PS_PWR_GATE_2A), \
-			_ID(id, _PS_PWR_GATE_1B, _PS_PWR_GATE_2B))
 #define SKL_PS_WIN_POS(pipe, id) _MMIO_PIPE(pipe,     \
 			_ID(id, _PS_WIN_POS_1A, _PS_WIN_POS_2A), \
 			_ID(id, _PS_WIN_POS_1B, _PS_WIN_POS_2B))
 #define SKL_PS_WIN_SZ(pipe, id)  _MMIO_PIPE(pipe,     \
 			_ID(id, _PS_WIN_SZ_1A, _PS_WIN_SZ_2A),   \
 			_ID(id, _PS_WIN_SZ_1B, _PS_WIN_SZ_2B))
-#define SKL_PS_VSCALE(pipe, id)  _MMIO_PIPE(pipe,     \
-			_ID(id, _PS_VSCALE_1A, _PS_VSCALE_2A),   \
-			_ID(id, _PS_VSCALE_1B, _PS_VSCALE_2B))
-#define SKL_PS_HSCALE(pipe, id)  _MMIO_PIPE(pipe,     \
-			_ID(id, _PS_HSCALE_1A, _PS_HSCALE_2A),   \
-			_ID(id, _PS_HSCALE_1B, _PS_HSCALE_2B))
 #define SKL_PS_VPHASE(pipe, id)  _MMIO_PIPE(pipe,     \
 			_ID(id, _PS_VPHASE_1A, _PS_VPHASE_2A),   \
 			_ID(id, _PS_VPHASE_1B, _PS_VPHASE_2B))
 #define SKL_PS_HPHASE(pipe, id)  _MMIO_PIPE(pipe,     \
 			_ID(id, _PS_HPHASE_1A, _PS_HPHASE_2A),   \
 			_ID(id, _PS_HPHASE_1B, _PS_HPHASE_2B))
-#define SKL_PS_ECC_STAT(pipe, id)  _MMIO_PIPE(pipe,     \
-			_ID(id, _PS_ECC_STAT_1A, _PS_ECC_STAT_2A),   \
-			_ID(id, _PS_ECC_STAT_1B, _PS_ECC_STAT_2B))
 #define GLK_PS_COEF_INDEX_SET(pipe, id, set)  _MMIO_PIPE(pipe,    \
 			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A) + (set) * 8, \
 			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B) + (set) * 8)
@@ -7898,10 +5764,6 @@ enum {
 #define   PREC_PALETTE_BLUE_MASK  REG_GENMASK(9, 0)
 #define PREC_PALETTE(pipe, i) _MMIO(_PIPE(pipe, _PREC_PALETTE_A, _PREC_PALETTE_B) + (i) * 4)
 
-#define  _PREC_PIPEAGCMAX              0x4d000
-#define  _PREC_PIPEBGCMAX              0x4d010
-#define PREC_PIPEGCMAX(pipe, i)        _MMIO(_PIPE(pipe, _PIPEAGCMAX, _PIPEBGCMAX) + (i) * 4)
-
 #define _GAMMA_MODE_A		0x4a480
 #define _GAMMA_MODE_B		0x4ac80
 #define GAMMA_MODE(pipe) _MMIO_PIPE(pipe, _GAMMA_MODE_A, _GAMMA_MODE_B)
@@ -7910,21 +5772,16 @@ enum {
 #define  GAMMA_MODE_MODE_MASK	(3 << 0)
 #define  GAMMA_MODE_MODE_8BIT	(0 << 0)
 #define  GAMMA_MODE_MODE_10BIT	(1 << 0)
-#define  GAMMA_MODE_MODE_12BIT	(2 << 0)
 #define  GAMMA_MODE_MODE_SPLIT	(3 << 0) /* ivb-bdw */
 #define  GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED	(3 << 0) /* icl + */
 
 /* DMC */
 #define DMC_PROGRAM(addr, i)	_MMIO((addr) + (i) * 4)
-#define DMC_SSP_BASE_ADDR_GEN9	0x00002FC0
-#define DMC_HTP_ADDR_SKL	0x00500034
 #define DMC_SSP_BASE		_MMIO(0x8F074)
 #define DMC_HTP_SKL		_MMIO(0x8F004)
 #define DMC_LAST_WRITE		_MMIO(0x8F034)
-#define DMC_LAST_WRITE_VALUE	0xc003b400
 /* MMIO address range for DMC program (0x80000 - 0x82FFF) */
 #define DMC_MMIO_START_RANGE	0x80000
-#define DMC_MMIO_END_RANGE	0x8FFFF
 #define SKL_DMC_DC3_DC5_COUNT	_MMIO(0x80030)
 #define SKL_DMC_DC5_DC6_COUNT	_MMIO(0x8002C)
 #define BXT_DMC_DC3_DC5_COUNT	_MMIO(0x80038)
@@ -7940,32 +5797,18 @@ enum {
 
 /* interrupts */
 #define DE_MASTER_IRQ_CONTROL   (1 << 31)
-#define DE_SPRITEB_FLIP_DONE    (1 << 29)
-#define DE_SPRITEA_FLIP_DONE    (1 << 28)
-#define DE_PLANEB_FLIP_DONE     (1 << 27)
-#define DE_PLANEA_FLIP_DONE     (1 << 26)
 #define DE_PLANE_FLIP_DONE(plane) (1 << (26 + (plane)))
 #define DE_PCU_EVENT            (1 << 25)
-#define DE_GTT_FAULT            (1 << 24)
 #define DE_POISON               (1 << 23)
-#define DE_PERFORM_COUNTER      (1 << 22)
 #define DE_PCH_EVENT            (1 << 21)
 #define DE_AUX_CHANNEL_A        (1 << 20)
 #define DE_DP_A_HOTPLUG         (1 << 19)
 #define DE_GSE                  (1 << 18)
 #define DE_PIPEB_VBLANK         (1 << 15)
-#define DE_PIPEB_EVEN_FIELD     (1 << 14)
-#define DE_PIPEB_ODD_FIELD      (1 << 13)
-#define DE_PIPEB_LINE_COMPARE   (1 << 12)
-#define DE_PIPEB_VSYNC          (1 << 11)
 #define DE_PIPEB_CRC_DONE	(1 << 10)
 #define DE_PIPEB_FIFO_UNDERRUN  (1 << 8)
 #define DE_PIPEA_VBLANK         (1 << 7)
 #define DE_PIPE_VBLANK(pipe)    (1 << (7 + 8 * (pipe)))
-#define DE_PIPEA_EVEN_FIELD     (1 << 6)
-#define DE_PIPEA_ODD_FIELD      (1 << 5)
-#define DE_PIPEA_LINE_COMPARE   (1 << 4)
-#define DE_PIPEA_VSYNC          (1 << 3)
 #define DE_PIPEA_CRC_DONE	(1 << 2)
 #define DE_PIPE_CRC_DONE(pipe)	(1 << (2 + 8 * (pipe)))
 #define DE_PIPEA_FIFO_UNDERRUN  (1 << 0)
@@ -7978,14 +5821,8 @@ enum {
 #define DE_DP_A_HOTPLUG_IVB		(1 << 27)
 #define DE_AUX_CHANNEL_A_IVB		(1 << 26)
 #define DE_EDP_PSR_INT_HSW		(1 << 19)
-#define DE_SPRITEC_FLIP_DONE_IVB	(1 << 14)
-#define DE_PLANEC_FLIP_DONE_IVB		(1 << 13)
 #define DE_PIPEC_VBLANK_IVB		(1 << 10)
-#define DE_SPRITEB_FLIP_DONE_IVB	(1 << 9)
-#define DE_PLANEB_FLIP_DONE_IVB		(1 << 8)
 #define DE_PIPEB_VBLANK_IVB		(1 << 5)
-#define DE_SPRITEA_FLIP_DONE_IVB	(1 << 4)
-#define DE_PLANEA_FLIP_DONE_IVB		(1 << 3)
 #define DE_PLANE_FLIP_DONE_IVB(plane)	(1 << (3 + 5 * (plane)))
 #define DE_PIPEA_VBLANK_IVB		(1 << 0)
 #define DE_PIPE_VBLANK_IVB(pipe)	(1 << ((pipe) * 5))
@@ -7998,20 +5835,15 @@ enum {
 #define DEIIR   _MMIO(0x44008)
 #define DEIER   _MMIO(0x4400c)
 
-#define GTISR   _MMIO(0x44010)
 #define GTIMR   _MMIO(0x44014)
 #define GTIIR   _MMIO(0x44018)
 #define GTIER   _MMIO(0x4401c)
 
 #define GEN8_MASTER_IRQ			_MMIO(0x44200)
 #define  GEN8_MASTER_IRQ_CONTROL	(1 << 31)
-#define  GEN8_PCU_IRQ			(1 << 30)
 #define  GEN8_DE_PCH_IRQ		(1 << 23)
 #define  GEN8_DE_MISC_IRQ		(1 << 22)
 #define  GEN8_DE_PORT_IRQ		(1 << 20)
-#define  GEN8_DE_PIPE_C_IRQ		(1 << 18)
-#define  GEN8_DE_PIPE_B_IRQ		(1 << 17)
-#define  GEN8_DE_PIPE_A_IRQ		(1 << 16)
 #define  GEN8_DE_PIPE_IRQ(pipe)		(1 << (16 + (pipe)))
 #define  GEN8_GT_VECS_IRQ		(1 << 6)
 #define  GEN8_GT_GUC_IRQ		(1 << 5)
@@ -8033,24 +5865,19 @@ enum {
 #define GEN8_VCS0_IRQ_SHIFT 0  /* NB: VCS1 in bspec! */
 #define GEN8_VCS1_IRQ_SHIFT 16 /* NB: VCS2 in bpsec! */
 #define GEN8_VECS_IRQ_SHIFT 0
-#define GEN8_WD_IRQ_SHIFT 16
 
 #define GEN8_DE_PIPE_ISR(pipe) _MMIO(0x44400 + (0x10 * (pipe)))
 #define GEN8_DE_PIPE_IMR(pipe) _MMIO(0x44404 + (0x10 * (pipe)))
 #define GEN8_DE_PIPE_IIR(pipe) _MMIO(0x44408 + (0x10 * (pipe)))
 #define GEN8_DE_PIPE_IER(pipe) _MMIO(0x4440c + (0x10 * (pipe)))
 #define  GEN8_PIPE_FIFO_UNDERRUN	(1 << 31)
-#define  GEN8_PIPE_CDCLK_CRC_ERROR	(1 << 29)
 #define  GEN8_PIPE_CDCLK_CRC_DONE	(1 << 28)
 #define  XELPD_PIPE_SOFT_UNDERRUN	(1 << 22)
 #define  XELPD_PIPE_HARD_UNDERRUN	(1 << 21)
 #define  GEN8_PIPE_CURSOR_FAULT		(1 << 10)
 #define  GEN8_PIPE_SPRITE_FAULT		(1 << 9)
 #define  GEN8_PIPE_PRIMARY_FAULT	(1 << 8)
-#define  GEN8_PIPE_SPRITE_FLIP_DONE	(1 << 5)
 #define  GEN8_PIPE_PRIMARY_FLIP_DONE	(1 << 4)
-#define  GEN8_PIPE_SCAN_LINE_EVENT	(1 << 2)
-#define  GEN8_PIPE_VSYNC		(1 << 1)
 #define  GEN8_PIPE_VBLANK		(1 << 0)
 #define  GEN9_PIPE_CURSOR_FAULT		(1 << 11)
 #define  GEN11_PIPE_PLANE7_FAULT	(1 << 22)
@@ -8060,9 +5887,6 @@ enum {
 #define  GEN9_PIPE_PLANE3_FAULT		(1 << 9)
 #define  GEN9_PIPE_PLANE2_FAULT		(1 << 8)
 #define  GEN9_PIPE_PLANE1_FAULT		(1 << 7)
-#define  GEN9_PIPE_PLANE4_FLIP_DONE	(1 << 6)
-#define  GEN9_PIPE_PLANE3_FLIP_DONE	(1 << 5)
-#define  GEN9_PIPE_PLANE2_FLIP_DONE	(1 << 4)
 #define  GEN9_PIPE_PLANE1_FLIP_DONE	(1 << 3)
 #define  GEN9_PIPE_PLANE_FLIP_DONE(p)	(1 << (3 + (p)))
 #define GEN8_DE_PIPE_IRQ_FAULT_ERRORS \
@@ -8091,8 +5915,6 @@ enum {
 #define GEN8_DE_PORT_IMR _MMIO(0x44444)
 #define GEN8_DE_PORT_IIR _MMIO(0x44448)
 #define GEN8_DE_PORT_IER _MMIO(0x4444c)
-#define  DSI1_NON_TE			(1 << 31)
-#define  DSI0_NON_TE			(1 << 30)
 #define  ICL_AUX_CHANNEL_E		(1 << 29)
 #define  ICL_AUX_CHANNEL_F		(1 << 28)
 #define  GEN9_AUX_CHANNEL_D		(1 << 27)
@@ -8131,7 +5953,6 @@ enum {
 #define GEN8_PCU_IIR _MMIO(0x444e8)
 #define GEN8_PCU_IER _MMIO(0x444ec)
 
-#define GEN11_GU_MISC_ISR	_MMIO(0x444f0)
 #define GEN11_GU_MISC_IMR	_MMIO(0x444f4)
 #define GEN11_GU_MISC_IIR	_MMIO(0x444f8)
 #define GEN11_GU_MISC_IER	_MMIO(0x444fc)
@@ -8139,12 +5960,9 @@ enum {
 
 #define GEN11_GFX_MSTR_IRQ		_MMIO(0x190010)
 #define  GEN11_MASTER_IRQ		(1 << 31)
-#define  GEN11_PCU_IRQ			(1 << 30)
 #define  GEN11_GU_MISC_IRQ		(1 << 29)
 #define  GEN11_DISPLAY_IRQ		(1 << 16)
 #define  GEN11_GT_DW_IRQ(x)		(1 << (x))
-#define  GEN11_GT_DW1_IRQ		(1 << 1)
-#define  GEN11_GT_DW0_IRQ		(1 << 0)
 
 #define DG1_MSTR_TILE_INTR		_MMIO(0x190008)
 #define   DG1_MSTR_IRQ			REG_BIT(31)
@@ -8152,16 +5970,8 @@ enum {
 
 #define GEN11_DISPLAY_INT_CTL		_MMIO(0x44200)
 #define  GEN11_DISPLAY_IRQ_ENABLE	(1 << 31)
-#define  GEN11_AUDIO_CODEC_IRQ		(1 << 24)
-#define  GEN11_DE_PCH_IRQ		(1 << 23)
-#define  GEN11_DE_MISC_IRQ		(1 << 22)
 #define  GEN11_DE_HPD_IRQ		(1 << 21)
-#define  GEN11_DE_PORT_IRQ		(1 << 20)
-#define  GEN11_DE_PIPE_C		(1 << 18)
-#define  GEN11_DE_PIPE_B		(1 << 17)
-#define  GEN11_DE_PIPE_A		(1 << 16)
 
-#define GEN11_DE_HPD_ISR		_MMIO(0x44470)
 #define GEN11_DE_HPD_IMR		_MMIO(0x44474)
 #define GEN11_DE_HPD_IIR		_MMIO(0x44478)
 #define GEN11_DE_HPD_IER		_MMIO(0x4447c)
@@ -8184,40 +5994,22 @@ enum {
 #define GEN11_TC_HOTPLUG_CTL				_MMIO(0x44038)
 #define  GEN11_HOTPLUG_CTL_ENABLE(hpd_pin)		(8 << (_HPD_PIN_TC(hpd_pin) * 4))
 #define  GEN11_HOTPLUG_CTL_LONG_DETECT(hpd_pin)		(2 << (_HPD_PIN_TC(hpd_pin) * 4))
-#define  GEN11_HOTPLUG_CTL_SHORT_DETECT(hpd_pin)	(1 << (_HPD_PIN_TC(hpd_pin) * 4))
-#define  GEN11_HOTPLUG_CTL_NO_DETECT(hpd_pin)		(0 << (_HPD_PIN_TC(hpd_pin) * 4))
 
-#define GEN11_GT_INTR_DW0		_MMIO(0x190018)
-#define  GEN11_CSME			(31)
-#define  GEN11_GUNIT			(28)
+#define GEN11_GT_INTR_DW(x)		_MMIO(0x190018 + ((x) * 4))
 #define  GEN11_GUC			(25)
-#define  GEN11_WDPERF			(20)
 #define  GEN11_KCR			(19)
 #define  GEN11_GTPM			(16)
-#define  GEN11_BCS			(15)
-#define  GEN11_RCS0			(0)
-
-#define GEN11_GT_INTR_DW1		_MMIO(0x19001c)
-#define  GEN11_VECS(x)			(31 - (x))
-#define  GEN11_VCS(x)			(x)
-
-#define GEN11_GT_INTR_DW(x)		_MMIO(0x190018 + ((x) * 4))
 
-#define GEN11_INTR_IDENTITY_REG0	_MMIO(0x190060)
-#define GEN11_INTR_IDENTITY_REG1	_MMIO(0x190064)
-#define  GEN11_INTR_DATA_VALID		(1 << 31)
-#define  GEN11_INTR_ENGINE_CLASS(x)	(((x) & GENMASK(18, 16)) >> 16)
-#define  GEN11_INTR_ENGINE_INSTANCE(x)	(((x) & GENMASK(25, 20)) >> 20)
-#define  GEN11_INTR_ENGINE_INTR(x)	((x) & 0xffff)
 /* irq instances for OTHER_CLASS */
 #define OTHER_GUC_INSTANCE	0
 #define OTHER_GTPM_INSTANCE	1
 #define OTHER_KCR_INSTANCE	4
 
 #define GEN11_INTR_IDENTITY_REG(x)	_MMIO(0x190060 + ((x) * 4))
-
-#define GEN11_IIR_REG0_SELECTOR		_MMIO(0x190070)
-#define GEN11_IIR_REG1_SELECTOR		_MMIO(0x190074)
+#define  GEN11_INTR_DATA_VALID		(1 << 31)
+#define  GEN11_INTR_ENGINE_CLASS(x)	(((x) & GENMASK(18, 16)) >> 16)
+#define  GEN11_INTR_ENGINE_INSTANCE(x)	(((x) & GENMASK(25, 20)) >> 20)
+#define  GEN11_INTR_ENGINE_INTR(x)	((x) & 0xffff)
 
 #define GEN11_IIR_REG_SELECTOR(x)	_MMIO(0x190070 + ((x) * 4))
 
@@ -8239,10 +6031,8 @@ enum {
 #define GEN11_GUC_SG_INTR_MASK		_MMIO(0x1900e8)
 #define GEN11_GPM_WGBOXPERF_INTR_MASK	_MMIO(0x1900ec)
 #define GEN11_CRYPTO_RSVD_INTR_MASK	_MMIO(0x1900f0)
-#define GEN11_GUNIT_CSME_INTR_MASK	_MMIO(0x1900f4)
 
 #define   ENGINE1_MASK			REG_GENMASK(31, 16)
-#define   ENGINE0_MASK			REG_GENMASK(15, 0)
 
 #define ILK_DISPLAY_CHICKEN2	_MMIO(0x42004)
 /* Required on all Ironlake and Sandybridge according to the B-Spec. */
@@ -8250,14 +6040,10 @@ enum {
 #define  ILK_DPARB_GATE	(1 << 22)
 #define  ILK_VSDPFD_FULL	(1 << 21)
 #define FUSE_STRAP			_MMIO(0x42014)
-#define  ILK_INTERNAL_GRAPHICS_DISABLE	(1 << 31)
 #define  ILK_INTERNAL_DISPLAY_DISABLE	(1 << 30)
-#define  ILK_DISPLAY_DEBUG_DISABLE	(1 << 29)
 #define  IVB_PIPE_C_DISABLE		(1 << 28)
-#define  ILK_HDCP_DISABLE		(1 << 25)
 #define  ILK_eDP_A_DISABLE		(1 << 24)
 #define  HSW_CDCLK_LIMIT		(1 << 24)
-#define  ILK_DESKTOP			(1 << 23)
 #define  HSW_CPU_SSC_ENABLE		(1 << 21)
 
 #define FUSE_STRAP3			_MMIO(0x42020)
@@ -8290,9 +6076,6 @@ enum {
 #define CHICKEN_MISC_2		_MMIO(0x42084)
 #define  KBL_ARB_FILL_SPARE_14	REG_BIT(14)
 #define  KBL_ARB_FILL_SPARE_13	REG_BIT(13)
-#define  GLK_CL2_PWR_DOWN	(1 << 12)
-#define  GLK_CL1_PWR_DOWN	(1 << 11)
-#define  GLK_CL0_PWR_DOWN	(1 << 10)
 
 #define CHICKEN_MISC_4		_MMIO(0x4208c)
 #define   CHICKEN_FBC_STRIDE_OVERRIDE	REG_BIT(13)
@@ -8303,20 +6086,11 @@ enum {
 #define _CHICKEN_PIPESL_1_B	0x420b4
 #define  HSW_PRI_STRETCH_MAX_MASK	REG_GENMASK(28, 27)
 #define  HSW_PRI_STRETCH_MAX_X8		REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 0)
-#define  HSW_PRI_STRETCH_MAX_X4		REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 1)
-#define  HSW_PRI_STRETCH_MAX_X2		REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 2)
 #define  HSW_PRI_STRETCH_MAX_X1		REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 3)
-#define  HSW_SPR_STRETCH_MAX_MASK	REG_GENMASK(26, 25)
-#define  HSW_SPR_STRETCH_MAX_X8		REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 0)
-#define  HSW_SPR_STRETCH_MAX_X4		REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 1)
-#define  HSW_SPR_STRETCH_MAX_X2		REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 2)
-#define  HSW_SPR_STRETCH_MAX_X1		REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 3)
 #define  HSW_FBCQ_DIS			(1 << 22)
 #define  BDW_DPRS_MASK_VBLANK_SRD	(1 << 0)
 #define  SKL_PLANE1_STRETCH_MAX_MASK	REG_GENMASK(1, 0)
 #define  SKL_PLANE1_STRETCH_MAX_X8	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 0)
-#define  SKL_PLANE1_STRETCH_MAX_X4	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 1)
-#define  SKL_PLANE1_STRETCH_MAX_X2	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 2)
 #define  SKL_PLANE1_STRETCH_MAX_X1	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 3)
 #define CHICKEN_PIPESL_1(pipe) _MMIO_PIPE(pipe, _CHICKEN_PIPESL_1_A, _CHICKEN_PIPESL_1_B)
 
@@ -8333,7 +6107,6 @@ enum {
 					    [TRANSCODER_D] = _CHICKEN_TRANS_D))
 #define  HSW_FRAME_START_DELAY_MASK	REG_GENMASK(28, 27)
 #define  HSW_FRAME_START_DELAY(x)	REG_FIELD_PREP(HSW_FRAME_START_DELAY_MASK, x)
-#define  VSC_DATA_SEL_SOFTWARE_CONTROL	REG_BIT(25) /* GLK */
 #define  FECSTALL_DIS_DPTSTREAM_DPTTG	REG_BIT(23)
 #define  DDI_TRAINING_OVERRIDE_ENABLE	REG_BIT(19)
 #define  ADLP_1_BASED_X_GRANULARITY	REG_BIT(18)
@@ -8416,7 +6189,6 @@ enum {
 #define   SKL_DFSM_CDCLK_LIMIT_675	(0 << 23)
 #define   SKL_DFSM_CDCLK_LIMIT_540	(1 << 23)
 #define   SKL_DFSM_CDCLK_LIMIT_450	(2 << 23)
-#define   SKL_DFSM_CDCLK_LIMIT_337_5	(3 << 23)
 #define   ICL_DFSM_DMC_DISABLE		(1 << 23)
 #define   SKL_DFSM_PIPE_A_DISABLE	(1 << 30)
 #define   SKL_DFSM_PIPE_B_DISABLE	(1 << 21)
@@ -8434,7 +6206,6 @@ enum {
 #define   GEN9_FFSC_PERCTX_PREEMPT_CTRL	(1 << 14)
 
 #define FF_SLICE_CS_CHICKEN2			_MMIO(0x20e4)
-#define  GEN9_TSG_BARRIER_ACK_DISABLE		(1 << 8)
 #define  GEN9_POOLED_EU_LOAD_BALANCING_FIX_DISABLE  (1 << 10)
 
 #define GEN9_CS_DEBUG_MODE1		_MMIO(0x20ec)
@@ -8448,7 +6219,6 @@ enum {
 #define GEN8_CS_CHICKEN1		_MMIO(0x2580)
 #define GEN9_PREEMPT_3D_OBJECT_LEVEL		(1 << 0)
 #define GEN9_PREEMPT_GPGPU_LEVEL(hi, lo)	(((hi) << 2) | ((lo) << 1))
-#define GEN9_PREEMPT_GPGPU_MID_THREAD_LEVEL	GEN9_PREEMPT_GPGPU_LEVEL(0, 0)
 #define GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL	GEN9_PREEMPT_GPGPU_LEVEL(0, 1)
 #define GEN9_PREEMPT_GPGPU_COMMAND_LEVEL	GEN9_PREEMPT_GPGPU_LEVEL(1, 0)
 #define GEN9_PREEMPT_GPGPU_LEVEL_MASK		GEN9_PREEMPT_GPGPU_LEVEL(1, 1)
@@ -8470,22 +6240,15 @@ enum {
 #define GEN11_COMMON_SLICE_CHICKEN3			_MMIO(0x7304)
 #define   DG1_FLOAT_POINT_BLEND_OPT_STRICT_MODE_EN	REG_BIT(12)
 #define   XEHP_DUAL_SIMD8_SEQ_MERGE_DISABLE		REG_BIT(12)
-#define   GEN11_BLEND_EMB_FIX_DISABLE_IN_RCC		REG_BIT(11)
 #define   GEN12_DISABLE_CPS_AWARE_COLOR_PIPE		REG_BIT(9)
 
 #define HIZ_CHICKEN					_MMIO(0x7018)
 # define CHV_HZ_8X8_MODE_IN_1X				REG_BIT(15)
 # define DG1_HZ_READ_SUPPRESSION_OPTIMIZATION_DISABLE   REG_BIT(14)
-# define BDW_HIZ_POWER_COMPILER_CLOCK_GATING_DISABLE	REG_BIT(3)
-
-#define GEN9_SLICE_COMMON_ECO_CHICKEN0		_MMIO(0x7308)
-#define  DISABLE_PIXEL_MASK_CAMMING		(1 << 14)
 
 #define GEN9_SLICE_COMMON_ECO_CHICKEN1		_MMIO(0x731c)
-#define   GEN11_STATE_CACHE_REDIRECT_TO_CS	(1 << 11)
 
 #define GEN7_SARCHKMD				_MMIO(0xB000)
-#define GEN7_DISABLE_DEMAND_PREFETCH		(1 << 31)
 #define GEN7_DISABLE_SAMPLER_PREFETCH           (1 << 30)
 
 #define GEN7_L3SQCREG1				_MMIO(0xB010)
@@ -8504,14 +6267,11 @@ enum {
 
 #define GEN7_L3CNTLREG1				_MMIO(0xB01C)
 #define  GEN7_WA_FOR_GEN7_L3_CONTROL			0x3C47FF8C
-#define  GEN7_L3AGDIS				(1 << 19)
 #define GEN7_L3CNTLREG2				_MMIO(0xB020)
 #define GEN7_L3CNTLREG3				_MMIO(0xB024)
 
 #define GEN7_L3_CHICKEN_MODE_REGISTER		_MMIO(0xB030)
 #define   GEN7_WA_L3_CHICKEN_MODE		0x20000000
-#define GEN10_L3_CHICKEN_MODE_REGISTER		_MMIO(0xB114)
-#define   GEN11_I2M_WRITE_DISABLE		(1 << 28)
 
 #define GEN7_L3SQCREG4				_MMIO(0xb034)
 #define  L3SQ_URB_READ_CAM_MATCH_DISABLE	(1 << 27)
@@ -8521,7 +6281,6 @@ enum {
 
 #define GEN8_L3SQCREG4				_MMIO(0xb118)
 #define  GEN11_LQSC_CLEAN_EVICT_DISABLE		(1 << 6)
-#define  GEN8_LQSC_RO_PERF_DIS			(1 << 27)
 #define  GEN8_LQSC_FLUSH_COHERENT_LINES		(1 << 21)
 #define  GEN8_LQSQ_NONIA_COHERENT_ATOMICS_ENABLE REG_BIT(22)
 
@@ -8539,7 +6298,6 @@ enum {
 #define  HDC_DONOT_FETCH_MEM_WHEN_MASKED	(1 << 11)
 #define  HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT	(1 << 5)
 #define  HDC_FORCE_NON_COHERENT			(1 << 4)
-#define  HDC_BARRIER_PERFORMANCE_DISABLE	(1 << 10)
 
 #define GEN12_HDC_CHICKEN0					_MMIO(0xE5F0)
 #define   LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK	REG_GENMASK(13, 11)
@@ -8549,10 +6307,6 @@ enum {
 
 #define GEN8_HDC_CHICKEN1			_MMIO(0x7304)
 
-/* GEN9 chicken */
-#define SLICE_ECO_CHICKEN0			_MMIO(0x7308)
-#define   PIXEL_MASK_CAMMING_DISABLE		(1 << 14)
-
 #define GEN9_WM_CHICKEN3			_MMIO(0x5588)
 #define   GEN9_FACTOR_IN_CLR_VAL_HIZ		(1 << 9)
 
@@ -8569,7 +6323,6 @@ enum {
 /*GEN11 chicken */
 #define _PIPEA_CHICKEN				0x70038
 #define _PIPEB_CHICKEN				0x71038
-#define _PIPEC_CHICKEN				0x72038
 #define PIPE_CHICKEN(pipe)			_MMIO_PIPE(pipe, _PIPEA_CHICKEN,\
 							   _PIPEB_CHICKEN)
 #define   UNDERRUN_RECOVERY_DISABLE_ADLP	REG_BIT(30)
@@ -8593,26 +6346,14 @@ enum {
 #define PCH_DISPLAY_BASE	0xc0000u
 
 /* south display engine interrupt: IBX */
-#define SDE_AUDIO_POWER_D	(1 << 27)
-#define SDE_AUDIO_POWER_C	(1 << 26)
-#define SDE_AUDIO_POWER_B	(1 << 25)
 #define SDE_AUDIO_POWER_SHIFT	(25)
 #define SDE_AUDIO_POWER_MASK	(7 << SDE_AUDIO_POWER_SHIFT)
 #define SDE_GMBUS		(1 << 24)
-#define SDE_AUDIO_HDCP_TRANSB	(1 << 23)
-#define SDE_AUDIO_HDCP_TRANSA	(1 << 22)
 #define SDE_AUDIO_HDCP_MASK	(3 << 22)
-#define SDE_AUDIO_TRANSB	(1 << 21)
-#define SDE_AUDIO_TRANSA	(1 << 20)
 #define SDE_AUDIO_TRANS_MASK	(3 << 20)
 #define SDE_POISON		(1 << 19)
 /* 18 reserved */
-#define SDE_FDI_RXB		(1 << 17)
-#define SDE_FDI_RXA		(1 << 16)
 #define SDE_FDI_MASK		(3 << 16)
-#define SDE_AUXD		(1 << 15)
-#define SDE_AUXC		(1 << 14)
-#define SDE_AUXB		(1 << 13)
 #define SDE_AUX_MASK		(7 << 13)
 /* 12 reserved */
 #define SDE_CRT_HOTPLUG         (1 << 11)
@@ -8631,17 +6372,10 @@ enum {
 #define SDE_TRANSA_CRC_DONE	(1 << 2)
 #define SDE_TRANSA_CRC_ERR	(1 << 1)
 #define SDE_TRANSA_FIFO_UNDER	(1 << 0)
-#define SDE_TRANS_MASK		(0x3f)
 
 /* south display engine interrupt: CPT - CNP */
-#define SDE_AUDIO_POWER_D_CPT	(1 << 31)
-#define SDE_AUDIO_POWER_C_CPT	(1 << 30)
-#define SDE_AUDIO_POWER_B_CPT	(1 << 29)
 #define SDE_AUDIO_POWER_SHIFT_CPT   29
 #define SDE_AUDIO_POWER_MASK_CPT    (7 << 29)
-#define SDE_AUXD_CPT		(1 << 27)
-#define SDE_AUXC_CPT		(1 << 26)
-#define SDE_AUXB_CPT		(1 << 25)
 #define SDE_AUX_MASK_CPT	(7 << 25)
 #define SDE_PORTE_HOTPLUG_SPT	(1 << 25)
 #define SDE_PORTA_HOTPLUG_SPT	(1 << 24)
@@ -8710,40 +6444,23 @@ enum {
 #define  PORTA_HOTPLUG_ENABLE		(1 << 28) /* LPT:LP+ & BXT */
 #define  BXT_DDIA_HPD_INVERT            (1 << 27)
 #define  PORTA_HOTPLUG_STATUS_MASK	(3 << 24) /* SPT+ & BXT */
-#define  PORTA_HOTPLUG_NO_DETECT	(0 << 24) /* SPT+ & BXT */
-#define  PORTA_HOTPLUG_SHORT_DETECT	(1 << 24) /* SPT+ & BXT */
 #define  PORTA_HOTPLUG_LONG_DETECT	(2 << 24) /* SPT+ & BXT */
 #define  PORTD_HOTPLUG_ENABLE		(1 << 20)
 #define  PORTD_PULSE_DURATION_2ms	(0 << 18) /* pre-LPT */
-#define  PORTD_PULSE_DURATION_4_5ms	(1 << 18) /* pre-LPT */
-#define  PORTD_PULSE_DURATION_6ms	(2 << 18) /* pre-LPT */
-#define  PORTD_PULSE_DURATION_100ms	(3 << 18) /* pre-LPT */
 #define  PORTD_PULSE_DURATION_MASK	(3 << 18) /* pre-LPT */
 #define  PORTD_HOTPLUG_STATUS_MASK	(3 << 16)
-#define  PORTD_HOTPLUG_NO_DETECT	(0 << 16)
-#define  PORTD_HOTPLUG_SHORT_DETECT	(1 << 16)
 #define  PORTD_HOTPLUG_LONG_DETECT	(2 << 16)
 #define  PORTC_HOTPLUG_ENABLE		(1 << 12)
 #define  BXT_DDIC_HPD_INVERT            (1 << 11)
 #define  PORTC_PULSE_DURATION_2ms	(0 << 10) /* pre-LPT */
-#define  PORTC_PULSE_DURATION_4_5ms	(1 << 10) /* pre-LPT */
-#define  PORTC_PULSE_DURATION_6ms	(2 << 10) /* pre-LPT */
-#define  PORTC_PULSE_DURATION_100ms	(3 << 10) /* pre-LPT */
 #define  PORTC_PULSE_DURATION_MASK	(3 << 10) /* pre-LPT */
 #define  PORTC_HOTPLUG_STATUS_MASK	(3 << 8)
-#define  PORTC_HOTPLUG_NO_DETECT	(0 << 8)
-#define  PORTC_HOTPLUG_SHORT_DETECT	(1 << 8)
 #define  PORTC_HOTPLUG_LONG_DETECT	(2 << 8)
 #define  PORTB_HOTPLUG_ENABLE		(1 << 4)
 #define  BXT_DDIB_HPD_INVERT            (1 << 3)
 #define  PORTB_PULSE_DURATION_2ms	(0 << 2) /* pre-LPT */
-#define  PORTB_PULSE_DURATION_4_5ms	(1 << 2) /* pre-LPT */
-#define  PORTB_PULSE_DURATION_6ms	(2 << 2) /* pre-LPT */
-#define  PORTB_PULSE_DURATION_100ms	(3 << 2) /* pre-LPT */
 #define  PORTB_PULSE_DURATION_MASK	(3 << 2) /* pre-LPT */
 #define  PORTB_HOTPLUG_STATUS_MASK	(3 << 0)
-#define  PORTB_HOTPLUG_NO_DETECT	(0 << 0)
-#define  PORTB_HOTPLUG_SHORT_DETECT	(1 << 0)
 #define  PORTB_HOTPLUG_LONG_DETECT	(2 << 0)
 #define  BXT_DDI_HPD_INVERT_MASK	(BXT_DDIA_HPD_INVERT | \
 					BXT_DDIB_HPD_INVERT | \
@@ -8751,9 +6468,6 @@ enum {
 
 #define PCH_PORT_HOTPLUG2		_MMIO(0xc403C)	/* SHOTPLUG_CTL2 SPT+ */
 #define  PORTE_HOTPLUG_ENABLE		(1 << 4)
-#define  PORTE_HOTPLUG_STATUS_MASK	(3 << 0)
-#define  PORTE_HOTPLUG_NO_DETECT	(0 << 0)
-#define  PORTE_HOTPLUG_SHORT_DETECT	(1 << 0)
 #define  PORTE_HOTPLUG_LONG_DETECT	(2 << 0)
 
 /* This register is a reuse of PCH_PORT_HOTPLUG register. The
@@ -8763,16 +6477,11 @@ enum {
 
 #define SHOTPLUG_CTL_DDI				_MMIO(0xc4030)
 #define   SHOTPLUG_CTL_DDI_HPD_ENABLE(hpd_pin)			(0x8 << (_HPD_PIN_DDI(hpd_pin) * 4))
-#define   SHOTPLUG_CTL_DDI_HPD_STATUS_MASK(hpd_pin)		(0x3 << (_HPD_PIN_DDI(hpd_pin) * 4))
-#define   SHOTPLUG_CTL_DDI_HPD_NO_DETECT(hpd_pin)		(0x0 << (_HPD_PIN_DDI(hpd_pin) * 4))
-#define   SHOTPLUG_CTL_DDI_HPD_SHORT_DETECT(hpd_pin)		(0x1 << (_HPD_PIN_DDI(hpd_pin) * 4))
 #define   SHOTPLUG_CTL_DDI_HPD_LONG_DETECT(hpd_pin)		(0x2 << (_HPD_PIN_DDI(hpd_pin) * 4))
-#define   SHOTPLUG_CTL_DDI_HPD_SHORT_LONG_DETECT(hpd_pin)	(0x3 << (_HPD_PIN_DDI(hpd_pin) * 4))
 
 #define SHOTPLUG_CTL_TC				_MMIO(0xc4034)
 #define   ICP_TC_HPD_ENABLE(hpd_pin)		(8 << (_HPD_PIN_TC(hpd_pin) * 4))
 #define   ICP_TC_HPD_LONG_DETECT(hpd_pin)	(2 << (_HPD_PIN_TC(hpd_pin) * 4))
-#define   ICP_TC_HPD_SHORT_DETECT(hpd_pin)	(1 << (_HPD_PIN_TC(hpd_pin) * 4))
 
 #define SHPD_FILTER_CNT				_MMIO(0xc4038)
 #define   SHPD_FILTER_CNT_500_ADJ		0x001D9
@@ -8789,10 +6498,7 @@ enum {
 #define PCH_FP0(pll) _MMIO((pll) == 0 ? _PCH_FPA0 : _PCH_FPB0)
 #define PCH_FP1(pll) _MMIO((pll) == 0 ? _PCH_FPA1 : _PCH_FPB1)
 
-#define PCH_DPLL_TEST           _MMIO(0xc606c)
-
 #define PCH_DREF_CONTROL        _MMIO(0xC6200)
-#define  DREF_CONTROL_MASK      0x7fc3
 #define  DREF_CPU_SOURCE_OUTPUT_DISABLE         (0 << 13)
 #define  DREF_CPU_SOURCE_OUTPUT_DOWNSPREAD      (2 << 13)
 #define  DREF_CPU_SOURCE_OUTPUT_NONSPREAD       (3 << 13)
@@ -8800,62 +6506,32 @@ enum {
 #define  DREF_SSC_SOURCE_DISABLE                (0 << 11)
 #define  DREF_SSC_SOURCE_ENABLE                 (2 << 11)
 #define  DREF_SSC_SOURCE_MASK			(3 << 11)
-#define  DREF_NONSPREAD_SOURCE_DISABLE          (0 << 9)
 #define  DREF_NONSPREAD_CK505_ENABLE		(1 << 9)
 #define  DREF_NONSPREAD_SOURCE_ENABLE           (2 << 9)
 #define  DREF_NONSPREAD_SOURCE_MASK		(3 << 9)
-#define  DREF_SUPERSPREAD_SOURCE_DISABLE        (0 << 7)
-#define  DREF_SUPERSPREAD_SOURCE_ENABLE         (2 << 7)
 #define  DREF_SUPERSPREAD_SOURCE_MASK		(3 << 7)
-#define  DREF_SSC4_DOWNSPREAD                   (0 << 6)
-#define  DREF_SSC4_CENTERSPREAD                 (1 << 6)
-#define  DREF_SSC1_DISABLE                      (0 << 1)
 #define  DREF_SSC1_ENABLE                       (1 << 1)
-#define  DREF_SSC4_DISABLE                      (0)
-#define  DREF_SSC4_ENABLE                       (1)
 
 #define PCH_RAWCLK_FREQ         _MMIO(0xc6204)
-#define  FDL_TP1_TIMER_SHIFT    12
-#define  FDL_TP1_TIMER_MASK     (3 << 12)
-#define  FDL_TP2_TIMER_SHIFT    10
-#define  FDL_TP2_TIMER_MASK     (3 << 10)
 #define  RAWCLK_FREQ_MASK       0x3ff
-#define  CNP_RAWCLK_DIV_MASK	(0x3ff << 16)
 #define  CNP_RAWCLK_DIV(div)	((div) << 16)
-#define  CNP_RAWCLK_FRAC_MASK	(0xf << 26)
 #define  CNP_RAWCLK_DEN(den)	((den) << 26)
 #define  ICP_RAWCLK_NUM(num)	((num) << 11)
 
-#define PCH_DPLL_TMR_CFG        _MMIO(0xc6208)
-
-#define PCH_SSC4_PARMS          _MMIO(0xc6210)
-#define PCH_SSC4_AUX_PARMS      _MMIO(0xc6214)
-
 #define PCH_DPLL_SEL		_MMIO(0xc7000)
 #define	 TRANS_DPLLB_SEL(pipe)		(1 << ((pipe) * 4))
-#define	 TRANS_DPLLA_SEL(pipe)		0
 #define  TRANS_DPLL_ENABLE(pipe)	(1 << ((pipe) * 4 + 3))
 
 /* transcoder */
 
 #define _PCH_TRANS_HTOTAL_A		0xe0000
 #define  TRANS_HTOTAL_SHIFT		16
-#define  TRANS_HACTIVE_SHIFT		0
 #define _PCH_TRANS_HBLANK_A		0xe0004
-#define  TRANS_HBLANK_END_SHIFT		16
-#define  TRANS_HBLANK_START_SHIFT	0
 #define _PCH_TRANS_HSYNC_A		0xe0008
-#define  TRANS_HSYNC_END_SHIFT		16
-#define  TRANS_HSYNC_START_SHIFT	0
 #define _PCH_TRANS_VTOTAL_A		0xe000c
 #define  TRANS_VTOTAL_SHIFT		16
-#define  TRANS_VACTIVE_SHIFT		0
 #define _PCH_TRANS_VBLANK_A		0xe0010
-#define  TRANS_VBLANK_END_SHIFT		16
-#define  TRANS_VBLANK_START_SHIFT	0
 #define _PCH_TRANS_VSYNC_A		0xe0014
-#define  TRANS_VSYNC_END_SHIFT		16
-#define  TRANS_VSYNC_START_SHIFT	0
 #define _PCH_TRANS_VSYNCSHIFT_A		0xe0028
 
 #define _PCH_TRANSA_DATA_M1	0xe0030
@@ -8873,7 +6549,6 @@ enum {
 #define _VIDEO_DIP_GCP_A         0xe0210
 #define  GCP_COLOR_INDICATION		(1 << 2)
 #define  GCP_DEFAULT_PHASE_ENABLE	(1 << 1)
-#define  GCP_AV_MUTE			(1 << 0)
 
 #define _VIDEO_DIP_CTL_B         0xe1200
 #define _VIDEO_DIP_DATA_B        0xe1208
@@ -8915,27 +6590,8 @@ enum {
 #define _HSW_VIDEO_DIP_GMP_DATA_A	0x602E0
 #define _HSW_VIDEO_DIP_VSC_DATA_A	0x60320
 #define _GLK_VIDEO_DIP_DRM_DATA_A	0x60440
-#define _HSW_VIDEO_DIP_AVI_ECC_A	0x60240
-#define _HSW_VIDEO_DIP_VS_ECC_A		0x60280
-#define _HSW_VIDEO_DIP_SPD_ECC_A	0x602C0
-#define _HSW_VIDEO_DIP_GMP_ECC_A	0x60300
-#define _HSW_VIDEO_DIP_VSC_ECC_A	0x60344
 #define _HSW_VIDEO_DIP_GCP_A		0x60210
 
-#define _HSW_VIDEO_DIP_CTL_B		0x61200
-#define _HSW_VIDEO_DIP_AVI_DATA_B	0x61220
-#define _HSW_VIDEO_DIP_VS_DATA_B	0x61260
-#define _HSW_VIDEO_DIP_SPD_DATA_B	0x612A0
-#define _HSW_VIDEO_DIP_GMP_DATA_B	0x612E0
-#define _HSW_VIDEO_DIP_VSC_DATA_B	0x61320
-#define _GLK_VIDEO_DIP_DRM_DATA_B	0x61440
-#define _HSW_VIDEO_DIP_BVI_ECC_B	0x61240
-#define _HSW_VIDEO_DIP_VS_ECC_B		0x61280
-#define _HSW_VIDEO_DIP_SPD_ECC_B	0x612C0
-#define _HSW_VIDEO_DIP_GMP_ECC_B	0x61300
-#define _HSW_VIDEO_DIP_VSC_ECC_B	0x61344
-#define _HSW_VIDEO_DIP_GCP_B		0x61210
-
 /* Icelake PPS_DATA and _ECC DIP Registers.
  * These are available for transcoders B,C and eDP.
  * Adding the _A so as to reuse the _MMIO_TRANS2
@@ -8943,9 +6599,6 @@ enum {
  */
 
 #define _ICL_VIDEO_DIP_PPS_DATA_A	0x60350
-#define _ICL_VIDEO_DIP_PPS_DATA_B	0x61350
-#define _ICL_VIDEO_DIP_PPS_ECC_A	0x603D4
-#define _ICL_VIDEO_DIP_PPS_ECC_B	0x613D4
 
 #define HSW_TVIDEO_DIP_CTL(trans)		_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_CTL_A)
 #define HSW_TVIDEO_DIP_GCP(trans)		_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_GCP_A)
@@ -8956,13 +6609,6 @@ enum {
 #define HSW_TVIDEO_DIP_VSC_DATA(trans, i)	_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_VSC_DATA_A + (i) * 4)
 #define GLK_TVIDEO_DIP_DRM_DATA(trans, i)	_MMIO_TRANS2(trans, _GLK_VIDEO_DIP_DRM_DATA_A + (i) * 4)
 #define ICL_VIDEO_DIP_PPS_DATA(trans, i)	_MMIO_TRANS2(trans, _ICL_VIDEO_DIP_PPS_DATA_A + (i) * 4)
-#define ICL_VIDEO_DIP_PPS_ECC(trans, i)		_MMIO_TRANS2(trans, _ICL_VIDEO_DIP_PPS_ECC_A + (i) * 4)
-
-#define _HSW_STEREO_3D_CTL_A		0x70020
-#define   S3D_ENABLE			(1 << 31)
-#define _HSW_STEREO_3D_CTL_B		0x71020
-
-#define HSW_STEREO_3D_CTL(trans)	_MMIO_PIPE2(trans, _HSW_STEREO_3D_CTL_A)
 
 #define _PCH_TRANS_HTOTAL_B          0xe1000
 #define _PCH_TRANS_HBLANK_B          0xe1004
@@ -8982,30 +6628,19 @@ enum {
 
 #define _PCH_TRANSB_DATA_M1	0xe1030
 #define _PCH_TRANSB_DATA_N1	0xe1034
-#define _PCH_TRANSB_DATA_M2	0xe1038
-#define _PCH_TRANSB_DATA_N2	0xe103c
 #define _PCH_TRANSB_LINK_M1	0xe1040
 #define _PCH_TRANSB_LINK_N1	0xe1044
-#define _PCH_TRANSB_LINK_M2	0xe1048
-#define _PCH_TRANSB_LINK_N2	0xe104c
 
 #define PCH_TRANS_DATA_M1(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_DATA_M1, _PCH_TRANSB_DATA_M1)
 #define PCH_TRANS_DATA_N1(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_DATA_N1, _PCH_TRANSB_DATA_N1)
-#define PCH_TRANS_DATA_M2(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_DATA_M2, _PCH_TRANSB_DATA_M2)
-#define PCH_TRANS_DATA_N2(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_DATA_N2, _PCH_TRANSB_DATA_N2)
 #define PCH_TRANS_LINK_M1(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_LINK_M1, _PCH_TRANSB_LINK_M1)
 #define PCH_TRANS_LINK_N1(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_LINK_N1, _PCH_TRANSB_LINK_N1)
-#define PCH_TRANS_LINK_M2(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_LINK_M2, _PCH_TRANSB_LINK_M2)
-#define PCH_TRANS_LINK_N2(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_LINK_N2, _PCH_TRANSB_LINK_N2)
 
 #define _PCH_TRANSACONF              0xf0008
 #define _PCH_TRANSBCONF              0xf1008
 #define PCH_TRANSCONF(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSACONF, _PCH_TRANSBCONF)
 #define LPT_TRANSCONF		PCH_TRANSCONF(PIPE_A) /* lpt has only one transcoder */
-#define  TRANS_DISABLE          (0 << 31)
 #define  TRANS_ENABLE           (1 << 31)
-#define  TRANS_STATE_MASK       (1 << 30)
-#define  TRANS_STATE_DISABLE    (0 << 30)
 #define  TRANS_STATE_ENABLE     (1 << 30)
 #define  TRANS_FRAME_START_DELAY_MASK	(3 << 27) /* ibx */
 #define  TRANS_FRAME_START_DELAY(x)	((x) << 27) /* ibx: 0-3 */
@@ -9013,10 +6648,6 @@ enum {
 #define  TRANS_PROGRESSIVE      (0 << 21)
 #define  TRANS_INTERLACED       (3 << 21)
 #define  TRANS_LEGACY_INTERLACED_ILK (2 << 21)
-#define  TRANS_8BPC             (0 << 5)
-#define  TRANS_10BPC            (1 << 5)
-#define  TRANS_6BPC             (2 << 5)
-#define  TRANS_12BPC            (3 << 5)
 
 #define _TRANSA_CHICKEN1	 0xf0060
 #define _TRANSB_CHICKEN1	 0xf1060
@@ -9034,14 +6665,10 @@ enum {
 #define  TRANS_CHICKEN2_DISABLE_DEEP_COLOR_MODESWITCH	(1 << 25)
 
 #define SOUTH_CHICKEN1		_MMIO(0xc2000)
-#define  FDIA_PHASE_SYNC_SHIFT_OVR	19
-#define  FDIA_PHASE_SYNC_SHIFT_EN	18
 #define  INVERT_DDID_HPD			(1 << 18)
 #define  INVERT_DDIC_HPD			(1 << 17)
 #define  INVERT_DDIB_HPD			(1 << 16)
 #define  INVERT_DDIA_HPD			(1 << 15)
-#define  FDI_PHASE_SYNC_OVR(pipe) (1 << (FDIA_PHASE_SYNC_SHIFT_OVR - ((pipe) * 2)))
-#define  FDI_PHASE_SYNC_EN(pipe) (1 << (FDIA_PHASE_SYNC_SHIFT_EN - ((pipe) * 2)))
 #define  FDI_BC_BIFURCATION_SELECT	(1 << 12)
 #define  CHASSIS_CLK_REQ_DURATION_MASK	(0xf << 8)
 #define  CHASSIS_CLK_REQ_DURATION(x)	((x) << 8)
@@ -9072,27 +6699,13 @@ enum {
 #define _FDI_TXA_CTL            0x60100
 #define _FDI_TXB_CTL            0x61100
 #define FDI_TX_CTL(pipe)	_MMIO_PIPE(pipe, _FDI_TXA_CTL, _FDI_TXB_CTL)
-#define  FDI_TX_DISABLE         (0 << 31)
 #define  FDI_TX_ENABLE          (1 << 31)
 #define  FDI_LINK_TRAIN_PATTERN_1       (0 << 28)
 #define  FDI_LINK_TRAIN_PATTERN_2       (1 << 28)
-#define  FDI_LINK_TRAIN_PATTERN_IDLE    (2 << 28)
 #define  FDI_LINK_TRAIN_NONE            (3 << 28)
-#define  FDI_LINK_TRAIN_VOLTAGE_0_4V    (0 << 25)
-#define  FDI_LINK_TRAIN_VOLTAGE_0_6V    (1 << 25)
-#define  FDI_LINK_TRAIN_VOLTAGE_0_8V    (2 << 25)
-#define  FDI_LINK_TRAIN_VOLTAGE_1_2V    (3 << 25)
-#define  FDI_LINK_TRAIN_PRE_EMPHASIS_NONE (0 << 22)
-#define  FDI_LINK_TRAIN_PRE_EMPHASIS_1_5X (1 << 22)
-#define  FDI_LINK_TRAIN_PRE_EMPHASIS_2X   (2 << 22)
-#define  FDI_LINK_TRAIN_PRE_EMPHASIS_3X   (3 << 22)
 /* ILK always use 400mV 0dB for voltage swing and pre-emphasis level.
    SNB has different settings. */
 /* SNB A-stepping */
-#define  FDI_LINK_TRAIN_400MV_0DB_SNB_A		(0x38 << 22)
-#define  FDI_LINK_TRAIN_400MV_6DB_SNB_A		(0x02 << 22)
-#define  FDI_LINK_TRAIN_600MV_3_5DB_SNB_A	(0x01 << 22)
-#define  FDI_LINK_TRAIN_800MV_0DB_SNB_A		(0x0 << 22)
 /* SNB B-stepping */
 #define  FDI_LINK_TRAIN_400MV_0DB_SNB_B		(0x0 << 22)
 #define  FDI_LINK_TRAIN_400MV_6DB_SNB_B		(0x3a << 22)
@@ -9109,14 +6722,11 @@ enum {
 /* Ivybridge has different bits for lolz */
 #define  FDI_LINK_TRAIN_PATTERN_1_IVB       (0 << 8)
 #define  FDI_LINK_TRAIN_PATTERN_2_IVB       (1 << 8)
-#define  FDI_LINK_TRAIN_PATTERN_IDLE_IVB    (2 << 8)
 #define  FDI_LINK_TRAIN_NONE_IVB            (3 << 8)
 
 /* both Tx and Rx */
 #define  FDI_COMPOSITE_SYNC		(1 << 11)
 #define  FDI_LINK_TRAIN_AUTO		(1 << 10)
-#define  FDI_SCRAMBLING_ENABLE          (0 << 7)
-#define  FDI_SCRAMBLING_DISABLE         (1 << 7)
 
 /* FDI_RX, FDI_X is hard-wired to Transcoder_X */
 #define _FDI_RXA_CTL             0xf000c
@@ -9127,24 +6737,14 @@ enum {
 #define  FDI_FS_ERRC_ENABLE		(1 << 27)
 #define  FDI_FE_ERRC_ENABLE		(1 << 26)
 #define  FDI_RX_POLARITY_REVERSED_LPT	(1 << 16)
-#define  FDI_8BPC                       (0 << 16)
-#define  FDI_10BPC                      (1 << 16)
-#define  FDI_6BPC                       (2 << 16)
-#define  FDI_12BPC                      (3 << 16)
 #define  FDI_RX_LINK_REVERSAL_OVERRIDE  (1 << 15)
-#define  FDI_DMI_LINK_REVERSE_MASK      (1 << 14)
 #define  FDI_RX_PLL_ENABLE              (1 << 13)
-#define  FDI_FS_ERR_CORRECT_ENABLE      (1 << 11)
-#define  FDI_FE_ERR_CORRECT_ENABLE      (1 << 10)
-#define  FDI_FS_ERR_REPORT_ENABLE       (1 << 9)
-#define  FDI_FE_ERR_REPORT_ENABLE       (1 << 8)
 #define  FDI_RX_ENHANCE_FRAME_ENABLE    (1 << 6)
 #define  FDI_PCDCLK	                (1 << 4)
 /* CPT */
 #define  FDI_AUTO_TRAINING			(1 << 10)
 #define  FDI_LINK_TRAIN_PATTERN_1_CPT		(0 << 8)
 #define  FDI_LINK_TRAIN_PATTERN_2_CPT		(1 << 8)
-#define  FDI_LINK_TRAIN_PATTERN_IDLE_CPT	(2 << 8)
 #define  FDI_LINK_TRAIN_NORMAL_CPT		(3 << 8)
 #define  FDI_LINK_TRAIN_PATTERN_MASK_CPT	(3 << 8)
 
@@ -9155,7 +6755,6 @@ enum {
 #define  FDI_RX_PWRDN_LANE0_MASK	(3 << 24)
 #define  FDI_RX_PWRDN_LANE0_VAL(x)	((x) << 24)
 #define  FDI_RX_TP1_TO_TP2_48		(2 << 20)
-#define  FDI_RX_TP1_TO_TP2_64		(3 << 20)
 #define  FDI_RX_FDI_DELAY_90		(0x90 << 0)
 #define FDI_RX_MISC(pipe)	_MMIO_PIPE(pipe, _FDI_RXA_MISC, _FDI_RXB_MISC)
 
@@ -9164,20 +6763,10 @@ enum {
 #define _FDI_RXB_TUSIZE1        0xf1030
 #define _FDI_RXB_TUSIZE2        0xf1038
 #define FDI_RX_TUSIZE1(pipe)	_MMIO_PIPE(pipe, _FDI_RXA_TUSIZE1, _FDI_RXB_TUSIZE1)
-#define FDI_RX_TUSIZE2(pipe)	_MMIO_PIPE(pipe, _FDI_RXA_TUSIZE2, _FDI_RXB_TUSIZE2)
 
 /* FDI_RX interrupt register format */
-#define FDI_RX_INTER_LANE_ALIGN         (1 << 10)
 #define FDI_RX_SYMBOL_LOCK              (1 << 9) /* train 2 */
 #define FDI_RX_BIT_LOCK                 (1 << 8) /* train 1 */
-#define FDI_RX_TRAIN_PATTERN_2_FAIL     (1 << 7)
-#define FDI_RX_FS_CODE_ERR              (1 << 6)
-#define FDI_RX_FE_CODE_ERR              (1 << 5)
-#define FDI_RX_SYMBOL_ERR_RATE_ABOVE    (1 << 4)
-#define FDI_RX_HDCP_LINK_FAIL           (1 << 3)
-#define FDI_RX_PIXEL_FIFO_OVERFLOW      (1 << 2)
-#define FDI_RX_CROSS_CLOCK_OVERFLOW     (1 << 1)
-#define FDI_RX_SYMBOL_QUEUE_OVERFLOW    (1 << 0)
 
 #define _FDI_RXA_IIR            0xf0014
 #define _FDI_RXA_IMR            0xf0018
@@ -9186,9 +6775,6 @@ enum {
 #define FDI_RX_IIR(pipe)	_MMIO_PIPE(pipe, _FDI_RXA_IIR, _FDI_RXB_IIR)
 #define FDI_RX_IMR(pipe)	_MMIO_PIPE(pipe, _FDI_RXA_IMR, _FDI_RXB_IMR)
 
-#define FDI_PLL_CTL_1           _MMIO(0xfe000)
-#define FDI_PLL_CTL_2           _MMIO(0xfe004)
-
 #define PCH_LVDS	_MMIO(0xe1180)
 #define  LVDS_DETECTED	(1 << 1)
 
@@ -9196,28 +6782,15 @@ enum {
 #define PCH_DP_B		_MMIO(_PCH_DP_B)
 #define _PCH_DPB_AUX_CH_CTL	0xe4110
 #define _PCH_DPB_AUX_CH_DATA1	0xe4114
-#define _PCH_DPB_AUX_CH_DATA2	0xe4118
-#define _PCH_DPB_AUX_CH_DATA3	0xe411c
-#define _PCH_DPB_AUX_CH_DATA4	0xe4120
-#define _PCH_DPB_AUX_CH_DATA5	0xe4124
 
 #define _PCH_DP_C		0xe4200
 #define PCH_DP_C		_MMIO(_PCH_DP_C)
 #define _PCH_DPC_AUX_CH_CTL	0xe4210
 #define _PCH_DPC_AUX_CH_DATA1	0xe4214
-#define _PCH_DPC_AUX_CH_DATA2	0xe4218
-#define _PCH_DPC_AUX_CH_DATA3	0xe421c
-#define _PCH_DPC_AUX_CH_DATA4	0xe4220
-#define _PCH_DPC_AUX_CH_DATA5	0xe4224
 
 #define _PCH_DP_D		0xe4300
 #define PCH_DP_D		_MMIO(_PCH_DP_D)
 #define _PCH_DPD_AUX_CH_CTL	0xe4310
-#define _PCH_DPD_AUX_CH_DATA1	0xe4314
-#define _PCH_DPD_AUX_CH_DATA2	0xe4318
-#define _PCH_DPD_AUX_CH_DATA3	0xe431c
-#define _PCH_DPD_AUX_CH_DATA4	0xe4320
-#define _PCH_DPD_AUX_CH_DATA5	0xe4324
 
 #define PCH_DP_AUX_CH_CTL(aux_ch)		_MMIO_PORT((aux_ch) - AUX_CH_B, _PCH_DPB_AUX_CH_CTL, _PCH_DPC_AUX_CH_CTL)
 #define PCH_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT((aux_ch) - AUX_CH_B, _PCH_DPB_AUX_CH_DATA1, _PCH_DPC_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
@@ -9225,54 +6798,33 @@ enum {
 /* CPT */
 #define _TRANS_DP_CTL_A		0xe0300
 #define _TRANS_DP_CTL_B		0xe1300
-#define _TRANS_DP_CTL_C		0xe2300
 #define TRANS_DP_CTL(pipe)	_MMIO_PIPE(pipe, _TRANS_DP_CTL_A, _TRANS_DP_CTL_B)
 #define  TRANS_DP_OUTPUT_ENABLE	(1 << 31)
 #define  TRANS_DP_PORT_SEL_MASK		(3 << 29)
 #define  TRANS_DP_PORT_SEL_NONE		(3 << 29)
 #define  TRANS_DP_PORT_SEL(port)	(((port) - PORT_B) << 29)
-#define  TRANS_DP_AUDIO_ONLY	(1 << 26)
 #define  TRANS_DP_ENH_FRAMING	(1 << 18)
-#define  TRANS_DP_8BPC		(0 << 9)
-#define  TRANS_DP_10BPC		(1 << 9)
-#define  TRANS_DP_6BPC		(2 << 9)
-#define  TRANS_DP_12BPC		(3 << 9)
 #define  TRANS_DP_BPC_MASK	(3 << 9)
 #define  TRANS_DP_VSYNC_ACTIVE_HIGH	(1 << 4)
-#define  TRANS_DP_VSYNC_ACTIVE_LOW	0
 #define  TRANS_DP_HSYNC_ACTIVE_HIGH	(1 << 3)
-#define  TRANS_DP_HSYNC_ACTIVE_LOW	0
 #define  TRANS_DP_SYNC_MASK	(3 << 3)
 
 #define _TRANS_DP2_CTL_A			0x600a0
 #define _TRANS_DP2_CTL_B			0x610a0
-#define _TRANS_DP2_CTL_C			0x620a0
-#define _TRANS_DP2_CTL_D			0x630a0
 #define TRANS_DP2_CTL(trans)			_MMIO_TRANS(trans, _TRANS_DP2_CTL_A, _TRANS_DP2_CTL_B)
 #define  TRANS_DP2_128B132B_CHANNEL_CODING	REG_BIT(31)
-#define  TRANS_DP2_PANEL_REPLAY_ENABLE		REG_BIT(30)
-#define  TRANS_DP2_DEBUG_ENABLE			REG_BIT(23)
 
 #define _TRANS_DP2_VFREQHIGH_A			0x600a4
 #define _TRANS_DP2_VFREQHIGH_B			0x610a4
-#define _TRANS_DP2_VFREQHIGH_C			0x620a4
-#define _TRANS_DP2_VFREQHIGH_D			0x630a4
 #define TRANS_DP2_VFREQHIGH(trans)		_MMIO_TRANS(trans, _TRANS_DP2_VFREQHIGH_A, _TRANS_DP2_VFREQHIGH_B)
 #define  TRANS_DP2_VFREQ_PIXEL_CLOCK_MASK	REG_GENMASK(31, 8)
 #define  TRANS_DP2_VFREQ_PIXEL_CLOCK(clk_hz)	REG_FIELD_PREP(TRANS_DP2_VFREQ_PIXEL_CLOCK_MASK, (clk_hz))
 
 #define _TRANS_DP2_VFREQLOW_A			0x600a8
 #define _TRANS_DP2_VFREQLOW_B			0x610a8
-#define _TRANS_DP2_VFREQLOW_C			0x620a8
-#define _TRANS_DP2_VFREQLOW_D			0x630a8
 #define TRANS_DP2_VFREQLOW(trans)		_MMIO_TRANS(trans, _TRANS_DP2_VFREQLOW_A, _TRANS_DP2_VFREQLOW_B)
 
 /* SNB eDP training params */
-/* SNB A-stepping */
-#define  EDP_LINK_TRAIN_400MV_0DB_SNB_A		(0x38 << 22)
-#define  EDP_LINK_TRAIN_400MV_6DB_SNB_A		(0x02 << 22)
-#define  EDP_LINK_TRAIN_600MV_3_5DB_SNB_A	(0x01 << 22)
-#define  EDP_LINK_TRAIN_800MV_0DB_SNB_A		(0x0 << 22)
 /* SNB B-stepping */
 #define  EDP_LINK_TRAIN_400_600MV_0DB_SNB_B	(0x0 << 22)
 #define  EDP_LINK_TRAIN_400MV_3_5DB_SNB_B	(0x1 << 22)
@@ -9292,10 +6844,6 @@ enum {
 
 /* legacy values */
 #define EDP_LINK_TRAIN_500MV_0DB_IVB		(0x00 << 22)
-#define EDP_LINK_TRAIN_1000MV_0DB_IVB		(0x20 << 22)
-#define EDP_LINK_TRAIN_500MV_3_5DB_IVB		(0x02 << 22)
-#define EDP_LINK_TRAIN_1000MV_3_5DB_IVB		(0x22 << 22)
-#define EDP_LINK_TRAIN_1000MV_6DB_IVB		(0x23 << 22)
 
 #define  EDP_LINK_TRAIN_VOL_EMP_MASK_IVB	(0x3f << 22)
 
@@ -9309,7 +6857,6 @@ enum {
 #define  PWRCTX_MAXCNT_VCSUNIT0			_MMIO(0x12054)
 #define  PWRCTX_MAXCNT_BCSUNIT			_MMIO(0x22054)
 #define  PWRCTX_MAXCNT_VECSUNIT			_MMIO(0x1A054)
-#define  PWRCTX_MAXCNT_VCSUNIT1			_MMIO(0x1C054)
 #define    IDLE_TIME_MASK			0xFFFFF
 #define  FORCEWAKE				_MMIO(0xA18C)
 #define  FORCEWAKE_VLV				_MMIO(0x1300b0)
@@ -9340,7 +6887,6 @@ enum {
 #define  FORCEWAKE_ACK_RENDER_GEN9		_MMIO(0x0D84)
 #define  FORCEWAKE_ACK_GT_GEN9			_MMIO(0x130044)
 #define   FORCEWAKE_KERNEL			BIT(0)
-#define   FORCEWAKE_USER			BIT(1)
 #define   FORCEWAKE_KERNEL_FALLBACK		BIT(15)
 #define  FORCEWAKE_MT_ACK			_MMIO(0x130040)
 #define  ECOBUS					_MMIO(0xa180)
@@ -9351,15 +6897,6 @@ enum {
 #define   GEN9_PWRGT_RENDER_STATUS_MASK		(1 << 1)
 
 #define  GTFIFODBG				_MMIO(0x120000)
-#define    GT_FIFO_SBDEDICATE_FREE_ENTRY_CHV	(0x1f << 20)
-#define    GT_FIFO_FREE_ENTRIES_CHV		(0x7f << 13)
-#define    GT_FIFO_SBDROPERR			(1 << 6)
-#define    GT_FIFO_BLOBDROPERR			(1 << 5)
-#define    GT_FIFO_SB_READ_ABORTERR		(1 << 4)
-#define    GT_FIFO_DROPERR			(1 << 3)
-#define    GT_FIFO_OVFERR			(1 << 2)
-#define    GT_FIFO_IAWRERR			(1 << 1)
-#define    GT_FIFO_IARDERR			(1 << 0)
 
 #define  GTFIFOCTL				_MMIO(0x120008)
 #define    GT_FIFO_FREE_ENTRIES_MASK		0x7f
@@ -9382,15 +6919,11 @@ enum {
 # define GEN6_CSUNIT_CLOCK_GATE_DISABLE			(1 << 7)
 
 #define GEN6_UCGCTL2				_MMIO(0x9404)
-# define GEN6_VFUNIT_CLOCK_GATE_DISABLE			(1 << 31)
-# define GEN7_VDSUNIT_CLOCK_GATE_DISABLE		(1 << 30)
-# define GEN7_TDLUNIT_CLOCK_GATE_DISABLE		(1 << 22)
 # define GEN6_RCZUNIT_CLOCK_GATE_DISABLE		(1 << 13)
 # define GEN6_RCPBUNIT_CLOCK_GATE_DISABLE		(1 << 12)
 # define GEN6_RCCUNIT_CLOCK_GATE_DISABLE		(1 << 11)
 
 #define GEN6_UCGCTL3				_MMIO(0x9408)
-# define GEN6_OACSUNIT_CLOCK_GATE_DISABLE		(1 << 20)
 
 #define GEN7_UCGCTL4				_MMIO(0x940c)
 #define  GEN7_L3BANK2X_CLOCK_GATE_DISABLE	(1 << 25)
@@ -9401,7 +6934,6 @@ enum {
 #define GEN6_RSTCTL				_MMIO(0x9420)
 
 #define GEN8_UCGCTL6				_MMIO(0x9430)
-#define   GEN8_GAPSUNIT_CLOCK_GATE_DISABLE	(1 << 24)
 #define   GEN8_SDEUNIT_CLOCK_GATE_DISABLE	(1 << 14)
 #define   GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ (1 << 28)
 
@@ -9425,7 +6957,6 @@ enum {
 #define   GEN6_RC_CTL_RC6p_ENABLE		(1 << 17)
 #define   GEN6_RC_CTL_RC6_ENABLE		(1 << 18)
 #define   GEN6_RC_CTL_RC1e_ENABLE		(1 << 20)
-#define   GEN6_RC_CTL_RC7_ENABLE		(1 << 22)
 #define   VLV_RC_CTL_CTX_RST_PARALLEL		(1 << 24)
 #define   GEN7_RC_CTL_TO_MODE			(1 << 28)
 #define   GEN6_RC_CTL_EI_MODE(x)		((x) << 27)
@@ -9442,15 +6973,11 @@ enum {
 #define GEN6_RP_CONTROL				_MMIO(0xA024)
 #define   GEN6_RP_MEDIA_TURBO			(1 << 11)
 #define   GEN6_RP_MEDIA_MODE_MASK		(3 << 9)
-#define   GEN6_RP_MEDIA_HW_TURBO_MODE		(3 << 9)
 #define   GEN6_RP_MEDIA_HW_NORMAL_MODE		(2 << 9)
-#define   GEN6_RP_MEDIA_HW_MODE			(1 << 9)
 #define   GEN6_RP_MEDIA_SW_MODE			(0 << 9)
 #define   GEN6_RP_MEDIA_IS_GFX			(1 << 8)
 #define   GEN6_RP_ENABLE			(1 << 7)
-#define   GEN6_RP_UP_IDLE_MIN			(0x1 << 3)
 #define   GEN6_RP_UP_BUSY_AVG			(0x2 << 3)
-#define   GEN6_RP_UP_BUSY_CONT			(0x4 << 3)
 #define   GEN6_RP_DOWN_IDLE_AVG			(0x2 << 0)
 #define   GEN6_RP_DOWN_IDLE_CONT		(0x1 << 0)
 #define   GEN6_RPSWCTL_SHIFT			9
@@ -9515,8 +7042,6 @@ enum {
 #define GEN6_PMIMR				_MMIO(0x44024) /* rps_lock */
 #define GEN6_PMIIR				_MMIO(0x44028)
 #define GEN6_PMIER				_MMIO(0x4402C)
-#define  GEN6_PM_MBOX_EVENT			(1 << 25)
-#define  GEN6_PM_THERMAL_EVENT			(1 << 24)
 
 /*
  * For Gen11 these are in the upper word of the GPM_WGBOXPERF
@@ -9597,7 +7122,6 @@ enum {
 #define   ADLS_PSF_PT_SHIFT			8
 #define   ADLS_QGV_PT_MASK			REG_GENMASK(7, 0)
 #define   ADLS_PSF_PT_MASK			REG_GENMASK(10, 8)
-#define   GEN6_PCODE_READ_D_COMP		0x10
 #define   GEN6_PCODE_WRITE_D_COMP		0x11
 #define   ICL_PCODE_EXIT_TCCOLD			0x12
 #define   HSW_PCODE_DE_WRITE_FREQ_REQ		0x17
@@ -9668,9 +7192,7 @@ enum {
 
 #define GEN7_MISCCPCTL				_MMIO(0x9424)
 #define   GEN7_DOP_CLOCK_GATE_ENABLE		(1 << 0)
-#define   GEN8_DOP_CLOCK_GATE_CFCLK_ENABLE	(1 << 2)
 #define   GEN8_DOP_CLOCK_GATE_GUC_ENABLE	(1 << 4)
-#define   GEN8_DOP_CLOCK_GATE_MEDIA_ENABLE     (1 << 6)
 
 #define GEN8_GARBCNTL				_MMIO(0xB004)
 #define   GEN9_GAPS_TSV_CREDIT_DISABLE		(1 << 7)
@@ -9716,14 +7238,11 @@ enum {
 #define GEN7_L3LOG_SIZE			0x80
 
 #define GEN7_HALF_SLICE_CHICKEN1	_MMIO(0xe100) /* IVB GT1 + VLV */
-#define GEN7_HALF_SLICE_CHICKEN1_GT2	_MMIO(0xf100)
 #define   GEN7_MAX_PS_THREAD_DEP		(8 << 12)
-#define   GEN7_SINGLE_SUBSCAN_DISPATCH_ENABLE	(1 << 10)
 #define   GEN7_SBE_SS_CACHE_DISPATCH_PORT_SHARING_DISABLE	(1 << 4)
 #define   GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE	(1 << 3)
 
 #define GEN9_HALF_SLICE_CHICKEN5	_MMIO(0xe188)
-#define   GEN9_DG_MIRROR_FIX_ENABLE	(1 << 5)
 #define   GEN9_CCS_TLB_PREFETCH_ENABLE	(1 << 3)
 
 #define GEN8_ROW_CHICKEN		_MMIO(0xe4f0)
@@ -9732,8 +7251,6 @@ enum {
 #define   MDQ_ARBITRATION_MODE			REG_BIT(12)
 #define   PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE	REG_BIT(8)
 #define   STALL_DOP_GATING_DISABLE		REG_BIT(5)
-#define   THROTTLE_12_5				REG_GENMASK(4, 2)
-#define   DISABLE_EARLY_EOT			REG_BIT(1)
 
 #define GEN7_ROW_CHICKEN2			_MMIO(0xe4f4)
 #define   GEN12_DISABLE_READ_SUPPRESSION	REG_BIT(15)
@@ -9752,8 +7269,6 @@ enum {
 
 #define GEN7_ROW_CHICKEN2_GT2		_MMIO(0xf4f4)
 #define   DOP_CLOCK_GATING_DISABLE	(1 << 0)
-#define   PUSH_CONSTANT_DEREF_DISABLE	(1 << 8)
-#define   GEN11_TDL_CLOCK_GATING_FIX_DISABLE	(1 << 1)
 
 #define GEN9_ROW_CHICKEN4				_MMIO(0xe48c)
 #define   GEN12_DISABLE_GRF_CLEAR			REG_BIT(13)
@@ -9769,8 +7284,6 @@ enum {
 
 #define HALF_SLICE_CHICKEN3		_MMIO(0xe184)
 #define   HSW_SAMPLE_C_PERFORMANCE	(1 << 9)
-#define   GEN8_CENTROID_PIXEL_OPT_DIS	(1 << 8)
-#define   GEN9_DISABLE_OCL_OOB_SUPPRESS_LOGIC	(1 << 5)
 #define   GEN8_SAMPLER_POWER_BYPASS_DIS	(1 << 1)
 
 #define GEN9_HALF_SLICE_CHICKEN7	_MMIO(0xe194)
@@ -9783,13 +7296,11 @@ enum {
 #define G4X_AUD_VID_DID			_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x62020)
 #define   INTEL_AUDIO_DEVCL		0x808629FB
 #define   INTEL_AUDIO_DEVBLC		0x80862801
-#define   INTEL_AUDIO_DEVCTG		0x80862802
 
 #define G4X_AUD_CNTL_ST			_MMIO(0x620B4)
 #define   G4X_ELDV_DEVCL_DEVBLC		(1 << 13)
 #define   G4X_ELDV_DEVCTG		(1 << 14)
 #define   G4X_ELD_ADDR_MASK		(0xf << 5)
-#define   G4X_ELD_ACK			(1 << 4)
 #define G4X_HDMIW_HDMIEDID		_MMIO(0x6210C)
 
 #define _IBX_HDMIW_HDMIEDID_A		0xE2050
@@ -9800,11 +7311,8 @@ enum {
 #define _IBX_AUD_CNTL_ST_B		0xE21B4
 #define IBX_AUD_CNTL_ST(pipe)		_MMIO_PIPE(pipe, _IBX_AUD_CNTL_ST_A, \
 						  _IBX_AUD_CNTL_ST_B)
-#define   IBX_ELD_BUFFER_SIZE_MASK	(0x1f << 10)
 #define   IBX_ELD_ADDRESS_MASK		(0x1f << 5)
-#define   IBX_ELD_ACK			(1 << 4)
 #define IBX_AUD_CNTL_ST2		_MMIO(0xE20C0)
-#define   IBX_CP_READY(port)		((1 << 1) << (((port) - 1) * 4))
 #define   IBX_ELD_VALID(port)		((1 << 0) << (((port) - 1) * 4))
 
 #define _CPT_HDMIW_HDMIEDID_A		0xE5050
@@ -9849,7 +7357,6 @@ enum {
 #define   AUD_CONFIG_N(n) \
 	(((((n) >> 12) & 0xff) << AUD_CONFIG_UPPER_N_SHIFT) |	\
 	 (((n) & 0xfff) << AUD_CONFIG_LOWER_N_SHIFT))
-#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_SHIFT	16
 #define   AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK	(0xf << 16)
 #define   AUD_CONFIG_PIXEL_CLOCK_HDMI_25175	(0 << 16)
 #define   AUD_CONFIG_PIXEL_CLOCK_HDMI_25200	(1 << 16)
@@ -9865,7 +7372,6 @@ enum {
 #define   AUD_CONFIG_PIXEL_CLOCK_HDMI_297000	(11 << 16)
 #define   AUD_CONFIG_PIXEL_CLOCK_HDMI_593407	(12 << 16)
 #define   AUD_CONFIG_PIXEL_CLOCK_HDMI_594000	(13 << 16)
-#define   AUD_CONFIG_DISABLE_NCTS		(1 << 3)
 
 /* HSW Audio */
 #define _HSW_AUD_CONFIG_A		0x65000
@@ -9887,28 +7393,14 @@ enum {
 #define _HSW_AUD_DIP_ELD_CTRL_ST_B	0x651b4
 #define HSW_AUD_DIP_ELD_CTRL(trans)	_MMIO_TRANS(trans, _HSW_AUD_DIP_ELD_CTRL_ST_A, _HSW_AUD_DIP_ELD_CTRL_ST_B)
 
-/* Audio Digital Converter */
-#define _HSW_AUD_DIG_CNVT_1		0x65080
-#define _HSW_AUD_DIG_CNVT_2		0x65180
-#define AUD_DIG_CNVT(trans)		_MMIO_TRANS(trans, _HSW_AUD_DIG_CNVT_1, _HSW_AUD_DIG_CNVT_2)
-#define DIP_PORT_SEL_MASK		0x3
-
 #define _HSW_AUD_EDID_DATA_A		0x65050
 #define _HSW_AUD_EDID_DATA_B		0x65150
 #define HSW_AUD_EDID_DATA(trans)	_MMIO_TRANS(trans, _HSW_AUD_EDID_DATA_A, _HSW_AUD_EDID_DATA_B)
 
-#define HSW_AUD_PIPE_CONV_CFG		_MMIO(0x6507c)
 #define HSW_AUD_PIN_ELD_CP_VLD		_MMIO(0x650c0)
-#define   AUDIO_INACTIVE(trans)		((1 << 3) << ((trans) * 4))
 #define   AUDIO_OUTPUT_ENABLE(trans)	((1 << 2) << ((trans) * 4))
-#define   AUDIO_CP_READY(trans)		((1 << 1) << ((trans) * 4))
 #define   AUDIO_ELD_VALID(trans)	((1 << 0) << ((trans) * 4))
 
-#define _AUD_TCA_DP_2DOT0_CTRL		0x650bc
-#define _AUD_TCB_DP_2DOT0_CTRL		0x651bc
-#define AUD_DP_2DOT0_CTRL(trans)	_MMIO_TRANS(trans, _AUD_TCA_DP_2DOT0_CTRL, _AUD_TCB_DP_2DOT0_CTRL)
-#define  AUD_ENABLE_SDP_SPLIT		REG_BIT(31)
-
 #define HSW_AUD_CHICKENBIT			_MMIO(0x65f10)
 #define   SKL_AUD_CODEC_WAKE_SIGNAL		(1 << 15)
 
@@ -9929,8 +7421,6 @@ enum {
 #define NUMBER_SAMPLES_PER_LINE_MASK(pipe)	(0x3 << ((pipe) * 6))
 #define NUMBER_SAMPLES_PER_LINE(pipe, val)	(((val) & 0x3) << ((pipe) * 6))
 
-#define HBLANK_START_COUNT_8	0
-#define HBLANK_START_COUNT_16	1
 #define HBLANK_START_COUNT_32	2
 #define HBLANK_START_COUNT_64	3
 #define HBLANK_START_COUNT_96	4
@@ -10035,9 +7525,6 @@ enum {
 
 /* HSW - power well misc debug registers */
 #define HSW_PWR_WELL_CTL5			_MMIO(0x45410)
-#define   HSW_PWR_WELL_ENABLE_SINGLE_STEP	(1 << 31)
-#define   HSW_PWR_WELL_PWR_GATE_OVERRIDE	(1 << 20)
-#define   HSW_PWR_WELL_FORCE_ON			(1 << 19)
 #define HSW_PWR_WELL_CTL6			_MMIO(0x45414)
 
 /* SKL Fuse Status */
@@ -10085,8 +7572,6 @@ enum skl_power_gate {
 #define  HDCP_FUSE_DONE			BIT(5)
 #define  HDCP_KEY_LOAD_STATUS		BIT(1)
 #define  HDCP_KEY_LOAD_DONE		BIT(0)
-#define HDCP_AKSV_LO			_MMIO(0x66c10)
-#define HDCP_AKSV_HI			_MMIO(0x66c14)
 
 /* HDCP Repeater Registers */
 #define HDCP_REP_CTL			_MMIO(0x66d00)
@@ -10098,7 +7583,6 @@ enum skl_power_gate {
 #define  HDCP_DDIA_REP_PRESENT		BIT(29)
 #define  HDCP_DDIC_REP_PRESENT		BIT(28)
 #define  HDCP_DDID_REP_PRESENT		BIT(27)
-#define  HDCP_DDIF_REP_PRESENT		BIT(26)
 #define  HDCP_DDIE_REP_PRESENT		BIT(25)
 #define  HDCP_TRANSA_SHA1_M0		(1 << 20)
 #define  HDCP_TRANSB_SHA1_M0		(2 << 20)
@@ -10108,9 +7592,7 @@ enum skl_power_gate {
 #define  HDCP_DDIA_SHA1_M0		(2 << 20)
 #define  HDCP_DDIC_SHA1_M0		(3 << 20)
 #define  HDCP_DDID_SHA1_M0		(4 << 20)
-#define  HDCP_DDIF_SHA1_M0		(5 << 20)
 #define  HDCP_DDIE_SHA1_M0		(6 << 20) /* Bspec says 5? */
-#define  HDCP_SHA1_BUSY			BIT(16)
 #define  HDCP_SHA1_READY		BIT(17)
 #define  HDCP_SHA1_COMPLETE		BIT(18)
 #define  HDCP_SHA1_V_MATCH		BIT(19)
@@ -10120,11 +7602,6 @@ enum skl_power_gate {
 #define  HDCP_SHA1_TEXT_16		(5 << 1)
 #define  HDCP_SHA1_TEXT_8		(6 << 1)
 #define  HDCP_SHA1_TEXT_0		(7 << 1)
-#define HDCP_SHA_V_PRIME_H0		_MMIO(0x66d04)
-#define HDCP_SHA_V_PRIME_H1		_MMIO(0x66d08)
-#define HDCP_SHA_V_PRIME_H2		_MMIO(0x66d0C)
-#define HDCP_SHA_V_PRIME_H3		_MMIO(0x66d10)
-#define HDCP_SHA_V_PRIME_H4		_MMIO(0x66d14)
 #define HDCP_SHA_V_PRIME(h)		_MMIO((0x66d04 + (h) * 4))
 #define HDCP_SHA_TEXT			_MMIO(0x66d18)
 
@@ -10233,13 +7710,10 @@ enum skl_power_gate {
 #define  HDCP_STATUS_STREAM_B_ENC	BIT(30)
 #define  HDCP_STATUS_STREAM_C_ENC	BIT(29)
 #define  HDCP_STATUS_STREAM_D_ENC	BIT(28)
-#define  HDCP_STATUS_AUTH		BIT(21)
 #define  HDCP_STATUS_ENC		BIT(20)
 #define  HDCP_STATUS_RI_MATCH		BIT(19)
 #define  HDCP_STATUS_R0_READY		BIT(18)
 #define  HDCP_STATUS_AN_READY		BIT(17)
-#define  HDCP_STATUS_CIPHER		BIT(16)
-#define  HDCP_STATUS_FRAME_CNT(x)	(((x) >> 8) & 0xff)
 
 /* HDCP2.2 Registers */
 #define _PORTA_HDCP2_BASE		0x66800
@@ -10256,20 +7730,6 @@ enum skl_power_gate {
 					  _PORTE_HDCP2_BASE, \
 					  _PORTF_HDCP2_BASE) + (x))
 
-#define PORT_HDCP2_AUTH(port)		_PORT_HDCP2_BASE(port, 0x98)
-#define _TRANSA_HDCP2_AUTH		0x66498
-#define _TRANSB_HDCP2_AUTH		0x66598
-#define TRANS_HDCP2_AUTH(trans)		_MMIO_TRANS(trans, _TRANSA_HDCP2_AUTH, \
-						    _TRANSB_HDCP2_AUTH)
-#define   AUTH_LINK_AUTHENTICATED	BIT(31)
-#define   AUTH_LINK_TYPE		BIT(30)
-#define   AUTH_FORCE_CLR_INPUTCTR	BIT(19)
-#define   AUTH_CLR_KEYS			BIT(18)
-#define HDCP2_AUTH(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
-					 TRANS_HDCP2_AUTH(trans) : \
-					 PORT_HDCP2_AUTH(port))
-
 #define PORT_HDCP2_CTL(port)		_PORT_HDCP2_BASE(port, 0xB0)
 #define _TRANSA_HDCP2_CTL		0x664B0
 #define _TRANSB_HDCP2_CTL		0x665B0
@@ -10287,7 +7747,6 @@ enum skl_power_gate {
 #define TRANS_HDCP2_STATUS(trans)	_MMIO_TRANS(trans, \
 						    _TRANSA_HDCP2_STATUS, \
 						    _TRANSB_HDCP2_STATUS)
-#define   LINK_TYPE_STATUS		BIT(22)
 #define   LINK_AUTH_STATUS		BIT(21)
 #define   LINK_ENCRYPTION_STATUS	BIT(20)
 #define HDCP2_STATUS(dev_priv, trans, port) \
@@ -10311,7 +7770,6 @@ enum skl_power_gate {
 						    _TRANSA_HDCP2_STREAM_STATUS, \
 						    _TRANSB_HDCP2_STREAM_STATUS)
 #define   STREAM_ENCRYPTION_STATUS	BIT(31)
-#define   STREAM_TYPE_STATUS		BIT(30)
 #define HDCP2_STREAM_STATUS(dev_priv, trans, port) \
 					(GRAPHICS_VER(dev_priv) >= 12 ? \
 					 TRANS_HDCP2_STREAM_STATUS(trans) : \
@@ -10337,10 +7795,7 @@ enum skl_power_gate {
 #define _TRANS_DDI_FUNC_CTL_A		0x60400
 #define _TRANS_DDI_FUNC_CTL_B		0x61400
 #define _TRANS_DDI_FUNC_CTL_C		0x62400
-#define _TRANS_DDI_FUNC_CTL_D		0x63400
 #define _TRANS_DDI_FUNC_CTL_EDP		0x6F400
-#define _TRANS_DDI_FUNC_CTL_DSI0	0x6b400
-#define _TRANS_DDI_FUNC_CTL_DSI1	0x6bc00
 #define TRANS_DDI_FUNC_CTL(tran) _MMIO_TRANS2(tran, _TRANS_DDI_FUNC_CTL_A)
 
 #define  TRANS_DDI_FUNC_ENABLE		(1 << 31)
@@ -10378,22 +7833,11 @@ enum skl_power_gate {
 	REG_FIELD_PREP(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, trans)
 #define  TRANS_DDI_HDCP_SIGNALLING	(1 << 9)
 #define  TRANS_DDI_DP_VC_PAYLOAD_ALLOC	(1 << 8)
-#define  TRANS_DDI_HDMI_SCRAMBLER_CTS_ENABLE (1 << 7)
-#define  TRANS_DDI_HDMI_SCRAMBLER_RESET_FREQ (1 << 6)
 #define  TRANS_DDI_HDCP_SELECT		REG_BIT(5)
-#define  TRANS_DDI_BFI_ENABLE		(1 << 4)
 #define  TRANS_DDI_HIGH_TMDS_CHAR_RATE	(1 << 4)
 #define  TRANS_DDI_HDMI_SCRAMBLING	(1 << 0)
-#define  TRANS_DDI_HDMI_SCRAMBLING_MASK (TRANS_DDI_HDMI_SCRAMBLER_CTS_ENABLE \
-					| TRANS_DDI_HDMI_SCRAMBLER_RESET_FREQ \
-					| TRANS_DDI_HDMI_SCRAMBLING)
 
 #define _TRANS_DDI_FUNC_CTL2_A		0x60404
-#define _TRANS_DDI_FUNC_CTL2_B		0x61404
-#define _TRANS_DDI_FUNC_CTL2_C		0x62404
-#define _TRANS_DDI_FUNC_CTL2_EDP	0x6f404
-#define _TRANS_DDI_FUNC_CTL2_DSI0	0x6b404
-#define _TRANS_DDI_FUNC_CTL2_DSI1	0x6bc04
 #define TRANS_DDI_FUNC_CTL2(tran)	_MMIO_TRANS2(tran, _TRANS_DDI_FUNC_CTL2_A)
 #define  PORT_SYNC_MODE_ENABLE			REG_BIT(4)
 #define  PORT_SYNC_MODE_MASTER_SELECT_MASK	REG_GENMASK(2, 0)
@@ -10412,7 +7856,6 @@ enum skl_power_gate {
 #define  DP_TP_CTL_FEC_ENABLE			(1 << 30)
 #define  DP_TP_CTL_MODE_SST			(0 << 27)
 #define  DP_TP_CTL_MODE_MST			(1 << 27)
-#define  DP_TP_CTL_FORCE_ACT			(1 << 25)
 #define  DP_TP_CTL_ENHANCED_FRAME_ENABLE	(1 << 18)
 #define  DP_TP_CTL_FDI_AUTOTRAIN		(1 << 15)
 #define  DP_TP_CTL_LINK_TRAIN_MASK		(7 << 8)
@@ -10422,7 +7865,6 @@ enum skl_power_gate {
 #define  DP_TP_CTL_LINK_TRAIN_PAT4		(5 << 8)
 #define  DP_TP_CTL_LINK_TRAIN_IDLE		(2 << 8)
 #define  DP_TP_CTL_LINK_TRAIN_NORMAL		(3 << 8)
-#define  DP_TP_CTL_SCRAMBLE_DISABLE		(1 << 7)
 
 /* DisplayPort Transport Status */
 #define _DP_TP_STATUS_A			0x64044
@@ -10430,14 +7872,9 @@ enum skl_power_gate {
 #define _TGL_DP_TP_STATUS_A		0x60544
 #define DP_TP_STATUS(port) _MMIO_PORT(port, _DP_TP_STATUS_A, _DP_TP_STATUS_B)
 #define TGL_DP_TP_STATUS(tran) _MMIO_TRANS2((tran), _TGL_DP_TP_STATUS_A)
-#define  DP_TP_STATUS_FEC_ENABLE_LIVE		(1 << 28)
 #define  DP_TP_STATUS_IDLE_DONE			(1 << 25)
 #define  DP_TP_STATUS_ACT_SENT			(1 << 24)
-#define  DP_TP_STATUS_MODE_STATUS_MST		(1 << 23)
 #define  DP_TP_STATUS_AUTOTRAIN_DONE		(1 << 12)
-#define  DP_TP_STATUS_PAYLOAD_MAPPING_VC2	(3 << 8)
-#define  DP_TP_STATUS_PAYLOAD_MAPPING_VC1	(3 << 4)
-#define  DP_TP_STATUS_PAYLOAD_MAPPING_VC0	(3 << 0)
 
 /* DDI Buffer Control */
 #define _DDI_BUF_CTL_A				0x64000
@@ -10473,8 +7910,6 @@ enum skl_power_gate {
 #define   DDI_DP_COMP_CTL_PRBS7			(2 << 28)
 #define   DDI_DP_COMP_CTL_CUSTOM80		(3 << 28)
 #define   DDI_DP_COMP_CTL_HBR2			(4 << 28)
-#define   DDI_DP_COMP_CTL_SCRAMBLED_1		(5 << 28)
-#define   DDI_DP_COMP_CTL_HBR2_RESET		(0xFC << 0)
 
 /* DDI DP Compliance Pattern */
 #define _DDI_DP_COMP_PAT_A			0x605F4
@@ -10490,9 +7925,7 @@ enum skl_power_gate {
 #define  SBI_CTL_DEST_ICLK		(0x0 << 16)
 #define  SBI_CTL_DEST_MPHY		(0x1 << 16)
 #define  SBI_CTL_OP_IORD		(0x2 << 8)
-#define  SBI_CTL_OP_IOWR		(0x3 << 8)
 #define  SBI_CTL_OP_CRRD		(0x6 << 8)
-#define  SBI_CTL_OP_CRWR		(0x7 << 8)
 #define  SBI_RESPONSE_FAIL		(0x1 << 1)
 #define  SBI_RESPONSE_SUCCESS		(0x0 << 1)
 #define  SBI_BUSY			(0x1 << 0)
@@ -10530,11 +7963,8 @@ enum skl_power_gate {
 /* SPLL */
 #define SPLL_CTL			_MMIO(0x46020)
 #define  SPLL_PLL_ENABLE		(1 << 31)
-#define  SPLL_REF_BCLK			(0 << 28)
 #define  SPLL_REF_MUXED_SSC		(1 << 28) /* CPU SSC if fused enabled, PCH SSC otherwise */
-#define  SPLL_REF_NON_SSC_HSW		(2 << 28)
 #define  SPLL_REF_PCH_SSC_BDW		(2 << 28)
-#define  SPLL_REF_LCPLL			(3 << 28)
 #define  SPLL_REF_MASK			(3 << 28)
 #define  SPLL_FREQ_810MHz		(0 << 26)
 #define  SPLL_FREQ_1350MHz		(1 << 26)
@@ -10546,7 +7976,6 @@ enum skl_power_gate {
 #define _WRPLL_CTL2			0x46060
 #define WRPLL_CTL(pll)			_MMIO_PIPE(pll, _WRPLL_CTL1, _WRPLL_CTL2)
 #define  WRPLL_PLL_ENABLE		(1 << 31)
-#define  WRPLL_REF_BCLK			(0 << 28)
 #define  WRPLL_REF_PCH_SSC		(1 << 28)
 #define  WRPLL_REF_MUXED_SSC_BDW	(2 << 28) /* CPU SSC if fused enabled, PCH SSC otherwise */
 #define  WRPLL_REF_SPECIAL_HSW		(2 << 28) /* muxed SSC (ULT), non-SSC (non-ULT) */
@@ -10570,7 +7999,6 @@ enum skl_power_gate {
 #define  PORT_CLK_SEL_LCPLL_1350	(1 << 29)
 #define  PORT_CLK_SEL_LCPLL_810		(2 << 29)
 #define  PORT_CLK_SEL_SPLL		(3 << 29)
-#define  PORT_CLK_SEL_WRPLL(pll)	(((pll) + 4) << 29)
 #define  PORT_CLK_SEL_WRPLL1		(4 << 29)
 #define  PORT_CLK_SEL_WRPLL2		(5 << 29)
 #define  PORT_CLK_SEL_NONE		(7 << 29)
@@ -10607,9 +8035,6 @@ enum skl_power_gate {
 /* See DP_MSA_MISC_* for the bit definitions */
 
 #define _TRANS_A_SET_CONTEXT_LATENCY		0x6007C
-#define _TRANS_B_SET_CONTEXT_LATENCY		0x6107C
-#define _TRANS_C_SET_CONTEXT_LATENCY		0x6207C
-#define _TRANS_D_SET_CONTEXT_LATENCY		0x6307C
 #define TRANS_SET_CONTEXT_LATENCY(tran)		_MMIO_TRANS2(tran, _TRANS_A_SET_CONTEXT_LATENCY)
 #define  TRANS_SET_CONTEXT_LATENCY_MASK		REG_GENMASK(15, 0)
 #define  TRANS_SET_CONTEXT_LATENCY_VALUE(x)	REG_FIELD_PREP(TRANS_SET_CONTEXT_LATENCY_MASK, (x))
@@ -10619,8 +8044,6 @@ enum skl_power_gate {
 #define  LCPLL_PLL_DISABLE		(1 << 31)
 #define  LCPLL_PLL_LOCK			(1 << 30)
 #define  LCPLL_REF_NON_SSC		(0 << 28)
-#define  LCPLL_REF_BCLK			(2 << 28)
-#define  LCPLL_REF_PCH_SSC		(3 << 28)
 #define  LCPLL_REF_MASK			(3 << 28)
 #define  LCPLL_CLK_FREQ_MASK		(3 << 26)
 #define  LCPLL_CLK_FREQ_450		(0 << 26)
@@ -10666,7 +8089,6 @@ enum skl_power_gate {
 #define  CDCLK_SQUASH_WINDOW_SIZE_MASK	REG_GENMASK(27, 24)
 #define  CDCLK_SQUASH_WINDOW_SIZE(x)	REG_FIELD_PREP(CDCLK_SQUASH_WINDOW_SIZE_MASK, (x))
 #define  CDCLK_SQUASH_WAVEFORM_MASK	REG_GENMASK(15, 0)
-#define  CDCLK_SQUASH_WAVEFORM(x)	REG_FIELD_PREP(CDCLK_SQUASH_WAVEFORM_MASK, (x))
 
 /* LCPLL_CTL */
 #define LCPLL1_CTL		_MMIO(0x46010)
@@ -10728,7 +8150,6 @@ enum skl_power_gate {
 #define  DPLL_CFGCR2_PDIV_3 (2 << 2)
 #define  DPLL_CFGCR2_PDIV_7 (4 << 2)
 #define  DPLL_CFGCR2_PDIV_7_INVALID	(5 << 2)
-#define  DPLL_CFGCR2_CENTRAL_FREQ_MASK	(3)
 
 #define DPLL_CFGCR1(id)	_MMIO_PIPE((id) - SKL_DPLL1, _DPLL1_CFGCR1, _DPLL2_CFGCR1)
 #define DPLL_CFGCR2(id)	_MMIO_PIPE((id) - SKL_DPLL1, _DPLL1_CFGCR2, _DPLL2_CFGCR2)
@@ -10809,8 +8230,6 @@ enum skl_power_gate {
 
 #define _MG_PLL1_ENABLE		0x46030
 #define _MG_PLL2_ENABLE		0x46034
-#define _MG_PLL3_ENABLE		0x46038
-#define _MG_PLL4_ENABLE		0x4603C
 /* Bits are the same as DPLL0_ENABLE */
 #define MG_PLL_ENABLE(tc_port)	_MMIO_PORT((tc_port), _MG_PLL1_ENABLE, \
 					   _MG_PLL2_ENABLE)
@@ -10829,8 +8248,6 @@ enum skl_power_gate {
 
 #define _MG_REFCLKIN_CTL_PORT1				0x16892C
 #define _MG_REFCLKIN_CTL_PORT2				0x16992C
-#define _MG_REFCLKIN_CTL_PORT3				0x16A92C
-#define _MG_REFCLKIN_CTL_PORT4				0x16B92C
 #define   MG_REFCLKIN_CTL_OD_2_MUX(x)			((x) << 8)
 #define   MG_REFCLKIN_CTL_OD_2_MUX_MASK			(0x7 << 8)
 #define MG_REFCLKIN_CTL(tc_port) _MMIO_PORT((tc_port), \
@@ -10839,10 +8256,6 @@ enum skl_power_gate {
 
 #define _MG_CLKTOP2_CORECLKCTL1_PORT1			0x1688D8
 #define _MG_CLKTOP2_CORECLKCTL1_PORT2			0x1698D8
-#define _MG_CLKTOP2_CORECLKCTL1_PORT3			0x16A8D8
-#define _MG_CLKTOP2_CORECLKCTL1_PORT4			0x16B8D8
-#define   MG_CLKTOP2_CORECLKCTL1_B_DIVRATIO(x)		((x) << 16)
-#define   MG_CLKTOP2_CORECLKCTL1_B_DIVRATIO_MASK	(0xff << 16)
 #define   MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO(x)		((x) << 8)
 #define   MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK	(0xff << 8)
 #define MG_CLKTOP2_CORECLKCTL1(tc_port) _MMIO_PORT((tc_port), \
@@ -10851,8 +8264,6 @@ enum skl_power_gate {
 
 #define _MG_CLKTOP2_HSCLKCTL_PORT1			0x1688D4
 #define _MG_CLKTOP2_HSCLKCTL_PORT2			0x1698D4
-#define _MG_CLKTOP2_HSCLKCTL_PORT3			0x16A8D4
-#define _MG_CLKTOP2_HSCLKCTL_PORT4			0x16B8D4
 #define   MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL(x)		((x) << 16)
 #define   MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK	(0x1 << 16)
 #define   MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL(x)	((x) << 14)
@@ -10871,8 +8282,6 @@ enum skl_power_gate {
 
 #define _MG_PLL_DIV0_PORT1				0x168A00
 #define _MG_PLL_DIV0_PORT2				0x169A00
-#define _MG_PLL_DIV0_PORT3				0x16AA00
-#define _MG_PLL_DIV0_PORT4				0x16BA00
 #define   MG_PLL_DIV0_FRACNEN_H				(1 << 30)
 #define   MG_PLL_DIV0_FBDIV_FRAC_MASK			(0x3fffff << 8)
 #define   MG_PLL_DIV0_FBDIV_FRAC_SHIFT			8
@@ -10884,13 +8293,8 @@ enum skl_power_gate {
 
 #define _MG_PLL_DIV1_PORT1				0x168A04
 #define _MG_PLL_DIV1_PORT2				0x169A04
-#define _MG_PLL_DIV1_PORT3				0x16AA04
-#define _MG_PLL_DIV1_PORT4				0x16BA04
 #define   MG_PLL_DIV1_IREF_NDIVRATIO(x)			((x) << 16)
-#define   MG_PLL_DIV1_DITHER_DIV_1			(0 << 12)
 #define   MG_PLL_DIV1_DITHER_DIV_2			(1 << 12)
-#define   MG_PLL_DIV1_DITHER_DIV_4			(2 << 12)
-#define   MG_PLL_DIV1_DITHER_DIV_8			(3 << 12)
 #define   MG_PLL_DIV1_NDIVRATIO(x)			((x) << 4)
 #define   MG_PLL_DIV1_FBPREDIV_MASK			(0xf << 0)
 #define   MG_PLL_DIV1_FBPREDIV(x)			((x) << 0)
@@ -10899,10 +8303,7 @@ enum skl_power_gate {
 
 #define _MG_PLL_LF_PORT1				0x168A08
 #define _MG_PLL_LF_PORT2				0x169A08
-#define _MG_PLL_LF_PORT3				0x16AA08
-#define _MG_PLL_LF_PORT4				0x16BA08
 #define   MG_PLL_LF_TDCTARGETCNT(x)			((x) << 24)
-#define   MG_PLL_LF_AFCCNTSEL_256			(0 << 20)
 #define   MG_PLL_LF_AFCCNTSEL_512			(1 << 20)
 #define   MG_PLL_LF_GAINCTRL(x)				((x) << 16)
 #define   MG_PLL_LF_INT_COEFF(x)			((x) << 8)
@@ -10912,8 +8313,6 @@ enum skl_power_gate {
 
 #define _MG_PLL_FRAC_LOCK_PORT1				0x168A0C
 #define _MG_PLL_FRAC_LOCK_PORT2				0x169A0C
-#define _MG_PLL_FRAC_LOCK_PORT3				0x16AA0C
-#define _MG_PLL_FRAC_LOCK_PORT4				0x16BA0C
 #define   MG_PLL_FRAC_LOCK_TRUELOCK_CRIT_32		(1 << 18)
 #define   MG_PLL_FRAC_LOCK_EARLYLOCK_CRIT_32		(1 << 16)
 #define   MG_PLL_FRAC_LOCK_LOCKTHRESH(x)		((x) << 11)
@@ -10926,8 +8325,6 @@ enum skl_power_gate {
 
 #define _MG_PLL_SSC_PORT1				0x168A10
 #define _MG_PLL_SSC_PORT2				0x169A10
-#define _MG_PLL_SSC_PORT3				0x16AA10
-#define _MG_PLL_SSC_PORT4				0x16BA10
 #define   MG_PLL_SSC_EN					(1 << 28)
 #define   MG_PLL_SSC_TYPE(x)				((x) << 26)
 #define   MG_PLL_SSC_STEPLENGTH(x)			((x) << 16)
@@ -10939,28 +8336,18 @@ enum skl_power_gate {
 
 #define _MG_PLL_BIAS_PORT1				0x168A14
 #define _MG_PLL_BIAS_PORT2				0x169A14
-#define _MG_PLL_BIAS_PORT3				0x16AA14
-#define _MG_PLL_BIAS_PORT4				0x16BA14
 #define   MG_PLL_BIAS_BIAS_GB_SEL(x)			((x) << 30)
-#define   MG_PLL_BIAS_BIAS_GB_SEL_MASK			(0x3 << 30)
 #define   MG_PLL_BIAS_INIT_DCOAMP(x)			((x) << 24)
-#define   MG_PLL_BIAS_INIT_DCOAMP_MASK			(0x3f << 24)
 #define   MG_PLL_BIAS_BIAS_BONUS(x)			((x) << 16)
-#define   MG_PLL_BIAS_BIAS_BONUS_MASK			(0xff << 16)
 #define   MG_PLL_BIAS_BIASCAL_EN			(1 << 15)
 #define   MG_PLL_BIAS_CTRIM(x)				((x) << 8)
-#define   MG_PLL_BIAS_CTRIM_MASK			(0x1f << 8)
 #define   MG_PLL_BIAS_VREF_RDAC(x)			((x) << 5)
-#define   MG_PLL_BIAS_VREF_RDAC_MASK			(0x7 << 5)
 #define   MG_PLL_BIAS_IREFTRIM(x)			((x) << 0)
-#define   MG_PLL_BIAS_IREFTRIM_MASK			(0x1f << 0)
 #define MG_PLL_BIAS(tc_port) _MMIO_PORT((tc_port), _MG_PLL_BIAS_PORT1, \
 					_MG_PLL_BIAS_PORT2)
 
 #define _MG_PLL_TDC_COLDST_BIAS_PORT1			0x168A18
 #define _MG_PLL_TDC_COLDST_BIAS_PORT2			0x169A18
-#define _MG_PLL_TDC_COLDST_BIAS_PORT3			0x16AA18
-#define _MG_PLL_TDC_COLDST_BIAS_PORT4			0x16BA18
 #define   MG_PLL_TDC_COLDST_IREFINT_EN			(1 << 27)
 #define   MG_PLL_TDC_COLDST_REFBIAS_START_PULSE_W(x)	((x) << 17)
 #define   MG_PLL_TDC_COLDST_COLDSTART			(1 << 16)
@@ -10974,18 +8361,6 @@ enum skl_power_gate {
 #define _ICL_DPLL1_CFGCR0		0x164080
 #define ICL_DPLL_CFGCR0(pll)		_MMIO_PLL(pll, _ICL_DPLL0_CFGCR0, \
 						  _ICL_DPLL1_CFGCR0)
-#define   DPLL_CFGCR0_HDMI_MODE		(1 << 30)
-#define   DPLL_CFGCR0_SSC_ENABLE	(1 << 29)
-#define   DPLL_CFGCR0_SSC_ENABLE_ICL	(1 << 25)
-#define   DPLL_CFGCR0_LINK_RATE_MASK	(0xf << 25)
-#define   DPLL_CFGCR0_LINK_RATE_2700	(0 << 25)
-#define   DPLL_CFGCR0_LINK_RATE_1350	(1 << 25)
-#define   DPLL_CFGCR0_LINK_RATE_810	(2 << 25)
-#define   DPLL_CFGCR0_LINK_RATE_1620	(3 << 25)
-#define   DPLL_CFGCR0_LINK_RATE_1080	(4 << 25)
-#define   DPLL_CFGCR0_LINK_RATE_2160	(5 << 25)
-#define   DPLL_CFGCR0_LINK_RATE_3240	(6 << 25)
-#define   DPLL_CFGCR0_LINK_RATE_4050	(7 << 25)
 #define   DPLL_CFGCR0_DCO_FRACTION_MASK	(0x7fff << 10)
 #define   DPLL_CFGCR0_DCO_FRACTION_SHIFT	(10)
 #define   DPLL_CFGCR0_DCO_FRACTION(x)	((x) << 10)
@@ -10998,22 +8373,18 @@ enum skl_power_gate {
 #define   DPLL_CFGCR1_QDIV_RATIO_MASK	(0xff << 10)
 #define   DPLL_CFGCR1_QDIV_RATIO_SHIFT	(10)
 #define   DPLL_CFGCR1_QDIV_RATIO(x)	((x) << 10)
-#define   DPLL_CFGCR1_QDIV_MODE_SHIFT	(9)
 #define   DPLL_CFGCR1_QDIV_MODE(x)	((x) << 9)
 #define   DPLL_CFGCR1_KDIV_MASK		(7 << 6)
-#define   DPLL_CFGCR1_KDIV_SHIFT		(6)
 #define   DPLL_CFGCR1_KDIV(x)		((x) << 6)
 #define   DPLL_CFGCR1_KDIV_1		(1 << 6)
 #define   DPLL_CFGCR1_KDIV_2		(2 << 6)
 #define   DPLL_CFGCR1_KDIV_3		(4 << 6)
 #define   DPLL_CFGCR1_PDIV_MASK		(0xf << 2)
-#define   DPLL_CFGCR1_PDIV_SHIFT		(2)
 #define   DPLL_CFGCR1_PDIV(x)		((x) << 2)
 #define   DPLL_CFGCR1_PDIV_2		(1 << 2)
 #define   DPLL_CFGCR1_PDIV_3		(2 << 2)
 #define   DPLL_CFGCR1_PDIV_5		(4 << 2)
 #define   DPLL_CFGCR1_PDIV_7		(8 << 2)
-#define   DPLL_CFGCR1_CENTRAL_FREQ	(3 << 0)
 #define   DPLL_CFGCR1_CENTRAL_FREQ_8400	(3 << 0)
 #define   TGL_DPLL_CFGCR1_CFSELOVRD_NORMAL_XTAL	(0 << 0)
 
@@ -11066,10 +8437,6 @@ enum skl_power_gate {
 
 #define _DKL_PHY1_BASE			0x168000
 #define _DKL_PHY2_BASE			0x169000
-#define _DKL_PHY3_BASE			0x16A000
-#define _DKL_PHY4_BASE			0x16B000
-#define _DKL_PHY5_BASE			0x16C000
-#define _DKL_PHY6_BASE			0x16D000
 
 /* DEKEL PHY MMIO Address = Phy base + (internal address & ~index_mask) */
 #define _DKL_PLL_DIV0			0x200
@@ -11173,31 +8540,12 @@ enum skl_power_gate {
 						     _DKL_PHY2_BASE) + \
 						     _DKL_TX_DPCNTL2)
 
-#define _DKL_TX_FW_CALIB				0x2F8
-#define  DKL_TX_CFG_DISABLE_WAIT_INIT			(1 << 7)
-#define DKL_TX_FW_CALIB(tc_port) _MMIO(_PORT(tc_port, \
-						     _DKL_PHY1_BASE, \
-						     _DKL_PHY2_BASE) + \
-						     _DKL_TX_FW_CALIB)
-
 #define _DKL_TX_PMD_LANE_SUS				0xD00
 #define DKL_TX_PMD_LANE_SUS(tc_port) _MMIO(_PORT(tc_port, \
 							  _DKL_PHY1_BASE, \
 							  _DKL_PHY2_BASE) + \
 							  _DKL_TX_PMD_LANE_SUS)
 
-#define _DKL_TX_DW17					0xDC4
-#define DKL_TX_DW17(tc_port) _MMIO(_PORT(tc_port, \
-						     _DKL_PHY1_BASE, \
-						     _DKL_PHY2_BASE) + \
-						     _DKL_TX_DW17)
-
-#define _DKL_TX_DW18					0xDC8
-#define DKL_TX_DW18(tc_port) _MMIO(_PORT(tc_port, \
-						     _DKL_PHY1_BASE, \
-						     _DKL_PHY2_BASE) + \
-						     _DKL_TX_DW18)
-
 #define _DKL_DP_MODE					0xA0
 #define DKL_DP_MODE(tc_port) _MMIO(_PORT(tc_port, \
 						     _DKL_PHY1_BASE, \
@@ -11263,19 +8611,13 @@ enum skl_power_gate {
 #define  BXT_DRAM_RANK_DUAL			0x3
 #define  BXT_DRAM_WIDTH_MASK			(0x3 << 4)
 #define  BXT_DRAM_WIDTH_SHIFT			4
-#define  BXT_DRAM_WIDTH_X8			(0x0 << 4)
-#define  BXT_DRAM_WIDTH_X16			(0x1 << 4)
-#define  BXT_DRAM_WIDTH_X32			(0x2 << 4)
-#define  BXT_DRAM_WIDTH_X64			(0x3 << 4)
 #define  BXT_DRAM_SIZE_MASK			(0x7 << 6)
-#define  BXT_DRAM_SIZE_SHIFT			6
 #define  BXT_DRAM_SIZE_4GBIT			(0x0 << 6)
 #define  BXT_DRAM_SIZE_6GBIT			(0x1 << 6)
 #define  BXT_DRAM_SIZE_8GBIT			(0x2 << 6)
 #define  BXT_DRAM_SIZE_12GBIT			(0x3 << 6)
 #define  BXT_DRAM_SIZE_16GBIT			(0x4 << 6)
 #define  BXT_DRAM_TYPE_MASK			(0x7 << 22)
-#define  BXT_DRAM_TYPE_SHIFT			22
 #define  BXT_DRAM_TYPE_DDR3			(0x0 << 22)
 #define  BXT_DRAM_TYPE_LPDDR3			(0x1 << 22)
 #define  BXT_DRAM_TYPE_LPDDR4			(0x2 << 22)
@@ -11293,7 +8635,6 @@ enum skl_power_gate {
 
 #define SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x500C)
 #define SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5010)
-#define  SKL_DRAM_S_SHIFT			16
 #define  SKL_DRAM_SIZE_MASK			0x3F
 #define  SKL_DRAM_WIDTH_MASK			(0x3 << 8)
 #define  SKL_DRAM_WIDTH_SHIFT			8
@@ -11302,8 +8643,6 @@ enum skl_power_gate {
 #define  SKL_DRAM_WIDTH_X32			(0x2 << 8)
 #define  SKL_DRAM_RANK_MASK			(0x1 << 10)
 #define  SKL_DRAM_RANK_SHIFT			10
-#define  SKL_DRAM_RANK_1			(0x0 << 10)
-#define  SKL_DRAM_RANK_2			(0x1 << 10)
 #define  SKL_DRAM_RANK_MASK			(0x1 << 10)
 #define  ICL_DRAM_SIZE_MASK			0x7F
 #define  ICL_DRAM_WIDTH_MASK			(0x3 << 7)
@@ -11313,10 +8652,6 @@ enum skl_power_gate {
 #define  ICL_DRAM_WIDTH_X32			(0x2 << 7)
 #define  ICL_DRAM_RANK_MASK			(0x3 << 9)
 #define  ICL_DRAM_RANK_SHIFT			9
-#define  ICL_DRAM_RANK_1			(0x0 << 9)
-#define  ICL_DRAM_RANK_2			(0x1 << 9)
-#define  ICL_DRAM_RANK_3			(0x2 << 9)
-#define  ICL_DRAM_RANK_4			(0x3 << 9)
 
 #define SA_PERF_STATUS_0_0_0_MCHBAR_PC		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5918)
 #define  DG1_QCLK_RATIO_MASK			REG_GENMASK(9, 2)
@@ -11362,11 +8697,6 @@ enum skl_power_gate {
 #define WM_MISC				_MMIO(0x45260)
 #define  WM_MISC_DATA_PARTITION_5_6	(1 << 0)
 
-#define WM_DBG				_MMIO(0x45280)
-#define  WM_DBG_DISALLOW_MULTIPLE_LP	(1 << 0)
-#define  WM_DBG_DISALLOW_MAXFIFO	(1 << 1)
-#define  WM_DBG_DISALLOW_SPRITE		(1 << 2)
-
 /* pipe CSC */
 #define _PIPE_A_CSC_COEFF_RY_GY	0x49010
 #define _PIPE_A_CSC_COEFF_BY	0x49014
@@ -11484,27 +8814,17 @@ enum skl_power_gate {
 /* pipe degamma/gamma LUTs on IVB+ */
 #define _PAL_PREC_INDEX_A	0x4A400
 #define _PAL_PREC_INDEX_B	0x4AC00
-#define _PAL_PREC_INDEX_C	0x4B400
-#define   PAL_PREC_10_12_BIT		(0 << 31)
 #define   PAL_PREC_SPLIT_MODE		(1 << 31)
 #define   PAL_PREC_AUTO_INCREMENT	(1 << 15)
-#define   PAL_PREC_INDEX_VALUE_MASK	(0x3ff << 0)
 #define   PAL_PREC_INDEX_VALUE(x)	((x) << 0)
 #define _PAL_PREC_DATA_A	0x4A404
 #define _PAL_PREC_DATA_B	0x4AC04
-#define _PAL_PREC_DATA_C	0x4B404
 #define _PAL_PREC_GC_MAX_A	0x4A410
 #define _PAL_PREC_GC_MAX_B	0x4AC10
-#define _PAL_PREC_GC_MAX_C	0x4B410
-#define   PREC_PAL_DATA_RED_MASK	REG_GENMASK(29, 20)
-#define   PREC_PAL_DATA_GREEN_MASK	REG_GENMASK(19, 10)
-#define   PREC_PAL_DATA_BLUE_MASK	REG_GENMASK(9, 0)
 #define _PAL_PREC_EXT_GC_MAX_A	0x4A420
 #define _PAL_PREC_EXT_GC_MAX_B	0x4AC20
-#define _PAL_PREC_EXT_GC_MAX_C	0x4B420
 #define _PAL_PREC_EXT2_GC_MAX_A	0x4A430
 #define _PAL_PREC_EXT2_GC_MAX_B	0x4AC30
-#define _PAL_PREC_EXT2_GC_MAX_C	0x4B430
 
 #define PREC_PAL_INDEX(pipe)		_MMIO_PIPE(pipe, _PAL_PREC_INDEX_A, _PAL_PREC_INDEX_B)
 #define PREC_PAL_DATA(pipe)		_MMIO_PIPE(pipe, _PAL_PREC_DATA_A, _PAL_PREC_DATA_B)
@@ -11514,11 +8834,9 @@ enum skl_power_gate {
 
 #define _PRE_CSC_GAMC_INDEX_A	0x4A484
 #define _PRE_CSC_GAMC_INDEX_B	0x4AC84
-#define _PRE_CSC_GAMC_INDEX_C	0x4B484
 #define   PRE_CSC_GAMC_AUTO_INCREMENT	(1 << 10)
 #define _PRE_CSC_GAMC_DATA_A	0x4A488
 #define _PRE_CSC_GAMC_DATA_B	0x4AC88
-#define _PRE_CSC_GAMC_DATA_C	0x4B488
 
 #define PRE_CSC_GAMC_INDEX(pipe)	_MMIO_PIPE(pipe, _PRE_CSC_GAMC_INDEX_A, _PRE_CSC_GAMC_INDEX_B)
 #define PRE_CSC_GAMC_DATA(pipe)		_MMIO_PIPE(pipe, _PRE_CSC_GAMC_DATA_A, _PRE_CSC_GAMC_DATA_B)
@@ -11526,8 +8844,6 @@ enum skl_power_gate {
 /* ICL Multi segmented gamma */
 #define _PAL_PREC_MULTI_SEG_INDEX_A	0x4A408
 #define _PAL_PREC_MULTI_SEG_INDEX_B	0x4AC08
-#define  PAL_PREC_MULTI_SEGMENT_AUTO_INCREMENT		REG_BIT(15)
-#define  PAL_PREC_MULTI_SEGMENT_INDEX_VALUE_MASK	REG_GENMASK(4, 0)
 
 #define _PAL_PREC_MULTI_SEG_DATA_A	0x4A40C
 #define _PAL_PREC_MULTI_SEG_DATA_B	0x4AC0C
@@ -11545,14 +8861,10 @@ enum skl_power_gate {
 					_PAL_PREC_MULTI_SEG_DATA_A, \
 					_PAL_PREC_MULTI_SEG_DATA_B)
 
-#define _MMIO_PLANE_GAMC(plane, i, a, b)  _MMIO(_PIPE(plane, a, b) + (i) * 4)
-
 /* Plane CSC Registers */
 #define _PLANE_CSC_RY_GY_1_A	0x70210
-#define _PLANE_CSC_RY_GY_2_A	0x70310
 
 #define _PLANE_CSC_RY_GY_1_B	0x71210
-#define _PLANE_CSC_RY_GY_2_B	0x71310
 
 #define _PLANE_CSC_RY_GY_1(pipe)	_PIPE(pipe, _PLANE_CSC_RY_GY_1_A, \
 					      _PLANE_CSC_RY_GY_1_B)
@@ -11597,9 +8909,6 @@ enum skl_power_gate {
 #define _CGM_PIPE_A_CSC_COEFF67	(VLV_DISPLAY_BASE + 0x6790C)
 #define _CGM_PIPE_A_CSC_COEFF8	(VLV_DISPLAY_BASE + 0x67910)
 #define _CGM_PIPE_A_DEGAMMA	(VLV_DISPLAY_BASE + 0x66000)
-#define   CGM_PIPE_DEGAMMA_RED_MASK	REG_GENMASK(13, 0)
-#define   CGM_PIPE_DEGAMMA_GREEN_MASK	REG_GENMASK(29, 16)
-#define   CGM_PIPE_DEGAMMA_BLUE_MASK	REG_GENMASK(13, 0)
 #define _CGM_PIPE_A_GAMMA	(VLV_DISPLAY_BASE + 0x67000)
 #define   CGM_PIPE_GAMMA_RED_MASK	REG_GENMASK(9, 0)
 #define   CGM_PIPE_GAMMA_GREEN_MASK	REG_GENMASK(25, 16)
@@ -11651,15 +8960,11 @@ enum skl_power_gate {
 #define ICL_DPHY_ESC_CLK_DIV(port)	_MMIO_PORT((port),	\
 						_ICL_DPHY_ESC_CLK_DIV0, \
 						_ICL_DPHY_ESC_CLK_DIV1)
-#define  ICL_BYTE_CLK_PER_ESC_CLK_MASK		(0x1f << 16)
-#define  ICL_BYTE_CLK_PER_ESC_CLK_SHIFT	16
 #define  ICL_ESC_CLK_DIV_MASK			0x1ff
-#define  ICL_ESC_CLK_DIV_SHIFT			0
 #define DSI_MAX_ESC_CLK			20000		/* in KHz */
 
 #define _ADL_MIPIO_REG			0x180
 #define ADL_MIPIO_DW(port, dw)		_MMIO(_ICL_COMBOPHY(port) + _ADL_MIPIO_REG + 4 * (dw))
-#define   TX_ESC_CLK_DIV_PHY_SEL	REGBIT(16)
 #define   TX_ESC_CLK_DIV_PHY_MASK	REG_GENMASK(23, 16)
 #define   TX_ESC_CLK_DIV_PHY		REG_FIELD_PREP(TX_ESC_CLK_DIV_PHY_MASK, 0x7f)
 
@@ -11670,8 +8975,6 @@ enum skl_power_gate {
 						   _DSI_CMD_FRMCTL_1)
 #define   DSI_FRAME_UPDATE_REQUEST		(1 << 31)
 #define   DSI_PERIODIC_FRAME_UPDATE_ENABLE	(1 << 29)
-#define   DSI_NULL_PACKET_ENABLE		(1 << 28)
-#define   DSI_FRAME_IN_PROGRESS			(1 << 0)
 
 #define _DSI_INTR_MASK_REG_0		0x6b070
 #define _DSI_INTR_MASK_REG_1		0x6b870
@@ -11685,38 +8988,8 @@ enum skl_power_gate {
 						   _DSI_INTR_IDENT_REG_0,\
 						   _DSI_INTR_IDENT_REG_1)
 #define   DSI_TE_EVENT				(1 << 31)
-#define   DSI_RX_DATA_OR_BTA_TERMINATED		(1 << 30)
-#define   DSI_TX_DATA				(1 << 29)
-#define   DSI_ULPS_ENTRY_DONE			(1 << 28)
-#define   DSI_NON_TE_TRIGGER_RECEIVED		(1 << 27)
-#define   DSI_HOST_CHKSUM_ERROR			(1 << 26)
-#define   DSI_HOST_MULTI_ECC_ERROR		(1 << 25)
-#define   DSI_HOST_SINGL_ECC_ERROR		(1 << 24)
-#define   DSI_HOST_CONTENTION_DETECTED		(1 << 23)
-#define   DSI_HOST_FALSE_CONTROL_ERROR		(1 << 22)
-#define   DSI_HOST_TIMEOUT_ERROR		(1 << 21)
-#define   DSI_HOST_LOW_POWER_TX_SYNC_ERROR	(1 << 20)
-#define   DSI_HOST_ESCAPE_MODE_ENTRY_ERROR	(1 << 19)
-#define   DSI_FRAME_UPDATE_DONE			(1 << 16)
-#define   DSI_PROTOCOL_VIOLATION_REPORTED	(1 << 15)
-#define   DSI_INVALID_TX_LENGTH			(1 << 13)
-#define   DSI_INVALID_VC			(1 << 12)
-#define   DSI_INVALID_DATA_TYPE			(1 << 11)
-#define   DSI_PERIPHERAL_CHKSUM_ERROR		(1 << 10)
-#define   DSI_PERIPHERAL_MULTI_ECC_ERROR	(1 << 9)
-#define   DSI_PERIPHERAL_SINGLE_ECC_ERROR	(1 << 8)
-#define   DSI_PERIPHERAL_CONTENTION_DETECTED	(1 << 7)
-#define   DSI_PERIPHERAL_FALSE_CTRL_ERROR	(1 << 6)
-#define   DSI_PERIPHERAL_TIMEOUT_ERROR		(1 << 5)
-#define   DSI_PERIPHERAL_LP_TX_SYNC_ERROR	(1 << 4)
-#define   DSI_PERIPHERAL_ESC_MODE_ENTRY_CMD_ERR	(1 << 3)
-#define   DSI_EOT_SYNC_ERROR			(1 << 2)
-#define   DSI_SOT_SYNC_ERROR			(1 << 1)
-#define   DSI_SOT_ERROR				(1 << 0)
 
 /* Gen4+ Timestamp and Pipe Frame time stamp registers */
-#define GEN4_TIMESTAMP		_MMIO(0x2358)
-#define ILK_TIMESTAMP_HI	_MMIO(0x70070)
 #define IVB_TIMESTAMP_CTR	_MMIO(0x44070)
 
 #define GEN9_TIMESTAMP_OVERRIDE				_MMIO(0x44074)
@@ -11730,14 +9003,7 @@ enum skl_power_gate {
 			_MMIO_PIPE2(pipe, _PIPE_FRMTMSTMP_A)
 
 /* BXT MIPI clock controls */
-#define BXT_MAX_VAR_OUTPUT_KHZ			39500
-
 #define BXT_MIPI_CLOCK_CTL			_MMIO(0x46090)
-#define  BXT_MIPI1_DIV_SHIFT			26
-#define  BXT_MIPI2_DIV_SHIFT			10
-#define  BXT_MIPI_DIV_SHIFT(port)		\
-			_MIPI_PORT(port, BXT_MIPI1_DIV_SHIFT, \
-					BXT_MIPI2_DIV_SHIFT)
 
 /* TX control divider to select actual TX clock output from (8x/var) */
 #define  BXT_MIPI1_TX_ESCLK_SHIFT		26
@@ -11813,20 +9079,11 @@ enum skl_power_gate {
 
 #define BXT_DSI_PLL_CTL			_MMIO(0x161000)
 #define  BXT_DSI_PLL_PVD_RATIO_SHIFT	16
-#define  BXT_DSI_PLL_PVD_RATIO_MASK	(3 << BXT_DSI_PLL_PVD_RATIO_SHIFT)
 #define  BXT_DSI_PLL_PVD_RATIO_1	(1 << BXT_DSI_PLL_PVD_RATIO_SHIFT)
-#define  BXT_DSIC_16X_BY1		(0 << 10)
 #define  BXT_DSIC_16X_BY2		(1 << 10)
-#define  BXT_DSIC_16X_BY3		(2 << 10)
-#define  BXT_DSIC_16X_BY4		(3 << 10)
 #define  BXT_DSIC_16X_MASK		(3 << 10)
-#define  BXT_DSIA_16X_BY1		(0 << 8)
 #define  BXT_DSIA_16X_BY2		(1 << 8)
-#define  BXT_DSIA_16X_BY3		(2 << 8)
-#define  BXT_DSIA_16X_BY4		(3 << 8)
 #define  BXT_DSIA_16X_MASK		(3 << 8)
-#define  BXT_DSI_FREQ_SEL_SHIFT		8
-#define  BXT_DSI_FREQ_SEL_MASK		(0xF << BXT_DSI_FREQ_SEL_SHIFT)
 
 #define BXT_DSI_PLL_RATIO_MAX		0x7D
 #define BXT_DSI_PLL_RATIO_MIN		0x22
@@ -11871,7 +9128,6 @@ enum skl_power_gate {
 #define  SPLITTER_ENABLE			(1 << 31)
 #define  JOINER_ENABLE				(1 << 30)
 #define  DUAL_LINK_MODE_INTERLEAVE		(1 << 24)
-#define  DUAL_LINK_MODE_FRONTBACK		(0 << 24)
 #define  OVERLAP_PIXELS_MASK			(0xf << 16)
 #define  OVERLAP_PIXELS(pixels)			((pixels) << 16)
 #define  LEFT_DL_BUF_TARGET_DEPTH_MASK		(0xfff << 0)
@@ -11891,7 +9147,6 @@ enum skl_power_gate {
 							   _ICL_PIPE_DSS_CTL1_PC)
 #define  BIG_JOINER_ENABLE			(1 << 29)
 #define  MASTER_BIG_JOINER_ENABLE		(1 << 28)
-#define  VGA_CENTERING_ENABLE			(1 << 27)
 #define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
 #define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 0)
 #define  SPLITTER_CONFIGURATION_4_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 1)
@@ -11911,54 +9166,15 @@ enum skl_power_gate {
 #define  HS_IO_CTRL_SELECT				(1 << 0)
 
 #define  DPI_ENABLE					(1 << 31) /* A + C */
-#define  MIPIA_MIPI4DPHY_DELAY_COUNT_SHIFT		27
-#define  MIPIA_MIPI4DPHY_DELAY_COUNT_MASK		(0xf << 27)
 #define  DUAL_LINK_MODE_SHIFT				26
 #define  DUAL_LINK_MODE_MASK				(1 << 26)
-#define  DUAL_LINK_MODE_FRONT_BACK			(0 << 26)
-#define  DUAL_LINK_MODE_PIXEL_ALTERNATIVE		(1 << 26)
 #define  DITHERING_ENABLE				(1 << 25) /* A + C */
-#define  FLOPPED_HSTX					(1 << 23)
-#define  DE_INVERT					(1 << 19) /* XXX */
-#define  MIPIA_FLISDSI_DELAY_COUNT_SHIFT		18
-#define  MIPIA_FLISDSI_DELAY_COUNT_MASK			(0xf << 18)
 #define  AFE_LATCHOUT					(1 << 17)
 #define  LP_OUTPUT_HOLD					(1 << 16)
-#define  MIPIC_FLISDSI_DELAY_COUNT_HIGH_SHIFT		15
-#define  MIPIC_FLISDSI_DELAY_COUNT_HIGH_MASK		(1 << 15)
-#define  MIPIC_MIPI4DPHY_DELAY_COUNT_SHIFT		11
-#define  MIPIC_MIPI4DPHY_DELAY_COUNT_MASK		(0xf << 11)
-#define  CSB_SHIFT					9
-#define  CSB_MASK					(3 << 9)
-#define  CSB_20MHZ					(0 << 9)
-#define  CSB_10MHZ					(1 << 9)
-#define  CSB_40MHZ					(2 << 9)
-#define  BANDGAP_MASK					(1 << 8)
-#define  BANDGAP_PNW_CIRCUIT				(0 << 8)
-#define  BANDGAP_LNC_CIRCUIT				(1 << 8)
-#define  MIPIC_FLISDSI_DELAY_COUNT_LOW_SHIFT		5
-#define  MIPIC_FLISDSI_DELAY_COUNT_LOW_MASK		(7 << 5)
-#define  TEARING_EFFECT_DELAY				(1 << 4) /* A + C */
-#define  TEARING_EFFECT_SHIFT				2 /* A + C */
-#define  TEARING_EFFECT_MASK				(3 << 2)
-#define  TEARING_EFFECT_OFF				(0 << 2)
-#define  TEARING_EFFECT_DSI				(1 << 2)
-#define  TEARING_EFFECT_GPIO				(2 << 2)
-#define  LANE_CONFIGURATION_SHIFT			0
 #define  LANE_CONFIGURATION_MASK			(3 << 0)
-#define  LANE_CONFIGURATION_4LANE			(0 << 0)
 #define  LANE_CONFIGURATION_DUAL_LINK_A			(1 << 0)
 #define  LANE_CONFIGURATION_DUAL_LINK_B			(2 << 0)
 
-#define _MIPIA_TEARING_CTRL			(VLV_DISPLAY_BASE + 0x61194)
-#define _MIPIC_TEARING_CTRL			(VLV_DISPLAY_BASE + 0x61704)
-#define MIPI_TEARING_CTRL(port)			_MMIO_MIPI(port, _MIPIA_TEARING_CTRL, _MIPIC_TEARING_CTRL)
-#define  TEARING_EFFECT_DELAY_SHIFT			0
-#define  TEARING_EFFECT_DELAY_MASK			(0xffff << 0)
-
-/* XXX: all bits reserved */
-#define _MIPIA_AUTOPWG			(VLV_DISPLAY_BASE + 0x611a0)
-
 /* MIPI DSI Controller and D-PHY registers */
 
 #define _MIPIA_DEVICE_READY		(dev_priv->mipi_mmio_base + 0xb000)
@@ -11977,96 +9193,53 @@ enum skl_power_gate {
 #define _MIPIA_INTR_EN			(dev_priv->mipi_mmio_base + 0xb008)
 #define _MIPIC_INTR_EN			(dev_priv->mipi_mmio_base + 0xb808)
 #define MIPI_INTR_EN(port)		_MMIO_MIPI(port, _MIPIA_INTR_EN, _MIPIC_INTR_EN)
-#define  TEARING_EFFECT					(1 << 31)
 #define  SPL_PKT_SENT_INTERRUPT				(1 << 30)
 #define  GEN_READ_DATA_AVAIL				(1 << 29)
 #define  LP_GENERIC_WR_FIFO_FULL			(1 << 28)
 #define  HS_GENERIC_WR_FIFO_FULL			(1 << 27)
-#define  RX_PROT_VIOLATION				(1 << 26)
-#define  RX_INVALID_TX_LENGTH				(1 << 25)
 #define  ACK_WITH_NO_ERROR				(1 << 24)
 #define  TURN_AROUND_ACK_TIMEOUT			(1 << 23)
 #define  LP_RX_TIMEOUT					(1 << 22)
 #define  HS_TX_TIMEOUT					(1 << 21)
-#define  DPI_FIFO_UNDERRUN				(1 << 20)
 #define  LOW_CONTENTION					(1 << 19)
 #define  HIGH_CONTENTION				(1 << 18)
-#define  TXDSI_VC_ID_INVALID				(1 << 17)
-#define  TXDSI_DATA_TYPE_NOT_RECOGNISED			(1 << 16)
-#define  TXCHECKSUM_ERROR				(1 << 15)
-#define  TXECC_MULTIBIT_ERROR				(1 << 14)
-#define  TXECC_SINGLE_BIT_ERROR				(1 << 13)
-#define  TXFALSE_CONTROL_ERROR				(1 << 12)
-#define  RXDSI_VC_ID_INVALID				(1 << 11)
-#define  RXDSI_DATA_TYPE_NOT_REGOGNISED			(1 << 10)
-#define  RXCHECKSUM_ERROR				(1 << 9)
-#define  RXECC_MULTIBIT_ERROR				(1 << 8)
-#define  RXECC_SINGLE_BIT_ERROR				(1 << 7)
-#define  RXFALSE_CONTROL_ERROR				(1 << 6)
-#define  RXHS_RECEIVE_TIMEOUT_ERROR			(1 << 5)
 #define  RX_LP_TX_SYNC_ERROR				(1 << 4)
-#define  RXEXCAPE_MODE_ENTRY_ERROR			(1 << 3)
-#define  RXEOT_SYNC_ERROR				(1 << 2)
-#define  RXSOT_SYNC_ERROR				(1 << 1)
-#define  RXSOT_ERROR					(1 << 0)
 
 #define _MIPIA_DSI_FUNC_PRG		(dev_priv->mipi_mmio_base + 0xb00c)
 #define _MIPIC_DSI_FUNC_PRG		(dev_priv->mipi_mmio_base + 0xb80c)
 #define MIPI_DSI_FUNC_PRG(port)		_MMIO_MIPI(port, _MIPIA_DSI_FUNC_PRG, _MIPIC_DSI_FUNC_PRG)
 #define  CMD_MODE_DATA_WIDTH_MASK			(7 << 13)
-#define  CMD_MODE_NOT_SUPPORTED				(0 << 13)
-#define  CMD_MODE_DATA_WIDTH_16_BIT			(1 << 13)
-#define  CMD_MODE_DATA_WIDTH_9_BIT			(2 << 13)
 #define  CMD_MODE_DATA_WIDTH_8_BIT			(3 << 13)
-#define  CMD_MODE_DATA_WIDTH_OPTION1			(4 << 13)
-#define  CMD_MODE_DATA_WIDTH_OPTION2			(5 << 13)
 #define  VID_MODE_FORMAT_MASK				(0xf << 7)
-#define  VID_MODE_NOT_SUPPORTED				(0 << 7)
 #define  VID_MODE_FORMAT_RGB565				(1 << 7)
 #define  VID_MODE_FORMAT_RGB666_PACKED			(2 << 7)
 #define  VID_MODE_FORMAT_RGB666				(3 << 7)
 #define  VID_MODE_FORMAT_RGB888				(4 << 7)
 #define  CMD_MODE_CHANNEL_NUMBER_SHIFT			5
-#define  CMD_MODE_CHANNEL_NUMBER_MASK			(3 << 5)
 #define  VID_MODE_CHANNEL_NUMBER_SHIFT			3
-#define  VID_MODE_CHANNEL_NUMBER_MASK			(3 << 3)
 #define  DATA_LANES_PRG_REG_SHIFT			0
-#define  DATA_LANES_PRG_REG_MASK			(7 << 0)
 
 #define _MIPIA_HS_TX_TIMEOUT		(dev_priv->mipi_mmio_base + 0xb010)
 #define _MIPIC_HS_TX_TIMEOUT		(dev_priv->mipi_mmio_base + 0xb810)
 #define MIPI_HS_TX_TIMEOUT(port)	_MMIO_MIPI(port, _MIPIA_HS_TX_TIMEOUT, _MIPIC_HS_TX_TIMEOUT)
-#define  HIGH_SPEED_TX_TIMEOUT_COUNTER_MASK		0xffffff
 
 #define _MIPIA_LP_RX_TIMEOUT		(dev_priv->mipi_mmio_base + 0xb014)
 #define _MIPIC_LP_RX_TIMEOUT		(dev_priv->mipi_mmio_base + 0xb814)
 #define MIPI_LP_RX_TIMEOUT(port)	_MMIO_MIPI(port, _MIPIA_LP_RX_TIMEOUT, _MIPIC_LP_RX_TIMEOUT)
-#define  LOW_POWER_RX_TIMEOUT_COUNTER_MASK		0xffffff
 
 #define _MIPIA_TURN_AROUND_TIMEOUT	(dev_priv->mipi_mmio_base + 0xb018)
 #define _MIPIC_TURN_AROUND_TIMEOUT	(dev_priv->mipi_mmio_base + 0xb818)
 #define MIPI_TURN_AROUND_TIMEOUT(port)	_MMIO_MIPI(port, _MIPIA_TURN_AROUND_TIMEOUT, _MIPIC_TURN_AROUND_TIMEOUT)
-#define  TURN_AROUND_TIMEOUT_MASK			0x3f
 
 #define _MIPIA_DEVICE_RESET_TIMER	(dev_priv->mipi_mmio_base + 0xb01c)
 #define _MIPIC_DEVICE_RESET_TIMER	(dev_priv->mipi_mmio_base + 0xb81c)
 #define MIPI_DEVICE_RESET_TIMER(port)	_MMIO_MIPI(port, _MIPIA_DEVICE_RESET_TIMER, _MIPIC_DEVICE_RESET_TIMER)
-#define  DEVICE_RESET_TIMER_MASK			0xffff
 
 #define _MIPIA_DPI_RESOLUTION		(dev_priv->mipi_mmio_base + 0xb020)
 #define _MIPIC_DPI_RESOLUTION		(dev_priv->mipi_mmio_base + 0xb820)
 #define MIPI_DPI_RESOLUTION(port)	_MMIO_MIPI(port, _MIPIA_DPI_RESOLUTION, _MIPIC_DPI_RESOLUTION)
 #define  VERTICAL_ADDRESS_SHIFT				16
-#define  VERTICAL_ADDRESS_MASK				(0xffff << 16)
 #define  HORIZONTAL_ADDRESS_SHIFT			0
-#define  HORIZONTAL_ADDRESS_MASK			0xffff
-
-#define _MIPIA_DBI_FIFO_THROTTLE	(dev_priv->mipi_mmio_base + 0xb024)
-#define _MIPIC_DBI_FIFO_THROTTLE	(dev_priv->mipi_mmio_base + 0xb824)
-#define MIPI_DBI_FIFO_THROTTLE(port)	_MMIO_MIPI(port, _MIPIA_DBI_FIFO_THROTTLE, _MIPIC_DBI_FIFO_THROTTLE)
-#define  DBI_FIFO_EMPTY_HALF				(0 << 0)
-#define  DBI_FIFO_EMPTY_QUARTER				(1 << 0)
-#define  DBI_FIFO_EMPTY_7_LOCATIONS			(2 << 0)
 
 /* regs below are bits 15:0 */
 #define _MIPIA_HSYNC_PADDING_COUNT	(dev_priv->mipi_mmio_base + 0xb028)
@@ -12107,31 +9280,19 @@ enum skl_power_gate {
 #define _MIPIC_DPI_CONTROL		(dev_priv->mipi_mmio_base + 0xb848)
 #define MIPI_DPI_CONTROL(port)		_MMIO_MIPI(port, _MIPIA_DPI_CONTROL, _MIPIC_DPI_CONTROL)
 #define  DPI_LP_MODE					(1 << 6)
-#define  BACKLIGHT_OFF					(1 << 5)
 #define  BACKLIGHT_ON					(1 << 4)
-#define  COLOR_MODE_OFF					(1 << 3)
-#define  COLOR_MODE_ON					(1 << 2)
 #define  TURN_ON					(1 << 1)
 #define  SHUTDOWN					(1 << 0)
 
-#define _MIPIA_DPI_DATA			(dev_priv->mipi_mmio_base + 0xb04c)
-#define _MIPIC_DPI_DATA			(dev_priv->mipi_mmio_base + 0xb84c)
-#define MIPI_DPI_DATA(port)		_MMIO_MIPI(port, _MIPIA_DPI_DATA, _MIPIC_DPI_DATA)
-#define  COMMAND_BYTE_SHIFT				0
-#define  COMMAND_BYTE_MASK				(0x3f << 0)
-
 #define _MIPIA_INIT_COUNT		(dev_priv->mipi_mmio_base + 0xb050)
 #define _MIPIC_INIT_COUNT		(dev_priv->mipi_mmio_base + 0xb850)
 #define MIPI_INIT_COUNT(port)		_MMIO_MIPI(port, _MIPIA_INIT_COUNT, _MIPIC_INIT_COUNT)
-#define  MASTER_INIT_TIMER_SHIFT			0
 #define  MASTER_INIT_TIMER_MASK				(0xffff << 0)
 
 #define _MIPIA_MAX_RETURN_PKT_SIZE	(dev_priv->mipi_mmio_base + 0xb054)
 #define _MIPIC_MAX_RETURN_PKT_SIZE	(dev_priv->mipi_mmio_base + 0xb854)
 #define MIPI_MAX_RETURN_PKT_SIZE(port)	_MMIO_MIPI(port, \
 			_MIPIA_MAX_RETURN_PKT_SIZE, _MIPIC_MAX_RETURN_PKT_SIZE)
-#define  MAX_RETURN_PKT_SIZE_SHIFT			0
-#define  MAX_RETURN_PKT_SIZE_MASK			(0x3ff << 0)
 
 #define _MIPIA_VIDEO_MODE_FORMAT	(dev_priv->mipi_mmio_base + 0xb058)
 #define _MIPIC_VIDEO_MODE_FORMAT	(dev_priv->mipi_mmio_base + 0xb858)
@@ -12148,20 +9309,12 @@ enum skl_power_gate {
 #define MIPI_EOT_DISABLE(port)		_MMIO_MIPI(port, _MIPIA_EOT_DISABLE, _MIPIC_EOT_DISABLE)
 #define  BXT_DEFEATURE_DPI_FIFO_CTR			(1 << 9)
 #define  BXT_DPHY_DEFEATURE_EN				(1 << 8)
-#define  LP_RX_TIMEOUT_ERROR_RECOVERY_DISABLE		(1 << 7)
-#define  HS_RX_TIMEOUT_ERROR_RECOVERY_DISABLE		(1 << 6)
-#define  LOW_CONTENTION_RECOVERY_DISABLE		(1 << 5)
-#define  HIGH_CONTENTION_RECOVERY_DISABLE		(1 << 4)
-#define  TXDSI_TYPE_NOT_RECOGNISED_ERROR_RECOVERY_DISABLE (1 << 3)
-#define  TXECC_MULTIBIT_ERROR_RECOVERY_DISABLE		(1 << 2)
 #define  CLOCKSTOP					(1 << 1)
 #define  EOT_DISABLE					(1 << 0)
 
 #define _MIPIA_LP_BYTECLK		(dev_priv->mipi_mmio_base + 0xb060)
 #define _MIPIC_LP_BYTECLK		(dev_priv->mipi_mmio_base + 0xb860)
 #define MIPI_LP_BYTECLK(port)		_MMIO_MIPI(port, _MIPIA_LP_BYTECLK, _MIPIC_LP_BYTECLK)
-#define  LP_BYTECLK_SHIFT				0
-#define  LP_BYTECLK_MASK				(0xffff << 0)
 
 #define _MIPIA_TLPX_TIME_COUNT		(dev_priv->mipi_mmio_base + 0xb0a4)
 #define _MIPIC_TLPX_TIME_COUNT		(dev_priv->mipi_mmio_base + 0xb8a4)
@@ -12187,14 +9340,6 @@ enum skl_power_gate {
 #define _MIPIA_HS_GEN_CTRL		(dev_priv->mipi_mmio_base + 0xb070)
 #define _MIPIC_HS_GEN_CTRL		(dev_priv->mipi_mmio_base + 0xb870)
 #define MIPI_HS_GEN_CTRL(port)		_MMIO_MIPI(port, _MIPIA_HS_GEN_CTRL, _MIPIC_HS_GEN_CTRL)
-#define  LONG_PACKET_WORD_COUNT_SHIFT			8
-#define  LONG_PACKET_WORD_COUNT_MASK			(0xffff << 8)
-#define  SHORT_PACKET_PARAM_SHIFT			8
-#define  SHORT_PACKET_PARAM_MASK			(0xffff << 8)
-#define  VIRTUAL_CHANNEL_SHIFT				6
-#define  VIRTUAL_CHANNEL_MASK				(3 << 6)
-#define  DATA_TYPE_SHIFT				0
-#define  DATA_TYPE_MASK					(0x3f << 0)
 /* data type values, see include/video/mipi_display.h */
 
 #define _MIPIA_GEN_FIFO_STAT		(dev_priv->mipi_mmio_base + 0xb074)
@@ -12215,24 +9360,9 @@ enum skl_power_gate {
 #define  HS_DATA_FIFO_HALF_EMPTY			(1 << 1)
 #define  HS_DATA_FIFO_FULL				(1 << 0)
 
-#define _MIPIA_HS_LS_DBI_ENABLE		(dev_priv->mipi_mmio_base + 0xb078)
-#define _MIPIC_HS_LS_DBI_ENABLE		(dev_priv->mipi_mmio_base + 0xb878)
-#define MIPI_HS_LP_DBI_ENABLE(port)	_MMIO_MIPI(port, _MIPIA_HS_LS_DBI_ENABLE, _MIPIC_HS_LS_DBI_ENABLE)
-#define  DBI_HS_LP_MODE_MASK				(1 << 0)
-#define  DBI_LP_MODE					(1 << 0)
-#define  DBI_HS_MODE					(0 << 0)
-
 #define _MIPIA_DPHY_PARAM		(dev_priv->mipi_mmio_base + 0xb080)
 #define _MIPIC_DPHY_PARAM		(dev_priv->mipi_mmio_base + 0xb880)
 #define MIPI_DPHY_PARAM(port)		_MMIO_MIPI(port, _MIPIA_DPHY_PARAM, _MIPIC_DPHY_PARAM)
-#define  EXIT_ZERO_COUNT_SHIFT				24
-#define  EXIT_ZERO_COUNT_MASK				(0x3f << 24)
-#define  TRAIL_COUNT_SHIFT				16
-#define  TRAIL_COUNT_MASK				(0x1f << 16)
-#define  CLK_ZERO_COUNT_SHIFT				8
-#define  CLK_ZERO_COUNT_MASK				(0xff << 8)
-#define  PREPARE_COUNT_SHIFT				0
-#define  PREPARE_COUNT_MASK				(0x3f << 0)
 
 #define _ICL_DSI_T_INIT_MASTER_0	0x6b088
 #define _ICL_DSI_T_INIT_MASTER_1	0x6b888
@@ -12252,24 +9382,14 @@ enum skl_power_gate {
 						   _DSI_CLK_TIMING_PARAM_1)
 #define  CLK_PREPARE_OVERRIDE		(1 << 31)
 #define  CLK_PREPARE(x)		((x) << 28)
-#define  CLK_PREPARE_MASK		(0x7 << 28)
-#define  CLK_PREPARE_SHIFT		28
 #define  CLK_ZERO_OVERRIDE		(1 << 27)
 #define  CLK_ZERO(x)			((x) << 20)
-#define  CLK_ZERO_MASK			(0xf << 20)
-#define  CLK_ZERO_SHIFT		20
 #define  CLK_PRE_OVERRIDE		(1 << 19)
 #define  CLK_PRE(x)			((x) << 16)
-#define  CLK_PRE_MASK			(0x3 << 16)
-#define  CLK_PRE_SHIFT			16
 #define  CLK_POST_OVERRIDE		(1 << 15)
 #define  CLK_POST(x)			((x) << 8)
-#define  CLK_POST_MASK			(0x7 << 8)
-#define  CLK_POST_SHIFT		8
 #define  CLK_TRAIL_OVERRIDE		(1 << 7)
 #define  CLK_TRAIL(x)			((x) << 0)
-#define  CLK_TRAIL_MASK		(0xf << 0)
-#define  CLK_TRAIL_SHIFT		0
 
 #define _DPHY_DATA_TIMING_PARAM_0	0x162184
 #define _DPHY_DATA_TIMING_PARAM_1	0x6c184
@@ -12283,20 +9403,12 @@ enum skl_power_gate {
 						   _DSI_DATA_TIMING_PARAM_1)
 #define  HS_PREPARE_OVERRIDE		(1 << 31)
 #define  HS_PREPARE(x)			((x) << 24)
-#define  HS_PREPARE_MASK		(0x7 << 24)
-#define  HS_PREPARE_SHIFT		24
 #define  HS_ZERO_OVERRIDE		(1 << 23)
 #define  HS_ZERO(x)			((x) << 16)
-#define  HS_ZERO_MASK			(0xf << 16)
-#define  HS_ZERO_SHIFT			16
 #define  HS_TRAIL_OVERRIDE		(1 << 15)
 #define  HS_TRAIL(x)			((x) << 8)
-#define  HS_TRAIL_MASK			(0x7 << 8)
-#define  HS_TRAIL_SHIFT		8
 #define  HS_EXIT_OVERRIDE		(1 << 7)
 #define  HS_EXIT(x)			((x) << 0)
-#define  HS_EXIT_MASK			(0x7 << 0)
-#define  HS_EXIT_SHIFT			0
 
 #define _DPHY_TA_TIMING_PARAM_0		0x162188
 #define _DPHY_TA_TIMING_PARAM_1		0x6c188
@@ -12311,15 +9423,8 @@ enum skl_power_gate {
 #define  TA_SURE_OVERRIDE		(1 << 31)
 #define  TA_SURE(x)			((x) << 16)
 #define  TA_SURE_MASK			(0x1f << 16)
-#define  TA_SURE_SHIFT			16
-#define  TA_GO_OVERRIDE		(1 << 15)
 #define  TA_GO(x)			((x) << 8)
-#define  TA_GO_MASK			(0xf << 8)
-#define  TA_GO_SHIFT			8
-#define  TA_GET_OVERRIDE		(1 << 7)
 #define  TA_GET(x)			((x) << 0)
-#define  TA_GET_MASK			(0xf << 0)
-#define  TA_GET_SHIFT			0
 
 /* DSI transcoder configuration */
 #define _DSI_TRANS_FUNC_CONF_0		0x6b030
@@ -12328,7 +9433,6 @@ enum skl_power_gate {
 						  _DSI_TRANS_FUNC_CONF_0,\
 						  _DSI_TRANS_FUNC_CONF_1)
 #define  OP_MODE_MASK			(0x3 << 28)
-#define  OP_MODE_SHIFT			28
 #define  CMD_MODE_NO_GATE		(0x0 << 28)
 #define  CMD_MODE_TE_GATE		(0x1 << 28)
 #define  VIDEO_MODE_SYNC_EVENT		(0x2 << 28)
@@ -12336,36 +9440,22 @@ enum skl_power_gate {
 #define  TE_SOURCE_GPIO			(1 << 27)
 #define  LINK_READY			(1 << 20)
 #define  PIX_FMT_MASK			(0x3 << 16)
-#define  PIX_FMT_SHIFT			16
 #define  PIX_FMT_RGB565			(0x0 << 16)
 #define  PIX_FMT_RGB666_PACKED		(0x1 << 16)
 #define  PIX_FMT_RGB666_LOOSE		(0x2 << 16)
 #define  PIX_FMT_RGB888			(0x3 << 16)
-#define  PIX_FMT_RGB101010		(0x4 << 16)
-#define  PIX_FMT_RGB121212		(0x5 << 16)
 #define  PIX_FMT_COMPRESSED		(0x6 << 16)
 #define  BGR_TRANSMISSION		(1 << 15)
 #define  PIX_VIRT_CHAN(x)		((x) << 12)
 #define  PIX_VIRT_CHAN_MASK		(0x3 << 12)
-#define  PIX_VIRT_CHAN_SHIFT		12
 #define  PIX_BUF_THRESHOLD_MASK		(0x3 << 10)
-#define  PIX_BUF_THRESHOLD_SHIFT	10
 #define  PIX_BUF_THRESHOLD_1_4		(0x0 << 10)
-#define  PIX_BUF_THRESHOLD_1_2		(0x1 << 10)
-#define  PIX_BUF_THRESHOLD_3_4		(0x2 << 10)
-#define  PIX_BUF_THRESHOLD_FULL		(0x3 << 10)
 #define  CONTINUOUS_CLK_MASK		(0x3 << 8)
-#define  CONTINUOUS_CLK_SHIFT		8
 #define  CLK_ENTER_LP_AFTER_DATA	(0x0 << 8)
-#define  CLK_HS_OR_LP			(0x2 << 8)
 #define  CLK_HS_CONTINUOUS		(0x3 << 8)
 #define  LINK_CALIBRATION_MASK		(0x3 << 4)
-#define  LINK_CALIBRATION_SHIFT		4
-#define  CALIBRATION_DISABLED		(0x0 << 4)
 #define  CALIBRATION_ENABLED_INITIAL_ONLY	(0x2 << 4)
-#define  CALIBRATION_ENABLED_INITIAL_PERIODIC	(0x3 << 4)
 #define  BLANKING_PACKET_ENABLE		(1 << 2)
-#define  S3D_ORIENTATION_LANDSCAPE	(1 << 1)
 #define  EOTP_DISABLED			(1 << 0)
 
 #define _DSI_CMD_RXCTL_0		0x6b0d4
@@ -12373,22 +9463,13 @@ enum skl_power_gate {
 #define DSI_CMD_RXCTL(tc)		_MMIO_DSI(tc,	\
 						  _DSI_CMD_RXCTL_0,\
 						  _DSI_CMD_RXCTL_1)
-#define  READ_UNLOADS_DW		(1 << 16)
-#define  RECEIVED_UNASSIGNED_TRIGGER	(1 << 15)
-#define  RECEIVED_ACKNOWLEDGE_TRIGGER	(1 << 14)
-#define  RECEIVED_TEAR_EFFECT_TRIGGER	(1 << 13)
-#define  RECEIVED_RESET_TRIGGER		(1 << 12)
-#define  RECEIVED_PAYLOAD_WAS_LOST	(1 << 11)
-#define  RECEIVED_CRC_WAS_LOST		(1 << 10)
 #define  NUMBER_RX_PLOAD_DW_MASK	(0xff << 0)
-#define  NUMBER_RX_PLOAD_DW_SHIFT	0
 
 #define _DSI_CMD_TXCTL_0		0x6b0d0
 #define _DSI_CMD_TXCTL_1		0x6b8d0
 #define DSI_CMD_TXCTL(tc)		_MMIO_DSI(tc,	\
 						  _DSI_CMD_TXCTL_0,\
 						  _DSI_CMD_TXCTL_1)
-#define  KEEP_LINK_IN_HS		(1 << 24)
 #define  FREE_HEADER_CREDIT_MASK	(0x1f << 8)
 #define  FREE_HEADER_CREDIT_SHIFT	0x8
 #define  FREE_PLOAD_CREDIT_MASK		(0xff << 0)
@@ -12435,40 +9516,22 @@ enum skl_power_gate {
 						  _DSI_HSTX_TO_0,\
 						  _DSI_HSTX_TO_1)
 #define  HSTX_TIMEOUT_VALUE_MASK	(0xffff << 16)
-#define  HSTX_TIMEOUT_VALUE_SHIFT	16
 #define  HSTX_TIMEOUT_VALUE(x)		((x) << 16)
-#define  HSTX_TIMED_OUT			(1 << 0)
 
 #define _DSI_LPRX_HOST_TO_0		0x6b048
 #define _DSI_LPRX_HOST_TO_1		0x6b848
 #define DSI_LPRX_HOST_TO(tc)		_MMIO_DSI(tc,	\
 						  _DSI_LPRX_HOST_TO_0,\
 						  _DSI_LPRX_HOST_TO_1)
-#define  LPRX_TIMED_OUT			(1 << 16)
 #define  LPRX_TIMEOUT_VALUE_MASK	(0xffff << 0)
-#define  LPRX_TIMEOUT_VALUE_SHIFT	0
 #define  LPRX_TIMEOUT_VALUE(x)		((x) << 0)
 
-#define _DSI_PWAIT_TO_0			0x6b040
-#define _DSI_PWAIT_TO_1			0x6b840
-#define DSI_PWAIT_TO(tc)		_MMIO_DSI(tc,	\
-						  _DSI_PWAIT_TO_0,\
-						  _DSI_PWAIT_TO_1)
-#define  PRESET_TIMEOUT_VALUE_MASK	(0xffff << 16)
-#define  PRESET_TIMEOUT_VALUE_SHIFT	16
-#define  PRESET_TIMEOUT_VALUE(x)	((x) << 16)
-#define  PRESPONSE_TIMEOUT_VALUE_MASK	(0xffff << 0)
-#define  PRESPONSE_TIMEOUT_VALUE_SHIFT	0
-#define  PRESPONSE_TIMEOUT_VALUE(x)	((x) << 0)
-
 #define _DSI_TA_TO_0			0x6b04c
 #define _DSI_TA_TO_1			0x6b84c
 #define DSI_TA_TO(tc)			_MMIO_DSI(tc,	\
 						  _DSI_TA_TO_0,\
 						  _DSI_TA_TO_1)
-#define  TA_TIMED_OUT			(1 << 16)
 #define  TA_TIMEOUT_VALUE_MASK		(0xffff << 0)
-#define  TA_TIMEOUT_VALUE_SHIFT		0
 #define  TA_TIMEOUT_VALUE(x)		((x) << 0)
 
 /* bits 31:0 */
@@ -12480,36 +9543,7 @@ enum skl_power_gate {
 #define _MIPIC_CLK_LANE_SWITCH_TIME_CNT		(dev_priv->mipi_mmio_base + 0xb888)
 #define MIPI_CLK_LANE_SWITCH_TIME_CNT(port)	_MMIO_MIPI(port, _MIPIA_CLK_LANE_SWITCH_TIME_CNT, _MIPIC_CLK_LANE_SWITCH_TIME_CNT)
 #define  LP_HS_SSW_CNT_SHIFT				16
-#define  LP_HS_SSW_CNT_MASK				(0xffff << 16)
 #define  HS_LP_PWR_SW_CNT_SHIFT				0
-#define  HS_LP_PWR_SW_CNT_MASK				(0xffff << 0)
-
-#define _MIPIA_STOP_STATE_STALL		(dev_priv->mipi_mmio_base + 0xb08c)
-#define _MIPIC_STOP_STATE_STALL		(dev_priv->mipi_mmio_base + 0xb88c)
-#define MIPI_STOP_STATE_STALL(port)	_MMIO_MIPI(port, _MIPIA_STOP_STATE_STALL, _MIPIC_STOP_STATE_STALL)
-#define  STOP_STATE_STALL_COUNTER_SHIFT			0
-#define  STOP_STATE_STALL_COUNTER_MASK			(0xff << 0)
-
-#define _MIPIA_INTR_STAT_REG_1		(dev_priv->mipi_mmio_base + 0xb090)
-#define _MIPIC_INTR_STAT_REG_1		(dev_priv->mipi_mmio_base + 0xb890)
-#define MIPI_INTR_STAT_REG_1(port)	_MMIO_MIPI(port, _MIPIA_INTR_STAT_REG_1, _MIPIC_INTR_STAT_REG_1)
-#define _MIPIA_INTR_EN_REG_1		(dev_priv->mipi_mmio_base + 0xb094)
-#define _MIPIC_INTR_EN_REG_1		(dev_priv->mipi_mmio_base + 0xb894)
-#define MIPI_INTR_EN_REG_1(port)	_MMIO_MIPI(port, _MIPIA_INTR_EN_REG_1, _MIPIC_INTR_EN_REG_1)
-#define  RX_CONTENTION_DETECTED				(1 << 0)
-
-/* XXX: only pipe A ?!? */
-#define MIPIA_DBI_TYPEC_CTRL		(dev_priv->mipi_mmio_base + 0xb100)
-#define  DBI_TYPEC_ENABLE				(1 << 31)
-#define  DBI_TYPEC_WIP					(1 << 30)
-#define  DBI_TYPEC_OPTION_SHIFT				28
-#define  DBI_TYPEC_OPTION_MASK				(3 << 28)
-#define  DBI_TYPEC_FREQ_SHIFT				24
-#define  DBI_TYPEC_FREQ_MASK				(0xf << 24)
-#define  DBI_TYPEC_OVERRIDE				(1 << 8)
-#define  DBI_TYPEC_OVERRIDE_COUNTER_SHIFT		0
-#define  DBI_TYPEC_OVERRIDE_COUNTER_MASK		(0xff << 0)
-
 
 /* MIPI adapter registers */
 
@@ -12521,11 +9555,8 @@ enum skl_power_gate {
 #define  ESCAPE_CLOCK_DIVIDER_1				(0 << 5)
 #define  ESCAPE_CLOCK_DIVIDER_2				(1 << 5)
 #define  ESCAPE_CLOCK_DIVIDER_4				(2 << 5)
-#define  READ_REQUEST_PRIORITY_SHIFT			3
 #define  READ_REQUEST_PRIORITY_MASK			(3 << 3)
-#define  READ_REQUEST_PRIORITY_LOW			(0 << 3)
 #define  READ_REQUEST_PRIORITY_HIGH			(3 << 3)
-#define  RGB_FLIP_TO_BGR				(1 << 2)
 
 #define  BXT_PIPE_SELECT_SHIFT				7
 #define  BXT_PIPE_SELECT_MASK				(7 << 7)
@@ -12533,56 +9564,13 @@ enum skl_power_gate {
 #define  GLK_PHY_STATUS_PORT_READY			(1 << 31) /* RO */
 #define  GLK_ULPS_NOT_ACTIVE				(1 << 30) /* RO */
 #define  GLK_MIPIIO_RESET_RELEASED			(1 << 28)
-#define  GLK_CLOCK_LANE_STOP_STATE			(1 << 27) /* RO */
 #define  GLK_DATA_LANE_STOP_STATE			(1 << 26) /* RO */
 #define  GLK_LP_WAKE					(1 << 22)
-#define  GLK_LP11_LOW_PWR_MODE				(1 << 21)
-#define  GLK_LP00_LOW_PWR_MODE				(1 << 20)
-#define  GLK_FIREWALL_ENABLE				(1 << 16)
 #define  BXT_PIXEL_OVERLAP_CNT_MASK			(0xf << 10)
 #define  BXT_PIXEL_OVERLAP_CNT_SHIFT			10
-#define  BXT_DSC_ENABLE					(1 << 3)
-#define  BXT_RGB_FLIP					(1 << 2)
 #define  GLK_MIPIIO_PORT_POWERED			(1 << 1) /* RO */
 #define  GLK_MIPIIO_ENABLE				(1 << 0)
 
-#define _MIPIA_DATA_ADDRESS		(dev_priv->mipi_mmio_base + 0xb108)
-#define _MIPIC_DATA_ADDRESS		(dev_priv->mipi_mmio_base + 0xb908)
-#define MIPI_DATA_ADDRESS(port)		_MMIO_MIPI(port, _MIPIA_DATA_ADDRESS, _MIPIC_DATA_ADDRESS)
-#define  DATA_MEM_ADDRESS_SHIFT				5
-#define  DATA_MEM_ADDRESS_MASK				(0x7ffffff << 5)
-#define  DATA_VALID					(1 << 0)
-
-#define _MIPIA_DATA_LENGTH		(dev_priv->mipi_mmio_base + 0xb10c)
-#define _MIPIC_DATA_LENGTH		(dev_priv->mipi_mmio_base + 0xb90c)
-#define MIPI_DATA_LENGTH(port)		_MMIO_MIPI(port, _MIPIA_DATA_LENGTH, _MIPIC_DATA_LENGTH)
-#define  DATA_LENGTH_SHIFT				0
-#define  DATA_LENGTH_MASK				(0xfffff << 0)
-
-#define _MIPIA_COMMAND_ADDRESS		(dev_priv->mipi_mmio_base + 0xb110)
-#define _MIPIC_COMMAND_ADDRESS		(dev_priv->mipi_mmio_base + 0xb910)
-#define MIPI_COMMAND_ADDRESS(port)	_MMIO_MIPI(port, _MIPIA_COMMAND_ADDRESS, _MIPIC_COMMAND_ADDRESS)
-#define  COMMAND_MEM_ADDRESS_SHIFT			5
-#define  COMMAND_MEM_ADDRESS_MASK			(0x7ffffff << 5)
-#define  AUTO_PWG_ENABLE				(1 << 2)
-#define  MEMORY_WRITE_DATA_FROM_PIPE_RENDERING		(1 << 1)
-#define  COMMAND_VALID					(1 << 0)
-
-#define _MIPIA_COMMAND_LENGTH		(dev_priv->mipi_mmio_base + 0xb114)
-#define _MIPIC_COMMAND_LENGTH		(dev_priv->mipi_mmio_base + 0xb914)
-#define MIPI_COMMAND_LENGTH(port)	_MMIO_MIPI(port, _MIPIA_COMMAND_LENGTH, _MIPIC_COMMAND_LENGTH)
-#define  COMMAND_LENGTH_SHIFT(n)			(8 * (n)) /* n: 0...3 */
-#define  COMMAND_LENGTH_MASK(n)				(0xff << (8 * (n)))
-
-#define _MIPIA_READ_DATA_RETURN0	(dev_priv->mipi_mmio_base + 0xb118)
-#define _MIPIC_READ_DATA_RETURN0	(dev_priv->mipi_mmio_base + 0xb918)
-#define MIPI_READ_DATA_RETURN(port, n) _MMIO(_MIPI(port, _MIPIA_READ_DATA_RETURN0, _MIPIC_READ_DATA_RETURN0) + 4 * (n)) /* n: 0...7 */
-
-#define _MIPIA_READ_DATA_VALID		(dev_priv->mipi_mmio_base + 0xb138)
-#define _MIPIC_READ_DATA_VALID		(dev_priv->mipi_mmio_base + 0xb938)
-#define MIPI_READ_DATA_VALID(port)	_MMIO_MIPI(port, _MIPIA_READ_DATA_VALID, _MIPIC_READ_DATA_VALID)
-#define  READ_DATA_VALID(n)				(1 << (n))
-
 /* MOCS (Memory Object Control State) registers */
 #define GEN9_LNCFCMOCS(i)	_MMIO(0xb020 + (i) * 4)	/* L3 Cache Control */
 #define GEN9_LNCFCMOCS_REG_COUNT	32
@@ -12590,15 +9578,10 @@ enum skl_power_gate {
 #define __GEN9_RCS0_MOCS0	0xc800
 #define GEN9_GFX_MOCS(i)	_MMIO(__GEN9_RCS0_MOCS0 + (i) * 4)
 #define __GEN9_VCS0_MOCS0	0xc900
-#define GEN9_MFX0_MOCS(i)	_MMIO(__GEN9_VCS0_MOCS0 + (i) * 4)
 #define __GEN9_VCS1_MOCS0	0xca00
-#define GEN9_MFX1_MOCS(i)	_MMIO(__GEN9_VCS1_MOCS0 + (i) * 4)
 #define __GEN9_VECS0_MOCS0	0xcb00
-#define GEN9_VEBOX_MOCS(i)	_MMIO(__GEN9_VECS0_MOCS0 + (i) * 4)
 #define __GEN9_BCS0_MOCS0	0xcc00
-#define GEN9_BLT_MOCS(i)	_MMIO(__GEN9_BCS0_MOCS0 + (i) * 4)
 #define __GEN11_VCS2_MOCS0	0x10000
-#define GEN11_MFX2_MOCS(i)	_MMIO(__GEN11_VCS2_MOCS0 + (i) * 4)
 
 #define GEN9_SCRATCH_LNCF1		_MMIO(0xb008)
 #define   GEN9_LNCF_NONIA_COHERENT_ATOMICS_ENABLE REG_BIT(0)
@@ -12606,11 +9589,6 @@ enum skl_power_gate {
 #define GEN9_SCRATCH1			_MMIO(0xb11c)
 #define   EVICTION_PERF_FIX_ENABLE	REG_BIT(8)
 
-#define GEN10_SCRATCH_LNCF2		_MMIO(0xb0a0)
-#define   PMFLUSHDONE_LNICRSDROP	(1 << 20)
-#define   PMFLUSH_GAPL3UNBLOCK		(1 << 21)
-#define   PMFLUSHDONE_LNEBLK		(1 << 22)
-
 #define XEHP_L3NODEARBCFG		_MMIO(0xb0b4)
 #define   XEHP_LNESPARE			REG_BIT(19)
 
@@ -12818,71 +9796,6 @@ enum skl_power_gate {
 #define  DSC_RC_QUANT_INC_LIMIT1(lim)			((lim) << 8)
 #define  DSC_RC_QUANT_INC_LIMIT0(lim)			((lim) << 0)
 
-#define DSCA_PICTURE_PARAMETER_SET_11		_MMIO(0x6B22C)
-#define DSCC_PICTURE_PARAMETER_SET_11		_MMIO(0x6BA2C)
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_11_PB	0x7829C
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_11_PB	0x7839C
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_11_PC	0x7849C
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_11_PC	0x7859C
-#define ICL_DSC0_PICTURE_PARAMETER_SET_11(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_11_PB, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_11_PC)
-#define ICL_DSC1_PICTURE_PARAMETER_SET_11(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_11_PB, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_11_PC)
-
-#define DSCA_PICTURE_PARAMETER_SET_12		_MMIO(0x6B260)
-#define DSCC_PICTURE_PARAMETER_SET_12		_MMIO(0x6BA60)
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_12_PB	0x782A0
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_12_PB	0x783A0
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_12_PC	0x784A0
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_12_PC	0x785A0
-#define ICL_DSC0_PICTURE_PARAMETER_SET_12(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_12_PB, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_12_PC)
-#define ICL_DSC1_PICTURE_PARAMETER_SET_12(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_12_PB, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_12_PC)
-
-#define DSCA_PICTURE_PARAMETER_SET_13		_MMIO(0x6B264)
-#define DSCC_PICTURE_PARAMETER_SET_13		_MMIO(0x6BA64)
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_13_PB	0x782A4
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_13_PB	0x783A4
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_13_PC	0x784A4
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_13_PC	0x785A4
-#define ICL_DSC0_PICTURE_PARAMETER_SET_13(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_13_PB, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_13_PC)
-#define ICL_DSC1_PICTURE_PARAMETER_SET_13(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_13_PB, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_13_PC)
-
-#define DSCA_PICTURE_PARAMETER_SET_14		_MMIO(0x6B268)
-#define DSCC_PICTURE_PARAMETER_SET_14		_MMIO(0x6BA68)
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_14_PB	0x782A8
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_14_PB	0x783A8
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_14_PC	0x784A8
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_14_PC	0x785A8
-#define ICL_DSC0_PICTURE_PARAMETER_SET_14(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_14_PB, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_14_PC)
-#define ICL_DSC1_PICTURE_PARAMETER_SET_14(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_14_PB, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_14_PC)
-
-#define DSCA_PICTURE_PARAMETER_SET_15		_MMIO(0x6B26C)
-#define DSCC_PICTURE_PARAMETER_SET_15		_MMIO(0x6BA6C)
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_15_PB	0x782AC
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_15_PB	0x783AC
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_15_PC	0x784AC
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_15_PC	0x785AC
-#define ICL_DSC0_PICTURE_PARAMETER_SET_15(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_15_PB, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_15_PC)
-#define ICL_DSC1_PICTURE_PARAMETER_SET_15(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_15_PB, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_15_PC)
-
 #define DSCA_PICTURE_PARAMETER_SET_16		_MMIO(0x6B270)
 #define DSCC_PICTURE_PARAMETER_SET_16		_MMIO(0x6BA70)
 #define _ICL_DSC0_PICTURE_PARAMETER_SET_16_PB	0x782B0
@@ -12956,7 +9869,6 @@ enum skl_power_gate {
 #define   TC_LIVE_STATE_TC(idx)			(1 << ((idx) * 8 + 5))
 #define   DP_LANE_ASSIGNMENT_SHIFT(idx)		((idx) * 8)
 #define   DP_LANE_ASSIGNMENT_MASK(idx)		(0xf << ((idx) * 8))
-#define   DP_LANE_ASSIGNMENT(idx, x)		((x) << ((idx) * 8))
 
 #define PORT_TX_DFLEXDPPMS(fia)			_MMIO_FIA((fia), 0x00890)
 #define   DP_PHY_MODE_STATUS_COMPLETED(idx)	(1 << (idx))
@@ -12967,7 +9879,6 @@ enum skl_power_gate {
 #define PORT_TX_DFLEXPA1(fia)			_MMIO_FIA((fia), 0x00880)
 #define   DP_PIN_ASSIGNMENT_SHIFT(idx)		((idx) * 4)
 #define   DP_PIN_ASSIGNMENT_MASK(idx)		(0xf << ((idx) * 4))
-#define   DP_PIN_ASSIGNMENT(idx, x)		((x) << ((idx) * 4))
 
 #define _TCSS_DDI_STATUS_1			0x161500
 #define _TCSS_DDI_STATUS_2			0x161504
-- 
2.34.1

