Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1322B31DB
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Nov 2020 03:02:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 829386E968;
	Sun, 15 Nov 2020 02:02:20 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B1726E968
 for <Intel-gfx@lists.freedesktop.org>; Sun, 15 Nov 2020 02:02:17 +0000 (UTC)
IronPort-SDR: p/ASHY/bqNCfmrg/R71ieQNbzfaYO2icZBMn8EsBvT0FiI4B2+Vyz74pjR0WvnYTHXw2tDR7kn
 +8ZVlog5+NDw==
X-IronPort-AV: E=McAfee;i="6000,8403,9805"; a="255321256"
X-IronPort-AV: E=Sophos;i="5.77,479,1596524400"; d="scan'208";a="255321256"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2020 18:02:16 -0800
IronPort-SDR: uXqcNebEv/AMMGQ2btGtBtvnt9nNnOTyjrjyhTAuz/rIl9OM1Ov2d2P2wUyxeEAte8jYTfz8Qj
 nlMPdmWOChoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,479,1596524400"; d="scan'208";a="367120660"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Nov 2020 18:02:16 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sat, 14 Nov 2020 18:02:02 -0800
Message-Id: <20201115020216.17242-13-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201115020216.17242-1-sean.z.huang@intel.com>
References: <20201115020216.17242-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [PATCH v2 13/27] drm/i915/pxp: Enable ioctl action to
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

Enable the PXP ioctl action to allow ring3 PXP to terminate the
hardware session and cleanup its software session state.
Ring0 PXP sends the session termination command to GPU once
receves this ioctl action.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c    |   7 +
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c | 205 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h |   5 +
 3 files changed, 217 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index c64200f52480..661ba618bf86 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -58,6 +58,13 @@ int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmf
 			ret = pxp_sm_mark_protected_session_in_play(i915, params->session_type,
 								    params->pxp_tag);
 
+		} else if (params->req_session_state == PXP_SM_REQ_SESSION_TERMINATE) {
+			ret = pxp_sm_terminate_protected_session_safe(i915, 0,
+								      params->session_type,
+								      params->pxp_tag);
+
+			if (!intel_pxp_sm_is_any_type0_session_in_play(i915, PROTECTION_MODE_ALL))
+				intel_pxp_destroy_r3ctx_list(i915);
 		} else {
 			ret = -EINVAL;
 			goto end;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
index 40e1cde1b5d1..31ad4a330e58 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
@@ -876,6 +876,189 @@ static int issue_hw_terminate_for_session(struct drm_i915_private *i915, int ses
 	return ret;
 }
 
+/**
+ * terminate_protected_session - To terminate an active HW session and free its entry.
+ * @i915: i915 device handle.
+ * @context_id: context identifier of the requestor. only relevant if do_safety_check is true.
+ * @session_type: type of the session to be terminated. One of enum pxp_session_types.
+ * @session_index: session index of the session to be terminated.
+ * @do_safety_check: if enabled the context Id sent by the caller is
+ *                   matched with the one associated with the terminated
+ *                   session entry.
+ *
+ * Return: status. 0 means terminate is successful.
+ */
+static int terminate_protected_session(struct drm_i915_private *i915, int context_id,
+				       int session_type, int session_index,
+				       bool do_safety_check)
+{
+	int ret;
+	struct pxp_protected_session *current_session, *n;
+
+	drm_dbg(&i915->drm, ">>> %s conext_id=[%d] session_type=[%d] session_index=[0x%08x] do_safety_check=[%d]\n",
+		__func__, context_id, session_type, session_index, do_safety_check);
+
+	lockdep_assert_held(&i915->pxp.r0ctx->ctx_mutex);
+
+	switch (session_type) {
+	case SESSION_TYPE_TYPE0:
+		list_for_each_entry_safe(current_session, n, &i915->pxp.r0ctx->active_pxp_type0_sessions, session_list) {
+			if (current_session->session_index == session_index) {
+				if (do_safety_check && current_session->context_id != context_id) {
+					ret = -EPERM;
+					drm_dbg(&i915->drm, "Failed to %s due to invalid context_id=[%d]\n", __func__, context_id);
+					goto end;
+				}
+
+				ret = issue_hw_terminate_for_session(i915, session_type, session_index);
+				if (ret) {
+					drm_dbg(&i915->drm, "Failed to issue_hw_terminate_for_session()\n");
+					goto end;
+				}
+
+				ret = pxp_set_pxp_tag(i915, session_type, session_index, PROTECTION_MODE_NONE);
+				if (ret) {
+					drm_dbg(&i915->drm, "Failed to pxp_set_pxp_tag()\n");
+					goto end;
+				}
+
+				/* delete the current session entry from the linked list */
+				list_del(&current_session->session_list);
+
+				/* free the memory associated with the current context entry */
+				kfree(current_session);
+
+				/* TODO: special arbitrator session checks? */
+
+				ret = 0;
+				goto end;
+			}
+		}
+
+		drm_dbg(&i915->drm, "Warning - Couldn't find the type0 session_index=[0x%08x]\n", session_index);
+		ret = 0;
+		break;
+
+	case SESSION_TYPE_TYPE1:
+		list_for_each_entry_safe(current_session, n, &i915->pxp.r0ctx->active_pxp_type1_sessions, session_list) {
+			if (current_session->session_index == session_index) {
+				if (do_safety_check && current_session->context_id != context_id) {
+					ret = -EPERM;
+					drm_dbg(&i915->drm, "Failed to %s due to invalid context_id=[%d]\n", __func__, context_id);
+					goto end;
+				}
+
+				ret = issue_hw_terminate_for_session(i915, session_type, session_index);
+				if (ret) {
+					drm_dbg(&i915->drm, "Failed to issue_hw_terminate_for_session()\n");
+					goto end;
+				}
+
+				ret = pxp_set_pxp_tag(i915, session_type, session_index, PROTECTION_MODE_NONE);
+				if (ret) {
+					drm_dbg(&i915->drm, "Failed to pxp_set_pxp_tag()\n");
+					goto end;
+				}
+
+				/* delete the current session entry from the linked list */
+				list_del(&current_session->session_list);
+
+				/* free the memory associated with the current context entry */
+				kfree(current_session);
+
+				ret = 0;
+				goto end;
+			}
+		}
+
+		drm_dbg(&i915->drm, "Warning - Couldn't find the type1 session_index=[0x%08x]\n", session_index);
+		ret = 0;
+		break;
+
+	default:
+		/* invalid session type */
+		ret = -EINVAL;
+		break;
+	}
+end:
+	drm_dbg(&i915->drm, "<<< %s ret=[%d]\n", __func__, ret);
+	return ret;
+}
+
+/**
+ * pxp_sm_terminate_protected_session_safe - to terminate an active HW session and free its entry.
+ * @i915: i915 device handle.
+ * @context_id: context identifier of the requestor.
+ * @session_type: type of the session to be terminated. One of enum pxp_session_types.
+ * @session_id: session id identifier of the session to be terminated.
+ *
+ * For safety, the context Id sent by the caller is matched with the
+ * one associated with the terminated session entry.  * Terminate is
+ * only issued if context Ids match. Rejected otherwise This function
+ * is intended to be called from the ioctl.
+ *
+ * Return: status. 0 means terminate is successful.
+ */
+int pxp_sm_terminate_protected_session_safe(struct drm_i915_private *i915, int context_id,
+					    int session_type, int session_id)
+{
+	int ret;
+	int session_type_in_id;
+	int session_idx;
+
+	ret = pxp_get_session_index(i915, session_id, &session_idx, &session_type_in_id);
+	if (ret) {
+		drm_dbg(&i915->drm, "Failed to pxp_get_session_index\n");
+		return ret;
+	}
+
+	if (session_type != session_type_in_id) {
+		ret = -EINVAL;
+		drm_dbg(&i915->drm, "Failed to session_type and session_type_in_id don't match\n");
+		return ret;
+	}
+
+	ret = terminate_protected_session(i915, context_id, session_type, session_idx, true);
+
+	return ret;
+}
+
+/**
+ * pxp_sm_terminate_protected_session_unsafe - To terminate an active HW session and free its entry.
+ * @i915: i915 device handle.
+ * @session_type: type of the session to be terminated. One of enum pxp_session_types.
+ * @session_id: session id identifier of the session to be terminated.
+ *
+ * No safety; the context Id sent by the caller is not matched with
+ * the one associated with the terminated session entry. This function
+ * is NOT intended to be called from the ioctl. Kernel administration
+ * purposes only.
+ *
+ * Return: status. 0 means terminate is successful.
+ */
+int pxp_sm_terminate_protected_session_unsafe(struct drm_i915_private *i915, int session_type, int session_id)
+{
+	int ret;
+	int session_idx;
+	int session_type_in_id;
+
+	ret = pxp_get_session_index(i915, session_id, &session_idx, &session_type_in_id);
+	if (ret) {
+		drm_dbg(&i915->drm, "Failed to pxp_get_session_index\n");
+		return ret;
+	}
+
+	if (session_type != session_type_in_id) {
+		ret = -EINVAL;
+		drm_dbg(&i915->drm, "Failed to session_type and session_type_in_id don't match\n");
+		return ret;
+	}
+
+	ret = terminate_protected_session(i915, -1, session_type, session_idx, false);
+
+	return ret;
+}
+
 int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915)
 {
 	int ret;
@@ -892,3 +1075,25 @@ int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915)
 	drm_dbg(&i915->drm, "<<< %s ret=[%d]\n", __func__, ret);
 	return ret;
 }
+
+/**
+ * intel_pxp_sm_is_any_type0_session_in_play - To check if there is a type0 "in play" session.
+ * @i915: i915 device handle.
+ * @protection_mode: check for specified protection mode of the session
+ *
+ * Return: True if at least one alive session in "session in play" state, false otherwise.
+ */
+bool intel_pxp_sm_is_any_type0_session_in_play(struct drm_i915_private *i915, int protection_mode)
+{
+	struct pxp_protected_session *session, *n;
+
+	list_for_each_entry_safe(session, n, pxp_session_list(i915, SESSION_TYPE_TYPE0),
+				 session_list) {
+		if (protection_mode == PROTECTION_MODE_ALL)
+			return true;
+		else if (protection_mode == session->protection_mode)
+			return true;
+	}
+
+	return false;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
index 2a6fbf40da04..26597b1d18e1 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
@@ -104,6 +104,11 @@ int intel_pxp_sm_reserve_session(struct drm_i915_private *i915, struct drm_file
 				 u32 *pxp_tag);
 int pxp_sm_mark_protected_session_in_play(struct drm_i915_private *i915, int session_type,
 					  u32 session_id);
+int pxp_sm_terminate_protected_session_safe(struct drm_i915_private *i915, int context_id,
+					    int session_type, int session_id);
+int pxp_sm_terminate_protected_session_unsafe(struct drm_i915_private *i915, int session_type,
+					      int session_id);
 int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915);
+bool intel_pxp_sm_is_any_type0_session_in_play(struct drm_i915_private *i915, int protection_mode);
 
 #endif /* __INTEL_PXP_SM_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
