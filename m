Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D19694232E
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 01:03:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F36D110E5A6;
	Tue, 30 Jul 2024 23:03:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K0IxYTmk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A07910E5A5;
 Tue, 30 Jul 2024 23:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722380586; x=1753916586;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SBhy47PEMmAK9/1Kw4StCQozmK0uhQeHx0mrCjoL5Ow=;
 b=K0IxYTmkTPoQ+ubWCOhwpmML4XaJ6unJqnIRzMmuHozMHpUuO9IDV4ZX
 RckmsSk+FKrG6PbLwf6xRD29HKUNeEd3ESiiWwP4vCVaVo5F7h4kewi9w
 zbQoHqsAMlIz8vA+wVpcemhl7Ua8ePm/a4RNDbmw58D8S0R/YHQSa/PyY
 X9Vj1/uFVuPFlvnQPQQpViDfv7HBHKCZ/9bJ1ewRlQ3ZlHgBQG8wqGMg6
 DJR4soAEBkmYCetVvMRfvSYNw387yi4aOHl/yYbB9d4Fvq6dN+/w1oI6k
 NznuLgLygBEHQINyTDVeriWbQpgJqNtFsle8OlPpTuMnHI7FeuEBuZXz9 g==;
X-CSE-ConnectionGUID: c02Gn1YgQfComH3/c/d87Q==
X-CSE-MsgGUID: 9dKhi9o0R+C+R8A6hU7DAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="19927523"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="19927523"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 16:03:06 -0700
X-CSE-ConnectionGUID: 7iBLEPsRT7exV1jGHnJI6A==
X-CSE-MsgGUID: 1WZQ3Cw2SmurlkZBSd023A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="58819914"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by fmviesa005.fm.intel.com with ESMTP; 30 Jul 2024 16:03:05 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Riana Tauro <riana.tauro@intel.com>,
 Badal Nilawar <badal.nilawar@intel.com>
Subject: [PATCH v4 i-g-t] tests/xe_gt_freq: Avoid RPe usage in subtests
Date: Tue, 30 Jul 2024 16:01:23 -0700
Message-Id: <20240730230123.2695162-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
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

We are seeing several instances where the RPe, which can be altered by
pcode dynamically, is causing subtests to fail randomly. Instead of relying
on it, we can use a mid frequency value for these subtests and avoid these
failures.

v2: Fix bug in the tolerance function. Remove rpe usage from freq_range*
as well (Badal). Fix test documentation to reflect change (Riana).

v3: Actual frequency cannot be guaranteed to follow the requested value

v4: Handle cases where RPe can be greater than min/cur freq.

Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2200
Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2196
Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2262
Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2256
Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2203
Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2412

Cc: Riana Tauro <riana.tauro@intel.com>
Cc: Badal Nilawar <badal.nilawar@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/intel/xe_gt_freq.c | 57 ++++++++++++++++++++++++++++------------
 1 file changed, 40 insertions(+), 17 deletions(-)

diff --git a/tests/intel/xe_gt_freq.c b/tests/intel/xe_gt_freq.c
index 93ebb5ed0..c9d59508b 100644
--- a/tests/intel/xe_gt_freq.c
+++ b/tests/intel/xe_gt_freq.c
@@ -26,6 +26,9 @@
 #include <sys/time.h>
 
 #define MAX_N_EXEC_QUEUES 16
+#define GT_FREQUENCY_MULTIPLIER	50
+#define GT_FREQUENCY_SCALER	3
+#define FREQ_UNIT_MHZ	 DIV_ROUND_CLOSEST(GT_FREQUENCY_MULTIPLIER, GT_FREQUENCY_SCALER)
 
 /*
  * Too many intermediate components and steps before freq is adjusted
@@ -70,9 +73,14 @@ static uint32_t get_freq(int fd, int gt_id, const char *freq_name)
 	return freq;
 }
 
-static uint32_t rpe(int fd, int gt_id)
+static bool within_expected_range(uint32_t freq, uint32_t val)
 {
-	return get_freq(fd, gt_id, "rpe");
+	/*
+	 * GT Frequencies are requested at units of 16.66 Mhz, so allow
+	 * that tolerance.
+	 */
+	return (freq <= val + FREQ_UNIT_MHZ) &&
+		(freq >= val - FREQ_UNIT_MHZ);
 }
 
 static uint32_t get_throttle(int fd, int gt_id, const char *throttle_file)
@@ -128,6 +136,8 @@ static void test_freq_basic_api(int fd, int gt_id)
 {
 	uint32_t rpn = get_freq(fd, gt_id, "rpn");
 	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
+	uint32_t rpmid = (rp0 + rpn) / 2;
+	uint32_t min_freq, max_freq;
 
 	/*
 	 * Negative bound tests
@@ -142,16 +152,19 @@ static void test_freq_basic_api(int fd, int gt_id)
 	/* Assert min requests are respected from rp0 to rpn */
 	igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
 	igt_assert(get_freq(fd, gt_id, "min") == rp0);
-	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
-	igt_assert(get_freq(fd, gt_id, "min") == rpe(fd, gt_id));
+	igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
+	min_freq = get_freq(fd, gt_id, "min");
+	/* SLPC can set min higher than rpmid - as it follows RPe */
+	igt_assert(min_freq >= (rpmid - FREQ_UNIT_MHZ));
 	igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
 	igt_assert(get_freq(fd, gt_id, "min") == rpn);
 
 	/* Assert max requests are respected from rpn to rp0 */
 	igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
 	igt_assert(get_freq(fd, gt_id, "max") == rpn);
-	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
-	igt_assert(get_freq(fd, gt_id, "max") == rpe(fd, gt_id));
+	igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
+	max_freq = get_freq(fd, gt_id, "max");
+	igt_assert(within_expected_range(max_freq, rpmid));
 	igt_assert(set_freq(fd, gt_id, "max", rp0) > 0);
 	igt_assert(get_freq(fd, gt_id, "max") == rp0);
 }
@@ -168,13 +181,16 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
 {
 	uint32_t rpn = get_freq(fd, gt_id, "rpn");
 	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
+	uint32_t rpmid = (rp0 + rpn) / 2;
+	uint32_t cur_freq, act_freq;
 
 	igt_debug("Starting testing fixed request\n");
 
 	/*
 	 * For Fixed freq we need to set both min and max to the desired value
 	 * Then we check if hardware is actually operating at the desired freq
-	 * And let's do this for all the 3 known Render Performance (RP) values.
+	 * And let's do this for all the 2 known Render Performance (RP) values
+	 * RP0 and RPn and something in between.
 	 */
 	igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
 	igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
@@ -190,17 +206,20 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
 		igt_assert(get_freq(fd, gt_id, "act") == rpn);
 	}
 
-	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
-	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
+	igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
+	igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
 	usleep(ACT_FREQ_LATENCY_US);
-	igt_assert(get_freq(fd, gt_id, "cur") == rpe(fd, gt_id));
+	cur_freq = get_freq(fd, gt_id, "cur");
+	/* If rpmid is around RPe, we could see SLPC follow it */
+	igt_assert(cur_freq >= (rpmid - FREQ_UNIT_MHZ));
 
 	if (gt_idle) {
 		igt_assert_f(igt_wait(xe_is_gt_in_c6(fd, gt_id), 1000, 10),
 			     "GT %d should be in C6\n", gt_id);
 		igt_assert(get_freq(fd, gt_id, "act") == 0);
 	} else {
-		igt_assert(get_freq(fd, gt_id, "act") == rpe(fd, gt_id));
+		act_freq = get_freq(fd, gt_id, "act");
+		igt_assert(act_freq <= cur_freq + FREQ_UNIT_MHZ);
 	}
 
 	igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
@@ -232,15 +251,17 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
 static void test_freq_range(int fd, int gt_id, bool gt_idle)
 {
 	uint32_t rpn = get_freq(fd, gt_id, "rpn");
+	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
+	uint32_t rpmid = (rp0 + rpn) / 2;
 	uint32_t cur, act;
 
 	igt_debug("Starting testing range request\n");
 
 	igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
-	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
+	igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
 	usleep(ACT_FREQ_LATENCY_US);
 	cur = get_freq(fd, gt_id, "cur");
-	igt_assert(rpn <= cur && cur <= rpe(fd, gt_id));
+	igt_assert(rpn <= cur && cur <= rpmid + FREQ_UNIT_MHZ);
 
 	if (gt_idle) {
 		igt_assert_f(igt_wait(xe_is_gt_in_c6(fd, gt_id), 1000, 10),
@@ -248,7 +269,7 @@ static void test_freq_range(int fd, int gt_id, bool gt_idle)
 		igt_assert(get_freq(fd, gt_id, "act") == 0);
 	} else {
 		act = get_freq(fd, gt_id, "act");
-		igt_assert(rpn <= act && act <= rpe(fd, gt_id));
+		igt_assert((rpn <= act) && (act <= cur + FREQ_UNIT_MHZ));
 	}
 
 	igt_debug("Finished testing range request\n");
@@ -262,17 +283,19 @@ static void test_freq_range(int fd, int gt_id, bool gt_idle)
 static void test_freq_low_max(int fd, int gt_id)
 {
 	uint32_t rpn = get_freq(fd, gt_id, "rpn");
+	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
+	uint32_t rpmid = (rp0 + rpn) / 2;
 
 	/*
 	 *  When max request < min request, max is ignored and min works like
 	 * a fixed one. Let's assert this assumption
 	 */
-	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
+	igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
 	igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
 	usleep(ACT_FREQ_LATENCY_US);
 
-	/* Refresh value of rpe, pcode could have adjusted it */
-	igt_assert(get_freq(fd, gt_id, "cur") == rpe(fd, gt_id));
+	/* Cur freq will follow RPe, which could be higher than min freq */
+	igt_assert(get_freq(fd, gt_id, "cur") >= (rpmid - FREQ_UNIT_MHZ));
 }
 
 /**
-- 
2.38.1

