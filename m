Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C9B9DE9FE
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 16:56:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9059310E4E8;
	Fri, 29 Nov 2024 15:56:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZdoEPZ2H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1E3610E4E8
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2024 15:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732895775; x=1764431775;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tLexpaVs43SnGrE6XGSKzl+FTMTuRvq2cF9HRKfJw9o=;
 b=ZdoEPZ2HiiP0j4K5mlxfzrLNdfKWJrU+/S3//D2oJDXTkWTXOsJG3NOO
 aYd2sjz8x4e2lc0IwpWFSaen7pW5d7kRO0y69R1X1W0K/PLNhK1zH7EPU
 X7+kL9hXKVjLIYb0jXAw2SNeVxmOYTNASVm9zzqz+8m9sOX21B4oYBt3P
 adA2vW71kJRzrs6rti4IR6EdmkedL/3298pBufBYitLIi1gBnYMzFvQxP
 +KHeYE6YQRgYce+4wQJgFHG/zrj/Qk93XJDeKiJVNSTXp2Fns7JvAyUhG
 uZEcQmO+9WoZAh3+51pzrv88sIvBjmNNFqtoM0QLHkPBXYH+C7qjsY7cS Q==;
X-CSE-ConnectionGUID: Llg6DNeoQcCtcW4jxxnJzg==
X-CSE-MsgGUID: WRG8baPaRHOPByourI7rxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11271"; a="44185168"
X-IronPort-AV: E=Sophos;i="6.12,196,1728975600"; d="scan'208";a="44185168"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 07:56:15 -0800
X-CSE-ConnectionGUID: WdC576tDR8OFb/YBVFQgXw==
X-CSE-MsgGUID: SccukQmKR5uD+W8L9G13WQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,196,1728975600"; d="scan'208";a="123383424"
Received: from anirban-z690i-a-ultra-plus.iind.intel.com ([10.145.169.150])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 07:56:13 -0800
From: Sk Anirban <sk.anirban@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, badal.nilawar@intel.com,
 sai.teja.pottumuttu@intel.com, riana.tauro@intel.com,
 karthik.poosa@intel.com, Sk Anirban <sk.anirban@intel.com>
Subject: [PATCH v7] drm/i915/selftests: Implement frequency logging for energy
 reading validation
Date: Fri, 29 Nov 2024 21:17:16 +0530
Message-Id: <20241129154716.2764974-1-sk.anirban@intel.com>
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

Add RC6 & RC0 frequency printing to ensure accurate energy
readings aimed at addressing GPU energy leaks and power
measurement failures.
Also update sleep time for RC6 mode to match RC0.

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
v7:
  - Use pr_debug if RC0 power isn't measured but frequency is (Anshuman)
  - Improved commit message (Badal)
  - Change API to read actual frequency without applying forcewake (Badal)
  - Update sleep time for RC6 mode (Anshuman)

Signed-off-by: Sk Anirban <sk.anirban@intel.com>
Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rc6.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 1aa1446c8fb0..27b6d51ef145 100644
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
+	rc0_freq = intel_rps_read_actual_frequency_fw(rps);
 	if ((res[1] - res[0]) >> 10) {
 		pr_err("RC6 residency increased by %lldus while disabled for 1000ms!\n",
 		       (res[1] - res[0]) >> 10);
@@ -77,7 +82,11 @@ int live_rc6_manual(void *arg)
 		rc0_power = div64_u64(NSEC_PER_SEC * rc0_power,
 				      ktime_to_ns(dt));
 		if (!rc0_power) {
-			pr_err("No power measured while in RC0\n");
+			if (rc0_freq)
+				pr_debug("No power measured while in RC0! GPU Freq: %u in RC0\n",
+					 rc0_freq);
+			else
+				pr_err("No power and freq measured while in RC0\n");
 			err = -EINVAL;
 			goto out_unlock;
 		}
@@ -90,7 +99,8 @@ int live_rc6_manual(void *arg)
 	intel_uncore_forcewake_flush(rc6_to_uncore(rc6), FORCEWAKE_ALL);
 	dt = ktime_get();
 	rc6_power = librapl_energy_uJ();
-	msleep(100);
+	msleep(1000);
+	rc6_freq = intel_rps_read_actual_frequency_fw(rps);
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

