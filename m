Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BA32B29FA
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Nov 2020 01:37:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E899A6E8B2;
	Sat, 14 Nov 2020 00:37:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E5486E8A1
 for <Intel-gfx@lists.freedesktop.org>; Sat, 14 Nov 2020 00:37:27 +0000 (UTC)
IronPort-SDR: 2d9q2OoID22fT++MR1/c1lpwkLOQP/ZVY57M7t8h7OUw9SNfxVCjR8ccAQVmiqK6cYs/ZoYQSu
 YQ6+cc+OHBUg==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="232167235"
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="232167235"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 16:37:19 -0800
IronPort-SDR: tqEi1GI9QMMmVWb9Cofd19fOWjebBoc8QXvAANqW/dgwDoAkgFlr3pT+t0TC54nspl4csOpzeU
 RCrOa8ZNyDZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="474848570"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by orsmga004.jf.intel.com with ESMTP; 13 Nov 2020 16:37:19 -0800
From: Sean Z Huang <sean.z.huang@intel.com>
To: sean.z.huang@intel.com,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 13 Nov 2020 16:37:10 -0800
Message-Id: <20201114003716.4875-21-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201114003716.4875-1-sean.z.huang@intel.com>
References: <20201114003716.4875-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [PXP CLEAN PATCH v06 21/27] drm/i915/pxp: Add i915
 trace logs for PXP operations
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

From: "Huang, Sean Z" <sean.z.huang@intel.com>

Add several i915 trace logs for PXP calls for debugging or
performance measurement, including:
(1) PXP ioctl
(2) PXP teardown callbacks

To trun on this feature, we need to set
"CONFIG_DRM_I915_LOW_LEVEL_TRACEPOINTS=y" in .config for compiling
the Linux kernel.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/i915_trace.h    | 44 ++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.c |  5 ++++
 2 files changed, 49 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
index a4addcc64978..36470e20dc61 100644
--- a/drivers/gpu/drm/i915/i915_trace.h
+++ b/drivers/gpu/drm/i915/i915_trace.h
@@ -1031,6 +1031,50 @@ DEFINE_EVENT(i915_context, i915_context_free,
 	TP_ARGS(ctx)
 );
 
+TRACE_EVENT(i915_pxp_ops_ioctl,
+	    TP_PROTO(struct drm_device *dev, void *data, struct drm_file *file, u32 action),
+	    TP_ARGS(dev, data, file, action),
+
+	    TP_STRUCT__entry(
+			     __field(struct drm_device *, dev)
+			     __field(void *, data)
+			     __field(struct drm_file *, file)
+			     __field(u32, action)
+	    ),
+
+	    TP_fast_assign(
+			   __entry->dev = dev;
+			   __entry->data = data;
+			   __entry->file = file;
+			   __entry->action = action;
+	    ),
+
+	    TP_printk("dev=%p, data=%p, file=%p, action=%u",
+		      __entry->dev, __entry->data, __entry->file, __entry->action)
+);
+
+TRACE_EVENT(i915_pxp_teardown_required_callback,
+	    TP_PROTO(bool global_state_attacked),
+	    TP_ARGS(global_state_attacked),
+
+	    TP_STRUCT__entry(__field(bool, global_state_attacked)),
+
+	    TP_fast_assign(__entry->global_state_attacked = global_state_attacked;),
+
+	    TP_printk("global_state_attacked=%s", yesno(__entry->global_state_attacked))
+);
+
+TRACE_EVENT(i915_pxp_global_terminate_complete_callback,
+	    TP_PROTO(bool global_state_attacked),
+	    TP_ARGS(global_state_attacked),
+
+	    TP_STRUCT__entry(__field(bool, global_state_attacked)),
+
+	    TP_fast_assign(__entry->global_state_attacked = global_state_attacked;),
+
+	    TP_printk("global_state_attacked=%s", yesno(__entry->global_state_attacked))
+);
+
 #endif /* _I915_TRACE_H_ */
 
 /* This part must be outside protection */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 80e632b614f5..23955d7a3c3d 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -8,6 +8,7 @@
 #include "intel_pxp_context.h"
 #include "intel_pxp_sm.h"
 #include "intel_pxp_tee.h"
+#include "i915_trace.h"
 
 int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmfile)
 {
@@ -30,6 +31,7 @@ int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmf
 	}
 
 	drm_dbg(&i915->drm, "i915 pxp ioctl call with action=[%d]\n", pxp_info.action);
+	trace_i915_pxp_ops_ioctl(dev, data, drmfile, pxp_info.action);
 
 	mutex_lock(&i915->pxp.r0ctx->ctx_mutex);
 
@@ -219,6 +221,8 @@ static int intel_pxp_teardown_required_callback(struct drm_i915_private *i915)
 
 	mutex_unlock(&i915->pxp.r0ctx->ctx_mutex);
 
+	trace_i915_pxp_teardown_required_callback(i915->pxp.r0ctx->global_state_attacked);
+
 	return ret;
 }
 
@@ -243,6 +247,7 @@ static int intel_pxp_global_terminate_complete_callback(struct drm_i915_private
 end:
 	mutex_unlock(&i915->pxp.r0ctx->ctx_mutex);
 
+	trace_i915_pxp_global_terminate_complete_callback(i915->pxp.r0ctx->global_state_attacked);
 	drm_dbg(&i915->drm, "<<< %s ret=[%d]\n", __func__, ret);
 
 	return ret;
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
