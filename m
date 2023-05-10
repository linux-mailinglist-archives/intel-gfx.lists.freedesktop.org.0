Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD856FE377
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 19:46:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD52D10E4F9;
	Wed, 10 May 2023 17:45:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6575610E4E5;
 Wed, 10 May 2023 17:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683740754; x=1715276754;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0HvZrQYayoTgG74K+0sPNIgKlQKTA86oNjf9zsNBV44=;
 b=cXErjI3PKKpsAwzEHdA0DxfQCt39qR8+4pTV8ImuURSbBQe2wrPtjTqU
 oUSriiqYJx2ZNkY4fm9GzVJXgPpxTguxAO4VqTMy8u/SmXX52lgA9iS04
 vicbdD23u/DY/p4EKv/JyA8a9ZrRyNT1dumgUreL95h0lqvbvsJBhwjZh
 KvhvmbUCxXxlzvUuwmGXO0yuY8MbSKy4nB35MBu1ulM4ZMUYnx10iq48A
 BrMeJ98gKFDAp22gC5/zdUYdemOyVGcXccuvkZcdMSy0ErVLDgJaTv4R5
 k55Jal2dzjCPf8MNRYjJGMXmXvwru24pYHJdY1EC0rBxZnu8EOaDPYE1v Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="353352061"
X-IronPort-AV: E=Sophos;i="5.99,265,1677571200"; d="scan'208";a="353352061"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 10:45:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="945791927"
X-IronPort-AV: E=Sophos;i="5.99,265,1677571200"; d="scan'208";a="945791927"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga006.fm.intel.com with ESMTP; 10 May 2023 10:45:52 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 May 2023 10:45:48 -0700
Message-Id: <20230510174550.986965-7-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230510174550.986965-1-alan.previn.teres.alexis@intel.com>
References: <20230510174550.986965-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 6/8] drm/i915/uapi/pxp: Add a GET_PARAM for
 PXP
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 dri-devel@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Because of the additional firmware, component-driver and
initialization depedencies required on MTL platform before a
PXP context can be created, UMD calling for PXP creation as a
way to get-caps can take a long time. An actual real world
customer stack has seen this happen in the 4-to-8 second range
after the kernel starts (which sees MESA's init appear in the
middle of this range as the compositor comes up). To avoid
unncessary delays experienced by the UMD for get-caps purposes,
add a GET_PARAM for I915_PARAM_PXP_SUPPORT.

However, some failures can still occur after all the depedencies
are met (such as firmware init flow failure, bios configurations
or SOC fusing not allowing PXP enablement). Those scenarios will
only be known to user space when it attempts creating a PXP context
and is documented in the GEM UAPI headers.

While making this change, create a helper that is common to both
GET_PARAM caller and intel_pxp_start since the latter does
similiar checks.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/i915_getparam.c |  7 +++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.c | 29 +++++++++++++++++++++-------
 drivers/gpu/drm/i915/pxp/intel_pxp.h |  1 +
 include/uapi/drm/i915_drm.h          | 19 ++++++++++++++++++
 4 files changed, 49 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
index 2238e096c957..6f11d7eaa91a 100644
--- a/drivers/gpu/drm/i915/i915_getparam.c
+++ b/drivers/gpu/drm/i915/i915_getparam.c
@@ -5,6 +5,8 @@
 #include "gem/i915_gem_mman.h"
 #include "gt/intel_engine_user.h"
 
+#include "pxp/intel_pxp.h"
+
 #include "i915_cmd_parser.h"
 #include "i915_drv.h"
 #include "i915_getparam.h"
@@ -102,6 +104,11 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
 		if (value < 0)
 			return value;
 		break;
+	case I915_PARAM_PXP_STATUS:
+		value = intel_pxp_get_readiness_status(i915->pxp);
+		if (value < 0)
+			return value;
+		break;
 	case I915_PARAM_MMAP_GTT_VERSION:
 		/* Though we've started our numbering from 1, and so class all
 		 * earlier versions as 0, in effect their value is undefined as
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index b600d68de2a4..f143eadbc253 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -358,23 +358,38 @@ void intel_pxp_end(struct intel_pxp *pxp)
 }
 
 /*
- * the arb session is restarted from the irq work when we receive the
- * termination completion interrupt
+ * this helper is used by both intel_pxp_start and by
+ * the GET_PARAM IOCTL that user space calls. Thus, the
+ * return values here should match the UAPI spec.
  */
-int intel_pxp_start(struct intel_pxp *pxp)
+int intel_pxp_get_readiness_status(struct intel_pxp *pxp)
 {
-	int ret = 0;
-
 	if (!intel_pxp_is_enabled(pxp))
 		return -ENODEV;
 
 	if (HAS_ENGINE(pxp->ctrl_gt, GSC0)) {
 		if (wait_for(intel_pxp_gsccs_is_ready_for_sessions(pxp), 250))
-			return -ENXIO;
+			return 2;
 	} else {
 		if (wait_for(pxp_component_bound(pxp), 250))
-			return -ENXIO;
+			return 2;
 	}
+	return 1;
+}
+
+/*
+ * the arb session is restarted from the irq work when we receive the
+ * termination completion interrupt
+ */
+int intel_pxp_start(struct intel_pxp *pxp)
+{
+	int ret = 0;
+
+	ret = intel_pxp_get_readiness_status(pxp);
+	if (ret < 0)
+		return ret;
+	else if (ret > 1)
+		return -EIO; /* per UAPI spec, user may retry later */
 
 	mutex_lock(&pxp->arb_mutex);
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 3ded0890cd27..17e6dbc86b38 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -26,6 +26,7 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp);
 void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp);
 void intel_pxp_tee_end_arb_fw_session(struct intel_pxp *pxp, u32 arb_session_id);
 
+int intel_pxp_get_readiness_status(struct intel_pxp *pxp);
 int intel_pxp_start(struct intel_pxp *pxp);
 void intel_pxp_end(struct intel_pxp *pxp);
 
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 0aa3190e7654..ba40855dbc93 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -771,6 +771,25 @@ typedef struct drm_i915_irq_wait {
  */
 #define I915_PARAM_OA_TIMESTAMP_FREQUENCY 57
 
+/*
+ * Query the status of PXP support in i915.
+ *
+ * The query can fail in the following scenarios with the listed error codes:
+ *     -ENODEV = PXP support is not available on the GPU device or in the
+ *               kernel due to missing component drivers or kernel configs.
+ *
+ * If the IOCTL is successful, the returned parameter will be set to one of
+ * the following values:
+ *     1 = PXP feature is supported and is ready for use.
+ *     2 = PXP feature is supported but should be ready soon (pending
+ *         initialization of non-i915 system dependencies).
+ *
+ * NOTE: When param is supported (positive return values), user space should
+ *       still refer to the GEM PXP context-creation UAPI header specs to be
+ *       aware of possible failure due to system state machine at the time.
+ */
+#define I915_PARAM_PXP_STATUS		 58
+
 /* Must be kept compact -- no holes and well documented */
 
 /**
-- 
2.39.0

