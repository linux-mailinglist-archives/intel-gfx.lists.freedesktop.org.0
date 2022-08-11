Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5822958FEFB
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:14:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB39DB3DCE;
	Thu, 11 Aug 2022 15:14:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6440B3D57
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230870; x=1691766870;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RhFiBsqlXcWp7qgwQUy8CLUYpwdIlEdUNPmg34Wmq4A=;
 b=k7Cg649X+hGALq4oUN60OqyOgkmUVTYmeXiXEWvOBk3/9GomobrhRj75
 FSeBTsjuODyoV/lF0RmqvhI6MKB2Xyp/3Xpl9m9021LW1ay7HPLBA+aw0
 YqR2AX/w9sXJxsEEL4lhdfrsDLT/8/XEA1VID7PRg+a8+KPV+/oQk2WQo
 64fBNbqyLfaPO/jVCh8VoG4wlRMUxPcWEo5L0WHg6BxzVEqd5wGBbKKgA
 f+2OphhdpCnehWSo88PmDpmrRh1GG5yt0yGNMXZHgs4zfk3qDWepnVJw6
 E/EAsmvkS5ZhGnblYCw3DV0Zl2PJG5e8Z5wvJdC/iOz2pHBkBJ6W9Or7f Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="291373329"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="291373329"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:09:37 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="731902508"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:09:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:32 +0300
Message-Id: <511c0cd95270e4c62abc3d0974e6dca18859f5c3.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 21/39] drm/i915: move opregion to
 display.opregion
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display related members under drm_i915_private display sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     |  4 +-
 .../gpu/drm/i915/display/intel_display_core.h |  2 +
 .../drm/i915/display/intel_display_debugfs.c  |  6 ++-
 drivers/gpu/drm/i915/display/intel_opregion.c | 42 +++++++++----------
 drivers/gpu/drm/i915/i915_drv.h               |  2 -
 drivers/gpu/drm/i915/i915_irq.c               |  2 +-
 6 files changed, 30 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 51dde5bfd956..5923cce94c11 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3078,7 +3078,7 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
  */
 void intel_bios_init(struct drm_i915_private *i915)
 {
-	const struct vbt_header *vbt = i915->opregion.vbt;
+	const struct vbt_header *vbt = i915->display.opregion.vbt;
 	struct vbt_header *oprom_vbt = NULL;
 	const struct bdb_header *bdb;
 
@@ -3285,7 +3285,7 @@ bool intel_bios_is_lvds_present(struct drm_i915_private *i915, u8 *i2c_pin)
 		 * additional data.  Trust that if the VBT was written into
 		 * the OpRegion then they have validated the LVDS's existence.
 		 */
-		if (i915->opregion.vbt)
+		if (i915->display.opregion.vbt)
 			return true;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 65c3394d2e7f..948415e1a64e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -16,6 +16,7 @@
 #include "intel_dpll_mgr.h"
 #include "intel_global_state.h"
 #include "intel_gmbus.h"
+#include "intel_opregion.h"
 #include "intel_pm_types.h"
 
 struct drm_i915_private;
@@ -286,6 +287,7 @@ struct intel_display {
 	struct intel_dmc dmc;
 	struct intel_dpll dpll;
 	struct intel_hotplug hotplug;
+	struct intel_opregion opregion;
 	struct intel_overlay *overlay;
 	struct intel_wm wm;
 };
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 13c855b59f7d..619523f85a18 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -103,7 +103,8 @@ static int i915_sr_status(struct seq_file *m, void *unused)
 
 static int i915_opregion(struct seq_file *m, void *unused)
 {
-	struct intel_opregion *opregion = &node_to_i915(m->private)->opregion;
+	struct drm_i915_private *i915 = node_to_i915(m->private);
+	struct intel_opregion *opregion = &i915->display.opregion;
 
 	if (opregion->header)
 		seq_write(m, opregion->header, OPREGION_SIZE);
@@ -113,7 +114,8 @@ static int i915_opregion(struct seq_file *m, void *unused)
 
 static int i915_vbt(struct seq_file *m, void *unused)
 {
-	struct intel_opregion *opregion = &node_to_i915(m->private)->opregion;
+	struct drm_i915_private *i915 = node_to_i915(m->private);
+	struct intel_opregion *opregion = &i915->display.opregion;
 
 	if (opregion->vbt)
 		seq_write(m, opregion->vbt, opregion->vbt_size);
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 1c0c745c142d..caa07ef34f21 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -252,7 +252,7 @@ struct opregion_asle_ext {
 
 static int check_swsci_function(struct drm_i915_private *i915, u32 function)
 {
-	struct opregion_swsci *swsci = i915->opregion.swsci;
+	struct opregion_swsci *swsci = i915->display.opregion.swsci;
 	u32 main_function, sub_function;
 
 	if (!swsci)
@@ -265,11 +265,11 @@ static int check_swsci_function(struct drm_i915_private *i915, u32 function)
 
 	/* Check if we can call the function. See swsci_setup for details. */
 	if (main_function == SWSCI_SBCB) {
-		if ((i915->opregion.swsci_sbcb_sub_functions &
+		if ((i915->display.opregion.swsci_sbcb_sub_functions &
 		     (1 << sub_function)) == 0)
 			return -EINVAL;
 	} else if (main_function == SWSCI_GBDA) {
-		if ((i915->opregion.swsci_gbda_sub_functions &
+		if ((i915->display.opregion.swsci_gbda_sub_functions &
 		     (1 << sub_function)) == 0)
 			return -EINVAL;
 	}
@@ -280,7 +280,7 @@ static int check_swsci_function(struct drm_i915_private *i915, u32 function)
 static int swsci(struct drm_i915_private *dev_priv,
 		 u32 function, u32 parm, u32 *parm_out)
 {
-	struct opregion_swsci *swsci = dev_priv->opregion.swsci;
+	struct opregion_swsci *swsci = dev_priv->display.opregion.swsci;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	u32 scic, dslp;
 	u16 swsci_val;
@@ -462,7 +462,7 @@ static u32 asle_set_backlight(struct drm_i915_private *dev_priv, u32 bclp)
 {
 	struct intel_connector *connector;
 	struct drm_connector_list_iter conn_iter;
-	struct opregion_asle *asle = dev_priv->opregion.asle;
+	struct opregion_asle *asle = dev_priv->display.opregion.asle;
 	struct drm_device *dev = &dev_priv->drm;
 
 	drm_dbg(&dev_priv->drm, "bclp = 0x%08x\n", bclp);
@@ -586,8 +586,8 @@ static void asle_work(struct work_struct *work)
 	struct intel_opregion *opregion =
 		container_of(work, struct intel_opregion, asle_work);
 	struct drm_i915_private *dev_priv =
-		container_of(opregion, struct drm_i915_private, opregion);
-	struct opregion_asle *asle = dev_priv->opregion.asle;
+		container_of(opregion, struct drm_i915_private, display.opregion);
+	struct opregion_asle *asle = dev_priv->display.opregion.asle;
 	u32 aslc_stat = 0;
 	u32 aslc_req;
 
@@ -635,8 +635,8 @@ static void asle_work(struct work_struct *work)
 
 void intel_opregion_asle_intr(struct drm_i915_private *dev_priv)
 {
-	if (dev_priv->opregion.asle)
-		schedule_work(&dev_priv->opregion.asle_work);
+	if (dev_priv->display.opregion.asle)
+		schedule_work(&dev_priv->display.opregion.asle_work);
 }
 
 #define ACPI_EV_DISPLAY_SWITCH (1<<0)
@@ -692,7 +692,7 @@ static void set_did(struct intel_opregion *opregion, int i, u32 val)
 
 static void intel_didl_outputs(struct drm_i915_private *dev_priv)
 {
-	struct intel_opregion *opregion = &dev_priv->opregion;
+	struct intel_opregion *opregion = &dev_priv->display.opregion;
 	struct intel_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 	int i = 0, max_outputs;
@@ -731,7 +731,7 @@ static void intel_didl_outputs(struct drm_i915_private *dev_priv)
 
 static void intel_setup_cadls(struct drm_i915_private *dev_priv)
 {
-	struct intel_opregion *opregion = &dev_priv->opregion;
+	struct intel_opregion *opregion = &dev_priv->display.opregion;
 	struct intel_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 	int i = 0;
@@ -761,7 +761,7 @@ static void intel_setup_cadls(struct drm_i915_private *dev_priv)
 
 static void swsci_setup(struct drm_i915_private *dev_priv)
 {
-	struct intel_opregion *opregion = &dev_priv->opregion;
+	struct intel_opregion *opregion = &dev_priv->display.opregion;
 	bool requested_callbacks = false;
 	u32 tmp;
 
@@ -839,7 +839,7 @@ static const struct dmi_system_id intel_no_opregion_vbt[] = {
 
 static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
 {
-	struct intel_opregion *opregion = &dev_priv->opregion;
+	struct intel_opregion *opregion = &dev_priv->display.opregion;
 	const struct firmware *fw = NULL;
 	const char *name = dev_priv->params.vbt_firmware;
 	int ret;
@@ -879,7 +879,7 @@ static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
 
 int intel_opregion_setup(struct drm_i915_private *dev_priv)
 {
-	struct intel_opregion *opregion = &dev_priv->opregion;
+	struct intel_opregion *opregion = &dev_priv->display.opregion;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	u32 asls, mboxes;
 	char buf[sizeof(OPREGION_SIGNATURE)];
@@ -1106,7 +1106,7 @@ struct edid *intel_opregion_get_edid(struct intel_connector *intel_connector)
 {
 	struct drm_connector *connector = &intel_connector->base;
 	struct drm_i915_private *i915 = to_i915(connector->dev);
-	struct intel_opregion *opregion = &i915->opregion;
+	struct intel_opregion *opregion = &i915->display.opregion;
 	const void *in_edid;
 	const struct edid *edid;
 	struct edid *new_edid;
@@ -1141,7 +1141,7 @@ struct edid *intel_opregion_get_edid(struct intel_connector *intel_connector)
 
 bool intel_opregion_headless_sku(struct drm_i915_private *i915)
 {
-	struct intel_opregion *opregion = &i915->opregion;
+	struct intel_opregion *opregion = &i915->display.opregion;
 	struct opregion_header *header = opregion->header;
 
 	if (!header || header->over.major < 2 ||
@@ -1153,7 +1153,7 @@ bool intel_opregion_headless_sku(struct drm_i915_private *i915)
 
 void intel_opregion_register(struct drm_i915_private *i915)
 {
-	struct intel_opregion *opregion = &i915->opregion;
+	struct intel_opregion *opregion = &i915->display.opregion;
 
 	if (!opregion->header)
 		return;
@@ -1169,7 +1169,7 @@ void intel_opregion_register(struct drm_i915_private *i915)
 
 void intel_opregion_resume(struct drm_i915_private *i915)
 {
-	struct intel_opregion *opregion = &i915->opregion;
+	struct intel_opregion *opregion = &i915->display.opregion;
 
 	if (!opregion->header)
 		return;
@@ -1200,7 +1200,7 @@ void intel_opregion_resume(struct drm_i915_private *i915)
 
 void intel_opregion_suspend(struct drm_i915_private *i915, pci_power_t state)
 {
-	struct intel_opregion *opregion = &i915->opregion;
+	struct intel_opregion *opregion = &i915->display.opregion;
 
 	if (!opregion->header)
 		return;
@@ -1210,7 +1210,7 @@ void intel_opregion_suspend(struct drm_i915_private *i915, pci_power_t state)
 	if (opregion->asle)
 		opregion->asle->ardy = ASLE_ARDY_NOT_READY;
 
-	cancel_work_sync(&i915->opregion.asle_work);
+	cancel_work_sync(&i915->display.opregion.asle_work);
 
 	if (opregion->acpi)
 		opregion->acpi->drdy = 0;
@@ -1218,7 +1218,7 @@ void intel_opregion_suspend(struct drm_i915_private *i915, pci_power_t state)
 
 void intel_opregion_unregister(struct drm_i915_private *i915)
 {
-	struct intel_opregion *opregion = &i915->opregion;
+	struct intel_opregion *opregion = &i915->display.opregion;
 
 	intel_opregion_suspend(i915, PCI_D1);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 645eafa53a8f..bd2f1e9f3679 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -44,7 +44,6 @@
 #include "display/intel_dsb.h"
 #include "display/intel_fbc.h"
 #include "display/intel_frontbuffer.h"
-#include "display/intel_opregion.h"
 
 #include "gem/i915_gem_context_types.h"
 #include "gem/i915_gem_lmem.h"
@@ -329,7 +328,6 @@ struct drm_i915_private {
 	u32 pipestat_irq_mask[I915_MAX_PIPES];
 
 	struct intel_fbc *fbc[I915_MAX_FBCS];
-	struct intel_opregion opregion;
 	struct intel_vbt_data vbt;
 
 	bool preserve_bios_swizzle;
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index c2f2d7b8d964..515648cd1233 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -595,7 +595,7 @@ void i915_disable_pipestat(struct drm_i915_private *dev_priv,
 
 static bool i915_has_asle(struct drm_i915_private *dev_priv)
 {
-	if (!dev_priv->opregion.asle)
+	if (!dev_priv->display.opregion.asle)
 		return false;
 
 	return IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv);
-- 
2.34.1

