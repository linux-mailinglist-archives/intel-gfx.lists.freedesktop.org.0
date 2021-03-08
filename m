Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E2B331023
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Mar 2021 14:57:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9C2D89FC8;
	Mon,  8 Mar 2021 13:57:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5069889F9F
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Mar 2021 13:57:09 +0000 (UTC)
IronPort-SDR: J3A/GqoYLtQnsCRBJDL3ltkqguKEfJ1GrhokNeGZxOn7Lxjzy1bw+coSxyqslNIKvSU4ymaqUM
 r4NU/S9ICKow==
X-IronPort-AV: E=McAfee;i="6000,8403,9916"; a="207796417"
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400"; d="scan'208";a="207796417"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 05:57:08 -0800
IronPort-SDR: g95CTFAeUlsFG8liDWIW28ZwxZBu0q3OTIfKeitjEXKoIf7ggD0+T7U7rnoo1Kci7JFJjaOxBc
 QwkrM4Jsk9Rw==
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400"; d="scan'208";a="447143240"
Received: from dhoffend-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.45.213])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 05:57:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Mar 2021 15:56:40 +0200
Message-Id: <4f87fcc238ec8f430a4adce02f66d210ca99714d.1615211711.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1615211711.git.jani.nikula@intel.com>
References: <cover.1615211711.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 3/8] drm/i915: add new helpers for accessing
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, chris@chris-wilson.co.uk
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

v2: Rename stepping->step

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 24 +++++++++++++++---------
 drivers/gpu/drm/i915/intel_device_info.h |  4 ++++
 drivers/gpu/drm/i915/intel_step.h        | 14 ++++++++++++++
 3 files changed, 33 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 02170edd6628..a543b1ad9ba9 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1274,6 +1274,21 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
 #define IS_REVID(p, since, until) \
 	(INTEL_REVID(p) >= (since) && INTEL_REVID(p) <= (until))
 
+#define INTEL_DISPLAY_STEP(__i915) (RUNTIME_INFO(__i915)->step.disp_stepping)
+#define INTEL_GT_STEP(__i915) (RUNTIME_INFO(__i915)->step.gt_stepping)
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
index d44f64b57b7a..f84569e8e711 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -27,6 +27,8 @@
 
 #include <uapi/drm/i915_drm.h>
 
+#include "intel_step.h"
+
 #include "display/intel_display.h"
 
 #include "gt/intel_engine_types.h"
@@ -225,6 +227,8 @@ struct intel_runtime_info {
 	u8 num_scalers[I915_MAX_PIPES];
 
 	u32 rawclk_freq;
+
+	struct i915_rev_steppings step;
 };
 
 struct intel_driver_caps {
diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
index af922ae3bb4e..8b3ef19d935b 100644
--- a/drivers/gpu/drm/i915/intel_step.h
+++ b/drivers/gpu/drm/i915/intel_step.h
@@ -22,4 +22,18 @@ extern const struct i915_rev_steppings tgl_uy_revid_step_tbl[TGL_UY_REVID_STEP_T
 extern const struct i915_rev_steppings tgl_revid_step_tbl[TGL_REVID_STEP_TBL_SIZE];
 extern const struct i915_rev_steppings adls_revid_step_tbl[ADLS_REVID_STEP_TBL_SIZE];
 
+/*
+ * Symbolic steppings that do not match the hardware. These are valid both as gt
+ * and display steppings as symbolic names.
+ */
+enum intel_step {
+	STEP_NONE = 0,
+	STEP_A0,
+	STEP_A2,
+	STEP_B0,
+	STEP_B1,
+	STEP_C0,
+	STEP_D0,
+};
+
 #endif /* __INTEL_STEP_H__ */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
