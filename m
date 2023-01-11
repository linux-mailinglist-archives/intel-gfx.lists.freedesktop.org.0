Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1256650BF
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 01:57:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B40610E6C0;
	Wed, 11 Jan 2023 00:57:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D743D10E0F2;
 Wed, 11 Jan 2023 00:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673398614; x=1704934614;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bjajzxiV1GP749/YYSgXBCIV3/yTkJZB5p0e27BI564=;
 b=SK8UzIjOmMqeu6gEIU+zKH5oAlPTuObewRVx10caPMUIcGQ+pnTMVEA8
 SiVj50pL03bsPVdoPZNHSjHy5O5gneDeFNLbhkVuxIgp2nr6koC9f7ffD
 ++zRO9QthGzQRe+2d8+B+tRZriIgHCT2JZKz43yxBlS/j1vO6qw2PcnJC
 XK9ORcJE4FL0BvyfFCUvgVXTuANAemI23ddYX+apE+lxb4jDvoiQ8keWj
 SqeuFBAuGaGNtwpI1syfYoviQbc4wTh3Fq9w50eAiVENOakLfEguwoJp7
 36WhOi5B6LI2fMZ/QkCSxV5XMnJ9LVrlfMmMU0uJ5g+pyycKQjDSaNYGl Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="325307104"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="325307104"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 16:56:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="831175673"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="831175673"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga005.jf.intel.com with ESMTP; 10 Jan 2023 16:56:54 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Jan 2023 16:56:40 -0800
Message-Id: <20230111005642.300761-11-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230111005642.300761-1-alan.previn.teres.alexis@intel.com>
References: <20230111005642.300761-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/9] drm/i915/pxp: On MTL,
 KCR enabling doesn't wait on tee component
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
Cc: dri-devel@lists.freedesktop.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On legacy platforms, KCR HW enabling is done at the time the mei
component interface is bound. It's also disabled during unbind.
However, for MTL onwards, we don't depend on the tee-component
operation before we can start sending GSC-CS firmware messages.

Thus, immediately enable KCR HW on PXP's init, fini and resume.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c     | 52 ++++++++++++++++++------
 drivers/gpu/drm/i915/pxp/intel_pxp.h     |  4 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c  | 10 ++---
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c | 13 +-----
 4 files changed, 49 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 809b49f59594..90e739345924 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -143,10 +143,12 @@ static void pxp_init_full(struct intel_pxp *pxp)
 	if (ret)
 		return;
 
-	if (pxp->uses_gsccs)
+	if (pxp->uses_gsccs) {
 		ret = intel_pxp_gsccs_init(pxp);
-	else
+		intel_pxp_init_hw(pxp, true);
+	} else {
 		ret = intel_pxp_tee_component_init(pxp);
+	}
 	if (ret)
 		goto out_context;
 
@@ -249,10 +251,12 @@ void intel_pxp_fini(struct drm_i915_private *i915)
 
 	i915->pxp->arb_is_valid = false;
 
-	if (i915->pxp->uses_gsccs)
+	if (i915->pxp->uses_gsccs) {
+		intel_pxp_fini_hw(i915->pxp, true);
 		intel_pxp_gsccs_fini(i915->pxp);
-	else
+	} else {
 		intel_pxp_tee_component_fini(i915->pxp);
+	}
 
 	destroy_vcs_context(i915->pxp);
 
@@ -304,8 +308,9 @@ int intel_pxp_start(struct intel_pxp *pxp)
 	if (!intel_pxp_is_enabled(pxp))
 		return -ENODEV;
 
-	if (wait_for(pxp_component_bound(pxp), 250))
-		return -ENXIO;
+	if (!pxp->uses_gsccs)
+		if (wait_for(pxp_component_bound(pxp), 250))
+			return -ENXIO;
 
 	mutex_lock(&pxp->arb_mutex);
 
@@ -331,16 +336,39 @@ int intel_pxp_start(struct intel_pxp *pxp)
 	return ret;
 }
 
-void intel_pxp_init_hw(struct intel_pxp *pxp)
+static void
+intel_pxp_hw_state_change(struct intel_pxp *pxp, bool enable,
+			  bool skip_if_runtime_pm_off)
+{
+	intel_wakeref_t wakeref;
+
+	if (skip_if_runtime_pm_off) {
+		/* if we are suspended, the HW will be re-initialized on resume */
+		wakeref = intel_runtime_pm_get_if_in_use(&pxp->ctrl_gt->i915->runtime_pm);
+		if (!wakeref)
+			return;
+	}
+
+	if (enable) {
+		kcr_pxp_enable(pxp);
+		intel_pxp_irq_enable(pxp);
+	} else {
+		kcr_pxp_disable(pxp);
+		intel_pxp_irq_disable(pxp);
+	}
+
+	if (skip_if_runtime_pm_off)
+		intel_runtime_pm_put(&pxp->ctrl_gt->i915->runtime_pm, wakeref);
+}
+
+void intel_pxp_init_hw(struct intel_pxp *pxp, bool skip_if_runtime_pm_off)
 {
-	kcr_pxp_enable(pxp);
-	intel_pxp_irq_enable(pxp);
+	intel_pxp_hw_state_change(pxp, true, skip_if_runtime_pm_off);
 }
 
-void intel_pxp_fini_hw(struct intel_pxp *pxp)
+void intel_pxp_fini_hw(struct intel_pxp *pxp, bool skip_if_runtime_pm_off)
 {
-	kcr_pxp_disable(pxp);
-	intel_pxp_irq_disable(pxp);
+	intel_pxp_hw_state_change(pxp, false, skip_if_runtime_pm_off);
 }
 
 int intel_pxp_key_check(struct intel_pxp *pxp,
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 04440fada711..6c1fe3f0a20c 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -20,8 +20,8 @@ bool intel_pxp_is_active(const struct intel_pxp *pxp);
 int intel_pxp_init(struct drm_i915_private *i915);
 void intel_pxp_fini(struct drm_i915_private *i915);
 
-void intel_pxp_init_hw(struct intel_pxp *pxp);
-void intel_pxp_fini_hw(struct intel_pxp *pxp);
+void intel_pxp_init_hw(struct intel_pxp *pxp, bool skip_if_runtime_pm_off);
+void intel_pxp_fini_hw(struct intel_pxp *pxp, bool skip_if_runtime_pm_off);
 
 void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp);
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
index 892d39cc61c1..94c1b2fe1eb2 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -29,7 +29,7 @@ void intel_pxp_suspend(struct intel_pxp *pxp)
 		return;
 
 	with_intel_runtime_pm(&pxp->ctrl_gt->i915->runtime_pm, wakeref) {
-		intel_pxp_fini_hw(pxp);
+		intel_pxp_fini_hw(pxp, false);
 		pxp->hw_state_invalidated = false;
 	}
 }
@@ -40,14 +40,14 @@ void intel_pxp_resume(struct intel_pxp *pxp)
 		return;
 
 	/*
-	 * The PXP component gets automatically unbound when we go into S3 and
+	 * On Pre-MTL, PXP component gets automatically unbound when we go into S3 and
 	 * re-bound after we come out, so in that scenario we can defer the
 	 * hw init to the bind call.
 	 */
-	if (!pxp->pxp_component)
+	if (!pxp->uses_gsccs & !pxp->pxp_component)
 		return;
 
-	intel_pxp_init_hw(pxp);
+	intel_pxp_init_hw(pxp, false);
 }
 
 void intel_pxp_runtime_suspend(struct intel_pxp *pxp)
@@ -57,7 +57,7 @@ void intel_pxp_runtime_suspend(struct intel_pxp *pxp)
 
 	pxp->arb_is_valid = false;
 
-	intel_pxp_fini_hw(pxp);
+	intel_pxp_fini_hw(pxp, false);
 
 	pxp->hw_state_invalidated = false;
 }
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index d50354bfb993..9b34f2056b19 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -141,16 +141,9 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 		}
 	}
 
-	/* if we are suspended, the HW will be re-initialized on resume */
-	wakeref = intel_runtime_pm_get_if_in_use(&i915->runtime_pm);
-	if (!wakeref)
-		return 0;
-
 	/* the component is required to fully start the PXP HW */
 	if (intel_pxp_is_enabled(pxp))
-		intel_pxp_init_hw(pxp);
-
-	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+		intel_pxp_init_hw(pxp, true);
 
 	return ret;
 }
@@ -160,11 +153,9 @@ static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
 {
 	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
 	struct intel_pxp *pxp = i915->pxp;
-	intel_wakeref_t wakeref;
 
 	if (intel_pxp_is_enabled(pxp))
-		with_intel_runtime_pm_if_in_use(&i915->runtime_pm, wakeref)
-			intel_pxp_fini_hw(pxp);
+		intel_pxp_fini_hw(pxp, true);
 
 	mutex_lock(&pxp->tee_mutex);
 	pxp->pxp_component = NULL;
-- 
2.39.0

