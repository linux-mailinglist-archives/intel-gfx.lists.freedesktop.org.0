Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A812CB0EA
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 00:35:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 940F26E974;
	Tue,  1 Dec 2020 23:34:59 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6411D6E97D
 for <Intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 23:34:50 +0000 (UTC)
IronPort-SDR: g7DAX+9G2WB73vYsCLtEOidzRjV7SBACkzMQFuToA6LKMC0G8QJkhjk9goO4YtR1Q/B2kRacsf
 f4+qzIe43qmQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="173021541"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="173021541"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 15:34:49 -0800
IronPort-SDR: qK0bC7rt3KVdscZVT+uzobeyRghoCRQtoa1p/C/lTzPW7lDT7MFIWmGi2s/gemo9nbywAob2TU
 2hoHDME3n4Kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="537745428"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga006.fm.intel.com with ESMTP; 01 Dec 2020 15:34:46 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 15:34:11 -0800
Message-Id: <20201201233411.21858-27-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201201233411.21858-1-sean.z.huang@intel.com>
References: <20201201233411.21858-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v3 26/26] drm/i915/pxp: Enable the PXP ioctl for
 protected session
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

In the previous commits, we have implemented the PXP ioctl
functions. Now we enable those handlers and expose them as PXP
ioctl, so allow the user space driver can establish, set, or
destory the protected session via this ioctl.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c      |  1 +
 drivers/gpu/drm/i915/pxp/intel_pxp.h | 48 ------------------
 include/uapi/drm/i915_drm.h          | 75 ++++++++++++++++++++++++++++
 3 files changed, 76 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index e513fa359fe2..a2b5b6f2723f 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -1772,6 +1772,7 @@ static const struct drm_ioctl_desc i915_ioctls[] = {
 	DRM_IOCTL_DEF_DRV(I915_QUERY, i915_query_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_GEM_VM_CREATE, i915_gem_vm_create_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_GEM_VM_DESTROY, i915_gem_vm_destroy_ioctl, DRM_RENDER_ALLOW),
+	DRM_IOCTL_DEF_DRV(I915_PXP_OPS, i915_pxp_ops_ioctl, DRM_RENDER_ALLOW),
 };
 
 static const struct drm_driver driver = {
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 7556ad5c7904..cda8dab985e0 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -44,54 +44,6 @@ enum pxp_sm_status {
 	PXP_SM_STATUS_ERROR_UNKNOWN
 };
 
-struct pxp_sm_query_pxp_tag {
-	u32 session_is_alive;
-	u32 pxp_tag; /* in  - Session ID, out pxp tag */
-};
-
-struct pxp_sm_set_session_status_params {
-	/** @pxp_tag: in [optional], for Arbitrator session, out pxp tag */
-	u32 pxp_tag;
-	/** @session_type: in, session type */
-	u32 session_type;
-	/** @session_mode: in, session mode */
-	u32 session_mode;
-	/** @req_session_state: in, new session state */
-	u32 req_session_state;
-};
-
-/**
- * struct pxp_tee_io_message_params - Params to send/receive message to/from TEE.
- */
-struct pxp_tee_io_message_params {
-	/** @msg_in: in - message input from UMD */
-	u8 __user *msg_in;
-	/** @msg_in_size: in - message input size from UMD */
-	u32 msg_in_size;
-	/** @msg_out: in - message output buffer from UMD */
-	u8 __user *msg_out;
-	/** @msg_out_size: out- message output size from TEE */
-	u32 msg_out_size;
-	/** @msg_out_buf_size: in - message output buffer size from UMD */
-	u32 msg_out_buf_size;
-};
-
-struct pxp_info {
-	u32 action;
-	u32 sm_status;
-	union {
-		struct pxp_sm_query_pxp_tag             query_pxp_tag;
-		struct pxp_sm_set_session_status_params set_session_status;
-		struct pxp_tee_io_message_params        tee_io_message;
-		u32 set_user_ctx;
-	};
-} __attribute__((packed));
-
-struct drm_i915_pxp_ops {
-	struct pxp_info __user *info_ptr;
-	__u32 info_size;
-};
-
 struct pxp_context;
 
 struct intel_pxp {
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index fab00bfbbdee..83044309708d 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -359,6 +359,7 @@ typedef struct _drm_i915_sarea {
 #define DRM_I915_QUERY			0x39
 #define DRM_I915_GEM_VM_CREATE		0x3a
 #define DRM_I915_GEM_VM_DESTROY		0x3b
+#define DRM_I915_PXP_OPS		0x3c
 /* Must be kept compact -- no holes */
 
 #define DRM_IOCTL_I915_INIT		DRM_IOW( DRM_COMMAND_BASE + DRM_I915_INIT, drm_i915_init_t)
@@ -423,6 +424,7 @@ typedef struct _drm_i915_sarea {
 #define DRM_IOCTL_I915_QUERY			DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_QUERY, struct drm_i915_query)
 #define DRM_IOCTL_I915_GEM_VM_CREATE	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_CREATE, struct drm_i915_gem_vm_control)
 #define DRM_IOCTL_I915_GEM_VM_DESTROY	DRM_IOW (DRM_COMMAND_BASE + DRM_I915_GEM_VM_DESTROY, struct drm_i915_gem_vm_control)
+#define DRM_IOCTL_I915_PXP_OPS		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_PXP_OPS, struct drm_i915_pxp_ops)
 
 /* Allow drivers to submit batchbuffers directly to hardware, relying
  * on the security mechanisms provided by hardware.
@@ -1964,6 +1966,79 @@ struct drm_i915_gem_vm_control {
 	__u32 vm_id;
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
+/*
+ * struct pxp_sm_set_session_status_params - Params to reserved, set or destroy
+ * the session from the PXP state machine.
+ */
+struct pxp_sm_set_session_status_params {
+	u32 pxp_tag; /* in [optional], for Arbitrator session, out pxp tag */
+	u32 session_type; /* in, session type */
+	u32 session_mode; /* in, session mode */
+	u32 req_session_state; /* in, new session state */
+};
+
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
+/*
+ * struct pxp_info - Params for PXP operation.
+ */
+struct pxp_info {
+	u32 action; /* in - specified action of this operation */
+
+	u32 sm_status; /* out - status output for this operation */
+
+	union {
+		/* in - action params to query PXP tag */
+		struct pxp_sm_query_pxp_tag query_pxp_tag;
+
+		/* in - action params to set the PXP session state */
+		struct pxp_sm_set_session_status_params set_session_status;
+
+		/* in - action params to send TEE commands */
+		struct pxp_tee_io_message_params tee_io_message;
+
+		/* in - action params to set user space context */
+		u32 set_user_ctx;
+	};
+} __attribute__((packed));
+
+/*
+ * DRM_I915_PXP_OPS -
+ *
+ * PXP is an i915 componment, that helps user space to establish the hardware
+ * protected session and manage the status of each alive software session,
+ * as well as the life cycle of each session.
+ *
+ * This ioctl is to allow user space driver to create, set, and destroy each
+ * session. It also provides the communication chanel to TEE (Trusted
+ * Execution Environment) for the protected hardware session creation.
+ */
+struct drm_i915_pxp_ops {
+	/* in - user space pointer to struct pxp_info */
+	struct pxp_info __user *info_ptr;
+
+	/* in - memory size that info_ptr points to */
+	__u32 info_size;
+};
+
 struct drm_i915_reg_read {
 	/*
 	 * Register offset.
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
