Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D1A2D70E2
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 08:30:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2F346EC79;
	Fri, 11 Dec 2020 07:29:50 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B62556EC81
 for <Intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 07:29:47 +0000 (UTC)
IronPort-SDR: qY7SIIAr7Xc/yx05BKtBbIcFJBfXu4nZzFam+39IClm2HE7r1We+NutzX56u8rPQ61Ocy5p8Ck
 9PwBSnLOnRQA==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="174506415"
X-IronPort-AV: E=Sophos;i="5.78,410,1599548400"; d="scan'208";a="174506415"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 23:29:46 -0800
IronPort-SDR: FFGyYFbTzoqlAZgkMHQv9LjM/tPiZ1ypHtJ3TeW7QT4W52hAbydyJzuX7/C/MzZwIb5xQNnPhr
 Vx/5tZd5P/Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,410,1599548400"; d="scan'208";a="409063309"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by orsmga001.jf.intel.com with ESMTP; 10 Dec 2020 23:29:46 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 10 Dec 2020 23:29:09 -0800
Message-Id: <20201211072911.27403-20-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201211072911.27403-1-sean.z.huang@intel.com>
References: <20201211072911.27403-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v7 19/21] drm/i915/pxp: Termiante the session upon
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
index 46ad2ab229c1..3a49dd97cab2 100644
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
+	if (pxp->ctx.id == 0 || !drmfile)
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
index c4b55e1531c1..e03c2b039192 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
@@ -460,3 +460,28 @@ int intel_pxp_sm_ioctl_query_pxp_tag(struct intel_pxp *pxp,
 
 	return 0;
 }
+
+int intel_pxp_sm_close(struct intel_pxp *pxp, struct drm_file *drmfile)
+{
+	int ret;
+	struct intel_pxp_sm_session *curr, *n;
+
+	list_for_each_entry_safe(curr, n, session_list(pxp, SESSION_TYPE_TYPE0), list) {
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
