Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7641993B57E
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 19:01:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED25110E76E;
	Wed, 24 Jul 2024 17:01:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qr/bRO00";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1499710E76D;
 Wed, 24 Jul 2024 17:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721840490; x=1753376490;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BPKNC7Lhz1VKbrpHLmzBje3Y91LZychv3lojPxS1bdw=;
 b=Qr/bRO00+d3A0QJHgjwXLWtR19FoJ8tIAiKvCYvWPgj6I9ndkutDMd2U
 Upho+0Frvgoo6IiLWWIWQfqIoCtSYnFRzomih8pvE/HC61GT7qW4w3Ff8
 NwBUHTo8c/lAQ1NjSVydYjblRW4VMUXRUmFtWMfaubJTlM556YrCMTAUb
 haqL1wfBIv08ilPt7rk8CPMdMtqqG4IzsRIbp4mxaF1P0ywWNQsE5K/nR
 e/Nov3XXhWeZisN8Ji6Dv9/gc5ygSgHMVKUtKLctAuiJVCt4SqpskHBZz
 DejqfH7mDGN8NE17XUAuWHtPPbQljMLuKzCqmpMaHEkHOQaOjwZyoENxE g==;
X-CSE-ConnectionGUID: ZdkiFk5nT9mOKTU5ONx0pw==
X-CSE-MsgGUID: 5YDVyZOfSjK0mrkzao7j8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="23398432"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="23398432"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 10:01:29 -0700
X-CSE-ConnectionGUID: EjsEimCNSz+m5g/h2d/ZoQ==
X-CSE-MsgGUID: 3ysO6ZXLTBy5LpPPvqH1VQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="52519140"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by fmviesa008.fm.intel.com with ESMTP; 24 Jul 2024 10:01:30 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Subject: [PATCH i-g-t] tests/xe_gt_freq: Avoid RPe usage in subtests
Date: Wed, 24 Jul 2024 09:59:52 -0700
Message-Id: <20240724165952.1605698-1-vinay.belgaumkar@intel.com>
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

Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2262
Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2256

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/intel/xe_gt_freq.c | 37 +++++++++++++++++++++++++++++--------
 1 file changed, 29 insertions(+), 8 deletions(-)

diff --git a/tests/intel/xe_gt_freq.c b/tests/intel/xe_gt_freq.c
index 93ebb5ed0..442f5658f 100644
--- a/tests/intel/xe_gt_freq.c
+++ b/tests/intel/xe_gt_freq.c
@@ -26,6 +26,9 @@
 #include <sys/time.h>
 
 #define MAX_N_EXEC_QUEUES 16
+#define GT_FREQUENCY_MULTIPLIER	50
+#define GT_FREQUENCY_SCALER	3
+#define FREQ_UNIT_MHZ (GT_FREQUENCY_MULTIPLIER / GT_FREQUENCY_SCALER)
 
 /*
  * Too many intermediate components and steps before freq is adjusted
@@ -70,6 +73,16 @@ static uint32_t get_freq(int fd, int gt_id, const char *freq_name)
 	return freq;
 }
 
+static bool within_expected_range(uint32_t freq, uint32_t val)
+{
+	/*
+	 * GT Frequencies are requested at units of 16.66 Mhz, so allow
+	 * that tolerance.
+	 */
+	return (freq <= val + FREQ_UNIT_MHZ) ||
+		(freq >= val - FREQ_UNIT_MHZ);
+}
+
 static uint32_t rpe(int fd, int gt_id)
 {
 	return get_freq(fd, gt_id, "rpe");
@@ -128,6 +141,8 @@ static void test_freq_basic_api(int fd, int gt_id)
 {
 	uint32_t rpn = get_freq(fd, gt_id, "rpn");
 	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
+	uint32_t rpmid = (rp0 + rpn) / 2;
+	uint32_t min_freq, max_freq;
 
 	/*
 	 * Negative bound tests
@@ -142,16 +157,18 @@ static void test_freq_basic_api(int fd, int gt_id)
 	/* Assert min requests are respected from rp0 to rpn */
 	igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
 	igt_assert(get_freq(fd, gt_id, "min") == rp0);
-	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
-	igt_assert(get_freq(fd, gt_id, "min") == rpe(fd, gt_id));
+	igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
+	min_freq = get_freq(fd, gt_id, "min");
+	igt_assert(within_expected_range(min_freq, rpmid));
 	igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
 	igt_assert(get_freq(fd, gt_id, "min") == rpn);
 
 	/* Assert max requests are respected from rpn to rp0 */
 	igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
 	igt_assert(get_freq(fd, gt_id, "max") == rpn);
-	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
-	igt_assert(get_freq(fd, gt_id, "max") == rpe(fd, gt_id));
+	igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
+	max_freq = get_freq(fd, gt_id, "min");
+	igt_assert(within_expected_range(max_freq, rpmid));
 	igt_assert(set_freq(fd, gt_id, "max", rp0) > 0);
 	igt_assert(get_freq(fd, gt_id, "max") == rp0);
 }
@@ -168,6 +185,8 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
 {
 	uint32_t rpn = get_freq(fd, gt_id, "rpn");
 	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
+	uint32_t rpmid = (rp0 + rpn) / 2;
+	uint32_t cur_freq, act_freq;
 
 	igt_debug("Starting testing fixed request\n");
 
@@ -190,17 +209,19 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
 		igt_assert(get_freq(fd, gt_id, "act") == rpn);
 	}
 
-	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
-	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
+	igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
+	igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
 	usleep(ACT_FREQ_LATENCY_US);
-	igt_assert(get_freq(fd, gt_id, "cur") == rpe(fd, gt_id));
+	cur_freq = get_freq(fd, gt_id, "cur");
+	igt_assert(within_expected_range(cur_freq, rpmid));
 
 	if (gt_idle) {
 		igt_assert_f(igt_wait(xe_is_gt_in_c6(fd, gt_id), 1000, 10),
 			     "GT %d should be in C6\n", gt_id);
 		igt_assert(get_freq(fd, gt_id, "act") == 0);
 	} else {
-		igt_assert(get_freq(fd, gt_id, "act") == rpe(fd, gt_id));
+		act_freq = get_freq(fd, gt_id, "act");
+		igt_assert(within_expected_range(act_freq, rpmid));
 	}
 
 	igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
-- 
2.38.1

