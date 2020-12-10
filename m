Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABADB2D6A81
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 23:39:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AD8E6EB7D;
	Thu, 10 Dec 2020 22:39:39 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F72D6EB7B
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 22:39:38 +0000 (UTC)
IronPort-SDR: uu5j8NxzbspF/Bm6l9QcZ+xqw1aF5gZCrUMwO99gfLobn2GUXOdRfk72tp86G7/5hjLfOOgBE0
 u2ZUISD+cPiQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="192676679"
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; d="scan'208";a="192676679"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 14:39:33 -0800
IronPort-SDR: 4kGuVeQHBBOzIx6In7vHbIDyW88BzrUEDziLJqgqmEsKfFT2S9YA4ODQ1L7kkg2UP0o3FN0jLr
 FOPXPtP5nE0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; d="scan'208";a="544017028"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga005.fm.intel.com with ESMTP; 10 Dec 2020 14:39:33 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 10 Dec 2020 14:38:56 -0800
Message-Id: <20201210223859.23882-19-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201210223859.23882-1-sean.z.huang@intel.com>
References: <20201210223859.23882-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v6 18/21] drm/i915/pxp: Implement ioctl action to
 query PXP tag
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

Enable the PXP ioctl action to allow userspace driver to query the
PXP tag, which is a 32-bit bitwise value indicating the current
session info, including protection type, session id, and whether
the session is enabled.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c         |  20 +++
 drivers/gpu/drm/i915/pxp/intel_pxp.h         |   6 -
 drivers/gpu/drm/i915/pxp/intel_pxp_context.h |   9 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c      | 130 ++++++++++++++++++-
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h      |   2 +
 5 files changed, 160 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 2445af5f763c..46ad2ab229c1 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -17,6 +17,7 @@
 #define KCR_INIT_ALLOW_DISPLAY_ME_WRITES (BIT(14) | (BIT(14) << KCR_INIT_MASK_SHIFT))
 
 enum pxp_ioctl_action {
+	PXP_ACTION_QUERY_PXP_TAG = 0,
 	PXP_ACTION_SET_SESSION_STATUS = 1,
 	PXP_ACTION_TEE_IO_MESSAGE = 4,
 };
@@ -30,6 +31,15 @@ enum pxp_session_req {
 	PXP_REQ_SESSION_TERMINATE
 };
 
+/*
+ * struct pxp_sm_query_pxp_tag - Params to query the PXP tag of specified
+ * session id and whether the session is alive from PXP state machine.
+ */
+struct pxp_sm_query_pxp_tag {
+	u32 session_is_alive;
+	u32 pxp_tag; /* in  - Session ID, out pxp tag */
+};
+
 /*
  * struct pxp_set_session_status_params - Params to reserved, set or destroy
  * the session from the PXP state machine.
@@ -58,6 +68,8 @@ struct pxp_info {
 	u32 sm_status; /* out - status output for this operation */
 
 	union {
+		/* in - action params to query PXP tag */
+		struct pxp_sm_query_pxp_tag query_pxp_tag;
 		/* in - action params to set the PXP session state */
 		struct pxp_set_session_status_params set_session_status;
 		/* in - action params to send TEE commands */
@@ -272,6 +284,14 @@ int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmf
 		}
 		break;
 	}
+	case PXP_ACTION_QUERY_PXP_TAG:
+	{
+		struct pxp_sm_query_pxp_tag *params = &pxp_info.query_pxp_tag;
+
+		ret = intel_pxp_sm_ioctl_query_pxp_tag(pxp, &params->session_is_alive,
+						       &params->pxp_tag);
+		break;
+	}
 	case PXP_ACTION_TEE_IO_MESSAGE:
 	{
 		struct pxp_tee_io_message_params *params = &pxp_info.tee_io_message;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index e68c035d8448..133e3df9b1f6 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -16,12 +16,6 @@
 
 #define GEN12_KCR_SIP _MMIO(0x32260) /* KCR type0 session in play 0-31 */
 
-#define PXP_MAX_TYPE0_SESSIONS 16
-#define PXP_MAX_TYPE1_SESSIONS 6
-
-/* we need to reserve one type0 slot for arbitrary session */
-#define PXP_MAX_NORMAL_TYPE0_SESSIONS (PXP_MAX_TYPE0_SESSIONS - 1)
-
 enum pxp_session_types {
 	SESSION_TYPE_TYPE0 = 0,
 	SESSION_TYPE_TYPE1 = 1,
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
index 4c583f831831..ad9e278f3fb2 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
@@ -9,6 +9,12 @@
 #include <linux/mutex.h>
 #include "intel_pxp_arb.h"
 
+#define PXP_MAX_TYPE0_SESSIONS 16
+#define PXP_MAX_TYPE1_SESSIONS 6
+
+/* we need to reserve one type0 slot for arbitrary session */
+#define PXP_MAX_NORMAL_TYPE0_SESSIONS (PXP_MAX_TYPE0_SESSIONS - 1)
+
 /* struct pxp_context - Represents combined view of driver and logical HW states. */
 struct pxp_context {
 	/** @mutex: mutex to protect the pxp context */
@@ -20,6 +26,9 @@ struct pxp_context {
 	struct list_head type0_sessions;
 	struct list_head type1_sessions;
 
+	u32 type0_pxp_tag[PXP_MAX_NORMAL_TYPE0_SESSIONS];
+	u32 type1_pxp_tag[PXP_MAX_TYPE1_SESSIONS];
+
 	int id;
 
 	bool global_state_attacked;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
index c18802010ef6..fd1dc1269c4e 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
@@ -16,6 +16,21 @@
 #define SESSION_TYPE_MASK BIT(7)
 #define SESSION_ID_MASK (BIT(7) - 1)
 
+struct pxp_tag {
+	union {
+		u32 value;
+		struct {
+			u32 session_id  : 8;
+			u32 instance_id : 8;
+			u32 enable      : 1;
+			u32 hm          : 1;
+			u32 reserved_1  : 1;
+			u32 sm          : 1;
+			u32 reserved_2  : 12;
+		};
+	};
+};
+
 static inline struct list_head *session_list(struct intel_pxp *pxp,
 					     int session_type)
 {
@@ -196,6 +211,80 @@ static int pxp_terminate_hw_session(struct intel_pxp *pxp, int session_type,
 	return ret;
 }
 
+static int pxp_set_pxp_tag(struct intel_pxp *pxp, int session_type,
+			   int session_idx, int protection_mode)
+{
+	struct pxp_tag *pxp_tag;
+
+	if (session_type == SESSION_TYPE_TYPE0 && session_idx < PXP_MAX_TYPE0_SESSIONS)
+		pxp_tag = (struct pxp_tag *)&pxp->ctx.type0_pxp_tag[session_idx];
+	else if (session_type == SESSION_TYPE_TYPE1 && session_idx < PXP_MAX_TYPE1_SESSIONS)
+		pxp_tag = (struct pxp_tag *)&pxp->ctx.type1_pxp_tag[session_idx];
+	else
+		return -EINVAL;
+
+	switch (protection_mode) {
+	case PROTECTION_MODE_NONE:
+	{
+		pxp_tag->enable = false;
+		pxp_tag->hm = false;
+		pxp_tag->sm = false;
+		break;
+	}
+	case PROTECTION_MODE_LM:
+	{
+		pxp_tag->enable = true;
+		pxp_tag->hm = false;
+		pxp_tag->sm = false;
+		pxp_tag->instance_id++;
+		break;
+	}
+	case PROTECTION_MODE_HM:
+	{
+		pxp_tag->enable = true;
+		pxp_tag->hm = true;
+		pxp_tag->sm = false;
+		pxp_tag->instance_id++;
+		break;
+	}
+	case PROTECTION_MODE_SM:
+	{
+		pxp_tag->enable = true;
+		pxp_tag->hm = true;
+		pxp_tag->sm = true;
+		pxp_tag->instance_id++;
+		break;
+	}
+	default:
+		return -EINVAL;
+	}
+
+	pxp_tag->session_id = session_idx & SESSION_ID_MASK;
+
+	if (session_type == SESSION_TYPE_TYPE1)
+		pxp_tag->session_id |= SESSION_TYPE_MASK;
+
+	return 0;
+}
+
+static u32 pxp_get_pxp_tag(struct intel_pxp *pxp, int session_type,
+			   int session_idx, u32 *session_is_alive)
+{
+	struct pxp_tag *pxp_tag;
+
+	if (session_type == SESSION_TYPE_TYPE0 && session_idx < PXP_MAX_TYPE0_SESSIONS)
+		pxp_tag = (struct pxp_tag *)&pxp->ctx.type0_pxp_tag[session_idx];
+	else if (session_type == SESSION_TYPE_TYPE1 && session_idx < PXP_MAX_TYPE1_SESSIONS)
+		pxp_tag = (struct pxp_tag *)&pxp->ctx.type1_pxp_tag[session_idx];
+	else
+		return -EINVAL;
+
+	if (session_is_alive)
+		*session_is_alive = pxp_tag->enable;
+
+	return pxp_tag->value;
+}
+
 /**
  * intel_pxp_sm_ioctl_reserve_session - To reserve an available protected session.
  * @pxp: pointer to pxp struct
@@ -233,7 +322,16 @@ int intel_pxp_sm_ioctl_reserve_session(struct intel_pxp *pxp, struct drm_file *d
 			ret = create_session_entry(pxp, drmfile, pxp->ctx.id,
 						   session_type,
 						   protection_mode, idx);
-			*pxp_tag = idx;
+			if (ret)
+				return ret;
+
+			ret = pxp_set_pxp_tag(pxp, session_type, idx,
+					      protection_mode);
+			if (ret)
+				return ret;
+
+			*pxp_tag = pxp_get_pxp_tag(pxp, session_type,
+						   idx, NULL);
 			return ret;
 		}
 	}
@@ -306,6 +404,11 @@ int intel_pxp_sm_ioctl_terminate_session(struct intel_pxp *pxp, int session_type
 			if (ret)
 				return ret;
 
+			ret = pxp_set_pxp_tag(pxp, session_type, session_index,
+					      PROTECTION_MODE_NONE);
+			if (ret)
+				return ret;
+
 			list_del(&curr->list);
 			kfree(curr);
 			return 0;
@@ -326,9 +429,34 @@ int intel_pxp_sm_terminate_all_sessions(struct intel_pxp *pxp, int session_type)
 		return ret;
 
 	list_for_each_entry(curr, session_list(pxp, session_type), list) {
+		ret = pxp_set_pxp_tag(pxp, session_type,
+				      curr->index, PROTECTION_MODE_NONE);
+		if (ret)
+			return ret;
+
 		list_del(&curr->list);
 		kfree(curr);
 	}
 
 	return ret;
 }
+
+int intel_pxp_sm_ioctl_query_pxp_tag(struct intel_pxp *pxp,
+				     u32 *session_is_alive, u32 *pxp_tag)
+{
+	int session_type = 0;
+	int session_index = 0;
+	int ret;
+
+	if (!session_is_alive || !pxp_tag)
+		return -EINVAL;
+
+	ret = pxp_get_session_index(*pxp_tag, &session_index, &session_type);
+	if (ret)
+		return ret;
+
+	*pxp_tag = pxp_get_pxp_tag(pxp, session_type, session_index,
+				   session_is_alive);
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
index e242b7566021..09a26bb7a1a4 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
@@ -44,6 +44,8 @@ int intel_pxp_sm_ioctl_mark_session_in_play(struct intel_pxp *pxp, int session_t
 					    u32 session_id);
 int intel_pxp_sm_ioctl_terminate_session(struct intel_pxp *pxp, int session_type,
 					 int session_id);
+int intel_pxp_sm_ioctl_query_pxp_tag(struct intel_pxp *pxp,
+				     u32 *session_is_alive, u32 *pxp_tag);
 
 bool intel_pxp_sm_is_hw_session_in_play(struct intel_pxp *pxp,
 					int session_type, int session_index);
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
