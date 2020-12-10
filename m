Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 342F12D55BB
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 09:53:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CFF66E3F0;
	Thu, 10 Dec 2020 08:52:50 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FF156E3F0
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 08:52:39 +0000 (UTC)
IronPort-SDR: k/I/1Qa0vyebvrvoWjrXOgh0d6A0zfZCGRRaEpIymm6S+NISL120lwBQhNfbSHogUFhr1sdbX2
 ShYA+qVOqrXw==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="171653242"
X-IronPort-AV: E=Sophos;i="5.78,407,1599548400"; d="scan'208";a="171653242"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 00:52:38 -0800
IronPort-SDR: vIoqL3r92gzERDeIbXjTLAa3WFfNVmUN04TOLLzJQq5E1Kzd0ceOU8ATwAsmEUHkuKuaa9//Sw
 bhf0KUEAqh4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,407,1599548400"; d="scan'208";a="318931580"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga008.fm.intel.com with ESMTP; 10 Dec 2020 00:52:36 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 10 Dec 2020 00:51:57 -0800
Message-Id: <20201210085203.14422-16-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201210085203.14422-1-sean.z.huang@intel.com>
References: <20201210085203.14422-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v5 15/21] drm/i915/pxp: Implement ioctl action to
 set session in play
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

With this ioctl action, userspace driver can set the session in
state "session in play", after dirver reserved the session slot/id
from kernel PXP, and sent the TEE commands to activate the
corresponding hardware session. Session state "session in play"
means this session is ready for secure playback.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c    | 11 +++++-
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c | 51 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h |  2 +
 3 files changed, 63 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index e294134fef78..e000a78b782e 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -16,7 +16,13 @@
 #define KCR_INIT_ALLOW_DISPLAY_ME_WRITES (BIT(14) | (BIT(14) << KCR_INIT_MASK_SHIFT))
 
 #define PXP_ACTION_SET_SESSION_STATUS 1
-#define PXP_REQ_SESSION_ID_INIT 0
+
+enum pxp_session_req {
+	/* Request KMD to allocate session id and move it to IN INIT */
+	PXP_REQ_SESSION_ID_INIT = 0x0,
+	/* Inform KMD that UMD has completed the initialization */
+	PXP_REQ_SESSION_IN_PLAY,
+};
 
 /*
  * struct pxp_set_session_status_params - Params to reserved, set or destroy
@@ -228,6 +234,9 @@ int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmf
 				pxp_info.sm_status = ret;
 				ret = 0;
 			}
+		} else if (params->req_session_state == PXP_REQ_SESSION_IN_PLAY) {
+			ret = intel_pxp_sm_ioctl_mark_session_in_play(pxp, params->session_type,
+								      params->pxp_tag);
 		} else {
 			ret = -EINVAL;
 		}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
index a68316be1bfd..e5858c17e62f 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
@@ -12,6 +12,9 @@
 
 #define GEN12_KCR_TSIP _MMIO(0x32264) /* KCR type1 session in play 0-63 */
 
+#define SESSION_TYPE_MASK BIT(7)
+#define SESSION_ID_MASK (BIT(7) - 1)
+
 static inline int session_max(int session_type)
 {
 	return (session_type == SESSION_TYPE_TYPE0) ?
@@ -148,6 +151,17 @@ static int create_session_entry(struct intel_pxp *pxp, struct drm_file *drmfile,
 	return 0;
 }
 
+static int pxp_get_session_index(u32 session_id, int *index_out, int *type_out)
+{
+	if (!index_out || !type_out)
+		return -EINVAL;
+
+	*type_out = (session_id & SESSION_TYPE_MASK) ? SESSION_TYPE_TYPE1 : SESSION_TYPE_TYPE0;
+	*index_out = session_id & SESSION_ID_MASK;
+
+	return 0;
+}
+
 /**
  * intel_pxp_sm_ioctl_reserve_session - To reserve an available protected session.
  * @pxp: pointer to pxp struct
@@ -192,3 +206,40 @@ int intel_pxp_sm_ioctl_reserve_session(struct intel_pxp *pxp, struct drm_file *d
 
 	return PXP_SM_STATUS_SESSION_NOT_AVAILABLE;
 }
+
+/**
+ * intel_pxp_sm_ioctl_mark_session_in_play - Put an reserved session to "in_play" state
+ * @pxp: pointer to pxp struct
+ * @session_type: Type of the session to be updated. One of enum pxp_session_types.
+ * @session_id: Session identifier of the session, containing type and index info
+ *
+ * Return: status. 0 means update is successful.
+ */
+int intel_pxp_sm_ioctl_mark_session_in_play(struct intel_pxp *pxp, int session_type,
+					    u32 session_id)
+{
+	int ret;
+	int session_index;
+	int session_type_in_id;
+	struct intel_pxp_sm_session *curr;
+	struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
+
+	ret = pxp_get_session_index(session_id, &session_index, &session_type_in_id);
+	if (ret)
+		return ret;
+
+	if (session_type != session_type_in_id)
+		return -EINVAL;
+
+	lockdep_assert_held(&pxp->ctx.mutex);
+
+	list_for_each_entry(curr, session_list(pxp, session_type), list) {
+		if (curr->index == session_index) {
+			curr->is_in_play = true;
+			return 0;
+		}
+	}
+
+	drm_err(&gt->i915->drm, "Failed to %s couldn't find active session\n", __func__);
+	return -EINVAL;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
index 75fffb7d8b0e..aaa44d365f39 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
@@ -40,4 +40,6 @@ struct intel_pxp_sm_session {
 int intel_pxp_sm_ioctl_reserve_session(struct intel_pxp *pxp, struct drm_file *drmfile,
 				       int session_type, int protection_mode,
 				       u32 *pxp_tag);
+int intel_pxp_sm_ioctl_mark_session_in_play(struct intel_pxp *pxp, int session_type,
+					    u32 session_id);
 #endif /* __INTEL_PXP_SM_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
