Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D014A31182B
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Feb 2021 03:10:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAD786F54D;
	Sat,  6 Feb 2021 02:10:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6694D6F54D
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Feb 2021 02:10:40 +0000 (UTC)
IronPort-SDR: AMiervS9yFl+M4fk0W62YvdzxBmXLMyCodpykjb3cbFXe87FP7vRp1kalk5ljpZceiJtMyxH3d
 eBfEIwXY62/Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9886"; a="181577461"
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="181577461"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 18:10:40 -0800
IronPort-SDR: Ha7JWSruoQxQn1LqkQAO7YH0M2eO29TeixZe04KvmoSRqrV0Ljst2tcN3Qym8ox2oji4LEv9Ks
 4AilldhG7MwA==
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="394141390"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 18:10:39 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Feb 2021 18:09:18 -0800
Message-Id: <20210206020925.36729-8-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
References: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 07/14] drm/i915/pxp: Create the arbitrary session
 after boot
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

Create the arbitrary session, with the fixed session id 0xf, after
system boot, for the case that application allocates the protected
buffer without establishing any protection session. Because the
hardware requires at least one alive session for protected buffer
creation. This arbitrary session will need to be re-created after
teardown or power event because hardware encryption key won't be
valid after such cases.

The session ID is exposed as part of the uapi so it can be used as part
of userspace commands.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/Makefile                |   1 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c         |   2 +
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c |  82 +++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_session.h |  16 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     | 104 +++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h     |   3 +
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h   |   6 ++
 include/uapi/drm/i915_drm.h                  |   4 +
 8 files changed, 218 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_session.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_session.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index f0ba95a2e4fc..8519abcf6515 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -271,6 +271,7 @@ i915-y += i915_perf.o
 # Protected execution platform (PXP) support
 i915-$(CONFIG_DRM_I915_PXP) += \
 	pxp/intel_pxp.o \
+	pxp/intel_pxp_session.o \
 	pxp/intel_pxp_tee.o
 
 # Post-mortem debug and GPU hang state capture
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 3f3eeadb7931..916187a0e566 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -62,6 +62,8 @@ void intel_pxp_init(struct intel_pxp *pxp)
 	if (!HAS_PXP(gt->i915))
 		return;
 
+	mutex_init(&pxp->mutex);
+
 	kcr_pxp_enable(gt);
 
 	ret = create_vcs_context(pxp);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
new file mode 100644
index 000000000000..1ee608341b7a
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
@@ -0,0 +1,82 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#include "drm/i915_drm.h"
+#include "i915_drv.h"
+
+#include "intel_pxp.h"
+#include "intel_pxp_session.h"
+#include "intel_pxp_tee.h"
+#include "intel_pxp_types.h"
+
+#define ARB_SESSION I915_PROTECTED_CONTENT_DEFAULT_SESSION /* shorter define */
+
+#define GEN12_KCR_SIP _MMIO(0x32260) /* KCR hwdrm session in play 0-31 */
+
+static bool intel_pxp_session_is_in_play(struct intel_pxp *pxp, u32 id)
+{
+	struct intel_gt *gt = pxp_to_gt(pxp);
+	intel_wakeref_t wakeref;
+	u32 sip = 0;
+
+	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
+		sip = intel_uncore_read(gt->uncore, GEN12_KCR_SIP);
+
+	return sip & BIT(id);
+}
+
+bool intel_pxp_arb_session_is_in_play(struct intel_pxp *pxp)
+{
+	return intel_pxp_session_is_in_play(pxp, ARB_SESSION);
+}
+
+static int pxp_wait_for_session_state(struct intel_pxp *pxp, u32 id, bool in_play)
+{
+	struct intel_gt *gt = pxp_to_gt(pxp);
+	intel_wakeref_t wakeref;
+	u32 mask = BIT(id);
+	int ret;
+
+	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
+		ret = intel_wait_for_register(gt->uncore,
+					      GEN12_KCR_SIP,
+					      mask,
+					      in_play ? mask : 0,
+					      100);
+
+	return ret;
+}
+
+int intel_pxp_create_arb_session(struct intel_pxp *pxp)
+{
+	struct intel_gt *gt = pxp_to_gt(pxp);
+	int ret;
+
+	lockdep_assert_held(&pxp->mutex);
+
+	pxp->arb_is_in_play = false;
+
+	if (intel_pxp_session_is_in_play(pxp, ARB_SESSION)) {
+		drm_err(&gt->i915->drm, "arb session already in play at creation time\n");
+		pxp->arb_is_in_play = true;
+		return -EEXIST;
+	}
+
+	ret = intel_pxp_tee_cmd_create_arb_session(pxp, ARB_SESSION);
+	if (ret) {
+		drm_err(&gt->i915->drm, "tee cmd for arb session creation failed\n");
+		return ret;
+	}
+
+	ret = pxp_wait_for_session_state(pxp, ARB_SESSION, true);
+	if (ret) {
+		drm_err(&gt->i915->drm, "arb session failed to go in play\n");
+		return ret;
+	}
+
+	pxp->arb_is_in_play = true;
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.h b/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
new file mode 100644
index 000000000000..6fc4a2370c44
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_SESSION_H__
+#define __INTEL_PXP_SESSION_H__
+
+#include <linux/types.h>
+
+struct intel_pxp;
+
+bool intel_pxp_arb_session_is_in_play(struct intel_pxp *pxp);
+int intel_pxp_create_arb_session(struct intel_pxp *pxp);
+
+#endif /* __INTEL_PXP_SESSION_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 1d2b8c346161..700709f323f7 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -8,8 +8,68 @@
 #include "drm/i915_component.h"
 #include "i915_drv.h"
 #include "intel_pxp.h"
+#include "intel_pxp_session.h"
 #include "intel_pxp_tee.h"
 
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
+
+static int intel_pxp_tee_io_message(struct intel_pxp *pxp,
+				    void *msg_in, u32 msg_in_size,
+				    void *msg_out, u32 msg_out_max_size,
+				    u32 *msg_out_rcv_size)
+{
+	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
+	struct i915_pxp_comp_master *pxp_tee_master = i915->pxp_tee_master;
+	int ret;
+
+	lockdep_assert_held(&i915->pxp_tee_comp_mutex);
+
+	ret = pxp_tee_master->ops->send(pxp_tee_master->tee_dev, msg_in, msg_in_size);
+	if (ret) {
+		drm_err(&i915->drm, "Failed to send TEE message\n");
+		return ret;
+	}
+
+	ret = pxp_tee_master->ops->recv(pxp_tee_master->tee_dev, msg_out, msg_out_max_size);
+	if (ret < 0) {
+		drm_err(&i915->drm, "Failed to receive TEE message\n");
+		return ret;
+	}
+
+	if (ret > msg_out_max_size) {
+		drm_err(&i915->drm, "Failed to receive TEE message due to unexpected output size\n");
+		return -ENOSPC;
+	}
+
+	if (msg_out_rcv_size)
+		*msg_out_rcv_size = ret;
+
+	return 0;
+}
+
 /**
  * i915_pxp_tee_component_bind - bind funciton to pass the function pointers to pxp_tee
  * @i915_kdev: pointer to i915 kernel device
@@ -23,13 +83,28 @@
 static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 				       struct device *tee_kdev, void *data)
 {
+	int ret = 0;
 	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
+	struct intel_pxp *pxp = &i915->gt.pxp;
 
 	mutex_lock(&i915->pxp_tee_comp_mutex);
 	i915->pxp_tee_master = (struct i915_pxp_comp_master *)data;
 	i915->pxp_tee_master->tee_dev = tee_kdev;
 	mutex_unlock(&i915->pxp_tee_comp_mutex);
 
+	mutex_lock(&pxp->mutex);
+
+	/* Create arb session only if tee is ready, during system boot or sleep/resume */
+	if (!intel_pxp_arb_session_is_in_play(pxp))
+		ret = intel_pxp_create_arb_session(pxp);
+
+	mutex_unlock(&pxp->mutex);
+
+	if (ret) {
+		drm_err(&i915->drm, "Failed to create arb session ret=[%d]\n", ret);
+		return ret;
+	}
+
 	return 0;
 }
 
@@ -84,3 +159,32 @@ void intel_pxp_tee_component_fini(struct intel_pxp *pxp)
 
 	component_del(i915->drm.dev, &i915_pxp_tee_component_ops);
 }
+
+int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
+					 int arb_session_id)
+{
+	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
+	struct pxp_tee_create_arb_in msg_in = {0};
+	struct pxp_tee_create_arb_out msg_out = {0};
+	int ret;
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
+				       &msg_in, sizeof(msg_in),
+				       &msg_out, sizeof(msg_out),
+				       NULL);
+
+	mutex_unlock(&i915->pxp_tee_comp_mutex);
+
+	if (ret)
+		drm_err(&i915->drm, "Failed to send tee msg ret=[%d]\n", ret);
+
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
index 23d050a5d3e7..c136053ce340 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
@@ -11,4 +11,7 @@
 int intel_pxp_tee_component_init(struct intel_pxp *pxp);
 void intel_pxp_tee_component_fini(struct intel_pxp *pxp);
 
+int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
+					 int arb_session_id);
+
 #endif /* __INTEL_PXP_TEE_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
index bd12c520e60a..30a6013b5d95 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -6,10 +6,16 @@
 #ifndef __INTEL_PXP_TYPES_H__
 #define __INTEL_PXP_TYPES_H__
 
+#include <linux/types.h>
+#include <linux/mutex.h>
+
 struct intel_context;
 
 struct intel_pxp {
 	struct intel_context *ce;
+
+	struct mutex mutex;
+	bool arb_is_in_play;
 };
 
 #endif /* __INTEL_PXP_TYPES_H__ */
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 1987e2ea79a3..56c6bfe6c2d0 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2376,6 +2376,10 @@ struct drm_i915_query_perf_config {
 	__u8 data[];
 };
 
+
+/* ID of the protected content session managed by i915 when PXP is active */
+#define I915_PROTECTED_CONTENT_DEFAULT_SESSION 0xf
+
 #if defined(__cplusplus)
 }
 #endif
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
