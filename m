Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16442775001
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Aug 2023 02:52:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6F3F10E21F;
	Wed,  9 Aug 2023 00:52:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFA1010E05A;
 Wed,  9 Aug 2023 00:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691542332; x=1723078332;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0LH153z4vVQT0ynDIO4kxqg8qKM3IBG2Y+L79HRY15c=;
 b=flxPAyYeOve6DF3wDo5Gkg2pgcaS6JKQ59V/RThUtEQIgDynBRvX3/Vx
 +Z49ejdk+HH1cNO9ydzGxH8lPPBiAeF6TlKVSp7JIZJSzfFdr1fPHQ6mS
 9V54Wn/5I3xUOMoK3FNDhfA7rKYnVO/57E1+oHzzKVaxv1htGfrTHKUjD
 w4wklGqs00/PZWaE0vnIQyXKBcUyN+Ba8EzQIkp4UrBCLlsanw81iSmAH
 tjAQmRIr02fQw8LScxJNPfVG/gX4aigaLmYYaWPzmB81gQDtP0XfE3bLg
 aBF3idmHI+bfbXSXhaB2SpE+ogCSYS3GzDenB6P7y8wQVo9Vg9DC4NBQ3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="434872477"
X-IronPort-AV: E=Sophos;i="6.01,157,1684825200"; d="scan'208";a="434872477"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 17:52:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="821617628"
X-IronPort-AV: E=Sophos;i="6.01,157,1684825200"; d="scan'208";a="821617628"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Aug 2023 17:52:12 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Tue,  8 Aug 2023 17:50:14 -0700
Message-Id: <20230809005014.3451790-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915_pm_freq_api: Ignore zero
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

Link: https://gitlab.freedesktop.org/drm/intel/issues/8736
Link: https://gitlab.freedesktop.org/drm/intel/issues/8989

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

