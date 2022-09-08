Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A11B5B2775
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 22:10:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4597D10E64C;
	Thu,  8 Sep 2022 20:10:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C10310E63A
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 20:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662667825; x=1694203825;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t8wCCMiFwl7USCWDWehRwnhKkCQ1vLO8M5eiL/Y+sXw=;
 b=NZ0PDSshQ5xz33gZ57X2E6XBpVSagwX7Ug75xZsCLTZJj69nTgRzJhVZ
 nkrx1EdH7+zn87yZ110BaZAUG4tzCmgi4FH3uNoBGJFzvJRt6XFFR0uE6
 UhvWjc/MTeYv+xqKENJv8NN4GXXTvUU3yFLLNjDKU3jtsY5uWbNMcdJDb
 vLLZm1u9jaNROFrxEwDwLBWPGIM8u4jQ5BR8prb/9Q7OwzkkjNVgS6lbN
 TbmVY3isbYL0REqUowLPpWU/2lkdolACnTcQdkS4tArNBto09xLdk2hfw
 o6k0ulLbLmBNX3U2jcALJ/9kCQ2XfKhywrffsTTOilRwFADKbk5PXCNwP Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="383607999"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="383607999"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 13:10:06 -0700
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="718702463"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.143])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 13:10:06 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Sep 2022 13:08:15 -0700
Message-Id: <20220908-if-ladder-v1-2-9949a713ca08@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220908-if-ladder-v1-0-9949a713ca08@intel.com>
References: <20220908-if-ladder-v1-0-9949a713ca08@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.10.0-dev-df873
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 2/3] drm/i915/gt: Extract per-platform
 function for frequency read
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

Instead of calling read_clock_frequency() to walk the if/else ladder
per platform, move the ladder to intel_gt_init_clock_frequency() and
use one function per branch.

With the new logic, it's now clear the call to
gen9_get_crystal_clock_freq() was just dead code, as gen9 is handled by
another function and there is no version 10. Remove that function and
the caller.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
index 93608c9349fd..ebddbf7542bc 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
@@ -26,26 +26,6 @@ static u32 read_reference_ts_freq(struct intel_uncore *uncore)
 	return base_freq + frac_freq;
 }
 
-static u32 gen9_get_crystal_clock_freq(struct intel_uncore *uncore,
-				       u32 rpm_config_reg)
-{
-	u32 f19_2_mhz = 19200000;
-	u32 f24_mhz = 24000000;
-	u32 crystal_clock =
-		(rpm_config_reg & GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK) >>
-		GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT;
-
-	switch (crystal_clock) {
-	case GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_19_2_MHZ:
-		return f19_2_mhz;
-	case GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_24_MHZ:
-		return f24_mhz;
-	default:
-		MISSING_CASE(crystal_clock);
-		return 0;
-	}
-}
-
 static u32 gen11_get_crystal_clock_freq(struct intel_uncore *uncore,
 					u32 rpm_config_reg)
 {
@@ -72,95 +52,101 @@ static u32 gen11_get_crystal_clock_freq(struct intel_uncore *uncore,
 	}
 }
 
-static u32 read_clock_frequency(struct intel_uncore *uncore)
+static u32 gen11_read_clock_frequency(struct intel_uncore *uncore)
 {
-	u32 f12_5_mhz = 12500000;
-	u32 f19_2_mhz = 19200000;
-	u32 f24_mhz = 24000000;
+	u32 ctc_reg = intel_uncore_read(uncore, CTC_MODE);
+	u32 freq = 0;
 
-	if (GRAPHICS_VER(uncore->i915) >= 11) {
-		u32 ctc_reg = intel_uncore_read(uncore, CTC_MODE);
-		u32 freq = 0;
+	/*
+	 * Note that on gen11+, the clock frequency may be reconfigured.
+	 * We do not, and we assume nobody else does.
+	 *
+	 * First figure out the reference frequency. There are 2 ways
+	 * we can compute the frequency, either through the
+	 * TIMESTAMP_OVERRIDE register or through RPM_CONFIG. CTC_MODE
+	 * tells us which one we should use.
+	 */
+	if ((ctc_reg & CTC_SOURCE_PARAMETER_MASK) == CTC_SOURCE_DIVIDE_LOGIC) {
+		freq = read_reference_ts_freq(uncore);
+	} else {
+		u32 c0 = intel_uncore_read(uncore, RPM_CONFIG0);
+
+		freq = gen11_get_crystal_clock_freq(uncore, c0);
 
 		/*
-		 * First figure out the reference frequency. There are 2 ways
-		 * we can compute the frequency, either through the
-		 * TIMESTAMP_OVERRIDE register or through RPM_CONFIG. CTC_MODE
-		 * tells us which one we should use.
-		 */
-		if ((ctc_reg & CTC_SOURCE_PARAMETER_MASK) == CTC_SOURCE_DIVIDE_LOGIC) {
-			freq = read_reference_ts_freq(uncore);
-		} else {
-			u32 c0 = intel_uncore_read(uncore, RPM_CONFIG0);
-
-			if (GRAPHICS_VER(uncore->i915) >= 11)
-				freq = gen11_get_crystal_clock_freq(uncore, c0);
-			else
-				freq = gen9_get_crystal_clock_freq(uncore, c0);
-
-			/*
-			 * Now figure out how the command stream's timestamp
-			 * register increments from this frequency (it might
-			 * increment only every few clock cycle).
-			 */
-			freq >>= 3 - ((c0 & GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK) >>
-				      GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT);
-		}
-
-		return freq;
-	} else if (GRAPHICS_VER(uncore->i915) >= 9) {
-		u32 ctc_reg = intel_uncore_read(uncore, CTC_MODE);
-		u32 freq = 0;
-
-		if ((ctc_reg & CTC_SOURCE_PARAMETER_MASK) == CTC_SOURCE_DIVIDE_LOGIC) {
-			freq = read_reference_ts_freq(uncore);
-		} else {
-			freq = IS_GEN9_LP(uncore->i915) ? f19_2_mhz : f24_mhz;
-
-			/*
-			 * Now figure out how the command stream's timestamp
-			 * register increments from this frequency (it might
-			 * increment only every few clock cycle).
-			 */
-			freq >>= 3 - ((ctc_reg & CTC_SHIFT_PARAMETER_MASK) >>
-				      CTC_SHIFT_PARAMETER_SHIFT);
-		}
-
-		return freq;
-	} else if (GRAPHICS_VER(uncore->i915) >= 5) {
-		/*
-		 * PRMs say:
-		 *
-		 *     "The PCU TSC counts 10ns increments; this timestamp
-		 *      reflects bits 38:3 of the TSC (i.e. 80ns granularity,
-		 *      rolling over every 1.5 hours).
+		 * Now figure out how the command stream's timestamp
+		 * register increments from this frequency (it might
+		 * increment only every few clock cycle).
 		 */
-		return f12_5_mhz;
+		freq >>= 3 - ((c0 & GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK) >>
+			      GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT);
+	}
+
+	return freq;
+}
+
+static u32 gen9_read_clock_frequency(struct intel_uncore *uncore)
+{
+	u32 ctc_reg = intel_uncore_read(uncore, CTC_MODE);
+	u32 freq = 0;
+
+	if ((ctc_reg & CTC_SOURCE_PARAMETER_MASK) == CTC_SOURCE_DIVIDE_LOGIC) {
+		freq = read_reference_ts_freq(uncore);
 	} else {
+		freq = IS_GEN9_LP(uncore->i915) ? 19200000 : 24000000;
+
 		/*
-		 * PRMs say:
-		 *
-		 *     "The value in this register increments once every 16
-		 *      hclks." (through the “Clocking Configuration”
-		 *      (“CLKCFG”) MCHBAR register)
+		 * Now figure out how the command stream's timestamp
+		 * register increments from this frequency (it might
+		 * increment only every few clock cycle).
 		 */
-		return RUNTIME_INFO(uncore->i915)->rawclk_freq * 1000 / 16;
+		freq >>= 3 - ((ctc_reg & CTC_SHIFT_PARAMETER_MASK) >>
+			      CTC_SHIFT_PARAMETER_SHIFT);
 	}
+
+	return freq;
 }
 
-void intel_gt_init_clock_frequency(struct intel_gt *gt)
+static u32 gen5_read_clock_frequency(struct intel_uncore *uncore)
 {
 	/*
-	 * Note that on gen11+, the clock frequency may be reconfigured.
-	 * We do not, and we assume nobody else does.
+	 * PRMs say:
+	 *
+	 *     "The PCU TSC counts 10ns increments; this timestamp
+	 *      reflects bits 38:3 of the TSC (i.e. 80ns granularity,
+	 *      rolling over every 1.5 hours).
 	 */
-	gt->clock_frequency = read_clock_frequency(gt->uncore);
-	if (gt->clock_frequency)
-		gt->clock_period_ns = intel_gt_clock_interval_to_ns(gt, 1);
+	return 12500000;
+}
+
+static u32 read_clock_frequency(struct intel_uncore *uncore)
+{
+	/*
+	 * PRMs say:
+	 *
+	 *     "The value in this register increments once every 16
+	 *      hclks." (through the “Clocking Configuration”
+	 *      (“CLKCFG”) MCHBAR register)
+	 */
+	return RUNTIME_INFO(uncore->i915)->rawclk_freq * 1000 / 16;
+}
+
+void intel_gt_init_clock_frequency(struct intel_gt *gt)
+{
+	if (GRAPHICS_VER(gt->i915) >= 11)
+		gt->clock_frequency = gen11_read_clock_frequency(gt->uncore);
+	else if (GRAPHICS_VER(gt->i915) >= 9)
+		gt->clock_frequency = gen9_read_clock_frequency(gt->uncore);
+	else if (GRAPHICS_VER(gt->i915) >= 5)
+		gt->clock_frequency = gen5_read_clock_frequency(gt->uncore);
+	else
+		gt->clock_frequency = read_clock_frequency(gt->uncore);
 
 	/* Icelake appears to use another fixed frequency for CTX_TIMESTAMP */
 	if (GRAPHICS_VER(gt->i915) == 11)
 		gt->clock_period_ns = NSEC_PER_SEC / 13750000;
+	else if (gt->clock_frequency)
+		gt->clock_period_ns = intel_gt_clock_interval_to_ns(gt, 1);
 
 	GT_TRACE(gt,
 		 "Using clock frequency: %dkHz, period: %dns, wrap: %lldms\n",

-- 
b4 0.10.0-dev-df873
