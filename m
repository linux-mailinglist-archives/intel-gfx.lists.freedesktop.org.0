Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D3D2B3950
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Nov 2020 22:08:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A4D16E9C9;
	Sun, 15 Nov 2020 21:08:18 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83FD26E9C6
 for <Intel-gfx@lists.freedesktop.org>; Sun, 15 Nov 2020 21:08:17 +0000 (UTC)
IronPort-SDR: a84E+CL84Nc3D3N8vF5IcMEZ+CpFV39+3/TG/ZWt0tLeWGRtv6g8pxuAey0sBLG6Z4qLhHk8L2
 gS2pseQsSPlQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="158455843"
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; d="scan'208";a="158455843"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2020 13:08:16 -0800
IronPort-SDR: uSMYHvUHOh4hNBfubu3GztbzIUqYmqR9aMf4VDvmH40YkhDkxBY97yOpvn1B+wRIFp1edazEek
 PCfZNoPiWS3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; d="scan'208";a="430009561"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga001.fm.intel.com with ESMTP; 15 Nov 2020 13:08:15 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sun, 15 Nov 2020 13:07:59 -0800
Message-Id: <20201115210815.5272-11-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201115210815.5272-1-sean.z.huang@intel.com>
References: <20201115210815.5272-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [PATCH 11/27] drm/i915/pxp: Enable ioctl action to set
 session in play
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

With this ioctl action, ring3 driver can set the session in state
"session in play", after ring3 reserved the session slot/id from
ring3 PXP, and sent the TEE commands to activate the corresponding
hardware session. Session state "session in play" means this
session is ready for secure playback.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c    |  4 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c | 92 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h |  2 +
 3 files changed, 98 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 919ebe2405e3..c64200f52480 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -54,6 +54,10 @@ int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmf
 				pxp_info.sm_status = ret;
 				ret = 0;
 			}
+		} else if (params->req_session_state == PXP_SM_REQ_SESSION_IN_PLAY) {
+			ret = pxp_sm_mark_protected_session_in_play(i915, params->session_type,
+								    params->pxp_tag);
+
 		} else {
 			ret = -EINVAL;
 			goto end;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
index 3a22fb485cd8..72ef29558dce 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
@@ -41,6 +41,25 @@ static int pxp_reg_write(struct drm_i915_private *i915, u32 offset, u32 regval)
 	return 0;
 }
 
+static int pxp_get_session_index(struct drm_i915_private *i915, u32 pxp_tag,
+				 int *session_index_out, int *session_type_out)
+{
+	int ret;
+
+	if (!session_index_out || !session_type_out) {
+		ret = -EINVAL;
+		drm_dbg(&i915->drm, "Failed to %s, bad params\n", __func__);
+		goto end;
+	}
+
+	*session_type_out = (pxp_tag & SESSION_TYPE_MASK) ? SESSION_TYPE_TYPE1 : SESSION_TYPE_TYPE0;
+	*session_index_out = pxp_tag & SESSION_ID_MASK;
+
+	ret = 0;
+end:
+	return ret;
+}
+
 static u8 pxp_get_session_id(int session_index, int session_type)
 {
 	u8 session_id = session_index & SESSION_ID_MASK;
@@ -475,6 +494,79 @@ int intel_pxp_sm_reserve_session(struct drm_i915_private *i915, struct drm_file
 	return ret;
 }
 
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
+	drm_dbg(&i915->drm, ">>> %s session_type=[%d] session_id=[0x%08x]\n", __func__,
+		session_type, session_id);
+
+	ret = pxp_get_session_index(i915, session_id, &session_index, &session_type_in_id);
+	if (ret) {
+		drm_dbg(&i915->drm, "Failed to pxp_get_session_index\n");
+		goto end;
+	}
+
+	if (session_type != session_type_in_id) {
+		ret = -EINVAL;
+		drm_dbg(&i915->drm, "Failed to session_type and session_type_in_id don't match\n");
+		goto end;
+	}
+
+	lockdep_assert_held(&i915->pxp.r0ctx->ctx_mutex);
+
+	switch (session_type) {
+	case SESSION_TYPE_TYPE0:
+		list_for_each_entry(current_session, &i915->pxp.r0ctx->active_pxp_type0_sessions, session_list) {
+			DRM_DEBUG("Traverse the active type0 list, session_index=[%d]\n", current_session->session_index);
+			drm_dbg(&i915->drm, "Traverse the active type0 list, session_index=[%d]\n", current_session->session_index);
+			if (current_session->session_index == session_index) {
+				current_session->session_is_in_play = true;
+				ret = 0;
+				goto end;
+			}
+		}
+
+		drm_dbg(&i915->drm, "Failed to %s couldn't find active type0 session\n", __func__);
+		ret = -EINVAL;
+		goto end;
+
+	case SESSION_TYPE_TYPE1:
+		list_for_each_entry(current_session, &i915->pxp.r0ctx->active_pxp_type1_sessions, session_list) {
+			drm_dbg(&i915->drm, "Traverse the active type1 list, session_index=[%d]\n", current_session->session_index);
+			if (current_session->session_index == session_index) {
+				current_session->session_is_in_play = true;
+				ret = 0;
+				goto end;
+			}
+		}
+
+		drm_dbg(&i915->drm, "Failed to %s couldn't find active type1 session\n", __func__);
+		ret = -EINVAL;
+		goto end;
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
 int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915)
 {
 	int ret;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
index 5fcf63f804f8..90f7d74cacdf 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
@@ -87,6 +87,8 @@ struct pxp_protected_session {
 int intel_pxp_sm_reserve_session(struct drm_i915_private *i915, struct drm_file *drmfile,
 				 int context_id, int session_type, int protection_mode,
 				 u32 *pxp_tag);
+int pxp_sm_mark_protected_session_in_play(struct drm_i915_private *i915, int session_type,
+					  u32 session_id);
 int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915);
 
 #endif /* __INTEL_PXP_SM_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
