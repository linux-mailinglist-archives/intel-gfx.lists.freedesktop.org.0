Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 927ED3CBD2E
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 22:00:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CECA6EA41;
	Fri, 16 Jul 2021 19:59:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A4EE6E9EE;
 Fri, 16 Jul 2021 19:59:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="210596738"
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="210596738"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 12:59:41 -0700
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="507238984"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 12:59:40 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Fri, 16 Jul 2021 13:17:02 -0700
Message-Id: <20210716201724.54804-30-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210716201724.54804-1-matthew.brost@intel.com>
References: <20210716201724.54804-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 29/51] drm/i915/guc: Suspend/resume
 implementation for new interface
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

The new GuC interface introduces an MMIO H2G command,
INTEL_GUC_ACTION_RESET_CLIENT, which is used to implement suspend. This
MMIO tears down any active contexts generating a context reset G2H CTB
for each. Once that step completes the GuC tears down the CTB
channels. It is safe to suspend once this MMIO H2G command completes
and all G2H CTBs have been processed. In practice the i915 will likely
never receive a G2H as suspend should only be called after the GPU is
idle.

Resume is implemented in the same manner as before - simply reload the
GuC firmware and reinitialize everything (e.g. CTB channels, contexts,
etc..).

Cc: John Harrison <john.c.harrison@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
---
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        | 64 ++++++++-----------
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 15 +++--
 .../gpu/drm/i915/gt/uc/intel_guc_submission.h |  5 ++
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         | 20 ++++--
 5 files changed, 54 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
index 57e18babdf4b..596cf4b818e5 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
@@ -142,6 +142,7 @@ enum intel_guc_action {
 	INTEL_GUC_ACTION_REGISTER_COMMAND_TRANSPORT_BUFFER = 0x4505,
 	INTEL_GUC_ACTION_DEREGISTER_COMMAND_TRANSPORT_BUFFER = 0x4506,
 	INTEL_GUC_ACTION_DEREGISTER_CONTEXT_DONE = 0x4600,
+	INTEL_GUC_ACTION_RESET_CLIENT = 0x5B01,
 	INTEL_GUC_ACTION_LIMIT
 };
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 9b09395b998f..68266cbffd1f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -524,51 +524,34 @@ int intel_guc_auth_huc(struct intel_guc *guc, u32 rsa_offset)
  */
 int intel_guc_suspend(struct intel_guc *guc)
 {
-	struct intel_uncore *uncore = guc_to_gt(guc)->uncore;
 	int ret;
-	u32 status;
 	u32 action[] = {
-		INTEL_GUC_ACTION_ENTER_S_STATE,
-		GUC_POWER_D1, /* any value greater than GUC_POWER_D0 */
+		INTEL_GUC_ACTION_RESET_CLIENT,
 	};
 
-	/*
-	 * If GuC communication is enabled but submission is not supported,
-	 * we do not need to suspend the GuC.
-	 */
-	if (!intel_guc_submission_is_used(guc) || !intel_guc_is_ready(guc))
+	if (!intel_guc_is_ready(guc))
 		return 0;
 
-	/*
-	 * The ENTER_S_STATE action queues the save/restore operation in GuC FW
-	 * and then returns, so waiting on the H2G is not enough to guarantee
-	 * GuC is done. When all the processing is done, GuC writes
-	 * INTEL_GUC_SLEEP_STATE_SUCCESS to scratch register 14, so we can poll
-	 * on that. Note that GuC does not ensure that the value in the register
-	 * is different from INTEL_GUC_SLEEP_STATE_SUCCESS while the action is
-	 * in progress so we need to take care of that ourselves as well.
-	 */
-
-	intel_uncore_write(uncore, SOFT_SCRATCH(14),
-			   INTEL_GUC_SLEEP_STATE_INVALID_MASK);
-
-	ret = intel_guc_send(guc, action, ARRAY_SIZE(action));
-	if (ret)
-		return ret;
-
-	ret = __intel_wait_for_register(uncore, SOFT_SCRATCH(14),
-					INTEL_GUC_SLEEP_STATE_INVALID_MASK,
-					0, 0, 10, &status);
-	if (ret)
-		return ret;
-
-	if (status != INTEL_GUC_SLEEP_STATE_SUCCESS) {
-		DRM_ERROR("GuC failed to change sleep state. "
-			  "action=0x%x, err=%u\n",
-			  action[0], status);
-		return -EIO;
+	if (intel_guc_submission_is_used(guc)) {
+		/*
+		 * This H2G MMIO command tears down the GuC in two steps. First it will
+		 * generate a G2H CTB for every active context indicating a reset. In
+		 * practice the i915 shouldn't ever get a G2H as suspend should only be
+		 * called when the GPU is idle. Next, it tears down the CTBs and this
+		 * H2G MMIO command completes.
+		 *
+		 * Don't abort on a failure code from the GuC. Keep going and do the
+		 * clean up in santize() and re-initialisation on resume and hopefully
+		 * the error here won't be problematic.
+		 */
+		ret = intel_guc_send_mmio(guc, action, ARRAY_SIZE(action), NULL, 0);
+		if (ret)
+			DRM_ERROR("GuC suspend: RESET_CLIENT action failed with error %d!\n", ret);
 	}
 
+	/* Signal that the GuC isn't running. */
+	intel_guc_sanitize(guc);
+
 	return 0;
 }
 
@@ -578,7 +561,12 @@ int intel_guc_suspend(struct intel_guc *guc)
  */
 int intel_guc_resume(struct intel_guc *guc)
 {
-	/* XXX: to be implemented with submission interface rework */
+	/*
+	 * NB: This function can still be called even if GuC submission is
+	 * disabled, e.g. if GuC is enabled for HuC authentication only. Thus,
+	 * if any code is later added here, it must be support doing nothing
+	 * if submission is disabled (as per intel_guc_suspend).
+	 */
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 2cbf9847b055..fdb17279095c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -304,10 +304,10 @@ static int guc_submission_send_busy_loop(struct intel_guc* guc,
 	return err;
 }
 
-static int guc_wait_for_pending_msg(struct intel_guc *guc,
-				    atomic_t *wait_var,
-				    bool interruptible,
-				    long timeout)
+int intel_guc_wait_for_pending_msg(struct intel_guc *guc,
+				   atomic_t *wait_var,
+				   bool interruptible,
+				   long timeout)
 {
 	const int state = interruptible ?
 		TASK_INTERRUPTIBLE : TASK_UNINTERRUPTIBLE;
@@ -347,8 +347,9 @@ static int guc_wait_for_pending_msg(struct intel_guc *guc,
 
 int intel_guc_wait_for_idle(struct intel_guc *guc, long timeout)
 {
-	return guc_wait_for_pending_msg(guc, &guc->outstanding_submission_g2h,
-					true, timeout);
+	return intel_guc_wait_for_pending_msg(guc,
+					      &guc->outstanding_submission_g2h,
+					      true, timeout);
 }
 
 static int guc_lrc_desc_pin(struct intel_context *ce, bool loop);
@@ -621,7 +622,7 @@ void intel_guc_submission_reset_prepare(struct intel_guc *guc)
 	for (i = 0; i < 4 && atomic_read(&guc->outstanding_submission_g2h); ++i) {
 		intel_guc_to_host_event_handler(guc);
 #define wait_for_reset(guc, wait_var) \
-		guc_wait_for_pending_msg(guc, wait_var, false, (HZ / 20))
+		intel_guc_wait_for_pending_msg(guc, wait_var, false, (HZ / 20))
 		do {
 			wait_for_reset(guc, &guc->outstanding_submission_g2h);
 		} while (!list_empty(&guc->ct.requests.incoming));
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
index 5f263ac4f46a..08ff77c5c50e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
@@ -28,6 +28,11 @@ void intel_guc_submission_print_context_info(struct intel_guc *guc,
 
 bool intel_guc_virtual_engine_has_heartbeat(const struct intel_engine_cs *ve);
 
+int intel_guc_wait_for_pending_msg(struct intel_guc *guc,
+				   atomic_t *wait_var,
+				   bool interruptible,
+				   long timeout);
+
 static inline bool intel_guc_submission_is_supported(struct intel_guc *guc)
 {
 	/* XXX: GuC submission is unavailable for now */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index ab11fe731ee7..b523a8521351 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -596,14 +596,18 @@ void intel_uc_cancel_requests(struct intel_uc *uc)
 void intel_uc_runtime_suspend(struct intel_uc *uc)
 {
 	struct intel_guc *guc = &uc->guc;
-	int err;
 
 	if (!intel_guc_is_ready(guc))
 		return;
 
-	err = intel_guc_suspend(guc);
-	if (err)
-		DRM_DEBUG_DRIVER("Failed to suspend GuC, err=%d", err);
+	/*
+	 * Wait for any outstanding CTB before tearing down communication /w the
+	 * GuC.
+	 */
+#define OUTSTANDING_CTB_TIMEOUT_PERIOD	(HZ / 5)
+	intel_guc_wait_for_pending_msg(guc, &guc->outstanding_submission_g2h,
+				       false, OUTSTANDING_CTB_TIMEOUT_PERIOD);
+	GEM_WARN_ON(atomic_read(&guc->outstanding_submission_g2h));
 
 	guc_disable_communication(guc);
 }
@@ -612,12 +616,16 @@ void intel_uc_suspend(struct intel_uc *uc)
 {
 	struct intel_guc *guc = &uc->guc;
 	intel_wakeref_t wakeref;
+	int err;
 
 	if (!intel_guc_is_ready(guc))
 		return;
 
-	with_intel_runtime_pm(uc_to_gt(uc)->uncore->rpm, wakeref)
-		intel_uc_runtime_suspend(uc);
+	with_intel_runtime_pm(&uc_to_gt(uc)->i915->runtime_pm, wakeref) {
+		err = intel_guc_suspend(guc);
+		if (err)
+			DRM_DEBUG_DRIVER("Failed to suspend GuC, err=%d", err);
+	}
 }
 
 static int __uc_resume(struct intel_uc *uc, bool enable_communication)
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
