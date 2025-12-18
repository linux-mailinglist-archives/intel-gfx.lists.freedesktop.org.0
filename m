Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F7CCCA59E
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 06:40:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EEF110E5DA;
	Thu, 18 Dec 2025 05:40:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JpsEkG0D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0DCB10E5DA
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Dec 2025 05:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766036415; x=1797572415;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=INEBjVdmRLV3uJtAWDj3yQyuhLH6AWWuHpiVEx/Xclo=;
 b=JpsEkG0DdcnlwOjNXubXog/wwRCsjALloqGGNjGtRUn+HtgowY2AVeyz
 24YBcMWjE0ilDqCLC/I6txejOuyAkSRfVtsFxtCc5NQN1i6p3xEAGFQTa
 FShd5iqFJeobDUh5f8zfmHcSX2zbrw1hbxrnpc8ZGejclNoroEZfVfPxf
 VL8lXi9EPJH+rLgqWTbC4UiD5eI6hU02EBq7uB0OGmZNAZC/FgW1hG2Fy
 IPUuKcrnRGFdiMlXQuzjFlVgSUc7s62ViMAb2hebH8e8oRsm7eAMJmJ+i
 UGvF1LrDdJWyRuz1KJGaFKjx4N1I4wjdNq3pKfF/D9BV/RUughCHLQi6k Q==;
X-CSE-ConnectionGUID: Z62vPPDcTEWf9RhkVlyZAw==
X-CSE-MsgGUID: YVEwkHb9R0yVqZ2yHa9G4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="90643321"
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="90643321"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 21:40:14 -0800
X-CSE-ConnectionGUID: xlZdA6B1SCqGRSTf0eB+zQ==
X-CSE-MsgGUID: SH+hY9+GSJq9MEFf4dD/ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="203561828"
Received: from anirban-z690i-a-ultra-plus.iind.intel.com ([10.190.216.83])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 21:40:11 -0800
From: Sk Anirban <sk.anirban@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: badal.nilawar@intel.com, riana.tauro@intel.com, karthik.poosa@intel.com,
 raag.jadav@intel.com, soham.purkait@intel.com, mallesh.koujalagi@intel.com,
 krzysztof.karas@intel.com, Sk Anirban <sk.anirban@intel.com>
Subject: [PATCH v3] drm/i915/selftest: Add throttle reason diagnostics to RPS
 selftests
Date: Thu, 18 Dec 2025 11:02:21 +0530
Message-ID: <20251218053220.1599233-2-sk.anirban@intel.com>
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

Signed-off-by: Sk Anirban <sk.anirban@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 37 ++++++++++++++++++++++----
 1 file changed, 32 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 73bc91c6ea07..b42d9b39add6 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -378,6 +378,7 @@ int live_rps_control(void *arg)
 	enum intel_engine_id id;
 	struct igt_spinner spin;
 	intel_wakeref_t wakeref;
+	u32 throttle;
 	int err = 0;
 
 	/*
@@ -463,6 +464,10 @@ int live_rps_control(void *arg)
 		max = rps_set_check(rps, limit);
 		max_dt = ktime_sub(ktime_get(), max_dt);
 
+		throttle = intel_uncore_read(gt->uncore,
+					     intel_gt_perf_limit_reasons_reg(gt));
+		throttle &= GT0_PERF_LIMIT_REASONS_MASK;
+
 		min_dt = ktime_get();
 		min = rps_set_check(rps, rps->min_freq);
 		min_dt = ktime_sub(ktime_get(), min_dt);
@@ -478,11 +483,9 @@ int live_rps_control(void *arg)
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
 
@@ -1138,6 +1141,7 @@ int live_rps_power(void *arg)
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
 	struct igt_spinner spin;
+	u32 throttle;
 	int err = 0;
 
 	/*
@@ -1195,6 +1199,10 @@ int live_rps_power(void *arg)
 		max.freq = rps->max_freq;
 		max.power = measure_power_at(rps, &max.freq);
 
+		throttle = intel_uncore_read(gt->uncore,
+					     intel_gt_perf_limit_reasons_reg(gt));
+		throttle &= GT0_PERF_LIMIT_REASONS_MASK;
+
 		min.freq = rps->min_freq;
 		min.power = measure_power_at(rps, &min.freq);
 
@@ -1210,12 +1218,21 @@ int live_rps_power(void *arg)
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
@@ -1241,6 +1258,7 @@ int live_rps_dynamic(void *arg)
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
 	struct igt_spinner spin;
+	u32 throttle;
 	int err = 0;
 
 	/*
@@ -1293,6 +1311,10 @@ int live_rps_dynamic(void *arg)
 		max.freq = wait_for_freq(rps, rps->max_freq, 500);
 		max.dt = ktime_sub(ktime_get(), max.dt);
 
+		throttle = intel_uncore_read(gt->uncore,
+					     intel_gt_perf_limit_reasons_reg(gt));
+		throttle &= GT0_PERF_LIMIT_REASONS_MASK;
+
 		igt_spinner_end(&spin);
 
 		min.dt = ktime_get();
@@ -1308,6 +1330,11 @@ int live_rps_dynamic(void *arg)
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

