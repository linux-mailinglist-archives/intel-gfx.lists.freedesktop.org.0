Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8312D548B
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 08:25:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2CFE6E3E3;
	Thu, 10 Dec 2020 07:25:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49ABD6E4B6
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 07:25:10 +0000 (UTC)
IronPort-SDR: Bb7Cw/ETBN1sFVzCLO2WtF8A5flCRygybL5GrqtmGjTFCjagbGCD/dPagabFt8+3MXoew9ofa6
 uptim6bK31qw==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="170701307"
X-IronPort-AV: E=Sophos;i="5.78,407,1599548400"; d="scan'208";a="170701307"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2020 23:25:09 -0800
IronPort-SDR: teV9qMyxU0q2hceSeffSHCXGA4GK0GZGRqhlQzFc2fVF83guHXjszqgUaUIFC0T5zc5mPMC8BL
 y8305wqbx4rQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,407,1599548400"; d="scan'208";a="318867208"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga008.fm.intel.com with ESMTP; 09 Dec 2020 23:25:09 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed,  9 Dec 2020 23:24:28 -0800
Message-Id: <20201210072435.24066-15-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201210072435.24066-1-sean.z.huang@intel.com>
References: <20201210072435.24066-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v4 14/21] drm/i915/pxp: Implement ioctl action to
 reserve session slots
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

With this ioctl action, userspace driver can reserve one or
multiple session slot/id assigned by kernel PXP, as the first
step of PXP session establishment flow. The session info is
stored in the session list structure.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/Makefile                |   1 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c         |  91 +++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h         |  22 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_arb.c     |   2 -
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c     |   3 -
 drivers/gpu/drm/i915/pxp/intel_pxp_context.c |   3 +
 drivers/gpu/drm/i915/pxp/intel_pxp_context.h |   3 +
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c      | 194 +++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h      |  44 +++++
 9 files changed, 358 insertions(+), 5 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 2545b59fa4f2..c96c5ed48e51 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -261,6 +261,7 @@ i915-$(CONFIG_DRM_I915_PXP) += \
 	pxp/intel_pxp_cmd.o \
 	pxp/intel_pxp_context.o \
 	pxp/intel_pxp_pm.o \
+	pxp/intel_pxp_sm.o \
 	pxp/intel_pxp_tee.o
 
 # Post-mortem debug and GPU hang state capture
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index ce3760206b76..e294134fef78 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -7,6 +7,7 @@
 #include "intel_pxp_context.h"
 #include "intel_pxp_tee.h"
 #include "intel_pxp_arb.h"
+#include "intel_pxp_sm.h"
 
 /* KCR register definitions */
 #define KCR_INIT            _MMIO(0x320f0)
@@ -14,6 +15,36 @@
 /* Setting KCR Init bit is required after system boot */
 #define KCR_INIT_ALLOW_DISPLAY_ME_WRITES (BIT(14) | (BIT(14) << KCR_INIT_MASK_SHIFT))
 
+#define PXP_ACTION_SET_SESSION_STATUS 1
+#define PXP_REQ_SESSION_ID_INIT 0
+
+/*
+ * struct pxp_set_session_status_params - Params to reserved, set or destroy
+ * the session from the PXP state machine.
+ */
+struct pxp_set_session_status_params {
+	u32 pxp_tag; /* in [optional], out pxp tag */
+	u32 session_type; /* in, session type */
+	u32 session_mode; /* in, session mode */
+	u32 req_session_state; /* in, new session state */
+};
+
+/* struct pxp_info - Params for PXP operation. */
+struct pxp_info {
+	u32 action; /* in - specified action of this operation */
+	u32 sm_status; /* out - status output for this operation */
+
+	/* in - action params to set the PXP session state */
+	struct pxp_set_session_status_params set_session_status;
+} __attribute__((packed));
+
+struct drm_i915_pxp_ops {
+	/* in - user space pointer to struct pxp_info */
+	struct pxp_info __user *info_ptr;
+	/* in - memory size that info_ptr points to */
+	u32 info_size;
+};
+
 static void intel_pxp_write_irq_mask_reg(struct intel_gt *gt, u32 mask)
 {
 	lockdep_assert_held(&gt->irq_lock);
@@ -152,3 +183,63 @@ bool intel_pxp_gem_object_status(struct drm_i915_private *i915)
 	else
 		return false;
 }
+
+int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmfile)
+{
+	int ret;
+	struct pxp_info pxp_info = {0};
+	struct drm_i915_pxp_ops *pxp_ops = data;
+	struct drm_i915_private *i915 = to_i915(dev);
+	struct intel_pxp *pxp = &i915->gt.pxp;
+
+	if (pxp->ctx.id == 0 || !drmfile || !pxp_ops ||
+	    pxp_ops->info_size != sizeof(pxp_info))
+		return -EINVAL;
+
+	if (copy_from_user(&pxp_info, pxp_ops->info_ptr, sizeof(pxp_info)) != 0)
+		return -EFAULT;
+
+	mutex_lock(&pxp->ctx.mutex);
+
+	if (pxp->ctx.global_state_in_suspend) {
+		drm_err(&i915->drm, "Return failure due to state in suspend\n");
+		pxp_info.sm_status = PXP_SM_STATUS_SESSION_NOT_AVAILABLE;
+		ret = 0;
+		goto end;
+	}
+
+	if (pxp->ctx.global_state_attacked) {
+		drm_err(&i915->drm, "Retry required due to state attacked\n");
+		pxp_info.sm_status = PXP_SM_STATUS_RETRY_REQUIRED;
+		ret = 0;
+		goto end;
+	}
+
+	if (pxp_info.action == PXP_ACTION_SET_SESSION_STATUS) {
+		struct pxp_set_session_status_params *params = &pxp_info.set_session_status;
+
+		if (params->req_session_state == PXP_REQ_SESSION_ID_INIT) {
+			ret = intel_pxp_sm_ioctl_reserve_session(pxp, drmfile,
+								 params->session_type,
+								 params->session_mode,
+								 &params->pxp_tag);
+			if (ret == PXP_SM_STATUS_RETRY_REQUIRED ||
+			    ret == PXP_SM_STATUS_SESSION_NOT_AVAILABLE) {
+				pxp_info.sm_status = ret;
+				ret = 0;
+			}
+		} else {
+			ret = -EINVAL;
+		}
+	} else {
+		ret = -EINVAL;
+	}
+
+end:
+	mutex_unlock(&pxp->ctx.mutex);
+
+	if (ret == 0)
+		if (copy_to_user(pxp_ops->info_ptr, &pxp_info, sizeof(pxp_info)) != 0)
+			ret = -EFAULT;
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 027c0eb84a52..461b9321441f 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -7,12 +7,21 @@
 #define __INTEL_PXP_H__
 
 #include <linux/workqueue.h>
+#include <drm/drm_file.h>
 #include "intel_pxp_context.h"
 
 #define PXP_IRQ_VECTOR_DISPLAY_PXP_STATE_TERMINATED BIT(1)
 #define PXP_IRQ_VECTOR_DISPLAY_APP_TERM_PER_FW_REQ BIT(2)
 #define PXP_IRQ_VECTOR_PXP_DISP_STATE_RESET_COMPLETE BIT(3)
 
+#define GEN12_KCR_SIP _MMIO(0x32260) /* KCR type0 session in play 0-31 */
+
+#define PXP_MAX_TYPE0_SESSIONS 16
+#define PXP_MAX_TYPE1_SESSIONS 6
+
+/* we need to reserve one type0 slot for arbitrary session */
+#define PXP_MAX_NORMAL_TYPE0_SESSIONS (PXP_MAX_TYPE0_SESSIONS - 1)
+
 enum pxp_session_types {
 	SESSION_TYPE_TYPE0 = 0,
 	SESSION_TYPE_TYPE1 = 1,
@@ -29,6 +38,13 @@ enum pxp_protection_modes {
 	PROTECTION_MODE_ALL
 };
 
+enum pxp_sm_status {
+	PXP_SM_STATUS_SUCCESS,
+	PXP_SM_STATUS_RETRY_REQUIRED,
+	PXP_SM_STATUS_SESSION_NOT_AVAILABLE,
+	PXP_SM_STATUS_ERROR_UNKNOWN
+};
+
 struct intel_pxp {
 	struct work_struct irq_work;
 	u32 handled_irr;
@@ -47,6 +63,7 @@ int i915_pxp_global_terminate_complete_callback(struct intel_pxp *pxp);
 int intel_pxp_init(struct intel_pxp *pxp);
 void intel_pxp_uninit(struct intel_pxp *pxp);
 bool intel_pxp_gem_object_status(struct drm_i915_private *i915);
+int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmfile);
 #else
 static inline void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
 {
@@ -75,6 +92,11 @@ static inline bool intel_pxp_gem_object_status(struct drm_i915_private *i915)
 {
 	return false;
 }
+
+static inline int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmfile)
+{
+	return 0;
+}
 #endif
 
 #endif /* __INTEL_PXP_PM_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
index 09148ca9035c..286bb5b16632 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
@@ -12,8 +12,6 @@
 #include "intel_pxp_tee.h"
 #include "intel_pxp_cmd.h"
 
-#define GEN12_KCR_SIP _MMIO(0x32260) /* KCR type0 session in play 0-31 */
-
 /* Arbitrary session */
 #define ARB_SESSION_INDEX 0xf
 #define ARB_SESSION_TYPE SESSION_TYPE_TYPE0
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
index 079024d5f063..17ff6bd61d20 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
@@ -24,9 +24,6 @@
 /* CRYPTO_KEY_EXCHANGE */
 #define CRYPTO_KEY_EXCHANGE ((0x3 << 29) | (0x01609 << 16))
 
-#define PXP_MAX_TYPE0_SESSIONS 16
-#define PXP_MAX_TYPE1_SESSIONS 6
-
 static struct i915_vma *intel_pxp_cmd_get_batch(struct intel_pxp *pxp,
 						struct intel_context *ce,
 						struct intel_gt_buffer_pool_node *pool,
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.c b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
index d00f4e0b88ba..f690c1470bd5 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
@@ -17,6 +17,9 @@ void intel_pxp_ctx_init(struct pxp_context *ctx)
 	ctx->global_state_attacked = false;
 
 	mutex_init(&ctx->mutex);
+
+	INIT_LIST_HEAD(&ctx->type0_sessions);
+	INIT_LIST_HEAD(&ctx->type1_sessions);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
index f03cba187c75..e8adafa58a0e 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
@@ -16,6 +16,9 @@ struct pxp_context {
 	void *arb_session;
 	u32 arb_session_pxp_tag;
 
+	struct list_head type0_sessions;
+	struct list_head type1_sessions;
+
 	int id;
 
 	bool global_state_attacked;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
new file mode 100644
index 000000000000..a68316be1bfd
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
@@ -0,0 +1,194 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+#include "gt/intel_context.h"
+#include "gt/intel_engine_pm.h"
+#include "intel_pxp_sm.h"
+#include "intel_pxp.h"
+
+#define KCR_STATUS_1   _MMIO(0x320f4)
+#define KCR_STATUS_1_ATTACK_MASK 0x80000000
+
+#define GEN12_KCR_TSIP _MMIO(0x32264) /* KCR type1 session in play 0-63 */
+
+static inline int session_max(int session_type)
+{
+	return (session_type == SESSION_TYPE_TYPE0) ?
+		PXP_MAX_NORMAL_TYPE0_SESSIONS : PXP_MAX_TYPE1_SESSIONS;
+}
+
+static inline struct list_head *session_list(struct intel_pxp *pxp,
+					     int session_type)
+{
+	return (session_type == SESSION_TYPE_TYPE0) ?
+		&pxp->ctx.type0_sessions : &pxp->ctx.type1_sessions;
+}
+
+/**
+ * is_sw_session_active - Check if the given sw session id is active.
+ * @pxp: pointer to pxp struct
+ * @session_type: Specified session type
+ * @session_index: Numeric session identifier.
+ * @is_in_play: Set false to return true if the specified session is active.
+ *              Set true to also check if the session is active and in_play.
+ *
+ * The caller needs to use mutex lock to protect the session list
+ * inside this function.
+ *
+ * Return : true if session with the same identifier is active (and in_play).
+ */
+static bool is_sw_session_active(struct intel_pxp *pxp, int session_type,
+				 int session_index, bool is_in_play)
+{
+	struct intel_pxp_sm_session *curr;
+
+	lockdep_assert_held(&pxp->ctx.mutex);
+
+	list_for_each_entry(curr, session_list(pxp, session_type), list) {
+		if (curr->index == session_index) {
+			if (is_in_play && !curr->is_in_play)
+				return false;
+			return true;
+		}
+	}
+
+	return false;
+}
+
+static bool is_hw_session_in_play(struct intel_pxp *pxp,
+				  int session_type, int session_index)
+{
+	u64 regval_sip = 0;
+	intel_wakeref_t wakeref;
+	struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
+
+	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref) {
+		if (session_type == SESSION_TYPE_TYPE0)
+			regval_sip = intel_uncore_read(gt->uncore, GEN12_KCR_SIP);
+		else
+			regval_sip = intel_uncore_read64(gt->uncore, GEN12_KCR_TSIP);
+	}
+
+	return regval_sip & BIT(session_index);
+}
+
+/* wait hw session_in_play reg to match the current sw state */
+static int wait_hw_sw_state(struct intel_pxp *pxp, int session_index, int session_type)
+{
+	const int max_retry = 10;
+	int retry = 0;
+
+	for (retry = 0; retry < max_retry; retry++) {
+		if (is_hw_session_in_play(pxp, session_type, session_index) ==
+		    is_sw_session_active(pxp, session_type, session_index, true))
+			return 0;
+
+		msleep(10);
+	}
+	return -EINVAL;
+}
+
+/**
+ * is_type0_session_attacked - To check if type0 active sessions are attacked.
+ * @pxp: pointer pxp struct
+ *
+ * Return: true if hardware sessions is attacked, false otherwise.
+ */
+static bool is_type0_session_attacked(struct intel_pxp *pxp)
+{
+	u32 regval = 0;
+	intel_wakeref_t wakeref;
+	struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
+
+	if (pxp->ctx.global_state_attacked)
+		return true;
+
+	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
+		regval = intel_uncore_read(gt->uncore, KCR_STATUS_1);
+
+	return regval & KCR_STATUS_1_ATTACK_MASK;
+}
+
+/**
+ * create_session_entry - Create a new session entry with provided info.
+ * @pxp: pointer to pxp struct
+ * @drmfile: pointer to drm_file
+ * @context_id: Numeric identifier of the context created by the caller.
+ * @session_type: Type of the session requested. One of enum pxp_session_types.
+ * @protection_mode: Type of protection requested for the session.
+ *                   One of the enum pxp_protection_modes.
+ * @session_index: Numeric session identifier.
+ *
+ * Return: status. 0 means creation is successful.
+ */
+static int create_session_entry(struct intel_pxp *pxp, struct drm_file *drmfile,
+				int context_id, int session_type, int protection_mode,
+				int session_index)
+{
+	struct intel_pxp_sm_session *session = NULL;
+	int pid = 0;
+
+	if (drmfile)
+		pid = pid_nr(drmfile->pid);
+
+	session = kzalloc(sizeof(*session), GFP_KERNEL);
+	if (!session)
+		return -ENOMEM;
+
+	session->context_id = context_id;
+	session->type = session_type;
+	session->protection_mode = protection_mode;
+	session->index = session_index;
+	session->is_in_play = false;
+	session->drmfile = drmfile;
+	session->pid = pid;
+
+	list_add(&session->list, session_list(pxp, session_type));
+	return 0;
+}
+
+/**
+ * intel_pxp_sm_ioctl_reserve_session - To reserve an available protected session.
+ * @pxp: pointer to pxp struct
+ * @drmfile: pointer to drm_file.
+ * @session_type: Type of the session requested. One of enum pxp_session_types.
+ * @protection_mode: Type of protection requested for the session. One of the
+ *                   enum pxp_protection_modes.
+ * @pxp_tag: Numeric session identifier returned back to caller.
+ *
+ * Return: status. 0 means reserve is successful.
+ */
+int intel_pxp_sm_ioctl_reserve_session(struct intel_pxp *pxp, struct drm_file *drmfile,
+				       int session_type, int protection_mode,
+				       u32 *pxp_tag)
+{
+	int ret;
+	int idx = 0;
+
+	if (!drmfile || !pxp_tag)
+		return -EINVAL;
+
+	lockdep_assert_held(&pxp->ctx.mutex);
+
+	/* check if sessions are under attack. if so, don't allow creation */
+	if (session_type == SESSION_TYPE_TYPE0 &&
+	    is_type0_session_attacked(pxp))
+		return -EPERM;
+
+	for (idx = 0; idx < session_max(session_type); idx++) {
+		if (!is_sw_session_active(pxp, session_type, idx, false)) {
+			ret = wait_hw_sw_state(pxp, idx, session_type);
+			if (ret)
+				return PXP_SM_STATUS_RETRY_REQUIRED;
+
+			ret = create_session_entry(pxp, drmfile, pxp->ctx.id,
+						   session_type,
+						   protection_mode, idx);
+			*pxp_tag = idx;
+			return ret;
+		}
+	}
+
+	return PXP_SM_STATUS_SESSION_NOT_AVAILABLE;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
new file mode 100644
index 000000000000..1d7916867ce6
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
@@ -0,0 +1,44 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_SM_H__
+#define __INTEL_PXP_SM_H__
+
+struct intel_pxp;
+struct drm_file;
+
+/**
+ * struct pxp_protected_session - linked list to track all active sessions.
+ */
+struct intel_pxp_sm_session {
+	/** @list: linked list infrastructure, do not change its order. */
+	struct list_head list;
+	/** @index: Numeric identifier for this protected session */
+	int index;
+	/** @type: Type of session */
+	int type;
+	/** @protection_mode: mode of protection requested */
+	int protection_mode;
+	/** @context_id: context identifier of the protected session requestor */
+	int context_id;
+	/** @pid: pid of this session's creator */
+	int pid;
+	/** @drmfile: pointer to drm_file, which is allocated on device file open() call */
+	struct drm_file *drmfile;
+
+	/**
+	 * @is_in_play: indicates whether the session has been established
+	 *              in the HW root of trust if this flag is false, it
+	 *              indicates an application has reserved this session,
+	 *              but has not established the session in the hardware
+	 *              yet.
+	 */
+	bool is_in_play;
+};
+
+int intel_pxp_sm_ioctl_reserve_session(struct intel_pxp *pxp, struct drm_file *drmfile,
+				       int session_type, int protection_mode,
+				       u32 *pxp_tag);
+#endif /* __INTEL_PXP_SM_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
