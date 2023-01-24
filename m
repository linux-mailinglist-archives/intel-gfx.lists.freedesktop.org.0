Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB28679BA2
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 15:22:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E1A410E68B;
	Tue, 24 Jan 2023 14:22:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74BAE10E68B
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 14:22:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674570146; x=1706106146;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gYI6cwGq147BlTc4MBP++o/G/PrhqYqGZbdIjTdnDhI=;
 b=CVVb+GJYDvecTwmdZq98xewrCGxJGMlkjqEh1/pejwcYfuIgrrKdhiYR
 gjf0e/wXuSlU0SC6s+d106xhy6WSUaWRlVNZoS0nJAoH3o01f7vZByHjj
 2+2a0ug3kSE9WTMuZ/cd5El4La4ysmuQoqxV++9uhfJryJIqdaGGmMrwW
 mqmXjtKQ15uA7ZPF9IYMcTYYs1iDXcYl94c29MJjRb8r2sMf9d+/55wKW
 EKVXxbNmJw9oIkoTfoNDSbM0WNvNwYjxdPAHaPOritvb5DbYtpSBdxf6X
 Ihev0I8Obr5xI+xC2RctDRo5cjNSI8Pl1d11R9PfkQb05oAFGMYa2N9wc w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="328390346"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="328390346"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 06:22:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="907509766"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="907509766"
Received: from nirmoyda-desk.igk.intel.com ([10.102.42.231])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 06:22:23 -0800
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Jan 2023 15:22:12 +0100
Message-Id: <20230124142212.18498-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/xehpsdv/selftests: Flush all tiles on
 test exit
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
Cc: Nirmoy Das <nirmoy.das@intel.com>, chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

We want to idle all tiles when exiting selftests.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 .../gpu/drm/i915/selftests/igt_flush_test.c   | 28 +++++++++++--------
 1 file changed, 17 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/igt_flush_test.c b/drivers/gpu/drm/i915/selftests/igt_flush_test.c
index b484e12df417..29110abb4fe0 100644
--- a/drivers/gpu/drm/i915/selftests/igt_flush_test.c
+++ b/drivers/gpu/drm/i915/selftests/igt_flush_test.c
@@ -14,21 +14,27 @@
 
 int igt_flush_test(struct drm_i915_private *i915)
 {
-	struct intel_gt *gt = to_gt(i915);
-	int ret = intel_gt_is_wedged(gt) ? -EIO : 0;
+	struct intel_gt *gt;
+	unsigned int i;
+	int ret = 0;
 
-	cond_resched();
+	for_each_gt(gt, i915, i) {
+		if (intel_gt_is_wedged(gt))
+			ret = -EIO;
 
-	if (intel_gt_wait_for_idle(gt, HZ * 3) == -ETIME) {
-		pr_err("%pS timed out, cancelling all further testing.\n",
-		       __builtin_return_address(0));
+		cond_resched();
 
-		GEM_TRACE("%pS timed out.\n",
-			  __builtin_return_address(0));
-		GEM_TRACE_DUMP();
+		if (intel_gt_wait_for_idle(gt, HZ * 3) == -ETIME) {
+			pr_err("%pS timed out, cancelling all further testing.\n",
+			       __builtin_return_address(0));
 
-		intel_gt_set_wedged(gt);
-		ret = -EIO;
+			GEM_TRACE("%pS timed out.\n",
+				  __builtin_return_address(0));
+			GEM_TRACE_DUMP();
+
+			intel_gt_set_wedged(gt);
+			ret = -EIO;
+		}
 	}
 
 	return ret;
-- 
2.39.0

