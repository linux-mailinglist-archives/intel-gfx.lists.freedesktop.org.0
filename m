Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8409F13B6EB
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 02:32:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCBED6E81C;
	Wed, 15 Jan 2020 01:32:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A19836E817
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 01:32:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 17:32:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,320,1574150400"; d="scan'208";a="305337552"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga001.jf.intel.com with ESMTP; 14 Jan 2020 17:32:27 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jan 2020 17:31:38 -0800
Message-Id: <20200115013143.34961-3-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115013143.34961-1-daniele.ceraolospurio@intel.com>
References: <20200115013143.34961-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/7] drm/i915/guc: Kill USES_GUC_SUBMISSION macro
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

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c  |  2 +-
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c |  2 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c       | 10 +++++-----
 drivers/gpu/drm/i915/gt/selftest_reset.c     |  2 +-
 drivers/gpu/drm/i915/gvt/scheduler.c         |  3 ++-
 drivers/gpu/drm/i915/i915_debugfs.c          |  6 +++---
 drivers/gpu/drm/i915/i915_drv.h              |  3 ---
 drivers/gpu/drm/i915/intel_gvt.c             |  2 +-
 8 files changed, 14 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index a2e57e62af30..415e2d5e934b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1454,7 +1454,7 @@ set_engines__load_balance(struct i915_user_extension __user *base, void *data)
 	if (!HAS_EXECLISTS(set->ctx->i915))
 		return -ENODEV;
 
-	if (USES_GUC_SUBMISSION(set->ctx->i915))
+	if (intel_uc_uses_guc_submission(&set->ctx->vm->gt->uc))
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
index 15cda024e3e4..b1c677b0d5ad 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -1555,7 +1555,7 @@ static int live_suppress_self_preempt(void *arg)
 	if (!HAS_LOGICAL_RING_PREEMPTION(gt->i915))
 		return 0;
 
-	if (USES_GUC_SUBMISSION(gt->i915))
+	if (intel_uc_uses_guc_submission(&gt->uc))
 		return 0; /* presume black blox */
 
 	if (intel_vgpu_active(gt->i915))
@@ -2781,7 +2781,7 @@ static int live_virtual_engine(void *arg)
 	unsigned int class, inst;
 	int err;
 
-	if (USES_GUC_SUBMISSION(gt->i915))
+	if (intel_uc_uses_guc_submission(&gt->uc))
 		return 0;
 
 	for_each_engine(engine, gt, id) {
@@ -2914,7 +2914,7 @@ static int live_virtual_mask(void *arg)
 	unsigned int class, inst;
 	int err;
 
-	if (USES_GUC_SUBMISSION(gt->i915))
+	if (intel_uc_uses_guc_submission(&gt->uc))
 		return 0;
 
 	for (class = 0; class <= MAX_ENGINE_CLASS; class++) {
@@ -3052,7 +3052,7 @@ static int live_virtual_preserved(void *arg)
 	 * are preserved.
 	 */
 
-	if (USES_GUC_SUBMISSION(gt->i915))
+	if (intel_uc_uses_guc_submission(&gt->uc))
 		return 0;
 
 	/* As we use CS_GPR we cannot run before they existed on all engines. */
@@ -3276,7 +3276,7 @@ static int live_virtual_bond(void *arg)
 	unsigned int class, inst;
 	int err;
 
-	if (USES_GUC_SUBMISSION(gt->i915))
+	if (intel_uc_uses_guc_submission(&gt->uc))
 		return 0;
 
 	for (class = 0; class <= MAX_ENGINE_CLASS; class++) {
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
index c2f480defc71..823a033ffcd0 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1792,11 +1792,11 @@ static int i915_guc_info(struct seq_file *m, void *data)
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
index ad0019cd2604..24d581c63667 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1718,9 +1718,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_GT_UC(dev_priv)	(INTEL_INFO(dev_priv)->has_gt_uc)
 
-/* Having GuC is not the same as using GuC */
-#define USES_GUC_SUBMISSION(dev_priv)	intel_uc_uses_guc_submission(&(dev_priv)->gt.uc)
-
 #define HAS_POOLED_EU(dev_priv)	(INTEL_INFO(dev_priv)->has_pooled_eu)
 
 #define HAS_GLOBAL_MOCS_REGISTERS(dev_priv)	(INTEL_INFO(dev_priv)->has_global_mocs)
diff --git a/drivers/gpu/drm/i915/intel_gvt.c b/drivers/gpu/drm/i915/intel_gvt.c
index 2b6c016387c2..481c6de9f4d6 100644
--- a/drivers/gpu/drm/i915/intel_gvt.c
+++ b/drivers/gpu/drm/i915/intel_gvt.c
@@ -103,7 +103,7 @@ int intel_gvt_init(struct drm_i915_private *dev_priv)
 		return 0;
 	}
 
-	if (USES_GUC_SUBMISSION(dev_priv)) {
+	if (intel_uc_uses_guc_submission(&dev_priv->gt.uc)) {
 		DRM_ERROR("i915 GVT-g loading failed due to Graphics virtualization is not yet supported with GuC submission\n");
 		return -EIO;
 	}
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
