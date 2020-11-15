Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE992B31EC
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Nov 2020 03:02:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E57956E976;
	Sun, 15 Nov 2020 02:02:34 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E03316E96D
 for <Intel-gfx@lists.freedesktop.org>; Sun, 15 Nov 2020 02:02:17 +0000 (UTC)
IronPort-SDR: zfL+SfMToFY87I1rhwMx4WU3DbbnaDEu4B5Wz6wd1IDjgDt+LXPUOA4I3hS2dEATqeuxGbvz7a
 uxi/ZgTm9Pxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9805"; a="255321260"
X-IronPort-AV: E=Sophos;i="5.77,479,1596524400"; d="scan'208";a="255321260"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2020 18:02:16 -0800
IronPort-SDR: uqp2cetEbDXVsShKi/PwVqa1iL9r/XAhVFLlQ2ZLpiFjfWjbsVC4yBBGpUEcgNtY0+DvKJQeN0
 KqXqoKOYp1Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,479,1596524400"; d="scan'208";a="367120664"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Nov 2020 18:02:16 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sat, 14 Nov 2020 18:02:06 -0800
Message-Id: <20201115020216.17242-17-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201115020216.17242-1-sean.z.huang@intel.com>
References: <20201115020216.17242-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [PATCH v2 17/27] drm/i915/pxp: Enable PXP power
 management
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
handle such case, ring0 PXP should terminate all the hardware
sessions and cleanup all the software states after the power cycle.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/Makefile           |  3 +-
 drivers/gpu/drm/i915/i915_drv.c         |  8 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c | 82 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h | 16 +++++
 4 files changed, 108 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 81432a9f44d6..6858392c1ef2 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -258,7 +258,8 @@ i915-y += i915_perf.o
 i915-y += \
 	pxp/intel_pxp.o \
 	pxp/intel_pxp_context.o \
-	pxp/intel_pxp_sm.o
+	pxp/intel_pxp_sm.o \
+	pxp/intel_pxp_pm.o
 
 # Post-mortem debug and GPU hang state capture
 i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += i915_gpu_error.o
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index e61ffce52e3e..830708414f92 100644
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
@@ -1094,6 +1096,8 @@ static int i915_drm_prepare(struct drm_device *dev)
 	 */
 	i915_gem_suspend(i915);
 
+	intel_pxp_pm_prepare_suspend(i915);
+
 	return 0;
 }
 
@@ -1277,6 +1281,8 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_power_domains_enable(dev_priv);
 
+	intel_pxp_pm_resume(dev_priv);
+
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	return 0;
@@ -1348,6 +1354,8 @@ static int i915_drm_resume_early(struct drm_device *dev)
 
 	intel_power_domains_resume(dev_priv);
 
+	intel_pxp_pm_resume_early(dev_priv);
+
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	return ret;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
new file mode 100644
index 000000000000..8227856922a2
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -0,0 +1,82 @@
+/* SPDX-License-Identifier: MIT */
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
+	drm_dbg(&i915->drm, ">>> %s\n", __func__);
+
+	if (!i915->pxp.r0ctx)
+		return;
+
+	mutex_lock(&i915->pxp.r0ctx->ctx_mutex);
+
+	/* Disable PXP-IOCTLs */
+	i915->pxp.r0ctx->global_state_in_suspend = true;
+
+	mutex_unlock(&i915->pxp.r0ctx->ctx_mutex);
+
+	drm_dbg(&i915->drm, "<<< %s\n", __func__);
+}
+
+void intel_pxp_pm_resume_early(struct drm_i915_private *i915)
+{
+	drm_dbg(&i915->drm, ">>> %s\n", __func__);
+
+	if (!i915->pxp.r0ctx)
+		return;
+
+	mutex_lock(&i915->pxp.r0ctx->ctx_mutex);
+
+	if (i915->pxp.r0ctx->global_state_in_suspend) {
+		/* reset the attacked flag even there was a pending */
+		i915->pxp.r0ctx->global_state_attacked = false;
+
+		i915->pxp.r0ctx->flag_display_hm_surface_keys = false;
+	}
+
+	mutex_unlock(&i915->pxp.r0ctx->ctx_mutex);
+	drm_dbg(&i915->drm, "<<< %s\n", __func__);
+}
+
+int intel_pxp_pm_resume(struct drm_i915_private *i915)
+{
+	int ret = 0;
+
+	drm_dbg(&i915->drm, ">>> %s\n", __func__);
+
+	if (!i915->pxp.r0ctx)
+		return 0;
+
+	mutex_lock(&i915->pxp.r0ctx->ctx_mutex);
+
+	/* Re-enable PXP-IOCTLs */
+	if (i915->pxp.r0ctx->global_state_in_suspend) {
+		intel_pxp_destroy_r3ctx_list(i915);
+
+		ret = intel_pxp_sm_terminate_all_active_sessions(i915, SESSION_TYPE_TYPE0);
+		if (ret) {
+			drm_dbg(&i915->drm, "Failed to intel_pxp_sm_terminate_all_active_sessions with type0\n");
+			goto end;
+		}
+
+		ret = intel_pxp_sm_terminate_all_active_sessions(i915, SESSION_TYPE_TYPE1);
+		if (ret) {
+			drm_dbg(&i915->drm, "Failed to intel_pxp_sm_terminate_all_active_sessions with type1\n");
+			goto end;
+		}
+
+		i915->pxp.r0ctx->global_state_in_suspend = false;
+	}
+
+end:
+	mutex_unlock(&i915->pxp.r0ctx->ctx_mutex);
+	drm_dbg(&i915->drm, "<<< %s ret=[%d]\n", __func__, ret);
+
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
new file mode 100644
index 000000000000..d2af781c3de1
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
@@ -0,0 +1,16 @@
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
+void intel_pxp_pm_prepare_suspend(struct drm_i915_private *i915);
+
+void intel_pxp_pm_resume_early(struct drm_i915_private *i915);
+int intel_pxp_pm_resume(struct drm_i915_private *i915);
+
+#endif
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
