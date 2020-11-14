Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1B82B29EB
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Nov 2020 01:37:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7480D6E8A6;
	Sat, 14 Nov 2020 00:37:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E34E76E896
 for <Intel-gfx@lists.freedesktop.org>; Sat, 14 Nov 2020 00:37:19 +0000 (UTC)
IronPort-SDR: 6YwoyLjeh+t2OUPKNOxn6v+Erz4qxrEybdFRCHEYVm6g1XClkP8elWglbBwsS/4tLbvVXMyTn/
 LorWH1TWymog==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="167041290"
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="167041290"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 16:37:19 -0800
IronPort-SDR: 1wWSXocVUPz901fBJIhiAZw6SFBBViqT+d50bmqdJ7KxHWe3Bm+6gEK9jzYCO9ICrg6DMhbisB
 czd1p1C/PS+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="474848555"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by orsmga004.jf.intel.com with ESMTP; 13 Nov 2020 16:37:19 -0800
From: Sean Z Huang <sean.z.huang@intel.com>
To: sean.z.huang@intel.com,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 13 Nov 2020 16:37:06 -0800
Message-Id: <20201114003716.4875-17-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201114003716.4875-1-sean.z.huang@intel.com>
References: <20201114003716.4875-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [PXP CLEAN PATCH v06 17/27] drm/i915/pxp: Enable PXP
 power management
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

From: "Huang, Sean Z" <sean.z.huang@intel.com>

During the power event S3+ sleep/resume, hardware will lose all the
encryption keys for every hardware session, even though the
software session state was marked as alive after resume. So to
handle such case, ring0 PXP should terminate all the hardware
sessions and cleanup all the software states after the power cycle.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/Makefile           |  3 +-
 drivers/gpu/drm/i915/i915_drv.c         |  8 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c | 83 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h | 14 +++++
 4 files changed, 107 insertions(+), 1 deletion(-)
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
index 000000000000..18d33efca9d9
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -0,0 +1,83 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020 Intel Corporation.
+ */
+
+#include "i915_drv.h"
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
index 000000000000..0b1e4af1d36f
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_PM_H__
+#define __INTEL_PXP_PM_H__
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
