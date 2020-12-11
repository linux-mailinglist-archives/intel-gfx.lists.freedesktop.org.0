Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 165922D727E
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 10:05:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0062D6ECE4;
	Fri, 11 Dec 2020 09:05:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA38E6ECE5
 for <Intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 09:05:35 +0000 (UTC)
IronPort-SDR: vKH6pIrjJMQ2MxVxzqZcSgm1Axal/dlXK9GiezL2r3eCUeATGzTQSNEUaFtRN1NoEmD7Te7Wj2
 iJccTQlremog==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="162159114"
X-IronPort-AV: E=Sophos;i="5.78,410,1599548400"; d="scan'208";a="162159114"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2020 01:05:31 -0800
IronPort-SDR: 62+8qFxDvRyeVvIGCaFZR+yDVrI1o5GvO1cY3Oy1T7qTlYEtK3rJKnGLRL3AS9JaOqzHLQipfS
 qXUxIj0juhSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,410,1599548400"; d="scan'208";a="553804553"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by orsmga005.jf.intel.com with ESMTP; 11 Dec 2020 01:05:31 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 11 Dec 2020 01:04:51 -0800
Message-Id: <20201211090457.32674-18-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201211090457.32674-1-sean.z.huang@intel.com>
References: <20201211090457.32674-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v8 17/23] drm/i915/pxp: Implement ioctl action to
 send TEE commands
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

Implement the ioctl action to allow userspace driver sends TEE
commands via PXP ioctl, instead of TEE iotcl. So we can
centralize those protection operations at PXP.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c     | 48 +++++++++++++++++---
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c | 57 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h |  5 +++
 3 files changed, 105 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index c35011b84f5a..2445af5f763c 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -16,7 +16,10 @@
 /* Setting KCR Init bit is required after system boot */
 #define KCR_INIT_ALLOW_DISPLAY_ME_WRITES (BIT(14) | (BIT(14) << KCR_INIT_MASK_SHIFT))
 
-#define PXP_ACTION_SET_SESSION_STATUS 1
+enum pxp_ioctl_action {
+	PXP_ACTION_SET_SESSION_STATUS = 1,
+	PXP_ACTION_TEE_IO_MESSAGE = 4,
+};
 
 enum pxp_session_req {
 	/* Request KMD to allocate session id and move it to IN INIT */
@@ -38,13 +41,28 @@ struct pxp_set_session_status_params {
 	u32 req_session_state; /* in, new session state */
 };
 
+/*
+ * struct pxp_tee_io_message_params - Params to send/receive message to/from TEE.
+ */
+struct pxp_tee_io_message_params {
+	u8 __user *msg_in; /* in - message input */
+	u32 msg_in_size; /* in - message input size */
+	u8 __user *msg_out; /* in - message output buffer */
+	u32 msg_out_size; /* out- message output size from TEE */
+	u32 msg_out_buf_size; /* in - message output buffer size */
+};
+
 /* struct pxp_info - Params for PXP operation. */
 struct pxp_info {
 	u32 action; /* in - specified action of this operation */
 	u32 sm_status; /* out - status output for this operation */
 
-	/* in - action params to set the PXP session state */
-	struct pxp_set_session_status_params set_session_status;
+	union {
+		/* in - action params to set the PXP session state */
+		struct pxp_set_session_status_params set_session_status;
+		/* in - action params to send TEE commands */
+		struct pxp_tee_io_message_params tee_io_message;
+	};
 } __attribute__((packed));
 
 struct drm_i915_pxp_ops {
@@ -228,7 +246,9 @@ int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmf
 		goto end;
 	}
 
-	if (pxp_info.action == PXP_ACTION_SET_SESSION_STATUS) {
+	switch (pxp_info.action) {
+	case PXP_ACTION_SET_SESSION_STATUS:
+	{
 		struct pxp_set_session_status_params *params = &pxp_info.set_session_status;
 
 		if (params->req_session_state == PXP_REQ_SESSION_ID_INIT) {
@@ -250,8 +270,26 @@ int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmf
 		} else {
 			ret = -EINVAL;
 		}
-	} else {
+		break;
+	}
+	case PXP_ACTION_TEE_IO_MESSAGE:
+	{
+		struct pxp_tee_io_message_params *params = &pxp_info.tee_io_message;
+
+		ret = intel_pxp_tee_ioctl_io_message(pxp,
+						     params->msg_in, params->msg_in_size,
+						     params->msg_out, &params->msg_out_size,
+						     params->msg_out_buf_size);
+		if (ret) {
+			drm_err(&i915->drm, "Failed to send TEE IO message\n");
+			ret = -EFAULT;
+		}
+		break;
+	}
+	default:
+		drm_err(&i915->drm, "Failed to %s due to bad params\n", __func__);
 		ret = -EINVAL;
+		break;
 	}
 
 end:
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 816a6d5a54e4..e0815b2ee9ab 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -168,3 +168,60 @@ int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp)
 
 	return ret;
 }
+
+int intel_pxp_tee_ioctl_io_message(struct intel_pxp *pxp,
+				   void __user *msg_in_user_ptr, u32 msg_in_size,
+				   void __user *msg_out_user_ptr, u32 *msg_out_size_ptr,
+				   u32 msg_out_buf_size)
+{
+	int ret;
+	void *msg_in = NULL;
+	void *msg_out = NULL;
+	struct intel_gt *gt = container_of(pxp, typeof(*gt), pxp);
+	struct drm_i915_private *i915 = gt->i915;
+
+	if (!msg_in_user_ptr || !msg_out_user_ptr || msg_out_buf_size == 0 ||
+	    msg_in_size == 0 || !msg_out_size_ptr)
+		return -EINVAL;
+
+	msg_in = kzalloc(msg_in_size, GFP_KERNEL);
+	if (!msg_in)
+		return -ENOMEM;
+
+	msg_out = kzalloc(msg_out_buf_size, GFP_KERNEL);
+	if (!msg_out) {
+		ret = -ENOMEM;
+		goto end;
+	}
+
+	if (copy_from_user(msg_in, msg_in_user_ptr, msg_in_size) != 0) {
+		ret = -EFAULT;
+		drm_err(&i915->drm, "Failed to copy_from_user for TEE message\n");
+		goto end;
+	}
+
+	mutex_lock(&i915->pxp_tee_comp_mutex);
+
+	ret = intel_pxp_tee_io_message(pxp,
+				       msg_in, msg_in_size,
+				       msg_out, msg_out_size_ptr,
+				       msg_out_buf_size);
+
+	mutex_unlock(&i915->pxp_tee_comp_mutex);
+
+	if (ret) {
+		drm_err(&i915->drm, "Failed to send/receive tee message\n");
+		goto end;
+	}
+
+	if (copy_to_user(msg_out_user_ptr, msg_out, *msg_out_size_ptr) != 0) {
+		ret = -EFAULT;
+		drm_err(&i915->drm, "Failed to copy_to_user for TEE message\n");
+		goto end;
+	}
+
+end:
+	kfree(msg_in);
+	kfree(msg_out);
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
index 757a54208a4d..d3129786758f 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
@@ -13,6 +13,11 @@ void intel_pxp_tee_component_fini(struct intel_pxp *pxp);
 
 int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp);
 
+int intel_pxp_tee_ioctl_io_message(struct intel_pxp *pxp,
+				   void __user *msg_in_user_ptr, u32 msg_in_size,
+				   void __user *msg_out_user_ptr, u32 *msg_out_size_ptr,
+				   u32 msg_out_buf_size);
+
 /* TEE command to create the arbitrary session */
 #define PXP_TEE_ARB_CMD_BIN {0x00040000, 0x0000001e, 0x00000000, 0x00000008, 0x00000002, 0x0000000f}
 #define PXP_TEE_ARB_CMD_DW_LEN (6)
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
