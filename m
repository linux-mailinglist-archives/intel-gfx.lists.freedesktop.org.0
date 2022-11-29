Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B8F63B6C1
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 01:46:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5222B10E35D;
	Tue, 29 Nov 2022 00:46:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A0E610E35E
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 00:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669682764; x=1701218764;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2/0/UB2F424o917YDrtU0m+TCouJ4FWte4aITf2qwHA=;
 b=IcHiuOj99nOkMvuEROUeiDcwonVDtyKBbP34zgJ/j2GeWOeEbxIsJGPz
 IIpf8pDE9ioh+3v4lZLkb3H6QFwmY8cw41nV24/3YHC8YUWaduq0qdijY
 3S2cf6q0ml2UVWkizCoOXEQJjmMdS8T8ItEmpu9vcpAyCUhmsDFKgXArj
 mobxQ4K6lLFfslaoOBIKSaSqoWDjeAfGc1AwP80vLeguNSTdgltd8XMKl
 FwF0rgPa6AE7LiO9reqIA3vCarRcGmEP7W1QCRnFGDmAME/6fIwJsF9si
 czsPjt52SmjjQQVwlAQIwPLsx97zrBmU2fGCCArdOAOTR3mFuKbic4FDn g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="401271781"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="401271781"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 16:46:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="676243289"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="676243289"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga001.jf.intel.com with ESMTP; 28 Nov 2022 16:46:03 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Nov 2022 16:48:32 -0800
Message-Id: <20221129004832.3735764-4-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221129004832.3735764-1-alan.previn.teres.alexis@intel.com>
References: <20221129004832.3735764-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915/pxp: Pxp hw init should be in
 resume_complete
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

During suspend flow, i915 currently achors' on the pm_suspend_prepare
callback as the location where we quiesce the entire GPU and perform
all necessary cleanup in order to go into suspend. PXP is also called
during this time to perform the arbitration session teardown (with
the assurance no additional GEM IOCTLs will come after that could
restart the session).

However, if other devices or drivers fail their suspend_prepare, the
system will not go into suspend and i915 will be expected to resume
operation. In this case, we need to re-initialize the PXP hardware
and this really should be done within the pm_resume_complete callback
which is the correct opposing function in the resume sequence to
match pm_suspend_prepare of the suspend sequence.

Because this callback is the last thing at the end of resuming
we expect little to no impact to the rest of the i915 resume sequence
with this change.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_pm.c  | 11 +++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_pm.h  |  2 ++
 drivers/gpu/drm/i915/gt/intel_gt_pm.c   |  7 +++++--
 drivers/gpu/drm/i915/gt/intel_gt_pm.h   |  2 ++
 drivers/gpu/drm/i915/i915_driver.c      | 16 ++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h |  6 +++---
 7 files changed, 40 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pm.c b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
index 0d812f4d787d..774a3fcd192a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
@@ -87,6 +87,17 @@ static void lmem_recover(struct drm_i915_private *i915)
 			i915_ttm_recover_region(mr);
 }
 
+void i915_gem_resume_complete(struct drm_i915_private *i915)
+{
+	struct intel_gt *gt;
+	unsigned int i;
+
+	GEM_TRACE("%s\n", dev_name(i915->drm.dev));
+
+	for_each_gt(gt, i915, i)
+		intel_gt_resume_complete(gt);
+}
+
 int i915_gem_backup_suspend(struct drm_i915_private *i915)
 {
 	int ret;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pm.h b/drivers/gpu/drm/i915/gem/i915_gem_pm.h
index bedf1e95941a..8e791a06392a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pm.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pm.h
@@ -20,6 +20,8 @@ void i915_gem_suspend(struct drm_i915_private *i915);
 void i915_gem_suspend_late(struct drm_i915_private *i915);
 int i915_gem_backup_suspend(struct drm_i915_private *i915);
 
+void i915_gem_resume_complete(struct drm_i915_private *i915);
+
 int i915_gem_freeze(struct drm_i915_private *i915);
 int i915_gem_freeze_late(struct drm_i915_private *i915);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index 16db85fab0b1..e1941bd36336 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -304,8 +304,6 @@ int intel_gt_resume(struct intel_gt *gt)
 
 	intel_uc_resume(&gt->uc);
 
-	intel_pxp_resume(&gt->pxp);
-
 	user_forcewake(gt, false);
 
 out_fw:
@@ -335,6 +333,11 @@ static void wait_for_suspend(struct intel_gt *gt)
 	intel_gt_pm_wait_for_idle(gt);
 }
 
+void intel_gt_resume_complete(struct intel_gt *gt)
+{
+	intel_pxp_resume_complete(&gt->pxp);
+}
+
 void intel_gt_suspend_prepare(struct intel_gt *gt)
 {
 	user_forcewake(gt, true);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.h b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
index 6c9a46452364..f23388805332 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
@@ -77,7 +77,9 @@ void intel_gt_pm_fini(struct intel_gt *gt);
 
 void intel_gt_suspend_prepare(struct intel_gt *gt);
 void intel_gt_suspend_late(struct intel_gt *gt);
+
 int intel_gt_resume(struct intel_gt *gt);
+void intel_gt_resume_complete(struct intel_gt *gt);
 
 void intel_gt_runtime_suspend(struct intel_gt *gt);
 int intel_gt_runtime_resume(struct intel_gt *gt);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 69103ae37779..e0b736bd0b06 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1168,6 +1168,11 @@ static bool suspend_to_idle(struct drm_i915_private *dev_priv)
 	return false;
 }
 
+static void i915_drm_complete(struct drm_device *dev)
+{
+	i915_gem_resume_complete(to_i915(dev));
+}
+
 static int i915_drm_prepare(struct drm_device *dev)
 {
 	struct drm_i915_private *i915 = to_i915(dev);
@@ -1470,6 +1475,16 @@ int i915_driver_resume_switcheroo(struct drm_i915_private *i915)
 	return i915_drm_resume(&i915->drm);
 }
 
+static void i915_pm_complete(struct device *kdev)
+{
+	struct drm_i915_private *i915 = kdev_to_i915(kdev);
+
+	if (!i915)
+		dev_err(kdev, "DRM not initialized, aborting suspend.\n");
+
+	i915_drm_complete(&i915->drm);
+}
+
 static int i915_pm_prepare(struct device *kdev)
 {
 	struct drm_i915_private *i915 = kdev_to_i915(kdev);
@@ -1774,6 +1789,7 @@ const struct dev_pm_ops i915_pm_ops = {
 	 * PMSG_RESUME]
 	 */
 	.prepare = i915_pm_prepare,
+	.complete = i915_pm_complete,
 	.suspend = i915_pm_suspend,
 	.suspend_late = i915_pm_suspend_late,
 	.resume_early = i915_pm_resume_early,
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
index 36af52c28e63..bdd984fc4298 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -32,7 +32,7 @@ void intel_pxp_suspend(struct intel_pxp *pxp)
 	}
 }
 
-void intel_pxp_resume(struct intel_pxp *pxp)
+void intel_pxp_resume_complete(struct intel_pxp *pxp)
 {
 	if (!intel_pxp_is_enabled(pxp))
 		return;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
index 586be769104f..06b46f535b42 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
@@ -11,7 +11,7 @@ struct intel_pxp;
 #ifdef CONFIG_DRM_I915_PXP
 void intel_pxp_suspend_prepare(struct intel_pxp *pxp);
 void intel_pxp_suspend(struct intel_pxp *pxp);
-void intel_pxp_resume(struct intel_pxp *pxp);
+void intel_pxp_resume_complete(struct intel_pxp *pxp);
 void intel_pxp_runtime_suspend(struct intel_pxp *pxp);
 #else
 static inline void intel_pxp_suspend_prepare(struct intel_pxp *pxp)
@@ -22,7 +22,7 @@ static inline void intel_pxp_suspend(struct intel_pxp *pxp)
 {
 }
 
-static inline void intel_pxp_resume(struct intel_pxp *pxp)
+static inline void intel_pxp_resume_complete(struct intel_pxp *pxp)
 {
 }
 
@@ -32,6 +32,6 @@ static inline void intel_pxp_runtime_suspend(struct intel_pxp *pxp)
 #endif
 static inline void intel_pxp_runtime_resume(struct intel_pxp *pxp)
 {
-	intel_pxp_resume(pxp);
+	intel_pxp_resume_complete(pxp);
 }
 #endif /* __INTEL_PXP_PM_H__ */
-- 
2.34.1

