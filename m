Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A95582FB361
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 08:43:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EFBA6E82F;
	Tue, 19 Jan 2021 07:43:28 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4A5D6E827
 for <Intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 07:43:24 +0000 (UTC)
IronPort-SDR: MS0X/y/tJjmaD3lgmjQtPrfMM5L+fv++TZyu4GGchL3hrfsT6yGmzCCG5Ak1Ap0HGl5/f+HE6m
 p36nAkAxRK4g==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="197592807"
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="197592807"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 23:43:23 -0800
IronPort-SDR: hlMP4gaX795wk0803yyiyKuRkh3xYNZh/VX4HcNCjQOW46MwK6+nwbsv0mF4QEsztpBlbpRpeq
 Kp3jQK4ZdNsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="466592732"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga001.fm.intel.com with ESMTP; 18 Jan 2021 23:43:23 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 18 Jan 2021 23:43:11 -0800
Message-Id: <20210119074320.28768-5-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210119074320.28768-1-sean.z.huang@intel.com>
References: <20210119074320.28768-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v23 04/13] drm/i915/pxp: Create the arbitrary
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
Cc: kumar.gaurav@intel.com
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

rev21:
    - Rename SESSION_TYPE_TYPE0, SESSION_TYPE_TYPE1 as SESSION_TYPE_HWDRM,
      SESSION_TYPE_NONHWDRM to have better meaning.
    - Remove enum pxp_session_types and enum pxp_protection_modes from
      single session patch series.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/Makefile                |   1 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c         |   1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_arb.c     | 122 +++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_arb.h     |  16 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_context.h |   1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     |  73 +++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h     |   3 +
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h   |   4 +
 8 files changed, 221 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_arb.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 07bb0400e016..e3b7f6b5dadb 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -268,6 +268,7 @@ i915-y += i915_perf.o
 # Protected execution platform (PXP) support
 i915-$(CONFIG_DRM_I915_PXP) += \
 	pxp/intel_pxp.o \
+	pxp/intel_pxp_arb.o \
 	pxp/intel_pxp_context.o \
 	pxp/intel_pxp_tee.o
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 81cf845d1b94..4f033907564a 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -6,6 +6,7 @@
 #include "intel_pxp.h"
 #include "intel_pxp_context.h"
 #include "intel_pxp_tee.h"
+#include "intel_pxp_arb.h"
 
 /* KCR register definitions */
 #define KCR_INIT            _MMIO(0x320f0)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
new file mode 100644
index 000000000000..dd98ca407e78
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
@@ -0,0 +1,122 @@
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
+#define GEN12_KCR_SIP _MMIO(0x32260) /* KCR hwdrm session in play 0-31 */
+
+/* Arbitrary session */
+#define ARB_SESSION_INDEX 0xf
+
+bool intel_pxp_arb_session_is_in_play(struct intel_pxp *pxp)
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
+
+	ret = -EINVAL;
+	for (retry = 0; retry < max_retry; retry++) {
+		if (intel_pxp_arb_session_is_in_play(pxp) ==
+		    pxp->ctx.arb_is_in_play) {
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
+	pxp->ctx.arb_is_in_play = false;
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
+	lockdep_assert_held(&pxp->ctx.mutex);
+
+	if (pxp->ctx.arb_is_in_play)
+		return -EINVAL;
+
+	pxp->ctx.arb_is_in_play = true;
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
index 000000000000..2196153dd879
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
@@ -0,0 +1,16 @@
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
+bool intel_pxp_arb_session_is_in_play(struct intel_pxp *pxp);
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
index e7edd4e1d5b4..4dd33ffb8373 100644
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
@@ -62,7 +88,9 @@ static int intel_pxp_tee_io_message(struct intel_pxp *pxp,
 static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 				       struct device *tee_kdev, void *data)
 {
+	int ret = 0;
 	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
+	struct intel_pxp *pxp = &i915->gt.pxp;
 
 	if (!i915 || !tee_kdev || !data)
 		return -EPERM;
@@ -72,6 +100,19 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 	i915->pxp_tee_master->tee_dev = tee_kdev;
 	mutex_unlock(&i915->pxp_tee_comp_mutex);
 
+	mutex_lock(&pxp->ctx.mutex);
+
+	/* Create arb session only if tee is ready, during system boot or sleep/resume */
+	if (!intel_pxp_arb_session_is_in_play(pxp))
+		ret = intel_pxp_arb_create_session(pxp);
+
+	mutex_unlock(&pxp->ctx.mutex);
+
+	if (ret) {
+		drm_err(&i915->drm, "Failed to create arb session ret=[%d]\n", ret);
+		return ret;
+	}
+
 	return 0;
 }
 
@@ -127,3 +168,35 @@ void intel_pxp_tee_component_fini(struct intel_pxp *pxp)
 
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
index f9b40ea98b1b..e2bd320302c2 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -14,6 +14,10 @@ struct pxp_context {
 	struct mutex mutex;
 
 	bool inited;
+
+	bool arb_is_in_play;
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
