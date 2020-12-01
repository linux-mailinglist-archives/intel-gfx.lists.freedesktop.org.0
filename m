Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6752CB129
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 00:58:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE4E16E991;
	Tue,  1 Dec 2020 23:58:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDEFA6E97B
 for <Intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 23:58:22 +0000 (UTC)
IronPort-SDR: UBZ2cbR59uobyL30J0KwrKwxT1EH2p8DsvVqBqrehsrjlptqoglKTS87QdQBPvuy7J0yAUeR3k
 2B8GT33hMfLQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="191136800"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="191136800"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 15:58:21 -0800
IronPort-SDR: 283auq2PCeFJdQTKLVhRBdRL4qEMLYhLM0JM15Aie8SEIDhzt2W75x7GrJCeSwPQmLggIB/2ML
 j8jDzKXVw7sA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="315897578"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga007.fm.intel.com with ESMTP; 01 Dec 2020 15:58:21 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 15:57:25 -0800
Message-Id: <20201201235747.26017-5-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201201235747.26017-1-sean.z.huang@intel.com>
References: <20201201235747.26017-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v3 04/26] drm/i915/pxp: set KCR reg init during
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
 drivers/gpu/drm/i915/Makefile           |  3 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c    | 11 ++++++-
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c | 38 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h | 20 +++++++++++++
 4 files changed, 70 insertions(+), 2 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 99efac469cc2..131bd8921565 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -257,7 +257,8 @@ i915-y += i915_perf.o
 # Protected execution platform (PXP) support
 i915-$(CONFIG_DRM_I915_PXP) += \
 	pxp/intel_pxp.o \
-	pxp/intel_pxp_context.o
+	pxp/intel_pxp_context.o \
+	pxp/intel_pxp_sm.o
 
 # Post-mortem debug and GPU hang state capture
 i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += i915_gpu_error.o
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 769bfd9bc6b8..d74a32b29716 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -6,6 +6,7 @@
 #include "i915_drv.h"
 #include "intel_pxp.h"
 #include "intel_pxp_context.h"
+#include "intel_pxp_sm.h"
 
 static void intel_pxp_write_irq_mask_reg(struct drm_i915_private *i915, u32 mask)
 {
@@ -77,6 +78,8 @@ static void intel_pxp_irq_work(struct work_struct *work)
 
 int intel_pxp_init(struct drm_i915_private *i915)
 {
+	int ret;
+
 	if (!i915)
 		return -EINVAL;
 
@@ -92,13 +95,19 @@ int intel_pxp_init(struct drm_i915_private *i915)
 		return -EFAULT;
 	}
 
+	ret = pxp_sm_set_kcr_init_reg(i915);
+	if (ret) {
+		drm_err(&i915->drm, "Failed to set kcr init reg\n");
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
index 000000000000..a2c9c71d2372
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: MIT
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
+	ret = pxp_reg_write(i915, KCR_INIT.reg, KCR_INIT_ALLOW_DISPLAY_ME_WRITES);
+	if (ret)
+		drm_err(&i915->drm, "Failed to write()\n");
+
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
new file mode 100644
index 000000000000..d061f395aa16
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_SM_H__
+#define __INTEL_PXP_SM_H__
+
+#include "i915_drv.h"
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
