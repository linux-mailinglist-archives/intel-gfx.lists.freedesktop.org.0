Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C58B9513F9C
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 02:40:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05EA910F3FD;
	Fri, 29 Apr 2022 00:40:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02AB610F36A
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Apr 2022 00:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651192795; x=1682728795;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7cfcQlrqzohT93w7fqYsvADD9PGrKfXDWbWgN9g6VYs=;
 b=LOJYvSRuHu9TWfqoRnJGxo8btDq8eKsby9s6QXmWMSK7kGE7h7W/im5H
 DcGRRgv88aiLB3Yb21ft3nFbCSd1tp38HrtZ7KZVTyH+50Yhniz88nsbx
 Hk7Gw2J3MXB1My0ITvXioQ8a689cmKDJB/4lLF4Rl4VvGLYDv1EL9ohmW
 bz1NdBY/F/kN2NSISMGzFaIKq/gzyiCer3XI3zf3wtE4YHfDbsV6Vc+ir
 cDoDDqbYGmYDWKF+6sJq/zYidxEqE5rQxNX9sRbflwTMRqjlpOL9TuZxO
 tL/64nrmhjG5iJszdcmrzQisk2UGf1331R88snQWG/m8VmjZi9nvNu8M9 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10331"; a="329419333"
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="329419333"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 17:39:52 -0700
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="662069860"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 17:39:52 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Apr 2022 17:39:37 -0700
Message-Id: <05d98604a81d231d39bd5f4634faae9e6489131f.1651192357.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1651192357.git.ashutosh.dixit@intel.com>
References: <cover.1651192357.git.ashutosh.dixit@intel.com>
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
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Each gt contains an independent instance of pcode. Extend pcode functions
to interface with pcode on different gt's. To avoid creating dependency of
display functionality on intel_gt, new pcode function interfaces are
exposed in terms of uncore rather than intel_gt. Previous struct
drm_i915_private based pcode interfaces are preserved.

v2: Expose pcode functions in terms of uncore rather than gt (Jani/Rodrigo)

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 17 +++++++
 drivers/gpu/drm/i915/gt/intel_gt.h |  2 +
 drivers/gpu/drm/i915/i915_driver.c |  4 +-
 drivers/gpu/drm/i915/intel_pcode.c | 76 +++++++++++++++---------------
 drivers/gpu/drm/i915/intel_pcode.h | 29 +++++++++---
 5 files changed, 80 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 92394f13b42f..07cfe66dd0e8 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -28,6 +28,7 @@
 #include "intel_rps.h"
 #include "intel_gt_sysfs.h"
 #include "intel_uncore.h"
+#include "intel_pcode.h"
 #include "shmem_utils.h"
 
 static void __intel_gt_init_early(struct intel_gt *gt)
@@ -1240,3 +1241,19 @@ void intel_gt_invalidate_tlbs(struct intel_gt *gt)
 	intel_uncore_forcewake_put_delayed(uncore, FORCEWAKE_ALL);
 	mutex_unlock(&gt->tlb_invalidate_lock);
 }
+
+int intel_gt_pcode_init(struct drm_i915_private *i915)
+{
+	struct intel_gt *gt;
+	int id, ret;
+
+	for_each_gt(gt, i915, id) {
+		ret = intel_pcode_init(gt->uncore);
+		if (ret) {
+			drm_err(&gt->i915->drm, "gt %d: intel_pcode_init failed %d\n", id, ret);
+			return ret;
+		}
+	}
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 44c6cb63ccbc..241d833fdb1e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -125,6 +125,8 @@ void intel_gt_watchdog_work(struct work_struct *work);
 
 void intel_gt_invalidate_tlbs(struct intel_gt *gt);
 
+int intel_gt_pcode_init(struct drm_i915_private *i915);
+
 struct resource intel_pci_resource(struct pci_dev *pdev, int bar);
 
 #endif /* __INTEL_GT_H__ */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 90b0ce5051af..518d6e357017 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -629,7 +629,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 
 	intel_opregion_setup(dev_priv);
 
-	ret = intel_pcode_init(dev_priv);
+	ret = intel_gt_pcode_init(dev_priv);
 	if (ret)
 		goto err_msi;
 
@@ -1251,7 +1251,7 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
-	ret = intel_pcode_init(dev_priv);
+	ret = intel_gt_pcode_init(dev_priv);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
index ac727546868e..66020b2e461f 100644
--- a/drivers/gpu/drm/i915/intel_pcode.c
+++ b/drivers/gpu/drm/i915/intel_pcode.c
@@ -52,14 +52,12 @@ static int gen7_check_mailbox_status(u32 mbox)
 	}
 }
 
-static int __snb_pcode_rw(struct drm_i915_private *i915, u32 mbox,
+static int intel_pcode_rw(struct intel_uncore *uncore, u32 mbox,
 			  u32 *val, u32 *val1,
 			  int fast_timeout_us, int slow_timeout_ms,
 			  bool is_read)
 {
-	struct intel_uncore *uncore = &i915->uncore;
-
-	lockdep_assert_held(&i915->sb_lock);
+	lockdep_assert_held(&uncore->i915->sb_lock);
 
 	/*
 	 * GEN6_PCODE_* are outside of the forcewake domain, we can use
@@ -88,22 +86,22 @@ static int __snb_pcode_rw(struct drm_i915_private *i915, u32 mbox,
 	if (is_read && val1)
 		*val1 = intel_uncore_read_fw(uncore, GEN6_PCODE_DATA1);
 
-	if (GRAPHICS_VER(i915) > 6)
+	if (GRAPHICS_VER(uncore->i915) > 6)
 		return gen7_check_mailbox_status(mbox);
 	else
 		return gen6_check_mailbox_status(mbox);
 }
 
-int snb_pcode_read(struct drm_i915_private *i915, u32 mbox, u32 *val, u32 *val1)
+int intel_pcode_read(struct intel_uncore *uncore, u32 mbox, u32 *val, u32 *val1)
 {
 	int err;
 
-	mutex_lock(&i915->sb_lock);
-	err = __snb_pcode_rw(i915, mbox, val, val1, 500, 20, true);
-	mutex_unlock(&i915->sb_lock);
+	mutex_lock(&uncore->i915->sb_lock);
+	err = intel_pcode_rw(uncore, mbox, val, val1, 500, 20, true);
+	mutex_unlock(&uncore->i915->sb_lock);
 
 	if (err) {
-		drm_dbg(&i915->drm,
+		drm_dbg(&uncore->i915->drm,
 			"warning: pcode (read from mbox %x) mailbox access failed for %ps: %d\n",
 			mbox, __builtin_return_address(0), err);
 	}
@@ -111,18 +109,18 @@ int snb_pcode_read(struct drm_i915_private *i915, u32 mbox, u32 *val, u32 *val1)
 	return err;
 }
 
-int snb_pcode_write_timeout(struct drm_i915_private *i915, u32 mbox, u32 val,
-			    int fast_timeout_us, int slow_timeout_ms)
+int intel_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val,
+			      int fast_timeout_us, int slow_timeout_ms)
 {
 	int err;
 
-	mutex_lock(&i915->sb_lock);
-	err = __snb_pcode_rw(i915, mbox, &val, NULL,
+	mutex_lock(&uncore->i915->sb_lock);
+	err = intel_pcode_rw(uncore, mbox, &val, NULL,
 			     fast_timeout_us, slow_timeout_ms, false);
-	mutex_unlock(&i915->sb_lock);
+	mutex_unlock(&uncore->i915->sb_lock);
 
 	if (err) {
-		drm_dbg(&i915->drm,
+		drm_dbg(&uncore->i915->drm,
 			"warning: pcode (write of 0x%08x to mbox %x) mailbox access failed for %ps: %d\n",
 			val, mbox, __builtin_return_address(0), err);
 	}
@@ -130,18 +128,18 @@ int snb_pcode_write_timeout(struct drm_i915_private *i915, u32 mbox, u32 val,
 	return err;
 }
 
-static bool skl_pcode_try_request(struct drm_i915_private *i915, u32 mbox,
-				  u32 request, u32 reply_mask, u32 reply,
-				  u32 *status)
+static bool intel_pcode_try_request(struct intel_uncore *uncore, u32 mbox,
+				    u32 request, u32 reply_mask, u32 reply,
+				    u32 *status)
 {
-	*status = __snb_pcode_rw(i915, mbox, &request, NULL, 500, 0, true);
+	*status = intel_pcode_rw(uncore, mbox, &request, NULL, 500, 0, true);
 
 	return (*status == 0) && ((request & reply_mask) == reply);
 }
 
 /**
- * skl_pcode_request - send PCODE request until acknowledgment
- * @i915: device private
+ * intel_pcode_request - send PCODE request until acknowledgment
+ * @uncore: uncore
  * @mbox: PCODE mailbox ID the request is targeted for
  * @request: request ID
  * @reply_mask: mask used to check for request acknowledgment
@@ -158,16 +156,16 @@ static bool skl_pcode_try_request(struct drm_i915_private *i915, u32 mbox,
  * Returns 0 on success, %-ETIMEDOUT in case of a timeout, <0 in case of some
  * other error as reported by PCODE.
  */
-int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 request,
-		      u32 reply_mask, u32 reply, int timeout_base_ms)
+int intel_pcode_request(struct intel_uncore *uncore, u32 mbox, u32 request,
+			u32 reply_mask, u32 reply, int timeout_base_ms)
 {
 	u32 status;
 	int ret;
 
-	mutex_lock(&i915->sb_lock);
+	mutex_lock(&uncore->i915->sb_lock);
 
 #define COND \
-	skl_pcode_try_request(i915, mbox, request, reply_mask, reply, &status)
+	intel_pcode_try_request(uncore, mbox, request, reply_mask, reply, &status)
 
 	/*
 	 * Prime the PCODE by doing a request first. Normally it guarantees
@@ -193,35 +191,35 @@ int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 request,
 	 * requests, and for any quirks of the PCODE firmware that delays
 	 * the request completion.
 	 */
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(&uncore->i915->drm,
 		    "PCODE timeout, retrying with preemption disabled\n");
-	drm_WARN_ON_ONCE(&i915->drm, timeout_base_ms > 3);
+	drm_WARN_ON_ONCE(&uncore->i915->drm, timeout_base_ms > 3);
 	preempt_disable();
 	ret = wait_for_atomic(COND, 50);
 	preempt_enable();
 
 out:
-	mutex_unlock(&i915->sb_lock);
+	mutex_unlock(&uncore->i915->sb_lock);
 	return status ? status : ret;
 #undef COND
 }
 
-int intel_pcode_init(struct drm_i915_private *i915)
+int intel_pcode_init(struct intel_uncore *uncore)
 {
-	int ret = 0;
+	int ret;
 
-	if (!IS_DGFX(i915))
-		return ret;
+	if (!IS_DGFX(uncore->i915))
+		return 0;
 
-	ret = skl_pcode_request(i915, DG1_PCODE_STATUS,
-				DG1_UNCORE_GET_INIT_STATUS,
-				DG1_UNCORE_INIT_STATUS_COMPLETE,
-				DG1_UNCORE_INIT_STATUS_COMPLETE, 180000);
+	ret = intel_pcode_request(uncore, DG1_PCODE_STATUS,
+				  DG1_UNCORE_GET_INIT_STATUS,
+				  DG1_UNCORE_INIT_STATUS_COMPLETE,
+				  DG1_UNCORE_INIT_STATUS_COMPLETE, 180000);
 
-	drm_dbg(&i915->drm, "PCODE init status %d\n", ret);
+	drm_dbg(&uncore->i915->drm, "PCODE init status %d\n", ret);
 
 	if (ret)
-		drm_err(&i915->drm, "Pcode did not report uncore initialization completion!\n");
+		drm_err(&uncore->i915->drm, "Pcode did not report uncore initialization completion!\n");
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/intel_pcode.h b/drivers/gpu/drm/i915/intel_pcode.h
index 0962a17fac48..a03d4ef688aa 100644
--- a/drivers/gpu/drm/i915/intel_pcode.h
+++ b/drivers/gpu/drm/i915/intel_pcode.h
@@ -8,17 +8,32 @@
 
 #include <linux/types.h>
 
+struct intel_uncore;
 struct drm_i915_private;
 
-int snb_pcode_read(struct drm_i915_private *i915, u32 mbox, u32 *val, u32 *val1);
-int snb_pcode_write_timeout(struct drm_i915_private *i915, u32 mbox, u32 val,
-			    int fast_timeout_us, int slow_timeout_ms);
-#define snb_pcode_write(i915, mbox, val)			\
+int intel_pcode_read(struct intel_uncore *uncore, u32 mbox, u32 *val, u32 *val1);
+
+int intel_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val,
+			      int fast_timeout_us, int slow_timeout_ms);
+
+#define intel_pcode_write(uncore, mbox, val) \
+	intel_pcode_write_timeout(uncore, mbox, val, 500, 0)
+
+int intel_pcode_request(struct intel_uncore *uncore, u32 mbox, u32 request,
+			u32 reply_mask, u32 reply, int timeout_base_ms);
+
+#define snb_pcode_read(i915, mbox, val, val1) \
+	intel_pcode_read(&(i915)->uncore, mbox, val, val1)
+
+#define snb_pcode_write_timeout(i915, mbox, val, fast_timeout_us, slow_timeout_ms) \
+	intel_pcode_write_timeout(&(i915)->uncore, mbox, val, fast_timeout_us, slow_timeout_ms)
+
+#define snb_pcode_write(i915, mbox, val) \
 	snb_pcode_write_timeout(i915, mbox, val, 500, 0)
 
-int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 request,
-		      u32 reply_mask, u32 reply, int timeout_base_ms);
+#define skl_pcode_request(i915, mbox, request, reply_mask, reply, timeout_base_ms) \
+	intel_pcode_request(&(i915)->uncore, mbox, request, reply_mask, reply, timeout_base_ms)
 
-int intel_pcode_init(struct drm_i915_private *i915);
+int intel_pcode_init(struct intel_uncore *uncore);
 
 #endif /* _INTEL_PCODE_H */
-- 
2.34.1

