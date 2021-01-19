Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA892FB362
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 08:43:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C722D6E835;
	Tue, 19 Jan 2021 07:43:28 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A4726E829
 for <Intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 07:43:25 +0000 (UTC)
IronPort-SDR: HFfFcIlv/AVCs1hyw+xR6xQ3Y747/dxYvycBgszLuIPDYvpbZD/UhBl8It5xez7iFJJS3ABAsJ
 DM23tk+96XrA==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="197592808"
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="197592808"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 23:43:23 -0800
IronPort-SDR: gYifEiZFcCHWYUKQn5R65Nsc4jJQHYf5qttK9qqwIhuzZMYNOy7MAJBOxAP9CBcAfNSEo23qkF
 nqYb80iQRXqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="466592735"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga001.fm.intel.com with ESMTP; 18 Jan 2021 23:43:23 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 18 Jan 2021 23:43:12 -0800
Message-Id: <20210119074320.28768-6-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210119074320.28768-1-sean.z.huang@intel.com>
References: <20210119074320.28768-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v23 05/13] drm/i915/pxp: Func to send hardware
 session termination
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

Implement the functions to allow PXP to send a GPU command, in
order to terminate the hardware session, so hardware can recycle
this session slot for the next usage.

rev21:
    In intel_pxp_cmd.c:
    - Remove the debug print as well as print_hex_dump()
    - Should call i915_gem_object_flush_map() before unpin map
    - Using "goto label" instead of bool such as is_engine_pm_get
    - We should always return the error if any, instead of skip
      with i915_request_set_error_once()

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/Makefile              |   1 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c       |  13 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c   | 124 +++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h   |  18 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h |   4 +
 5 files changed, 160 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index e3b7f6b5dadb..c931ef5e8a85 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -269,6 +269,7 @@ i915-y += i915_perf.o
 i915-$(CONFIG_DRM_I915_PXP) += \
 	pxp/intel_pxp.o \
 	pxp/intel_pxp_arb.o \
+	pxp/intel_pxp_cmd.o \
 	pxp/intel_pxp_context.o \
 	pxp/intel_pxp_tee.o
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 4f033907564a..f71677a84405 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -17,10 +17,23 @@
 void intel_pxp_init(struct intel_pxp *pxp)
 {
 	struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
+	int i;
 
 	if (INTEL_GEN(gt->i915) < 12)
 		return;
 
+	/* Find the first VCS engine present */
+	for (i = 0; i < I915_MAX_VCS; i++) {
+		if (HAS_ENGINE(gt, _VCS(i))) {
+			pxp->vcs_engine = gt->engine[_VCS(i)];
+			break;
+		}
+	}
+	if (!pxp->vcs_engine) {
+		drm_err(&gt->i915->drm, "Could not find a VCS engine\n");
+		return;
+	}
+
 	intel_pxp_ctx_init(&pxp->ctx);
 
 	if (INTEL_GEN(gt->i915) == 12)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
new file mode 100644
index 000000000000..6898b8826302
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
@@ -0,0 +1,124 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#include "intel_pxp_cmd.h"
+#include "i915_drv.h"
+#include "gt/intel_context.h"
+#include "gt/intel_engine_pm.h"
+
+struct i915_vma *intel_pxp_cmd_get_batch(struct intel_pxp *pxp,
+					 struct intel_context *ce,
+					 struct intel_gt_buffer_pool_node *pool,
+					 u32 *cmd_buf, int cmd_size_in_dw)
+{
+	struct i915_vma *batch = ERR_PTR(-EINVAL);
+	struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
+	u32 *cmd;
+
+	if (!ce || !ce->engine || !cmd_buf)
+		return ERR_PTR(-EINVAL);
+
+	if (cmd_size_in_dw * 4 > PAGE_SIZE) {
+		drm_err(&gt->i915->drm, "Failed to %s, invalid cmd_size_id_dw=[%d]\n",
+			__func__, cmd_size_in_dw);
+		return ERR_PTR(-EINVAL);
+	}
+
+	cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_FORCE_WC);
+	if (IS_ERR(cmd)) {
+		drm_err(&gt->i915->drm, "Failed to i915_gem_object_pin_map()\n");
+		return ERR_PTR(-EINVAL);
+	}
+
+	memcpy(cmd, cmd_buf, cmd_size_in_dw * 4);
+
+	i915_gem_object_flush_map(pool->obj);
+	i915_gem_object_unpin_map(pool->obj);
+
+	batch = i915_vma_instance(pool->obj, ce->vm, NULL);
+	if (IS_ERR(batch)) {
+		drm_err(&gt->i915->drm, "Failed to i915_vma_instance()\n");
+		return batch;
+	}
+
+	return batch;
+}
+
+int intel_pxp_cmd_submit(struct intel_pxp *pxp, u32 *cmd, int cmd_size_in_dw)
+{
+	int err = -EINVAL;
+	struct i915_vma *batch;
+	struct i915_request *rq;
+	struct intel_context *ce = NULL;
+	struct intel_gt_buffer_pool_node *pool = NULL;
+	struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
+	int size = cmd_size_in_dw * 4;
+
+	ce = pxp->vcs_engine->kernel_context;
+	if (!ce)
+		return -EINVAL;
+
+	if (!cmd || cmd_size_in_dw == 0)
+		return -EINVAL;
+
+	intel_engine_pm_get(ce->engine);
+
+	size = round_up(size, PAGE_SIZE);
+	pool = intel_gt_get_buffer_pool(gt, size);
+	if (IS_ERR(pool)) {
+		err = PTR_ERR(pool);
+		goto out_engine_pm_put;
+	}
+
+	batch = intel_pxp_cmd_get_batch(pxp, ce, pool, cmd, cmd_size_in_dw);
+	if (IS_ERR(batch)) {
+		err = PTR_ERR(batch);
+		goto out_engine_pool_put;
+	}
+
+	err = i915_vma_pin(batch, 0, 0, PIN_USER);
+	if (err)
+		goto out_engine_pool_put;
+
+	rq = intel_context_create_request(ce);
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
+		goto out_vma_unpin;
+	}
+
+	err = intel_gt_buffer_pool_mark_active(pool, rq);
+	if (err)
+		goto out_vma_unpin;
+
+	i915_vma_lock(batch);
+	err = i915_request_await_object(rq, batch->obj, false);
+	if (!err)
+		err = i915_vma_move_to_active(batch, rq, 0);
+	i915_vma_unlock(batch);
+	if (err)
+		goto out_vma_unpin;
+
+	if (ce->engine->emit_init_breadcrumb) {
+		err = ce->engine->emit_init_breadcrumb(rq);
+		if (err)
+			goto out_vma_unpin;
+	}
+
+	err = ce->engine->emit_bb_start(rq, batch->node.start,
+					batch->node.size, 0);
+	if (err)
+		goto out_vma_unpin;
+
+	i915_request_add(rq);
+
+out_vma_unpin:
+	i915_vma_unpin(batch);
+out_engine_pool_put:
+	intel_gt_buffer_pool_put(pool);
+out_engine_pm_put:
+	intel_engine_pm_put(ce->engine);
+
+	return err;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
new file mode 100644
index 000000000000..d04463962421
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_CMD_H__
+#define __INTEL_PXP_CMD_H__
+
+#include "gt/intel_gt_buffer_pool.h"
+#include "intel_pxp.h"
+
+struct i915_vma *intel_pxp_cmd_get_batch(struct intel_pxp *pxp,
+					 struct intel_context *ce,
+					 struct intel_gt_buffer_pool_node *pool,
+					 u32 *cmd_buf, int cmd_size_in_dw);
+
+int intel_pxp_cmd_submit(struct intel_pxp *pxp, u32 *cmd, int cmd_size_in_dw);
+#endif /* __INTEL_PXP_SM_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
index e2bd320302c2..19d43b43e483 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -8,6 +8,8 @@
 
 #include <linux/mutex.h>
 
+struct intel_engine_cs;
+
 /* struct pxp_context - Represents combined view of driver and logical HW states. */
 struct pxp_context {
 	/** @mutex: mutex to protect the pxp context */
@@ -22,6 +24,8 @@ struct pxp_context {
 
 struct intel_pxp {
 	struct pxp_context ctx;
+
+	struct intel_engine_cs *vcs_engine;
 };
 
 #endif /* __INTEL_PXP_TYPES_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
