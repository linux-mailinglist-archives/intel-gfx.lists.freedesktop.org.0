Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB8B783102
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 21:42:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE3D110E21B;
	Mon, 21 Aug 2023 19:42:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB22E10E21B;
 Mon, 21 Aug 2023 19:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692646956; x=1724182956;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gv2jGDk9aMeoJS4sHyxOWQ0ez1G5gOjPnr+6S/oGKGw=;
 b=P2gkScCw89dqwr7kKG6Nl+QnALiqlVfIyU5lXCOT5WtSE0mEwRu+b6Cd
 6X6IbhOkJ1iZZUUk0YZfjYsYKX5lTvMUznOZk2VzIWP23YKczA9dGcbna
 9kMIaFS6RzJzCKYRmkpzHAFIHOBC7aOPuIxwHfPd6p4YsiTZcjIFFw6rH
 v7Su8bLg9ZEJ2QXQ6RKUPmEbUk5GfYI1Y0Y6rBvZriYPRYepr9kFiihda
 Lv9EYefvOh0jSMZK5/u9Kul0v7bl+GNa1rizUX7r5BOpgl9msV0XcFDTS
 IbHan/j4l0PWlKQEeVyTSVgr0I8E6drpUB4pEOsQsFXa5Kmwcca91yal0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="372585086"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="372585086"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 12:42:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="826057544"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="826057544"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Aug 2023 12:42:35 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Mon, 21 Aug 2023 12:40:27 -0700
Message-Id: <20230821194027.1345552-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 i-g-t] tests/i915_pm_freq_api: Ignore zero
 register value
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

Register read for requested_freq can return 0 when system is
in runtime_pm. Make allowance for this case.

v2: Explicit check for runtime_pm status (Riana)
v3: Revert back to v1, the runtime util functions do not work
as expected.

Link: https://gitlab.freedesktop.org/drm/intel/issues/8736
Link: https://gitlab.freedesktop.org/drm/intel/issues/8989

Reviewed-by: Riana Tauro <riana.tauro@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/i915/i915_pm_freq_api.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/tests/i915/i915_pm_freq_api.c b/tests/i915/i915_pm_freq_api.c
index cf21cc936..9c71411ee 100644
--- a/tests/i915/i915_pm_freq_api.c
+++ b/tests/i915/i915_pm_freq_api.c
@@ -88,6 +88,7 @@ static void test_freq_basic_api(int dirfd, int gt)
 static void test_reset(int i915, int dirfd, int gt, int count)
 {
 	uint32_t rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
+	uint32_t req_freq;
 	int fd;
 
 	for (int i = 0; i < count; i++) {
@@ -95,14 +96,18 @@ static void test_reset(int i915, int dirfd, int gt, int count)
 		igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
 		igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
 		usleep(ACT_FREQ_LATENCY_US);
-		igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
+		req_freq = get_freq(dirfd, RPS_CUR_FREQ_MHZ);
+		if (req_freq)
+			igt_assert_eq(req_freq, rpn);
 
 		/* Manually trigger a GT reset */
 		fd = igt_debugfs_gt_open(i915, gt, "reset", O_WRONLY);
 		igt_require(fd >= 0);
 		igt_ignore_warn(write(fd, "1\n", 2));
 
-		igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
+		req_freq = get_freq(dirfd, RPS_CUR_FREQ_MHZ);
+		if (req_freq)
+			igt_assert_eq(req_freq, rpn);
 	}
 	close(fd);
 }
@@ -110,17 +115,22 @@ static void test_reset(int i915, int dirfd, int gt, int count)
 static void test_suspend(int i915, int dirfd, int gt)
 {
 	uint32_t rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
+	uint32_t req_freq;
 
 	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
 	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
 	usleep(ACT_FREQ_LATENCY_US);
-	igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
+	req_freq = get_freq(dirfd, RPS_CUR_FREQ_MHZ);
+	if (req_freq)
+		igt_assert_eq(req_freq, rpn);
 
 	/* Manually trigger a suspend */
 	igt_system_suspend_autoresume(SUSPEND_STATE_S3,
 				      SUSPEND_TEST_NONE);
 
-	igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
+	req_freq = get_freq(dirfd, RPS_CUR_FREQ_MHZ);
+	if (req_freq)
+		igt_assert_eq(req_freq, rpn);
 }
 
 int i915 = -1;
-- 
2.38.1

