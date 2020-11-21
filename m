Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CA52BBB1C
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Nov 2020 01:36:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 664356E969;
	Sat, 21 Nov 2020 00:35:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E9256E94A
 for <Intel-gfx@lists.freedesktop.org>; Sat, 21 Nov 2020 00:35:43 +0000 (UTC)
IronPort-SDR: xY487R7Hl9vwThJhzOnRY2GkWR8gDqojj+nw/CKpnUXpzORT+M3VJF7GtvVWmmWpu9kCJganSv
 eHa0nCV/uS+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="189670526"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="189670526"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 16:35:41 -0800
IronPort-SDR: hM4iT7PRtkd6kibf4ZpjlC7ctqITooVjGoXyl63c1Czid7tGsGxg2bjeUuSIpLUY6soXPJKbzl
 Tt5beihXqifA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="369352691"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Nov 2020 16:35:40 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 20 Nov 2020 16:35:32 -0800
Message-Id: <20201121003540.24980-19-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201121003540.24980-1-sean.z.huang@intel.com>
References: <20201121003540.24980-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v2 18/26] drm/i915/pxp: Implement ioctl action to
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

Implement the ioctl action to allow user space driver sends TEE
commands via PXP ioctl, instead of TEE iotcl. So we can
centralize those protection operations at PXP.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c     | 14 ++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h     | 18 ++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c | 55 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h |  5 +++
 4 files changed, 92 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 441e57d6c58f..bf95c63e52ff 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -77,6 +77,20 @@ int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmf
 		ret = pxp_sm_ioctl_query_pxp_tag(i915, &params->session_is_alive, &params->pxp_tag);
 		break;
 	}
+	case PXP_ACTION_TEE_IO_MESSAGE:
+	{
+		struct pxp_tee_io_message_params *params = &pxp_info.tee_io_message;
+
+		ret = pxp_tee_ioctl_io_message(i915,
+					       params->msg_in, params->msg_in_size,
+					       params->msg_out, &params->msg_out_size,
+					       params->msg_out_buf_size);
+		if (ret) {
+			drm_err(&i915->drm, "Failed to send TEE IO message\n");
+			ret = -EFAULT;
+		}
+		break;
+	}
 	case PXP_ACTION_SET_USER_CONTEXT:
 	{
 		ret = intel_pxp_set_user_ctx(i915, pxp_info.set_user_ctx);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index a3a0cf1f12e9..f24e6109eae6 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -33,6 +33,7 @@ enum pxp_sm_session_req {
 enum pxp_ioctl_action {
 	PXP_ACTION_QUERY_PXP_TAG = 0,
 	PXP_ACTION_SET_SESSION_STATUS = 1,
+	PXP_ACTION_TEE_IO_MESSAGE = 4,
 	PXP_ACTION_SET_USER_CONTEXT = 5,
 };
 
@@ -59,12 +60,29 @@ struct pxp_sm_set_session_status_params {
 	u32 req_session_state;
 };
 
+/**
+ * struct pxp_tee_io_message_params - Params to send/receive message to/from TEE.
+ */
+struct pxp_tee_io_message_params {
+	/** @msg_in: in - message input from UMD */
+	u8 __user *msg_in;
+	/** @msg_in_size: in - message input size from UMD */
+	u32 msg_in_size;
+	/** @msg_out: in - message output buffer from UMD */
+	u8 __user *msg_out;
+	/** @msg_out_size: out- message output size from TEE */
+	u32 msg_out_size;
+	/** @msg_out_buf_size: in - message output buffer size from UMD */
+	u32 msg_out_buf_size;
+};
+
 struct pxp_info {
 	u32 action;
 	u32 sm_status;
 	union {
 		struct pxp_sm_query_pxp_tag             query_pxp_tag;
 		struct pxp_sm_set_session_status_params set_session_status;
+		struct pxp_tee_io_message_params        tee_io_message;
 		u32 set_user_ctx;
 	};
 } __attribute__((packed));
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index fa617546bdd4..2a28478b092d 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -54,6 +54,61 @@ static int intel_pxp_tee_io_message(struct drm_i915_private *i915,
 	return ret;
 }
 
+int pxp_tee_ioctl_io_message(struct drm_i915_private *i915,
+			     void __user *msg_in_user_ptr, u32 msg_in_size,
+			     void __user *msg_out_user_ptr, u32 *msg_out_size_ptr,
+			     u32 msg_out_buf_size)
+{
+	int ret;
+	void *msg_in = NULL;
+	void *msg_out = NULL;
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
+	ret = intel_pxp_tee_io_message(i915,
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
+
 /**
  * i915_pxp_tee_component_bind - bind funciton to pass the function pointers to pxp_tee
  * @i915_kdev: pointer to i915 kernel device
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
index 0d0fbd0ed018..8b1581c2f50f 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
@@ -11,4 +11,9 @@
 void intel_pxp_tee_component_init(struct drm_i915_private *i915);
 void intel_pxp_tee_component_fini(struct drm_i915_private *i915);
 
+int pxp_tee_ioctl_io_message(struct drm_i915_private *i915,
+			     void __user *msg_in_user_ptr, u32 msg_in_size,
+			     void __user *msg_out_user_ptr, u32 *msg_out_size_ptr,
+			     u32 msg_out_buf_size);
+
 #endif /* __INTEL_PXP_TEE_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
