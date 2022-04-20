Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E57D50811D
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 08:25:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45B2F10F190;
	Wed, 20 Apr 2022 06:25:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DB2210F190
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 06:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650435918; x=1681971918;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=a6WESD2vcG8xRgZcmWrZmNZcu4tGuOHKHFcqxe+K5qc=;
 b=bjvjv0FE72p6FurgCzyjzE3gRVOkcJzkElHLOMzWeS1HmXExtBVCCLYL
 wL9V7BNRn3oDbNthJUg16Zz6Qy6Bt1uUuWp7WA3WslX5dYvnqfFiLPblJ
 kAkvEHFxCKYpIs+YZIxsHXn2sCt/0022QNuqCSc1C3Q+/sbQGpPgjzz01
 OSlCWBoB0LSnxztRbZaYDSkbioMX/Fb9g3BYWqxS9RuQ6aNFIt8Y8jvli
 MIu75pyMw69iyKaVveId4VY33W6tj2sO2aeFByOLLdVjeqtWhII1YZXlJ
 BQfCi5HSXUY5A/4hTIO9Ama53n75ATUtKmQmHKpjD7EcCHECQpdktBR0v A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="289055125"
X-IronPort-AV: E=Sophos;i="5.90,274,1643702400"; d="scan'208";a="289055125"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 23:25:15 -0700
X-IronPort-AV: E=Sophos;i="5.90,274,1643702400"; d="scan'208";a="529618335"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 23:25:14 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Apr 2022 23:25:03 -0700
Message-Id: <2e9c13234fe510235688e774d70326870eb7e219.1650435571.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1650435571.git.ashutosh.dixit@intel.com>
References: <cover.1650435571.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/9] drm/i915/pcode: Extend pcode functions for
 multiple gt's
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

Each gt contains an independent instance of pcode. Extend pcode functions
to interface with pcode on different gt's. Previous (GT0) pcode read/write
interfaces are preserved.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Mike Ruhl <michael.j.ruhl@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/intel_pcode.c | 108 ++++++++++++++++-------------
 drivers/gpu/drm/i915/intel_pcode.h |  27 ++++++--
 2 files changed, 82 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
index ac727546868e..0cff212cc81b 100644
--- a/drivers/gpu/drm/i915/intel_pcode.c
+++ b/drivers/gpu/drm/i915/intel_pcode.c
@@ -6,6 +6,7 @@
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_pcode.h"
+#include "gt/intel_gt.h"
 
 static int gen6_check_mailbox_status(u32 mbox)
 {
@@ -52,14 +53,14 @@ static int gen7_check_mailbox_status(u32 mbox)
 	}
 }
 
-static int __snb_pcode_rw(struct drm_i915_private *i915, u32 mbox,
-			  u32 *val, u32 *val1,
-			  int fast_timeout_us, int slow_timeout_ms,
-			  bool is_read)
+static int __gt_pcode_rw(struct intel_gt *gt, u32 mbox,
+			 u32 *val, u32 *val1,
+			 int fast_timeout_us, int slow_timeout_ms,
+			 bool is_read)
 {
-	struct intel_uncore *uncore = &i915->uncore;
+	struct intel_uncore *uncore = gt->uncore;
 
-	lockdep_assert_held(&i915->sb_lock);
+	lockdep_assert_held(&gt->i915->sb_lock);
 
 	/*
 	 * GEN6_PCODE_* are outside of the forcewake domain, we can use
@@ -88,60 +89,60 @@ static int __snb_pcode_rw(struct drm_i915_private *i915, u32 mbox,
 	if (is_read && val1)
 		*val1 = intel_uncore_read_fw(uncore, GEN6_PCODE_DATA1);
 
-	if (GRAPHICS_VER(i915) > 6)
+	if (GRAPHICS_VER(gt->i915) > 6)
 		return gen7_check_mailbox_status(mbox);
 	else
 		return gen6_check_mailbox_status(mbox);
 }
 
-int snb_pcode_read(struct drm_i915_private *i915, u32 mbox, u32 *val, u32 *val1)
+int intel_gt_pcode_read(struct intel_gt *gt, u32 mbox, u32 *val, u32 *val1)
 {
 	int err;
 
-	mutex_lock(&i915->sb_lock);
-	err = __snb_pcode_rw(i915, mbox, val, val1, 500, 20, true);
-	mutex_unlock(&i915->sb_lock);
+	mutex_lock(&gt->i915->sb_lock);
+	err = __gt_pcode_rw(gt, mbox, val, val1, 500, 20, true);
+	mutex_unlock(&gt->i915->sb_lock);
 
 	if (err) {
-		drm_dbg(&i915->drm,
-			"warning: pcode (read from mbox %x) mailbox access failed for %ps: %d\n",
-			mbox, __builtin_return_address(0), err);
+		drm_dbg(&gt->i915->drm,
+			"gt %d: warning: pcode (read from mbox %x) mailbox access failed for %ps: %d\n",
+			gt->info.id, mbox, __builtin_return_address(0), err);
 	}
 
 	return err;
 }
 
-int snb_pcode_write_timeout(struct drm_i915_private *i915, u32 mbox, u32 val,
-			    int fast_timeout_us, int slow_timeout_ms)
+int intel_gt_pcode_write_timeout(struct intel_gt *gt, u32 mbox, u32 val,
+				 int fast_timeout_us, int slow_timeout_ms)
 {
 	int err;
 
-	mutex_lock(&i915->sb_lock);
-	err = __snb_pcode_rw(i915, mbox, &val, NULL,
-			     fast_timeout_us, slow_timeout_ms, false);
-	mutex_unlock(&i915->sb_lock);
+	mutex_lock(&gt->i915->sb_lock);
+	err = __gt_pcode_rw(gt, mbox, &val, NULL,
+			    fast_timeout_us, slow_timeout_ms, false);
+	mutex_unlock(&gt->i915->sb_lock);
 
 	if (err) {
-		drm_dbg(&i915->drm,
-			"warning: pcode (write of 0x%08x to mbox %x) mailbox access failed for %ps: %d\n",
-			val, mbox, __builtin_return_address(0), err);
+		drm_dbg(&gt->i915->drm,
+			"gt %d: warning: pcode (write of 0x%08x to mbox %x) mailbox access failed for %ps: %d\n",
+			gt->info.id, val, mbox, __builtin_return_address(0), err);
 	}
 
 	return err;
 }
 
-static bool skl_pcode_try_request(struct drm_i915_private *i915, u32 mbox,
-				  u32 request, u32 reply_mask, u32 reply,
-				  u32 *status)
+static bool __gt_pcode_try_request(struct intel_gt *gt, u32 mbox,
+				   u32 request, u32 reply_mask, u32 reply,
+				   u32 *status)
 {
-	*status = __snb_pcode_rw(i915, mbox, &request, NULL, 500, 0, true);
+	*status = __gt_pcode_rw(gt, mbox, &request, NULL, 500, 0, true);
 
 	return (*status == 0) && ((request & reply_mask) == reply);
 }
 
 /**
- * skl_pcode_request - send PCODE request until acknowledgment
- * @i915: device private
+ * intel_gt_pcode_request - send PCODE request until acknowledgment
+ * @gt: gt
  * @mbox: PCODE mailbox ID the request is targeted for
  * @request: request ID
  * @reply_mask: mask used to check for request acknowledgment
@@ -158,16 +159,16 @@ static bool skl_pcode_try_request(struct drm_i915_private *i915, u32 mbox,
  * Returns 0 on success, %-ETIMEDOUT in case of a timeout, <0 in case of some
  * other error as reported by PCODE.
  */
-int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 request,
-		      u32 reply_mask, u32 reply, int timeout_base_ms)
+int intel_gt_pcode_request(struct intel_gt *gt, u32 mbox, u32 request,
+			   u32 reply_mask, u32 reply, int timeout_base_ms)
 {
 	u32 status;
 	int ret;
 
-	mutex_lock(&i915->sb_lock);
+	mutex_lock(&gt->i915->sb_lock);
 
 #define COND \
-	skl_pcode_try_request(i915, mbox, request, reply_mask, reply, &status)
+	__gt_pcode_try_request(gt, mbox, request, reply_mask, reply, &status)
 
 	/*
 	 * Prime the PCODE by doing a request first. Normally it guarantees
@@ -193,35 +194,48 @@ int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 request,
 	 * requests, and for any quirks of the PCODE firmware that delays
 	 * the request completion.
 	 */
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(&gt->i915->drm,
 		    "PCODE timeout, retrying with preemption disabled\n");
-	drm_WARN_ON_ONCE(&i915->drm, timeout_base_ms > 3);
+	drm_WARN_ON_ONCE(&gt->i915->drm, timeout_base_ms > 3);
 	preempt_disable();
 	ret = wait_for_atomic(COND, 50);
 	preempt_enable();
 
 out:
-	mutex_unlock(&i915->sb_lock);
+	mutex_unlock(&gt->i915->sb_lock);
 	return status ? status : ret;
 #undef COND
 }
 
+static int __gt_pcode_init(struct intel_gt *gt)
+{
+	int ret = intel_gt_pcode_request(gt, DG1_PCODE_STATUS,
+					 DG1_UNCORE_GET_INIT_STATUS,
+					 DG1_UNCORE_INIT_STATUS_COMPLETE,
+					 DG1_UNCORE_INIT_STATUS_COMPLETE, 180000);
+
+	drm_dbg(&gt->i915->drm, "gt %d: PCODE init status %d\n", gt->info.id, ret);
+
+	if (ret)
+		drm_err(&gt->i915->drm, "gt %d: Pcode did not report uncore initialization completion!\n",
+			gt->info.id);
+
+	return ret;
+}
+
 int intel_pcode_init(struct drm_i915_private *i915)
 {
-	int ret = 0;
+	struct intel_gt *gt;
+	int i, ret = 0;
 
 	if (!IS_DGFX(i915))
 		return ret;
 
-	ret = skl_pcode_request(i915, DG1_PCODE_STATUS,
-				DG1_UNCORE_GET_INIT_STATUS,
-				DG1_UNCORE_INIT_STATUS_COMPLETE,
-				DG1_UNCORE_INIT_STATUS_COMPLETE, 180000);
-
-	drm_dbg(&i915->drm, "PCODE init status %d\n", ret);
-
-	if (ret)
-		drm_err(&i915->drm, "Pcode did not report uncore initialization completion!\n");
+	for_each_gt(gt, i915, i) {
+		ret = __gt_pcode_init(gt);
+		if (ret)
+			return ret;
+	}
 
-	return ret;
+	return 0;
 }
diff --git a/drivers/gpu/drm/i915/intel_pcode.h b/drivers/gpu/drm/i915/intel_pcode.h
index 0962a17fac48..96c954ec91f9 100644
--- a/drivers/gpu/drm/i915/intel_pcode.h
+++ b/drivers/gpu/drm/i915/intel_pcode.h
@@ -8,16 +8,31 @@
 
 #include <linux/types.h>
 
+struct intel_gt;
 struct drm_i915_private;
 
-int snb_pcode_read(struct drm_i915_private *i915, u32 mbox, u32 *val, u32 *val1);
-int snb_pcode_write_timeout(struct drm_i915_private *i915, u32 mbox, u32 val,
-			    int fast_timeout_us, int slow_timeout_ms);
-#define snb_pcode_write(i915, mbox, val)			\
+int intel_gt_pcode_read(struct intel_gt *gt, u32 mbox, u32 *val, u32 *val1);
+
+int intel_gt_pcode_write_timeout(struct intel_gt *gt, u32 mbox, u32 val,
+				 int fast_timeout_us, int slow_timeout_ms);
+
+#define intel_gt_pcode_write(gt, mbox, val) \
+	intel_gt_pcode_write_timeout(gt, mbox, val, 500, 0)
+
+int intel_gt_pcode_request(struct intel_gt *gt, u32 mbox, u32 request,
+			   u32 reply_mask, u32 reply, int timeout_base_ms);
+
+#define snb_pcode_read(i915, mbox, val, val1) \
+	intel_gt_pcode_read(&(i915)->gt0, mbox, val, val1)
+
+#define snb_pcode_write_timeout(i915, mbox, val, fast_timeout_us, slow_timeout_ms) \
+	intel_gt_pcode_write_timeout(&(i915)->gt0, mbox, val, fast_timeout_us, slow_timeout_ms)
+
+#define snb_pcode_write(i915, mbox, val) \
 	snb_pcode_write_timeout(i915, mbox, val, 500, 0)
 
-int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 request,
-		      u32 reply_mask, u32 reply, int timeout_base_ms);
+#define skl_pcode_request(i915, mbox, request, reply_mask, reply, timeout_base_ms) \
+	intel_gt_pcode_request(&(i915)->gt0, mbox, request, reply_mask, reply, timeout_base_ms)
 
 int intel_pcode_init(struct drm_i915_private *i915);
 
-- 
2.34.1

