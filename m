Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E106A3196C
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 00:20:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD2DC10E764;
	Tue, 11 Feb 2025 23:20:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hx7J/Oq3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 049B210E764
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 23:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739316016; x=1770852016;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=GscQRseAZSe0Og8PLIB9dmiIC6ZY8shICmXWuo3VMcI=;
 b=hx7J/Oq3ldSRi9DsSD2gUq6hwMNv76PNWHgc00t3YLvJ3Mrfqah/v54O
 enNZPzCpxD+Whk1pIngSIxKPhQLP0oF8ZoL3/F9S39uhj6qVNpyuVx/fB
 6mnKUW3LIMOxnHsPQ1bpJQBnMO9PIqqJP679eBzD7yr2vwQwnU+L/if18
 lLrGS4iw9FSxaMves/i037wSITZcRNDONDUtqrZZksyMPA8XJGyPtfMK2
 KoI6FZTs0uVr6XKfJ0Ivoyaq9tl7O/s0TrQLbBxYfgC6c4kXpp3DlZVLG
 NMKn+NFt8SwzpjZc/jHoyRaUQUXvvCa60THY2BJy3O6VQQAOXF+jVDsWE w==;
X-CSE-ConnectionGUID: 5KniBi4nS4esvwDWsdDhuA==
X-CSE-MsgGUID: 7GW81YTgQymTUgDAZHWguw==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39820144"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="39820144"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 15:20:15 -0800
X-CSE-ConnectionGUID: 1mt3WVGsSje6BhNeB2vjHQ==
X-CSE-MsgGUID: MuO52hccSx+L0Aj/thx3uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="112870925"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Feb 2025 15:20:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 01:20:12 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 11/12] drm/i915: Use REG_BIT() & co. for gen9+ timestamp freq
 registers
Date: Wed, 12 Feb 2025 01:19:39 +0200
Message-ID: <20250211231941.22769-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Convert the gen9+ timestamo frequency related registers to
the modern REG_BIT()/etc. style.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/gt/intel_gt_clock_utils.c    | 10 ++-----
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       | 30 ++++++++-----------
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  7 ++---
 3 files changed, 18 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
index 6e63505fe478..6c499692d61e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
@@ -35,9 +35,7 @@ static u32 gen11_get_crystal_clock_freq(struct intel_uncore *uncore,
 	u32 f24_mhz = 24000000;
 	u32 f25_mhz = 25000000;
 	u32 f38_4_mhz = 38400000;
-	u32 crystal_clock =
-		(rpm_config_reg & GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK) >>
-		GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT;
+	u32 crystal_clock = rpm_config_reg & GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK;
 
 	switch (crystal_clock) {
 	case GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_24_MHZ:
@@ -80,8 +78,7 @@ static u32 gen11_read_clock_frequency(struct intel_uncore *uncore)
 		 * register increments from this frequency (it might
 		 * increment only every few clock cycle).
 		 */
-		freq >>= 3 - ((c0 & GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK) >>
-			      GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT);
+		freq >>= 3 - REG_FIELD_GET(GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK, c0);
 	}
 
 	return freq;
@@ -102,8 +99,7 @@ static u32 gen9_read_clock_frequency(struct intel_uncore *uncore)
 		 * register increments from this frequency (it might
 		 * increment only every few clock cycle).
 		 */
-		freq >>= 3 - ((ctc_reg & CTC_SHIFT_PARAMETER_MASK) >>
-			      CTC_SHIFT_PARAMETER_SHIFT);
+		freq >>= 3 - REG_FIELD_GET(CTC_SHIFT_PARAMETER_MASK, ctc_reg);
 	}
 
 	return freq;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index f5e6853b3a6c..440ace1a0170 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -30,18 +30,15 @@
 
 /* RPM unit config (Gen8+) */
 #define RPM_CONFIG0				_MMIO(0xd00)
-#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT	3
-#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK	(1 << GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT)
-#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_19_2_MHZ	0
-#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_24_MHZ	1
-#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT	3
-#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK	(0x7 << GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT)
-#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_24_MHZ	0
-#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_19_2_MHZ	1
-#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_38_4_MHZ	2
-#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_25_MHZ	3
-#define   GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT	1
-#define   GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK	(0x3 << GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT)
+#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK	REG_BIT(3)
+#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_19_2_MHZ	REG_FIELD_PREP(GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 0)
+#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_24_MHZ	REG_FIELD_PREP(GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 1)
+#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK	REG_GENMASK(5, 3)
+#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_24_MHZ	REG_FIELD_PREP(GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 0)
+#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_19_2_MHZ	REG_FIELD_PREP(GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 1)
+#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_38_4_MHZ	REG_FIELD_PREP(GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 2)
+#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_25_MHZ	REG_FIELD_PREP(GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 3)
+#define   GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK	REG_GENMASK(2, 1)
 
 #define RPM_CONFIG1				_MMIO(0xd04)
 #define   GEN10_GT_NOA_ENABLE			(1 << 9)
@@ -879,11 +876,10 @@
 
 /* GPM unit config (Gen9+) */
 #define CTC_MODE				_MMIO(0xa26c)
-#define   CTC_SOURCE_PARAMETER_MASK		1
-#define   CTC_SOURCE_CRYSTAL_CLOCK		0
-#define   CTC_SOURCE_DIVIDE_LOGIC		1
-#define   CTC_SHIFT_PARAMETER_SHIFT		1
-#define   CTC_SHIFT_PARAMETER_MASK		(0x3 << CTC_SHIFT_PARAMETER_SHIFT)
+#define   CTC_SOURCE_PARAMETER_MASK		REG_BIT(0)
+#define   CTC_SOURCE_CRYSTAL_CLOCK		REG_FIELD_PREP(CTC_SOURCE_PARAMETER_MASK, 0)
+#define   CTC_SOURCE_DIVIDE_LOGIC		REG_FIELD_PREP(CTC_SOURCE_PARAMETER_MASK, 1)
+#define   CTC_SHIFT_PARAMETER_MASK		REG_GENMASK(2, 1)
 
 /* GPM MSG_IDLE */
 #define MSG_IDLE_CS		_MMIO(0x8000)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 90da23d09250..33227eccb67e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1285,15 +1285,12 @@ static void guc_update_engine_gt_clks(struct intel_engine_cs *engine)
 static u32 gpm_timestamp_shift(struct intel_gt *gt)
 {
 	intel_wakeref_t wakeref;
-	u32 reg, shift;
+	u32 reg;
 
 	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
 		reg = intel_uncore_read(gt->uncore, RPM_CONFIG0);
 
-	shift = (reg & GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK) >>
-		GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT;
-
-	return 3 - shift;
+	return 3 - REG_FIELD_GET(GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK, reg);
 }
 
 static void guc_update_pm_timestamp(struct intel_guc *guc, ktime_t *now)
-- 
2.45.3

