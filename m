Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6FD678FEF
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 06:32:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3473B10E603;
	Tue, 24 Jan 2023 05:32:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3649910E5F4;
 Tue, 24 Jan 2023 05:31:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674538315; x=1706074315;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tpA+SdFROrqjOiHBenU4xLPD1EbOmpIsbDBF87yZB+s=;
 b=eyMnQdmvN4penb+BH9yuNsqShyxJjACEmxvtw+thAlWonpRWSOlexx8d
 i5WCGFXmkCc0RqSlvW5a/w76odbteZQeHjK6ajnEp03geoxdgnGxnS6lN
 AGAxZcA7Hq3gO6RqojoCi0LPVeh2qt0xQjUCHwnLmyD2zHe2mfcKgIZh9
 pr+z69FQL4eYGzrqPxOj4vEAxmW21OFfZycNIUp/HGinBH9gwjZLuUA8p
 ZxW2aJ7iL1CbR9BZ4XQ1jwbWjGZS2ZZOnF0BytJL60cOxP5YYaGCLvC67
 VZbNO6icsEyh1QOKl7w5ITyHq05aMZBEK+11Vpcl65Ef8YO1wJWOzw9IE w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="324906442"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="324906442"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 21:31:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="611921466"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="611921466"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga003.jf.intel.com with ESMTP; 23 Jan 2023 21:31:54 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Jan 2023 21:31:49 -0800
Message-Id: <20230124053150.3543928-6-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230124053150.3543928-1-alan.previn.teres.alexis@intel.com>
References: <20230124053150.3543928-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 5/6] drm/i915/pxp: Trigger the global
 teardown for before suspending
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
	Vivi@freedesktop.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rodrigo <rodrigo.vivi@intel.com>,
	Alexander Usyskin <alexander.usyskin@intel.com>,
	dri-devel@lists.freedesktop.org,
	Tomas Winkler <tomas.winkler@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A driver bug was recently discovered where the security firmware was
receiving internal HW signals indicating that session key expirations
had occurred. Architecturally, the firmware was expecting a response
from the GuC to acknowledge the event with the firmware side.
However the OS was in a suspended state and GuC had been reset.

Internal specifications actually required the driver to ensure
that all active sessions be properly cleaned up in such cases where
the system is suspended and the GuC potentially unable to respond.

This patch adds the global teardown code in i915's suspend_prepare
code path.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Juston Li <justonli@chromium.org>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c         | 65 +++++++++++++++++---
 drivers/gpu/drm/i915/pxp/intel_pxp.h         |  1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c      |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c |  6 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_session.h |  5 ++
 5 files changed, 66 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index cfc9af8b3d21..9d4c7724e98e 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -270,6 +270,60 @@ static bool pxp_component_bound(struct intel_pxp *pxp)
 	return bound;
 }
 
+static int __pxp_global_teardown_final(struct intel_pxp *pxp)
+{
+	if (!pxp->arb_is_valid)
+		return 0;
+	/*
+	 * To ensure synchronous and coherent session teardown completion
+	 * in response to suspend or shutdown triggers, don't use a worker.
+	 */
+	intel_pxp_mark_termination_in_progress(pxp);
+	intel_pxp_terminate(pxp, false);
+
+	if (!wait_for_completion_timeout(&pxp->termination, msecs_to_jiffies(250)))
+		return -ETIMEDOUT;
+
+	return 0;
+}
+
+static int __pxp_global_teardown_restart(struct intel_pxp *pxp)
+{
+	if (pxp->arb_is_valid)
+		return 0;
+	/*
+	 * The arb-session is currently inactive and we are doing a reset and restart
+	 * due to a runtime event. Use the worker that was designed for this.
+	 */
+	pxp_queue_termination(pxp);
+
+	if (!wait_for_completion_timeout(&pxp->termination, msecs_to_jiffies(250)))
+		return -ETIMEDOUT;
+
+	return 0;
+}
+
+void intel_pxp_end(struct intel_pxp *pxp)
+{
+	struct drm_i915_private *i915 = pxp->ctrl_gt->i915;
+	intel_wakeref_t wakeref;
+
+	if (!intel_pxp_is_enabled(pxp))
+		return;
+
+	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
+
+	mutex_lock(&pxp->arb_mutex);
+
+	if (__pxp_global_teardown_final(pxp))
+		drm_dbg(&i915->drm, "PXP end timed out\n");
+
+	mutex_unlock(&pxp->arb_mutex);
+
+	intel_pxp_fini_hw(pxp);
+	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+}
+
 /*
  * the arb session is restarted from the irq work when we receive the
  * termination completion interrupt
@@ -286,16 +340,9 @@ int intel_pxp_start(struct intel_pxp *pxp)
 
 	mutex_lock(&pxp->arb_mutex);
 
-	if (pxp->arb_is_valid)
-		goto unlock;
-
-	pxp_queue_termination(pxp);
-
-	if (!wait_for_completion_timeout(&pxp->termination,
-					msecs_to_jiffies(250))) {
-		ret = -ETIMEDOUT;
+	ret = __pxp_global_teardown_restart(pxp);
+	if (ret)
 		goto unlock;
-	}
 
 	/* make sure the compiler doesn't optimize the double access */
 	barrier();
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 9658d3005222..3ded0890cd27 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -27,6 +27,7 @@ void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp);
 void intel_pxp_tee_end_arb_fw_session(struct intel_pxp *pxp, u32 arb_session_id);
 
 int intel_pxp_start(struct intel_pxp *pxp);
+void intel_pxp_end(struct intel_pxp *pxp);
 
 int intel_pxp_key_check(struct intel_pxp *pxp,
 			struct drm_i915_gem_object *obj,
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
index 892d39cc61c1..e427464aa131 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -16,7 +16,7 @@ void intel_pxp_suspend_prepare(struct intel_pxp *pxp)
 	if (!intel_pxp_is_enabled(pxp))
 		return;
 
-	pxp->arb_is_valid = false;
+	intel_pxp_end(pxp);
 
 	intel_pxp_invalidate(pxp);
 }
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
index 74ed7e16e481..448cacb0465d 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
@@ -115,11 +115,11 @@ static int pxp_terminate_arb_session_and_global(struct intel_pxp *pxp)
 	return ret;
 }
 
-static void pxp_terminate(struct intel_pxp *pxp)
+void intel_pxp_terminate(struct intel_pxp *pxp, bool post_invalidation_needs_restart)
 {
 	int ret;
 
-	pxp->hw_state_invalidated = true;
+	pxp->hw_state_invalidated = post_invalidation_needs_restart;
 
 	/*
 	 * if we fail to submit the termination there is no point in waiting for
@@ -167,7 +167,7 @@ static void pxp_session_work(struct work_struct *work)
 
 	if (events & PXP_TERMINATION_REQUEST) {
 		events &= ~PXP_TERMINATION_COMPLETE;
-		pxp_terminate(pxp);
+		intel_pxp_terminate(pxp, true);
 	}
 
 	if (events & PXP_TERMINATION_COMPLETE)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.h b/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
index 903ac52cffa1..ba5788127109 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
@@ -12,9 +12,14 @@ struct intel_pxp;
 
 #ifdef CONFIG_DRM_I915_PXP
 void intel_pxp_session_management_init(struct intel_pxp *pxp);
+void intel_pxp_terminate(struct intel_pxp *pxp, bool post_invalidation_needs_restart);
 #else
 static inline void intel_pxp_session_management_init(struct intel_pxp *pxp)
 {
 }
+
+static inline void intel_pxp_terminate(struct intel_pxp *pxp, bool post_invalidation_needs_restart)
+{
+}
 #endif
 #endif /* __INTEL_PXP_SESSION_H__ */
-- 
2.39.0

