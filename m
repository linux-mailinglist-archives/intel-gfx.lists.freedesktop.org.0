Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 566D22FB359
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 08:43:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86CE16E831;
	Tue, 19 Jan 2021 07:43:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 732D66E830
 for <Intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 07:43:25 +0000 (UTC)
IronPort-SDR: 03e27cZxCeiIpvhZYI6FkL2BbuqSpJG5E7mbZW+18pLdngRxEL2p9Q5QX/KxZFFVhq7DLCJB7Q
 VD05eW30OK3g==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="197592813"
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="197592813"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 23:43:23 -0800
IronPort-SDR: 7fVTv2Q8ixusfos+i48ITJrGhVDSxSGvbu5OhtPWb+YoGzRxs/hbfLdFT9rzlTb9n/kFxuWzdn
 BaINnd4aW51g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="466592746"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga001.fm.intel.com with ESMTP; 18 Jan 2021 23:43:23 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 18 Jan 2021 23:43:16 -0800
Message-Id: <20210119074320.28768-10-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210119074320.28768-1-sean.z.huang@intel.com>
References: <20210119074320.28768-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v23 09/13] drm/i915/pxp: Expose session state for
 display protection flip
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
Cc: kumar.gaurav@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Implement the intel_pxp_gem_object_status() to allow i915 display
querying the current PXP session state. In the design, display
should not perform protection flip on the protected buffers if
there is no PXP session alive. And Implement the funciton to set
the protected flag for gem context.

rev23:
    - Require user space to explicitly set recoverable flag to
      false for protected context creation.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_context_types.h |  2 ++
 drivers/gpu/drm/i915/pxp/intel_pxp.c          | 34 +++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h          | 24 +++++++++++++
 include/uapi/drm/i915_drm.h                   |  9 +++++
 4 files changed, 69 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index 1449f54924e0..7a9872d35fbb 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -134,6 +134,8 @@ struct i915_gem_context {
 #define UCONTEXT_BANNABLE		2
 #define UCONTEXT_RECOVERABLE		3
 #define UCONTEXT_PERSISTENCE		4
+#define UCONTEXT_PROTECTED		5
+#define UCONTEXT_UNRECOVERABLE		6
 
 	/**
 	 * @flags: small set of booleans
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index e6dd57ec73f5..f2ac5996700d 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -157,3 +157,37 @@ void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
 	pxp->current_events |= events;
 	schedule_work(&pxp->irq_work);
 }
+
+bool intel_pxp_gem_object_status(struct drm_i915_private *i915)
+{
+	if (i915->gt.pxp.ctx.inited &&
+	    i915->gt.pxp.ctx.flag_display_hm_surface_keys)
+		return true;
+	else
+		return false;
+}
+
+int intel_pxp_gem_context_create_param(struct i915_gem_context *ctx,
+				       struct drm_i915_gem_context_param *args)
+{
+	if (!ctx || !args)
+		return -EINVAL;
+
+	if (args->param == I915_CONTEXT_PARAM_PROTECTED_CONTENT) {
+		if (!intel_pxp_arb_session_is_in_play(&ctx->i915->gt.pxp))
+			return -EINVAL;
+
+		if (args->value)
+			set_bit(UCONTEXT_PROTECTED, &ctx->user_flags);
+	} else if (args->param == I915_CONTEXT_PARAM_RECOVERABLE)
+		if (!args->value)
+			set_bit(UCONTEXT_UNRECOVERABLE, &ctx->user_flags);
+
+	return 0;
+}
+
+bool intel_pxp_gem_context_protected_param_valid(struct i915_gem_context *ctx)
+{
+	return (test_bit(UCONTEXT_PROTECTED, &ctx->user_flags) &&
+		test_bit(UCONTEXT_UNRECOVERABLE, &ctx->user_flags));
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 420da2790624..ab461cc1839a 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -12,6 +12,10 @@
 #define PXP_IRQ_VECTOR_DISPLAY_APP_TERM_PER_FW_REQ BIT(2)
 #define PXP_IRQ_VECTOR_PXP_DISP_STATE_RESET_COMPLETE BIT(3)
 
+struct drm_i915_private;
+struct i915_gem_context;
+struct drm_i915_gem_context_param;
+
 #ifdef CONFIG_DRM_I915_PXP
 void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir);
 int i915_pxp_teardown_required_callback(struct intel_pxp *pxp);
@@ -19,6 +23,10 @@ int i915_pxp_global_terminate_complete_callback(struct intel_pxp *pxp);
 
 void intel_pxp_init(struct intel_pxp *pxp);
 void intel_pxp_fini(struct intel_pxp *pxp);
+bool intel_pxp_gem_object_status(struct drm_i915_private *i915);
+int intel_pxp_gem_context_create_param(struct i915_gem_context *ctx,
+				       struct drm_i915_gem_context_param *args);
+bool intel_pxp_gem_context_protected_param_valid(struct i915_gem_context *ctx);
 #else
 static inline void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
 {
@@ -41,6 +49,22 @@ static inline void intel_pxp_init(struct intel_pxp *pxp)
 static inline void intel_pxp_fini(struct intel_pxp *pxp)
 {
 }
+
+static inline bool intel_pxp_gem_object_status(struct drm_i915_private *i915)
+{
+	return false;
+}
+
+static inline int intel_pxp_gem_context_create_param(struct i915_gem_context *ctx,
+						     struct drm_i915_gem_context_param *args)
+{
+	return 0;
+}
+
+static inline bool intel_pxp_gem_context_protected_param_valid(struct i915_gem_context *ctx)
+{
+	return false;
+}
 #endif
 
 #endif /* __INTEL_PXP_H__ */
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 1987e2ea79a3..00fd1c2bcbb3 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1694,6 +1694,15 @@ struct drm_i915_gem_context_param {
  * Default is 16 KiB.
  */
 #define I915_CONTEXT_PARAM_RINGSIZE	0xc
+
+/*
+ * I915_CONTEXT_PARAM_PROTECTED_CONTENT:
+ *
+ * If set to true (1) PAVP content protection is enabled.
+ * When enabled, the context is marked unrecoverable and may
+ * become invalid due to PAVP teardown event or other error.
+ */
+#define I915_CONTEXT_PARAM_PROTECTED_CONTENT    0xd
 /* Must be kept compact -- no holes and well documented */
 
 	__u64 value;
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
