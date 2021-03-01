Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9BF328EBF
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 20:38:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7311F6E88D;
	Mon,  1 Mar 2021 19:38:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFBCB6E88D
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 19:38:14 +0000 (UTC)
IronPort-SDR: 0IjbDg+KF9KTMyUiyv/jR2XgoVovdwWKMEtmhGsNWsNxZLLvmE9cR0SOADh0lHx8smT/QyR+LV
 gEqelUArEZVQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="184139008"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="184139008"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 11:38:14 -0800
IronPort-SDR: RmnHGQ0VCAmOdeRmeYku6SBA9VVSun0MDQ8QOeNLlFk56VrWSEhAie1sMUaSo46/d8IpCytoyN
 KsseA7xKVQ3g==
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="435484803"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 11:37:38 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Mar 2021 11:31:51 -0800
Message-Id: <20210301193200.1369-8-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
References: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 07/16] drm/i915/pxp: Create the arbitrary
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
Cc: "Huang, Sean Z" <sean.z.huang@intel.com>, Huang@freedesktop.org,
	Chris Wilson <chris@chris-wilson.co.uk>
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

v2: use gt->uncore->rpm (chris)

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/Makefile                |   1 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c         |   2 +
 drivers/gpu/drm/i915/pxp/intel_pxp.h         |   5 +
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c |  82 +++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_session.h |  16 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     | 102 +++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h     |   3 +
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h   |   6 ++
 include/uapi/drm/i915_drm.h                  |   4 +
 9 files changed, 221 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_session.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_session.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 7745f73ce3dc..d6d510e4875e 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -273,6 +273,7 @@ i915-y += i915_perf.o
 # Protected execution platform (PXP) support
 i915-$(CONFIG_DRM_I915_PXP) += \
 	pxp/intel_pxp.o \
+	pxp/intel_pxp_session.o \
 	pxp/intel_pxp_tee.o
 
 # Post-mortem debug and GPU hang state capture
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index a4497cd38609..cbec9395bde9 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -65,6 +65,8 @@ void intel_pxp_init(struct intel_pxp *pxp)
 	if (!HAS_PXP(gt->i915))
 		return;
 
+	mutex_init(&pxp->mutex);
+
 	kcr_pxp_enable(gt);
 
 	ret = create_vcs_context(pxp);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index e87550fb9821..3bede9306481 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -19,6 +19,11 @@ static inline bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
 	return pxp->ce;
 }
 
+static inline bool intel_pxp_is_active(const struct intel_pxp *pxp)
+{
+	return pxp->arb_is_in_play;
+}
+
 #ifdef CONFIG_DRM_I915_PXP
 void intel_pxp_init(struct intel_pxp *pxp);
 void intel_pxp_fini(struct intel_pxp *pxp);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
new file mode 100644
index 000000000000..6abc59a63e51
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
+	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
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
index 3225a90dc5af..dc3850b372c5 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -8,13 +8,73 @@
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
+	int ret;
+
+	lockdep_assert_held(&pxp->mutex);
+
+	ret = pxp_component->ops->send(pxp_component->tee_dev, msg_in, msg_in_size);
+	if (ret) {
+		drm_err(&i915->drm, "Failed to send PXP TEE message\n");
+		return ret;
+	}
+
+	ret = pxp_component->ops->recv(pxp_component->tee_dev, msg_out, msg_out_max_size);
+	if (ret < 0) {
+		drm_err(&i915->drm, "Failed to receive PXP TEE message\n");
+		return ret;
+	}
+
+	if (ret > msg_out_max_size) {
+		drm_err(&i915->drm,
+			"Failed to receive PXP TEE message due to unexpected output size\n");
+		return -ENOSPC;
+	}
+
+	if (msg_out_rcv_size)
+		*msg_out_rcv_size = ret;
+
+	return 0;
+}
 
 /**
  * i915_pxp_tee_component_bind - bind function to pass the function pointers to pxp_tee
@@ -29,11 +89,26 @@ static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
 static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 				       struct device *tee_kdev, void *data)
 {
+	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
 	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
+	int ret = 0;
 
 	pxp->pxp_component = data;
 	pxp->pxp_component->tee_dev = tee_kdev;
 
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
 
@@ -76,3 +151,30 @@ void intel_pxp_tee_component_fini(struct intel_pxp *pxp)
 
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
+	lockdep_assert_held(&pxp->mutex);
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
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
index 3e95d21513e8..e05cd3564eba 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -6,6 +6,9 @@
 #ifndef __INTEL_PXP_TYPES_H__
 #define __INTEL_PXP_TYPES_H__
 
+#include <linux/types.h>
+#include <linux/mutex.h>
+
 struct intel_context;
 struct i915_pxp_component;
 
@@ -13,6 +16,9 @@ struct intel_pxp {
 	struct i915_pxp_component *pxp_component;
 
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
