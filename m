Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8DA9C6C2E
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2024 10:57:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66A2010E6C0;
	Wed, 13 Nov 2024 09:57:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XgD7l8Qi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E2A510E6C0
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2024 09:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731491875; x=1763027875;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Vnm1Oo00kHjpJt8nrNcCpYXaN5WFHVnIV69IA8+N7wM=;
 b=XgD7l8Qiz9AG02UHiRrNZoDclqObJGY9OXmke3FOLNwusm9g/m9vUcJb
 KCGWQ/x0kmoQ3xJRjVGk5Zz5Q1VApPE6KhbJZ5vrTAzedlwn+6/imyE2F
 NQ59MG8y1dlPzLJab/l2Rnxi3WtUUIxIKBHr9P2zJMFPcHb3PNAgxsayj
 40mWd1e0uwD8VSH6l4BIuKlMUs59P+ICG81AJn4oc/eW/M8PiW0LAAUXl
 F42HeltCVzh9HicyOjl1qWzV5szR5Hzq3AWjb9+lfunoI5YswoFwdpOgf
 gdB88JVkavUc8csMmWWAzaBCmrQA752lIFZrHuoqit+TVMf4+BjJ4M8p9 w==;
X-CSE-ConnectionGUID: muEn31d1TjG2gci0mSU+2A==
X-CSE-MsgGUID: e0qipBSJQ3CFhUheTYsdfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11254"; a="31606264"
X-IronPort-AV: E=Sophos;i="6.12,150,1728975600"; d="scan'208";a="31606264"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 01:57:55 -0800
X-CSE-ConnectionGUID: h+jbdNxnQDeRaktw7SXsPQ==
X-CSE-MsgGUID: 2G54HHUeSkGYhzC5uSLDaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,150,1728975600"; d="scan'208";a="87392637"
Received: from anirban-z690i-a-ultra-plus.iind.intel.com ([10.145.169.150])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 01:57:52 -0800
From: Sk Anirban <sk.anirban@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, badal.nilawar@intel.com, karthik.poosa@intel.com,
 sai.teja.pottumuttu@intel.com, Sk Anirban <sk.anirban@intel.com>
Subject: [PATCH v6] drm/i915/selftests: Implement frequency logging for energy
 reading validation
Date: Wed, 13 Nov 2024 15:20:04 +0530
Message-Id: <20241113095004.2441052-1-sk.anirban@intel.com>
X-Mailer: git-send-email 2.34.1
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

Introduce RC6 & RC0 frequency logging mechanism to ensure accurate
energy readings aimed at addressing GPU energy leaks and power
measurement failures.
This enhancement will help ensure the accuracy of energy readings.

v2:
  - Improved commit message.
v3:
  - Used pr_err log to display frequency (Anshuman)
  - Sorted headers alphabetically (Sai Teja)
v4:
  - Improved commit message.
  - Fix pr_err log (Sai Teja)
v5:
  - Add error & debug logging for RC0 power and frequency checks (Anshuman)
v6:
  - Modify debug logging for RC0 power and frequency checks (Sai Teja)

Signed-off-by: Sk Anirban <sk.anirban@intel.com>
Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rc6.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 1aa1446c8fb0..a8776f88d6a1 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -8,6 +8,7 @@
 #include "intel_gpu_commands.h"
 #include "intel_gt_requests.h"
 #include "intel_ring.h"
+#include "intel_rps.h"
 #include "selftest_rc6.h"
 
 #include "selftests/i915_random.h"
@@ -38,6 +39,9 @@ int live_rc6_manual(void *arg)
 	ktime_t dt;
 	u64 res[2];
 	int err = 0;
+	u32 rc0_freq = 0;
+	u32 rc6_freq = 0;
+	struct intel_rps *rps = &gt->rps;
 
 	/*
 	 * Our claim is that we can "encourage" the GPU to enter rc6 at will.
@@ -66,6 +70,7 @@ int live_rc6_manual(void *arg)
 	rc0_power = librapl_energy_uJ() - rc0_power;
 	dt = ktime_sub(ktime_get(), dt);
 	res[1] = rc6_residency(rc6);
+	rc0_freq = intel_rps_read_actual_frequency(rps);
 	if ((res[1] - res[0]) >> 10) {
 		pr_err("RC6 residency increased by %lldus while disabled for 1000ms!\n",
 		       (res[1] - res[0]) >> 10);
@@ -77,7 +82,11 @@ int live_rc6_manual(void *arg)
 		rc0_power = div64_u64(NSEC_PER_SEC * rc0_power,
 				      ktime_to_ns(dt));
 		if (!rc0_power) {
-			pr_err("No power measured while in RC0\n");
+			if (rc0_freq)
+				pr_err("No power measured while in RC0! GPU Freq: %u in RC0\n",
+				       rc0_freq);
+			else
+				pr_err("No power and freq measured while in RC0\n");
 			err = -EINVAL;
 			goto out_unlock;
 		}
@@ -91,6 +100,7 @@ int live_rc6_manual(void *arg)
 	dt = ktime_get();
 	rc6_power = librapl_energy_uJ();
 	msleep(100);
+	rc6_freq = intel_rps_read_actual_frequency(rps);
 	rc6_power = librapl_energy_uJ() - rc6_power;
 	dt = ktime_sub(ktime_get(), dt);
 	res[1] = rc6_residency(rc6);
@@ -108,7 +118,8 @@ int live_rc6_manual(void *arg)
 		pr_info("GPU consumed %llduW in RC0 and %llduW in RC6\n",
 			rc0_power, rc6_power);
 		if (2 * rc6_power > rc0_power) {
-			pr_err("GPU leaked energy while in RC6!\n");
+			pr_err("GPU leaked energy while in RC6! GPU Freq: %u in RC6 and %u in RC0\n",
+			       rc6_freq, rc0_freq);
 			err = -EINVAL;
 			goto out_unlock;
 		}
-- 
2.34.1

