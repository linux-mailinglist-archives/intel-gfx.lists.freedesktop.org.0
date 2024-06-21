Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB270912F61
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2024 23:20:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52C5910EB28;
	Fri, 21 Jun 2024 21:20:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fSuAifQJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76D6610E2A7;
 Fri, 21 Jun 2024 21:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719004809; x=1750540809;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UUViSAn1B6jUKk5M1cwdYET80XFA1a60JBykf5MG0Dg=;
 b=fSuAifQJRGJNkR1w/9GnReyZ0L8MYTXDvf8kDSoVZfA4Wqz/tMubY7dx
 l9zMoY9GRe70t9hGN9Glcpfd9M0+Vrg+XbBlZdCE3BqRigdnqA13QbypQ
 6YD1nyIBy7Uo8pFel5AcqDso+ll1KydZ9v9tqg0gi3K2sQY+9bqa5N7Ej
 OM0WZUiP0t3ea31AFyHO6KonDtswIu3r7ilDPUZiiDenKChGEj+IJooRM
 iMchbQddpBnpqAyhZ+nuNIlHMsHg8DZP1+ZuTbiDTUMizCvaZ543C8EqL
 b+aDMSXVQYLxNlclKqa+HYIVEUsRjJAyqawrFEMARXbtfRpeA693WJS3I A==;
X-CSE-ConnectionGUID: 6SgwMN2rSa2xeyS8wKoEGQ==
X-CSE-MsgGUID: Yw9UByLBSQmBXu3boc6vIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11110"; a="38574901"
X-IronPort-AV: E=Sophos;i="6.08,255,1712646000"; d="scan'208";a="38574901"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2024 14:20:08 -0700
X-CSE-ConnectionGUID: X5uv4X6qRuO1CCWkBmMNxA==
X-CSE-MsgGUID: bqKEeI6MQTiOiBq3I6LCbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,255,1712646000"; d="scan'208";a="43386415"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by orviesa007.jf.intel.com with ESMTP; 21 Jun 2024 14:20:07 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Subject: [PATCH i-g-t] test/xe_gt_freq: Add helper to read RPe freq
Date: Fri, 21 Jun 2024 14:18:48 -0700
Message-Id: <20240621211848.4144314-1-vinay.belgaumkar@intel.com>
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

We are seeing a possible switch in RPe right after RC6 wakeup.
Ensure we obtain the latest RPe by reading it every time.

Fixes: adcc68266b8e ("tests/intel/xe_gt_freq: Check for RPe freq updates")
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/intel/xe_gt_freq.c | 43 ++++++++++++++++++----------------------
 1 file changed, 19 insertions(+), 24 deletions(-)

diff --git a/tests/intel/xe_gt_freq.c b/tests/intel/xe_gt_freq.c
index d2e4d1a09..65ec3b0c4 100644
--- a/tests/intel/xe_gt_freq.c
+++ b/tests/intel/xe_gt_freq.c
@@ -70,6 +70,11 @@ static uint32_t get_freq(int fd, int gt_id, const char *freq_name)
 	return freq;
 }
 
+static uint32_t rpe(int fd, int gt_id)
+{
+	return get_freq(fd, gt_id, "rpe");
+}
+
 static uint32_t get_throttle(int fd, int gt_id, const char *throttle_file)
 {
 	uint32_t val;
@@ -122,7 +127,6 @@ static void test_throttle_basic_api(int fd, int gt_id)
 static void test_freq_basic_api(int fd, int gt_id)
 {
 	uint32_t rpn = get_freq(fd, gt_id, "rpn");
-	uint32_t rpe = get_freq(fd, gt_id, "rpe");
 	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
 
 	/*
@@ -138,16 +142,16 @@ static void test_freq_basic_api(int fd, int gt_id)
 	/* Assert min requests are respected from rp0 to rpn */
 	igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
 	igt_assert(get_freq(fd, gt_id, "min") == rp0);
-	igt_assert(set_freq(fd, gt_id, "min", rpe) > 0);
-	igt_assert(get_freq(fd, gt_id, "min") == rpe);
+	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
+	igt_assert(get_freq(fd, gt_id, "min") == rpe(fd, gt_id));
 	igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
 	igt_assert(get_freq(fd, gt_id, "min") == rpn);
 
 	/* Assert max requests are respected from rpn to rp0 */
 	igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
 	igt_assert(get_freq(fd, gt_id, "max") == rpn);
-	igt_assert(set_freq(fd, gt_id, "max", rpe) > 0);
-	igt_assert(get_freq(fd, gt_id, "max") == rpe);
+	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
+	igt_assert(get_freq(fd, gt_id, "max") == rpe(fd, gt_id));
 	igt_assert(set_freq(fd, gt_id, "max", rp0) > 0);
 	igt_assert(get_freq(fd, gt_id, "max") == rp0);
 }
@@ -163,7 +167,6 @@ static void test_freq_basic_api(int fd, int gt_id)
 static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
 {
 	uint32_t rpn = get_freq(fd, gt_id, "rpn");
-	uint32_t rpe = get_freq(fd, gt_id, "rpe");
 	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
 
 	igt_debug("Starting testing fixed request\n");
@@ -187,20 +190,17 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
 		igt_assert(get_freq(fd, gt_id, "act") == rpn);
 	}
 
-	/* Refresh value of rpe, pcode could have adjusted it */
-	rpe = get_freq(fd, gt_id, "rpe");
-
-	igt_assert(set_freq(fd, gt_id, "min", rpe) > 0);
-	igt_assert(set_freq(fd, gt_id, "max", rpe) > 0);
+	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
+	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
 	usleep(ACT_FREQ_LATENCY_US);
-	igt_assert(get_freq(fd, gt_id, "cur") == rpe);
+	igt_assert(get_freq(fd, gt_id, "cur") == rpe(fd, gt_id));
 
 	if (gt_idle) {
 		igt_assert_f(igt_wait(xe_is_gt_in_c6(fd, gt_id), 1000, 10),
 			     "GT %d should be in C6\n", gt_id);
 		igt_assert(get_freq(fd, gt_id, "act") == 0);
 	} else {
-		igt_assert(get_freq(fd, gt_id, "act") == rpe);
+		igt_assert(get_freq(fd, gt_id, "act") == rpe(fd, gt_id));
 	}
 
 	igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
@@ -232,16 +232,15 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
 static void test_freq_range(int fd, int gt_id, bool gt_idle)
 {
 	uint32_t rpn = get_freq(fd, gt_id, "rpn");
-	uint32_t rpe = get_freq(fd, gt_id, "rpe");
 	uint32_t cur, act;
 
 	igt_debug("Starting testing range request\n");
 
 	igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
-	igt_assert(set_freq(fd, gt_id, "max", rpe) > 0);
+	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
 	usleep(ACT_FREQ_LATENCY_US);
 	cur = get_freq(fd, gt_id, "cur");
-	igt_assert(rpn <= cur && cur <= rpe);
+	igt_assert(rpn <= cur && cur <= rpe(fd, gt_id));
 
 	if (gt_idle) {
 		igt_assert_f(igt_wait(xe_is_gt_in_c6(fd, gt_id), 1000, 10),
@@ -249,7 +248,7 @@ static void test_freq_range(int fd, int gt_id, bool gt_idle)
 		igt_assert(get_freq(fd, gt_id, "act") == 0);
 	} else {
 		act = get_freq(fd, gt_id, "act");
-		igt_assert(rpn <= act && act <= rpe);
+		igt_assert(rpn <= act && act <= rpe(fd, gt_id));
 	}
 
 	igt_debug("Finished testing range request\n");
@@ -263,23 +262,19 @@ static void test_freq_range(int fd, int gt_id, bool gt_idle)
 static void test_freq_low_max(int fd, int gt_id)
 {
 	uint32_t rpn = get_freq(fd, gt_id, "rpn");
-	uint32_t rpe = get_freq(fd, gt_id, "rpe");
 
 	/*
 	 *  When max request < min request, max is ignored and min works like
 	 * a fixed one. Let's assert this assumption
 	 */
-	igt_assert(set_freq(fd, gt_id, "min", rpe) > 0);
+	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
 	igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
 	usleep(ACT_FREQ_LATENCY_US);
 
-	/* Refresh value of rpe, pcode could have adjusted it */
-	rpe = get_freq(fd, gt_id, "rpe");
-
-	igt_assert(get_freq(fd, gt_id, "cur") == rpe);
+	igt_assert(get_freq(fd, gt_id, "cur") == rpe(fd, gt_id));
 
 	if (!xe_is_gt_in_c6(fd, gt_id))
-		igt_assert(get_freq(fd, gt_id, "act") == rpe);
+		igt_assert(get_freq(fd, gt_id, "act") == rpe(fd, gt_id));
 }
 
 /**
-- 
2.38.1

