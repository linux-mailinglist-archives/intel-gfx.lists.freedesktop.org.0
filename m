Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 141944AD77A
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 12:37:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A183C10E5F7;
	Tue,  8 Feb 2022 11:37:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C65B310E3A6
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 11:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644320230; x=1675856230;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JLTlhGCJ4zCjhfmQn5mJgcMU0jYqzTYXYVlycfdoFn4=;
 b=jDWy5y3aUS1v5zA8Ov/QpSvLIJZaLXhiEYRDubRbmEZzHNIC/UBoyx7h
 WWBy6ZSWUTMWtXRlslYWWsmSE46ij7jqVyWIfat3qhwJjfetnuJUBir/4
 NMsVNNh4te0G5MiNYZzn0XdcluDojagtdoC1n9HeK7nO31jOjlWCKmoft
 NvKl84u5JFnUF6MW8OYY1DDKPov6RV+0Ll/v34+XptFotuS/dJx2co5AX
 ZESlOC9ZmZ2LZs3IXOs7Zc7gePCjuiWcUNc18qGopUjYXspyzbs4+UsTo
 dKdpsCATPBKs1me3M+zFYJFAcgNXMmwGA/KZ1xH19hXOOAlIlu29GGP4M Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="232495960"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="232495960"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="481915281"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:09 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 13:36:38 +0200
Message-Id: <20220208113656.179823-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220208113656.179823-1-imre.deak@intel.com>
References: <20220208113656.179823-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/26] drm/i915: Move
 intel_display_power_well_is_enabled() to intel_display_power_well.c
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move intel_display_power_well_is_enabled() to intel_power_well.c, as a step
towards making the low-level power well internals (i915_power_well_ops/desc
structs) hidden.

Eventually the call to this function and in general accessing power
wells directly from elsewhere in the driver should be replaced by the
use of power domains.

No functional change.

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |  1 +
 .../drm/i915/display/intel_display_power.c    | 36 -------------------
 .../drm/i915/display/intel_display_power.h    | 26 --------------
 .../i915/display/intel_display_power_well.c   | 33 +++++++++++++++++
 .../i915/display/intel_display_power_well.h   | 31 +++++++++++++++-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  1 +
 6 files changed, 65 insertions(+), 63 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index f4de004d470f0..bd8619428512f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -10,6 +10,7 @@
 #include "intel_de.h"
 #include "intel_display_debugfs.h"
 #include "intel_display_power.h"
+#include "intel_display_power_well.h"
 #include "intel_display_types.h"
 #include "intel_dmc.h"
 #include "intel_dp.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 321b271c4b674..61eaacdac5af2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -26,9 +26,6 @@
 #include "intel_vga.h"
 #include "vlv_sideband.h"
 
-bool intel_display_power_well_is_enabled(struct drm_i915_private *dev_priv,
-					 enum i915_power_well_id power_well_id);
-
 const char *
 intel_display_power_domain_str(enum intel_display_power_domain domain)
 {
@@ -917,29 +914,6 @@ static void assert_dmc_loaded(struct drm_i915_private *dev_priv)
 		      "DMC HTP Not fine\n");
 }
 
-static struct i915_power_well *
-lookup_power_well(struct drm_i915_private *dev_priv,
-		  enum i915_power_well_id power_well_id)
-{
-	struct i915_power_well *power_well;
-
-	for_each_power_well(dev_priv, power_well)
-		if (power_well->desc->id == power_well_id)
-			return power_well;
-
-	/*
-	 * It's not feasible to add error checking code to the callers since
-	 * this condition really shouldn't happen and it doesn't even make sense
-	 * to abort things like display initialization sequences. Just return
-	 * the first power well and hope the WARN gets reported so we can fix
-	 * our driver.
-	 */
-	drm_WARN(&dev_priv->drm, 1,
-		 "Power well %d not defined for this platform\n",
-		 power_well_id);
-	return &dev_priv->power_domains.power_wells[0];
-}
-
 /**
  * intel_display_power_set_target_dc_state - Set target dc state.
  * @dev_priv: i915 device
@@ -3329,16 +3303,6 @@ static const struct i915_power_well_desc chv_power_wells[] = {
 	},
 };
 
-bool intel_display_power_well_is_enabled(struct drm_i915_private *dev_priv,
-					 enum i915_power_well_id power_well_id)
-{
-	struct i915_power_well *power_well;
-
-	power_well = lookup_power_well(dev_priv, power_well_id);
-
-	return intel_power_well_is_enabled(dev_priv, power_well);
-}
-
 static const struct i915_power_well_desc skl_power_wells[] = {
 	{
 		.name = "always-on",
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index f28aa4b500c42..ced384b0a1658 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -132,30 +132,6 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_NUM,
 };
 
-/*
- * i915_power_well_id:
- *
- * IDs used to look up power wells. Power wells accessed directly bypassing
- * the power domains framework must be assigned a unique ID. The rest of power
- * wells must be assigned DISP_PW_ID_NONE.
- */
-enum i915_power_well_id {
-	DISP_PW_ID_NONE,
-
-	VLV_DISP_PW_DISP2D,
-	BXT_DISP_PW_DPIO_CMN_A,
-	VLV_DISP_PW_DPIO_CMN_BC,
-	GLK_DISP_PW_DPIO_CMN_C,
-	CHV_DISP_PW_DPIO_CMN_D,
-	HSW_DISP_PW_GLOBAL,
-	SKL_DISP_PW_MISC_IO,
-	SKL_DISP_PW_1,
-	SKL_DISP_PW_2,
-	ICL_DISP_PW_3,
-	SKL_DISP_DC_OFF,
-	TGL_DISP_PW_TC_COLD_OFF,
-};
-
 #define POWER_DOMAIN_PIPE(pipe) ((pipe) + POWER_DOMAIN_PIPE_A)
 #define POWER_DOMAIN_PIPE_PANEL_FITTER(pipe) \
 		((pipe) + POWER_DOMAIN_PIPE_A_PANEL_FITTER)
@@ -239,8 +215,6 @@ intel_display_power_domain_str(enum intel_display_power_domain domain);
 
 bool intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
 				    enum intel_display_power_domain domain);
-bool intel_display_power_well_is_enabled(struct drm_i915_private *dev_priv,
-					 enum i915_power_well_id power_well_id);
 bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
 				      enum intel_display_power_domain domain);
 intel_wakeref_t intel_display_power_get(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 415ad193a8e83..2a0fb9d9c60f2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -6,6 +6,29 @@
 #include "i915_drv.h"
 #include "intel_display_power_well.h"
 
+struct i915_power_well *
+lookup_power_well(struct drm_i915_private *i915,
+		  enum i915_power_well_id power_well_id)
+{
+	struct i915_power_well *power_well;
+
+	for_each_power_well(i915, power_well)
+		if (power_well->desc->id == power_well_id)
+			return power_well;
+
+	/*
+	 * It's not feasible to add error checking code to the callers since
+	 * this condition really shouldn't happen and it doesn't even make sense
+	 * to abort things like display initialization sequences. Just return
+	 * the first power well and hope the WARN gets reported so we can fix
+	 * our driver.
+	 */
+	drm_WARN(&i915->drm, 1,
+		 "Power well %d not defined for this platform\n",
+		 power_well_id);
+	return &i915->power_domains.power_wells[0];
+}
+
 void intel_power_well_enable(struct drm_i915_private *i915,
 			     struct i915_power_well *power_well)
 {
@@ -59,6 +82,16 @@ bool intel_power_well_is_enabled_cached(struct i915_power_well *power_well)
 	return power_well->hw_enabled;
 }
 
+bool intel_display_power_well_is_enabled(struct drm_i915_private *dev_priv,
+					 enum i915_power_well_id power_well_id)
+{
+	struct i915_power_well *power_well;
+
+	power_well = lookup_power_well(dev_priv, power_well_id);
+
+	return intel_power_well_is_enabled(dev_priv, power_well);
+}
+
 bool intel_power_well_is_always_on(struct i915_power_well *power_well)
 {
 	return power_well->desc->always_on;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
index 43affbdbc48c1..9a3756fdcf7fc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -8,9 +8,33 @@
 #include <linux/types.h>
 
 #include "intel_display.h"
-#include "intel_display_power.h"
 
 struct drm_i915_private;
+struct i915_power_well;
+
+/*
+ * i915_power_well_id:
+ *
+ * IDs used to look up power wells. Power wells accessed directly bypassing
+ * the power domains framework must be assigned a unique ID. The rest of power
+ * wells must be assigned DISP_PW_ID_NONE.
+ */
+enum i915_power_well_id {
+	DISP_PW_ID_NONE,
+
+	VLV_DISP_PW_DISP2D,
+	BXT_DISP_PW_DPIO_CMN_A,
+	VLV_DISP_PW_DPIO_CMN_BC,
+	GLK_DISP_PW_DPIO_CMN_C,
+	CHV_DISP_PW_DPIO_CMN_D,
+	HSW_DISP_PW_GLOBAL,
+	SKL_DISP_PW_MISC_IO,
+	SKL_DISP_PW_1,
+	SKL_DISP_PW_2,
+	ICL_DISP_PW_3,
+	SKL_DISP_DC_OFF,
+	TGL_DISP_PW_TC_COLD_OFF,
+};
 
 struct i915_power_well_regs {
 	i915_reg_t bios;
@@ -103,6 +127,9 @@ struct i915_power_well {
 	bool hw_enabled;
 };
 
+struct i915_power_well *lookup_power_well(struct drm_i915_private *i915,
+					  enum i915_power_well_id id);
+
 void intel_power_well_enable(struct drm_i915_private *i915,
 			     struct i915_power_well *power_well);
 void intel_power_well_disable(struct drm_i915_private *i915,
@@ -116,6 +143,8 @@ void intel_power_well_put(struct drm_i915_private *i915,
 bool intel_power_well_is_enabled(struct drm_i915_private *i915,
 				 struct i915_power_well *power_well);
 bool intel_power_well_is_enabled_cached(struct i915_power_well *power_well);
+bool intel_display_power_well_is_enabled(struct drm_i915_private *dev_priv,
+					 enum i915_power_well_id power_well_id);
 bool intel_power_well_is_always_on(struct i915_power_well *power_well);
 const char *intel_power_well_name(struct i915_power_well *power_well);
 u64 intel_power_well_domains(struct i915_power_well *power_well);
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index e1ecf38db0ef8..4de4c174a987d 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -20,6 +20,7 @@
 #include "intel_connector.h"
 #include "intel_de.h"
 #include "intel_display_power.h"
+#include "intel_display_power_well.h"
 #include "intel_display_types.h"
 #include "intel_hdcp.h"
 #include "intel_pcode.h"
-- 
2.27.0

