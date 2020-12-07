Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 647AE2D0895
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 01:22:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C5666E57A;
	Mon,  7 Dec 2020 00:22:18 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 636A16E558
 for <Intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 00:22:10 +0000 (UTC)
IronPort-SDR: eozZJM/r6v3FCbvqSY7po5qu1X0QLhjJ/fwXdPqHvkx+cicK/wDfvzHhiZxs5p5TH4s912c+LQ
 vw1u0gxu2fiQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="191889199"
X-IronPort-AV: E=Sophos;i="5.78,398,1599548400"; d="scan'208";a="191889199"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2020 16:22:08 -0800
IronPort-SDR: qNJJLNW1cL/hj5BdvxFkUA4zVdxjeF4DuztkP5CfrK102Q12vQOlQlnzqi6FhCWNOpERK0xHnW
 yIxa7FN8kdyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,398,1599548400"; d="scan'208";a="369586443"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga002.fm.intel.com with ESMTP; 06 Dec 2020 16:22:08 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sun,  6 Dec 2020 16:21:29 -0800
Message-Id: <20201207002134.13731-12-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201207002134.13731-1-sean.z.huang@intel.com>
References: <20201207002134.13731-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v1 11/16] drm/i915/pxp: Enable PXP power management
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

During the power event S3+ sleep/resume, hardware will lose all the
encryption keys for every hardware session, even though the
software session state was marked as alive after resume. So to
handle such case, PXP should terminate all the hardware sessions
and cleanup all the software states after the power cycle.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/Makefile           |  1 +
 drivers/gpu/drm/i915/i915_drv.c         |  8 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c | 70 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h | 31 +++++++++++
 4 files changed, 110 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 3cc5fc250b33..11309f2634f1 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -258,6 +258,7 @@ i915-y += i915_perf.o
 i915-$(CONFIG_DRM_I915_PXP) += \
 	pxp/intel_pxp.o \
 	pxp/intel_pxp_context.o \
+	pxp/intel_pxp_pm.o \
 	pxp/intel_pxp_sm.o \
 	pxp/intel_pxp_tee.o
 
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 64399386292f..e0c31c1b0b36 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -68,6 +68,8 @@
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_rc6.h"
 
+#include "pxp/intel_pxp_pm.h"
+
 #include "i915_debugfs.h"
 #include "i915_drv.h"
 #include "i915_ioc32.h"
@@ -1093,6 +1095,8 @@ static int i915_drm_prepare(struct drm_device *dev)
 	 */
 	i915_gem_suspend(i915);
 
+	intel_pxp_pm_prepare_suspend(i915);
+
 	return 0;
 }
 
@@ -1278,6 +1282,8 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_gvt_resume(dev_priv);
 
+	intel_pxp_pm_resume(dev_priv);
+
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	return 0;
@@ -1349,6 +1355,8 @@ static int i915_drm_resume_early(struct drm_device *dev)
 
 	intel_power_domains_resume(dev_priv);
 
+	intel_pxp_pm_resume_early(dev_priv);
+
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	return ret;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
new file mode 100644
index 000000000000..454351a70565
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -0,0 +1,70 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2020 Intel Corporation.
+ */
+
+#include "intel_pxp_context.h"
+#include "intel_pxp_sm.h"
+#include "intel_pxp_pm.h"
+
+void intel_pxp_pm_prepare_suspend(struct drm_i915_private *i915)
+{
+	if (!i915->pxp.ctx)
+		return;
+
+	mutex_lock(&i915->pxp.ctx->ctx_mutex);
+
+	/* Disable PXP-IOCTLs */
+	i915->pxp.ctx->global_state_in_suspend = true;
+
+	mutex_unlock(&i915->pxp.ctx->ctx_mutex);
+}
+
+void intel_pxp_pm_resume_early(struct drm_i915_private *i915)
+{
+	if (!i915->pxp.ctx)
+		return;
+
+	mutex_lock(&i915->pxp.ctx->ctx_mutex);
+
+	if (i915->pxp.ctx->global_state_in_suspend) {
+		/* reset the attacked flag even there was a pending */
+		i915->pxp.ctx->global_state_attacked = false;
+
+		i915->pxp.ctx->flag_display_hm_surface_keys = false;
+	}
+
+	mutex_unlock(&i915->pxp.ctx->ctx_mutex);
+}
+
+int intel_pxp_pm_resume(struct drm_i915_private *i915)
+{
+	int ret = 0;
+
+	if (!i915->pxp.ctx)
+		return 0;
+
+	mutex_lock(&i915->pxp.ctx->ctx_mutex);
+
+	/* Re-enable PXP-IOCTLs */
+	if (i915->pxp.ctx->global_state_in_suspend) {
+		ret = intel_pxp_sm_terminate_all_active_sessions(i915, SESSION_TYPE_TYPE0);
+		if (ret) {
+			drm_err(&i915->drm, "Failed to intel_pxp_sm_terminate_all_active_sessions with type0\n");
+			goto end;
+		}
+
+		ret = intel_pxp_sm_terminate_all_active_sessions(i915, SESSION_TYPE_TYPE1);
+		if (ret) {
+			drm_err(&i915->drm, "Failed to intel_pxp_sm_terminate_all_active_sessions with type1\n");
+			goto end;
+		}
+
+		i915->pxp.ctx->global_state_in_suspend = false;
+	}
+
+end:
+	mutex_unlock(&i915->pxp.ctx->ctx_mutex);
+
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
new file mode 100644
index 000000000000..b66b7e95e211
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_PM_H__
+#define __INTEL_PXP_PM_H__
+
+#include "i915_drv.h"
+
+#ifdef CONFIG_DRM_I915_PXP
+void intel_pxp_pm_prepare_suspend(struct drm_i915_private *i915);
+
+void intel_pxp_pm_resume_early(struct drm_i915_private *i915);
+int intel_pxp_pm_resume(struct drm_i915_private *i915);
+#else
+static inline void intel_pxp_pm_prepare_suspend(struct drm_i915_private *i915)
+{
+}
+
+static inline void intel_pxp_pm_resume_early(struct drm_i915_private *i915)
+{
+}
+
+static inline int intel_pxp_pm_resume(struct drm_i915_private *i915)
+{
+	return 0;
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
