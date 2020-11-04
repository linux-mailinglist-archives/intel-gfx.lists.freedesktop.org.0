Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C022A6581
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Nov 2020 14:48:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B62A56E9A6;
	Wed,  4 Nov 2020 13:47:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 660596E9A6
 for <Intel-gfx@lists.freedesktop.org>; Wed,  4 Nov 2020 13:47:57 +0000 (UTC)
IronPort-SDR: UCnqndjVkk9HvZeVUVMM05Ji6Mh1dYuSN8YvfRy7b/TtFBtWUGEoxW7naBFL7b0xUlCx5oe33e
 UEwM8W2zXDLA==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="169361297"
X-IronPort-AV: E=Sophos;i="5.77,451,1596524400"; d="scan'208";a="169361297"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 05:47:56 -0800
IronPort-SDR: LdXk2gRUkS92lyu4DuGbs4GIMQVKRmVN4Z/VrrBf5/X49meLZRuxKniQsQeYySLB0CjetSzrKa
 dtU93d0A6/dQ==
X-IronPort-AV: E=Sophos;i="5.77,451,1596524400"; d="scan'208";a="471228720"
Received: from marak-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.249.42.32])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 05:47:55 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed,  4 Nov 2020 13:47:42 +0000
Message-Id: <20201104134743.916027-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 1/2] drm/i915: Improve record of hung engines in
 error state
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Between events which trigger engine and GPU resets and capturing the error
state we lose information on which engine triggered the reset. Improve
this by passing in the hung engine mask down to error capture.

Result is that the list of engines in user visible "GPU HANG: ecode
<gen>:<engines>:<ecode>, <process>" is now a list of hanging and not just
active engines. Most importantly the displayed process is now the one
which was actually hung.

v2:
 * Stub prototype. (Chris)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c   |  2 ++
 drivers/gpu/drm/i915/gt/intel_reset.c |  2 +-
 drivers/gpu/drm/i915/i915_debugfs.c   |  2 +-
 drivers/gpu/drm/i915/i915_gpu_error.c | 35 ++++++++++++++++++---------
 drivers/gpu/drm/i915/i915_gpu_error.h | 10 +++++---
 5 files changed, 34 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index f3eb68a76a25..8a51c1c3a091 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3037,6 +3037,8 @@ static struct execlists_capture *capture_regs(struct intel_engine_cs *engine)
 	if (!cap->error->gt->engine)
 		goto err_gt;
 
+	cap->error->gt->engine->hung = true;
+
 	return cap;
 
 err_gt:
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 4e5e13dc95da..9fb4306b2900 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1251,7 +1251,7 @@ void intel_gt_handle_error(struct intel_gt *gt,
 	engine_mask &= gt->info.engine_mask;
 
 	if (flags & I915_ERROR_CAPTURE) {
-		i915_capture_error_state(gt->i915);
+		i915_capture_error_state(gt, engine_mask);
 		intel_gt_clear_error_registers(gt, engine_mask);
 	}
 
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 200f6b86f864..77e76b665098 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -725,7 +725,7 @@ static int i915_gpu_info_open(struct inode *inode, struct file *file)
 
 	gpu = NULL;
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
-		gpu = i915_gpu_coredump(i915);
+		gpu = i915_gpu_coredump(&i915->gt, ALL_ENGINES);
 	if (IS_ERR(gpu))
 		return PTR_ERR(gpu);
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index b3f3a2e07408..857db66cc4a3 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -570,6 +570,7 @@ static void error_print_engine(struct drm_i915_error_state_buf *m,
 				   ee->vm_info.pp_dir_base);
 		}
 	}
+	err_printf(m, "  hung: %u\n", ee->hung);
 	err_printf(m, "  engine reset count: %u\n", ee->reset_count);
 
 	for (n = 0; n < ee->num_ports; n++) {
@@ -1456,6 +1457,7 @@ capture_engine(struct intel_engine_cs *engine,
 
 static void
 gt_record_engines(struct intel_gt_coredump *gt,
+		  intel_engine_mask_t engine_mask,
 		  struct i915_vma_compress *compress)
 {
 	struct intel_engine_cs *engine;
@@ -1471,6 +1473,8 @@ gt_record_engines(struct intel_gt_coredump *gt,
 		if (!ee)
 			continue;
 
+		ee->hung = engine->mask & engine_mask;
+
 		gt->simulated |= ee->simulated;
 		if (ee->simulated) {
 			kfree(ee);
@@ -1663,11 +1667,13 @@ static const char *error_msg(struct i915_gpu_coredump *error)
 	for (gt = error->gt; gt; gt = gt->next) {
 		struct intel_engine_coredump *cs;
 
-		if (gt->engine && !first)
-			first = gt->engine;
-
-		for (cs = gt->engine; cs; cs = cs->next)
-			engines |= cs->engine->mask;
+		for (cs = gt->engine; cs; cs = cs->next) {
+			if (cs->hung) {
+				engines |= cs->engine->mask;
+				if (!first)
+					first = cs;
+			}
+		}
 	}
 
 	len = scnprintf(error->error_msg, sizeof(error->error_msg),
@@ -1781,8 +1787,10 @@ void i915_vma_capture_finish(struct intel_gt_coredump *gt,
 	kfree(compress);
 }
 
-struct i915_gpu_coredump *i915_gpu_coredump(struct drm_i915_private *i915)
+struct i915_gpu_coredump *
+i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask)
 {
+	struct drm_i915_private *i915 = gt->i915;
 	struct i915_gpu_coredump *error;
 
 	/* Check if GPU capture has been disabled */
@@ -1794,7 +1802,7 @@ struct i915_gpu_coredump *i915_gpu_coredump(struct drm_i915_private *i915)
 	if (!error)
 		return ERR_PTR(-ENOMEM);
 
-	error->gt = intel_gt_coredump_alloc(&i915->gt, ALLOW_FAIL);
+	error->gt = intel_gt_coredump_alloc(gt, ALLOW_FAIL);
 	if (error->gt) {
 		struct i915_vma_compress *compress;
 
@@ -1806,7 +1814,7 @@ struct i915_gpu_coredump *i915_gpu_coredump(struct drm_i915_private *i915)
 		}
 
 		gt_record_info(error->gt);
-		gt_record_engines(error->gt, compress);
+		gt_record_engines(error->gt, engine_mask, compress);
 
 		if (INTEL_INFO(i915)->has_gt_uc)
 			error->gt->uc = gt_record_uc(error->gt, compress);
@@ -1853,20 +1861,23 @@ void i915_error_state_store(struct i915_gpu_coredump *error)
 
 /**
  * i915_capture_error_state - capture an error record for later analysis
- * @i915: i915 device
+ * @gt: intel_gt which originated the hang
+ * @engine_mask: hung engines
+ *
  *
  * Should be called when an error is detected (either a hang or an error
  * interrupt) to capture error state from the time of the error.  Fills
  * out a structure which becomes available in debugfs for user level tools
  * to pick up.
  */
-void i915_capture_error_state(struct drm_i915_private *i915)
+void i915_capture_error_state(struct intel_gt *gt,
+			      intel_engine_mask_t engine_mask)
 {
 	struct i915_gpu_coredump *error;
 
-	error = i915_gpu_coredump(i915);
+	error = i915_gpu_coredump(gt, engine_mask);
 	if (IS_ERR(error)) {
-		cmpxchg(&i915->gpu_error.first_error, NULL, error);
+		cmpxchg(&gt->i915->gpu_error.first_error, NULL, error);
 		return;
 	}
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 0220b0992808..16bc42de4b84 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -59,6 +59,7 @@ struct i915_request_coredump {
 struct intel_engine_coredump {
 	const struct intel_engine_cs *engine;
 
+	bool hung;
 	bool simulated;
 	u32 reset_count;
 
@@ -218,8 +219,10 @@ struct drm_i915_error_state_buf {
 __printf(2, 3)
 void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...);
 
-struct i915_gpu_coredump *i915_gpu_coredump(struct drm_i915_private *i915);
-void i915_capture_error_state(struct drm_i915_private *i915);
+struct i915_gpu_coredump *i915_gpu_coredump(struct intel_gt *gt,
+					    intel_engine_mask_t engine_mask);
+void i915_capture_error_state(struct intel_gt *gt,
+			      intel_engine_mask_t engine_mask);
 
 struct i915_gpu_coredump *
 i915_gpu_coredump_alloc(struct drm_i915_private *i915, gfp_t gfp);
@@ -271,7 +274,8 @@ void i915_disable_error_state(struct drm_i915_private *i915, int err);
 
 #else
 
-static inline void i915_capture_error_state(struct drm_i915_private *i915)
+static inline void
+i915_capture_error_state(struct intel_gt *gt, intel_engine_mask_t engine_mask)
 {
 }
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
