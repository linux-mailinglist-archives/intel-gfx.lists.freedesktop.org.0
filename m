Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8356328ED0
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 20:38:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3622A6E884;
	Mon,  1 Mar 2021 19:38:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C5A86E884
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 19:38:56 +0000 (UTC)
IronPort-SDR: WpIEdSB/9c/AFDtIgeqXaD9umERV1FZ5LQ+1VvGAhfFEvUIBNqDlPmuoBjqfOuU9Wsg7V1kQ5O
 jI6W2XEs9WEg==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="250627902"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="250627902"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 11:38:55 -0800
IronPort-SDR: AOlLMYt1Rusx4JXRDRnIpBxsbFtUU92sOVfXFdcmVZDMUamixY8blsd9uN3/HeEc0Pu6JszeOV
 RUN7EzKMFpxw==
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="435484970"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 11:38:20 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Mar 2021 11:31:52 -0800
Message-Id: <20210301193200.1369-9-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
References: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 08/16] drm/i915/pxp: Implement arb session
 teardown
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
Cc: "Huang, Sean Z" <sean.z.huang@intel.com>, Huang@freedesktop.org,
	Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: "Huang, Sean Z" <sean.z.huang@intel.com>

Teardown is triggered when the display topology changes and no
long meets the secure playback requirement, and hardware trashes
all the encryption keys for display. Additionally, we want to emit a
teardown operation to make sure we're clean on boot and resume

v2: emit in the ring, use high prio request (Chris)

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/Makefile                |   1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c     | 166 +++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h     |  15 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c |  38 +++++
 drivers/gpu/drm/i915/pxp/intel_pxp_session.h |   1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     |   5 +-
 6 files changed, 225 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index d6d510e4875e..8b605f326039 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -273,6 +273,7 @@ i915-y += i915_perf.o
 # Protected execution platform (PXP) support
 i915-$(CONFIG_DRM_I915_PXP) += \
 	pxp/intel_pxp.o \
+	pxp/intel_pxp_cmd.o \
 	pxp/intel_pxp_session.o \
 	pxp/intel_pxp_tee.o
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
new file mode 100644
index 000000000000..ffab09839cd3
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
@@ -0,0 +1,166 @@
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
+#include "gt/intel_ring.h"
+
+#include "i915_trace.h"
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
+/* stall until prior PXP and MFX/HCP/HUC objects are cmopleted */
+#define MFX_WAIT_PXP \
+	MFX_WAIT | \
+	MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG | \
+	MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG;
+
+static u32 *pxp_emit_session_selection(u32 *cs, u32 idx)
+{
+	*cs++ = MFX_WAIT_PXP;
+
+	/* pxp off */
+	*cs++ = MI_FLUSH_DW;
+	*cs++ = 0;
+	*cs++ = 0;
+
+	/* select session */
+	*cs++ = MI_SET_APPID | MI_SET_APPID_SESSION_ID(idx);
+
+	*cs++ = MFX_WAIT_PXP;
+
+	/* pxp on */
+	*cs++ = MI_FLUSH_DW | MI_FLUSH_DW_DW0_PROTECTED_MEMORY_ENABLE;
+	*cs++ = 0;
+	*cs++ = 0;
+
+	*cs++ = MFX_WAIT_PXP;
+
+	return cs;
+}
+
+static u32 *pxp_emit_inline_termination(u32 *cs)
+{
+	/* session inline termination */
+	*cs++ = CRYPTO_KEY_EXCHANGE;
+	*cs++ = 0;
+
+	return cs;
+}
+
+static u32 *pxp_emit_wait(u32 *cs)
+{
+	/* wait for cmds to go through */
+	*cs++ = MFX_WAIT_PXP;
+	*cs++ = 0;
+
+	return cs;
+}
+
+/*
+ * if we ever need to terminate more than one session, we can submit multiple
+ * selections and terminations back-to-back with a single wait at the end
+ */
+#define SELECTION_LEN 10
+#define TERMINATION_LEN 2
+#define WAIT_LEN 2
+#define __SESSION_TERMINATION_LEN (SELECTION_LEN + TERMINATION_LEN)
+#define SESSION_TERMINATION_LEN(x) (__SESSION_TERMINATION_LEN * (x) + WAIT_LEN)
+
+static struct i915_request *pxp_request_create(struct intel_context *ce)
+{
+	struct i915_request *rq;
+
+	intel_context_enter(ce);
+	rq = __i915_request_create(ce, GFP_KERNEL);
+	intel_context_exit(ce);
+
+	return rq;
+}
+
+static void pxp_request_commit(struct i915_request *rq)
+{
+	struct i915_sched_attr attr = { .priority = I915_PRIORITY_MAX };
+
+	trace_i915_request_add(rq);
+	__i915_request_commit(rq);
+	__i915_request_queue(rq, &attr);
+}
+
+int intel_pxp_submit_session_termination(struct intel_pxp *pxp, u32 id)
+{
+	struct i915_request *rq;
+	struct intel_context *ce = pxp->ce;
+	u32 *cs;
+	int err;
+
+	if (!intel_pxp_is_enabled(pxp))
+		return 0;
+
+	intel_engine_pm_get(ce->engine);
+	mutex_lock(&ce->timeline->mutex);
+
+	rq = pxp_request_create(ce);
+	if (IS_ERR(rq)) {
+		mutex_unlock(&ce->timeline->mutex);
+		err = PTR_ERR(rq);
+		goto out_pm;
+	}
+
+	if (ce->engine->emit_init_breadcrumb) {
+		err = ce->engine->emit_init_breadcrumb(rq);
+		if (err)
+			goto out_rq;
+	}
+
+	cs = intel_ring_begin(rq, SESSION_TERMINATION_LEN(1));
+	if (IS_ERR(cs)) {
+		err = PTR_ERR(cs);
+		goto out_rq;
+	}
+
+	cs = pxp_emit_session_selection(cs, id);
+	cs = pxp_emit_inline_termination(cs);
+	cs = pxp_emit_wait(cs);
+
+	intel_ring_advance(rq, cs);
+
+out_rq:
+	i915_request_get(rq);
+
+	if (unlikely(err))
+		i915_request_set_error_once(rq, err);
+
+	pxp_request_commit(rq);
+
+	mutex_unlock(&ce->timeline->mutex);
+
+	if (!err && i915_request_wait(rq, 0, HZ / 5) < 0)
+		err = -ETIME;
+
+	i915_request_put(rq);
+
+out_pm:
+	intel_engine_pm_put(ce->engine);
+
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
index 6abc59a63e51..ddbfac75686a 100644
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
@@ -80,3 +84,37 @@ int intel_pxp_create_arb_session(struct intel_pxp *pxp)
 
 	return 0;
 }
+
+/**
+ * intel_pxp_arb_terminate_session_with_global_terminate - Terminate the arb hw
+ * session.
+ * @pxp: pointer to pxp struct.
+ *
+ * Return: 0 if terminate is successful, error code otherwise
+ */
+int intel_pxp_arb_terminate_session_with_global_terminate(struct intel_pxp *pxp)
+{
+	int ret;
+	struct intel_gt *gt = pxp_to_gt(pxp);
+
+	lockdep_assert_held(&pxp->mutex);
+
+	pxp->arb_is_in_play = false;
+
+	/* terminate the hw sessions */
+	ret = intel_pxp_submit_session_termination(pxp, ARB_SESSION);
+	if (ret) {
+		drm_err(&gt->i915->drm, "Failed to submit session termination\n");
+		return ret;
+	}
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
index dc3850b372c5..fd9a69248dd8 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -99,7 +99,10 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
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
