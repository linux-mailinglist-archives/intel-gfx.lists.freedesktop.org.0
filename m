Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D137A73E79
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 20:22:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 420B710E044;
	Thu, 27 Mar 2025 19:22:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YS3+ctym";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B82F910E044
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Mar 2025 19:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743103356; x=1774639356;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Awj9/lU+hy0fQe3z3tV6Tu9lrsgy2JQi3wjeZTg543Q=;
 b=YS3+ctymmmD7F8wkGxVEB2i0ZCoEcvFWpS5AZAp0bXU/qf/gtsi712ga
 Nwoy4dRWKonSzP3tvuP0FhMYWR1CeEFLuQyBURz1UL64zBUNxTdGzZ8FN
 tkRd/e/DTvdkgz74h9v6McKgQMX7zvNJkrs5F5MwCX79QVP++1Ee4Qx8N
 zGfaQkIGPXh9AXPs1QqQ8NpcovR5NMurGNi7WIfJjWII0tSv/UfKq85tH
 IuG69gecTtGRzM6r0qqfLqetLsT3Pduc/NCtQeqRnatyXmOzECOTx6iuA
 ga2OHO6/66FEOFX78DYyt0JyOC1hU0qDHBpbsCsp5esm5M8eSINeVQa2E A==;
X-CSE-ConnectionGUID: ETtxWjeRRVOu/2DaRzDHSA==
X-CSE-MsgGUID: 6NUJtlCpSbSQATrrkhOA+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="55106773"
X-IronPort-AV: E=Sophos;i="6.14,281,1736841600"; d="scan'208";a="55106773"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 12:22:36 -0700
X-CSE-ConnectionGUID: 5c8DMhAtR1K9QaGPNz00+g==
X-CSE-MsgGUID: imq6qCImSwiiSl0RVBbwYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,281,1736841600"; d="scan'208";a="130301425"
Received: from unknown (HELO anirban-Z690I-A-ULTRA-PLUS.iind.intel.com)
 ([10.190.216.83])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 12:22:34 -0700
From: Sk Anirban <sk.anirban@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Sk Anirban <sk.anirban@intel.com>, Badal Nilawar <badal.nilawar@intel.com>
Subject: [PATCH v5] drm/i915/selftests: Refactor RC6 power measurement and
 error handling
Date: Fri, 28 Mar 2025 00:49:24 +0530
Message-Id: <20250327191924.4131598-1-sk.anirban@intel.com>
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

Revise the power measurement logic to save and evaluate energy values.
Previously, the test only checked whether the system had entered the RC6
state, without considering any potential interruptions in that state.
This update introduces a threshold check to ensure that the GPU remains
in the RC6 state properly during the specified sleep duration.

v3:
  - Reorder threshold check (Badal)

v4:
  - Improved commit message (Anshuman)

v5:
  - Rename variables for improved readability (Anshuman)

Signed-off-by: Sk Anirban <sk.anirban@intel.com>
Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rc6.c | 51 ++++++++++++++++++--------
 1 file changed, 35 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 908483ab0bc8..77c1774ddf37 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -33,15 +33,22 @@ int live_rc6_manual(void *arg)
 {
 	struct intel_gt *gt = arg;
 	struct intel_rc6 *rc6 = &gt->rc6;
-	u64 rc0_power, rc6_power;
+	struct intel_rps *rps = &gt->rps;
 	intel_wakeref_t wakeref;
+	u64 rc0_sample_energy[2];
+	u64 rc6_sample_energy[2];
+	u64 sleep_time = 1000;
+	u32 rc0_freq = 0;
+	u32 rc6_freq = 0;
+	u64 rc0_power;
+	u64 rc6_power;
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
@@ -65,9 +72,9 @@ int live_rc6_manual(void *arg)
 	res[0] = rc6_residency(rc6);
 
 	dt = ktime_get();
-	rc0_power = librapl_energy_uJ();
-	msleep(1000);
-	rc0_power = librapl_energy_uJ() - rc0_power;
+	rc0_sample_energy[0] = librapl_energy_uJ();
+	msleep(sleep_time);
+	rc0_sample_energy[1] = librapl_energy_uJ() - rc0_sample_energy[0];
 	dt = ktime_sub(ktime_get(), dt);
 	res[1] = rc6_residency(rc6);
 	rc0_freq = intel_rps_read_actual_frequency_fw(rps);
@@ -79,11 +86,12 @@ int live_rc6_manual(void *arg)
 	}
 
 	if (has_power) {
-		rc0_power = div64_u64(NSEC_PER_SEC * rc0_power,
+		rc0_power = div64_u64(NSEC_PER_SEC * rc0_sample_energy[1],
 				      ktime_to_ns(dt));
+
 		if (!rc0_power) {
 			if (rc0_freq)
-				pr_debug("No power measured while in RC0! GPU Freq: %u in RC0\n",
+				pr_debug("No power measured while in RC0! GPU Freq: %uMHz in RC0\n",
 					 rc0_freq);
 			else
 				pr_err("No power and freq measured while in RC0\n");
@@ -98,10 +106,10 @@ int live_rc6_manual(void *arg)
 	res[0] = rc6_residency(rc6);
 	intel_uncore_forcewake_flush(rc6_to_uncore(rc6), FORCEWAKE_ALL);
 	dt = ktime_get();
-	rc6_power = librapl_energy_uJ();
-	msleep(1000);
+	rc6_sample_energy[0] = librapl_energy_uJ();
+	msleep(sleep_time);
 	rc6_freq = intel_rps_read_actual_frequency_fw(rps);
-	rc6_power = librapl_energy_uJ() - rc6_power;
+	rc6_sample_energy[1] = librapl_energy_uJ() - rc6_sample_energy[0];
 	dt = ktime_sub(ktime_get(), dt);
 	res[1] = rc6_residency(rc6);
 	if (res[1] == res[0]) {
@@ -113,13 +121,24 @@ int live_rc6_manual(void *arg)
 	}
 
 	if (has_power) {
-		rc6_power = div64_u64(NSEC_PER_SEC * rc6_power,
+		rc6_power = div64_u64(NSEC_PER_SEC * rc6_sample_energy[1],
 				      ktime_to_ns(dt));
-		pr_info("GPU consumed %llduW in RC0 and %llduW in RC6\n",
+		pr_info("GPU consumed %lluuW in RC0 and %lluuW in RC6\n",
 			rc0_power, rc6_power);
+
 		if (2 * rc6_power > rc0_power) {
-			pr_err("GPU leaked energy while in RC6! GPU Freq: %u in RC6 and %u in RC0\n",
-			       rc6_freq, rc0_freq);
+			pr_err("GPU leaked energy while in RC6!\n"
+			       "GPU Freq: %uMHz in RC6 and %uMHz in RC0\n"
+			       "RC0 energy before & after sleep respectively: %lluuJ %lluuJ\n"
+			       "RC6 energy before & after sleep respectively: %lluuJ %lluuJ\n",
+			       rc6_freq, rc0_freq, rc0_sample_energy[0], rc0_sample_energy[1],
+			       rc6_sample_energy[0], rc6_sample_energy[1]);
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

