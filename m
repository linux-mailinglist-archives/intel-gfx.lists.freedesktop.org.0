Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E02A97C5CD
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 10:27:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED47110E144;
	Thu, 19 Sep 2024 08:27:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KRIYYmmp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC4FC10E144
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2024 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726734453; x=1758270453;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oJMB6e2bmgyH5+IzzBY5YiQo51Nu+3v9YWhrzMCAUvY=;
 b=KRIYYmmpPHxoFiA6CEDJ/8ee0HgR1q0WGgKWZjvKHnV9oVoQB35wUUAs
 c3+4n5uS5x8pFFzH/7UelRY3M6OwnbI7P7d47rTt7JZX32Ftj5BgSTDvF
 gfN/wsOvOvvX1Dnoole7i1Hp4p8wRBSQCIo/1SODOS+m/6opikk/vVM0R
 1KYKgLjtNatfapcUuZ/6LmcEevxu3CkkV6zUL7yksmN+BJzj3SONTlAls
 TEhG7OnSHBn2HXnGhWC3bNDxJlVQDTA+WWjMgJ9AxsKVnrqmEEsH/8b5d
 R1+d6Y+gS5/kCj9EKarTvdyksDd+jdbj00Neat6i+bEgXyzG4Vw+tg9SV g==;
X-CSE-ConnectionGUID: fEfU/n96T+uMfCRzWZxtBA==
X-CSE-MsgGUID: Vzaj0CrmRhqUN62u8BqwQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25203101"
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="25203101"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 01:27:33 -0700
X-CSE-ConnectionGUID: LF2a+K4YS6OmxnSch1wM8Q==
X-CSE-MsgGUID: ylA2gmkzQ2mAm2p0KqLYaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="69467723"
Received: from anirban-z690i-a-ultra-plus.iind.intel.com ([10.145.169.150])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 01:27:31 -0700
From: Sk Anirban <sk.anirban@intel.com>
To: intel-gfx@lists.freedesktop.org,
	anshuman.gupta@intel.com
Cc: karthik.poosa@intel.com, sai.teja.pottumuttu@intel.com,
 Sk Anirban <sk.anirban@intel.com>
Subject: [PATCH v3] drm/i915/selftests: Implement frequency check for energy
 reading validation
Date: Thu, 19 Sep 2024 13:53:39 +0530
Message-Id: <20240919082339.1310635-1-sk.anirban@intel.com>
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

This commit introduces a frequency check mechanism aimed at ensuring
the accuracy of energy readings.

v2:
  - Improved commit message.
v3:
  - Used pr_err log to display frequency. (Anshuman)
  - Sorted headers alphabetically. (Sai Teja)

Signed-off-by: Sk Anirban <sk.anirban@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rc6.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 1aa1446c8fb0..8fd6be7b826e 100644
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
+			pr_err("GPU leaked energy while in RC6!\nGPU Freq: %u in RC6 and %u in RC0\n",
+			       rc6_freq, rc0_freq);
 			err = -EINVAL;
 			goto out_unlock;
 		}
-- 
2.34.1

