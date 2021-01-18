Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 208482F99BC
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 07:07:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E36E6E09C;
	Mon, 18 Jan 2021 06:07:35 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBD9489F75
 for <Intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 06:07:33 +0000 (UTC)
IronPort-SDR: rkez9QqcaF8bYyr/+lAkuo5Wq2QZegOOhDj3yesAJiRKPg1X1UQz29RZhsqYu2tdq9wfRxvaTF
 s521ExGnX27w==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="197455400"
X-IronPort-AV: E=Sophos;i="5.79,355,1602572400"; d="scan'208";a="197455400"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2021 22:07:32 -0800
IronPort-SDR: MVtTe9nAuWl22uGIEPWmEmhq1ZU23WxMfBV4HgeTc6wScF1mF+Q7p9+mQmRwM7BntXUzlJW2PD
 If3ud3PnHJMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,355,1602572400"; d="scan'208";a="399016987"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga004.fm.intel.com with ESMTP; 17 Jan 2021 22:07:32 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sun, 17 Jan 2021 22:07:26 -0800
Message-Id: <20210118060730.15425-10-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210118060730.15425-1-sean.z.huang@intel.com>
References: <20210118060730.15425-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v21 09/13] drm/i915/pxp: Expose session state for
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

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_context_types.h |  1 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c          | 26 +++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h          | 18 +++++++++++++
 include/uapi/drm/i915_drm.h                   |  9 +++++++
 4 files changed, 54 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index 1449f54924e0..31137adca788 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -134,6 +134,7 @@ struct i915_gem_context {
 #define UCONTEXT_BANNABLE		2
 #define UCONTEXT_RECOVERABLE		3
 #define UCONTEXT_PERSISTENCE		4
+#define UCONTEXT_PROTECTED		5
 
 	/**
 	 * @flags: small set of booleans
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index e6dd57ec73f5..373d3e3f3536 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -157,3 +157,29 @@ void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
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
+	}
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 420da2790624..6031f26968ec 100644
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
@@ -19,6 +23,9 @@ int i915_pxp_global_terminate_complete_callback(struct intel_pxp *pxp);
 
 void intel_pxp_init(struct intel_pxp *pxp);
 void intel_pxp_fini(struct intel_pxp *pxp);
+bool intel_pxp_gem_object_status(struct drm_i915_private *i915);
+int intel_pxp_gem_context_create_param(struct i915_gem_context *ctx,
+				       struct drm_i915_gem_context_param *args);
 #else
 static inline void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
 {
@@ -41,6 +48,17 @@ static inline void intel_pxp_init(struct intel_pxp *pxp)
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
