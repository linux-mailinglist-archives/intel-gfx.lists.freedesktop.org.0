Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A71B5E78F2
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 13:01:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD39310E84E;
	Fri, 23 Sep 2022 11:01:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F033110E84D
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 11:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663930858; x=1695466858;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j+9qBDq7q3laPciKymGi+NQ1XoZ67WlnZ1i6iqeAVqw=;
 b=nvo63NduPzZGr8XRrSAuNA67OXH3Vbt2hGSCi7V//+m9rx9rLwLqUUM8
 rvK/Z8ZGHL0DVtGozsvBqvmOkugpCx13oO33s6EtUUFyj/o4eL/bbk2to
 EC/SN5piiZuULOy8Hu9deTbv7+vPHa9JwbXyG5pkvXKyEtj0JZlP+86h2
 r0oTKgUzzOEM6bB9DRsmHqfJZhrOLmmiUZEbStVaXdWeCGChvi8CMBT08
 YheoCU17bhNw4MquC9qaadc29B2tF7+88ZIifKWoGzDW+aizcN0fwIOOD
 +FFBsAPLtRMLSjUPafJZqUiAOLsCQHsLZhmJWJwBXGMPIZZ5CpjqFocNk A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="386858226"
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="386858226"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 04:00:58 -0700
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="653363776"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 04:00:56 -0700
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Sep 2022 16:30:43 +0530
Message-Id: <20220923110043.789178-4-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220923110043.789178-1-riana.tauro@intel.com>
References: <20220923110043.789178-1-riana.tauro@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/guc/slpc: Add SLPC selftest
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

v2: re-use code to measure power
    fixed cosmetic review comments (Vinay)

Signed-off-by: Riana Tauro <riana.tauro@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_slpc.c | 127 ++++++++++++++++++++++--
 1 file changed, 118 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c b/drivers/gpu/drm/i915/gt/selftest_slpc.c
index 928f74718881..4c6e9257e593 100644
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
@@ -41,6 +42,39 @@ static int slpc_set_max_freq(struct intel_guc_slpc *slpc, u32 freq)
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
+	return err;
+}
+
+static u64 measure_power_at_freq(struct intel_gt *gt, int *freq, u64 *power)
+{
+	int err = 0;
+
+	err = slpc_set_freq(gt, *freq);
+	if (err)
+		return err;
+	*freq = intel_rps_read_actual_frequency(&gt->rps);
+	*power = measure_power(&gt->rps, freq);
+
+	return err;
+}
+
 static int vary_max_freq(struct intel_guc_slpc *slpc, struct intel_rps *rps,
 			 u32 *max_act_freq)
 {
@@ -113,6 +147,58 @@ static int vary_min_freq(struct intel_guc_slpc *slpc, struct intel_rps *rps,
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
+	 * actually saves power. Let's see if our RAPL measurement supports
+	 * that theory.
+	 */
+	if (!librapl_supported(gt->i915))
+		return 0;
+
+	min.freq = slpc->min_freq;
+	err = measure_power_at_freq(gt, &min.freq, &min.power);
+
+	if (err)
+		return err;
+
+	max.freq = slpc->rp0_freq;
+	err = measure_power_at_freq(gt, &max.freq, &max.power);
+
+	if (err)
+		return err;
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
@@ -233,17 +319,23 @@ static int run_test(struct intel_gt *gt, int test_type)
 
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
@@ -316,12 +408,29 @@ static int live_slpc_max_granted(void *arg)
 	return ret;
 }
 
+static int live_slpc_power(void *arg)
+{
+	struct drm_i915_private *i915 = arg;
+	struct intel_gt *gt;
+	unsigned int i;
+	int ret;
+
+	for_each_gt(gt, i915, i) {
+		ret = run_test(gt, SLPC_POWER);
+		if (ret)
+			return ret;
+	}
+
+	return ret;
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
 
 	struct intel_gt *gt;
-- 
2.25.1

