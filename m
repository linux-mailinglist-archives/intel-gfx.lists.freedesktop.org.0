Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 116BC2BBB08
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Nov 2020 01:35:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F87C6E8D0;
	Sat, 21 Nov 2020 00:35:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D9C36E8D0
 for <Intel-gfx@lists.freedesktop.org>; Sat, 21 Nov 2020 00:35:42 +0000 (UTC)
IronPort-SDR: PSR8L7i/N/7iMWAaAZJ/oNgLpT8+IBReXcDy4znmr7Qx+c6eqWgsB21j1yRNxIBQ0CahhBb9Oy
 Qo8OPpQw0+2A==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="235707199"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="235707199"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 16:35:41 -0800
IronPort-SDR: Q0uRsaN0nLutM4CoFJGu1rVl5r/qQmgvW+UTF56RwUvKJ4mCRcR9KNSLYnw6E9M/QjB5yD++rY
 4bFQu9rQdeKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="369352674"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Nov 2020 16:35:40 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 20 Nov 2020 16:35:19 -0800
Message-Id: <20201121003540.24980-6-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201121003540.24980-1-sean.z.huang@intel.com>
References: <20201121003540.24980-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v2 05/26] drm/i915/pxp: Implement ioctl action to
 set the user space context
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

Implement one ioctl action to allow user space driver to set its
user space context, so PXP can track the context id through this
user space context list.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c         | 56 ++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h         | 21 ++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_context.c | 24 +++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_context.h |  3 ++
 4 files changed, 104 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index f6b7297ee045..34f6db3f8bd6 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -8,6 +8,60 @@
 #include "intel_pxp_context.h"
 #include "intel_pxp_sm.h"
 
+int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmfile)
+{
+	int ret;
+	struct pxp_info pxp_info = {0};
+	struct drm_i915_pxp_ops *pxp_ops = data;
+	struct drm_i915_private *i915 = to_i915(dev);
+
+	if (!i915 || !drmfile || !pxp_ops || pxp_ops->info_size != sizeof(pxp_info))
+		return -EINVAL;
+
+	if (copy_from_user(&pxp_info, pxp_ops->info_ptr, sizeof(pxp_info)) != 0)
+		return -EFAULT;
+
+	mutex_lock(&i915->pxp.ctx->ctx_mutex);
+
+	if (i915->pxp.ctx->global_state_in_suspend) {
+		drm_err(&i915->drm, "Return failure due to state in suspend\n");
+		pxp_info.sm_status = PXP_SM_STATUS_SESSION_NOT_AVAILABLE;
+		ret = 0;
+		goto end;
+	}
+
+	if (i915->pxp.ctx->global_state_attacked) {
+		drm_err(&i915->drm, "Retry required due to state attacked\n");
+		pxp_info.sm_status = PXP_SM_STATUS_RETRY_REQUIRED;
+		ret = 0;
+		goto end;
+	}
+
+	switch (pxp_info.action) {
+	case PXP_ACTION_SET_USER_CONTEXT:
+	{
+		ret = intel_pxp_set_user_ctx(i915, pxp_info.set_user_ctx);
+		break;
+	}
+	default:
+		drm_err(&i915->drm, "Failed to %s due to bad params\n", __func__);
+		ret = -EINVAL;
+		goto end;
+	}
+
+end:
+	mutex_unlock(&i915->pxp.ctx->ctx_mutex);
+
+	if (ret == 0)
+		if (copy_to_user(pxp_ops->info_ptr, &pxp_info, sizeof(pxp_info)) != 0)
+			ret = -EFAULT;
+
+	if (ret)
+		dev_err(&dev->pdev->dev, "pid=%d, ret = %d\n", task_pid_nr(current), ret);
+
+	return ret;
+}
+
 static void intel_pxp_write_irq_mask_reg(struct drm_i915_private *i915, u32 mask)
 {
 	WARN_ON(INTEL_GEN(i915) < 11);
@@ -37,6 +91,8 @@ static int intel_pxp_teardown_required_callback(struct drm_i915_private *i915)
 	i915->pxp.ctx->global_state_attacked = true;
 	i915->pxp.ctx->flag_display_hm_surface_keys = false;
 
+	intel_pxp_destroy_user_ctx_list(i915);
+
 	mutex_unlock(&i915->pxp.ctx->ctx_mutex);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 9db4bf6fd3f8..a1e83bbeafb7 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -24,6 +24,26 @@ enum pxp_sm_session_req {
 	PXP_SM_REQ_SESSION_TERMINATE
 };
 
+#define PXP_ACTION_SET_USER_CONTEXT 5
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
+	u32 set_user_ctx;
+} __attribute__((packed));
+
+struct drm_i915_pxp_ops {
+	struct pxp_info __user *info_ptr;
+	__u32 info_size;
+};
+
 struct pxp_context;
 
 struct intel_pxp {
@@ -37,6 +57,7 @@ struct intel_pxp {
 struct intel_gt;
 struct drm_i915_private;
 
+int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmfile);
 void intel_pxp_irq_handler(struct intel_gt *gt, u16 iir);
 int i915_pxp_teardown_required_callback(struct drm_i915_private *i915);
 int i915_pxp_global_terminate_complete_callback(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.c b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
index c340c375daac..7fc99567b3ac 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
@@ -43,3 +43,27 @@ void intel_pxp_destroy_ctx(struct drm_i915_private *i915)
 	kfree(i915->pxp.ctx);
 	i915->pxp.ctx = NULL;
 }
+
+int intel_pxp_set_user_ctx(struct drm_i915_private *i915, u32 user_ctx_in)
+{
+	struct pxp_user_ctx *user_ctx;
+
+	user_ctx = kzalloc(sizeof(*user_ctx), GFP_KERNEL);
+	if (!user_ctx)
+		return -ENOMEM;
+
+	user_ctx->user_ctx = user_ctx_in;
+
+	list_add(&user_ctx->listhead, &i915->pxp.ctx->user_ctx_list);
+	return 0;
+}
+
+void intel_pxp_destroy_user_ctx_list(struct drm_i915_private *i915)
+{
+	struct pxp_user_ctx *user_ctx, *n;
+
+	list_for_each_entry_safe(user_ctx, n, &i915->pxp.ctx->user_ctx_list, listhead) {
+		list_del(&user_ctx->listhead);
+		kfree(user_ctx);
+	}
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
index e0794dfb548d..c8b2d89e6548 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
@@ -41,4 +41,7 @@ struct pxp_user_ctx {
 struct pxp_context *intel_pxp_create_ctx(struct drm_i915_private *i915);
 void intel_pxp_destroy_ctx(struct drm_i915_private *i915);
 
+int intel_pxp_set_user_ctx(struct drm_i915_private *i915, u32 user_ctx);
+void intel_pxp_destroy_user_ctx_list(struct drm_i915_private *i915);
+
 #endif /* __INTEL_PXP_CONTEXT_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
