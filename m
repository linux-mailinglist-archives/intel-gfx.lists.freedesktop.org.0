Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD01413E80
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 02:15:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B3716E947;
	Wed, 22 Sep 2021 00:15:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1725D6E940
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Sep 2021 00:15:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="220292681"
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="220292681"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 17:15:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="613200262"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga001.fm.intel.com with ESMTP; 21 Sep 2021 17:15:00 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: "Huang, Sean Z" <sean.z.huang@intel.com>, Huang@freedesktop.org,
	Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
	Chris Wilson <chris@chris-wilson.co.uk>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Tue, 21 Sep 2021 17:15:21 -0700
Message-Id: <20210922001531.399533-8-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210922001531.399533-1-alan.previn.teres.alexis@intel.com>
References: <20210922001531.399533-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v11 07/17] drm/i915/pxp: Create the arbitrary
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

v2: use gt->uncore->rpm (Chris)
v3: s/arb_is_in_play/arb_is_valid (Chris), move set-up to the new
    init_hw function
v4: move interface defs to separate header, set arb_is valid to false
    on fini (Rodrigo)
v5: handle async component binding

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c          | 12 +++
 drivers/gpu/drm/i915/pxp/intel_pxp.h          |  2 +
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c  | 74 ++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_session.h  | 15 ++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 87 +++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h      |  3 +
 .../drm/i915/pxp/intel_pxp_tee_interface.h    | 36 ++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h    | 10 +++
 include/uapi/drm/i915_drm.h                   |  3 +
 10 files changed, 243 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_session.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_session.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 5f1734ff3d26..334efd835cd8 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -283,6 +283,7 @@ i915-y += i915_perf.o
 # Protected execution platform (PXP) support
 i915-$(CONFIG_DRM_I915_PXP) += \
 	pxp/intel_pxp.o \
+	pxp/intel_pxp_session.o \
 	pxp/intel_pxp_tee.o
 
 # Post-mortem debug and GPU hang state capture
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index ebbc6923c7ad..54ad5e3d0df2 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -3,6 +3,7 @@
  * Copyright(c) 2020 Intel Corporation.
  */
 #include "intel_pxp.h"
+#include "intel_pxp_session.h"
 #include "intel_pxp_tee.h"
 #include "gt/intel_context.h"
 #include "i915_drv.h"
@@ -12,6 +13,11 @@ struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
 	return container_of(pxp, struct intel_gt, pxp);
 }
 
+bool intel_pxp_is_active(const struct intel_pxp *pxp)
+{
+	return pxp->arb_is_valid;
+}
+
 /* KCR register definitions */
 #define KCR_INIT _MMIO(0x320f0)
 /* Setting KCR Init bit is required after system boot */
@@ -71,6 +77,8 @@ void intel_pxp_init(struct intel_pxp *pxp)
 	if (!HAS_PXP(gt->i915))
 		return;
 
+	mutex_init(&pxp->tee_mutex);
+
 	ret = create_vcs_context(pxp);
 	if (ret)
 		return;
@@ -92,6 +100,8 @@ void intel_pxp_fini(struct intel_pxp *pxp)
 	if (!intel_pxp_is_enabled(pxp))
 		return;
 
+	pxp->arb_is_valid = false;
+
 	intel_pxp_tee_component_fini(pxp);
 
 	destroy_vcs_context(pxp);
@@ -100,6 +110,8 @@ void intel_pxp_fini(struct intel_pxp *pxp)
 void intel_pxp_init_hw(struct intel_pxp *pxp)
 {
 	kcr_pxp_enable(pxp_to_gt(pxp));
+
+	intel_pxp_create_arb_session(pxp);
 }
 
 void intel_pxp_fini_hw(struct intel_pxp *pxp)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index cd6560b2605c..2960e8338c82 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -15,6 +15,8 @@ static inline bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
 
 #ifdef CONFIG_DRM_I915_PXP
 struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
+bool intel_pxp_is_active(const struct intel_pxp *pxp);
+
 void intel_pxp_init(struct intel_pxp *pxp);
 void intel_pxp_fini(struct intel_pxp *pxp);
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
new file mode 100644
index 000000000000..3331868f354c
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
@@ -0,0 +1,74 @@
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
+	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
+		sip = intel_uncore_read(gt->uncore, GEN12_KCR_SIP);
+
+	return sip & BIT(id);
+}
+
+static int pxp_wait_for_session_state(struct intel_pxp *pxp, u32 id, bool in_play)
+{
+	struct intel_gt *gt = pxp_to_gt(pxp);
+	intel_wakeref_t wakeref;
+	u32 mask = BIT(id);
+	int ret;
+
+	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
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
+	pxp->arb_is_valid = false;
+
+	if (intel_pxp_session_is_in_play(pxp, ARB_SESSION)) {
+		drm_err(&gt->i915->drm, "arb session already in play at creation time\n");
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
+	pxp->arb_is_valid = true;
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.h b/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
new file mode 100644
index 000000000000..316c3bebed9c
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
@@ -0,0 +1,15 @@
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
+int intel_pxp_create_arb_session(struct intel_pxp *pxp);
+
+#endif /* __INTEL_PXP_SESSION_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 0c0c7946e6a0..accbbf9aa6d1 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -8,13 +8,63 @@
 #include "drm/i915_component.h"
 #include "i915_drv.h"
 #include "intel_pxp.h"
+#include "intel_pxp_session.h"
 #include "intel_pxp_tee.h"
+#include "intel_pxp_tee_interface.h"
 
 static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
 {
 	return &kdev_to_i915(i915_kdev)->gt.pxp;
 }
 
+static int intel_pxp_tee_io_message(struct intel_pxp *pxp,
+				    void *msg_in, u32 msg_in_size,
+				    void *msg_out, u32 msg_out_max_size,
+				    u32 *msg_out_rcv_size)
+{
+	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
+	struct i915_pxp_component *pxp_component = pxp->pxp_component;
+	int ret = 0;
+
+	mutex_lock(&pxp->tee_mutex);
+
+	/*
+	 * The binding of the component is asynchronous from i915 probe, so we
+	 * can't be sure it has happened.
+	 */
+	if (!pxp_component) {
+		ret = -ENODEV;
+		goto unlock;
+	}
+
+	ret = pxp_component->ops->send(pxp_component->tee_dev, msg_in, msg_in_size);
+	if (ret) {
+		drm_err(&i915->drm, "Failed to send PXP TEE message\n");
+		goto unlock;
+	}
+
+	ret = pxp_component->ops->recv(pxp_component->tee_dev, msg_out, msg_out_max_size);
+	if (ret < 0) {
+		drm_err(&i915->drm, "Failed to receive PXP TEE message\n");
+		goto unlock;
+	}
+
+	if (ret > msg_out_max_size) {
+		drm_err(&i915->drm,
+			"Failed to receive PXP TEE message due to unexpected output size\n");
+		ret = -ENOSPC;
+		goto unlock;
+	}
+
+	if (msg_out_rcv_size)
+		*msg_out_rcv_size = ret;
+
+	ret = 0;
+unlock:
+	mutex_unlock(&pxp->tee_mutex);
+	return ret;
+}
+
 /**
  * i915_pxp_tee_component_bind - bind function to pass the function pointers to pxp_tee
  * @i915_kdev: pointer to i915 kernel device
@@ -28,14 +78,24 @@ static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
 static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 				       struct device *tee_kdev, void *data)
 {
+	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
 	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
 
+	mutex_lock(&pxp->tee_mutex);
 	pxp->pxp_component = data;
 	pxp->pxp_component->tee_dev = tee_kdev;
+	mutex_unlock(&pxp->tee_mutex);
 
 	/* the component is required to fully start the PXP HW */
 	intel_pxp_init_hw(pxp);
 
+	if (!pxp->arb_is_valid) {
+		drm_err(&i915->drm, "Failed to create arb session during bind\n");
+		intel_pxp_fini_hw(pxp);
+		pxp->pxp_component = NULL;
+		return -EIO;
+	}
+
 	return 0;
 }
 
@@ -46,7 +106,9 @@ static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
 
 	intel_pxp_fini_hw(pxp);
 
+	mutex_lock(&pxp->tee_mutex);
 	pxp->pxp_component = NULL;
+	mutex_unlock(&pxp->tee_mutex);
 }
 
 static const struct component_ops i915_pxp_tee_component_ops = {
@@ -82,3 +144,28 @@ void intel_pxp_tee_component_fini(struct intel_pxp *pxp)
 	component_del(i915->drm.dev, &i915_pxp_tee_component_ops);
 	pxp->pxp_component_added = false;
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
+	ret = intel_pxp_tee_io_message(pxp,
+				       &msg_in, sizeof(msg_in),
+				       &msg_out, sizeof(msg_out),
+				       NULL);
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
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h b/drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h
new file mode 100644
index 000000000000..36e9b0868f5c
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_TEE_INTERFACE_H__
+#define __INTEL_PXP_TEE_INTERFACE_H__
+
+#include <linux/types.h>
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
+
+#endif /* __INTEL_PXP_TEE_INTERFACE_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
index 3a8e17e591bd..d393e46a7d98 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -6,6 +6,7 @@
 #ifndef __INTEL_PXP_TYPES_H__
 #define __INTEL_PXP_TYPES_H__
 
+#include <linux/mutex.h>
 #include <linux/types.h>
 
 struct intel_context;
@@ -16,6 +17,15 @@ struct intel_pxp {
 	bool pxp_component_added;
 
 	struct intel_context *ce;
+
+	/*
+	 * After a teardown, the arb session can still be in play on the HW
+	 * even if the keys are gone, so we can't rely on the HW state of the
+	 * session to know if it's valid and need to track the status in SW.
+	 */
+	bool arb_is_valid;
+
+	struct mutex tee_mutex; /* protects the tee channel binding */
 };
 
 #endif /* __INTEL_PXP_TYPES_H__ */
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index bde5860b3686..920e9e852e5a 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -3038,6 +3038,9 @@ struct drm_i915_gem_create_ext_memory_regions {
 	__u64 regions;
 };
 
+/* ID of the protected content session managed by i915 when PXP is active */
+#define I915_PROTECTED_CONTENT_DEFAULT_SESSION 0xf
+
 #if defined(__cplusplus)
 }
 #endif
-- 
2.25.1

