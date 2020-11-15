Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C552B31E8
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Nov 2020 03:02:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E6776E97F;
	Sun, 15 Nov 2020 02:02:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 112B96E96A
 for <Intel-gfx@lists.freedesktop.org>; Sun, 15 Nov 2020 02:02:18 +0000 (UTC)
IronPort-SDR: 2kuL47rWoFWKq76RkgbJa0Bj7IvikCymD7Ejone8hLaKquHdyAPUktZWdodkv0oZxvq8tqOTeh
 i5oPItON6G9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9805"; a="255321262"
X-IronPort-AV: E=Sophos;i="5.77,479,1596524400"; d="scan'208";a="255321262"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2020 18:02:16 -0800
IronPort-SDR: JSAvNKNi5JP7h6vwjwtGNbOlBDzX8mzj4XT+wFdJgjtdX4MOB3XcHXZ8DVAjOAdGkT60n18nzQ
 PZs0O2ef3yLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,479,1596524400"; d="scan'208";a="367120666"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Nov 2020 18:02:16 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sat, 14 Nov 2020 18:02:08 -0800
Message-Id: <20201115020216.17242-19-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201115020216.17242-1-sean.z.huang@intel.com>
References: <20201115020216.17242-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [PATCH v2 19/27] drm/i915/pxp: Enable ioctl action to
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

Enable the ioctl action to allow ring3 driver sends TEE commands
via ring0 PXP ioctl, instead of TEE iotcl. So we can centralize
those protection operations at ring0 PXP.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c     | 15 ++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h     | 18 +++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c | 65 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h |  5 ++
 4 files changed, 103 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 29d976b9b726..d0df35d99e37 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -7,6 +7,7 @@
 #include "intel_pxp.h"
 #include "intel_pxp_context.h"
 #include "intel_pxp_sm.h"
+#include "intel_pxp_tee.h"
 
 int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmfile)
 {
@@ -78,6 +79,20 @@ int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmf
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
+			drm_dbg(&i915->drm, "Failed to send TEE IO message\n");
+			ret = -EFAULT;
+		}
+		break;
+	}
 	case PXP_ACTION_SET_R3_CONTEXT:
 	{
 		ret = intel_pxp_set_r3ctx(i915, pxp_info.set_r3ctx);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 3d70b9bab79f..2c16ed0b5c0b 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -33,6 +33,7 @@ enum pxp_sm_session_req {
 enum pxp_ioctl_action {
 	PXP_ACTION_QUERY_PXP_TAG = 0,
 	PXP_ACTION_SET_SESSION_STATUS = 1,
+	PXP_ACTION_TEE_IO_MESSAGE = 4,
 	PXP_ACTION_SET_R3_CONTEXT = 5,
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
 		u32 set_r3ctx;
 	};
 } __packed;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 5bf79ca45cea..7e10b7ac584f 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -60,6 +60,71 @@ static int intel_pxp_tee_io_message(struct drm_i915_private *i915,
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
+	drm_dbg(&i915->drm, ">>> %s\n", __func__);
+
+	if (!msg_in_user_ptr || !msg_out_user_ptr || msg_out_buf_size == 0 ||
+	    msg_in_size == 0 || !msg_out_size_ptr) {
+		ret = -EINVAL;
+		drm_dbg(&i915->drm, "Failed to %s, invalid params\n", __func__);
+		goto end;
+	}
+
+	msg_in = kzalloc(msg_in_size, GFP_KERNEL);
+	if (!msg_in) {
+		ret = -ENOMEM;
+		drm_dbg(&i915->drm, "Failed to kzalloc\n");
+		goto end;
+	}
+
+	msg_out = kzalloc(msg_out_buf_size, GFP_KERNEL);
+	if (!msg_out) {
+		ret = -ENOMEM;
+		drm_dbg(&i915->drm, "Failed to kzalloc\n");
+		goto end;
+	}
+
+	if (copy_from_user(msg_in, msg_in_user_ptr, msg_in_size) != 0) {
+		ret = -EFAULT;
+		drm_dbg(&i915->drm, "Failed to copy_from_user for TEE message\n");
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
+		drm_dbg(&i915->drm, "Failed to send/receive tee message\n");
+		goto end;
+	}
+
+	if (copy_to_user(msg_out_user_ptr, msg_out, *msg_out_size_ptr) != 0) {
+		ret = -EFAULT;
+		drm_dbg(&i915->drm, "Failed to copy_to_user for TEE message\n");
+		goto end;
+	}
+
+end:
+	kfree(msg_in);
+	kfree(msg_out);
+	drm_dbg(&i915->drm, "<<< %s ret=[%d]\n", __func__, ret);
+	return ret;
+}
+
 /**
  * i915_pxp_tee_component_bind - bind funciton to pass the function pointers to pxp_tee
  * @i915_kdev: pointer to i915 kernel device
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
index 54d6e89a68a8..4df077c906ae 100644
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
