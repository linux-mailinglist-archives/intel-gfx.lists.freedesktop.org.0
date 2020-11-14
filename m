Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C7D2B2A86
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Nov 2020 02:45:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E374E6E8C6;
	Sat, 14 Nov 2020 01:45:41 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D570B6E884
 for <Intel-gfx@lists.freedesktop.org>; Sat, 14 Nov 2020 01:45:40 +0000 (UTC)
IronPort-SDR: 2sGfaTykvi62pKIiZ747845NnT4qt17qlFFypcb7A1TEaECVrEwOsZijn5Lsz1mjMNeyeNnoLP
 r46mQm7s9LEw==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="149824099"
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="149824099"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 17:45:39 -0800
IronPort-SDR: PXumImgz6TN6KDztbhryyCTD5SJeA+r6TxoeSI3uYY+h48mjeiwxQeXJ6/Bn5cnpJ7vfbk2C6W
 FCZ1gYycBq3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="361524814"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga002.fm.intel.com with ESMTP; 13 Nov 2020 17:45:37 -0800
From: Sean Z Huang <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 13 Nov 2020 17:45:11 -0800
Message-Id: <20201114014537.25495-1-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 01/27] drm/i915/pxp: Introduce Intel PXP
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
Cc: "Huang, Sean Z" <sean.z.huang@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: "Huang, Sean Z" <sean.z.huang@intel.com>

PXP (Protected Xe Path) is an i915 componment, that
helps ring3 to establish the hardware protected session and
manage the status of each alive software session, as well as
the life cycle of each session.

By design PXP will expose ioctl so allow ring3 to create, set,
and destroy each session. It will also provide the communication
chanel to TEE (Trusted Execution Environment) for the protected
hardware session creation.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/Makefile        |  4 ++++
 drivers/gpu/drm/i915/i915_drv.c      |  4 ++++
 drivers/gpu/drm/i915/i915_drv.h      |  4 ++++
 drivers/gpu/drm/i915/pxp/intel_pxp.c | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h | 22 ++++++++++++++++++++++
 include/uapi/drm/i915_drm.h          |  5 +++++
 6 files changed, 59 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index e5574e506a5c..8274fea96009 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -254,6 +254,10 @@ i915-y += \
 
 i915-y += i915_perf.o
 
+# Protected execution platform (PXP) support
+i915-y += \
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
index 000000000000..a469c55e3e54
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020 Intel Corporation.
+ */
+
+#include "i915_drv.h"
+#include "intel_pxp.h"
+
+int intel_pxp_init(struct drm_i915_private *i915)
+{
+	int ret;
+
+	drm_info(&i915->drm, "i915_pxp_init\n");
+
+	return ret;
+}
+
+void intel_pxp_uninit(struct drm_i915_private *i915)
+{
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
new file mode 100644
index 000000000000..578f1126bada
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -0,0 +1,22 @@
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
+	struct pxp_context *r0ctx;
+};
+
+struct drm_i915_private;
+
+int intel_pxp_init(struct drm_i915_private *i915);
+void intel_pxp_uninit(struct drm_i915_private *i915);
+
+#endif
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index fa1f3d62f9a6..dc101264176b 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1898,6 +1898,11 @@ struct drm_i915_gem_vm_control {
 	__u32 vm_id;
 };
 
+struct drm_i915_pxp_ops {
+	__u64 pxp_info_ptr;
+	__u32 pxp_info_size;
+};
+
 struct drm_i915_reg_read {
 	/*
 	 * Register offset.
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
