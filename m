Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBF982B3F4
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jan 2024 18:22:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FC5910E973;
	Thu, 11 Jan 2024 17:21:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B39210E973
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jan 2024 17:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704993718; x=1736529718;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NJQBMFQ5HM2bAVSdsndZMjV8EondfV+6EB8U+EBLTRU=;
 b=BNOySAPj9tgeIhl6xrP7PVBlA1c6Inyyr9ZVs6BV4CY5iaiZGDWDqMto
 2jEGcMCf+3CEJxtDoohQqJtuLHKkoOZ9QATzkCoJLeViBlwotZK8jyEui
 zXfo3ypJphjoNmGzvCzc0M21PNHZoKxJdunf9VGs5dczCYtIJedY57TD8
 qAhpgqXz8G9hRUa3ZSRsrIZ54g8Ak8pq6+1aL22GyR7UyAcoaHL9hzr+3
 WZt+WA9JMGGA/LpA2nFSYn4OK167yyXkrNJhYpps96KL/zl8saMRrNiFA
 Wqe5/ZGaUur+iVND6CI1FS846xn5ZOCWeVS+RFkgX54Zaj12icVFfp12j Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="17531492"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; d="scan'208";a="17531492"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 09:21:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="758840880"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; d="scan'208";a="758840880"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 09:21:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 6/6] drm/i915/opregion: make struct intel_opregion opaque
Date: Thu, 11 Jan 2024 19:21:19 +0200
Message-Id: <3b68d7ff4b2930eaf15d9657618a738b9065f64b.1704992868.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1704992868.git.jani.nikula@intel.com>
References: <cover.1704992868.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With the recent cleanups, only intel_opregion.c needs to know the
definition of struct intel_opregion. Allocate it dynamically and make it
opaque.

Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |   3 +-
 drivers/gpu/drm/i915/display/intel_opregion.c | 147 +++++++++++-------
 drivers/gpu/drm/i915/display/intel_opregion.h |  27 +---
 3 files changed, 94 insertions(+), 83 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 8853a05dc331..a90f1aa201be 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -49,6 +49,7 @@ struct intel_fbdev;
 struct intel_fdi_funcs;
 struct intel_hotplug_funcs;
 struct intel_initial_plane_config;
+struct intel_opregion;
 struct intel_overlay;
 
 /* Amount of SAGV/QGV points, BSpec precisely defines this */
@@ -526,7 +527,7 @@ struct intel_display {
 	struct intel_fbc *fbc[I915_MAX_FBCS];
 	struct intel_frontbuffer_tracking fb_tracking;
 	struct intel_hotplug hotplug;
-	struct intel_opregion opregion;
+	struct intel_opregion *opregion;
 	struct intel_overlay *overlay;
 	struct intel_display_params params;
 	struct intel_vbt_data vbt;
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 26aacb01f9ec..3f5a20f9153e 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -250,11 +250,37 @@ struct opregion_asle_ext {
 
 #define MAX_DSLP	1500
 
+#define OPREGION_SIZE	(8 * 1024)
+
+struct intel_opregion {
+	struct drm_i915_private *i915;
+
+	struct opregion_header *header;
+	struct opregion_acpi *acpi;
+	struct opregion_swsci *swsci;
+	u32 swsci_gbda_sub_functions;
+	u32 swsci_sbcb_sub_functions;
+	struct opregion_asle *asle;
+	struct opregion_asle_ext *asle_ext;
+	void *rvda;
+	void *vbt_firmware;
+	const void *vbt;
+	u32 vbt_size;
+	u32 *lid_state;
+	struct work_struct asle_work;
+	struct notifier_block acpi_notifier;
+};
+
 static int check_swsci_function(struct drm_i915_private *i915, u32 function)
 {
-	struct opregion_swsci *swsci = i915->display.opregion.swsci;
+	struct intel_opregion *opregion = i915->display.opregion;
+	struct opregion_swsci *swsci;
 	u32 main_function, sub_function;
 
+	if (!opregion)
+		return -ENODEV;
+
+	swsci = opregion->swsci;
 	if (!swsci)
 		return -ENODEV;
 
@@ -265,11 +291,11 @@ static int check_swsci_function(struct drm_i915_private *i915, u32 function)
 
 	/* Check if we can call the function. See swsci_setup for details. */
 	if (main_function == SWSCI_SBCB) {
-		if ((i915->display.opregion.swsci_sbcb_sub_functions &
+		if ((opregion->swsci_sbcb_sub_functions &
 		     (1 << sub_function)) == 0)
 			return -EINVAL;
 	} else if (main_function == SWSCI_GBDA) {
-		if ((i915->display.opregion.swsci_gbda_sub_functions &
+		if ((opregion->swsci_gbda_sub_functions &
 		     (1 << sub_function)) == 0)
 			return -EINVAL;
 	}
@@ -280,7 +306,7 @@ static int check_swsci_function(struct drm_i915_private *i915, u32 function)
 static int swsci(struct drm_i915_private *dev_priv,
 		 u32 function, u32 parm, u32 *parm_out)
 {
-	struct opregion_swsci *swsci = dev_priv->display.opregion.swsci;
+	struct opregion_swsci *swsci;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	u32 scic, dslp;
 	u16 swsci_val;
@@ -290,6 +316,8 @@ static int swsci(struct drm_i915_private *dev_priv,
 	if (ret)
 		return ret;
 
+	swsci = dev_priv->display.opregion->swsci;
+
 	/* Driver sleep timeout in ms. */
 	dslp = swsci->dslp;
 	if (!dslp) {
@@ -462,7 +490,7 @@ static u32 asle_set_backlight(struct drm_i915_private *dev_priv, u32 bclp)
 {
 	struct intel_connector *connector;
 	struct drm_connector_list_iter conn_iter;
-	struct opregion_asle *asle = dev_priv->display.opregion.asle;
+	struct opregion_asle *asle = dev_priv->display.opregion->asle;
 
 	drm_dbg(&dev_priv->drm, "bclp = 0x%08x\n", bclp);
 
@@ -584,9 +612,8 @@ static void asle_work(struct work_struct *work)
 {
 	struct intel_opregion *opregion =
 		container_of(work, struct intel_opregion, asle_work);
-	struct drm_i915_private *dev_priv =
-		container_of(opregion, struct drm_i915_private, display.opregion);
-	struct opregion_asle *asle = dev_priv->display.opregion.asle;
+	struct drm_i915_private *dev_priv = opregion->i915;
+	struct opregion_asle *asle = opregion->asle;
 	u32 aslc_stat = 0;
 	u32 aslc_req;
 
@@ -634,14 +661,15 @@ static void asle_work(struct work_struct *work)
 
 bool intel_opregion_asle_present(struct drm_i915_private *i915)
 {
-	return i915->display.opregion.asle;
+	return i915->display.opregion && i915->display.opregion->asle;
 }
 
-void intel_opregion_asle_intr(struct drm_i915_private *dev_priv)
+void intel_opregion_asle_intr(struct drm_i915_private *i915)
 {
-	if (dev_priv->display.opregion.asle)
-		queue_work(dev_priv->unordered_wq,
-			   &dev_priv->display.opregion.asle_work);
+	struct intel_opregion *opregion = i915->display.opregion;
+
+	if (opregion && opregion->asle)
+		queue_work(i915->unordered_wq, &opregion->asle_work);
 }
 
 #define ACPI_EV_DISPLAY_SWITCH (1<<0)
@@ -697,7 +725,7 @@ static void set_did(struct intel_opregion *opregion, int i, u32 val)
 
 static void intel_didl_outputs(struct drm_i915_private *dev_priv)
 {
-	struct intel_opregion *opregion = &dev_priv->display.opregion;
+	struct intel_opregion *opregion = dev_priv->display.opregion;
 	struct intel_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 	int i = 0, max_outputs;
@@ -736,7 +764,7 @@ static void intel_didl_outputs(struct drm_i915_private *dev_priv)
 
 static void intel_setup_cadls(struct drm_i915_private *dev_priv)
 {
-	struct intel_opregion *opregion = &dev_priv->display.opregion;
+	struct intel_opregion *opregion = dev_priv->display.opregion;
 	struct intel_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 	int i = 0;
@@ -766,7 +794,7 @@ static void intel_setup_cadls(struct drm_i915_private *dev_priv)
 
 static void swsci_setup(struct drm_i915_private *dev_priv)
 {
-	struct intel_opregion *opregion = &dev_priv->display.opregion;
+	struct intel_opregion *opregion = dev_priv->display.opregion;
 	bool requested_callbacks = false;
 	u32 tmp;
 
@@ -844,7 +872,7 @@ static const struct dmi_system_id intel_no_opregion_vbt[] = {
 
 static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
 {
-	struct intel_opregion *opregion = &dev_priv->display.opregion;
+	struct intel_opregion *opregion = dev_priv->display.opregion;
 	const struct firmware *fw = NULL;
 	const char *name = dev_priv->display.params.vbt_firmware;
 	int ret;
@@ -884,7 +912,7 @@ static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
 
 int intel_opregion_setup(struct drm_i915_private *dev_priv)
 {
-	struct intel_opregion *opregion = &dev_priv->display.opregion;
+	struct intel_opregion *opregion;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	u32 asls, mboxes;
 	char buf[sizeof(OPREGION_SIGNATURE)];
@@ -907,11 +935,20 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 		return -ENOTSUPP;
 	}
 
+	opregion = kzalloc(sizeof(*opregion), GFP_KERNEL);
+	if (!opregion)
+		return -ENOMEM;
+
+	opregion->i915 = dev_priv;
+	dev_priv->display.opregion = opregion;
+
 	INIT_WORK(&opregion->asle_work, asle_work);
 
 	base = memremap(asls, OPREGION_SIZE, MEMREMAP_WB);
-	if (!base)
-		return -ENOMEM;
+	if (!base) {
+		err = -ENOMEM;
+		goto err_memremap;
+	}
 
 	memcpy(buf, base, sizeof(buf));
 
@@ -1039,6 +1076,10 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 
 err_out:
 	memunmap(base);
+err_memremap:
+	kfree(opregion);
+	dev_priv->display.opregion = NULL;
+
 	return err;
 }
 
@@ -1111,12 +1152,12 @@ const struct drm_edid *intel_opregion_get_edid(struct intel_connector *intel_con
 {
 	struct drm_connector *connector = &intel_connector->base;
 	struct drm_i915_private *i915 = to_i915(connector->dev);
-	struct intel_opregion *opregion = &i915->display.opregion;
+	struct intel_opregion *opregion = i915->display.opregion;
 	const struct drm_edid *drm_edid;
 	const void *edid;
 	int len;
 
-	if (!opregion->asle_ext)
+	if (!opregion || !opregion->asle_ext)
 		return NULL;
 
 	edid = opregion->asle_ext->bddc;
@@ -1139,9 +1180,9 @@ const struct drm_edid *intel_opregion_get_edid(struct intel_connector *intel_con
 
 const void *intel_opregion_get_vbt(struct drm_i915_private *i915, size_t *size)
 {
-	struct intel_opregion *opregion = &i915->display.opregion;
+	struct intel_opregion *opregion = i915->display.opregion;
 
-	if (!opregion->vbt)
+	if (!opregion || !opregion->vbt)
 		return NULL;
 
 	if (size)
@@ -1152,8 +1193,13 @@ const void *intel_opregion_get_vbt(struct drm_i915_private *i915, size_t *size)
 
 bool intel_opregion_headless_sku(struct drm_i915_private *i915)
 {
-	struct intel_opregion *opregion = &i915->display.opregion;
-	struct opregion_header *header = opregion->header;
+	struct intel_opregion *opregion = i915->display.opregion;
+	struct opregion_header *header;
+
+	if (!opregion)
+		return false;
+
+	header = opregion->header;
 
 	if (!header || header->over.major < 2 ||
 	    (header->over.major == 2 && header->over.minor < 3))
@@ -1164,9 +1210,9 @@ bool intel_opregion_headless_sku(struct drm_i915_private *i915)
 
 void intel_opregion_register(struct drm_i915_private *i915)
 {
-	struct intel_opregion *opregion = &i915->display.opregion;
+	struct intel_opregion *opregion = i915->display.opregion;
 
-	if (!opregion->header)
+	if (!opregion)
 		return;
 
 	if (opregion->acpi) {
@@ -1180,7 +1226,7 @@ void intel_opregion_register(struct drm_i915_private *i915)
 
 static void intel_opregion_resume_display(struct drm_i915_private *i915)
 {
-	struct intel_opregion *opregion = &i915->display.opregion;
+	struct intel_opregion *opregion = i915->display.opregion;
 
 	if (opregion->acpi) {
 		intel_didl_outputs(i915);
@@ -1206,9 +1252,9 @@ static void intel_opregion_resume_display(struct drm_i915_private *i915)
 
 void intel_opregion_resume(struct drm_i915_private *i915)
 {
-	struct intel_opregion *opregion = &i915->display.opregion;
+	struct intel_opregion *opregion = i915->display.opregion;
 
-	if (!opregion->header)
+	if (!opregion)
 		return;
 
 	if (HAS_DISPLAY(i915))
@@ -1219,12 +1265,12 @@ void intel_opregion_resume(struct drm_i915_private *i915)
 
 static void intel_opregion_suspend_display(struct drm_i915_private *i915)
 {
-	struct intel_opregion *opregion = &i915->display.opregion;
+	struct intel_opregion *opregion = i915->display.opregion;
 
 	if (opregion->asle)
 		opregion->asle->ardy = ASLE_ARDY_NOT_READY;
 
-	cancel_work_sync(&i915->display.opregion.asle_work);
+	cancel_work_sync(&opregion->asle_work);
 
 	if (opregion->acpi)
 		opregion->acpi->drdy = 0;
@@ -1232,9 +1278,9 @@ static void intel_opregion_suspend_display(struct drm_i915_private *i915)
 
 void intel_opregion_suspend(struct drm_i915_private *i915, pci_power_t state)
 {
-	struct intel_opregion *opregion = &i915->display.opregion;
+	struct intel_opregion *opregion = i915->display.opregion;
 
-	if (!opregion->header)
+	if (!opregion)
 		return;
 
 	intel_opregion_notify_adapter(i915, state);
@@ -1245,11 +1291,11 @@ void intel_opregion_suspend(struct drm_i915_private *i915, pci_power_t state)
 
 void intel_opregion_unregister(struct drm_i915_private *i915)
 {
-	struct intel_opregion *opregion = &i915->display.opregion;
+	struct intel_opregion *opregion = i915->display.opregion;
 
 	intel_opregion_suspend(i915, PCI_D1);
 
-	if (!opregion->header)
+	if (!opregion)
 		return;
 
 	if (opregion->acpi_notifier.notifier_call) {
@@ -1260,36 +1306,25 @@ void intel_opregion_unregister(struct drm_i915_private *i915)
 
 void intel_opregion_cleanup(struct drm_i915_private *i915)
 {
-	struct intel_opregion *opregion = &i915->display.opregion;
+	struct intel_opregion *opregion = i915->display.opregion;
 
-	if (!opregion->header)
+	if (!opregion)
 		return;
 
-	/* just clear all opregion memory pointers now */
 	memunmap(opregion->header);
-	if (opregion->rvda) {
+	if (opregion->rvda)
 		memunmap(opregion->rvda);
-		opregion->rvda = NULL;
-	}
-	if (opregion->vbt_firmware) {
-		kfree(opregion->vbt_firmware);
-		opregion->vbt_firmware = NULL;
-	}
-	opregion->header = NULL;
-	opregion->acpi = NULL;
-	opregion->swsci = NULL;
-	opregion->asle = NULL;
-	opregion->asle_ext = NULL;
-	opregion->vbt = NULL;
-	opregion->lid_state = NULL;
+	kfree(opregion->vbt_firmware);
+	kfree(opregion);
+	i915->display.opregion = NULL;
 }
 
 static int intel_opregion_show(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *i915 = m->private;
-	struct intel_opregion *opregion = &i915->display.opregion;
+	struct intel_opregion *opregion = i915->display.opregion;
 
-	if (opregion->header)
+	if (opregion)
 		seq_write(m, opregion->header, OPREGION_SIZE);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
index d084b30e8703..0bec224f711f 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.h
+++ b/drivers/gpu/drm/i915/display/intel_opregion.h
@@ -25,38 +25,13 @@
 #ifndef _INTEL_OPREGION_H_
 #define _INTEL_OPREGION_H_
 
-#include <linux/workqueue.h>
 #include <linux/pci.h>
+#include <linux/types.h>
 
 struct drm_i915_private;
 struct intel_connector;
 struct intel_encoder;
 
-struct opregion_header;
-struct opregion_acpi;
-struct opregion_swsci;
-struct opregion_asle;
-struct opregion_asle_ext;
-
-struct intel_opregion {
-	struct opregion_header *header;
-	struct opregion_acpi *acpi;
-	struct opregion_swsci *swsci;
-	u32 swsci_gbda_sub_functions;
-	u32 swsci_sbcb_sub_functions;
-	struct opregion_asle *asle;
-	struct opregion_asle_ext *asle_ext;
-	void *rvda;
-	void *vbt_firmware;
-	const void *vbt;
-	u32 vbt_size;
-	u32 *lid_state;
-	struct work_struct asle_work;
-	struct notifier_block acpi_notifier;
-};
-
-#define OPREGION_SIZE            (8 * 1024)
-
 #ifdef CONFIG_ACPI
 
 int intel_opregion_setup(struct drm_i915_private *dev_priv);
-- 
2.39.2

