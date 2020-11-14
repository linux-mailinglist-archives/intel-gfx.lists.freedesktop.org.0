Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8172B2A98
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Nov 2020 02:46:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCFAD6E8BE;
	Sat, 14 Nov 2020 01:45:47 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99C896E8AC
 for <Intel-gfx@lists.freedesktop.org>; Sat, 14 Nov 2020 01:45:41 +0000 (UTC)
IronPort-SDR: 0Uu1B0BzPwqSkOqC1LSiK4wpyB84Z9p8syOR1JHWLMp8jufv1B5TJqrInSOpdUSusw/AMRA2rQ
 caHR817FTpkQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="149824089"
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="149824089"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 17:45:39 -0800
IronPort-SDR: p4smbTy+vp2ogKc63yQqMaX9JcRkFrLyow2CzcCjFmkw5dJxR1ExZKGkdA5xA9rFemB3El1Tq9
 YWbGjzqy8YIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="361524784"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga002.fm.intel.com with ESMTP; 13 Nov 2020 17:45:38 -0800
From: Sean Z Huang <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 13 Nov 2020 17:45:21 -0800
Message-Id: <20201114014537.25495-11-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201114014537.25495-1-sean.z.huang@intel.com>
References: <20201114014537.25495-1-sean.z.huang@intel.com>
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
Cc: "Huang, Sean Z" <sean.z.huang@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: "Huang, Sean Z" <sean.z.huang@intel.com>

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
index 0f684851ecb2..baa61a3a70ff 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -61,6 +61,10 @@ int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmf
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
index 62303dc197e2..eb77380367aa 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
@@ -49,6 +49,25 @@ static int pxp_reg_write(struct drm_i915_private *i915, u32 offset, u32 regval)
 	return err;
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
@@ -492,6 +511,79 @@ int intel_pxp_sm_reserve_session(struct drm_i915_private *i915, struct drm_file
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
index 44d9f8d1df8e..8f3f7e4a742b 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
@@ -86,6 +86,8 @@ struct pxp_protected_session {
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
