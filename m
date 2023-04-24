Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B07996ECE56
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 15:31:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 108F410E500;
	Mon, 24 Apr 2023 13:31:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DDB110E500
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Apr 2023 13:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682343084; x=1713879084;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cpEA1svl/UXXZnq1WmAvHbE1XfHXjsFDaqTtCEeYJfM=;
 b=Nxbh9Nl3+Oo0c6skuHPjIlLSxzvmwvE8WFrnrKB5fkbjWWqn+LSrjxku
 hOvwAFntAWKBmaPO5Q+769t3PRr4GsgDtTwTfX7c+2dhH+hgD3WQXdeSq
 Ywa4YfuC3o5JvCdpPmMNVl6VlRDVab2lPRCRTjnrmU13yzOJplA2Qam1B
 JrEO07hB2aY6+lmDf9Urftlz+wRj4TkueouHbhmsr4h52wusXkXvIKDAq
 7WRQEzNGej7xXmUvhwZWWkax7rYYRA/aUH1DIk30jMATLAP+TpcvAc4rH
 558vNoBEoFzqIHnpI7TwglhZDRnvTZp/mvyXA3o0qJHRBS7tFRUKz8Y/Q Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="343936753"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="343936753"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 06:31:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="643365274"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="643365274"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by orsmga003.jf.intel.com with ESMTP; 24 Apr 2023 06:31:21 -0700
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Apr 2023 19:06:07 +0530
Message-Id: <20230424133607.3736825-1-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/selftest: Record GT error for gt
 failure
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
Cc: Andi Shyti <andi.shyti@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

igt_live_test has pr_err dumped in case of some
GT failures. It will be more informative regarding
GT if we use gt_err instead.

Cc: Andi Shyti <andi.shyti@intel.com>
Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/selftests/igt_live_test.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/igt_live_test.c b/drivers/gpu/drm/i915/selftests/igt_live_test.c
index 714b7afc490b..4ddc6d902752 100644
--- a/drivers/gpu/drm/i915/selftests/igt_live_test.c
+++ b/drivers/gpu/drm/i915/selftests/igt_live_test.c
@@ -6,6 +6,7 @@
 
 #include "i915_drv.h"
 #include "gt/intel_gt.h"
+#include "gt/intel_gt_print.h"
 
 #include "../i915_selftest.h"
 #include "igt_flush_test.h"
@@ -30,7 +31,7 @@ int igt_live_test_begin(struct igt_live_test *t,
 
 		err = intel_gt_wait_for_idle(gt, MAX_SCHEDULE_TIMEOUT);
 		if (err) {
-			pr_err("%s(%s): failed to idle before, with err=%d!",
+			gt_err(gt, "%s(%s): GT failed to idle before, with err=%d!",
 			       func, name, err);
 			return err;
 		}
@@ -69,7 +70,7 @@ int igt_live_test_end(struct igt_live_test *t)
 			    i915_reset_engine_count(&i915->gpu_error, engine))
 				continue;
 
-			pr_err("%s(%s): engine '%s' was reset %d times!\n",
+			gt_err(gt, "%s(%s): engine '%s' was reset %d times!\n",
 			       t->func, t->name, engine->name,
 			       i915_reset_engine_count(&i915->gpu_error, engine) -
 			       t->reset_engine[id]);
-- 
2.25.1

