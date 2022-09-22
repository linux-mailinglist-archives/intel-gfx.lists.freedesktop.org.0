Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC07E5E65AF
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 16:33:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7A7F10EBD2;
	Thu, 22 Sep 2022 14:33:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F07FE10EBD2
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 14:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663857175; x=1695393175;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m3pm8j8sjDCyD0NKtvlugpaOmIuk/uPCsXoNrCvRSek=;
 b=BbCcSk+iloshsIfT8kU/eDq1+sUq1VuXv5hEKxEjM83mJ971+W3d74ei
 Fh9F8+gTTm9GIK17u7FPXoa2bd/XFPWSX1wOEbYptGZkKJl8LgEW24WM8
 cLG+pBXrteX0eguH+JDUch4OpOGnGoWrqThVXGQrE/fXIZaQiad41GVRq
 835qPrkhFVWAm6EGzLbkYCLiLsC19I31gyty6dhWvVOQJjuJ1YYIwjhFV
 j/Zz8r2KcXLiNDMa+K52mQifrsp30gcEaWro4YSa5qeA2tlfaVSYwCQPA
 UkrUbUFzXWEe84BWWOO8mUeufAOiqp5ANIVMyCHHR9LvS0vaZQJ14GjFF g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="386598655"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="386598655"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 07:32:54 -0700
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="948612683"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 07:32:52 -0700
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Sep 2022 20:02:09 +0530
Message-Id: <20220922143209.535323-2-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220922143209.535323-1-riana.tauro@intel.com>
References: <20220922143209.535323-1-riana.tauro@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/guc/slpc: Add SLPC selftest
 live_slpc_power
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

A fundamental assumption is that at lower frequencies,
not only do we run slower, but we save power compared to
higher frequencies.
live_slpc_power checks if running at low frequency saves power

Signed-off-by: Riana Tauro <riana.tauro@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_slpc.c | 116 ++++++++++++++++++++++--
 1 file changed, 107 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c b/drivers/gpu/drm/i915/gt/selftest_slpc.c
index f8a1d27df272..f22f091d2844 100644
--- a/drivers/gpu/drm/i915/gt/selftest_slpc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_slpc.c
@@ -11,7 +11,8 @@
 enum test_type {
 	VARY_MIN,
 	VARY_MAX,
-	MAX_GRANTED
+	MAX_GRANTED,
+	SLPC_POWER,
 };
 
 static int slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 freq)
@@ -41,6 +42,42 @@ static int slpc_set_max_freq(struct intel_guc_slpc *slpc, u32 freq)
 	return ret;
 }
 
+static int slpc_set_freq(struct intel_gt *gt, u32 freq)
+{
+	int err;
+	struct intel_guc_slpc *slpc = &gt->uc.guc.slpc;
+
+	err = slpc_set_max_freq(slpc, freq);
+	if (err) {
+		pr_err("Unable to update max freq");
+		return err;
+	}
+
+	err = slpc_set_min_freq(slpc, freq);
+	if (err) {
+		pr_err("Unable to update min freq");
+		return err;
+	}
+
+	return intel_rps_read_actual_frequency(&gt->rps);
+}
+
+static u64 measure_slpc_power_at(struct intel_gt *gt, int *freq)
+{
+	u64 x[5];
+	int i;
+
+	*freq = slpc_set_freq(gt, *freq);
+	for (i = 0; i < 5; i++)
+		x[i] = __measure_power(5);
+	*freq = (*freq + intel_rps_read_actual_frequency(&gt->rps)) / 2;
+
+	/* A simple triangle filter for better result stability */
+	sort(x, 5, sizeof(*x), cmp_u64, NULL);
+
+	return div_u64(x[1] + 2 * x[2] + x[3], 4);
+}
+
 static int vary_max_freq(struct intel_guc_slpc *slpc, struct intel_rps *rps,
 			 u32 *max_act_freq)
 {
@@ -113,6 +150,52 @@ static int vary_min_freq(struct intel_guc_slpc *slpc, struct intel_rps *rps,
 	return err;
 }
 
+static int slpc_power(struct intel_gt *gt, struct intel_engine_cs *engine)
+{
+	struct intel_guc_slpc *slpc = &gt->uc.guc.slpc;
+	struct {
+		u64 power;
+		int freq;
+	} min, max;
+	int err = 0;
+
+	/*
+	 * Our fundamental assumption is that running at lower frequency
+	 * actually saves power. Let's see if our RAPL measurement support
+	 * that theory.
+	 */
+	if (!librapl_supported(gt->i915))
+		return 0;
+
+	min.freq = slpc->min_freq;
+	min.power =  measure_slpc_power_at(gt, &min.freq);
+
+	max.freq = slpc->rp0_freq;
+	max.power = measure_slpc_power_at(gt, &max.freq);
+
+	pr_info("%s: min:%llumW @ %uMHz, max:%llumW @ %uMHz\n",
+		engine->name,
+		min.power, min.freq,
+		max.power, max.freq);
+
+	if (10 * min.freq >= 9 * max.freq) {
+		pr_notice("Could not control frequency, ran at [%uMHz, %uMhz]\n",
+			  min.freq, max.freq);
+	}
+
+	if (11 * min.power > 10 * max.power) {
+		pr_err("%s: did not conserve power when setting lower frequency!\n",
+		       engine->name);
+		err = -EINVAL;
+	}
+
+	/* Restore min/max frequencies */
+	slpc_set_max_freq(slpc, slpc->rp0_freq);
+	slpc_set_min_freq(slpc, slpc->min_freq);
+
+	return err;
+}
+
 static int max_granted_freq(struct intel_guc_slpc *slpc, struct intel_rps *rps, u32 *max_act_freq)
 {
 	struct intel_gt *gt = rps_to_gt(rps);
@@ -233,17 +316,23 @@ static int run_test(struct intel_gt *gt, int test_type)
 
 			err = max_granted_freq(slpc, rps, &max_act_freq);
 			break;
+
+		case SLPC_POWER:
+			err = slpc_power(gt, engine);
+			break;
 		}
 
-		pr_info("Max actual frequency for %s was %d\n",
-			engine->name, max_act_freq);
+		if (test_type != SLPC_POWER) {
+			pr_info("Max actual frequency for %s was %d\n",
+				engine->name, max_act_freq);
 
-		/* Actual frequency should rise above min */
-		if (max_act_freq <= slpc_min_freq) {
-			pr_err("Actual freq did not rise above min\n");
-			pr_err("Perf Limit Reasons: 0x%x\n",
-			       intel_uncore_read(gt->uncore, GT0_PERF_LIMIT_REASONS));
-			err = -EINVAL;
+			/* Actual frequency should rise above min */
+			if (max_act_freq <= slpc_min_freq) {
+				pr_err("Actual freq did not rise above min\n");
+				pr_err("Perf Limit Reasons: 0x%x\n",
+				       intel_uncore_read(gt->uncore, GT0_PERF_LIMIT_REASONS));
+				err = -EINVAL;
+			}
 		}
 
 		igt_spinner_end(&spin);
@@ -292,12 +381,21 @@ static int live_slpc_max_granted(void *arg)
 	return run_test(gt, MAX_GRANTED);
 }
 
+static int live_slpc_power(void *arg)
+{
+	struct drm_i915_private *i915 = arg;
+	struct intel_gt *gt = to_gt(i915);
+
+	return run_test(gt, SLPC_POWER);
+}
+
 int intel_slpc_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
 		SUBTEST(live_slpc_vary_max),
 		SUBTEST(live_slpc_vary_min),
 		SUBTEST(live_slpc_max_granted),
+		SUBTEST(live_slpc_power),
 	};
 
 	if (intel_gt_is_wedged(to_gt(i915)))
-- 
2.25.1

