Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 503452D088C
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 01:22:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4102E6E550;
	Mon,  7 Dec 2020 00:22:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC85B6E550
 for <Intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 00:22:09 +0000 (UTC)
IronPort-SDR: aZwGui8O/rZ9K3s1UxY9IASllhNhZ1LNWbMiWtseTY7wUo/+BSEiM3e0pjBQ+9Yv4wxU6eDm7f
 53QMgSShW2OQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="191889192"
X-IronPort-AV: E=Sophos;i="5.78,398,1599548400"; d="scan'208";a="191889192"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2020 16:22:07 -0800
IronPort-SDR: 275SrwN2kvoiARgyJPTJrVDSF9ul2wMI7yCBevJd3yHlk33v6e8kHHQaY2hXCcd/EshOGvBD/N
 Jmp9n1rofaaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,398,1599548400"; d="scan'208";a="369586436"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga002.fm.intel.com with ESMTP; 06 Dec 2020 16:22:07 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sun,  6 Dec 2020 16:21:22 -0800
Message-Id: <20201207002134.13731-5-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201207002134.13731-1-sean.z.huang@intel.com>
References: <20201207002134.13731-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v1 04/16] drm/i915/pxp: set KCR reg init during
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
