Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6974E2D0898
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 01:22:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D27D96E580;
	Mon,  7 Dec 2020 00:22:25 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BF336E53E
 for <Intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 00:22:10 +0000 (UTC)
IronPort-SDR: lBPBIlgB7HWUeCRXgX13jdxseIc3Xzj/DG1wmlhaYtg/wjhR/Ftj67SIRKU2/QJ5pY1boA5WXU
 y1bYntf6psDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="191889196"
X-IronPort-AV: E=Sophos;i="5.78,398,1599548400"; d="scan'208";a="191889196"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2020 16:22:08 -0800
IronPort-SDR: LyhABEplkd1Qij3raGUly4E+SOczo3BAttDKXSTIoaGPiqlzENhf5Yaf9/jxjFmhZ1CS2zVPMq
 mxeTiJzAOeYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,398,1599548400"; d="scan'208";a="369586440"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga002.fm.intel.com with ESMTP; 06 Dec 2020 16:22:08 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sun,  6 Dec 2020 16:21:26 -0800
Message-Id: <20201207002134.13731-9-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201207002134.13731-1-sean.z.huang@intel.com>
References: <20201207002134.13731-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v1 08/16] drm/i915/pxp: Create the arbitrary
 session after boot
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

Create the arbitrary session, with the fixed session id 0xf, after
system boot, for the case that application allocates the protected
buffer without establishing any protection session. Because the
hardware requires at least one alive session for protected buffer
creation.  This arbitrary session needs to be re-created after
teardown or power event because hardware encryption key won't be
valid after such cases.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c     |  47 ++++++-
 drivers/gpu/drm/i915/pxp/intel_pxp.h     |   7 +
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c  | 165 +++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h  |   8 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c |  34 +++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h |  11 ++
 6 files changed, 271 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 332d9baff29f..10f4b1de07c4 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -9,6 +9,43 @@
 #include "intel_pxp_sm.h"
 #include "intel_pxp_tee.h"
 
+int intel_pxp_create_arb_session(struct drm_i915_private *i915)
+{
+	struct pxp_tag pxptag;
+	int ret;
+
+	lockdep_assert_held(&i915->pxp.ctx->ctx_mutex);
+
+	if (i915->pxp.ctx->flag_display_hm_surface_keys) {
+		drm_err(&i915->drm, "%s: arb session is alive so skipping the creation\n",
+			__func__);
+		return 0;
+	}
+
+	ret = intel_pxp_sm_reserve_arb_session(i915, &pxptag.value);
+	if (ret) {
+		drm_err(&i915->drm, "Failed to reserve session\n");
+		goto end;
+	}
+
+	ret = intel_pxp_tee_cmd_create_arb_session(i915);
+	if (ret) {
+		drm_err(&i915->drm, "Failed to send tee cmd for arb session creation\n");
+		goto end;
+	}
+
+	ret = pxp_sm_mark_protected_session_in_play(i915, ARB_SESSION_TYPE, pxptag.session_id);
+	if (ret) {
+		drm_err(&i915->drm, "Failed to mark session status in play\n");
+		goto end;
+	}
+
+	i915->pxp.ctx->flag_display_hm_surface_keys = true;
+
+end:
+	return ret;
+}
+
 static void intel_pxp_write_irq_mask_reg(struct drm_i915_private *i915, u32 mask)
 {
 	/* crypto mask is in bit31-16 (Engine1 Interrupt Mask) */
@@ -47,9 +84,17 @@ static int intel_pxp_global_terminate_complete_callback(struct drm_i915_private
 
 	mutex_lock(&i915->pxp.ctx->ctx_mutex);
 
-	if (i915->pxp.ctx->global_state_attacked)
+	if (i915->pxp.ctx->global_state_attacked) {
 		i915->pxp.ctx->global_state_attacked = false;
 
+		/* Re-create the arb session after teardown handle complete */
+		ret = intel_pxp_create_arb_session(i915);
+		if (ret) {
+			drm_err(&i915->drm, "Failed to create arb session\n");
+			goto end;
+		}
+	}
+end:
 	mutex_unlock(&i915->pxp.ctx->ctx_mutex);
 
 	return ret;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 308d8d312a6d..e5f6e2b1bdfd 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -41,6 +41,8 @@ struct intel_gt;
 struct drm_i915_private;
 
 #ifdef CONFIG_DRM_I915_PXP
+int intel_pxp_create_arb_session(struct drm_i915_private *i915);
+
 void intel_pxp_irq_handler(struct intel_gt *gt, u16 iir);
 int i915_pxp_teardown_required_callback(struct drm_i915_private *i915);
 int i915_pxp_global_terminate_complete_callback(struct drm_i915_private *i915);
@@ -48,6 +50,11 @@ int i915_pxp_global_terminate_complete_callback(struct drm_i915_private *i915);
 int intel_pxp_init(struct drm_i915_private *i915);
 void intel_pxp_uninit(struct drm_i915_private *i915);
 #else
+static inline int intel_pxp_create_arb_session(struct drm_i915_private *i915)
+{
+	return 0;
+};
+
 static inline void intel_pxp_irq_handler(struct intel_gt *gt, u16 iir)
 {
 }
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
index 38c8b6d08b61..056f65fbaf4e 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
@@ -41,6 +41,18 @@ static int pxp_reg_write(struct drm_i915_private *i915, u32 offset, u32 regval)
 	return 0;
 }
 
+static int pxp_get_session_index(struct drm_i915_private *i915, u32 pxp_tag,
+				 int *session_index_out, int *session_type_out)
+{
+	if (!session_index_out || !session_type_out)
+		return -EINVAL;
+
+	*session_type_out = (pxp_tag & SESSION_TYPE_MASK) ? SESSION_TYPE_TYPE1 : SESSION_TYPE_TYPE0;
+	*session_index_out = pxp_tag & SESSION_ID_MASK;
+
+	return 0;
+}
+
 static u8 pxp_get_session_id(int session_index, int session_type)
 {
 	u8 session_id = session_index & SESSION_ID_MASK;
@@ -266,6 +278,159 @@ static int sync_hw_sw_state(struct drm_i915_private *i915, int session_index, in
 	return ret;
 }
 
+/**
+ * create_new_session_entry - Create a new session entry with provided info.
+ * @i915: i915 device handle.
+ * @drmfile: pointer to drm_file
+ * @context_id: Numeric identifier of the context created by the caller.
+ * @session_type: Type of the session requested. One of enum pxp_session_types.
+ * @protection_mode: Type of protection requested for the session.
+ *                   One of the enum pxp_protection_modes.
+ * @session_index: Numeric session identifier.
+ *
+ * Return: status. 0 means creation is successful.
+ */
+static int create_new_session_entry(struct drm_i915_private *i915, struct drm_file *drmfile,
+				    int context_id, int session_type, int protection_mode,
+				    int session_index)
+{
+	struct pxp_protected_session *new_session = NULL;
+	int pid = 0;
+
+	if (drmfile)
+		pid = pid_nr(drmfile->pid);
+
+	new_session = kzalloc(sizeof(*new_session), GFP_KERNEL);
+	if (!new_session)
+		return -ENOMEM;
+
+	new_session->context_id = context_id;
+	new_session->session_type = session_type;
+	new_session->protection_mode = protection_mode;
+	new_session->session_index = session_index;
+	new_session->session_is_in_play = false;
+	new_session->drmfile = drmfile;
+	new_session->pid = pid;
+
+	switch (session_type) {
+	case SESSION_TYPE_TYPE0:
+		/* check to make sure the session id is within allowed range */
+		if (session_index < 0 || session_index >= MAX_TYPE0_SESSIONS) {
+			/* session id out of range.. free the new entry and return error */
+			kfree(new_session);
+			drm_err(&i915->drm, "Failed to %s, bad params\n", __func__);
+			return -EINVAL;
+		}
+
+		list_add(&new_session->session_list, &i915->pxp.ctx->active_pxp_type0_sessions);
+		break;
+
+	case SESSION_TYPE_TYPE1:
+		/* check to make sure the session id is within allowed range */
+		if (session_index < 0 || session_index >= MAX_TYPE1_SESSIONS) {
+			/* session id out of range.. free the new entry and return error */
+			kfree(new_session);
+			drm_err(&i915->drm, "Failed to %s, bad params\n", __func__);
+			return -EINVAL;
+		}
+
+		list_add(&new_session->session_list, &i915->pxp.ctx->active_pxp_type1_sessions);
+		break;
+
+	default:
+		/* session type is invalid... free new entry and return error. */
+		kfree(new_session);
+		drm_err(&i915->drm, "Failed to %s, bad params\n", __func__);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+int intel_pxp_sm_reserve_arb_session(struct drm_i915_private *i915, u32 *pxp_tag)
+{
+	int ret;
+
+	lockdep_assert_held(&i915->pxp.ctx->ctx_mutex);
+
+	if (!pxp_tag || !i915)
+		return -EINVAL;
+
+	ret = sync_hw_sw_state(i915, ARB_SESSION_INDEX, ARB_SESSION_TYPE);
+	if (unlikely(ret))
+		goto end;
+
+	ret = create_new_session_entry(i915, NULL, 0, ARB_SESSION_TYPE,
+				       ARB_PROTECTION_MODE, ARB_SESSION_INDEX);
+	if (unlikely(ret))
+		goto end;
+
+	ret = pxp_set_pxp_tag(i915, ARB_SESSION_TYPE, ARB_SESSION_INDEX, ARB_PROTECTION_MODE);
+
+end:
+	if (ret == 0)
+		*pxp_tag = intel_pxp_get_pxp_tag(i915, ARB_SESSION_INDEX, ARB_SESSION_TYPE, NULL);
+
+	return ret;
+}
+
+/**
+ * pxp_sm_mark_protected_session_in_play - To put an reserved protected session to "in_play" state
+ * @i915: i915 device handle.
+ * @session_type: Type of the session to be updated. One of enum pxp_session_types.
+ * @session_id: Session id identifier of the protected session.
+ *
+ * Return: status. 0 means update is successful.
+ */
+int pxp_sm_mark_protected_session_in_play(struct drm_i915_private *i915, int session_type,
+					  u32 session_id)
+{
+	int ret;
+	int session_index;
+	int session_type_in_id;
+	struct pxp_protected_session *current_session;
+
+	ret = pxp_get_session_index(i915, session_id, &session_index, &session_type_in_id);
+	if (ret) {
+		drm_err(&i915->drm, "Failed to pxp_get_session_index\n");
+		return ret;
+	}
+
+	if (session_type != session_type_in_id) {
+		drm_err(&i915->drm, "Failed to session_type and session_type_in_id don't match\n");
+		return -EINVAL;
+	}
+
+	lockdep_assert_held(&i915->pxp.ctx->ctx_mutex);
+
+	switch (session_type) {
+	case SESSION_TYPE_TYPE0:
+		list_for_each_entry(current_session, &i915->pxp.ctx->active_pxp_type0_sessions,
+				    session_list) {
+			if (current_session->session_index == session_index) {
+				current_session->session_is_in_play = true;
+				return 0;
+			}
+		}
+		break;
+	case SESSION_TYPE_TYPE1:
+		list_for_each_entry(current_session, &i915->pxp.ctx->active_pxp_type1_sessions,
+				    session_list) {
+			if (current_session->session_index == session_index) {
+				current_session->session_is_in_play = true;
+				return 0;
+			}
+		}
+		break;
+	default:
+		/* invalid session type */
+		return -EINVAL;
+	}
+
+	drm_err(&i915->drm, "Failed to %s couldn't find active session\n", __func__);
+	return -EINVAL;
+}
+
 int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915)
 {
 	int ret;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
index b5012948f971..6eb5efd083a9 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
@@ -23,6 +23,11 @@
 #define SESSION_TYPE_MASK BIT(7)
 #define SESSION_ID_MASK (BIT(7) - 1)
 
+/* Arbitrary session */
+#define ARB_SESSION_INDEX 0xf
+#define ARB_SESSION_TYPE SESSION_TYPE_TYPE0
+#define ARB_PROTECTION_MODE PROTECTION_MODE_HM
+
 enum pxp_session_types {
 	SESSION_TYPE_TYPE0 = 0,
 	SESSION_TYPE_TYPE1 = 1,
@@ -84,6 +89,9 @@ struct pxp_protected_session {
 	bool session_is_in_play;
 };
 
+int intel_pxp_sm_reserve_arb_session(struct drm_i915_private *i915, u32 *pxp_tag);
+int pxp_sm_mark_protected_session_in_play(struct drm_i915_private *i915, int session_type,
+					  u32 session_id);
 int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915);
 
 #endif /* __INTEL_PXP_SM_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index fa617546bdd4..b2dff433073c 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -67,6 +67,7 @@ static int intel_pxp_tee_io_message(struct drm_i915_private *i915,
 static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 				       struct device *tee_kdev, void *data)
 {
+	int ret;
 	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
 
 	if (!i915 || !tee_kdev || !data)
@@ -77,6 +78,16 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 	i915->pxp_tee_master->tee_dev = tee_kdev;
 	mutex_unlock(&i915->pxp_tee_comp_mutex);
 
+	mutex_lock(&i915->pxp.ctx->ctx_mutex);
+	/* Create arb session only if tee is ready, during system boot or sleep/resume */
+	ret = intel_pxp_create_arb_session(i915);
+	mutex_unlock(&i915->pxp.ctx->ctx_mutex);
+
+	if (ret) {
+		drm_err(&i915->drm, "Failed to create arb session ret=[%d]\n", ret);
+		return ret;
+	}
+
 	return 0;
 }
 
@@ -125,3 +136,26 @@ void intel_pxp_tee_component_fini(struct drm_i915_private *i915)
 
 	component_del(i915->drm.dev, &i915_pxp_tee_component_ops);
 }
+
+int intel_pxp_tee_cmd_create_arb_session(struct drm_i915_private *i915)
+{
+	int ret;
+	u32 msg_out_size_received = 0;
+	u32 msg_in[PXP_TEE_ARB_CMD_DW_LEN] = PXP_TEE_ARB_CMD_BIN;
+	u32 msg_out[PXP_TEE_ARB_CMD_DW_LEN] = {0};
+
+	mutex_lock(&i915->pxp_tee_comp_mutex);
+
+	ret = intel_pxp_tee_io_message(i915,
+				       &msg_in,
+				       sizeof(msg_in),
+				       &msg_out, &msg_out_size_received,
+				       sizeof(msg_out));
+
+	mutex_unlock(&i915->pxp_tee_comp_mutex);
+
+	if (ret)
+		drm_err(&i915->drm, "Failed to send/receive tee message\n");
+
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
index 0d0fbd0ed018..6cc9517701ea 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
@@ -11,4 +11,15 @@
 void intel_pxp_tee_component_init(struct drm_i915_private *i915);
 void intel_pxp_tee_component_fini(struct drm_i915_private *i915);
 
+int pxp_tee_ioctl_io_message(struct drm_i915_private *i915,
+			     void __user *msg_in_user_ptr, u32 msg_in_size,
+			     void __user *msg_out_user_ptr, u32 *msg_out_size_ptr,
+			     u32 msg_out_buf_size);
+
+int intel_pxp_tee_cmd_create_arb_session(struct drm_i915_private *i915);
+
+/* TEE command to create the arbitrary session */
+#define PXP_TEE_ARB_CMD_BIN {0x00040000, 0x0000001e, 0x00000000, 0x00000008, 0x00000002, 0x0000000f}
+#define PXP_TEE_ARB_CMD_DW_LEN (6)
+
 #endif /* __INTEL_PXP_TEE_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
