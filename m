Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB736CD8C79
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 11:24:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66D3710E225;
	Tue, 23 Dec 2025 10:24:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mBT739CO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDB9E10E225
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Dec 2025 10:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766485463; x=1798021463;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6OiawV4tlXOVBCSgOXxDNTGAF2Co7z9G9DfesBlyfBs=;
 b=mBT739COPxEhCJQVZvwWYtbZ6FGSjUVh5uU9eiC5NypqxkOyiGzDzLM+
 emufeuddUyASsCbWM54Mpo8hlXMEMsqsA7lUNTPLtd07wpX05w78xR6+E
 9LsdH6VLm8SGtdNc4yfUxESCsO/fJuli2YQbw9sr8CrfR6IgTht+2UeMg
 bmUwDDu2xAuOHXdIdr6ltGjaDwilGAzFYWnBkZAVeSFJqUnx5R/be5f3D
 9tRmeQUQkCjinJk/eUCTnEPXHxgM8GE4sT3ZrT3ddlqdgK1GvLAOeS2LK
 hC/2KQL1ybZqi/qO9axwUr9Ks5uydXjtXdBoRg/aY1ohag7CgjdM7V7aQ w==;
X-CSE-ConnectionGUID: DOo1jeTlTESbA2LI1EgAJg==
X-CSE-MsgGUID: IFE3hG9YQ1eRoA9uBiLCXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="55901719"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="55901719"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 02:24:23 -0800
X-CSE-ConnectionGUID: M7Oj70uvTb+yyizrpjTETg==
X-CSE-MsgGUID: g8sSFTk0S2y6jGN4BY+xZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="204244655"
Received: from anirban-z690i-a-ultra-plus.iind.intel.com ([10.190.216.83])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 02:24:21 -0800
From: Sk Anirban <sk.anirban@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, badal.nilawar@intel.com, riana.tauro@intel.com,
 karthik.poosa@intel.com, raag.jadav@intel.com, soham.purkait@intel.com,
 mallesh.koujalagi@intel.com, krzysztof.karas@intel.com,
 Sk Anirban <sk.anirban@intel.com>
Subject: [PATCH v4] drm/i915/selftest: Add throttle reason diagnostics to RPS
 selftests
Date: Tue, 23 Dec 2025 15:46:06 +0530
Message-ID: <20251223101605.3304379-2-sk.anirban@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
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

Report GPU throttle reasons when RPS tests fail to reach expected
frequencies or power levels.

v2: Read the throttle value before the spinner ends (Raag)
    Add a condition before printing throttle value (Krzysztof)
v3: Extend throttle reasons debug support (Raag)
v4: Cosmetic changes (Raag)

Signed-off-by: Sk Anirban <sk.anirban@intel.com>
Reviewed-by: Raag Jadav <raag.jadav@intel.com>
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 34 ++++++++++++++++++++++----
 1 file changed, 29 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 73bc91c6ea07..be77fba2ec49 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -378,6 +378,7 @@ int live_rps_control(void *arg)
 	enum intel_engine_id id;
 	struct igt_spinner spin;
 	intel_wakeref_t wakeref;
+	u32 throttle;
 	int err = 0;
 
 	/*
@@ -463,6 +464,9 @@ int live_rps_control(void *arg)
 		max = rps_set_check(rps, limit);
 		max_dt = ktime_sub(ktime_get(), max_dt);
 
+		throttle = intel_uncore_read(gt->uncore, intel_gt_perf_limit_reasons_reg(gt));
+		throttle &= GT0_PERF_LIMIT_REASONS_MASK;
+
 		min_dt = ktime_get();
 		min = rps_set_check(rps, rps->min_freq);
 		min_dt = ktime_sub(ktime_get(), min_dt);
@@ -478,11 +482,9 @@ int live_rps_control(void *arg)
 			min, max, ktime_to_ns(min_dt), ktime_to_ns(max_dt));
 
 		if (limit != rps->max_freq) {
-			u32 throttle = intel_uncore_read(gt->uncore,
-							 intel_gt_perf_limit_reasons_reg(gt));
-
-			pr_warn("%s: GPU throttled with reasons 0x%08x\n",
-				engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
+			if (throttle)
+				pr_warn("%s: GPU throttled with reasons 0x%08x\n",
+					engine->name, throttle);
 			show_pstate_limits(rps);
 		}
 
@@ -1138,6 +1140,7 @@ int live_rps_power(void *arg)
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
 	struct igt_spinner spin;
+	u32 throttle;
 	int err = 0;
 
 	/*
@@ -1195,6 +1198,9 @@ int live_rps_power(void *arg)
 		max.freq = rps->max_freq;
 		max.power = measure_power_at(rps, &max.freq);
 
+		throttle = intel_uncore_read(gt->uncore, intel_gt_perf_limit_reasons_reg(gt));
+		throttle &= GT0_PERF_LIMIT_REASONS_MASK;
+
 		min.freq = rps->min_freq;
 		min.power = measure_power_at(rps, &min.freq);
 
@@ -1210,12 +1216,21 @@ int live_rps_power(void *arg)
 			pr_notice("Could not control frequency, ran at [%d:%uMHz, %d:%uMhz]\n",
 				  min.freq, intel_gpu_freq(rps, min.freq),
 				  max.freq, intel_gpu_freq(rps, max.freq));
+
+			if (throttle)
+				pr_warn("%s: GPU throttled with reasons 0x%08x\n",
+					engine->name, throttle);
 			continue;
 		}
 
 		if (11 * min.power > 10 * max.power) {
 			pr_err("%s: did not conserve power when setting lower frequency!\n",
 			       engine->name);
+
+			if (throttle)
+				pr_warn("%s: GPU throttled with reasons 0x%08x\n",
+					engine->name, throttle);
+
 			err = -EINVAL;
 			break;
 		}
@@ -1241,6 +1256,7 @@ int live_rps_dynamic(void *arg)
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
 	struct igt_spinner spin;
+	u32 throttle;
 	int err = 0;
 
 	/*
@@ -1293,6 +1309,9 @@ int live_rps_dynamic(void *arg)
 		max.freq = wait_for_freq(rps, rps->max_freq, 500);
 		max.dt = ktime_sub(ktime_get(), max.dt);
 
+		throttle = intel_uncore_read(gt->uncore, intel_gt_perf_limit_reasons_reg(gt));
+		throttle &= GT0_PERF_LIMIT_REASONS_MASK;
+
 		igt_spinner_end(&spin);
 
 		min.dt = ktime_get();
@@ -1308,6 +1327,11 @@ int live_rps_dynamic(void *arg)
 		if (min.freq >= max.freq) {
 			pr_err("%s: dynamic reclocking of spinner failed\n!",
 			       engine->name);
+
+			if (throttle)
+				pr_warn("%s: GPU throttled with reasons 0x%08x\n",
+					engine->name, throttle);
+
 			err = -EINVAL;
 		}
 
-- 
2.43.0

