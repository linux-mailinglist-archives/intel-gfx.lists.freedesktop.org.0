Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E81D2CB135
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 00:58:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B2D16E9AD;
	Tue,  1 Dec 2020 23:58:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE2DA6E994
 for <Intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 23:58:23 +0000 (UTC)
IronPort-SDR: Xbx3tbuv8thTZPSZ9vntI3hq7vsnVEMZrdnFBHQxQZd0eFsT4RB7SHWmhaWLhpQI1nqooY3+No
 l1XqlZbkqX+g==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="191136812"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="191136812"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 15:58:22 -0800
IronPort-SDR: /uPV4WvSPeZhJoN3dYnqc5o0dS8dI/8CSg71UVX41cIY+7iW4OGEdqB4LatY5IIFGbJ0jScY9y
 8VaTE1PQNzjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="315897592"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga007.fm.intel.com with ESMTP; 01 Dec 2020 15:58:21 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 15:57:37 -0800
Message-Id: <20201201235747.26017-17-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201201235747.26017-1-sean.z.huang@intel.com>
References: <20201201235747.26017-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v3 16/26] drm/i915/pxp: Enable PXP power management
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
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c | 72 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h | 31 +++++++++++
 4 files changed, 112 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 131bd8921565..610ba6a729a5 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -258,6 +258,7 @@ i915-y += i915_perf.o
 i915-$(CONFIG_DRM_I915_PXP) += \
 	pxp/intel_pxp.o \
 	pxp/intel_pxp_context.o \
+	pxp/intel_pxp_pm.o \
 	pxp/intel_pxp_sm.o
 
 # Post-mortem debug and GPU hang state capture
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 343c47ce33f9..acb94ce9bf11 100644
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
 
@@ -1279,6 +1283,8 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_gvt_resume(dev_priv);
 
+	intel_pxp_pm_resume(dev_priv);
+
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	return 0;
@@ -1350,6 +1356,8 @@ static int i915_drm_resume_early(struct drm_device *dev)
 
 	intel_power_domains_resume(dev_priv);
 
+	intel_pxp_pm_resume_early(dev_priv);
+
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	return ret;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
new file mode 100644
index 000000000000..59847e0ed2e3
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -0,0 +1,72 @@
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
+		intel_pxp_destroy_user_ctx_list(i915);
+
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
