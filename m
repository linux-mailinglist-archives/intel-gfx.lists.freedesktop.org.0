Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF0363B6BF
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 01:46:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3472310E358;
	Tue, 29 Nov 2022 00:46:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFA5810E35D
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 00:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669682763; x=1701218763;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=x+cR3kBwV+fQo/WkGJGu4ikbProgHxMOdBp/eB57NDM=;
 b=WADxg5gssSJu8w+u6eUlsIIsIkL53PXUMSDwvsviKMRgmMK9Q8jualik
 4sD5krY4jhJHxEMPuMf0ukjmwp9Mhh7qGMTZbKAjfSekqLHnfm16uKSd1
 uE2qQuGPYiIJ8mIiu65ii5VE0nzzimTXDokgw4492gNbFs+Jvt6B9+gaP
 leu8rMM5sVwEzoD/Ez+VP9WwxRg12lgAAru2Fko6q6B1JUQhShFhm2Wy+
 SIR61w2/GbUx0yB7w6n6C3ZdWM2wnnKvLN8gVWdiShDoq5cqcZWRZJ+8q
 5yVu5sO4e91fpxcq4sDndwavIfv3N2OHViwEPB1xO4NI9+9uxHWX8bpEs A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="401271780"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="401271780"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 16:46:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="676243288"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="676243288"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga001.jf.intel.com with ESMTP; 28 Nov 2022 16:46:02 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Nov 2022 16:48:31 -0800
Message-Id: <20221129004832.3735764-3-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221129004832.3735764-1-alan.previn.teres.alexis@intel.com>
References: <20221129004832.3735764-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915/pxp: Trigger the global
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
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c         | 60 +++++++++++++++++---
 drivers/gpu/drm/i915/pxp/intel_pxp.h         |  1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c      |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c |  9 ++-
 drivers/gpu/drm/i915/pxp/intel_pxp_session.h |  5 ++
 5 files changed, 64 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 5efe61f67546..659410ae1b89 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -198,6 +198,55 @@ static bool pxp_component_bound(struct intel_pxp *pxp)
 	return bound;
 }
 
+static int __pxp_global_teardown_locked(struct intel_pxp *pxp, bool terminate_for_cleanup)
+{
+	if (terminate_for_cleanup) {
+		if (!pxp->arb_is_valid)
+			return 0;
+		/*
+		 * To ensure synchronous and coherent session teardown completion
+		 * in response to suspend or shutdown triggers, don't user a worker.
+		 */
+		intel_pxp_mark_termination_in_progress(pxp);
+		intel_pxp_terminate(pxp, false);
+	} else {
+		if (pxp->arb_is_valid)
+			return 0;
+		/*
+		 * If we are not in final termination, and the arb-session is currently
+		 * inactive, we are doing a reset and restart due to some runtime event.
+		 * Use the worker that was designed for this.
+		 */
+		pxp_queue_termination(pxp);
+	}
+
+	if (!wait_for_completion_timeout(&pxp->termination, msecs_to_jiffies(250)))
+		return -ETIMEDOUT;
+
+	return 0;
+}
+
+void intel_pxp_end(struct intel_pxp *pxp)
+{
+	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
+	intel_wakeref_t wakeref;
+
+	if (!intel_pxp_is_enabled(pxp))
+		return;
+
+	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
+
+	mutex_lock(&pxp->arb_mutex);
+
+	if (__pxp_global_teardown_locked(pxp, true))
+		drm_dbg(&(pxp_to_gt(pxp))->i915->drm, "PXP end timed out\n");
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
@@ -214,16 +263,9 @@ int intel_pxp_start(struct intel_pxp *pxp)
 
 	mutex_lock(&pxp->arb_mutex);
 
-	if (pxp->arb_is_valid)
-		goto unlock;
-
-	pxp_queue_termination(pxp);
-
-	if (!wait_for_completion_timeout(&pxp->termination,
-					msecs_to_jiffies(250))) {
-		ret = -ETIMEDOUT;
+	ret = __pxp_global_teardown_locked(pxp, false);
+	if (ret)
 		goto unlock;
-	}
 
 	/* make sure the compiler doesn't optimize the double access */
 	barrier();
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index bbeb8ed8e211..a06b65850246 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -26,6 +26,7 @@ void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp);
 void intel_pxp_tee_end_arb_fw_session(struct intel_pxp *pxp, u32 arb_session_id);
 
 int intel_pxp_start(struct intel_pxp *pxp);
+void intel_pxp_end(struct intel_pxp *pxp);
 
 int intel_pxp_key_check(struct intel_pxp *pxp,
 			struct drm_i915_gem_object *obj,
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
index 6a7d4e2ee138..36af52c28e63 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -14,7 +14,7 @@ void intel_pxp_suspend_prepare(struct intel_pxp *pxp)
 	if (!intel_pxp_is_enabled(pxp))
 		return;
 
-	pxp->arb_is_valid = false;
+	intel_pxp_end(pxp);
 
 	intel_pxp_invalidate(pxp);
 }
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
index 8eb886d3f2a0..794ccdd00bb9 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
@@ -118,11 +118,14 @@ static int pxp_terminate_arb_session_and_global(struct intel_pxp *pxp)
 	return ret;
 }
 
-static void pxp_terminate(struct intel_pxp *pxp)
+void intel_pxp_terminate(struct intel_pxp *pxp, bool restart_arb)
 {
 	int ret;
 
-	pxp->hw_state_invalidated = true;
+	if (restart_arb)
+		pxp->hw_state_invalidated = true;
+	else
+		pxp->hw_state_invalidated = false;
 
 	/*
 	 * if we fail to submit the termination there is no point in waiting for
@@ -170,7 +173,7 @@ static void pxp_session_work(struct work_struct *work)
 
 	if (events & PXP_TERMINATION_REQUEST) {
 		events &= ~PXP_TERMINATION_COMPLETE;
-		pxp_terminate(pxp);
+		intel_pxp_terminate(pxp, true);
 	}
 
 	if (events & PXP_TERMINATION_COMPLETE)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.h b/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
index 903ac52cffa1..4f944b63b5b6 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
@@ -12,9 +12,14 @@ struct intel_pxp;
 
 #ifdef CONFIG_DRM_I915_PXP
 void intel_pxp_session_management_init(struct intel_pxp *pxp);
+void intel_pxp_terminate(struct intel_pxp *pxp, bool restart_arb);
 #else
 static inline void intel_pxp_session_management_init(struct intel_pxp *pxp)
 {
 }
+
+static inline void intel_pxp_terminate(struct intel_pxp *pxp, bool restart_arb)
+{
+}
 #endif
 #endif /* __INTEL_PXP_SESSION_H__ */
-- 
2.34.1

