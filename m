Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DF8988AB5
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 21:19:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A74E10E283;
	Fri, 27 Sep 2024 19:19:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HVMbUVis";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F98810ED0A
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2024 19:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727464743; x=1759000743;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=awV15GsJgC0V8teVH6dFokQyMAezYj95b3hUsEQcYgQ=;
 b=HVMbUVis43RYNK6mHDW/zkOxSG/uwQaqIStXtG71C9pcglq1Mqz1+Cgx
 HFAUauL4Ho4zGTJPsoq8AK22E1JF9hUkb3KPx1F7Ib7FjYcfPYM/b2CEE
 q+zDDnTrY1p55tqNOripLbD8ldvTgyWJEa4Pv06nf7oygrFyJrWOS09A0
 xcsACCpfaEecHVedlAIXSGgRYQdbfobYRQ6FjvUmGcH2pVHd4TaVmPVLn
 K22uLvuz35CAadpHj7U3T3f+4E9Y2wLErp0tEf8eeXCjyWOwqSoqx+ReX
 Km0YpsjZJPRNFDA4eztwCkB1kUADFZQTH6RhsEQR+iZvdS+Traorf9ehk w==;
X-CSE-ConnectionGUID: BF44D0avQsObgBw7b6a4bg==
X-CSE-MsgGUID: 6gZW8T4TTwiN7W9gL1UapQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11208"; a="26496141"
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="26496141"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 12:19:03 -0700
X-CSE-ConnectionGUID: emIu4v//RXG+Rz8/UDO3mQ==
X-CSE-MsgGUID: 9eBzSGAVSR6bOuN8MX4v0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="77566691"
Received: from anirban-z690i-a-ultra-plus.iind.intel.com ([10.145.169.150])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 12:19:01 -0700
From: sk.anirban@intel.com
To: intel-gfx@lists.freedesktop.org
Cc: Sk Anirban <sk.anirban@intel.com>,
 Anshuman Gupta <anshuman.gupta@intel.com>,
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Subject: [PATCH v4] drm/i915/selftests: Implement frequency logging for energy
 reading validation
Date: Sat, 28 Sep 2024 00:44:28 +0530
Message-Id: <20240927191428.1534933-1-sk.anirban@intel.com>
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
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
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

