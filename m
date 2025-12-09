Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3113CAEFD4
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 07:03:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3176410E060;
	Tue,  9 Dec 2025 06:03:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EmlUizcE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61FEC10E060
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Dec 2025 06:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765260213; x=1796796213;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZDyaij6WkNJksVBoSAGNBxleVpdkXc0vv2YHMmTXfHc=;
 b=EmlUizcEVkno7GqzwZldFAN0bjbf6C4BnsY4geEKHe3tgxUPVkpsS7Tt
 r7NSZu8qkeisP7Ky25cFulAjFurw1PBI7nWxNAdF61pcfvHzsveHx9tOT
 djGWZNMTTHbQMvSy3Fb8TJ/Kb/Xk4a3OsLRuOjLSHq5VLXnooZ195YJOk
 gByf/fLJYoQ91hxHEWst0J0XrRqW58tPIISJmOc2tXfpbPadiADvLFG5W
 hPoY4GpkSvfVDUPP/bnRHxgbuA0u5SWmGvKCV5rbxfEkLFqelRBJaRzRA
 6oD2rU8w7AmE+vNqNz6WExxvMHHaNE3uQ/sUSf18RNj+hfX4/HQNeLnFT g==;
X-CSE-ConnectionGUID: sJiWBwsLQliyG//rkIjhHQ==
X-CSE-MsgGUID: TDGuQDF7TemI6m+vZ1LNmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="67173700"
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="67173700"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 22:03:32 -0800
X-CSE-ConnectionGUID: e4u058QDSnSY3IBUR+nHBA==
X-CSE-MsgGUID: fIOWoGRvR2KEmeTsVYUzVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="226807793"
Received: from anirban-z690i-a-ultra-plus.iind.intel.com ([10.190.216.83])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 22:03:29 -0800
From: Sk Anirban <sk.anirban@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, badal.nilawar@intel.com, riana.tauro@intel.com,
 karthik.poosa@intel.com, raag.jadav@intel.com, soham.purkait@intel.com,
 mallesh.koujalagi@intel.com, Sk Anirban <sk.anirban@intel.com>
Subject: [PATCH] drm/i915/selftest: Add throttle reason diagnostics to RPS
 selftests
Date: Tue,  9 Dec 2025 11:26:17 +0530
Message-ID: <20251209055616.1095495-2-sk.anirban@intel.com>
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

Signed-off-by: Sk Anirban <sk.anirban@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 73bc91c6ea07..01c671e00e61 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -1138,6 +1138,7 @@ int live_rps_power(void *arg)
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
 	struct igt_spinner spin;
+	u32 throttle;
 	int err = 0;
 
 	/*
@@ -1216,6 +1217,13 @@ int live_rps_power(void *arg)
 		if (11 * min.power > 10 * max.power) {
 			pr_err("%s: did not conserve power when setting lower frequency!\n",
 			       engine->name);
+
+			throttle = intel_uncore_read(gt->uncore,
+						     intel_gt_perf_limit_reasons_reg(gt));
+
+			pr_warn("%s: GPU throttled with reasons 0x%08x\n",
+				engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
+
 			err = -EINVAL;
 			break;
 		}
@@ -1241,6 +1249,7 @@ int live_rps_dynamic(void *arg)
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
 	struct igt_spinner spin;
+	u32 throttle;
 	int err = 0;
 
 	/*
@@ -1299,6 +1308,14 @@ int live_rps_dynamic(void *arg)
 		min.freq = wait_for_freq(rps, rps->min_freq, 2000);
 		min.dt = ktime_sub(ktime_get(), min.dt);
 
+		if (max.freq != rps->max_freq) {
+			throttle = intel_uncore_read(gt->uncore,
+						     intel_gt_perf_limit_reasons_reg(gt));
+
+			pr_warn("%s: GPU throttled with reasons 0x%08x\n",
+				engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
+		}
+
 		pr_info("%s: dynamically reclocked to %u:%uMHz while busy in %lluns, and %u:%uMHz while idle in %lluns\n",
 			engine->name,
 			max.freq, intel_gpu_freq(rps, max.freq),
-- 
2.43.0

