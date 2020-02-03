Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3E3151368
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 00:41:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00BDC6ED5D;
	Mon,  3 Feb 2020 23:41:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 009826ED56
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 23:41:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 15:29:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,398,1574150400"; d="scan'208";a="225317617"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 03 Feb 2020 15:29:09 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Feb 2020 15:28:31 -0800
Message-Id: <20200203232838.14822-4-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200203232838.14822-1-daniele.ceraolospurio@intel.com>
References: <20200203232838.14822-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 03/10] drm/i915/guc: Kill USES_GUC_SUBMISSION
 macro
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

use intel_uc_uses_guc_submission() directly instead, to be consistent in
the way we check what we want to do with the GuC.

v2: do not go through ctx->vm->gt, use i915->gt instead

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com> #v1
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c  |  2 +-
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c |  2 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c       | 12 ++++++------
 drivers/gpu/drm/i915/gt/selftest_reset.c     |  2 +-
 drivers/gpu/drm/i915/gvt/scheduler.c         |  3 ++-
 drivers/gpu/drm/i915/i915_debugfs.c          |  6 +++---
 drivers/gpu/drm/i915/i915_drv.h              |  3 ---
 drivers/gpu/drm/i915/intel_gvt.c             |  2 +-
 8 files changed, 15 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index fad62d768f08..19b0204c6770 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1442,7 +1442,7 @@ set_engines__load_balance(struct i915_user_extension __user *base, void *data)
 	if (!HAS_EXECLISTS(i915))
 		return -ENODEV;
 
-	if (USES_GUC_SUBMISSION(i915))
+	if (intel_uc_uses_guc_submission(&i915->gt.uc))
 		return -ENODEV; /* not implement yet */
 
 	if (get_user(idx, &ext->engine_index))
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index 3e5e6c86e843..c3514ec7b8db 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -1640,7 +1640,7 @@ static int igt_reset_engines_atomic(void *arg)
 	if (!intel_has_reset_engine(gt))
 		return 0;
 
-	if (USES_GUC_SUBMISSION(gt->i915))
+	if (intel_uc_uses_guc_submission(&gt->uc))
 		return 0;
 
 	igt_global_reset_lock(gt);
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 79b9f7d092e4..0d18d30630fd 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -1808,7 +1808,7 @@ static int live_suppress_self_preempt(void *arg)
 	if (!HAS_LOGICAL_RING_PREEMPTION(gt->i915))
 		return 0;
 
-	if (USES_GUC_SUBMISSION(gt->i915))
+	if (intel_uc_uses_guc_submission(&gt->uc))
 		return 0; /* presume black blox */
 
 	if (intel_vgpu_active(gt->i915))
@@ -3044,7 +3044,7 @@ static int live_virtual_engine(void *arg)
 	unsigned int class, inst;
 	int err;
 
-	if (USES_GUC_SUBMISSION(gt->i915))
+	if (intel_uc_uses_guc_submission(&gt->uc))
 		return 0;
 
 	for_each_engine(engine, gt, id) {
@@ -3177,7 +3177,7 @@ static int live_virtual_mask(void *arg)
 	unsigned int class, inst;
 	int err;
 
-	if (USES_GUC_SUBMISSION(gt->i915))
+	if (intel_uc_uses_guc_submission(&gt->uc))
 		return 0;
 
 	for (class = 0; class <= MAX_ENGINE_CLASS; class++) {
@@ -3319,7 +3319,7 @@ static int live_virtual_preserved(void *arg)
 	 * are preserved.
 	 */
 
-	if (USES_GUC_SUBMISSION(gt->i915))
+	if (intel_uc_uses_guc_submission(&gt->uc))
 		return 0;
 
 	/* As we use CS_GPR we cannot run before they existed on all engines. */
@@ -3543,7 +3543,7 @@ static int live_virtual_bond(void *arg)
 	unsigned int class, inst;
 	int err;
 
-	if (USES_GUC_SUBMISSION(gt->i915))
+	if (intel_uc_uses_guc_submission(&gt->uc))
 		return 0;
 
 	for (class = 0; class <= MAX_ENGINE_CLASS; class++) {
@@ -3704,7 +3704,7 @@ static int live_virtual_reset(void *arg)
 	 * forgotten.
 	 */
 
-	if (USES_GUC_SUBMISSION(gt->i915))
+	if (intel_uc_uses_guc_submission(&gt->uc))
 		return 0;
 
 	if (!intel_has_reset_engine(gt))
diff --git a/drivers/gpu/drm/i915/gt/selftest_reset.c b/drivers/gpu/drm/i915/gt/selftest_reset.c
index 6ad6aca315f6..35406ecdf0b2 100644
--- a/drivers/gpu/drm/i915/gt/selftest_reset.c
+++ b/drivers/gpu/drm/i915/gt/selftest_reset.c
@@ -115,7 +115,7 @@ static int igt_atomic_engine_reset(void *arg)
 	if (!intel_has_reset_engine(gt))
 		return 0;
 
-	if (USES_GUC_SUBMISSION(gt->i915))
+	if (intel_uc_uses_guc_submission(&gt->uc))
 		return 0;
 
 	intel_gt_pm_get(gt);
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index 685d1e04a5ff..5fe00ee6bd1b 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -1246,7 +1246,8 @@ int intel_vgpu_setup_submission(struct intel_vgpu *vgpu)
 		ce->vm = i915_vm_get(&ppgtt->vm);
 		intel_context_set_single_submission(ce);
 
-		if (!USES_GUC_SUBMISSION(i915)) { /* Max ring buffer size */
+		/* Max ring buffer size */
+		if (!intel_uc_uses_guc_submission(&engine->gt->uc)) {
 			const unsigned int ring_size = 512 * SZ_4K;
 
 			ce->ring = __intel_context_ring_size(ring_size);
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index bfdcb657780b..01307a67dc91 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1793,11 +1793,11 @@ static int i915_guc_info(struct seq_file *m, void *data)
 static int i915_guc_stage_pool(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	const struct intel_guc *guc = &dev_priv->gt.uc.guc;
-	struct guc_stage_desc *desc = guc->stage_desc_pool_vaddr;
+	struct intel_uc *uc = &dev_priv->gt.uc;
+	struct guc_stage_desc *desc = uc->guc.stage_desc_pool_vaddr;
 	int index;
 
-	if (!USES_GUC_SUBMISSION(dev_priv))
+	if (!intel_uc_uses_guc_submission(uc))
 		return -ENODEV;
 
 	for (index = 0; index < GUC_MAX_STAGE_DESCRIPTORS; index++, desc++) {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a8e1ec7d571f..0a45240af38d 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1700,9 +1700,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_GT_UC(dev_priv)	(INTEL_INFO(dev_priv)->has_gt_uc)
 
-/* Having GuC is not the same as using GuC */
-#define USES_GUC_SUBMISSION(dev_priv)	intel_uc_uses_guc_submission(&(dev_priv)->gt.uc)
-
 #define HAS_POOLED_EU(dev_priv)	(INTEL_INFO(dev_priv)->has_pooled_eu)
 
 #define HAS_GLOBAL_MOCS_REGISTERS(dev_priv)	(INTEL_INFO(dev_priv)->has_global_mocs)
diff --git a/drivers/gpu/drm/i915/intel_gvt.c b/drivers/gpu/drm/i915/intel_gvt.c
index 38ebd5562c7c..5c189bc31da5 100644
--- a/drivers/gpu/drm/i915/intel_gvt.c
+++ b/drivers/gpu/drm/i915/intel_gvt.c
@@ -105,7 +105,7 @@ int intel_gvt_init(struct drm_i915_private *dev_priv)
 		return 0;
 	}
 
-	if (USES_GUC_SUBMISSION(dev_priv)) {
+	if (intel_uc_uses_guc_submission(&dev_priv->gt.uc)) {
 		drm_err(&dev_priv->drm,
 			"i915 GVT-g loading failed due to Graphics virtualization is not yet supported with GuC submission\n");
 		return -EIO;
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
