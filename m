Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 862E1998E76
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 19:40:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29A7C10E99F;
	Thu, 10 Oct 2024 17:40:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DNWXtlKs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CED2210E99F
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2024 17:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728582004; x=1760118004;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LFG9SEdUjl3zBVqp0RPWf6qhFNuk+3j0MdisgQo8p1w=;
 b=DNWXtlKsRCzg7VO6oFBeOEV+1GUSx0idOHYT1VIUuP39eenik1wwTLga
 04Uu2+wjaRO2g/e28pg60oRdmhpdlSv2/yuZixqhn+XfGaL4awi3PJEVc
 c+EGKvO/qV0nXZEgRFRkkkvRdcdrSGXei+2OA9RmWALGkzkhD0hUWL0IW
 JRbK2vObpnK2mO4u+7gwjI+jZGEEfhRSZ9CmONf6jIpzRkajiZSkT0UzZ
 cn3b/d5jPUek63wDCR+RtuVVoVTW8XKCbmEz46YozFHecBTTohL5g9CTC
 dbW/7hAZzdb9C9h1yFdpvoncgUYPW+GiPUPBnHfTN4uxL5jPeaQ+NfSpJ w==;
X-CSE-ConnectionGUID: GMW7kXnnSmKPqrVDYdVhJw==
X-CSE-MsgGUID: 4mTehbYzTVycLST1SYPsuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="28049190"
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="28049190"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 10:40:04 -0700
X-CSE-ConnectionGUID: Bc8KBPSFRNGMNSTX0kI+4A==
X-CSE-MsgGUID: ZxBie1PpST6j5ZqxsoeITA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="81465662"
Received: from anirban-z690i-a-ultra-plus.iind.intel.com ([10.145.169.150])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 10:40:01 -0700
From: Sk Anirban <sk.anirban@intel.com>
To: intel-gfx@lists.freedesktop.org,
	anshuman.gupta@intel.com
Cc: sk.anirban@intel.com, badal.nilawar@intel.com,
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Subject: [PATCH v5] drm/i915/selftests: Implement frequency logging for energy
 reading validation
Date: Thu, 10 Oct 2024 23:04:39 +0530
Message-Id: <20241010173439.2006496-1-sk.anirban@intel.com>
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
  - Improved commit message
  - Fix pr_err log (Sai Teja)
v5:
  -Add error & debug logging for RC0 power and frequency checks (Anshuman)

Signed-off-by: Sk Anirban <sk.anirban@intel.com>
Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rc6.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 1aa1446c8fb0..0cf86fed39ca 100644
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
@@ -77,9 +82,14 @@ int live_rc6_manual(void *arg)
 		rc0_power = div64_u64(NSEC_PER_SEC * rc0_power,
 				      ktime_to_ns(dt));
 		if (!rc0_power) {
-			pr_err("No power measured while in RC0\n");
-			err = -EINVAL;
-			goto out_unlock;
+			if (rc0_freq)
+				pr_debug("No power measured while in RC0! GPU Freq: %u in RC0\n",
+			rc0_freq);
+			else {
+				pr_err("No power and freq measured while in RC0\n");
+				err = -EINVAL;
+				goto out_unlock;
+			}
 		}
 	}
 
@@ -91,6 +101,7 @@ int live_rc6_manual(void *arg)
 	dt = ktime_get();
 	rc6_power = librapl_energy_uJ();
 	msleep(100);
+	rc6_freq = intel_rps_read_actual_frequency(rps);
 	rc6_power = librapl_energy_uJ() - rc6_power;
 	dt = ktime_sub(ktime_get(), dt);
 	res[1] = rc6_residency(rc6);
@@ -108,7 +119,8 @@ int live_rc6_manual(void *arg)
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

