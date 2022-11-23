Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD4F636D28
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 23:32:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FE5710E64E;
	Wed, 23 Nov 2022 22:31:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AB7F10E650
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 22:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669242701; x=1700778701;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vWK2JgHEt3U6r/YQD33iBXdvfVjAGp9r9LBw9Tv6srk=;
 b=PiNR/CDsadTP5zRNxtQyLgBDmjEK0l1CYFZhlkFPe1miDqSOT8ftlsV/
 x2Brs5tRWZF3vXNDzTbYATvMtdDsqdUYz+ABMCVWO0URfDG5Qm9ue4YH8
 kEceywzhzeU1q2yLGqmERm4c4VPx9C89Y6R82N+D0RnNV17+99OZKyc67
 UcYKFsVNPtIAmtAKpaz35ls8CJdk34DlgFeYxAfoobTDjdq4h/shX+SYu
 1zmz81H4jiDoH6FD2bV887PW4SfwTSYN99+HRl3uiy0TiHACU/v4wfkeE
 og6VULMQLtrCY3iXZrYDdrLvYIdZf1YGCaz3K1HJZoNero8yv9TBR2v40 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="293875377"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="293875377"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 14:31:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="784404449"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="784404449"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga001.fm.intel.com with ESMTP; 23 Nov 2022 14:31:40 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 14:34:04 -0800
Message-Id: <20221123223410.2846296-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221123223410.2846296-1-alan.previn.teres.alexis@intel.com>
References: <20221123223410.2846296-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 1/7] HAX: drm/i915/pxp: Prepare intel_pxp entry
 points for MTL
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

Squash of all the patches from the series:
https://patchwork.freedesktop.org/series/109429/

Above series is not a prerequisite to showcase the design changes
being proposed in the next set of patches but will be in the same
order dependency as here. NOTE: that series will be going through a
major redesign based on the latest review comments.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 .../drm/i915/display/skl_universal_plane.c    |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  6 +-
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |  2 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  4 -
 drivers/gpu/drm/i915/pxp/intel_pxp.c          | 83 ++++++++++++++++---
 drivers/gpu/drm/i915/pxp/intel_pxp.h          | 16 +++-
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c      |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c  |  8 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c      |  4 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |  8 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 18 +++-
 12 files changed, 114 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 76490cc59d8f..3436bf433c10 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1848,7 +1848,7 @@ static bool bo_has_valid_encryption(struct drm_i915_gem_object *obj)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 
-	return intel_pxp_key_check(&to_gt(i915)->pxp, obj, false) == 0;
+	return intel_pxp_key_check(i915, obj, false) == 0;
 }
 
 static bool pxp_is_borked(struct drm_i915_gem_object *obj)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 7f2831efc798..15c3d435093a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -257,7 +257,7 @@ static int proto_context_set_protected(struct drm_i915_private *i915,
 
 	if (!protected) {
 		pc->uses_protected_content = false;
-	} else if (!intel_pxp_is_enabled(&to_gt(i915)->pxp)) {
+	} else if (!intel_pxp_is_enabled(i915)) {
 		ret = -ENODEV;
 	} else if ((pc->user_flags & BIT(UCONTEXT_RECOVERABLE)) ||
 		   !(pc->user_flags & BIT(UCONTEXT_BANNABLE))) {
@@ -271,8 +271,8 @@ static int proto_context_set_protected(struct drm_i915_private *i915,
 		 */
 		pc->pxp_wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
-		if (!intel_pxp_is_active(&to_gt(i915)->pxp))
-			ret = intel_pxp_start(&to_gt(i915)->pxp);
+		if (!intel_pxp_is_active(i915))
+			ret = intel_pxp_start(i915);
 	}
 
 	return ret;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index 33673fe7ee0a..e44803f9bec4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
@@ -384,7 +384,7 @@ static int ext_set_protected(struct i915_user_extension __user *base, void *data
 	if (ext.flags)
 		return -EINVAL;
 
-	if (!intel_pxp_is_enabled(&to_gt(ext_data->i915)->pxp))
+	if (!intel_pxp_is_enabled(ext_data->i915))
 		return -ENODEV;
 
 	ext_data->flags |= I915_BO_PROTECTED;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 29e9e8d5b6fe..9943d5827300 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -869,7 +869,7 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
 		 */
 		if (i915_gem_context_uses_protected_content(eb->gem_context) &&
 		    i915_gem_object_is_protected(obj)) {
-			err = intel_pxp_key_check(&vm->gt->pxp, obj, true);
+			err = intel_pxp_key_check(vm->gt->i915, obj, true);
 			if (err) {
 				i915_gem_object_put(obj);
 				return ERR_PTR(err);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a380db36d52c..a171ad57fe73 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -918,10 +918,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_GLOBAL_MOCS_REGISTERS(dev_priv)	(INTEL_INFO(dev_priv)->has_global_mocs)
 
-#define HAS_PXP(dev_priv)  ((IS_ENABLED(CONFIG_DRM_I915_PXP) && \
-			    INTEL_INFO(dev_priv)->has_pxp) && \
-			    VDBOX_MASK(to_gt(dev_priv)))
-
 #define HAS_GMCH(dev_priv) (INTEL_INFO(dev_priv)->display.has_gmch)
 
 #define HAS_GMD_ID(i915)	(INTEL_INFO(i915)->has_gmd_id)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 5efe61f67546..58219beecfa4 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -9,6 +9,7 @@
 #include "intel_pxp_tee.h"
 #include "gem/i915_gem_context.h"
 #include "gt/intel_context.h"
+#include "gt/intel_gt.h"
 #include "i915_drv.h"
 
 /**
@@ -44,16 +45,63 @@ struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
 	return container_of(pxp, struct intel_gt, pxp);
 }
 
-bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
+static bool _gt_needs_teelink(struct intel_gt *gt)
+{
+	/* TODO: MTL won't rely on CONFIG_INTEL_MEI_PXP but on GSC engine */
+	return (IS_ENABLED(CONFIG_INTEL_MEI_PXP) && intel_huc_is_loaded_by_gsc(&gt->uc.huc) &&
+		intel_uc_uses_huc(&gt->uc));
+}
+
+bool intel_pxp_supported_on_gt(const struct intel_pxp *pxp)
+{
+	/* TODO: MTL won't rely on CONFIG_INTEL_MEI_PXP but on GSC engine */
+	return (IS_ENABLED(CONFIG_INTEL_MEI_PXP) && IS_ENABLED(CONFIG_DRM_I915_PXP) &&
+		INTEL_INFO((pxp_to_gt(pxp))->i915)->has_pxp && VDBOX_MASK(pxp_to_gt(pxp)));
+}
+
+bool intel_pxp_is_enabled_on_gt(const struct intel_pxp *pxp)
 {
 	return pxp->ce;
 }
 
-bool intel_pxp_is_active(const struct intel_pxp *pxp)
+struct intel_gt *intel_pxp_get_owning_gt(struct drm_i915_private *i915)
+{
+	struct intel_gt *gt = NULL;
+	int i = 0;
+
+	for_each_gt(gt, i915, i) {
+		/* There can be only one GT that supports PXP */
+		if (intel_pxp_supported_on_gt(&gt->pxp))
+			return gt;
+	}
+	return NULL;
+}
+
+bool intel_pxp_is_enabled(struct drm_i915_private *i915)
+{
+	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
+
+	if (!gt)
+		return false;
+
+	return intel_pxp_is_enabled_on_gt(&gt->pxp);
+}
+
+bool intel_pxp_is_active_on_gt(const struct intel_pxp *pxp)
 {
 	return pxp->arb_is_valid;
 }
 
+bool intel_pxp_is_active(struct drm_i915_private *i915)
+{
+	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
+
+	if (!gt)
+		return false;
+
+	return intel_pxp_is_active_on_gt(&gt->pxp);
+}
+
 /* KCR register definitions */
 #define KCR_INIT _MMIO(0x320f0)
 /* Setting KCR Init bit is required after system boot */
@@ -142,17 +190,13 @@ void intel_pxp_init(struct intel_pxp *pxp)
 {
 	struct intel_gt *gt = pxp_to_gt(pxp);
 
-	/* we rely on the mei PXP module */
-	if (!IS_ENABLED(CONFIG_INTEL_MEI_PXP))
-		return;
-
 	/*
 	 * If HuC is loaded by GSC but PXP is disabled, we can skip the init of
 	 * the full PXP session/object management and just init the tee channel.
 	 */
-	if (HAS_PXP(gt->i915))
+	if (intel_pxp_supported_on_gt(pxp))
 		pxp_init_full(pxp);
-	else if (intel_huc_is_loaded_by_gsc(&gt->uc.huc) && intel_uc_uses_huc(&gt->uc))
+	else if (_gt_needs_teelink(gt))
 		intel_pxp_tee_component_init(pxp);
 }
 
@@ -202,11 +246,18 @@ static bool pxp_component_bound(struct intel_pxp *pxp)
  * the arb session is restarted from the irq work when we receive the
  * termination completion interrupt
  */
-int intel_pxp_start(struct intel_pxp *pxp)
+int intel_pxp_start(struct drm_i915_private *i915)
 {
+	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
+	struct intel_pxp *pxp;
 	int ret = 0;
 
-	if (!intel_pxp_is_enabled(pxp))
+	if (!gt)
+		return -ENODEV;
+
+	pxp = &gt->pxp;
+
+	if (!intel_pxp_is_enabled_on_gt(pxp))
 		return -ENODEV;
 
 	if (wait_for(pxp_component_bound(pxp), 250))
@@ -249,11 +300,19 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp)
 	intel_pxp_irq_disable(pxp);
 }
 
-int intel_pxp_key_check(struct intel_pxp *pxp,
+int intel_pxp_key_check(struct drm_i915_private *i915,
 			struct drm_i915_gem_object *obj,
 			bool assign)
 {
-	if (!intel_pxp_is_active(pxp))
+	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
+	struct intel_pxp *pxp;
+
+	if (!gt)
+		return -ENODEV;
+
+	pxp = &gt->pxp;
+
+	if (!intel_pxp_is_active_on_gt(pxp))
 		return -ENODEV;
 
 	if (!i915_gem_object_is_protected(obj))
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 2da309088c6d..6fe1595a84d6 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -11,10 +11,18 @@
 
 struct intel_pxp;
 struct drm_i915_gem_object;
+struct drm_i915_private;
+
+struct intel_gt *intel_pxp_get_owning_gt(struct drm_i915_private *i915);
 
 struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
-bool intel_pxp_is_enabled(const struct intel_pxp *pxp);
-bool intel_pxp_is_active(const struct intel_pxp *pxp);
+
+bool intel_pxp_supported_on_gt(const struct intel_pxp *pxp);
+
+bool intel_pxp_is_enabled_on_gt(const struct intel_pxp *pxp);
+bool intel_pxp_is_enabled(struct drm_i915_private *i915);
+bool intel_pxp_is_active_on_gt(const struct intel_pxp *pxp);
+bool intel_pxp_is_active(struct drm_i915_private *i915);
 
 void intel_pxp_init(struct intel_pxp *pxp);
 void intel_pxp_fini(struct intel_pxp *pxp);
@@ -24,9 +32,9 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp);
 
 void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp);
 
-int intel_pxp_start(struct intel_pxp *pxp);
+int intel_pxp_start(struct drm_i915_private *i915);
 
-int intel_pxp_key_check(struct intel_pxp *pxp,
+int intel_pxp_key_check(struct drm_i915_private *i915,
 			struct drm_i915_gem_object *obj,
 			bool assign);
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
index f41e45763d0d..f322a49ebadc 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
@@ -99,7 +99,7 @@ int intel_pxp_terminate_session(struct intel_pxp *pxp, u32 id)
 	u32 *cs;
 	int err = 0;
 
-	if (!intel_pxp_is_enabled(pxp))
+	if (!intel_pxp_is_enabled_on_gt(pxp))
 		return 0;
 
 	rq = i915_request_create(ce);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
index 4359e8be4101..52a808fd4704 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
@@ -18,14 +18,14 @@ static int pxp_info_show(struct seq_file *m, void *data)
 {
 	struct intel_pxp *pxp = m->private;
 	struct drm_printer p = drm_seq_file_printer(m);
-	bool enabled = intel_pxp_is_enabled(pxp);
+	bool enabled = intel_pxp_is_enabled_on_gt(pxp);
 
 	if (!enabled) {
 		drm_printf(&p, "pxp disabled\n");
 		return 0;
 	}
 
-	drm_printf(&p, "active: %s\n", str_yes_no(intel_pxp_is_active(pxp)));
+	drm_printf(&p, "active: %s\n", str_yes_no(intel_pxp_is_active_on_gt(pxp)));
 	drm_printf(&p, "instance counter: %u\n", pxp->key_instance);
 
 	return 0;
@@ -43,7 +43,7 @@ static int pxp_terminate_set(void *data, u64 val)
 	struct intel_pxp *pxp = data;
 	struct intel_gt *gt = pxp_to_gt(pxp);
 
-	if (!intel_pxp_is_active(pxp))
+	if (!intel_pxp_is_active_on_gt(pxp))
 		return -ENODEV;
 
 	/* simulate a termination interrupt */
@@ -70,7 +70,7 @@ void intel_pxp_debugfs_register(struct intel_pxp *pxp, struct dentry *gt_root)
 	if (!gt_root)
 		return;
 
-	if (!HAS_PXP((pxp_to_gt(pxp)->i915)))
+	if (!intel_pxp_supported_on_gt(pxp))
 		return;
 
 	root = debugfs_create_dir("pxp", gt_root);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
index c28be430718a..c25c1979cccc 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
@@ -22,7 +22,7 @@ void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
 {
 	struct intel_gt *gt = pxp_to_gt(pxp);
 
-	if (GEM_WARN_ON(!intel_pxp_is_enabled(pxp)))
+	if (GEM_WARN_ON(!intel_pxp_is_enabled_on_gt(pxp)))
 		return;
 
 	lockdep_assert_held(gt->irq_lock);
@@ -86,7 +86,7 @@ void intel_pxp_irq_disable(struct intel_pxp *pxp)
 	 * called in a path were the driver consider the session as valid and
 	 * doesn't call a termination on restart.
 	 */
-	GEM_WARN_ON(intel_pxp_is_active(pxp));
+	GEM_WARN_ON(intel_pxp_is_active_on_gt(pxp));
 
 	spin_lock_irq(gt->irq_lock);
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
index 6a7d4e2ee138..19ac8828cbde 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -11,7 +11,7 @@
 
 void intel_pxp_suspend_prepare(struct intel_pxp *pxp)
 {
-	if (!intel_pxp_is_enabled(pxp))
+	if (!intel_pxp_is_enabled_on_gt(pxp))
 		return;
 
 	pxp->arb_is_valid = false;
@@ -23,7 +23,7 @@ void intel_pxp_suspend(struct intel_pxp *pxp)
 {
 	intel_wakeref_t wakeref;
 
-	if (!intel_pxp_is_enabled(pxp))
+	if (!intel_pxp_is_enabled_on_gt(pxp))
 		return;
 
 	with_intel_runtime_pm(&pxp_to_gt(pxp)->i915->runtime_pm, wakeref) {
@@ -34,7 +34,7 @@ void intel_pxp_suspend(struct intel_pxp *pxp)
 
 void intel_pxp_resume(struct intel_pxp *pxp)
 {
-	if (!intel_pxp_is_enabled(pxp))
+	if (!intel_pxp_is_enabled_on_gt(pxp))
 		return;
 
 	/*
@@ -50,7 +50,7 @@ void intel_pxp_resume(struct intel_pxp *pxp)
 
 void intel_pxp_runtime_suspend(struct intel_pxp *pxp)
 {
-	if (!intel_pxp_is_enabled(pxp))
+	if (!intel_pxp_is_enabled_on_gt(pxp))
 		return;
 
 	pxp->arb_is_valid = false;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index b0c9170b1395..b9198e961cb6 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -20,8 +20,12 @@
 static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
 {
 	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
+	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
 
-	return &to_gt(i915)->pxp;
+	if (!gt)
+		return NULL;
+
+	return &gt->pxp;
 }
 
 static int intel_pxp_tee_io_message(struct intel_pxp *pxp,
@@ -128,10 +132,16 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 {
 	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
 	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
-	struct intel_uc *uc = &pxp_to_gt(pxp)->uc;
+	struct intel_uc *uc;
 	intel_wakeref_t wakeref;
 	int ret = 0;
 
+	if (!pxp) {
+		drm_warn(&i915->drm, "tee comp binding without a PXP-owner GT\n");
+		return -ENODEV;
+	}
+	uc = &pxp_to_gt(pxp)->uc;
+
 	mutex_lock(&pxp->tee_mutex);
 	pxp->pxp_component = data;
 	pxp->pxp_component->tee_dev = tee_kdev;
@@ -152,7 +162,7 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 		return 0;
 
 	/* the component is required to fully start the PXP HW */
-	if (intel_pxp_is_enabled(pxp))
+	if (intel_pxp_is_enabled_on_gt(pxp))
 		intel_pxp_init_hw(pxp);
 
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
@@ -167,7 +177,7 @@ static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
 	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
 	intel_wakeref_t wakeref;
 
-	if (intel_pxp_is_enabled(pxp))
+	if (intel_pxp_is_enabled_on_gt(pxp))
 		with_intel_runtime_pm_if_in_use(&i915->runtime_pm, wakeref)
 			intel_pxp_fini_hw(pxp);
 
-- 
2.34.1

