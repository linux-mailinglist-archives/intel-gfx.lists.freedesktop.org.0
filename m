Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C3350811C
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 08:25:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A606F10F199;
	Wed, 20 Apr 2022 06:25:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AD8C10F18F
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 06:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650435918; x=1681971918;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=k/zlqEwo9E6VMdjy0JwvHT0DoYW//tdxKrFbh60Gqh8=;
 b=OHT3AeqUbsXlE42Y3Fr7jJOUeBV06x3XHSTj6BokY60d7qC+YoXcCDgX
 UItnBK2uIVRSalfOnmWIhvxKSa+qLw0dkY34tu/i0x6wemEgQLgbiByek
 4wiEJrmSrDB6d32gp3FafKHQuigstHwmrXRndwR2OZeTesWusfhxbpokG
 u8aihr7F+sIS8MWfIoxiy3kESGsVLtQhZp6uCLn4DpkmKFRsU1uO9/0ku
 KhEk7oJUMnfvOyJWTP00Yz9K+b9kFNFVVKPnGvrl3jAfWC1q42hSatR/f
 3Px6ZaCKJLNAg0EHS0h+Dtnh6J2QxatHWy6frV60fze2/uroVP+C5Mjx1 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="289055126"
X-IronPort-AV: E=Sophos;i="5.90,274,1643702400"; d="scan'208";a="289055126"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 23:25:16 -0700
X-IronPort-AV: E=Sophos;i="5.90,274,1643702400"; d="scan'208";a="529618337"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 23:25:14 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Apr 2022 23:25:04 -0700
Message-Id: <ba922b5b0e021f188c21acab9651e06e4bff4428.1650435571.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1650435571.git.ashutosh.dixit@intel.com>
References: <cover.1650435571.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/9] drm/i915/gt: Convert callers to user per-gt
 pcode functions
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

Convert appropriate callers to use per-gt pcode functions. Callers using
pcode functions at "global scope", including *all* display functions are
not converted, they continue to use the legacy pcode interface.

Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Jani Nikula <janijoonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 6 +++---
 drivers/gpu/drm/i915/gt/intel_llc.c           | 9 ++++-----
 drivers/gpu/drm/i915/gt/intel_rc6.c           | 4 ++--
 drivers/gpu/drm/i915/gt/intel_rps.c           | 6 +++---
 drivers/gpu/drm/i915/gt/selftest_llc.c        | 4 ++--
 drivers/gpu/drm/i915/gt/selftest_rps.c        | 4 ++--
 6 files changed, 16 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 0c6b9eb724ae..af36132d6bac 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -138,7 +138,7 @@ static int gen6_drpc(struct seq_file *m)
 	}
 
 	if (GRAPHICS_VER(i915) <= 7)
-		snb_pcode_read(i915, GEN6_PCODE_READ_RC6VIDS, &rc6vids, NULL);
+		intel_gt_pcode_read(gt, GEN6_PCODE_READ_RC6VIDS, &rc6vids, NULL);
 
 	seq_printf(m, "RC1e Enabled: %s\n",
 		   str_yes_no(rcctl1 & GEN6_RC_CTL_RC1e_ENABLE));
@@ -545,8 +545,8 @@ static int llc_show(struct seq_file *m, void *data)
 	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
 	for (gpu_freq = min_gpu_freq; gpu_freq <= max_gpu_freq; gpu_freq++) {
 		ia_freq = gpu_freq;
-		snb_pcode_read(i915, GEN6_PCODE_READ_MIN_FREQ_TABLE,
-			       &ia_freq, NULL);
+		intel_gt_pcode_read(gt, GEN6_PCODE_READ_MIN_FREQ_TABLE,
+				    &ia_freq, NULL);
 		seq_printf(m, "%d\t\t%d\t\t\t\t%d\n",
 			   intel_gpu_freq(rps,
 					  (gpu_freq *
diff --git a/drivers/gpu/drm/i915/gt/intel_llc.c b/drivers/gpu/drm/i915/gt/intel_llc.c
index 40e2e28ee6c7..b827beee8bc8 100644
--- a/drivers/gpu/drm/i915/gt/intel_llc.c
+++ b/drivers/gpu/drm/i915/gt/intel_llc.c
@@ -124,7 +124,6 @@ static void calc_ia_freq(struct intel_llc *llc,
 
 static void gen6_update_ring_freq(struct intel_llc *llc)
 {
-	struct drm_i915_private *i915 = llc_to_gt(llc)->i915;
 	struct ia_constants consts;
 	unsigned int gpu_freq;
 
@@ -142,10 +141,10 @@ static void gen6_update_ring_freq(struct intel_llc *llc)
 		unsigned int ia_freq, ring_freq;
 
 		calc_ia_freq(llc, gpu_freq, &consts, &ia_freq, &ring_freq);
-		snb_pcode_write(i915, GEN6_PCODE_WRITE_MIN_FREQ_TABLE,
-				ia_freq << GEN6_PCODE_FREQ_IA_RATIO_SHIFT |
-				ring_freq << GEN6_PCODE_FREQ_RING_RATIO_SHIFT |
-				gpu_freq);
+		intel_gt_pcode_write(llc_to_gt(llc), GEN6_PCODE_WRITE_MIN_FREQ_TABLE,
+				     ia_freq << GEN6_PCODE_FREQ_IA_RATIO_SHIFT |
+				     ring_freq << GEN6_PCODE_FREQ_RING_RATIO_SHIFT |
+				     gpu_freq);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index b4770690e794..ec4bb1e98bcf 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -272,7 +272,7 @@ static void gen6_rc6_enable(struct intel_rc6 *rc6)
 	    GEN6_RC_CTL_HW_ENABLE;
 
 	rc6vids = 0;
-	ret = snb_pcode_read(i915, GEN6_PCODE_READ_RC6VIDS, &rc6vids, NULL);
+	ret = intel_gt_pcode_read(rc6_to_gt(rc6), GEN6_PCODE_READ_RC6VIDS, &rc6vids, NULL);
 	if (GRAPHICS_VER(i915) == 6 && ret) {
 		drm_dbg(&i915->drm, "Couldn't check for BIOS workaround\n");
 	} else if (GRAPHICS_VER(i915) == 6 &&
@@ -282,7 +282,7 @@ static void gen6_rc6_enable(struct intel_rc6 *rc6)
 			GEN6_DECODE_RC6_VID(rc6vids & 0xff), 450);
 		rc6vids &= 0xffff00;
 		rc6vids |= GEN6_ENCODE_RC6_VID(450);
-		ret = snb_pcode_write(i915, GEN6_PCODE_WRITE_RC6VIDS, rc6vids);
+		ret = intel_gt_pcode_write(rc6_to_gt(rc6), GEN6_PCODE_WRITE_RC6VIDS, rc6vids);
 		if (ret)
 			drm_err(&i915->drm,
 				"Couldn't fix incorrect rc6 voltage\n");
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 3476a11f294c..413cbf984b94 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1142,8 +1142,8 @@ static void gen6_rps_init(struct intel_rps *rps)
 
 		if (IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >= 11)
 			mult = GEN9_FREQ_SCALER;
-		if (snb_pcode_read(i915, HSW_PCODE_DYNAMIC_DUTY_CYCLE_CONTROL,
-				   &ddcc_status, NULL) == 0)
+		if (intel_gt_pcode_read(rps_to_gt(rps), HSW_PCODE_DYNAMIC_DUTY_CYCLE_CONTROL,
+					&ddcc_status, NULL) == 0)
 			rps->efficient_freq =
 				clamp_t(u32,
 					((ddcc_status >> 8) & 0xff) * mult,
@@ -1982,7 +1982,7 @@ void intel_rps_init(struct intel_rps *rps)
 	if (GRAPHICS_VER(i915) == 6 || IS_IVYBRIDGE(i915) || IS_HASWELL(i915)) {
 		u32 params = 0;
 
-		snb_pcode_read(i915, GEN6_READ_OC_PARAMS, &params, NULL);
+		intel_gt_pcode_read(rps_to_gt(rps), GEN6_READ_OC_PARAMS, &params, NULL);
 		if (params & BIT(31)) { /* OC supported */
 			drm_dbg(&i915->drm,
 				"Overclocking supported, max: %dMHz, overclock: %dMHz\n",
diff --git a/drivers/gpu/drm/i915/gt/selftest_llc.c b/drivers/gpu/drm/i915/gt/selftest_llc.c
index 2cd184ab32b1..1b0fea4527b4 100644
--- a/drivers/gpu/drm/i915/gt/selftest_llc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_llc.c
@@ -31,8 +31,8 @@ static int gen6_verify_ring_freq(struct intel_llc *llc)
 		calc_ia_freq(llc, gpu_freq, &consts, &ia_freq, &ring_freq);
 
 		val = gpu_freq;
-		if (snb_pcode_read(i915, GEN6_PCODE_READ_MIN_FREQ_TABLE,
-				   &val, NULL)) {
+		if (intel_gt_pcode_read(llc_to_gt(llc), GEN6_PCODE_READ_MIN_FREQ_TABLE,
+					&val, NULL)) {
 			pr_err("Failed to read freq table[%d], range [%d, %d]\n",
 			       gpu_freq, consts.min_gpu_freq, consts.max_gpu_freq);
 			err = -ENXIO;
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 6a69ac0184ad..eecd8388153a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -521,8 +521,8 @@ static void show_pcu_config(struct intel_rps *rps)
 	for (gpu_freq = min_gpu_freq; gpu_freq <= max_gpu_freq; gpu_freq++) {
 		int ia_freq = gpu_freq;
 
-		snb_pcode_read(i915, GEN6_PCODE_READ_MIN_FREQ_TABLE,
-			       &ia_freq, NULL);
+		intel_gt_pcode_read(rps_to_gt(rps), GEN6_PCODE_READ_MIN_FREQ_TABLE,
+				    &ia_freq, NULL);
 
 		pr_info("%5d  %5d  %5d\n",
 			gpu_freq * 50,
-- 
2.34.1

