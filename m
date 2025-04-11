Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17503A868F0
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Apr 2025 00:46:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED6BB10ECA9;
	Fri, 11 Apr 2025 22:46:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KrFbv18L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9797A10E138;
 Fri, 11 Apr 2025 22:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744411585; x=1775947585;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KP4yXhBlhBPfJy8wN3PWnOMmk/0NCgOKRstRk8Av6xQ=;
 b=KrFbv18LL7s7QecTAB2eVTkEnqPx1pZfaDU/AAAELc6lAe8l8hk2JQKq
 ZQSn4H0I6soHzTNM3nB9UOy2uoq/mP3MNSZaVZMfuS7XAGhPLTPRax14V
 2DwZHg7G6BV8Ib0aNQHleJpyp8j33ma2L0GzXILCr4TUYqWKG0yxQbpS2
 uOFAHm0fwUDSydJ9Yl+NnXSY39UdCEa8E1FoNysFTRjxXtN8mrrmXflkn
 6faQXzDWTFo5+fu336eGU/UGhs0by4ZafygePVN/EVrvZI6sLHHytA4F3
 ETsx96wnZ8b/YF4c+7Ft0vvZg0yjg5NIElvprTVkwZBPcUB/j1HKImxMO g==;
X-CSE-ConnectionGUID: AJf8vOtGTKufmpa1q+YKyQ==
X-CSE-MsgGUID: 8J3z1zosQ6GV/Hj22Q5+NA==
X-IronPort-AV: E=McAfee;i="6700,10204,11401"; a="45680295"
X-IronPort-AV: E=Sophos;i="6.15,206,1739865600"; d="scan'208";a="45680295"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 15:46:25 -0700
X-CSE-ConnectionGUID: neenDszITmqCFDjq6xmnxg==
X-CSE-MsgGUID: Z7065k7gSiqNz7FD6jGqQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,206,1739865600"; d="scan'208";a="129165735"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by fmviesa006.fm.intel.com with ESMTP; 11 Apr 2025 15:46:26 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Riana Tauro <riana.tauro@intel.com>
Subject: [PATCH i-g-t 1/2] lib/xe_gt: Move get/set GT freq utils to lib
Date: Fri, 11 Apr 2025 15:45:59 -0700
Message-Id: <20250411224600.665069-2-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250411224600.665069-1-vinay.belgaumkar@intel.com>
References: <20250411224600.665069-1-vinay.belgaumkar@intel.com>
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

Add utils to get/set GT frequency attributes. These are per GT
and exposed via sysfs already.

v2: Review comments (Kamil)
v3: Fix some more nits (Kamil)

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Reviewed-by: Riana Tauro <riana.tauro@intel.com>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 lib/xe/xe_gt.c           |  64 +++++++++++++++
 lib/xe/xe_gt.h           |   2 +
 tests/intel/xe_gt_freq.c | 166 +++++++++++++++------------------------
 3 files changed, 131 insertions(+), 101 deletions(-)

diff --git a/lib/xe/xe_gt.c b/lib/xe/xe_gt.c
index 6f1475be0..a1e080b88 100644
--- a/lib/xe/xe_gt.c
+++ b/lib/xe/xe_gt.c
@@ -4,6 +4,7 @@
  */
 
 #include <fcntl.h>
+#include <limits.h>
 #include <sys/stat.h>
 
 #include "igt_core.h"
@@ -241,3 +242,66 @@ int xe_gt_count_engines_by_class(int fd, int gt, int class)
 
 	return n;
 }
+
+/**
+ * xe_gt_set_freq:
+ * @fd: pointer to xe drm fd
+ * @gt_id: GT id
+ * @freq_name: which GT freq(min, max) to change
+ * @freq: value of freq to set
+ *
+ * Set GT min/max frequency. Function will assert if the sysfs node is
+ * not found.
+ *
+ * Return: success or failure
+ */
+int xe_gt_set_freq(int fd, int gt_id, const char *freq_name, uint32_t freq)
+{
+	int ret = -EAGAIN;
+	char freq_attr[NAME_MAX];
+	int gt_fd;
+
+	snprintf(freq_attr, sizeof(freq_attr), "freq0/%s_freq", freq_name);
+	gt_fd = xe_sysfs_gt_open(fd, gt_id);
+	igt_assert_lte(0, gt_fd);
+
+	while (ret == -EAGAIN)
+		ret = igt_sysfs_printf(gt_fd, freq_attr, "%u", freq);
+
+	close(gt_fd);
+
+	return ret;
+}
+
+/**
+ * xe_gt_get_freq:
+ * @fd: pointer to xe drm fd
+ * @gt_id: GT id
+ * @freq_name: which GT freq(min, max, act, cur) to read
+ *
+ * Read the min/max/act/cur/rp0/rpn/rpe GT frequencies. Function will
+ * assert if the sysfs node is not found.
+ *
+ * Return: GT frequency value
+ */
+uint32_t xe_gt_get_freq(int fd, int gt_id, const char *freq_name)
+{
+	uint32_t freq;
+	int err = -EAGAIN;
+	char freq_attr[NAME_MAX];
+	int gt_fd;
+
+	snprintf(freq_attr, sizeof(freq_attr), "freq0/%s_freq", freq_name);
+	gt_fd = xe_sysfs_gt_open(fd, gt_id);
+	igt_assert_lte(0, gt_fd);
+
+	while (err == -EAGAIN)
+		err = igt_sysfs_scanf(gt_fd, freq_attr, "%u", &freq);
+
+	igt_assert_eq(err, 1);
+
+	igt_debug("gt%d: %s freq %u\n", gt_id, freq_name, freq);
+	close(gt_fd);
+
+	return freq;
+}
diff --git a/lib/xe/xe_gt.h b/lib/xe/xe_gt.h
index 511b31149..06a59281c 100644
--- a/lib/xe/xe_gt.h
+++ b/lib/xe/xe_gt.h
@@ -23,4 +23,6 @@ int xe_gt_fill_engines_by_class(int fd, int gt, int class,
 				struct drm_xe_engine_class_instance eci[static XE_MAX_ENGINE_INSTANCE]);
 int xe_gt_count_engines_by_class(int fd, int gt, int class);
 
+int xe_gt_set_freq(int fd, int gt_id, const char *freq_name, uint32_t freq);
+uint32_t xe_gt_get_freq(int fd, int gt_id, const char *freq_name);
 #endif
diff --git a/tests/intel/xe_gt_freq.c b/tests/intel/xe_gt_freq.c
index 843144ad2..689e0296a 100644
--- a/tests/intel/xe_gt_freq.c
+++ b/tests/intel/xe_gt_freq.c
@@ -13,8 +13,9 @@
  */
 
 #include "igt.h"
-#include "lib/igt_syncobj.h"
 #include "igt_sysfs.h"
+#include "lib/igt_syncobj.h"
+#include "lib/xe/xe_gt.h"
 
 #include "xe_drm.h"
 #include "xe/xe_gt.h"
@@ -36,43 +37,6 @@
  */
 #define SLPC_FREQ_LATENCY_US 100000
 
-static int set_freq(int fd, int gt_id, const char *freq_name, uint32_t freq)
-{
-	int ret = -EAGAIN;
-	char freq_attr[22];
-	int gt_fd;
-
-	snprintf(freq_attr, sizeof(freq_attr), "freq0/%s_freq", freq_name);
-	gt_fd = xe_sysfs_gt_open(fd, gt_id);
-	igt_assert_lte(0, gt_fd);
-
-	while (ret == -EAGAIN)
-		ret = igt_sysfs_printf(gt_fd, freq_attr, "%u", freq);
-
-	close(gt_fd);
-	return ret;
-}
-
-static uint32_t get_freq(int fd, int gt_id, const char *freq_name)
-{
-	uint32_t freq;
-	int err = -EAGAIN;
-	char freq_attr[22];
-	int gt_fd;
-
-	snprintf(freq_attr, sizeof(freq_attr), "freq0/%s_freq", freq_name);
-	gt_fd = xe_sysfs_gt_open(fd, gt_id);
-	igt_assert_lte(0, gt_fd);
-
-	while (err == -EAGAIN)
-		err = igt_sysfs_scanf(gt_fd, freq_attr, "%u", &freq);
-
-	igt_debug("gt%d: %s freq %u\n", gt_id, freq_name, freq);
-
-	close(gt_fd);
-	return freq;
-}
-
 static bool within_expected_range(uint32_t freq, uint32_t val)
 {
 	/*
@@ -134,8 +98,8 @@ static void test_throttle_basic_api(int fd, int gt_id)
 
 static void test_freq_basic_api(int fd, int gt_id)
 {
-	uint32_t rpn = get_freq(fd, gt_id, "rpn");
-	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
+	uint32_t rpn = xe_gt_get_freq(fd, gt_id, "rpn");
+	uint32_t rp0 = xe_gt_get_freq(fd, gt_id, "rp0");
 	uint32_t rpmid = (rp0 + rpn) / 2;
 	uint32_t min_freq, max_freq;
 
@@ -144,29 +108,29 @@ static void test_freq_basic_api(int fd, int gt_id)
 	 * RPn is the floor
 	 * RP0 is the ceiling
 	 */
-	igt_assert_lt(set_freq(fd, gt_id, "min", rpn - 1), 0);
-	igt_assert_lt(set_freq(fd, gt_id, "min", rp0 + 1), 0);
-	igt_assert_lt(set_freq(fd, gt_id, "max", rpn - 1), 0);
-	igt_assert_lt(set_freq(fd, gt_id, "max", rp0 + 1), 0);
+	igt_assert_lt(xe_gt_set_freq(fd, gt_id, "min", rpn - 1), 0);
+	igt_assert_lt(xe_gt_set_freq(fd, gt_id, "min", rp0 + 1), 0);
+	igt_assert_lt(xe_gt_set_freq(fd, gt_id, "max", rpn - 1), 0);
+	igt_assert_lt(xe_gt_set_freq(fd, gt_id, "max", rp0 + 1), 0);
 
 	/* Assert min requests are respected from rp0 to rpn */
-	igt_assert_lt(0, set_freq(fd, gt_id, "min", rp0));
-	igt_assert_eq_u32(get_freq(fd, gt_id, "min"), rp0);
-	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpmid));
-	min_freq = get_freq(fd, gt_id, "min");
+	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rp0));
+	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "min"), rp0);
+	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpmid));
+	min_freq = xe_gt_get_freq(fd, gt_id, "min");
 	/* SLPC can set min higher than rpmid - as it follows RPe */
 	igt_assert_lte_u32((rpmid - FREQ_UNIT_MHZ), min_freq);
-	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpn));
-	igt_assert_eq_u32(get_freq(fd, gt_id, "min"), rpn);
+	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpn));
+	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "min"), rpn);
 
 	/* Assert max requests are respected from rpn to rp0 */
-	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpn));
-	igt_assert_eq_u32(get_freq(fd, gt_id, "max"), rpn);
-	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpmid));
-	max_freq = get_freq(fd, gt_id, "max");
+	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpn));
+	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "max"), rpn);
+	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpmid));
+	max_freq = xe_gt_get_freq(fd, gt_id, "max");
 	igt_assert(within_expected_range(max_freq, rpmid));
-	igt_assert_lt(0, set_freq(fd, gt_id, "max", rp0));
-	igt_assert_eq_u32(get_freq(fd, gt_id, "max"), rp0);
+	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rp0));
+	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "max"), rp0);
 }
 
 /**
@@ -179,8 +143,8 @@ static void test_freq_basic_api(int fd, int gt_id)
 
 static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
 {
-	uint32_t rpn = get_freq(fd, gt_id, "rpn");
-	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
+	uint32_t rpn = xe_gt_get_freq(fd, gt_id, "rpn");
+	uint32_t rp0 = xe_gt_get_freq(fd, gt_id, "rp0");
 	uint32_t rpmid = (rp0 + rpn) / 2;
 	uint32_t cur_freq, act_freq;
 
@@ -192,50 +156,50 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
 	 * And let's do this for all the 2 known Render Performance (RP) values
 	 * RP0 and RPn and something in between.
 	 */
-	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpn));
-	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpn));
+	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpn));
+	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpn));
 	usleep(SLPC_FREQ_LATENCY_US);
-	igt_assert_eq_u32(get_freq(fd, gt_id, "cur"), rpn);
+	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "cur"), rpn);
 
 	if (gt_idle) {
-		/* Wait for GT to go in C6 as previous get_freq wakes up GT*/
+		/* Wait for GT to go in C6 as previous xe_gt_get_freq wakes up GT*/
 		igt_assert_f(igt_wait(xe_gt_is_in_c6(fd, gt_id), 1000, 10),
 			     "GT %d should be in C6\n", gt_id);
-		igt_assert(get_freq(fd, gt_id, "act") == 0);
+		igt_assert(xe_gt_get_freq(fd, gt_id, "act") == 0);
 	} else {
-		igt_assert_eq_u32(get_freq(fd, gt_id, "act"), rpn);
+		igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "act"), rpn);
 	}
 
-	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpmid));
-	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpmid));
+	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpmid));
+	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpmid));
 	usleep(SLPC_FREQ_LATENCY_US);
-	cur_freq = get_freq(fd, gt_id, "cur");
+	cur_freq = xe_gt_get_freq(fd, gt_id, "cur");
 	/* If rpmid is around RPe, we could see SLPC follow it */
 	igt_assert_lte_u32((rpmid - FREQ_UNIT_MHZ), cur_freq);
 
 	if (gt_idle) {
 		igt_assert_f(igt_wait(xe_gt_is_in_c6(fd, gt_id), 1000, 10),
 			     "GT %d should be in C6\n", gt_id);
-		igt_assert(get_freq(fd, gt_id, "act") == 0);
+		igt_assert(xe_gt_get_freq(fd, gt_id, "act") == 0);
 	} else {
-		act_freq = get_freq(fd, gt_id, "act");
+		act_freq = xe_gt_get_freq(fd, gt_id, "act");
 		igt_assert_lte_u32(act_freq, cur_freq + FREQ_UNIT_MHZ);
 	}
 
-	igt_assert_lt(0, set_freq(fd, gt_id, "min", rp0));
-	igt_assert_lt(0, set_freq(fd, gt_id, "max", rp0));
+	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rp0));
+	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rp0));
 	usleep(SLPC_FREQ_LATENCY_US);
 	/*
 	 * It is unlikely that PCODE will *always* respect any request above RPe
 	 * So for this level let's only check if GuC PC is doing its job
 	 * and respecting our request, by propagating it to the hardware.
 	 */
-	igt_assert_eq_u32(get_freq(fd, gt_id, "cur"), rp0);
+	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "cur"), rp0);
 
 	if (gt_idle) {
 		igt_assert_f(igt_wait(xe_gt_is_in_c6(fd, gt_id), 1000, 10),
 			     "GT %d should be in C6\n", gt_id);
-		igt_assert(get_freq(fd, gt_id, "act") == 0);
+		igt_assert(xe_gt_get_freq(fd, gt_id, "act") == 0);
 	}
 
 	igt_debug("Finished testing fixed request\n");
@@ -250,25 +214,25 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
  */
 static void test_freq_range(int fd, int gt_id, bool gt_idle)
 {
-	uint32_t rpn = get_freq(fd, gt_id, "rpn");
-	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
+	uint32_t rpn = xe_gt_get_freq(fd, gt_id, "rpn");
+	uint32_t rp0 = xe_gt_get_freq(fd, gt_id, "rp0");
 	uint32_t rpmid = (rp0 + rpn) / 2;
 	uint32_t cur, act;
 
 	igt_debug("Starting testing range request\n");
 
-	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpn));
-	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpmid));
+	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpn));
+	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpmid));
 	usleep(SLPC_FREQ_LATENCY_US);
-	cur = get_freq(fd, gt_id, "cur");
+	cur = xe_gt_get_freq(fd, gt_id, "cur");
 	igt_assert(rpn <= cur && cur <= rpmid + FREQ_UNIT_MHZ);
 
 	if (gt_idle) {
 		igt_assert_f(igt_wait(xe_gt_is_in_c6(fd, gt_id), 1000, 10),
 			     "GT %d should be in C6\n", gt_id);
-		igt_assert(get_freq(fd, gt_id, "act") == 0);
+		igt_assert(xe_gt_get_freq(fd, gt_id, "act") == 0);
 	} else {
-		act = get_freq(fd, gt_id, "act");
+		act = xe_gt_get_freq(fd, gt_id, "act");
 		igt_assert((rpn <= act) && (act <= cur + FREQ_UNIT_MHZ));
 	}
 
@@ -282,21 +246,21 @@ static void test_freq_range(int fd, int gt_id, bool gt_idle)
 
 static void test_freq_low_max(int fd, int gt_id)
 {
-	uint32_t rpn = get_freq(fd, gt_id, "rpn");
-	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
+	uint32_t rpn = xe_gt_get_freq(fd, gt_id, "rpn");
+	uint32_t rp0 = xe_gt_get_freq(fd, gt_id, "rp0");
 	uint32_t rpmid = (rp0 + rpn) / 2;
 
 	/*
 	 *  When max request < min request, max is ignored and min works like
 	 * a fixed one. Let's assert this assumption
 	 */
-	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpmid));
-	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpn));
+	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpmid));
+	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpn));
 	usleep(SLPC_FREQ_LATENCY_US);
 
 	/* Cur freq will follow RPe, which could be higher than min freq */
 	igt_assert_lte_u32((rpmid - FREQ_UNIT_MHZ),
-			   get_freq(fd, gt_id, "cur"));
+			   xe_gt_get_freq(fd, gt_id, "cur"));
 }
 
 /**
@@ -306,18 +270,18 @@ static void test_freq_low_max(int fd, int gt_id)
 
 static void test_suspend(int fd, int gt_id)
 {
-	uint32_t rpn = get_freq(fd, gt_id, "rpn");
+	uint32_t rpn = xe_gt_get_freq(fd, gt_id, "rpn");
 
-	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpn));
-	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpn));
+	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpn));
+	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpn));
 	usleep(SLPC_FREQ_LATENCY_US);
-	igt_assert_eq_u32(get_freq(fd, gt_id, "cur"), rpn);
+	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "cur"), rpn);
 
 	igt_system_suspend_autoresume(SUSPEND_STATE_S3,
 				      SUSPEND_TEST_NONE);
 
-	igt_assert_eq_u32(get_freq(fd, gt_id, "min"), rpn);
-	igt_assert_eq_u32(get_freq(fd, gt_id, "max"), rpn);
+	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "min"), rpn);
+	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "max"), rpn);
 }
 
 /**
@@ -330,24 +294,24 @@ static void test_suspend(int fd, int gt_id)
 
 static void test_reset(int fd, int gt_id, int cycles)
 {
-	uint32_t rpn = get_freq(fd, gt_id, "rpn");
+	uint32_t rpn = xe_gt_get_freq(fd, gt_id, "rpn");
 
 	for (int i = 0; i < cycles; i++) {
-		igt_assert_f(set_freq(fd, gt_id, "min", rpn) > 0,
+		igt_assert_f(xe_gt_set_freq(fd, gt_id, "min", rpn) > 0,
 			     "Failed after %d good cycles\n", i);
-		igt_assert_f(set_freq(fd, gt_id, "max", rpn) > 0,
+		igt_assert_f(xe_gt_set_freq(fd, gt_id, "max", rpn) > 0,
 			     "Failed after %d good cycles\n", i);
 		usleep(SLPC_FREQ_LATENCY_US);
-		igt_assert_f(get_freq(fd, gt_id, "cur") == rpn,
+		igt_assert_f(xe_gt_get_freq(fd, gt_id, "cur") == rpn,
 			     "Failed after %d good cycles\n", i);
 
 		xe_force_gt_reset_sync(fd, gt_id);
 
 		usleep(SLPC_FREQ_LATENCY_US);
 
-		igt_assert_f(get_freq(fd, gt_id, "min") == rpn,
+		igt_assert_f(xe_gt_get_freq(fd, gt_id, "min") == rpn,
 			     "Failed after %d good cycles\n", i);
-		igt_assert_f(get_freq(fd, gt_id, "max") == rpn,
+		igt_assert_f(xe_gt_get_freq(fd, gt_id, "max") == rpn,
 			     "Failed after %d good cycles\n", i);
 	}
 }
@@ -448,8 +412,8 @@ igt_main
 		stash_max = (uint32_t *) malloc(sizeof(uint32_t) * num_gts);
 
 		xe_for_each_gt(fd, gt) {
-			stash_min[gt] = get_freq(fd, gt, "min");
-			stash_max[gt] = get_freq(fd, gt, "max");
+			stash_min[gt] = xe_gt_get_freq(fd, gt, "min");
+			stash_max[gt] = xe_gt_get_freq(fd, gt, "max");
 		}
 	}
 
@@ -525,8 +489,8 @@ igt_main
 
 	igt_fixture {
 		xe_for_each_gt(fd, gt) {
-			set_freq(fd, gt, "max", stash_max[gt]);
-			set_freq(fd, gt, "min", stash_min[gt]);
+			xe_gt_set_freq(fd, gt, "max", stash_max[gt]);
+			xe_gt_set_freq(fd, gt, "min", stash_min[gt]);
 		}
 		free(stash_min);
 		free(stash_max);
-- 
2.38.1

