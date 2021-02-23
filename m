Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B37322D9D
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Feb 2021 16:36:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8B246E9B9;
	Tue, 23 Feb 2021 15:36:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F5006E9B9
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Feb 2021 15:36:02 +0000 (UTC)
IronPort-SDR: 5gPJIJU5AKOgWTy5y/NWRnrqssDr9yYTVsJm1ObzMyOVBLlOeUO2oXPhyjyr4NepeLNKRFOt5W
 93/Wiz8tZYoQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="246255669"
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="246255669"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 07:36:01 -0800
IronPort-SDR: TyV/F5ve4xYerPssBCvVNzZRDt+56K/JFkpa+sWD7nAkTX7DJLSIFk2/AIKqje/opYHYpW7cxz
 D5nLFUVRNBqQ==
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="499193820"
Received: from kcushion-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.40.63])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 07:35:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Feb 2021 17:35:08 +0200
Message-Id: <0a225764599177497de6b90ba3b98554f445190f.1614094093.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1614094093.git.jani.nikula@intel.com>
References: <cover.1614094093.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/7] drm/i915: add new helpers for accessing
 stepping info
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add new runtime info field for stepping. Add new helpers for accessing
them. As we'll be switching platforms over to the new scheme
incrementally, check for non-initialized steppings.

In case a platform does not have separate display and gt steppings, it's
okay to use a common shorthand. However, in this case the display
stepping must not be initialized, and gt stepping is the single point of
truth.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 24 +++++++++++++++---------
 drivers/gpu/drm/i915/intel_device_info.h |  4 ++++
 drivers/gpu/drm/i915/intel_stepping.h    | 14 ++++++++++++++
 3 files changed, 33 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 40711be1f8f0..e8717c886be3 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1274,6 +1274,21 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
 #define IS_REVID(p, since, until) \
 	(INTEL_REVID(p) >= (since) && INTEL_REVID(p) <= (until))
 
+#define INTEL_DISPLAY_STEP(__i915) (RUNTIME_INFO(__i915)->stepping.disp_stepping)
+#define INTEL_GT_STEP(__i915) (RUNTIME_INFO(__i915)->stepping.gt_stepping)
+
+#define IS_DISPLAY_STEP(__i915, since, until) \
+	(drm_WARN_ON(&(__i915)->drm, INTEL_DISPLAY_STEP(__i915) == STEP_NONE), \
+	 INTEL_DISPLAY_STEP(__i915) >= (since) && INTEL_DISPLAY_STEP(__i915) <= (until))
+
+#define IS_GT_STEP(__i915, since, until) \
+	(drm_WARN_ON(&(__i915)->drm, INTEL_GT_STEP(__i915) == STEP_NONE), \
+	 INTEL_GT_STEP(__i915) >= (since) && INTEL_GT_STEP(__i915) <= (until))
+
+#define IS_STEP(p, since, until) \
+	(drm_WARN_ON(&(__i915)->drm, INTEL_DISPLAY_STEP(__i915) != STEP_NONE), \
+	 INTEL_GT_STEP(__i915, since, until))
+
 static __always_inline unsigned int
 __platform_mask_index(const struct intel_runtime_info *info,
 		      enum intel_platform p)
@@ -1511,15 +1526,6 @@ enum {
 #define IS_JSL_EHL_REVID(p, since, until) \
 	(IS_JSL_EHL(p) && IS_REVID(p, since, until))
 
-enum {
-	STEP_A0,
-	STEP_A2,
-	STEP_B0,
-	STEP_B1,
-	STEP_C0,
-	STEP_D0,
-};
-
 static inline const struct i915_rev_steppings *
 tgl_stepping_get(struct drm_i915_private *dev_priv)
 {
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index d44f64b57b7a..d6c826a2e4b6 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -27,6 +27,8 @@
 
 #include <uapi/drm/i915_drm.h>
 
+#include "intel_stepping.h"
+
 #include "display/intel_display.h"
 
 #include "gt/intel_engine_types.h"
@@ -225,6 +227,8 @@ struct intel_runtime_info {
 	u8 num_scalers[I915_MAX_PIPES];
 
 	u32 rawclk_freq;
+
+	struct i915_rev_steppings stepping;
 };
 
 struct intel_driver_caps {
diff --git a/drivers/gpu/drm/i915/intel_stepping.h b/drivers/gpu/drm/i915/intel_stepping.h
index 221905fdc082..3d24299e9128 100644
--- a/drivers/gpu/drm/i915/intel_stepping.h
+++ b/drivers/gpu/drm/i915/intel_stepping.h
@@ -22,4 +22,18 @@ extern const struct i915_rev_steppings tgl_uy_revid_step_tbl[TGL_UY_REVID_STEP_T
 extern const struct i915_rev_steppings tgl_revid_step_tbl[TGL_REVID_STEP_TBL_SIZE];
 extern const struct i915_rev_steppings adls_revid_step_tbl[ADLS_REVID_STEP_TBL_SIZE];
 
+/*
+ * Symbolic steppings that do not match the hardware. These are valid both as gt
+ * and display steppings as symbolic names.
+ */
+enum intel_stepping {
+	STEP_NONE = 0,
+	STEP_A0,
+	STEP_A2,
+	STEP_B0,
+	STEP_B1,
+	STEP_C0,
+	STEP_D0,
+};
+
 #endif /* __INTEL_STEPPING_H__ */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
