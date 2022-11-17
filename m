Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A93A262CF93
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 01:28:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5195310E509;
	Thu, 17 Nov 2022 00:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2889F10E4FB
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 00:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668644890; x=1700180890;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hv2kPxo0rkMBJygTSwugqL373JPoegf35ZwqsuO3V7o=;
 b=JwuKfY65eqL7sf28vPRtHYnsDBeaQ1sbHDkFBOU3HBn9OLNgDTymgD9F
 EgCu22y7agzvl9YJEehIUCL379ZUTl6/7ZhrSDhEkvBbN7fKyyEUNc4U/
 d5QSVH3aCV0CClWerOg2JX0fYCj4ebKAf7qitA0/U9jiZEPdrjBhDazBJ
 yU4iQ0wx6ANn3eVDrU4qajBps4ja7DnRHVh53aIQ4VDaEdMTD8/MNk+pn
 nwwgNJWlEwA5+ZBoxG5w+X6VOv2jA4eoeKuLLS3sHFVfCKAVFfxm2VP1P
 KYOPLbVtJPVvXcJ6v9X1tIQmKlb/RiYrex48QgbQS+OlsAa3FXykXmtB/ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="312722093"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="312722093"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 16:27:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="781985082"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="781985082"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga001.fm.intel.com with ESMTP; 16 Nov 2022 16:27:48 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Nov 2022 16:30:14 -0800
Message-Id: <20221117003018.1433115-3-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
References: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/6] drm/i915/pxp: Make intel_pxp_is_enabled
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

Make intel_pxp_is_enabled a global check and implicitly find the
PXP-owning-GT.

PXP feature support is a device-config flag. In preparation for MTL
PXP control-context shall reside on of the two GT's. That said,
update intel_pxp_is_enabled to take in i915 as its input and internally
find the right gt to check if PXP is enabled so its transparent to
callers of this functions.

However we also need to expose the per-gt variation of this internal
pxp files to use (like what intel_pxp_enabled was prior) so also expose
a new intel_gtpxp_is_enabled function for replacement.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c  |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_create.c   |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c         | 28 ++++++++++++++++++--
 drivers/gpu/drm/i915/pxp/intel_pxp.h         |  4 ++-
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c     |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c     |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c      |  8 +++---
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     |  4 +--
 9 files changed, 40 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 7f2831efc798..c123f4847b19 100644
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
index d993e752bd36..88105101af79 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -9,6 +9,7 @@
 #include "intel_pxp_tee.h"
 #include "gem/i915_gem_context.h"
 #include "gt/intel_context.h"
+#include "gt/intel_gt.h"
 #include "i915_drv.h"
 
 /**
@@ -58,11 +59,34 @@ bool intel_pxp_supported_on_gt(const struct intel_pxp *pxp)
 		INTEL_INFO((pxp_to_gt(pxp))->i915)->has_pxp && VDBOX_MASK(pxp_to_gt(pxp)));
 }
 
-bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
+bool intel_pxp_is_enabled_on_gt(const struct intel_pxp *pxp)
 {
 	return pxp->ce;
 }
 
+static struct intel_gt *i915_to_pxp_gt(struct drm_i915_private *i915)
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
+	struct intel_gt *gt = i915_to_pxp_gt(i915);
+
+	if (!gt)
+		return false;
+
+	return intel_pxp_is_enabled_on_gt(&gt->pxp);
+}
+
 bool intel_pxp_is_active(const struct intel_pxp *pxp)
 {
 	return pxp->arb_is_valid;
@@ -216,7 +240,7 @@ int intel_pxp_start(struct intel_pxp *pxp)
 {
 	int ret = 0;
 
-	if (!intel_pxp_is_enabled(pxp))
+	if (!intel_pxp_is_enabled_on_gt(pxp))
 		return -ENODEV;
 
 	if (wait_for(pxp_component_bound(pxp), 250))
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index efa83f9d5e24..3f71b1653f74 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -11,12 +11,14 @@
 
 struct intel_pxp;
 struct drm_i915_gem_object;
+struct drm_i915_private;
 
 struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
 
 bool intel_pxp_supported_on_gt(const struct intel_pxp *pxp);
 
-bool intel_pxp_is_enabled(const struct intel_pxp *pxp);
+bool intel_pxp_is_enabled_on_gt(const struct intel_pxp *pxp);
+bool intel_pxp_is_enabled(struct drm_i915_private *i915);
 bool intel_pxp_is_active(const struct intel_pxp *pxp);
 
 void intel_pxp_init(struct intel_pxp *pxp);
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
index f0ad6f34624a..4d257055434b 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
@@ -18,7 +18,7 @@ static int pxp_info_show(struct seq_file *m, void *data)
 {
 	struct intel_pxp *pxp = m->private;
 	struct drm_printer p = drm_seq_file_printer(m);
-	bool enabled = intel_pxp_is_enabled(pxp);
+	bool enabled = intel_pxp_is_enabled_on_gt(pxp);
 
 	if (!enabled) {
 		drm_printf(&p, "pxp disabled\n");
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
index c28be430718a..d3c697bf9aab 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
@@ -22,7 +22,7 @@ void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
 {
 	struct intel_gt *gt = pxp_to_gt(pxp);
 
-	if (GEM_WARN_ON(!intel_pxp_is_enabled(pxp)))
+	if (GEM_WARN_ON(!intel_pxp_is_enabled_on_gt(pxp)))
 		return;
 
 	lockdep_assert_held(gt->irq_lock);
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
index b0c9170b1395..a5c9c692c20d 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -152,7 +152,7 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 		return 0;
 
 	/* the component is required to fully start the PXP HW */
-	if (intel_pxp_is_enabled(pxp))
+	if (intel_pxp_is_enabled_on_gt(pxp))
 		intel_pxp_init_hw(pxp);
 
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
@@ -167,7 +167,7 @@ static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
 	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
 	intel_wakeref_t wakeref;
 
-	if (intel_pxp_is_enabled(pxp))
+	if (intel_pxp_is_enabled_on_gt(pxp))
 		with_intel_runtime_pm_if_in_use(&i915->runtime_pm, wakeref)
 			intel_pxp_fini_hw(pxp);
 
-- 
2.34.1

