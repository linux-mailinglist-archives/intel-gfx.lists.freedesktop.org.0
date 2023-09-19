Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 407DF7A6A65
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 20:05:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A546810E165;
	Tue, 19 Sep 2023 18:05:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF54E10E165;
 Tue, 19 Sep 2023 18:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695146699; x=1726682699;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oojJUQsK9CJfAeLaAH3nHI6C/B3G0GZTuDwapYCGOBY=;
 b=TZBMUcxxvypSZDKFjkRjpYffPMAEfIonXyU6eRKgopLiJet7tZzr/dKn
 Y0L2lUOhF+utQmocS46DDdxvXrt6XusTKH1Njo7PSpHpnavgcnaZ1JFy/
 z1BQh5KMNjLMrOk9Y8sl/Lq5E6KmUYRVDoPSE0oRNUumu/vXjQ6wTP7AB
 kw9b/lcCJ/2VeqIg/fL/+rKpuBL1AxStw06G4YDSbZis+LgSsYNyvZ3QJ
 Ealylmz+u4ooOygJxuHpbGi41OPKT1srXEGnxd9DWdc22xvLMItetFgyX
 JdbmdA9klKPIiPRX3gWQQkVGNfAOpWuKrG8QiEmbMD1meIybukwyVUGUp A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="446485792"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="446485792"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 11:04:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="919965172"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="919965172"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga005.jf.intel.com with ESMTP; 19 Sep 2023 11:04:26 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Sep 2023 11:04:25 -0700
Message-Id: <20230919180425.1517853-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4] drm/i915/pxp: Add drm_dbgs for critical PXP
 events.
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Debugging PXP issues can't even begin without understanding precedding
sequence of important events. Add drm_dbg into the most important PXP
events.

 v3 : - move gt_dbg to after mutex block in function
        i915_gsc_proxy_component_bind. (Vivaik)
 v2 : - remove __func__ since drm_dbg covers that (Jani).
      - add timeout dbg of the restart from front-end (Alan).

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Vivaik Balasubrawmanian <vivaik.balasubrawmanian@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c |  2 ++
 drivers/gpu/drm/i915/pxp/intel_pxp.c         | 15 ++++++++++++---
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c     |  5 +++--
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c |  6 +++++-
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h   |  1 +
 5 files changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
index 5f138de3c14f..40817ebcca71 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
@@ -322,6 +322,7 @@ static int i915_gsc_proxy_component_bind(struct device *i915_kdev,
 	gsc->proxy.component = data;
 	gsc->proxy.component->mei_dev = mei_kdev;
 	mutex_unlock(&gsc->proxy.mutex);
+	gt_dbg(gt, "GSC proxy mei component bound\n");
 
 	return 0;
 }
@@ -342,6 +343,7 @@ static void i915_gsc_proxy_component_unbind(struct device *i915_kdev,
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
 		intel_uncore_rmw(gt->uncore, HECI_H_CSR(MTL_GSC_HECI2_BASE),
 				 HECI_H_CSR_IE | HECI_H_CSR_RST, 0);
+	gt_dbg(gt, "GSC proxy mei component unbound\n");
 }
 
 static const struct component_ops i915_gsc_proxy_component_ops = {
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index dc327cf40b5a..e11f562b1876 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -303,6 +303,8 @@ static int __pxp_global_teardown_final(struct intel_pxp *pxp)
 
 	if (!pxp->arb_is_valid)
 		return 0;
+
+	drm_dbg(&pxp->ctrl_gt->i915->drm, "PXP: teardown for suspend/fini");
 	/*
 	 * To ensure synchronous and coherent session teardown completion
 	 * in response to suspend or shutdown triggers, don't use a worker.
@@ -324,6 +326,8 @@ static int __pxp_global_teardown_restart(struct intel_pxp *pxp)
 
 	if (pxp->arb_is_valid)
 		return 0;
+
+	drm_dbg(&pxp->ctrl_gt->i915->drm, "PXP: teardown for restart");
 	/*
 	 * The arb-session is currently inactive and we are doing a reset and restart
 	 * due to a runtime event. Use the worker that was designed for this.
@@ -332,8 +336,11 @@ static int __pxp_global_teardown_restart(struct intel_pxp *pxp)
 
 	timeout = intel_pxp_get_backend_timeout_ms(pxp);
 
-	if (!wait_for_completion_timeout(&pxp->termination, msecs_to_jiffies(timeout)))
+	if (!wait_for_completion_timeout(&pxp->termination, msecs_to_jiffies(timeout))) {
+		drm_dbg(&pxp->ctrl_gt->i915->drm, "PXP: restart backend timed out (%d ms)",
+			timeout);
 		return -ETIMEDOUT;
+	}
 
 	return 0;
 }
@@ -414,10 +421,12 @@ int intel_pxp_start(struct intel_pxp *pxp)
 	int ret = 0;
 
 	ret = intel_pxp_get_readiness_status(pxp, PXP_READINESS_TIMEOUT);
-	if (ret < 0)
+	if (ret < 0) {
+		drm_dbg(&pxp->ctrl_gt->i915->drm, "PXP: tried but not-avail (%d)", ret);
 		return ret;
-	else if (ret > 1)
+	} else if (ret > 1) {
 		return -EIO; /* per UAPI spec, user may retry later */
+	}
 
 	mutex_lock(&pxp->arb_mutex);
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
index 91e9622c07d0..d81750b9bdda 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
@@ -40,11 +40,12 @@ void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
 		   GEN12_DISPLAY_APP_TERMINATED_PER_FW_REQ_INTERRUPT)) {
 		/* immediately mark PXP as inactive on termination */
 		intel_pxp_mark_termination_in_progress(pxp);
-		pxp->session_events |= PXP_TERMINATION_REQUEST | PXP_INVAL_REQUIRED;
+		pxp->session_events |= PXP_TERMINATION_REQUEST | PXP_INVAL_REQUIRED |
+				       PXP_EVENT_TYPE_IRQ;
 	}
 
 	if (iir & GEN12_DISPLAY_STATE_RESET_COMPLETE_INTERRUPT)
-		pxp->session_events |= PXP_TERMINATION_COMPLETE;
+		pxp->session_events |= PXP_TERMINATION_COMPLETE | PXP_EVENT_TYPE_IRQ;
 
 	if (pxp->session_events)
 		queue_work(system_unbound_wq, &pxp->session_work);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
index 0a3e66b0265e..091c86e03d1a 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
@@ -137,8 +137,10 @@ void intel_pxp_terminate(struct intel_pxp *pxp, bool post_invalidation_needs_res
 static void pxp_terminate_complete(struct intel_pxp *pxp)
 {
 	/* Re-create the arb session after teardown handle complete */
-	if (fetch_and_zero(&pxp->hw_state_invalidated))
+	if (fetch_and_zero(&pxp->hw_state_invalidated)) {
+		drm_dbg(&pxp->ctrl_gt->i915->drm, "PXP: creating arb_session after invalidation");
 		pxp_create_arb_session(pxp);
+	}
 
 	complete_all(&pxp->termination);
 }
@@ -157,6 +159,8 @@ static void pxp_session_work(struct work_struct *work)
 	if (!events)
 		return;
 
+	drm_dbg(&gt->i915->drm, "PXP: processing event-flags 0x%08x", events);
+
 	if (events & PXP_INVAL_REQUIRED)
 		intel_pxp_invalidate(pxp);
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
index 7e11fa8034b2..07864b584cf4 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -124,6 +124,7 @@ struct intel_pxp {
 #define PXP_TERMINATION_REQUEST  BIT(0)
 #define PXP_TERMINATION_COMPLETE BIT(1)
 #define PXP_INVAL_REQUIRED       BIT(2)
+#define PXP_EVENT_TYPE_IRQ       BIT(3)
 };
 
 #endif /* __INTEL_PXP_TYPES_H__ */

base-commit: 61b71c3f061a44a6ab1dcf756918886aa03a5480
-- 
2.39.0

