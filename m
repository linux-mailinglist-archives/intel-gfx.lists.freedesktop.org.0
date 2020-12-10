Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D00052D6A86
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 23:39:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A357E6EB80;
	Thu, 10 Dec 2020 22:39:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97CBE89D43
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 22:39:38 +0000 (UTC)
IronPort-SDR: kmw9VjdfXf6d4yr4JN0XsXv6n0YyC/8ZjivUtpq+CQfjz7lPSd2Sktjk/blxV8Wa/v0JZZp6Zc
 GfqQx2re6aFw==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="192676683"
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; d="scan'208";a="192676683"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 14:39:33 -0800
IronPort-SDR: NbAkd6zgbXTfWB1AUSZTD8AewgxSrYd7fAYI9FlqKdwGCcte1+OZdUpI8d8isq1KlQ1tlUnHT/
 XSBZNlhc0mjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; d="scan'208";a="544017041"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga005.fm.intel.com with ESMTP; 10 Dec 2020 14:39:33 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 10 Dec 2020 14:38:59 -0800
Message-Id: <20201210223859.23882-22-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201210223859.23882-1-sean.z.huang@intel.com>
References: <20201210223859.23882-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v6 21/21] drm/i915/pxp: Enable the PXP ioctl for
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
ioctl, so allow the userspace driver can establish, set, or
destory the protected session via this ioctl.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c      |  1 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c | 53 --------------------
 include/uapi/drm/i915_drm.h          | 72 ++++++++++++++++++++++++++++
 3 files changed, 73 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index e74201e81369..201550ffb353 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -1766,6 +1766,7 @@ static const struct drm_ioctl_desc i915_ioctls[] = {
 	DRM_IOCTL_DEF_DRV(I915_QUERY, i915_query_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_GEM_VM_CREATE, i915_gem_vm_create_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_GEM_VM_DESTROY, i915_gem_vm_destroy_ioctl, DRM_RENDER_ALLOW),
+	DRM_IOCTL_DEF_DRV(I915_PXP_OPS, i915_pxp_ops_ioctl, DRM_RENDER_ALLOW),
 };
 
 static const struct drm_driver driver = {
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 789990b3a5e3..0c490fccdc71 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -31,59 +31,6 @@ enum pxp_session_req {
 	PXP_REQ_SESSION_TERMINATE
 };
 
-/*
- * struct pxp_sm_query_pxp_tag - Params to query the PXP tag of specified
- * session id and whether the session is alive from PXP state machine.
- */
-struct pxp_sm_query_pxp_tag {
-	u32 session_is_alive;
-	u32 pxp_tag; /* in  - Session ID, out pxp tag */
-};
-
-/*
- * struct pxp_set_session_status_params - Params to reserved, set or destroy
- * the session from the PXP state machine.
- */
-struct pxp_set_session_status_params {
-	u32 pxp_tag; /* in [optional], out pxp tag */
-	u32 session_type; /* in, session type */
-	u32 session_mode; /* in, session mode */
-	u32 req_session_state; /* in, new session state */
-};
-
-/*
- * struct pxp_tee_io_message_params - Params to send/receive message to/from TEE.
- */
-struct pxp_tee_io_message_params {
-	u8 __user *msg_in; /* in - message input */
-	u32 msg_in_size; /* in - message input size */
-	u8 __user *msg_out; /* in - message output buffer */
-	u32 msg_out_size; /* out- message output size from TEE */
-	u32 msg_out_buf_size; /* in - message output buffer size */
-};
-
-/* struct pxp_info - Params for PXP operation. */
-struct pxp_info {
-	u32 action; /* in - specified action of this operation */
-	u32 sm_status; /* out - status output for this operation */
-
-	union {
-		/* in - action params to query PXP tag */
-		struct pxp_sm_query_pxp_tag query_pxp_tag;
-		/* in - action params to set the PXP session state */
-		struct pxp_set_session_status_params set_session_status;
-		/* in - action params to send TEE commands */
-		struct pxp_tee_io_message_params tee_io_message;
-	};
-} __attribute__((packed));
-
-struct drm_i915_pxp_ops {
-	/* in - user space pointer to struct pxp_info */
-	struct pxp_info __user *info_ptr;
-	/* in - memory size that info_ptr points to */
-	u32 info_size;
-};
-
 static void intel_pxp_write_irq_mask_reg(struct intel_gt *gt, u32 mask)
 {
 	lockdep_assert_held(&gt->irq_lock);
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index d6085a328b2c..17cf25bdc3c4 100644
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
@@ -1964,6 +1966,76 @@ struct drm_i915_gem_vm_control {
 	__u32 vm_id;
 };
 
+/*
+ * struct pxp_sm_query_pxp_tag - Params to query the PXP tag of specified
+ * session id and whether the session is alive from PXP state machine.
+ */
+struct pxp_sm_query_pxp_tag {
+	__u32 session_is_alive;
+	__u32 pxp_tag; /* in  - Session ID, out pxp tag */
+};
+
+/*
+ * struct pxp_set_session_status_params - Params to reserved, set or destroy
+ * the session from the PXP state machine.
+ */
+struct pxp_set_session_status_params {
+	__u32 pxp_tag; /* in [optional], for Arbitrator session, out pxp tag */
+	__u32 session_type; /* in, session type */
+	__u32 session_mode; /* in, session mode */
+	__u32 req_session_state; /* in, new session state */
+};
+
+/*
+ * struct pxp_tee_io_message_params - Params to send/receive message to/from TEE.
+ */
+struct pxp_tee_io_message_params {
+	__u8 __user *msg_in; /* in - message input */
+	__u32 msg_in_size; /* in - message input size */
+	__u8 __user *msg_out; /* in - message output buffer */
+	__u32 msg_out_size; /* out- message output size from TEE */
+	__u32 msg_out_buf_size; /* in - message output buffer size */
+};
+
+/*
+ * struct pxp_info - Params for PXP operation.
+ */
+struct pxp_info {
+	__u32 action; /* in - specified action of this operation */
+	__u32 sm_status; /* out - status output for this operation */
+
+	union {
+		/* in - action params to query PXP tag */
+		struct pxp_sm_query_pxp_tag query_pxp_tag;
+		/* in - action params to set the PXP session state */
+		struct pxp_set_session_status_params set_session_status;
+		/* in - action params to send TEE commands */
+		struct pxp_tee_io_message_params tee_io_message;
+
+		/* in - action params to set user space context */
+		__u32 set_user_ctx;
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
