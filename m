Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F8B2E7D37
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Dec 2020 00:41:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B48E895C4;
	Wed, 30 Dec 2020 23:41:06 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DECB2894A7
 for <Intel-gfx@lists.freedesktop.org>; Wed, 30 Dec 2020 23:41:02 +0000 (UTC)
IronPort-SDR: HnA0LkrCk7J5SrR2mfc+KgxTvGjRoXcbarqfjNa++aRNpJtBetoVI0IJ2Mt2wOv+3Zi1vwBVNI
 fbSI+OQmMPCw==
X-IronPort-AV: E=McAfee;i="6000,8403,9850"; a="164362536"
X-IronPort-AV: E=Sophos;i="5.78,462,1599548400"; d="scan'208";a="164362536"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2020 15:41:01 -0800
IronPort-SDR: x+Hk+nIRfvx8cRCed1T3mbhGWY2j/o9A38dYRnwdaSXHc5jqBHjYS5/I05ig/HNcUqajHn47mX
 lwxd5Al+n3ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,462,1599548400"; d="scan'208";a="385323023"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by orsmga007.jf.intel.com with ESMTP; 30 Dec 2020 15:41:01 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 30 Dec 2020 15:40:51 -0800
Message-Id: <20201230234100.30104-5-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201230234100.30104-1-sean.z.huang@intel.com>
References: <20201230234100.30104-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v16 04/13] drm/i915/pxp: Create the arbitrary
 session after boot
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

Create the arbitrary session, with the fixed session id 0xf, after
system boot, for the case that application allocates the protected
buffer without establishing any protection session. Because the
hardware requires at least one alive session for protected buffer
creation.  This arbitrary session needs to be re-created after
teardown or power event because hardware encryption key won't be
valid after such cases.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/Makefile                |   1 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c         |   1 +
 drivers/gpu/drm/i915/pxp/intel_pxp.h         |  16 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_arb.c     | 131 +++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_arb.h     |  15 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_context.h |   1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     |  76 +++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h     |   3 +
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h   |  26 ++++
 9 files changed, 270 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_arb.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 57447887d352..2c84f75b41da 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -258,6 +258,7 @@ i915-y += i915_perf.o
 # Protected execution platform (PXP) support
 i915-$(CONFIG_DRM_I915_PXP) += \
 	pxp/intel_pxp.o \
+	pxp/intel_pxp_arb.o \
 	pxp/intel_pxp_context.o \
 	pxp/intel_pxp_tee.o
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index c819f3791ee4..3868e8c697f9 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -6,6 +6,7 @@
 #include "intel_pxp.h"
 #include "intel_pxp_context.h"
 #include "intel_pxp_tee.h"
+#include "intel_pxp_arb.h"
 
 /* KCR register definitions */
 #define KCR_INIT            _MMIO(0x320f0)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index f47bc6bea34f..8fc91e900b16 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -8,6 +8,22 @@
 
 #include "intel_pxp_types.h"
 
+enum pxp_session_types {
+	SESSION_TYPE_TYPE0 = 0,
+	SESSION_TYPE_TYPE1 = 1,
+
+	SESSION_TYPE_MAX
+};
+
+enum pxp_protection_modes {
+	PROTECTION_MODE_NONE = 0,
+	PROTECTION_MODE_LM   = 2,
+	PROTECTION_MODE_HM   = 3,
+	PROTECTION_MODE_SM   = 6,
+
+	PROTECTION_MODE_ALL
+};
+
 #ifdef CONFIG_DRM_I915_PXP
 void intel_pxp_init(struct intel_pxp *pxp);
 void intel_pxp_fini(struct intel_pxp *pxp);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
new file mode 100644
index 000000000000..4df58915af88
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
@@ -0,0 +1,131 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#include "gt/intel_context.h"
+#include "gt/intel_engine_pm.h"
+
+#include "intel_pxp_types.h"
+#include "intel_pxp_arb.h"
+#include "intel_pxp.h"
+#include "intel_pxp_tee.h"
+
+#define GEN12_KCR_SIP _MMIO(0x32260) /* KCR type0 session in play 0-31 */
+
+/* Arbitrary session */
+#define ARB_SESSION_INDEX 0xf
+#define ARB_SESSION_TYPE SESSION_TYPE_TYPE0
+
+static bool is_hw_arb_session_in_play(struct intel_pxp *pxp)
+{
+	u32 regval_sip = 0;
+	intel_wakeref_t wakeref;
+	struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
+
+	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref) {
+		regval_sip = intel_uncore_read(gt->uncore, GEN12_KCR_SIP);
+	}
+
+	return regval_sip & BIT(ARB_SESSION_INDEX);
+}
+
+/* wait hw session_in_play reg to match the current sw state */
+static int wait_arb_hw_sw_state(struct intel_pxp *pxp)
+{
+	const int max_retry = 10;
+	const int ms_delay = 10;
+	int retry = 0;
+	int ret;
+	struct pxp_protected_session *arb = &pxp->ctx.arb_session;
+
+	ret = -EINVAL;
+	for (retry = 0; retry < max_retry; retry++) {
+		if (is_hw_arb_session_in_play(pxp) ==
+		    arb->is_in_play) {
+			ret = 0;
+			break;
+		}
+
+		msleep(ms_delay);
+	}
+
+	return ret;
+}
+
+static void arb_session_entry_init(struct intel_pxp *pxp)
+{
+	struct pxp_protected_session *arb = &pxp->ctx.arb_session;
+
+	arb->type = ARB_SESSION_TYPE;
+	arb->protection_mode = PROTECTION_MODE_HM;
+	arb->index = ARB_SESSION_INDEX;
+	arb->is_in_play = false;
+}
+
+static int intel_pxp_arb_reserve_session(struct intel_pxp *pxp)
+{
+	int ret;
+
+	lockdep_assert_held(&pxp->ctx.mutex);
+
+	arb_session_entry_init(pxp);
+	ret = wait_arb_hw_sw_state(pxp);
+
+	return ret;
+}
+
+/**
+ * intel_pxp_arb_mark_session_in_play - To put an reserved protected session to "in_play" state
+ * @pxp: pointer to pxp struct.
+ *
+ * Return: status. 0 means update is successful.
+ */
+static int intel_pxp_arb_mark_session_in_play(struct intel_pxp *pxp)
+{
+	struct pxp_protected_session *arb = &pxp->ctx.arb_session;
+
+	lockdep_assert_held(&pxp->ctx.mutex);
+
+	if (arb->is_in_play)
+		return -EINVAL;
+
+	arb->is_in_play = true;
+	return 0;
+}
+
+int intel_pxp_arb_create_session(struct intel_pxp *pxp)
+{
+	int ret;
+	struct intel_gt *gt = container_of(pxp, typeof(*gt), pxp);
+
+	lockdep_assert_held(&pxp->ctx.mutex);
+
+	if (pxp->ctx.flag_display_hm_surface_keys) {
+		drm_err(&gt->i915->drm, "%s: arb session is alive so skipping the creation\n",
+			__func__);
+		return 0;
+	}
+
+	ret = intel_pxp_arb_reserve_session(pxp);
+	if (ret) {
+		drm_err(&gt->i915->drm, "Failed to reserve arb session\n");
+		return ret;
+	}
+
+	ret = intel_pxp_tee_cmd_create_arb_session(pxp, ARB_SESSION_INDEX);
+	if (ret) {
+		drm_err(&gt->i915->drm, "Failed to send tee cmd for arb session creation\n");
+		return ret;
+	}
+
+	ret = intel_pxp_arb_mark_session_in_play(pxp);
+	if (ret) {
+		drm_err(&gt->i915->drm, "Failed to mark arb session status in play\n");
+		return ret;
+	}
+
+	pxp->ctx.flag_display_hm_surface_keys = true;
+
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
new file mode 100644
index 000000000000..1eb8db6deb0e
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_ARB_H__
+#define __INTEL_PXP_ARB_H__
+
+#include <linux/types.h>
+
+struct intel_pxp;
+
+int intel_pxp_arb_create_session(struct intel_pxp *pxp);
+
+#endif /* __INTEL_PXP_ARB_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
index f51021c33d45..bf2feb4aaf6d 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
@@ -8,6 +8,7 @@
 
 #include <linux/mutex.h>
 #include "intel_pxp_types.h"
+#include "intel_pxp_arb.h"
 
 void intel_pxp_ctx_init(struct pxp_context *ctx);
 void intel_pxp_ctx_fini(struct pxp_context *ctx);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index ca6b61099aee..7919d41fa42c 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -10,6 +10,32 @@
 #include "intel_pxp.h"
 #include "intel_pxp_context.h"
 #include "intel_pxp_tee.h"
+#include "intel_pxp_arb.h"
+
+#define PXP_TEE_APIVER 0x40002
+#define PXP_TEE_ARB_CMDID 0x1e
+#define PXP_TEE_ARB_PROTECTION_MODE 0x2
+
+/* PXP TEE message header */
+struct pxp_tee_cmd_header {
+	u32 api_version;
+	u32 command_id;
+	u32 status;
+	/* Length of the message (excluding the header) */
+	u32 buffer_len;
+} __packed;
+
+/* PXP TEE message input to create a arbitrary session */
+struct pxp_tee_create_arb_in {
+	struct pxp_tee_cmd_header header;
+	u32 protection_mode;
+	u32 session_id;
+} __packed;
+
+/* PXP TEE message output to create a arbitrary session */
+struct pxp_tee_create_arb_out {
+	struct pxp_tee_cmd_header header;
+} __packed;
 
 static int intel_pxp_tee_io_message(struct intel_pxp *pxp,
 				    void *msg_in, u32 msg_in_size,
@@ -70,7 +96,9 @@ static int intel_pxp_tee_io_message(struct intel_pxp *pxp,
 static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 				       struct device *tee_kdev, void *data)
 {
+	int ret;
 	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
+	struct intel_pxp *pxp = &i915->gt.pxp;
 
 	if (!i915 || !tee_kdev || !data)
 		return -EPERM;
@@ -80,6 +108,16 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 	i915->pxp_tee_master->tee_dev = tee_kdev;
 	mutex_unlock(&i915->pxp_tee_comp_mutex);
 
+	mutex_lock(&pxp->ctx.mutex);
+	/* Create arb session only if tee is ready, during system boot or sleep/resume */
+	ret = intel_pxp_arb_create_session(pxp);
+	mutex_unlock(&pxp->ctx.mutex);
+
+	if (ret) {
+		drm_err(&i915->drm, "Failed to create arb session ret=[%d]\n", ret);
+		return ret;
+	}
+
 	return 0;
 }
 
@@ -130,3 +168,41 @@ void intel_pxp_tee_component_fini(struct intel_pxp *pxp)
 
 	component_del(i915->drm.dev, &i915_pxp_tee_component_ops);
 }
+
+int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
+					 int arb_session_id)
+{
+	int ret;
+	u32 msg_out_size_received = 0;
+	struct pxp_tee_create_arb_in msg_in = {0};
+	struct pxp_tee_create_arb_out msg_out = {0};
+	struct intel_gt *gt = container_of(pxp, typeof(*gt), pxp);
+	struct drm_i915_private *i915 = gt->i915;
+
+	msg_in.header.api_version = PXP_TEE_APIVER;
+	msg_in.header.command_id = PXP_TEE_ARB_CMDID;
+	msg_in.header.buffer_len = sizeof(msg_in) - sizeof(msg_in.header);
+	msg_in.protection_mode = PXP_TEE_ARB_PROTECTION_MODE;
+	msg_in.session_id = arb_session_id;
+
+	mutex_lock(&i915->pxp_tee_comp_mutex);
+
+	ret = intel_pxp_tee_io_message(pxp,
+				       &msg_in,
+				       sizeof(msg_in),
+				       &msg_out, &msg_out_size_received,
+				       sizeof(msg_out));
+
+	mutex_unlock(&i915->pxp_tee_comp_mutex);
+
+	if (ret)
+		drm_err(&i915->drm, "Failed to send tee msg ret=[%d]\n", ret);
+
+	if (msg_out.header.status) {
+		drm_err(&i915->drm, "Failed to receive tee msg status=[%0x08x]\n",
+			msg_out.header.status);
+		ret = -EFAULT;
+	}
+
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
index 4b5e3edb1d9b..c46f9033f709 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
@@ -11,4 +11,7 @@
 void intel_pxp_tee_component_init(struct intel_pxp *pxp);
 void intel_pxp_tee_component_fini(struct intel_pxp *pxp);
 
+int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
+					 int arb_session_id);
+
 #endif /* __INTEL_PXP_TEE_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
index f9b40ea98b1b..287ba1e0ed9d 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -8,12 +8,38 @@
 
 #include <linux/mutex.h>
 
+/**
+ * struct pxp_protected_session - structure to track all active sessions.
+ */
+struct pxp_protected_session {
+	/** @index: Numeric identifier for this protected session */
+	int index;
+	/** @type: Type of session */
+	int type;
+	/** @protection_mode: mode of protection requested */
+	int protection_mode;
+
+	/**
+	 * @is_in_play: indicates whether the session has been established
+	 *              in the HW root of trust if this flag is false, it
+	 *              indicates an application has reserved this session,
+	 *              but has not * established the session in the
+	 *              hardware yet.
+	 */
+	bool is_in_play;
+};
+
 /* struct pxp_context - Represents combined view of driver and logical HW states. */
 struct pxp_context {
 	/** @mutex: mutex to protect the pxp context */
 	struct mutex mutex;
 
 	bool inited;
+
+	struct pxp_protected_session arb_session;
+	u32 arb_session_pxp_tag;
+
+	bool flag_display_hm_surface_keys;
 };
 
 struct intel_pxp {
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
