Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3569A6606E
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Mar 2025 22:21:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8715C10E1AB;
	Mon, 17 Mar 2025 21:21:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fHlrfFdj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9790A10E1AB
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Mar 2025 21:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742246505; x=1773782505;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VX2cOs6R30mwcoaEDrzRbBLeUSniiwyp6OJUP062vQk=;
 b=fHlrfFdjNCg0m/1DmFT5psUj4s1Zx7Ds+tkLDBPET0XfPqyv3Kp3mZKg
 kZX3kw/txn29xCa5T+9+44/9Dmt+4+Xd0lzA8O/2OUnef4lb/5KfYh4DS
 AnbVYDdssDX9om+P9Ikv9n75d9miMyHP/rV5XoOMT6WPCrcSJC/oKUmXG
 ieVYY4D94G5AFtssgk6K9VEuehD4rElcR3Dyc/PEk6SFqbZlwhCZSS6Zc
 unSG/glohbgIaZDxrxyQ+/uJo7gXOt/zMhQMDhWiFMSVDFA+lKjH6VwBq
 AWKXv/vD3GBWuZHdVLPk1lC9RR5thmolPAuc7cF4H91N0Oq3BLc3Cr0ZR Q==;
X-CSE-ConnectionGUID: jcmS0Tg9TwOeu/r0rPRN3Q==
X-CSE-MsgGUID: 6igwtaP6Q4eDeuBtHWLo0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="43535887"
X-IronPort-AV: E=Sophos;i="6.14,255,1736841600"; d="scan'208";a="43535887"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 14:21:44 -0700
X-CSE-ConnectionGUID: B8hnsk8hQsWT/SmYlUz70w==
X-CSE-MsgGUID: Q37bJxAXRtic6luCdErm9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,255,1736841600"; d="scan'208";a="126714290"
Received: from unknown (HELO anirban-Z690I-A-ULTRA-PLUS.iind.intel.com)
 ([10.190.216.83])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 14:21:42 -0700
From: sk.anirban@intel.com
To: intel-gfx@lists.freedesktop.org
Cc: Sk Anirban <sk.anirban@intel.com>
Subject: [PATCH v4] drm/i915/selftests: Refactor RC6 power measurement and
 error handling
Date: Tue, 18 Mar 2025 02:49:10 +0530
Message-Id: <20250317211910.3496993-1-sk.anirban@intel.com>
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

Refactor power measurement logic to store and compare energy values.
Previously, the code only checked whether the system had entered the RC6
state, without considering any potential interruptions in that state.
This update introduces a threshold check to ensure that the GPU remains
in the RC6 state properly during the specified sleep duration.

v2:
  - Improved commit message (Badal)

v3:
  - Reorder threshold check (Badal)

v4:
  - Improved commit message (Anshuman)

Signed-off-by: Sk Anirban <sk.anirban@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rc6.c | 59 +++++++++++++++++---------
 1 file changed, 38 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 908483ab0bc8..5364e50be638 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -33,15 +33,20 @@ int live_rc6_manual(void *arg)
 {
 	struct intel_gt *gt = arg;
 	struct intel_rc6 *rc6 = &gt->rc6;
-	u64 rc0_power, rc6_power;
+	struct intel_rps *rps = &gt->rps;
 	intel_wakeref_t wakeref;
+	u64 sleep_time = 1000;
+	u32 rc0_freq = 0;
+	u32 rc6_freq = 0;
+	u64 rc0_power[3];
+	u64 rc6_power[3];
 	bool has_power;
+	u64 threshold;
 	ktime_t dt;
 	u64 res[2];
 	int err = 0;
-	u32 rc0_freq = 0;
-	u32 rc6_freq = 0;
-	struct intel_rps *rps = &gt->rps;
+	u64 diff;
+
 
 	/*
 	 * Our claim is that we can "encourage" the GPU to enter rc6 at will.
@@ -65,9 +70,9 @@ int live_rc6_manual(void *arg)
 	res[0] = rc6_residency(rc6);
 
 	dt = ktime_get();
-	rc0_power = librapl_energy_uJ();
-	msleep(1000);
-	rc0_power = librapl_energy_uJ() - rc0_power;
+	rc0_power[0] = librapl_energy_uJ();
+	msleep(sleep_time);
+	rc0_power[1] = librapl_energy_uJ() - rc0_power[0];
 	dt = ktime_sub(ktime_get(), dt);
 	res[1] = rc6_residency(rc6);
 	rc0_freq = intel_rps_read_actual_frequency_fw(rps);
@@ -79,11 +84,12 @@ int live_rc6_manual(void *arg)
 	}
 
 	if (has_power) {
-		rc0_power = div64_u64(NSEC_PER_SEC * rc0_power,
-				      ktime_to_ns(dt));
-		if (!rc0_power) {
+		rc0_power[2] = div64_u64(NSEC_PER_SEC * rc0_power[1],
+					 ktime_to_ns(dt));
+
+		if (!rc0_power[2]) {
 			if (rc0_freq)
-				pr_debug("No power measured while in RC0! GPU Freq: %u in RC0\n",
+				pr_debug("No power measured while in RC0! GPU Freq: %uMHz in RC0\n",
 					 rc0_freq);
 			else
 				pr_err("No power and freq measured while in RC0\n");
@@ -98,10 +104,10 @@ int live_rc6_manual(void *arg)
 	res[0] = rc6_residency(rc6);
 	intel_uncore_forcewake_flush(rc6_to_uncore(rc6), FORCEWAKE_ALL);
 	dt = ktime_get();
-	rc6_power = librapl_energy_uJ();
-	msleep(1000);
+	rc6_power[0] = librapl_energy_uJ();
+	msleep(sleep_time);
 	rc6_freq = intel_rps_read_actual_frequency_fw(rps);
-	rc6_power = librapl_energy_uJ() - rc6_power;
+	rc6_power[1] = librapl_energy_uJ() - rc6_power[0];
 	dt = ktime_sub(ktime_get(), dt);
 	res[1] = rc6_residency(rc6);
 	if (res[1] == res[0]) {
@@ -113,13 +119,24 @@ int live_rc6_manual(void *arg)
 	}
 
 	if (has_power) {
-		rc6_power = div64_u64(NSEC_PER_SEC * rc6_power,
-				      ktime_to_ns(dt));
-		pr_info("GPU consumed %llduW in RC0 and %llduW in RC6\n",
-			rc0_power, rc6_power);
-		if (2 * rc6_power > rc0_power) {
-			pr_err("GPU leaked energy while in RC6! GPU Freq: %u in RC6 and %u in RC0\n",
-			       rc6_freq, rc0_freq);
+		rc6_power[2] = div64_u64(NSEC_PER_SEC * rc6_power[1],
+					 ktime_to_ns(dt));
+		pr_info("GPU consumed %lluuW in RC0 and %lluuW in RC6\n",
+			rc0_power[2], rc6_power[2]);
+
+		if (2 * rc6_power[2] > rc0_power[2]) {
+			pr_err("GPU leaked energy while in RC6!\n"
+			       "GPU Freq: %uMHz in RC6 and %uMHz in RC0\n"
+			       "RC0 energy before & after sleep respectively: %lluuJ %lluuJ\n"
+			       "RC6 energy before & after sleep respectively: %lluuJ %lluuJ\n",
+			       rc6_freq, rc0_freq, rc0_power[0], rc0_power[1],
+			       rc6_power[0], rc6_power[1]);
+
+			diff = res[1] - res[0];
+			threshold = (9 * NSEC_PER_MSEC * sleep_time) / 10;
+			if (diff < threshold)
+				pr_err("Did not enter RC6 properly, RC6 start residency=%lluns, RC6 end residency=%lluns\n",
+				       res[0], res[1]);
 			err = -EINVAL;
 			goto out_unlock;
 		}
-- 
2.34.1

