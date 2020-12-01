Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 209322CB0D6
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 00:35:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 928086E971;
	Tue,  1 Dec 2020 23:34:50 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55F896E96B
 for <Intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 23:34:49 +0000 (UTC)
IronPort-SDR: VyYft9LJWuENOEGpezgrU3o/6oT6ew1rLF9ZOCsJhQEQB/hVMSS6lDm4P9KeFU1gJUImDT0w2Z
 s8std09JI8uQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="173021526"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="173021526"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 15:34:47 -0800
IronPort-SDR: H8mOfMI00rpVAYVHAPWtSqJLU148gi4QYkT2JePh41OQnt2SQUTcVoW0bjtM0ikpC7O4fx3uUC
 L28xsrVdrrPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="537745384"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga006.fm.intel.com with ESMTP; 01 Dec 2020 15:34:45 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 15:33:46 -0800
Message-Id: <20201201233411.21858-2-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201201233411.21858-1-sean.z.huang@intel.com>
References: <20201201233411.21858-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v3 01/26] drm/i915/pxp: Introduce Intel PXP
 component
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

PXP (Protected Xe Path) is an i915 componment, available on GEN12+,
that helps user space to establish the hardware protected session
and manage the status of each alive software session, as well as
the life cycle of each session.

By design PXP will expose ioctl so allow user space to create, set,
and destroy each session. It will also provide the communication
chanel to TEE (Trusted Execution Environment) for the protected
hardware session creation.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/Kconfig         | 19 ++++++++++++++++
 drivers/gpu/drm/i915/Makefile        |  4 ++++
 drivers/gpu/drm/i915/i915_drv.c      |  4 ++++
 drivers/gpu/drm/i915/i915_drv.h      |  4 ++++
 drivers/gpu/drm/i915/pxp/intel_pxp.c | 25 +++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h | 33 ++++++++++++++++++++++++++++
 6 files changed, 89 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.h

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 1e1cb245fca7..f82ccc901b1e 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -130,6 +130,25 @@ config DRM_I915_GVT_KVMGT
 	  Choose this option if you want to enable KVMGT support for
 	  Intel GVT-g.
 
+config DRM_I915_PXP
+	bool "Enable Intel PXP support for Intel Gen12+ platform"
+	depends on DRM_I915
+	select INTEL_MEI_PXP
+	default n
+	help
+	  This option selects INTEL_MEI_ME if it isn't already selected to
+	  enabled full PXP Services on Intel platforms.
+
+	  PXP is an i915 componment, available on Gen12+, that helps user
+	  space to establish the hardware protected session and manage the
+	  status of each alive software session, as well as the life cycle
+	  of each session.
+
+	  PXP expose ioctl so allow user space to create, set, and destroy
+	  each session. It will also provide the communication chanel to
+	  TEE (Trusted Execution Environment) for the protected hardware
+	  session creation.
+
 menu "drm/i915 Debugging"
 depends on DRM_I915
 depends on EXPERT
diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index e5574e506a5c..a53ea3c88f71 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -254,6 +254,10 @@ i915-y += \
 
 i915-y += i915_perf.o
 
+# Protected execution platform (PXP) support
+i915-$(CONFIG_DRM_I915_PXP) += \
+	pxp/intel_pxp.o
+
 # Post-mortem debug and GPU hang state capture
 i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += i915_gpu_error.o
 i915-$(CONFIG_DRM_I915_SELFTEST) += \
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index f2389ba49c69..c8b9c42fcbd6 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -889,6 +889,8 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (ret)
 		goto out_cleanup_gem;
 
+	intel_pxp_init(i915);
+
 	i915_driver_register(i915);
 
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
@@ -938,6 +940,8 @@ void i915_driver_remove(struct drm_i915_private *i915)
 	/* Flush any external code that still may be under the RCU lock */
 	synchronize_rcu();
 
+	intel_pxp_uninit(i915);
+
 	i915_gem_suspend(i915);
 
 	drm_atomic_helper_shutdown(&i915->drm);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 15be8debae54..f34ed07a68ee 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -105,6 +105,8 @@
 
 #include "intel_region_lmem.h"
 
+#include "pxp/intel_pxp.h"
+
 /* General customization:
  */
 
@@ -1215,6 +1217,8 @@ struct drm_i915_private {
 	/* Mutex to protect the above hdcp component related values. */
 	struct mutex hdcp_comp_mutex;
 
+	struct intel_pxp pxp;
+
 	I915_SELFTEST_DECLARE(struct i915_selftest_stash selftest;)
 
 	/*
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
new file mode 100644
index 000000000000..3de4593ca495
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2020 Intel Corporation.
+ */
+
+#include "i915_drv.h"
+#include "intel_pxp.h"
+
+int intel_pxp_init(struct drm_i915_private *i915)
+{
+	if (!i915)
+		return -EINVAL;
+
+	/* PXP only available for GEN12+ */
+	if (INTEL_GEN(i915) < 12)
+		return 0;
+
+	drm_info(&i915->drm, "i915 PXP is inited with i915=[%p]\n", i915);
+
+	return 0;
+}
+
+void intel_pxp_uninit(struct drm_i915_private *i915)
+{
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
new file mode 100644
index 000000000000..0b83d33045f3
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_H__
+#define __INTEL_PXP_H__
+
+#include <drm/drm_file.h>
+
+struct pxp_context;
+
+struct intel_pxp {
+	struct pxp_context *ctx;
+};
+
+struct drm_i915_private;
+
+#ifdef CONFIG_DRM_I915_PXP
+int intel_pxp_init(struct drm_i915_private *i915);
+void intel_pxp_uninit(struct drm_i915_private *i915);
+#else
+static inline int intel_pxp_init(struct drm_i915_private *i915)
+{
+	return 0;
+}
+
+static inline void intel_pxp_uninit(struct drm_i915_private *i915)
+{
+}
+#endif
+
+#endif /* __INTEL_PXP_PM_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
