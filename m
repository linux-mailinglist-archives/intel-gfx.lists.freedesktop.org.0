Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D6F2B2A93
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Nov 2020 02:46:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D467D6E8BD;
	Sat, 14 Nov 2020 01:45:47 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C02A6E884
 for <Intel-gfx@lists.freedesktop.org>; Sat, 14 Nov 2020 01:45:41 +0000 (UTC)
IronPort-SDR: 1IWWkHpfmN3lAPnXag017jmQxGhKZZsU1HndcJ2qs5qbbtPUQOqyKMG/jFGCrCCArHpoTgz15/
 RcCK1If8MkXQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="158332218"
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="158332218"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 17:45:39 -0800
IronPort-SDR: Q1dstPawRBuygqqm36Vr51uZxs5tqnoddlRVa0lQRndMdCXUmKkXpbQUVKe1EWsdXHKwzRhWea
 QGSH+GvzOOkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="361524754"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga002.fm.intel.com with ESMTP; 13 Nov 2020 17:45:38 -0800
From: Sean Z Huang <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 13 Nov 2020 17:45:13 -0800
Message-Id: <20201114014537.25495-3-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201114014537.25495-1-sean.z.huang@intel.com>
References: <20201114014537.25495-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [PATCH 03/27] drm/i915/pxp: Add PXP context for logical
 hardware states.
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

Add PXP context which represents combined view
of driver and logical HW states.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/Makefile                |  3 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c         | 32 ++++++++++--
 drivers/gpu/drm/i915/pxp/intel_pxp.h         |  3 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_context.c | 51 ++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_context.h | 44 +++++++++++++++++
 5 files changed, 128 insertions(+), 5 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 8274fea96009..831e8ad57560 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -256,7 +256,8 @@ i915-y += i915_perf.o
 
 # Protected execution platform (PXP) support
 i915-y += \
-	pxp/intel_pxp.o
+	pxp/intel_pxp.o \
+	pxp/intel_pxp_context.o \
 
 # Post-mortem debug and GPU hang state capture
 i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += i915_gpu_error.o
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index d98bff4a0fde..6d358f241406 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -5,6 +5,7 @@
 
 #include "i915_drv.h"
 #include "intel_pxp.h"
+#include "intel_pxp_context.h"
 
 static void intel_pxp_write_irq_mask_reg(struct drm_i915_private *i915, u32 mask)
 {
@@ -32,14 +33,32 @@ static int intel_pxp_teardown_required_callback(struct drm_i915_private *i915)
 {
 	drm_dbg(&i915->drm, "%s was called\n", __func__);
 
+	mutex_lock(&i915->pxp.r0ctx->ctx_mutex);
+
+	i915->pxp.r0ctx->global_state_attacked = true;
+	i915->pxp.r0ctx->flag_display_hm_surface_keys = false;
+
+	mutex_unlock(&i915->pxp.r0ctx->ctx_mutex);
+
 	return 0;
 }
 
 static int intel_pxp_global_terminate_complete_callback(struct drm_i915_private *i915)
 {
+	int ret = 0;
+
 	drm_dbg(&i915->drm, ">>> %s\n", __func__);
 
-	return 0;
+	mutex_lock(&i915->pxp.r0ctx->ctx_mutex);
+
+	if (i915->pxp.r0ctx->global_state_attacked)
+		i915->pxp.r0ctx->global_state_attacked = false;
+
+	mutex_unlock(&i915->pxp.r0ctx->ctx_mutex);
+
+	drm_dbg(&i915->drm, "<<< %s ret=[%d]\n", __func__, ret);
+
+	return ret;
 }
 
 static void intel_pxp_irq_work(struct work_struct *work)
@@ -68,21 +87,26 @@ static void intel_pxp_irq_work(struct work_struct *work)
 
 int intel_pxp_init(struct drm_i915_private *i915)
 {
-	int ret;
-
 	drm_info(&i915->drm, "i915_pxp_init\n");
 
+	i915->pxp.r0ctx = intel_pxp_create_r0ctx(i915);
+	if (!i915->pxp.r0ctx) {
+		drm_dbg(&i915->drm, "Failed to create pxp ctx\n");
+		return -EFAULT;
+	}
+
 	INIT_WORK(&i915->pxp.irq_work, intel_pxp_irq_work);
 
 	i915->pxp.handled_irr = (PXP_IRQ_VECTOR_DISPLAY_PXP_STATE_TERMINATED |
 				 PXP_IRQ_VECTOR_DISPLAY_APP_TERM_PER_FW_REQ |
 				 PXP_IRQ_VECTOR_PXP_DISP_STATE_RESET_COMPLETE);
 
-	return ret;
+	return 0;
 }
 
 void intel_pxp_uninit(struct drm_i915_private *i915)
 {
+	intel_pxp_destroy_r0ctx(i915);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 620774fc32e2..4dec35bb834d 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -12,6 +12,9 @@
 #define PXP_IRQ_VECTOR_DISPLAY_APP_TERM_PER_FW_REQ BIT(2)
 #define PXP_IRQ_VECTOR_PXP_DISP_STATE_RESET_COMPLETE BIT(3)
 
+#define MAX_TYPE0_SESSIONS 16
+#define MAX_TYPE1_SESSIONS 6
+
 enum pxp_sm_session_req {
 	/* Request KMD to allocate session id and move it to IN INIT */
 	PXP_SM_REQ_SESSION_ID_INIT = 0x0,
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.c b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
new file mode 100644
index 000000000000..692370e758de
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
@@ -0,0 +1,51 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#include "intel_pxp_context.h"
+
+/**
+ * intel_pxp_create_ctx - To create a new pxp context.
+ * @i915: i915 device handle.
+ *
+ * Return: pointer to new_ctx, NULL for failure
+ */
+struct pxp_context *intel_pxp_create_r0ctx(struct drm_i915_private *i915)
+{
+	struct pxp_context *new_ctx = NULL;
+
+	drm_dbg(&i915->drm, ">>> %s\n", __func__);
+
+	new_ctx = kzalloc(sizeof(*new_ctx), GFP_KERNEL);
+	if (!new_ctx) {
+		drm_dbg(&i915->drm, "unable to allocate new pxp context!\n");
+		return NULL;
+	}
+
+	get_random_bytes(&new_ctx->r0ctx_id, sizeof(new_ctx->r0ctx_id));
+
+	new_ctx->global_state_attacked = false;
+
+	mutex_init(&new_ctx->ctx_mutex);
+
+	INIT_LIST_HEAD(&new_ctx->active_pxp_type0_sessions);
+	INIT_LIST_HEAD(&new_ctx->active_pxp_type1_sessions);
+	INIT_LIST_HEAD(&new_ctx->r3ctx_list);
+
+	drm_dbg(&i915->drm, "<<< %s r0ctx_id=[0x%08x]\n", __func__, new_ctx->r0ctx_id);
+
+	return new_ctx;
+}
+
+/**
+ * intel_pxp_destroy_ctx - To destroy the pxp context.
+ * @i915: i915 device handle.
+ *
+ * Return: return 0 for success, failure otherwise.
+ */
+void intel_pxp_destroy_r0ctx(struct drm_i915_private *i915)
+{
+	kfree(i915->pxp.r0ctx);
+	i915->pxp.r0ctx = NULL;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
new file mode 100644
index 000000000000..5de4e68b9dce
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
@@ -0,0 +1,44 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_CONTEXT_H__
+#define __INTEL_PXP_CONTEXT_H__
+
+#include <linux/list.h>
+#include "i915_drv.h"
+#include "pxp/intel_pxp.h"
+
+/* struct pxp_context - Represents combined view of driver and logical HW states. */
+struct pxp_context {
+	/** @ctx_mutex: mutex to protect the ring0 pxp context */
+	struct mutex ctx_mutex;
+
+	struct list_head active_pxp_type0_sessions;
+	struct list_head active_pxp_type1_sessions;
+
+	struct list_head r3ctx_list;
+
+	u32 type0_session_pxp_tag[MAX_TYPE0_SESSIONS];
+	u32 type1_session_pxp_tag[MAX_TYPE1_SESSIONS];
+
+	int r0ctx_id;
+
+	bool global_state_attacked;
+	bool global_state_in_suspend;
+	bool flag_display_hm_surface_keys;
+};
+
+struct pxp_r3ctx {
+	/** @listhead: linked list infrastructure, do not change its order. */
+	struct list_head listhead;
+
+	/** @r3ctx: ring 3 context id */
+	u32 r3ctx;
+};
+
+struct pxp_context *intel_pxp_create_r0ctx(struct drm_i915_private *i915);
+void intel_pxp_destroy_r0ctx(struct drm_i915_private *i915);
+
+#endif /* __INTEL_PXP_CONTEXT_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
