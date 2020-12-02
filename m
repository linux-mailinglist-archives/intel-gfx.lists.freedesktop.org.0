Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 917CC2CB3B1
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 05:04:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C7D46EA04;
	Wed,  2 Dec 2020 04:04:22 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAA426EA0A
 for <Intel-gfx@lists.freedesktop.org>; Wed,  2 Dec 2020 04:04:20 +0000 (UTC)
IronPort-SDR: 7nYYa3Jv93v4IYtma2wtc/1p/KFQCVl+ju7/WKQ1cuCHvflLVegKp3bHxpzWONKLZaL4tehcpG
 PFOoJrj0dZaQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="237078969"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="237078969"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 20:04:17 -0800
IronPort-SDR: TxNy38qTzEvTzzMLdTOA96MIQc0p0Sbs4cvAdUFKDIVDO6DzbYts8qUdO/ytFP/MOEcv7Q563F
 OwS4aOBOiGng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="549869267"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by orsmga005.jf.intel.com with ESMTP; 01 Dec 2020 20:04:17 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 20:03:35 -0800
Message-Id: <20201202040341.31981-21-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201202040341.31981-1-sean.z.huang@intel.com>
References: <20201202040341.31981-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v4 20/26] drm/i915/pxp: Add i915 trace logs for
 PXP operations
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
 drivers/gpu/drm/i915/pxp/intel_pxp.c |  6 ++++
 2 files changed, 50 insertions(+)

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
index 766797b7854e..8134b39c7419 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -8,6 +8,7 @@
 #include "intel_pxp_context.h"
 #include "intel_pxp_sm.h"
 #include "intel_pxp_tee.h"
+#include "i915_trace.h"
 
 int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmfile)
 {
@@ -23,6 +24,8 @@ int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmf
 	if (copy_from_user(&pxp_info, pxp_ops->info_ptr, sizeof(pxp_info)) != 0)
 		return -EFAULT;
 
+	trace_i915_pxp_ops_ioctl(dev, data, drmfile, pxp_info.action);
+
 	mutex_lock(&i915->pxp.ctx->ctx_mutex);
 
 	if (i915->pxp.ctx->global_state_in_suspend) {
@@ -198,6 +201,8 @@ static int intel_pxp_teardown_required_callback(struct drm_i915_private *i915)
 
 	mutex_unlock(&i915->pxp.ctx->ctx_mutex);
 
+	trace_i915_pxp_teardown_required_callback(i915->pxp.ctx->global_state_attacked);
+
 	return ret;
 }
 
@@ -220,6 +225,7 @@ static int intel_pxp_global_terminate_complete_callback(struct drm_i915_private
 end:
 	mutex_unlock(&i915->pxp.ctx->ctx_mutex);
 
+	trace_i915_pxp_global_terminate_complete_callback(i915->pxp.ctx->global_state_attacked);
 	return ret;
 }
 
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
