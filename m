Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D09495F5A7D
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 21:16:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF53710E392;
	Wed,  5 Oct 2022 19:16:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 405E310E392
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 19:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664997403; x=1696533403;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=He4/mu5qYRabEK29MJqMgL/KHoJ2q809WL8lh6AqaF8=;
 b=KHpIBxMyOwNLW1Vx8ypgD3x3RqlPktOymL8esJfozPYQOW53wnFVxtjL
 E2NNyCeNXe0gHutkClYROGNTlmDSgEeB8azJDzN2KkTOSJNCGJSiB5obq
 lweYD21zlGlmoEdOR96udiVrlKie5K8BEQgfsvlv4CLMlHdYJuRxH2V4I
 o5J7yEf9aRH9zsYlTfS/owwJGEzkjepSsWZKYo/cCKEHAfiMp0RuZsLKl
 wXXZvqDttSVxiRLGZuQOEAi28plWpKUdBgmkZnkeelPdUkCjp2Nz9INVD
 PpyUAKDZHs4llqJg6WcL5gJsaNEpPCYd+8ORTLRR2ar2aDg7DnJZHt/iH Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="283618489"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="283618489"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 12:16:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="602132213"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="602132213"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga006.jf.intel.com with ESMTP; 05 Oct 2022 12:16:36 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Oct 2022 12:18:34 -0700
Message-Id: <20221005191838.466351-3-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221005191838.466351-1-alan.previn.teres.alexis@intel.com>
References: <20221005191838.466351-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/pxp: Make intel_pxp_is_enabled
 implicitly sort PXP-owning-GT
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

Make intel_pxp_is_enabled implicitly find the PXP-owning-GT.
PXP feature support is a device-config flag. In preparation for MTL
PXP control-context shall reside on of the two GT's.
That said, update intel_pxp_is_enabled to take in i915 as its input
and internally find the right gt to check if PXP is enabled so
its transparent to callers of this functions.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c  |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_create.c   |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c         | 27 ++++++++++++++++++--
 drivers/gpu/drm/i915/pxp/intel_pxp.h         |  4 ++-
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c     |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c     |  5 +++-
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c      |  8 +++---
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     |  4 +--
 9 files changed, 42 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 0bcde53c50c6..df03c1c7feb9 100644
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
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index a18dfeca919b..93e9bc383461 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -9,6 +9,7 @@
 #include "intel_pxp_tee.h"
 #include "gem/i915_gem_context.h"
 #include "gt/intel_context.h"
+#include "gt/intel_gt.h"
 #include "i915_drv.h"
 
 /**
@@ -39,16 +40,38 @@
  * performed via the mei_pxp component module.
  */
 
+struct intel_gt *intel_pxp_get_owning_gt(struct drm_i915_private *i915)
+{
+	struct intel_gt *gt = NULL;
+	int i = 0;
+
+	for_each_gt(gt, i915, i) {
+		if (gt && gt->pxptee_iface_owner)
+			return gt;
+	}
+	return NULL;
+}
+
 struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
 {
 	return container_of(pxp, struct intel_gt, pxp);
 }
 
-bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
+static bool _pxp_is_enabled(struct intel_pxp *pxp)
 {
 	return pxp->ce;
 }
 
+bool intel_pxp_is_enabled(struct drm_i915_private *i915)
+{
+	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
+
+	if (!gt)
+		return false;
+
+	return _pxp_is_enabled(&gt->pxp);
+}
+
 bool intel_pxp_is_active(const struct intel_pxp *pxp)
 {
 	return pxp->arb_is_valid;
@@ -222,7 +245,7 @@ int intel_pxp_start(struct intel_pxp *pxp)
 {
 	int ret = 0;
 
-	if (!intel_pxp_is_enabled(pxp))
+	if (!_pxp_is_enabled(pxp))
 		return -ENODEV;
 
 	if (wait_for(pxp_component_bound(pxp), 250))
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 2da309088c6d..e82154a147b9 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -11,9 +11,11 @@
 
 struct intel_pxp;
 struct drm_i915_gem_object;
+struct drm_i915_private;
 
 struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
-bool intel_pxp_is_enabled(const struct intel_pxp *pxp);
+struct intel_gt *intel_pxp_get_owning_gt(struct drm_i915_private *i915);
+bool intel_pxp_is_enabled(struct drm_i915_private *i915);
 bool intel_pxp_is_active(const struct intel_pxp *pxp);
 
 void intel_pxp_init(struct intel_pxp *pxp);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
index f41e45763d0d..1d409149c0e8 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
@@ -99,7 +99,7 @@ int intel_pxp_terminate_session(struct intel_pxp *pxp, u32 id)
 	u32 *cs;
 	int err = 0;
 
-	if (!intel_pxp_is_enabled(pxp))
+	if (!intel_pxp_is_enabled(pxp_to_gt(pxp)->i915))
 		return 0;
 
 	rq = i915_request_create(ce);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
index 7b37f061044d..907d3aba7a9c 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
@@ -18,7 +18,7 @@ static int pxp_info_show(struct seq_file *m, void *data)
 {
 	struct intel_pxp *pxp = m->private;
 	struct drm_printer p = drm_seq_file_printer(m);
-	bool enabled = intel_pxp_is_enabled(pxp);
+	bool enabled = intel_pxp_is_enabled(pxp_to_gt(pxp)->i915);
 
 	if (!enabled) {
 		drm_printf(&p, "pxp disabled\n");
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
index c28be430718a..6f515c163d2f 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
@@ -22,7 +22,10 @@ void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
 {
 	struct intel_gt *gt = pxp_to_gt(pxp);
 
-	if (GEM_WARN_ON(!intel_pxp_is_enabled(pxp)))
+	if (!gt->pxptee_iface_owner)
+		return;
+
+	if (GEM_WARN_ON(!intel_pxp_is_enabled(gt->i915)))
 		return;
 
 	lockdep_assert_held(gt->irq_lock);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
index 6a7d4e2ee138..5f713ac5c3ce 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -11,7 +11,7 @@
 
 void intel_pxp_suspend_prepare(struct intel_pxp *pxp)
 {
-	if (!intel_pxp_is_enabled(pxp))
+	if (!intel_pxp_is_enabled(pxp_to_gt(pxp)->i915))
 		return;
 
 	pxp->arb_is_valid = false;
@@ -23,7 +23,7 @@ void intel_pxp_suspend(struct intel_pxp *pxp)
 {
 	intel_wakeref_t wakeref;
 
-	if (!intel_pxp_is_enabled(pxp))
+	if (!intel_pxp_is_enabled(pxp_to_gt(pxp)->i915))
 		return;
 
 	with_intel_runtime_pm(&pxp_to_gt(pxp)->i915->runtime_pm, wakeref) {
@@ -34,7 +34,7 @@ void intel_pxp_suspend(struct intel_pxp *pxp)
 
 void intel_pxp_resume(struct intel_pxp *pxp)
 {
-	if (!intel_pxp_is_enabled(pxp))
+	if (!intel_pxp_is_enabled(pxp_to_gt(pxp)->i915))
 		return;
 
 	/*
@@ -50,7 +50,7 @@ void intel_pxp_resume(struct intel_pxp *pxp)
 
 void intel_pxp_runtime_suspend(struct intel_pxp *pxp)
 {
-	if (!intel_pxp_is_enabled(pxp))
+	if (!intel_pxp_is_enabled(pxp_to_gt(pxp)->i915))
 		return;
 
 	pxp->arb_is_valid = false;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 052fd2f9a583..792a56edfde7 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -152,7 +152,7 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 		return 0;
 
 	/* the component is required to fully start the PXP HW */
-	if (intel_pxp_is_enabled(pxp))
+	if (intel_pxp_is_enabled(i915))
 		intel_pxp_init_hw(pxp);
 
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
@@ -167,7 +167,7 @@ static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
 	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
 	intel_wakeref_t wakeref;
 
-	if (intel_pxp_is_enabled(pxp))
+	if (intel_pxp_is_enabled(i915))
 		with_intel_runtime_pm_if_in_use(&i915->runtime_pm, wakeref)
 			intel_pxp_fini_hw(pxp);
 
-- 
2.34.1

