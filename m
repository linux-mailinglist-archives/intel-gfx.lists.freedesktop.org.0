Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E3131182D
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Feb 2021 03:10:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 051436F54E;
	Sat,  6 Feb 2021 02:10:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47FD06F54D
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Feb 2021 02:10:41 +0000 (UTC)
IronPort-SDR: wKp37URBlHuGvTUc3GQI91ntWrrNCvWXXiCvXjPk2EBvY60lLnmWLlFPZIx0CXclcaJ8Vm183E
 hyfWJZnDLPNg==
X-IronPort-AV: E=McAfee;i="6000,8403,9886"; a="181577464"
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="181577464"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 18:10:41 -0800
IronPort-SDR: FuoFjfYFtHmr36yu07Fb3iHWYqVbGPpiakt9VofC8+mTC5SAZq1edKY3a9L5imJNWuTIW8hlvr
 Pd4q+u3emJbA==
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="394141415"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 18:10:40 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Feb 2021 18:09:19 -0800
Message-Id: <20210206020925.36729-9-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
References: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 08/14] drm/i915/pxp: Implement arb session teardown
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
Cc: "Huang, Sean Z" <sean.z.huang@intel.com>, Huang@freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: "Huang, Sean Z" <sean.z.huang@intel.com>

Teardown is triggered when the display topology changes and no
long meets the secure playback requirement, and hardware trashes
all the encryption keys for display. Additionally, we want to emit a
teardown operation to make sure we're clean on boot and resume

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/Makefile                |   1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c     | 227 +++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h     |  15 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c |  40 ++++
 drivers/gpu/drm/i915/pxp/intel_pxp_session.h |   1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     |   5 +-
 6 files changed, 288 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 8519abcf6515..9698fec810ae 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -271,6 +271,7 @@ i915-y += i915_perf.o
 # Protected execution platform (PXP) support
 i915-$(CONFIG_DRM_I915_PXP) += \
 	pxp/intel_pxp.o \
+	pxp/intel_pxp_cmd.o \
 	pxp/intel_pxp_session.o \
 	pxp/intel_pxp_tee.o
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
new file mode 100644
index 000000000000..3e2c3580cb1b
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
@@ -0,0 +1,227 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#include "intel_pxp.h"
+#include "intel_pxp_session.h"
+#include "gt/intel_context.h"
+#include "gt/intel_engine_pm.h"
+#include "gt/intel_gpu_commands.h"
+#include "gt/intel_gt_buffer_pool.h"
+
+/* PXP GPU command definitions */
+
+/* MI_SET_APPID */
+#define   MI_SET_APPID_SESSION_ID(x)    ((x) << 0)
+
+/* MI_FLUSH_DW */
+#define   MI_FLUSH_DW_DW0_PROTECTED_MEMORY_ENABLE   BIT(22)
+
+/* MI_WAIT */
+#define   MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG BIT(9)
+#define   MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG  BIT(8)
+
+/* CRYPTO_KEY_EXCHANGE */
+#define CRYPTO_KEY_EXCHANGE ((0x3 << 29) | (0x01609 << 16))
+
+static struct i915_vma *intel_pxp_get_batch(struct intel_context *ce,
+					    struct i915_gem_ww_ctx *ww,
+					    u32 size)
+{
+	struct intel_gt_buffer_pool_node *pool;
+	struct i915_vma *batch;
+	int err;
+
+	intel_engine_pm_get(ce->engine);
+
+retry:
+	err = intel_context_pin_ww(ce, ww);
+	if (err)
+		goto out;
+
+	pool = intel_gt_get_buffer_pool(ce->engine->gt, size, I915_MAP_WC);
+	if (IS_ERR(pool)) {
+		err = PTR_ERR(pool);
+		goto out_ctx;
+	}
+
+	batch = i915_vma_instance(pool->obj, ce->vm, NULL);
+	if (IS_ERR(batch)) {
+		err = PTR_ERR(batch);
+		goto out_put;
+	}
+
+	err = i915_vma_pin_ww(batch, ww, 0, 0, PIN_USER);
+	if (unlikely(err))
+		goto out_put;
+
+	err = i915_gem_object_lock(pool->obj, ww);
+	if (err)
+		goto out_unpin;
+
+	batch->private = pool;
+
+	return batch;
+
+out_unpin:
+	i915_vma_unpin(batch);
+out_put:
+	intel_gt_buffer_pool_put(pool);
+out_ctx:
+	intel_context_unpin(ce);
+out:
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(ww);
+		if (!err)
+			goto retry;
+	}
+	intel_engine_pm_put(ce->engine);
+	return ERR_PTR(err);
+}
+
+static void intel_pxp_put_batch(struct intel_context *ce,
+				struct i915_vma *batch)
+{
+	i915_vma_unpin(batch);
+	intel_gt_buffer_pool_put(batch->private);
+	intel_context_unpin(ce);
+	intel_engine_pm_put(ce->engine);
+}
+
+static int intel_pxp_submit_batch(struct intel_context *ce,
+				  struct i915_vma *batch)
+{
+	struct i915_request *rq;
+	int err;
+
+	rq = i915_request_create(ce);
+	if (IS_ERR(rq))
+		return PTR_ERR(rq);
+
+	err = i915_request_await_object(rq, batch->obj, false);
+	if (!err)
+		err = i915_vma_move_to_active(batch, rq, 0);
+	if (err)
+		goto out_rq;
+
+	err = intel_gt_buffer_pool_mark_active(batch->private, rq);
+	if (err)
+		goto out_rq;
+
+	if (ce->engine->emit_init_breadcrumb) {
+		err = ce->engine->emit_init_breadcrumb(rq);
+		if (err)
+			goto out_rq;
+	}
+
+	err = ce->engine->emit_bb_start(rq, batch->node.start,
+					batch->node.size, 0);
+	if (err)
+		goto out_rq;
+
+out_rq:
+	i915_request_get(rq);
+
+	if (unlikely(err))
+		i915_request_set_error_once(rq, err);
+
+	i915_request_add(rq);
+
+	if (!err && i915_request_wait(rq, 0, HZ / 5) < 0)
+		err = -ETIME;
+
+	i915_request_put(rq);
+
+	return err;
+}
+
+/* stall until prior PXP and MFX/HCP/HUC objects are cmopleted */
+#define MFX_WAIT_PXP \
+	MFX_WAIT | \
+	MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG | \
+	MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG;
+
+static u32 *pxp_emit_session_selection(u32 *cmd, u32 idx)
+{
+	*cmd++ = MFX_WAIT_PXP;
+
+	/* pxp off */
+	*cmd++ = MI_FLUSH_DW;
+	*cmd++ = 0;
+	*cmd++ = 0;
+
+	/* select session */
+	*cmd++ = MI_SET_APPID | MI_SET_APPID_SESSION_ID(idx);
+
+	*cmd++ = MFX_WAIT_PXP;
+
+	/* pxp on */
+	*cmd++ = MI_FLUSH_DW | MI_FLUSH_DW_DW0_PROTECTED_MEMORY_ENABLE;
+	*cmd++ = 0;
+	*cmd++ = 0;
+
+	*cmd++ = MFX_WAIT_PXP;
+
+	return cmd;
+}
+
+static u32 *pxp_emit_inline_termination(u32 *cmd)
+{
+	/* session inline termination */
+	*cmd++ = CRYPTO_KEY_EXCHANGE;
+	*cmd++ = 0;
+
+	return cmd;
+}
+
+static u32 *pxp_emit_batch_end(u32 *cmd)
+{
+	/* wait for cmds to go through */
+	*cmd++ = MFX_WAIT_PXP;
+
+	*cmd++ = MI_BATCH_BUFFER_END;
+
+	return cmd;
+}
+
+int intel_pxp_submit_session_termination(struct intel_pxp *pxp, u32 id)
+{
+	struct i915_vma *batch;
+	struct i915_gem_ww_ctx ww;
+	u32 *cmd;
+	int err;
+
+	if (!intel_pxp_is_enabled(pxp))
+		return 0;
+
+	i915_gem_ww_ctx_init(&ww, false);
+
+	batch = intel_pxp_get_batch(pxp->ce, &ww, PAGE_SIZE);
+	if (IS_ERR(batch)) {
+		err = PTR_ERR(batch);
+		goto out_ww;
+	}
+
+	cmd = i915_gem_object_pin_map(batch->obj, I915_MAP_WC);
+	if (IS_ERR(cmd)) {
+		err = PTR_ERR(cmd);
+		goto out_batch;
+	}
+
+	cmd = pxp_emit_session_selection(cmd, id);
+	cmd = pxp_emit_inline_termination(cmd);
+	cmd = pxp_emit_batch_end(cmd);
+
+	i915_gem_object_flush_map(batch->obj);
+	i915_gem_object_unpin_map(batch->obj);
+
+	err = intel_pxp_submit_batch(pxp->ce, batch);
+
+out_batch:
+	intel_pxp_put_batch(pxp->ce, batch);
+out_ww:
+	i915_gem_ww_ctx_fini(&ww);
+	return err;
+}
+
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
new file mode 100644
index 000000000000..7c33b66f0812
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_CMD_H__
+#define __INTEL_PXP_CMD_H__
+
+#include <linux/types.h>
+
+struct intel_pxp;
+
+int intel_pxp_submit_session_termination(struct intel_pxp *pxp, u32 idx);
+
+#endif /* __INTEL_PXP_CMD_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
index 1ee608341b7a..fe733cc69f27 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
@@ -7,6 +7,7 @@
 #include "i915_drv.h"
 
 #include "intel_pxp.h"
+#include "intel_pxp_cmd.h"
 #include "intel_pxp_session.h"
 #include "intel_pxp_tee.h"
 #include "intel_pxp_types.h"
@@ -15,6 +16,9 @@
 
 #define GEN12_KCR_SIP _MMIO(0x32260) /* KCR hwdrm session in play 0-31 */
 
+/* PXP global terminate register for session termination */
+#define PXP_GLOBAL_TERMINATE _MMIO(0x320f8)
+
 static bool intel_pxp_session_is_in_play(struct intel_pxp *pxp, u32 id)
 {
 	struct intel_gt *gt = pxp_to_gt(pxp);
@@ -80,3 +84,39 @@ int intel_pxp_create_arb_session(struct intel_pxp *pxp)
 
 	return 0;
 }
+
+/**
+ * intel_pxp_arb_terminate_session_with_global_terminate - Terminate the arb hw session.
+ * @pxp: pointer to pxp struct.
+ *
+ * This function is NOT intended to be called from the ioctl, and need to be protected by
+ * mutex to ensure no SIP change during the call.
+ *
+ * Return: status. 0 means terminate is successful.
+ */
+int intel_pxp_arb_terminate_session_with_global_terminate(struct intel_pxp *pxp)
+{
+	int ret;
+	struct intel_gt *gt = pxp_to_gt(pxp);
+
+	lockdep_assert_held(&pxp->mutex);
+
+	/* terminate the hw sessions */
+	ret = intel_pxp_submit_session_termination(pxp, ARB_SESSION);
+	if (ret) {
+		drm_err(&gt->i915->drm, "Failed to submit session termination\n");
+		return ret;
+	}
+
+	pxp->arb_is_in_play = false;
+
+	ret = pxp_wait_for_session_state(pxp, ARB_SESSION, false);
+	if (ret) {
+		drm_err(&gt->i915->drm, "Session state did not clear\n");
+		return ret;
+	}
+
+	intel_uncore_write(gt->uncore, PXP_GLOBAL_TERMINATE, 1);
+
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.h b/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
index 6fc4a2370c44..07c97df7a509 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
@@ -12,5 +12,6 @@ struct intel_pxp;
 
 bool intel_pxp_arb_session_is_in_play(struct intel_pxp *pxp);
 int intel_pxp_create_arb_session(struct intel_pxp *pxp);
+int intel_pxp_arb_terminate_session_with_global_terminate(struct intel_pxp *pxp);
 
 #endif /* __INTEL_PXP_SESSION_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 700709f323f7..dd7161f176f1 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -95,7 +95,10 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 	mutex_lock(&pxp->mutex);
 
 	/* Create arb session only if tee is ready, during system boot or sleep/resume */
-	if (!intel_pxp_arb_session_is_in_play(pxp))
+	if (intel_pxp_arb_session_is_in_play(pxp))
+		ret = intel_pxp_arb_terminate_session_with_global_terminate(pxp);
+
+	if (!ret)
 		ret = intel_pxp_create_arb_session(pxp);
 
 	mutex_unlock(&pxp->mutex);
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
