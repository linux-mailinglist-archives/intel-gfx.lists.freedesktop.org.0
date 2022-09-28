Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D3F5ED225
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 02:41:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B439C10E213;
	Wed, 28 Sep 2022 00:41:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14E0510E1F5
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 00:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664325624; x=1695861624;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8gM0Ftm3X0jDIFjRDIa4FBRqHaZ7IFGj8knR30XvMhA=;
 b=btDLO2DHs1BnH81xNBZWlUEg/PIuWFnAa6dB79SXEW3q2GQK3Qp4C2eh
 uqYXZRR0wcwT4jhDpDPsd0eeA9aNBEjXXFi3fj0dzQ/5cmo542nN1Gu3y
 +dUplWuqbJmQmspmSWh9CNzphExgra25rQwxF3cC1+a/hkRLARHO6vwIX
 n2l0JzK3An9QL3MWHDYHhrJrX8ezbZz7uyVYzDzBzgL2FUtKr7K9dsgce
 Bss4wPQZP8CNVEikX8IM0Qc+G0FA9Xaq3SnuHoUr9bfkCfQFpbaGJfbWV
 70gc7GQZPK47jXiG5FaZquwmy5L75Kwm8mV9c1sG9m8rJGauUbPSvKRwt A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="387752070"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="387752070"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 17:40:23 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="572841172"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="572841172"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 17:40:23 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Sep 2022 17:41:37 -0700
Message-Id: <20220928004145.745803-8-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
References: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 07/15] drm/i915/pxp: load the pxp module when we
 have a gsc-loaded huc
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

The mei_pxp module is required to send the command to load authenticate
the HuC to the GSC even if pxp is not in use for protected content
management.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/Makefile                | 10 +++---
 drivers/gpu/drm/i915/pxp/intel_pxp.c         | 32 +++++++++++++-------
 drivers/gpu/drm/i915/pxp/intel_pxp.h         | 32 --------------------
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.h     |  8 +++++
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c |  8 ++++-
 drivers/gpu/drm/i915/pxp/intel_pxp_session.h | 11 +++++--
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     | 10 ++++--
 7 files changed, 57 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index a26edcdadc21..26fc2f23c4e0 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -309,15 +309,17 @@ i915-y += \
 
 i915-y += i915_perf.o
 
-# Protected execution platform (PXP) support
-i915-$(CONFIG_DRM_I915_PXP) += \
+# Protected execution platform (PXP) support. Base support is required for HuC
+i915-y += \
 	pxp/intel_pxp.o \
+	pxp/intel_pxp_tee.o
+
+i915-$(CONFIG_DRM_I915_PXP) += \
 	pxp/intel_pxp_cmd.o \
 	pxp/intel_pxp_debugfs.o \
 	pxp/intel_pxp_irq.o \
 	pxp/intel_pxp_pm.o \
-	pxp/intel_pxp_session.o \
-	pxp/intel_pxp_tee.o
+	pxp/intel_pxp_session.o
 
 # Post-mortem debug and GPU hang state capture
 i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += i915_gpu_error.o
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 69cdaaddc4a9..5efe61f67546 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -103,19 +103,15 @@ static int create_vcs_context(struct intel_pxp *pxp)
 
 static void destroy_vcs_context(struct intel_pxp *pxp)
 {
-	intel_engine_destroy_pinned_context(fetch_and_zero(&pxp->ce));
+	if (pxp->ce)
+		intel_engine_destroy_pinned_context(fetch_and_zero(&pxp->ce));
 }
 
-void intel_pxp_init(struct intel_pxp *pxp)
+static void pxp_init_full(struct intel_pxp *pxp)
 {
 	struct intel_gt *gt = pxp_to_gt(pxp);
 	int ret;
 
-	if (!HAS_PXP(gt->i915))
-		return;
-
-	mutex_init(&pxp->tee_mutex);
-
 	/*
 	 * we'll use the completion to check if there is a termination pending,
 	 * so we start it as completed and we reinit it when a termination
@@ -124,8 +120,7 @@ void intel_pxp_init(struct intel_pxp *pxp)
 	init_completion(&pxp->termination);
 	complete_all(&pxp->termination);
 
-	mutex_init(&pxp->arb_mutex);
-	INIT_WORK(&pxp->session_work, intel_pxp_session_work);
+	intel_pxp_session_management_init(pxp);
 
 	ret = create_vcs_context(pxp);
 	if (ret)
@@ -143,11 +138,26 @@ void intel_pxp_init(struct intel_pxp *pxp)
 	destroy_vcs_context(pxp);
 }
 
-void intel_pxp_fini(struct intel_pxp *pxp)
+void intel_pxp_init(struct intel_pxp *pxp)
 {
-	if (!intel_pxp_is_enabled(pxp))
+	struct intel_gt *gt = pxp_to_gt(pxp);
+
+	/* we rely on the mei PXP module */
+	if (!IS_ENABLED(CONFIG_INTEL_MEI_PXP))
 		return;
 
+	/*
+	 * If HuC is loaded by GSC but PXP is disabled, we can skip the init of
+	 * the full PXP session/object management and just init the tee channel.
+	 */
+	if (HAS_PXP(gt->i915))
+		pxp_init_full(pxp);
+	else if (intel_huc_is_loaded_by_gsc(&gt->uc.huc) && intel_uc_uses_huc(&gt->uc))
+		intel_pxp_tee_component_init(pxp);
+}
+
+void intel_pxp_fini(struct intel_pxp *pxp)
+{
 	pxp->arb_is_valid = false;
 
 	intel_pxp_tee_component_fini(pxp);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 73847e535cab..2da309088c6d 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -12,7 +12,6 @@
 struct intel_pxp;
 struct drm_i915_gem_object;
 
-#ifdef CONFIG_DRM_I915_PXP
 struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
 bool intel_pxp_is_enabled(const struct intel_pxp *pxp);
 bool intel_pxp_is_active(const struct intel_pxp *pxp);
@@ -32,36 +31,5 @@ int intel_pxp_key_check(struct intel_pxp *pxp,
 			bool assign);
 
 void intel_pxp_invalidate(struct intel_pxp *pxp);
-#else
-static inline void intel_pxp_init(struct intel_pxp *pxp)
-{
-}
-
-static inline void intel_pxp_fini(struct intel_pxp *pxp)
-{
-}
-
-static inline int intel_pxp_start(struct intel_pxp *pxp)
-{
-	return -ENODEV;
-}
-
-static inline bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
-{
-	return false;
-}
-
-static inline bool intel_pxp_is_active(const struct intel_pxp *pxp)
-{
-	return false;
-}
-
-static inline int intel_pxp_key_check(struct intel_pxp *pxp,
-				      struct drm_i915_gem_object *obj,
-				      bool assign)
-{
-	return -ENODEV;
-}
-#endif
 
 #endif /* __INTEL_PXP_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.h b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.h
index 8b5793654844..8c292dc86f68 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.h
@@ -27,6 +27,14 @@ void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir);
 static inline void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
 {
 }
+
+static inline void intel_pxp_irq_enable(struct intel_pxp *pxp)
+{
+}
+
+static inline void intel_pxp_irq_disable(struct intel_pxp *pxp)
+{
+}
 #endif
 
 #endif /* __INTEL_PXP_IRQ_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
index c4f5c994ca51..85572360c71a 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
@@ -138,7 +138,7 @@ static void pxp_terminate_complete(struct intel_pxp *pxp)
 	complete_all(&pxp->termination);
 }
 
-void intel_pxp_session_work(struct work_struct *work)
+static void pxp_session_work(struct work_struct *work)
 {
 	struct intel_pxp *pxp = container_of(work, typeof(*pxp), session_work);
 	struct intel_gt *gt = pxp_to_gt(pxp);
@@ -173,3 +173,9 @@ void intel_pxp_session_work(struct work_struct *work)
 
 	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
 }
+
+void intel_pxp_session_management_init(struct intel_pxp *pxp)
+{
+	mutex_init(&pxp->arb_mutex);
+	INIT_WORK(&pxp->session_work, pxp_session_work);
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.h b/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
index ba4c9d2b94b7..903ac52cffa1 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
@@ -8,8 +8,13 @@
 
 #include <linux/types.h>
 
-struct work_struct;
-
-void intel_pxp_session_work(struct work_struct *work);
+struct intel_pxp;
 
+#ifdef CONFIG_DRM_I915_PXP
+void intel_pxp_session_management_init(struct intel_pxp *pxp);
+#else
+static inline void intel_pxp_session_management_init(struct intel_pxp *pxp)
+{
+}
+#endif
 #endif /* __INTEL_PXP_SESSION_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index a90905039216..17d7d83b6f1b 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -97,7 +97,8 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 		return 0;
 
 	/* the component is required to fully start the PXP HW */
-	intel_pxp_init_hw(pxp);
+	if (intel_pxp_is_enabled(pxp))
+		intel_pxp_init_hw(pxp);
 
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 
@@ -111,8 +112,9 @@ static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
 	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
 	intel_wakeref_t wakeref;
 
-	with_intel_runtime_pm_if_in_use(&i915->runtime_pm, wakeref)
-		intel_pxp_fini_hw(pxp);
+	if (intel_pxp_is_enabled(pxp))
+		with_intel_runtime_pm_if_in_use(&i915->runtime_pm, wakeref)
+			intel_pxp_fini_hw(pxp);
 
 	mutex_lock(&pxp->tee_mutex);
 	pxp->pxp_component = NULL;
@@ -130,6 +132,8 @@ int intel_pxp_tee_component_init(struct intel_pxp *pxp)
 	struct intel_gt *gt = pxp_to_gt(pxp);
 	struct drm_i915_private *i915 = gt->i915;
 
+	mutex_init(&pxp->tee_mutex);
+
 	ret = component_add_typed(i915->drm.dev, &i915_pxp_tee_component_ops,
 				  I915_COMPONENT_PXP);
 	if (ret < 0) {
-- 
2.37.3

