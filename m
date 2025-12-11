Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CDECB6D42
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 18:58:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0C1510E832;
	Thu, 11 Dec 2025 17:58:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cGOHqM7G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A028910E832
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Dec 2025 17:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765475892; x=1797011892;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lEQcsG1aLTjLFJLk3Eiual3pKx9FHDcHfwNG12+4e6E=;
 b=cGOHqM7GUp2AkD7eRgAV4YZKgaNFP/qXX32HOR7q/kMx/K0khwyBLu0e
 TDtHUDGO8apwU+v+omu6vTBn7uYGsb0X2dPeUKOP2xxFQiFmkSqG0lrnO
 E3mN/5ZUilhqEwHHLyoqHYX5XjLds9S+tlfahfwaXUW+ZjNT5s7SFiDqr
 Pc6JrXgtpNd63+Sjn/kqpVK0ByNW85yIzPEm4bJ3pdj+P/SNvnh6mPKP3
 Gn7Z5NN/Z6RfGFxmfNrc3rsf9GqgyE9Vi0xWpMLaSz/XfMKyLxX6RjbMH
 C5jej2oFMBhr06hIeMrADJNGdAXFjxCUf3NtcNdyk+EGE1KQ1eT3jHUjN Q==;
X-CSE-ConnectionGUID: 2ZIH5b5gRcmvgVgqwNFANA==
X-CSE-MsgGUID: JhXdI9j5S5+XPu/7luYV3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="67198150"
X-IronPort-AV: E=Sophos;i="6.21,141,1763452800"; d="scan'208";a="67198150"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 09:58:12 -0800
X-CSE-ConnectionGUID: ZCuTXG8iQ2mm24HKyDlAmQ==
X-CSE-MsgGUID: IFyD/ey2T2Gs1nB3y6XDcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,141,1763452800"; d="scan'208";a="196471053"
Received: from anirban-z690i-a-ultra-plus.iind.intel.com ([10.190.216.83])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 09:58:08 -0800
From: Sk Anirban <sk.anirban@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, badal.nilawar@intel.com, riana.tauro@intel.com,
 karthik.poosa@intel.com, raag.jadav@intel.com, soham.purkait@intel.com,
 mallesh.koujalagi@intel.com, krzysztof.karas@intel.com,
 Sk Anirban <sk.anirban@intel.com>
Subject: [PATCH] drm/i915/selftest: Add throttle reason diagnostics to RPS
 selftests
Date: Thu, 11 Dec 2025 23:20:46 +0530
Message-ID: <20251211175045.1317753-2-sk.anirban@intel.com>
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

Signed-off-by: Sk Anirban <sk.anirban@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 33 ++++++++++++++++++++++----
 1 file changed, 28 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 73bc91c6ea07..b72536ea6747 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -378,6 +378,7 @@ int live_rps_control(void *arg)
 	enum intel_engine_id id;
 	struct igt_spinner spin;
 	intel_wakeref_t wakeref;
+	u32 throttle = 0;
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
+	u32 throttle = 0;
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
 
@@ -1216,6 +1224,11 @@ int live_rps_power(void *arg)
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
@@ -1241,6 +1254,7 @@ int live_rps_dynamic(void *arg)
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
 	struct igt_spinner spin;
+	u32 throttle = 0;
 	int err = 0;
 
 	/*
@@ -1293,6 +1307,10 @@ int live_rps_dynamic(void *arg)
 		max.freq = wait_for_freq(rps, rps->max_freq, 500);
 		max.dt = ktime_sub(ktime_get(), max.dt);
 
+		throttle = intel_uncore_read(gt->uncore,
+					     intel_gt_perf_limit_reasons_reg(gt));
+		throttle &= GT0_PERF_LIMIT_REASONS_MASK;
+
 		igt_spinner_end(&spin);
 
 		min.dt = ktime_get();
@@ -1308,6 +1326,11 @@ int live_rps_dynamic(void *arg)
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

