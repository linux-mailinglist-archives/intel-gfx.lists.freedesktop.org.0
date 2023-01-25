Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0466767AF18
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 11:00:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 849BE10E760;
	Wed, 25 Jan 2023 10:00:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47D7410E760
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 10:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674640822; x=1706176822;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gXsyCDMPIPucn9fwFPscY7N4HeszXotslQfV88XXBX0=;
 b=kcf0bNXC5eEwXr7wUxC922NiBEhFawY6LsI3TUQloqBhnRLYhle13qB2
 zg+5pbJGuZrJanuGGAfx+e0D24P4tnz2F+lVKbWzBkGlUKPAFkJPxU/h7
 Crd7rVgXs2bZzgiRG5rnTBPwFwWt26+VjwdSW7xc31B7oxan/D/FgtYJT
 zkKupr8rvg44rmo4u/383kOotZ85xDw8C6IGaXE/EeZb0v7UEp3qUAP2h
 FQ2ahy6pSW8AersQyn8bOojJ5tni4Aaz3S+oMuh7ohX0QGQXoN3j6d2+3
 PhhXcWsEYZHe1rU77ycl1RUAYlGnivUtlUu5b/JIXLxymKVx7rimlZTVJ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="306182892"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="306182892"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 02:00:21 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="664393864"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="664393864"
Received: from nirmoyda-desk.igk.intel.com ([10.102.42.231])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 02:00:10 -0800
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Jan 2023 11:00:03 +0100
Message-Id: <20230125100003.18243-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl/selftests: Flush all tiles on test
 exit
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
Cc: Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

We want to idle all tiles when exiting selftests.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
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

