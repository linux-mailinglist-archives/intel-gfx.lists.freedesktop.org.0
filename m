Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B982B2A83
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Nov 2020 02:45:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CAD56E8BC;
	Sat, 14 Nov 2020 01:45:41 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D904E6E885
 for <Intel-gfx@lists.freedesktop.org>; Sat, 14 Nov 2020 01:45:40 +0000 (UTC)
IronPort-SDR: iH3Yd2UmqzRgwv+dO8YrWiIC4Fs2z54TaCziZUxcgiizqq+DD5TfEn2aS42vk/eZHfM1aoUAJS
 5bJUReervdxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="158332215"
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="158332215"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 17:45:39 -0800
IronPort-SDR: mc6jwrAMS5/uAwR1aAJ9QMwLzvNLKSfiZjAwcQl/Mcc6N4FzVCTWxMBpHZ/mose/d2SpkWcQaU
 njJtXFaNRPjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="361524761"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga002.fm.intel.com with ESMTP; 13 Nov 2020 17:45:38 -0800
From: Sean Z Huang <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 13 Nov 2020 17:45:15 -0800
Message-Id: <20201114014537.25495-5-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201114014537.25495-1-sean.z.huang@intel.com>
References: <20201114014537.25495-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [PATCH 05/27] drm/i915/pxp: Enable ioctl action to set
 the ring3 context
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

Enable one ioctl action to allow ring3 driver to set its ring3
context, so ring0 PXP can track the context id through this ring3
context list.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c              |  1 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c         | 66 ++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h         | 16 +++++
 drivers/gpu/drm/i915/pxp/intel_pxp_context.c | 34 ++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_context.h |  3 +
 include/uapi/drm/i915_drm.h                  |  2 +
 6 files changed, 122 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index c8b9c42fcbd6..43ea85b5f14b 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -1761,6 +1761,7 @@ static const struct drm_ioctl_desc i915_ioctls[] = {
 	DRM_IOCTL_DEF_DRV(I915_QUERY, i915_query_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_GEM_VM_CREATE, i915_gem_vm_create_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_GEM_VM_DESTROY, i915_gem_vm_destroy_ioctl, DRM_RENDER_ALLOW),
+	DRM_IOCTL_DEF_DRV(I915_PXP_OPS, i915_pxp_ops_ioctl, DRM_RENDER_ALLOW),
 };
 
 static const struct drm_driver driver = {
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 3a24c2b13b14..a83fa7cd749f 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -8,6 +8,70 @@
 #include "intel_pxp_context.h"
 #include "intel_pxp_sm.h"
 
+int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmfile)
+{
+	int ret;
+	struct pxp_info pxp_info = {0};
+	struct drm_i915_pxp_ops *pxp_ops = data;
+	struct drm_i915_private *i915 = to_i915(dev);
+
+	drm_dbg(&i915->drm, ">>> %s\n", __func__);
+
+	if (!i915 || !drmfile || !pxp_ops || pxp_ops->pxp_info_size != sizeof(pxp_info)) {
+		drm_dbg(&i915->drm, "Failed to %s, invalid params\n", __func__);
+		ret = -EINVAL;
+		goto end;
+	}
+
+	if (copy_from_user(&pxp_info, (void __user *)pxp_ops->pxp_info_ptr, sizeof(pxp_info)) != 0) {
+		ret = -EFAULT;
+		goto end;
+	}
+
+	drm_dbg(&i915->drm, "i915 pxp ioctl call with action=[%d]\n", pxp_info.action);
+
+	mutex_lock(&i915->pxp.r0ctx->ctx_mutex);
+
+	if (i915->pxp.r0ctx->global_state_in_suspend) {
+		drm_dbg(&i915->drm, "Return failure due to state in suspend\n");
+		pxp_info.sm_status = PXP_SM_STATUS_SESSION_NOT_AVAILABLE;
+		ret = 0;
+		goto end;
+	}
+
+	if (i915->pxp.r0ctx->global_state_attacked) {
+		drm_dbg(&i915->drm, "Retry required due to state attacked\n");
+		pxp_info.sm_status = PXP_SM_STATUS_RETRY_REQUIRED;
+		ret = 0;
+		goto end;
+	}
+
+	switch (pxp_info.action) {
+	case PXP_ACTION_SET_R3_CONTEXT:
+	{
+		ret = intel_pxp_set_r3ctx(i915, pxp_info.set_r3ctx);
+		break;
+	}
+	default:
+		drm_dbg(&i915->drm, "Failed to %s due to bad params\n", __func__);
+		ret = -EINVAL;
+		goto end;
+	}
+
+end:
+	mutex_unlock(&i915->pxp.r0ctx->ctx_mutex);
+
+	if (ret == 0)
+		if (copy_to_user((void __user *)pxp_ops->pxp_info_ptr, &pxp_info, sizeof(pxp_info)) != 0)
+			ret = -EFAULT;
+
+	if (ret)
+		dev_err(&dev->pdev->dev, "pid=%d, ret = %d\n", task_pid_nr(current), ret);
+
+	drm_dbg(&i915->drm, "<<< %s\n", __func__);
+	return ret;
+}
+
 static void intel_pxp_write_irq_mask_reg(struct drm_i915_private *i915, u32 mask)
 {
 	WARN_ON(INTEL_GEN(i915) < 11);
@@ -39,6 +103,8 @@ static int intel_pxp_teardown_required_callback(struct drm_i915_private *i915)
 	i915->pxp.r0ctx->global_state_attacked = true;
 	i915->pxp.r0ctx->flag_display_hm_surface_keys = false;
 
+	intel_pxp_destroy_r3ctx_list(i915);
+
 	mutex_unlock(&i915->pxp.r0ctx->ctx_mutex);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 4dec35bb834d..21a6964fc64e 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -24,6 +24,21 @@ enum pxp_sm_session_req {
 	PXP_SM_REQ_SESSION_TERMINATE
 };
 
+#define PXP_ACTION_SET_R3_CONTEXT 5
+
+enum pxp_sm_status {
+	PXP_SM_STATUS_SUCCESS,
+	PXP_SM_STATUS_RETRY_REQUIRED,
+	PXP_SM_STATUS_SESSION_NOT_AVAILABLE,
+	PXP_SM_STATUS_ERROR_UNKNOWN
+};
+
+struct pxp_info {
+	u32 action;
+	u32 sm_status;
+	u32 set_r3ctx;
+} __packed;
+
 struct pxp_context;
 
 struct intel_pxp {
@@ -37,6 +52,7 @@ struct intel_pxp {
 struct intel_gt;
 struct drm_i915_private;
 
+int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmfile);
 void intel_pxp_irq_handler(struct intel_gt *gt, u16 iir);
 int i915_pxp_teardown_required_callback(struct drm_i915_private *i915);
 int i915_pxp_global_terminate_complete_callback(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.c b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
index 692370e758de..b6339720614e 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
@@ -49,3 +49,37 @@ void intel_pxp_destroy_r0ctx(struct drm_i915_private *i915)
 	kfree(i915->pxp.r0ctx);
 	i915->pxp.r0ctx = NULL;
 }
+
+int intel_pxp_set_r3ctx(struct drm_i915_private *i915, u32 r3ctx_in)
+{
+	struct pxp_r3ctx *r3ctx;
+
+	drm_dbg(&i915->drm, ">>> %s u3ctx_in=[%d]\n", __func__, r3ctx_in);
+
+	r3ctx = kzalloc(sizeof(*r3ctx), GFP_KERNEL);
+	if (!r3ctx) {
+		drm_dbg(&i915->drm, "Failed to kzalloc()\n");
+		return -ENOMEM;
+	}
+
+	r3ctx->r3ctx = r3ctx_in;
+
+	list_add(&r3ctx->listhead, &i915->pxp.r0ctx->r3ctx_list);
+	return 0;
+}
+
+void intel_pxp_destroy_r3ctx_list(struct drm_i915_private *i915)
+{
+	struct pxp_r3ctx *r3ctx, *n;
+
+	drm_dbg(&i915->drm, ">>> %s\n", __func__);
+
+	list_for_each_entry_safe(r3ctx, n, &i915->pxp.r0ctx->r3ctx_list, listhead) {
+		drm_dbg(&i915->drm, "Destroy r3ctx_list u3ctx->r3ctx=[%d]\n", r3ctx->r3ctx);
+
+		list_del(&r3ctx->listhead);
+		kfree(r3ctx);
+	}
+
+	drm_dbg(&i915->drm, "<<< %s\n", __func__);
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
index 5de4e68b9dce..e4a0388a2f57 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
@@ -41,4 +41,7 @@ struct pxp_r3ctx {
 struct pxp_context *intel_pxp_create_r0ctx(struct drm_i915_private *i915);
 void intel_pxp_destroy_r0ctx(struct drm_i915_private *i915);
 
+int intel_pxp_set_r3ctx(struct drm_i915_private *i915, u32 r3ctx);
+void intel_pxp_destroy_r3ctx_list(struct drm_i915_private *i915);
+
 #endif /* __INTEL_PXP_CONTEXT_H__ */
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index dc101264176b..180f97fd91dc 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -359,6 +359,7 @@ typedef struct _drm_i915_sarea {
 #define DRM_I915_QUERY			0x39
 #define DRM_I915_GEM_VM_CREATE		0x3a
 #define DRM_I915_GEM_VM_DESTROY		0x3b
+#define DRM_I915_PXP_OPS		0x3c
 /* Must be kept compact -- no holes */
 
 #define DRM_IOCTL_I915_INIT		DRM_IOW( DRM_COMMAND_BASE + DRM_I915_INIT, drm_i915_init_t)
@@ -422,6 +423,7 @@ typedef struct _drm_i915_sarea {
 #define DRM_IOCTL_I915_QUERY			DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_QUERY, struct drm_i915_query)
 #define DRM_IOCTL_I915_GEM_VM_CREATE	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_CREATE, struct drm_i915_gem_vm_control)
 #define DRM_IOCTL_I915_GEM_VM_DESTROY	DRM_IOW (DRM_COMMAND_BASE + DRM_I915_GEM_VM_DESTROY, struct drm_i915_gem_vm_control)
+#define DRM_IOCTL_I915_PXP_OPS		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_PXP_OPS, struct drm_i915_pxp_ops)
 
 /* Allow drivers to submit batchbuffers directly to hardware, relying
  * on the security mechanisms provided by hardware.
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
