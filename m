Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6E72D7284
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 10:05:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B8E76ECF0;
	Fri, 11 Dec 2020 09:05:39 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFE816ECE4
 for <Intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 09:05:35 +0000 (UTC)
IronPort-SDR: KGZsEVA7RkA1tSxe8ZJiQqBR3NijP2ViZyim/uqXmwjDIQQG0+GqZezMBvrGmWAR30wjIGmPkI
 Oo4i1o9Hvzug==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="162159113"
X-IronPort-AV: E=Sophos;i="5.78,410,1599548400"; d="scan'208";a="162159113"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2020 01:05:31 -0800
IronPort-SDR: ZW8ey2eDmVR6/gMv1fFy3L7ceaLIj8YFOaCXee9OZwvz69NAl5bA+gu1yIylCi4d+rMS3fJ1bY
 UpMn/c/7Hheg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,410,1599548400"; d="scan'208";a="553804551"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by orsmga005.jf.intel.com with ESMTP; 11 Dec 2020 01:05:31 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 11 Dec 2020 01:04:50 -0800
Message-Id: <20201211090457.32674-17-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201211090457.32674-1-sean.z.huang@intel.com>
References: <20201211090457.32674-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v8 16/23] drm/i915/pxp: Implement ioctl action to
 terminate the session
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Implement the PXP ioctl action to allow userspace driver to
terminate the hardware session and cleanup its software session
state. PXP sends the session termination command to GPU once
receves this ioctl action.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c     |  10 +++
 drivers/gpu/drm/i915/pxp/intel_pxp.h     |   6 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c |  56 ++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h |   2 +
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c  |   7 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c  | 109 ++++++++++++++++++++---
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h  |   6 ++
 7 files changed, 186 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index e000a78b782e..c35011b84f5a 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -8,6 +8,7 @@
 #include "intel_pxp_tee.h"
 #include "intel_pxp_arb.h"
 #include "intel_pxp_sm.h"
+#include "intel_pxp_cmd.h"
 
 /* KCR register definitions */
 #define KCR_INIT            _MMIO(0x320f0)
@@ -22,6 +23,8 @@ enum pxp_session_req {
 	PXP_REQ_SESSION_ID_INIT = 0x0,
 	/* Inform KMD that UMD has completed the initialization */
 	PXP_REQ_SESSION_IN_PLAY,
+	/* Request KMD to terminate the session */
+	PXP_REQ_SESSION_TERMINATE
 };
 
 /*
@@ -68,7 +71,11 @@ static int intel_pxp_teardown_required_callback(struct intel_pxp *pxp)
 	pxp->ctx.flag_display_hm_surface_keys = false;
 
 	ret = intel_pxp_arb_terminate_session(pxp);
+	if (ret)
+		goto end;
 
+	ret = intel_pxp_sm_terminate_all_sessions(pxp, SESSION_TYPE_TYPE0);
+end:
 	mutex_unlock(&pxp->ctx.mutex);
 
 	return ret;
@@ -237,6 +244,9 @@ int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmf
 		} else if (params->req_session_state == PXP_REQ_SESSION_IN_PLAY) {
 			ret = intel_pxp_sm_ioctl_mark_session_in_play(pxp, params->session_type,
 								      params->pxp_tag);
+		} else if (params->req_session_state == PXP_REQ_SESSION_TERMINATE) {
+			ret = intel_pxp_sm_ioctl_terminate_session(pxp, params->session_type,
+								   params->pxp_tag);
 		} else {
 			ret = -EINVAL;
 		}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 461b9321441f..e68c035d8448 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -53,6 +53,12 @@ struct intel_pxp {
 	struct pxp_context ctx;
 };
 
+static inline int pxp_session_max(int session_type)
+{
+	return (session_type == SESSION_TYPE_TYPE0) ?
+		PXP_MAX_NORMAL_TYPE0_SESSIONS : PXP_MAX_TYPE1_SESSIONS;
+}
+
 struct drm_i915_private;
 
 #ifdef CONFIG_DRM_I915_PXP
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
index 17ff6bd61d20..3a4c8022a5d0 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
@@ -7,6 +7,7 @@
 #include "i915_drv.h"
 #include "gt/intel_context.h"
 #include "gt/intel_engine_pm.h"
+#include "intel_pxp_sm.h"
 
 /* PXP GPU command definitions */
 
@@ -270,3 +271,58 @@ int intel_pxp_cmd_add_inline_termination(u32 *cmd)
 	increased_size_in_dw = (cmd_termin - cmd);
 	return increased_size_in_dw;
 }
+
+int intel_pxp_cmd_terminate_all_hw_session(struct intel_pxp *pxp,
+					   int session_type)
+{
+	u32 *cmd = NULL;
+	u32 *cmd_ptr = NULL;
+	int cmd_size_in_dw = 0;
+	int ret;
+	int idx;
+	struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
+
+	/* Calculate how many bytes need to be alloc */
+	for (idx = 0; idx < pxp_session_max(session_type); idx++) {
+		if (intel_pxp_sm_is_hw_session_in_play(pxp, session_type, idx)) {
+			cmd_size_in_dw += intel_pxp_cmd_add_prolog(pxp, NULL, session_type, idx);
+			cmd_size_in_dw += intel_pxp_cmd_add_inline_termination(NULL);
+		}
+	}
+	cmd_size_in_dw += intel_pxp_cmd_add_epilog(NULL);
+
+	cmd = kzalloc(cmd_size_in_dw * 4, GFP_KERNEL);
+	if (!cmd)
+		return -ENOMEM;
+
+	/* Program the command */
+	cmd_ptr = cmd;
+	for (idx = 0; idx < pxp_session_max(session_type); idx++) {
+		if (intel_pxp_sm_is_hw_session_in_play(pxp, session_type, idx)) {
+			cmd_ptr += intel_pxp_cmd_add_prolog(pxp, cmd_ptr, session_type, idx);
+			cmd_ptr += intel_pxp_cmd_add_inline_termination(cmd_ptr);
+		}
+	}
+	cmd_ptr += intel_pxp_cmd_add_epilog(cmd_ptr);
+
+	if (cmd_size_in_dw != (cmd_ptr - cmd)) {
+		ret = -EINVAL;
+		drm_err(&gt->i915->drm, "Failed to %s\n", __func__);
+		goto end;
+	}
+
+	if (drm_debug_enabled(DRM_UT_DRIVER)) {
+		print_hex_dump(KERN_DEBUG, "global termination cmd binaries:",
+			       DUMP_PREFIX_OFFSET, 4, 4, cmd, cmd_size_in_dw * 4, true);
+	}
+
+	ret = intel_pxp_cmd_submit(pxp, cmd, cmd_size_in_dw);
+	if (ret) {
+		drm_err(&gt->i915->drm, "Failed to pxp_submit_cmd()\n");
+		goto end;
+	}
+
+end:
+	kfree(cmd);
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
index 087f260034c4..ba008aa5df4e 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
@@ -16,5 +16,7 @@ int intel_pxp_cmd_add_prolog(struct intel_pxp *pxp, u32 *cmd,
 			     int session_index);
 int intel_pxp_cmd_add_epilog(u32 *cmd);
 int intel_pxp_cmd_add_inline_termination(u32 *cmd);
+int intel_pxp_cmd_terminate_all_hw_session(struct intel_pxp *pxp,
+					   int session_type);
 
 #endif /* __INTEL_PXP_SM_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
index 0da2ecbf3b4d..73ec5e47b485 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -6,6 +6,7 @@
 #include "intel_pxp_context.h"
 #include "intel_pxp_arb.h"
 #include "intel_pxp_pm.h"
+#include "intel_pxp_sm.h"
 
 void intel_pxp_pm_prepare_suspend(struct intel_pxp *pxp)
 {
@@ -55,6 +56,12 @@ int intel_pxp_pm_resume(struct intel_pxp *pxp)
 			goto end;
 		}
 
+		ret = intel_pxp_sm_terminate_all_sessions(pxp, SESSION_TYPE_TYPE0);
+		if (ret) {
+			drm_err(&gt->i915->drm, "Failed to terminate the sessions\n");
+			goto end;
+		}
+
 		pxp->ctx.global_state_in_suspend = false;
 	}
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
index a657c5c7f013..a94897768c41 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
@@ -6,6 +6,7 @@
 #include "gt/intel_engine_pm.h"
 #include "intel_pxp_sm.h"
 #include "intel_pxp.h"
+#include "intel_pxp_cmd.h"
 
 #define KCR_STATUS_1   _MMIO(0x320f4)
 #define KCR_STATUS_1_ATTACK_MASK 0x80000000
@@ -15,12 +16,6 @@
 #define SESSION_TYPE_MASK BIT(7)
 #define SESSION_ID_MASK (BIT(7) - 1)
 
-static inline int session_max(int session_type)
-{
-	return (session_type == SESSION_TYPE_TYPE0) ?
-		PXP_MAX_NORMAL_TYPE0_SESSIONS : PXP_MAX_TYPE1_SESSIONS;
-}
-
 static inline struct list_head *session_list(struct intel_pxp *pxp,
 					     int session_type)
 {
@@ -59,8 +54,8 @@ static bool is_sw_session_active(struct intel_pxp *pxp, int session_type,
 	return false;
 }
 
-static bool is_hw_session_in_play(struct intel_pxp *pxp,
-				  int session_type, int session_index)
+bool intel_pxp_sm_is_hw_session_in_play(struct intel_pxp *pxp,
+					int session_type, int session_index)
 {
 	u64 regval_sip = 0;
 	intel_wakeref_t wakeref;
@@ -83,7 +78,7 @@ static int wait_hw_sw_state(struct intel_pxp *pxp, int session_index, int sessio
 	int retry = 0;
 
 	for (retry = 0; retry < max_retry; retry++) {
-		if (is_hw_session_in_play(pxp, session_type, session_index) ==
+		if (intel_pxp_sm_is_hw_session_in_play(pxp, session_type, session_index) ==
 		    is_sw_session_active(pxp, session_type, session_index, true))
 			return 0;
 
@@ -162,6 +157,45 @@ static int pxp_get_session_index(u32 session_id, int *index_out, int *type_out)
 	return 0;
 }
 
+static int pxp_terminate_hw_session(struct intel_pxp *pxp, int session_type,
+				    int session_index)
+{
+	u32 *cmd = NULL;
+	u32 *cmd_ptr = NULL;
+	int cmd_size_in_dw = 0;
+	int ret;
+	struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
+
+	cmd_size_in_dw += intel_pxp_cmd_add_prolog(pxp, NULL, session_type, session_index);
+	cmd_size_in_dw += intel_pxp_cmd_add_inline_termination(NULL);
+	cmd_size_in_dw += intel_pxp_cmd_add_epilog(NULL);
+
+	cmd = kzalloc(cmd_size_in_dw * 4, GFP_KERNEL);
+	if (!cmd)
+		return -ENOMEM;
+
+	cmd_ptr = cmd;
+	cmd_ptr += intel_pxp_cmd_add_prolog(pxp, cmd_ptr, session_type, session_index);
+	cmd_ptr += intel_pxp_cmd_add_inline_termination(cmd_ptr);
+	cmd_ptr += intel_pxp_cmd_add_epilog(cmd_ptr);
+
+	if (cmd_size_in_dw != (cmd_ptr - cmd)) {
+		ret = -EINVAL;
+		drm_err(&gt->i915->drm, "Failed to %s\n", __func__);
+		goto end;
+	}
+
+	ret = intel_pxp_cmd_submit(pxp, cmd, cmd_size_in_dw);
+	if (ret) {
+		drm_err(&gt->i915->drm, "Failed to submit cmd()\n");
+		goto end;
+	}
+
+end:
+	kfree(cmd);
+	return ret;
+}
+
 /**
  * intel_pxp_sm_ioctl_reserve_session - To reserve an available protected session.
  * @pxp: pointer to pxp struct
@@ -190,7 +224,7 @@ int intel_pxp_sm_ioctl_reserve_session(struct intel_pxp *pxp, struct drm_file *d
 	    is_type0_session_attacked(pxp))
 		return -EPERM;
 
-	for (idx = 0; idx < session_max(session_type); idx++) {
+	for (idx = 0; idx < pxp_session_max(session_type); idx++) {
 		if (!is_sw_session_active(pxp, session_type, idx, false)) {
 			ret = wait_hw_sw_state(pxp, idx, session_type);
 			if (ret)
@@ -243,3 +277,58 @@ int intel_pxp_sm_ioctl_mark_session_in_play(struct intel_pxp *pxp, int session_t
 	drm_err(&gt->i915->drm, "Failed to %s couldn't find active session\n", __func__);
 	return -EINVAL;
 }
+
+/**
+ * intel_pxp_sm_ioctl_terminate_session - To terminate an active HW session and free its entry.
+ * @pxp: pointer to pxp struct.
+ * @session_type: type of the session to be terminated. One of enum pxp_session_types.
+ * @session_id: Session identifier of the session, containing type and index info
+ *
+ * Return: 0 means terminate is successful, or didn't find the desired session.
+ */
+int intel_pxp_sm_ioctl_terminate_session(struct intel_pxp *pxp, int session_type,
+					 int session_id)
+{
+	int ret;
+	struct intel_pxp_sm_session *curr, *n;
+	int session_type_in_id;
+	int session_index;
+
+	lockdep_assert_held(&pxp->ctx.mutex);
+
+	ret = pxp_get_session_index(session_id, &session_index, &session_type_in_id);
+	if (ret)
+		return ret;
+
+	list_for_each_entry_safe(curr, n, session_list(pxp, session_type), list) {
+		if (curr->index == session_index) {
+			ret = pxp_terminate_hw_session(pxp, session_type, session_index);
+			if (ret)
+				return ret;
+
+			list_del(&curr->list);
+			kfree(curr);
+			return 0;
+		}
+	}
+	return 0;
+}
+
+int intel_pxp_sm_terminate_all_sessions(struct intel_pxp *pxp, int session_type)
+{
+	int ret;
+	struct intel_pxp_sm_session *curr, *n;
+
+	lockdep_assert_held(&pxp->ctx.mutex);
+
+	ret = intel_pxp_cmd_terminate_all_hw_session(pxp, session_type);
+	if (ret)
+		return ret;
+
+	list_for_each_entry_safe(curr, n, session_list(pxp, session_type), list) {
+		list_del(&curr->list);
+		kfree(curr);
+	}
+
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
index aaa44d365f39..e242b7566021 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
@@ -42,4 +42,10 @@ int intel_pxp_sm_ioctl_reserve_session(struct intel_pxp *pxp, struct drm_file *d
 				       u32 *pxp_tag);
 int intel_pxp_sm_ioctl_mark_session_in_play(struct intel_pxp *pxp, int session_type,
 					    u32 session_id);
+int intel_pxp_sm_ioctl_terminate_session(struct intel_pxp *pxp, int session_type,
+					 int session_id);
+
+bool intel_pxp_sm_is_hw_session_in_play(struct intel_pxp *pxp,
+					int session_type, int session_index);
+int intel_pxp_sm_terminate_all_sessions(struct intel_pxp *pxp, int session_type);
 #endif /* __INTEL_PXP_SM_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
