Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A35FE2B3913
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Nov 2020 21:24:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A5FF89FAC;
	Sun, 15 Nov 2020 20:23:53 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EAA389F03
 for <Intel-gfx@lists.freedesktop.org>; Sun, 15 Nov 2020 20:23:49 +0000 (UTC)
IronPort-SDR: 2qc4ZB/cm2LBo8gT7o1317JjMbXBkMEVmllxaP1nsE9Uws8n3my48hDyXmwZvKwbD3DZk3CUmb
 gRQ8In3VfT1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="234832204"
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; d="scan'208";a="234832204"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2020 12:23:48 -0800
IronPort-SDR: SiSgjhELpHCCdvYp6K0opNczlWFwrquS1ysfrAmFgV+Ewyzmua8wsEYrxOWgncBT91AgbyLdUH
 dEuHURVn35AQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; d="scan'208";a="430005346"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga001.fm.intel.com with ESMTP; 15 Nov 2020 12:23:47 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sun, 15 Nov 2020 12:23:30 -0800
Message-Id: <20201115202347.29224-10-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201115202347.29224-1-sean.z.huang@intel.com>
References: <20201115202347.29224-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [PATCH 10/27] drm/i915/pxp: Enable ioctl action to
 reserve session slot
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

With this ioctl action, ring3 driver can reserve a specific
session slot/id assigned by ring0 PXP, as the first step of PXP
session establishment flow. Ring3 PXP stores the session info in
the session list structure.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c    |  20 +++
 drivers/gpu/drm/i915/pxp/intel_pxp.h    |  24 +++-
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c | 168 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h |   3 +
 4 files changed, 213 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 8fa88ea17bc0..919ebe2405e3 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -40,6 +40,26 @@ int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmf
 	}
 
 	switch (pxp_info.action) {
+	case PXP_ACTION_SET_SESSION_STATUS:
+	{
+		struct pxp_sm_set_session_status_params *params = &pxp_info.set_session_status;
+
+		if (params->req_session_state == PXP_SM_REQ_SESSION_ID_INIT) {
+			ret = intel_pxp_sm_reserve_session(i915, drmfile, 0,
+							   params->session_type,
+							   params->session_mode,
+							   &params->pxp_tag);
+			if (ret == PXP_SM_STATUS_RETRY_REQUIRED ||
+			    ret == PXP_SM_STATUS_SESSION_NOT_AVAILABLE) {
+				pxp_info.sm_status = ret;
+				ret = 0;
+			}
+		} else {
+			ret = -EINVAL;
+			goto end;
+		}
+		break;
+	}
 	case PXP_ACTION_SET_R3_CONTEXT:
 	{
 		ret = intel_pxp_set_r3ctx(i915, pxp_info.set_r3ctx);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 95d3deba7ade..cbaf25690596 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -15,6 +15,9 @@
 #define pxp_session_list(i915, session_type) (((session_type) == SESSION_TYPE_TYPE0) ? \
 	&(i915)->pxp.r0ctx->active_pxp_type0_sessions : &(i915)->pxp.r0ctx->active_pxp_type1_sessions)
 
+#define pxp_session_max(session_type) (((session_type) == SESSION_TYPE_TYPE0) ? \
+	MAX_TYPE0_SESSIONS : MAX_TYPE1_SESSIONS)
+
 #define MAX_TYPE0_SESSIONS 16
 #define MAX_TYPE1_SESSIONS 6
 
@@ -27,7 +30,10 @@ enum pxp_sm_session_req {
 	PXP_SM_REQ_SESSION_TERMINATE
 };
 
-#define PXP_ACTION_SET_R3_CONTEXT 5
+enum pxp_ioctl_action {
+	PXP_ACTION_SET_SESSION_STATUS = 1,
+	PXP_ACTION_SET_R3_CONTEXT = 5,
+};
 
 enum pxp_sm_status {
 	PXP_SM_STATUS_SUCCESS,
@@ -36,10 +42,24 @@ enum pxp_sm_status {
 	PXP_SM_STATUS_ERROR_UNKNOWN
 };
 
+struct pxp_sm_set_session_status_params {
+	/** @pxp_tag: in [optional], for Arbitrator session, out pxp tag */
+	u32 pxp_tag;
+	/** @session_type: in, session type */
+	u32 session_type;
+	/** @session_mode: in, session mode */
+	u32 session_mode;
+	/** @req_session_state: in, new session state */
+	u32 req_session_state;
+};
+
 struct pxp_info {
 	u32 action;
 	u32 sm_status;
-	u32 set_r3ctx;
+	union {
+		struct pxp_sm_set_session_status_params set_session_status;
+		u32 set_r3ctx;
+	};
 } __packed;
 
 struct pxp_context;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
index f3223c9f71c7..3a22fb485cd8 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
@@ -307,6 +307,174 @@ static bool check_if_protected_type0_sessions_are_attacked(struct drm_i915_priva
 	return false;
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
+	int ret;
+	struct pxp_protected_session *new_session = NULL;
+	int pid = 0;
+
+	if (drmfile)
+		pid = pid_nr(drmfile->pid);
+
+	drm_dbg(&i915->drm, ">>> %s context_id=[%d] session_type=[%d] protection_mode=[%d] session_index=[%d] drmfile=[%p] pid=[%d]\n",
+		__func__, context_id, session_type, protection_mode, session_index,
+		drmfile, pid);
+
+	new_session = kzalloc(sizeof(*new_session), GFP_KERNEL);
+	if (!new_session) {
+		ret = -ENOMEM;
+		drm_dbg(&i915->drm, "Failed to kzalloc()\n");
+		goto end;
+	}
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
+			ret = -EINVAL;
+			drm_dbg(&i915->drm, "Failed to %s, bad params\n", __func__);
+			goto end;
+		}
+
+		list_add(&new_session->session_list, &i915->pxp.r0ctx->active_pxp_type0_sessions);
+		break;
+
+	case SESSION_TYPE_TYPE1:
+		/* check to make sure the session id is within allowed range */
+		if (session_index < 0 || session_index >= MAX_TYPE1_SESSIONS) {
+			/* session id out of range.. free the new entry and return error */
+			kfree(new_session);
+			ret = -EINVAL;
+			drm_dbg(&i915->drm, "Failed to %s, bad params\n", __func__);
+			goto end;
+		}
+
+		list_add(&new_session->session_list, &i915->pxp.r0ctx->active_pxp_type1_sessions);
+		break;
+
+	default:
+		/* session type is invalid... free new entry and return error. */
+		kfree(new_session);
+		ret = -EINVAL;
+		drm_dbg(&i915->drm, "Failed to %s, bad params\n", __func__);
+		break;
+	}
+	ret = 0;
+end:
+	return ret;
+}
+
+/**
+ * intel_pxp_sm_reserve_session - To reserve an available protected session.
+ * @i915: i915 device handle.
+ * @drmfile: pointer to drm_file.
+ * @context_id: Numeric identifier of the context created by the caller.
+ * @session_type: Type of the session requested. One of enum pxp_session_types.
+ * @protection_mode: Type of protection requested for the session. One of the
+ *                   enum pxp_protection_modes.
+ * @pxp_tag: Numeric session identifier returned back to caller.
+ *
+ * Return: status. 0 means reserve is successful.
+ */
+int intel_pxp_sm_reserve_session(struct drm_i915_private *i915, struct drm_file *drmfile,
+				 int context_id, int session_type, int protection_mode,
+				 u32 *pxp_tag)
+{
+	int ret;
+	int session_index = 0;
+
+	drm_dbg(&i915->drm, ">>> %s session_type=[%d] protection_mode=[%d]\n", __func__,
+		session_type, protection_mode);
+
+	if (!pxp_tag || !i915) {
+		ret = -EINVAL;
+		drm_dbg(&i915->drm, "Failed to %s, bad params\n", __func__);
+		goto end;
+	}
+
+	if (protection_mode != PROTECTION_MODE_LM && protection_mode != PROTECTION_MODE_HM &&
+	    protection_mode != PROTECTION_MODE_SM) {
+		ret = -EINVAL;
+		drm_dbg(&i915->drm, "Failed to %s, invalid session mode=[%d]\n", __func__, protection_mode);
+		goto end;
+	}
+
+	lockdep_assert_held(&i915->pxp.r0ctx->ctx_mutex);
+
+	if (session_type == SESSION_TYPE_TYPE0) {
+		/*
+		 * check if sessions are under attack. if so, don't allow creation of
+		 * new session entries
+		 */
+		if (check_if_protected_type0_sessions_are_attacked(i915)) {
+			/** protected sessions are under attack. return failure... **/
+			ret = -EPERM;
+			goto end;
+		}
+	}
+
+	/*
+	 * iterate over the active sessions list to find next available open session id
+	 * Cannot assume that the session entries will be sorted in the linked list
+	 * as terminates are allowed at any time without re-sorting the linked list.
+	 * So, the linked list should be walked start to finish to ensure a session is
+	 * not already active
+	 */
+	for (session_index = 0; session_index < pxp_session_max(session_type); session_index++) {
+		if (!is_sw_session_active(i915, session_type, session_index, false, NULL)) {
+			ret = sync_hw_sw_state(i915, session_index, session_type);
+			if (unlikely(ret)) {
+				ret = PXP_SM_STATUS_RETRY_REQUIRED;
+				goto end;
+			}
+
+			/*
+			 * found an available session... create a new session entry
+			 * with this identifier and return success
+			 */
+			ret = create_new_session_entry(i915, drmfile, context_id, session_type,
+						       protection_mode, session_index);
+			if (unlikely(ret))
+				goto end;
+
+			ret = pxp_set_pxp_tag(i915, session_type, session_index, protection_mode);
+			goto end;
+		}
+	}
+
+	ret = PXP_SM_STATUS_SESSION_NOT_AVAILABLE;
+end:
+	if (ret == 0)
+		*pxp_tag = intel_pxp_get_pxp_tag(i915, session_index, session_type, NULL);
+
+	drm_dbg(&i915->drm, "<<< %s ret=[%d]\n", __func__, ret);
+	return ret;
+}
+
 int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915)
 {
 	int ret;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
index c1f6b1be3fd1..44d9f8d1df8e 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
@@ -83,6 +83,9 @@ struct pxp_protected_session {
 	bool session_is_in_play;
 };
 
+int intel_pxp_sm_reserve_session(struct drm_i915_private *i915, struct drm_file *drmfile,
+				 int context_id, int session_type, int protection_mode,
+				 u32 *pxp_tag);
 int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915);
 
 #endif /* __INTEL_PXP_SM_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
