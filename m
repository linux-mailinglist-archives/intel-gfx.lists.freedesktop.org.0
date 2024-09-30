Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 492FE989FF0
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 12:57:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2DC5892F8;
	Mon, 30 Sep 2024 10:57:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a0smBli4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63AAF892F8
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2024 10:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727693846; x=1759229846;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Be5EMjoHVZQwtUJe+/pxvv8ZPEa09XxYRTKXQ4STnbw=;
 b=a0smBli4I3mffAHPh8cwTiEe+2WV78ERqyfuaiQ5Pu0kEjUWxG+O7EwB
 4a8D5+GCDC7SuI7FIydtr0piJ+4ubVplKz1V5Wveman4FgW3i767m3Aan
 GslIlAVLPs4d33AltsPx+Ots1fLQnwqjvg4809OA/cfwi3wOLXmSg0hJK
 iPZUVj9zd78GOOsW6Ol1AlAdRRksJp/j+HWntLlzCMPh8SNpymWdPZvZS
 APYLyfhCg5iimhQEv0lysX0WPSXr1mbe8mvSRv8WorcEFPXFjTutnYP7X
 wRYuBnzlSx5z6nYo88phJs7TYNzArFPrMN1zVGSstcU8sgI2j710JqAOr A==;
X-CSE-ConnectionGUID: tAIVV+ohRfGCZbhFG1ABeQ==
X-CSE-MsgGUID: wdyH+5mfQU6mK+jUhzgSBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="26284061"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="26284061"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 03:57:26 -0700
X-CSE-ConnectionGUID: hfHW8PTpQb+TU51e4SLxLw==
X-CSE-MsgGUID: y8YP37ohSeO3+c8js5EctA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="74057105"
Received: from anirban-z690i-a-ultra-plus.iind.intel.com ([10.145.169.150])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 03:57:24 -0700
From: sk.anirban@intel.com
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, Sk Anirban <sk.anirban@intel.com>,
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Subject: [PATCH v5] drm/i915/selftests: Implement frequency logging for energy
 reading validation
Date: Mon, 30 Sep 2024 16:22:45 +0530
Message-Id: <20240930105245.1557736-1-sk.anirban@intel.com>
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

From: Sk Anirban <sk.anirban@intel.com>

Introduce RC6 & RC0 frequency logging mechanism aimed at ensuring
the accuracy of energy readings in case of GPU energy leak.

v2:
  - Improved commit message.
v3:
  - Used pr_err log to display frequency. (Anshuman)
  - Sorted headers alphabetically. (Sai Teja)
v4:
  - Improved commit message.
  - Fix pr_err log. (Sai Teja)

Signed-off-by: Sk Anirban <sk.anirban@intel.com>
Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

---
 drivers/gpu/drm/i915/gt/selftest_rc6.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 1aa1446c8fb0..cf7d38d10dc2 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -8,6 +8,7 @@
 #include "intel_gpu_commands.h"
 #include "intel_gt_requests.h"
 #include "intel_ring.h"
+#include "intel_rps.h"
 #include "selftest_rc6.h"
 
 #include "selftests/i915_random.h"
@@ -38,6 +39,8 @@ int live_rc6_manual(void *arg)
 	ktime_t dt;
 	u64 res[2];
 	int err = 0;
+	u32 rc0_freq, rc6_freq;
+	struct intel_rps *rps = &gt->rps;
 
 	/*
 	 * Our claim is that we can "encourage" the GPU to enter rc6 at will.
@@ -66,6 +69,7 @@ int live_rc6_manual(void *arg)
 	rc0_power = librapl_energy_uJ() - rc0_power;
 	dt = ktime_sub(ktime_get(), dt);
 	res[1] = rc6_residency(rc6);
+	rc0_freq = intel_rps_read_actual_frequency(rps);
 	if ((res[1] - res[0]) >> 10) {
 		pr_err("RC6 residency increased by %lldus while disabled for 1000ms!\n",
 		       (res[1] - res[0]) >> 10);
@@ -91,6 +95,7 @@ int live_rc6_manual(void *arg)
 	dt = ktime_get();
 	rc6_power = librapl_energy_uJ();
 	msleep(100);
+	rc6_freq = intel_rps_read_actual_frequency(rps);
 	rc6_power = librapl_energy_uJ() - rc6_power;
 	dt = ktime_sub(ktime_get(), dt);
 	res[1] = rc6_residency(rc6);
@@ -108,7 +113,8 @@ int live_rc6_manual(void *arg)
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

