Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A44CA4DE22
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 13:39:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DF4310E31A;
	Tue,  4 Mar 2025 12:39:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kN2S6PEa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7430710E31A
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 12:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741091989; x=1772627989;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TU4ucgeIx55rrOjEJDhMK38/fIrJVfZ0L689Z7KuCGA=;
 b=kN2S6PEa0Y0lHpo6mgAVzn7m8fy2+zAXcOLUFV8OSJ3RtEdbbGa9Z8g1
 K354cVTUmNrq3QwOJgmm86cSPeut+RcA5oMNXxk1ts3cku9N/GYU8q03b
 Y5TEVVoXnhvDhoMG9SJrOBE3/++SErfFCMERRGNkU6eQAyUXjgdqsPxKb
 9y6YX/dRiv8sXqeXotM2b4Bu46qnO1c+5N0G7oNu3/WA9Zkt9w7L3FTJA
 P2krpsRQPjvO8GcuQVjRZ/5O1XCGdn/wXEOhkHo6TRbrxjD0PeT/V2/4t
 mg+NByORloSLn2tDoVriS1rKN28kcAEqrox1aiN1QO+9MmqGY5yxHgHvK w==;
X-CSE-ConnectionGUID: +cIq7oCrSnikc8nIrX+bKQ==
X-CSE-MsgGUID: /nvTNzYRSGa69+OJKfytcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="52213120"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="52213120"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 04:39:49 -0800
X-CSE-ConnectionGUID: tG0yVGvjT86iv0RpILgMWQ==
X-CSE-MsgGUID: xH7OjXorTruD9Qf+Pq4wHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118876574"
Received: from unknown (HELO anirban-Z690I-A-ULTRA-PLUS.iind.intel.com)
 ([10.190.216.83])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 04:39:45 -0800
From: sk.anirban@intel.com
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, badal.nilawar@intel.com, riana.tauro@intel.com,
 karthik.poosa@intel.com, varun.gupta@intel.com, sk.anirban@intel.com
Subject: [PATCH v2] drm/i915/selftests: Refactor RC6 power measurement and
 error handling
Date: Tue,  4 Mar 2025 18:08:12 +0530
Message-Id: <20250304123812.2445352-1-sk.anirban@intel.com>
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
Introduce a threshold check to ensure the GPU enters RC6 properly.

v2:
  - Improved commit message (Badal)

Signed-off-by: Sk Anirban <sk.anirban@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rc6.c | 61 +++++++++++++++++---------
 1 file changed, 40 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 908483ab0bc8..30bc2ff040ce 100644
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
@@ -112,14 +118,27 @@ int live_rc6_manual(void *arg)
 		err = -EINVAL;
 	}
 
+	diff = res[1] - res[0];
+	threshold = (9 * NSEC_PER_MSEC * sleep_time) / 10;
+	if (diff < threshold) {
+		pr_err("Did not enter RC6 properly, RC6 start residency=%lluns, RC6 end residency=%lluns\n",
+		       res[0], res[1]);
+		err = -EINVAL;
+	}
+
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
 			err = -EINVAL;
 			goto out_unlock;
 		}
-- 
2.34.1

