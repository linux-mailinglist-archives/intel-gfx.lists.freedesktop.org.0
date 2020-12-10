Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD962D6A83
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 23:39:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 097786EB81;
	Thu, 10 Dec 2020 22:39:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AE8E6EB7E
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 22:39:38 +0000 (UTC)
IronPort-SDR: LIOSJueP7Dgg6K7YBqGBee5yvymABfh4+3fYukgVROO5QJNzrQyISEoRrvEEDBOW17zW8G+pXs
 Ry6QPOm/CPXw==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="192676680"
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; d="scan'208";a="192676680"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 14:39:33 -0800
IronPort-SDR: ft+81wqpV0Jzt/gg5xgZiqdQ36NplORu6FpcMxrP2MNyk72LDo95AAvfYW0oJ1Z8X3E0qOkvcf
 /c406f1aNOIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; d="scan'208";a="544017036"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga005.fm.intel.com with ESMTP; 10 Dec 2020 14:39:33 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 10 Dec 2020 14:38:57 -0800
Message-Id: <20201210223859.23882-20-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201210223859.23882-1-sean.z.huang@intel.com>
References: <20201210223859.23882-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v6 19/21] drm/i915/pxp: Termiante the session upon
 app crash
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

PXP should terminate the hardware session and cleanup the software
state gracefully when the application has established the
protection session, but doesn't close the session correctly due to
some cases like application crash.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c         |  3 +++
 drivers/gpu/drm/i915/pxp/intel_pxp.c    | 15 +++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h    |  5 +++++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c | 25 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h |  1 +
 5 files changed, 49 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 3dbda949bf71..e74201e81369 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -69,6 +69,7 @@
 #include "gt/intel_rc6.h"
 
 #include "pxp/intel_pxp_pm.h"
+#include "pxp/intel_pxp.h"
 
 #include "i915_debugfs.h"
 #include "i915_drv.h"
@@ -1026,6 +1027,8 @@ static void i915_driver_postclose(struct drm_device *dev, struct drm_file *file)
 
 	/* Catch up with all the deferred frees from "this" client */
 	i915_gem_flush_free_objects(to_i915(dev));
+
+	intel_pxp_close(&(to_i915(dev)->gt.pxp), file);
 }
 
 static void intel_suspend_encoders(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 46ad2ab229c1..789990b3a5e3 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -320,3 +320,18 @@ int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmf
 			ret = -EFAULT;
 	return ret;
 }
+
+void intel_pxp_close(struct intel_pxp *pxp, struct drm_file *drmfile)
+{
+	int ret;
+	struct intel_gt *gt = container_of(pxp, typeof(*gt), pxp);
+
+	if (!drmfile)
+		return;
+
+	mutex_lock(&pxp->ctx.mutex);
+	ret = intel_pxp_sm_close(pxp, drmfile);
+	if (ret)
+		drm_err(&gt->i915->drm, "Failed to %s, ret=[%d]\n", __func__, ret);
+	mutex_unlock(&pxp->ctx.mutex);
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 133e3df9b1f6..ffb460327315 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -64,6 +64,7 @@ int intel_pxp_init(struct intel_pxp *pxp);
 void intel_pxp_uninit(struct intel_pxp *pxp);
 bool intel_pxp_gem_object_status(struct drm_i915_private *i915);
 int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmfile);
+void intel_pxp_close(struct intel_pxp *pxp, struct drm_file *drmfile);
 #else
 static inline void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
 {
@@ -97,6 +98,10 @@ static inline int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct
 {
 	return 0;
 }
+
+static inline void intel_pxp_close(struct intel_pxp *pxp, struct drm_file *drmfile)
+{
+}
 #endif
 
 #endif /* __INTEL_PXP_PM_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
index fd1dc1269c4e..fcf11c61bffb 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
@@ -460,3 +460,28 @@ int intel_pxp_sm_ioctl_query_pxp_tag(struct intel_pxp *pxp,
 
 	return 0;
 }
+
+int intel_pxp_sm_close(struct intel_pxp *pxp, struct drm_file *drmfile)
+{
+	int ret;
+	struct intel_pxp_sm_session *curr;
+
+	list_for_each_entry(curr, session_list(pxp, SESSION_TYPE_TYPE0), list) {
+		if (curr->drmfile && curr->drmfile == drmfile &&
+		    curr->pid == pid_nr(drmfile->pid)) {
+			ret = pxp_terminate_hw_session(pxp, curr->type,
+						       curr->index);
+			if (ret)
+				return ret;
+
+			ret = pxp_set_pxp_tag(pxp, curr->type, curr->index,
+					      PROTECTION_MODE_NONE);
+			if (ret)
+				return ret;
+
+			list_del(&curr->list);
+			kfree(curr);
+		}
+	}
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
index 09a26bb7a1a4..d2acbd1298b4 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
@@ -50,4 +50,5 @@ int intel_pxp_sm_ioctl_query_pxp_tag(struct intel_pxp *pxp,
 bool intel_pxp_sm_is_hw_session_in_play(struct intel_pxp *pxp,
 					int session_type, int session_index);
 int intel_pxp_sm_terminate_all_sessions(struct intel_pxp *pxp, int session_type);
+int intel_pxp_sm_close(struct intel_pxp *pxp, struct drm_file *drmfile);
 #endif /* __INTEL_PXP_SM_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
