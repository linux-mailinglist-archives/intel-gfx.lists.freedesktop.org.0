Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1232B31E5
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Nov 2020 03:02:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCD1E6E977;
	Sun, 15 Nov 2020 02:02:21 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFC176E96F
 for <Intel-gfx@lists.freedesktop.org>; Sun, 15 Nov 2020 02:02:18 +0000 (UTC)
IronPort-SDR: NepMAGvhPACrAiWakfk+PaFuHZPzGm+KcekTxxWha160ym/9cCTwVn7Km1JO6ZYq/GQTH7pnQb
 9/LxPJGAb7Cg==
X-IronPort-AV: E=McAfee;i="6000,8403,9805"; a="255321247"
X-IronPort-AV: E=Sophos;i="5.77,479,1596524400"; d="scan'208";a="255321247"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2020 18:02:16 -0800
IronPort-SDR: PzGAz7t2fQfVKVdbgArL/kxHfF6rrw+oNFmdAeFw+5LsO4OVFb9dWU6QiAu7XR1Nt4qcoUlX0q
 9M66qaehBTRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,479,1596524400"; d="scan'208";a="367120651"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Nov 2020 18:02:16 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sat, 14 Nov 2020 18:01:53 -0800
Message-Id: <20201115020216.17242-4-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201115020216.17242-1-sean.z.huang@intel.com>
References: <20201115020216.17242-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [PATCH v2 04/27] drm/i915/pxp: set KCR reg init during
 the boot time
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

Set the KCR init during the boot time, which is required by
hardware, to allow us doing further protection operation such
as sending commands to GPU or TEE

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/Makefile           |  1 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c    | 11 ++++++-
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c | 44 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h | 19 +++++++++++
 4 files changed, 74 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 831e8ad57560..81432a9f44d6 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -258,6 +258,7 @@ i915-y += i915_perf.o
 i915-y += \
 	pxp/intel_pxp.o \
 	pxp/intel_pxp_context.o \
+	pxp/intel_pxp_sm.o
 
 # Post-mortem debug and GPU hang state capture
 i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += i915_gpu_error.o
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 6d358f241406..3a24c2b13b14 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -6,6 +6,7 @@
 #include "i915_drv.h"
 #include "intel_pxp.h"
 #include "intel_pxp_context.h"
+#include "intel_pxp_sm.h"
 
 static void intel_pxp_write_irq_mask_reg(struct drm_i915_private *i915, u32 mask)
 {
@@ -87,6 +88,8 @@ static void intel_pxp_irq_work(struct work_struct *work)
 
 int intel_pxp_init(struct drm_i915_private *i915)
 {
+	int ret;
+
 	drm_info(&i915->drm, "i915_pxp_init\n");
 
 	i915->pxp.r0ctx = intel_pxp_create_r0ctx(i915);
@@ -95,13 +98,19 @@ int intel_pxp_init(struct drm_i915_private *i915)
 		return -EFAULT;
 	}
 
+	ret = pxp_sm_set_kcr_init_reg(i915);
+	if (ret) {
+		drm_dbg(&i915->drm, "Failed to set kcr init reg\n");
+		return ret;
+	}
+
 	INIT_WORK(&i915->pxp.irq_work, intel_pxp_irq_work);
 
 	i915->pxp.handled_irr = (PXP_IRQ_VECTOR_DISPLAY_PXP_STATE_TERMINATED |
 				 PXP_IRQ_VECTOR_DISPLAY_APP_TERM_PER_FW_REQ |
 				 PXP_IRQ_VECTOR_PXP_DISP_STATE_RESET_COMPLETE);
 
-	return 0;
+	return ret;
 }
 
 void intel_pxp_uninit(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
new file mode 100644
index 000000000000..763d194c5f4c
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
@@ -0,0 +1,44 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#include "gt/intel_context.h"
+#include "gt/intel_engine_pm.h"
+
+#include "intel_pxp.h"
+#include "intel_pxp_sm.h"
+#include "intel_pxp_context.h"
+
+static int pxp_reg_write(struct drm_i915_private *i915, u32 offset, u32 regval)
+{
+	intel_wakeref_t wakeref;
+
+	if (!i915)
+		return -EINVAL;
+
+	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
+		i915_reg_t reg_offset = {offset};
+
+		intel_uncore_write(&i915->uncore, reg_offset, regval);
+	}
+
+	return 0;
+}
+
+int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915)
+{
+	int ret;
+
+	drm_dbg(&i915->drm, ">>> %s\n", __func__);
+
+	ret = pxp_reg_write(i915, KCR_INIT.reg, KCR_INIT_ALLOW_DISPLAY_ME_WRITES);
+	if (ret) {
+		drm_dbg(&i915->drm, "Failed to write()\n");
+		goto end;
+	}
+
+end:
+	drm_dbg(&i915->drm, "<<< %s ret=[%d]\n", __func__, ret);
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
new file mode 100644
index 000000000000..59ce2394b590
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_SM_H__
+#define __INTEL_PXP_SM_H__
+
+#include "i915_reg.h"
+
+/* KCR register definitions */
+#define KCR_INIT            _MMIO(0x320f0)
+#define KCR_INIT_MASK_SHIFT (16)
+/* Setting KCR Init bit is required after system boot */
+#define KCR_INIT_ALLOW_DISPLAY_ME_WRITES (BIT(14) | (BIT(14) << KCR_INIT_MASK_SHIFT))
+
+int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915);
+
+#endif /* __INTEL_PXP_SM_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
