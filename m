Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBB36A6C5C
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 13:30:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B388010E245;
	Wed,  1 Mar 2023 12:30:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 505B710E245
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 12:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677673824; x=1709209824;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m0MOKPMiQmOqjS6ZXDUi7bgtUQYHBos0bka6C4k8RsM=;
 b=UXXqwJ+varILLnektu48CKZU7d/EXH+mtyYaQBqTxfxvkz3eWmm1Ji8X
 53u2V/IuSxMLBNkQvpk9DcvK6AFACGWqXckGtKbW4rzjzFNPknfGDbb7O
 HFjP0t3WoTbq28ce7kkf9eUlm8ayO69APiamQR7vBCBohNI4k9g5R7S1l
 oFO0/hZaeG8CHStrGsXE7YZxj6S8F9wyZ0D3HzZ5ehSAWWaBPwQhUucH6
 JklBMyy6Z6XUD0NTfO7L6/wxGBzx7NsUQGVVBnxffMS/JVxMeHBDXi1CF
 V6rintnEsPNSEUGGeVBlgI/7vBO1cPQPDqv56vQSKUWHowkmFEYbdmhfx g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="318195923"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="318195923"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 04:30:05 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="676739671"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="676739671"
Received: from dsvarnas-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.249])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 04:30:04 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Mar 2023 14:29:44 +0200
Message-Id: <20230301122944.1298929-5-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230301122944.1298929-1-jani.nikula@intel.com>
References: <20230301122944.1298929-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 5/5] drm/i915/dmc: mass rename dev_priv to
 i915
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

Follow the contemporary convention for struct drm_i915_private * naming.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 166 +++++++++++------------
 1 file changed, 81 insertions(+), 85 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 302a465ceb1f..6b162f77340e 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -313,12 +313,12 @@ intel_get_stepping_info(struct drm_i915_private *i915,
 	return si;
 }
 
-static void gen9_set_dc_state_debugmask(struct drm_i915_private *dev_priv)
+static void gen9_set_dc_state_debugmask(struct drm_i915_private *i915)
 {
 	/* The below bit doesn't need to be cleared ever afterwards */
-	intel_de_rmw(dev_priv, DC_STATE_DEBUG, 0,
+	intel_de_rmw(i915, DC_STATE_DEBUG, 0,
 		     DC_STATE_DEBUG_MASK_CORES | DC_STATE_DEBUG_MASK_MEMORY_UP);
-	intel_de_posting_read(dev_priv, DC_STATE_DEBUG);
+	intel_de_posting_read(i915, DC_STATE_DEBUG);
 }
 
 static void disable_event_handler(struct drm_i915_private *i915,
@@ -476,33 +476,33 @@ void intel_dmc_disable_pipe(struct drm_i915_private *i915, enum pipe pipe)
 
 /**
  * intel_dmc_load_program() - write the firmware from memory to register.
- * @dev_priv: i915 drm device.
+ * @i915: i915 drm device.
  *
  * DMC firmware is read from a .bin file and kept in internal memory one time.
  * Everytime display comes back from low power state this function is called to
  * copy the firmware from internal memory to registers.
  */
-void intel_dmc_load_program(struct drm_i915_private *dev_priv)
+void intel_dmc_load_program(struct drm_i915_private *i915)
 {
-	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
-	struct intel_dmc *dmc = i915_to_dmc(dev_priv);
+	struct i915_power_domains *power_domains = &i915->display.power.domains;
+	struct intel_dmc *dmc = i915_to_dmc(i915);
 	enum intel_dmc_id dmc_id;
 	u32 i;
 
-	if (!intel_dmc_has_payload(dev_priv))
+	if (!intel_dmc_has_payload(i915))
 		return;
 
-	pipedmc_clock_gating_wa(dev_priv, true);
+	pipedmc_clock_gating_wa(i915, true);
 
-	disable_all_event_handlers(dev_priv);
+	disable_all_event_handlers(i915);
 
-	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
+	assert_rpm_wakelock_held(&i915->runtime_pm);
 
 	preempt_disable();
 
 	for_each_dmc_id(dmc_id) {
 		for (i = 0; i < dmc->dmc_info[dmc_id].dmc_fw_size; i++) {
-			intel_de_write_fw(dev_priv,
+			intel_de_write_fw(i915,
 					  DMC_PROGRAM(dmc->dmc_info[dmc_id].start_mmioaddr, i),
 					  dmc->dmc_info[dmc_id].payload[i]);
 		}
@@ -512,23 +512,23 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 
 	for_each_dmc_id(dmc_id) {
 		for (i = 0; i < dmc->dmc_info[dmc_id].mmio_count; i++) {
-			intel_de_write(dev_priv, dmc->dmc_info[dmc_id].mmioaddr[i],
+			intel_de_write(i915, dmc->dmc_info[dmc_id].mmioaddr[i],
 				       dmc->dmc_info[dmc_id].mmiodata[i]);
 		}
 	}
 
 	power_domains->dc_state = 0;
 
-	gen9_set_dc_state_debugmask(dev_priv);
+	gen9_set_dc_state_debugmask(i915);
 
 	/*
 	 * Flip queue events need to be disabled before enabling DC5/6.
 	 * i915 doesn't use the flip queue feature, so disable it already
 	 * here.
 	 */
-	disable_all_flip_queue_events(dev_priv);
+	disable_all_flip_queue_events(i915);
 
-	pipedmc_clock_gating_wa(dev_priv, false);
+	pipedmc_clock_gating_wa(i915, false);
 }
 
 /**
@@ -839,12 +839,12 @@ static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
 
 static void parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw)
 {
-	struct drm_i915_private *dev_priv = dmc->i915;
+	struct drm_i915_private *i915 = dmc->i915;
 	struct intel_css_header *css_header;
 	struct intel_package_header *package_header;
 	struct intel_dmc_header_base *dmc_header;
 	struct stepping_info display_info = { '*', '*'};
-	const struct stepping_info *si = intel_get_stepping_info(dev_priv, &display_info);
+	const struct stepping_info *si = intel_get_stepping_info(i915, &display_info);
 	enum intel_dmc_id dmc_id;
 	u32 readcount = 0;
 	u32 r, offset;
@@ -874,7 +874,7 @@ static void parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw)
 
 		offset = readcount + dmc->dmc_info[dmc_id].dmc_offset * 4;
 		if (offset > fw->size) {
-			drm_err(&dev_priv->drm, "Reading beyond the fw_size\n");
+			drm_err(&i915->drm, "Reading beyond the fw_size\n");
 			continue;
 		}
 
@@ -883,19 +883,18 @@ static void parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw)
 	}
 }
 
-static void intel_dmc_runtime_pm_get(struct drm_i915_private *dev_priv)
+static void intel_dmc_runtime_pm_get(struct drm_i915_private *i915)
 {
-	drm_WARN_ON(&dev_priv->drm, dev_priv->display.dmc.wakeref);
-	dev_priv->display.dmc.wakeref =
-		intel_display_power_get(dev_priv, POWER_DOMAIN_INIT);
+	drm_WARN_ON(&i915->drm, i915->display.dmc.wakeref);
+	i915->display.dmc.wakeref = intel_display_power_get(i915, POWER_DOMAIN_INIT);
 }
 
-static void intel_dmc_runtime_pm_put(struct drm_i915_private *dev_priv)
+static void intel_dmc_runtime_pm_put(struct drm_i915_private *i915)
 {
 	intel_wakeref_t wakeref __maybe_unused =
-		fetch_and_zero(&dev_priv->display.dmc.wakeref);
+		fetch_and_zero(&i915->display.dmc.wakeref);
 
-	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
+	intel_display_power_put(i915, POWER_DOMAIN_INIT, wakeref);
 }
 
 static const char *dmc_fallback_path(struct drm_i915_private *i915)
@@ -909,21 +908,19 @@ static const char *dmc_fallback_path(struct drm_i915_private *i915)
 static void dmc_load_work_fn(struct work_struct *work)
 {
 	struct intel_dmc *dmc = container_of(work, typeof(*dmc), work);
-	struct drm_i915_private *dev_priv = dmc->i915;
+	struct drm_i915_private *i915 = dmc->i915;
 	const struct firmware *fw = NULL;
 	const char *fallback_path;
 	int err;
 
-	err = request_firmware(&fw, dmc->fw_path, dev_priv->drm.dev);
+	err = request_firmware(&fw, dmc->fw_path, i915->drm.dev);
 
-	if (err == -ENOENT && !dev_priv->params.dmc_firmware_path) {
-		fallback_path = dmc_fallback_path(dev_priv);
+	if (err == -ENOENT && !i915->params.dmc_firmware_path) {
+		fallback_path = dmc_fallback_path(i915);
 		if (fallback_path) {
-			drm_dbg_kms(&dev_priv->drm,
-				    "%s not found, falling back to %s\n",
-				    dmc->fw_path,
-				    fallback_path);
-			err = request_firmware(&fw, fallback_path, dev_priv->drm.dev);
+			drm_dbg_kms(&i915->drm, "%s not found, falling back to %s\n",
+				    dmc->fw_path, fallback_path);
+			err = request_firmware(&fw, fallback_path, i915->drm.dev);
 			if (err == 0)
 				dmc->fw_path = fallback_path;
 		}
@@ -931,20 +928,19 @@ static void dmc_load_work_fn(struct work_struct *work)
 
 	parse_dmc_fw(dmc, fw);
 
-	if (intel_dmc_has_payload(dev_priv)) {
-		intel_dmc_load_program(dev_priv);
-		intel_dmc_runtime_pm_put(dev_priv);
+	if (intel_dmc_has_payload(i915)) {
+		intel_dmc_load_program(i915);
+		intel_dmc_runtime_pm_put(i915);
 
-		drm_info(&dev_priv->drm,
-			 "Finished loading DMC firmware %s (v%u.%u)\n",
+		drm_info(&i915->drm, "Finished loading DMC firmware %s (v%u.%u)\n",
 			 dmc->fw_path, DMC_VERSION_MAJOR(dmc->version),
 			 DMC_VERSION_MINOR(dmc->version));
 	} else {
-		drm_notice(&dev_priv->drm,
+		drm_notice(&i915->drm,
 			   "Failed to load DMC firmware %s."
 			   " Disabling runtime power management.\n",
 			   dmc->fw_path);
-		drm_notice(&dev_priv->drm, "DMC firmware homepage: %s",
+		drm_notice(&i915->drm, "DMC firmware homepage: %s",
 			   INTEL_UC_FIRMWARE_URL);
 	}
 
@@ -953,16 +949,16 @@ static void dmc_load_work_fn(struct work_struct *work)
 
 /**
  * intel_dmc_init() - initialize the firmware loading.
- * @dev_priv: i915 drm device.
+ * @i915: i915 drm device.
  *
  * This function is called at the time of loading the display driver to read
  * firmware from a .bin file and copied into a internal memory.
  */
-void intel_dmc_init(struct drm_i915_private *dev_priv)
+void intel_dmc_init(struct drm_i915_private *i915)
 {
 	struct intel_dmc *dmc;
 
-	if (!HAS_DMC(dev_priv))
+	if (!HAS_DMC(i915))
 		return;
 
 	/*
@@ -973,72 +969,72 @@ void intel_dmc_init(struct drm_i915_private *dev_priv)
 	 * suspend as runtime suspend *requires* a working DMC for whatever
 	 * reason.
 	 */
-	intel_dmc_runtime_pm_get(dev_priv);
+	intel_dmc_runtime_pm_get(i915);
 
 	dmc = kzalloc(sizeof(*dmc), GFP_KERNEL);
 	if (!dmc)
 		return;
 
-	dmc->i915 = dev_priv;
+	dmc->i915 = i915;
 
 	INIT_WORK(&dmc->work, dmc_load_work_fn);
 
-	if (IS_DG2(dev_priv)) {
+	if (IS_DG2(i915)) {
 		dmc->fw_path = DG2_DMC_PATH;
 		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
-	} else if (IS_ALDERLAKE_P(dev_priv)) {
+	} else if (IS_ALDERLAKE_P(i915)) {
 		dmc->fw_path = ADLP_DMC_PATH;
 		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
-	} else if (IS_ALDERLAKE_S(dev_priv)) {
+	} else if (IS_ALDERLAKE_S(i915)) {
 		dmc->fw_path = ADLS_DMC_PATH;
 		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
-	} else if (IS_DG1(dev_priv)) {
+	} else if (IS_DG1(i915)) {
 		dmc->fw_path = DG1_DMC_PATH;
 		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
-	} else if (IS_ROCKETLAKE(dev_priv)) {
+	} else if (IS_ROCKETLAKE(i915)) {
 		dmc->fw_path = RKL_DMC_PATH;
 		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
-	} else if (IS_TIGERLAKE(dev_priv)) {
+	} else if (IS_TIGERLAKE(i915)) {
 		dmc->fw_path = TGL_DMC_PATH;
 		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
-	} else if (DISPLAY_VER(dev_priv) == 11) {
+	} else if (DISPLAY_VER(i915) == 11) {
 		dmc->fw_path = ICL_DMC_PATH;
 		dmc->max_fw_size = ICL_DMC_MAX_FW_SIZE;
-	} else if (IS_GEMINILAKE(dev_priv)) {
+	} else if (IS_GEMINILAKE(i915)) {
 		dmc->fw_path = GLK_DMC_PATH;
 		dmc->max_fw_size = GLK_DMC_MAX_FW_SIZE;
-	} else if (IS_KABYLAKE(dev_priv) ||
-		   IS_COFFEELAKE(dev_priv) ||
-		   IS_COMETLAKE(dev_priv)) {
+	} else if (IS_KABYLAKE(i915) ||
+		   IS_COFFEELAKE(i915) ||
+		   IS_COMETLAKE(i915)) {
 		dmc->fw_path = KBL_DMC_PATH;
 		dmc->max_fw_size = KBL_DMC_MAX_FW_SIZE;
-	} else if (IS_SKYLAKE(dev_priv)) {
+	} else if (IS_SKYLAKE(i915)) {
 		dmc->fw_path = SKL_DMC_PATH;
 		dmc->max_fw_size = SKL_DMC_MAX_FW_SIZE;
-	} else if (IS_BROXTON(dev_priv)) {
+	} else if (IS_BROXTON(i915)) {
 		dmc->fw_path = BXT_DMC_PATH;
 		dmc->max_fw_size = BXT_DMC_MAX_FW_SIZE;
 	}
 
-	if (dev_priv->params.dmc_firmware_path) {
-		if (strlen(dev_priv->params.dmc_firmware_path) == 0) {
-			drm_info(&dev_priv->drm,
+	if (i915->params.dmc_firmware_path) {
+		if (strlen(i915->params.dmc_firmware_path) == 0) {
+			drm_info(&i915->drm,
 				 "Disabling DMC firmware and runtime PM\n");
 			goto out;
 		}
 
-		dmc->fw_path = dev_priv->params.dmc_firmware_path;
+		dmc->fw_path = i915->params.dmc_firmware_path;
 	}
 
 	if (!dmc->fw_path) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "No known DMC firmware for platform, disabling runtime PM\n");
 		goto out;
 	}
 
-	dev_priv->display.dmc.dmc = dmc;
+	i915->display.dmc.dmc = dmc;
 
-	drm_dbg_kms(&dev_priv->drm, "Loading %s\n", dmc->fw_path);
+	drm_dbg_kms(&i915->drm, "Loading %s\n", dmc->fw_path);
 	schedule_work(&dmc->work);
 
 	return;
@@ -1049,71 +1045,71 @@ void intel_dmc_init(struct drm_i915_private *dev_priv)
 
 /**
  * intel_dmc_suspend() - prepare DMC firmware before system suspend
- * @dev_priv: i915 drm device
+ * @i915: i915 drm device
  *
  * Prepare the DMC firmware before entering system suspend. This includes
  * flushing pending work items and releasing any resources acquired during
  * init.
  */
-void intel_dmc_suspend(struct drm_i915_private *dev_priv)
+void intel_dmc_suspend(struct drm_i915_private *i915)
 {
-	struct intel_dmc *dmc = i915_to_dmc(dev_priv);
+	struct intel_dmc *dmc = i915_to_dmc(i915);
 
-	if (!HAS_DMC(dev_priv))
+	if (!HAS_DMC(i915))
 		return;
 
 	if (dmc)
 		flush_work(&dmc->work);
 
 	/* Drop the reference held in case DMC isn't loaded. */
-	if (!intel_dmc_has_payload(dev_priv))
-		intel_dmc_runtime_pm_put(dev_priv);
+	if (!intel_dmc_has_payload(i915))
+		intel_dmc_runtime_pm_put(i915);
 }
 
 /**
  * intel_dmc_resume() - init DMC firmware during system resume
- * @dev_priv: i915 drm device
+ * @i915: i915 drm device
  *
  * Reinitialize the DMC firmware during system resume, reacquiring any
  * resources released in intel_dmc_suspend().
  */
-void intel_dmc_resume(struct drm_i915_private *dev_priv)
+void intel_dmc_resume(struct drm_i915_private *i915)
 {
-	if (!HAS_DMC(dev_priv))
+	if (!HAS_DMC(i915))
 		return;
 
 	/*
 	 * Reacquire the reference to keep RPM disabled in case DMC isn't
 	 * loaded.
 	 */
-	if (!intel_dmc_has_payload(dev_priv))
-		intel_dmc_runtime_pm_get(dev_priv);
+	if (!intel_dmc_has_payload(i915))
+		intel_dmc_runtime_pm_get(i915);
 }
 
 /**
  * intel_dmc_fini() - unload the DMC firmware.
- * @dev_priv: i915 drm device.
+ * @i915: i915 drm device.
  *
  * Firmmware unloading includes freeing the internal memory and reset the
  * firmware loading status.
  */
-void intel_dmc_fini(struct drm_i915_private *dev_priv)
+void intel_dmc_fini(struct drm_i915_private *i915)
 {
-	struct intel_dmc *dmc = i915_to_dmc(dev_priv);
+	struct intel_dmc *dmc = i915_to_dmc(i915);
 	enum intel_dmc_id dmc_id;
 
-	if (!HAS_DMC(dev_priv))
+	if (!HAS_DMC(i915))
 		return;
 
-	intel_dmc_suspend(dev_priv);
-	drm_WARN_ON(&dev_priv->drm, dev_priv->display.dmc.wakeref);
+	intel_dmc_suspend(i915);
+	drm_WARN_ON(&i915->drm, i915->display.dmc.wakeref);
 
 	if (dmc) {
 		for_each_dmc_id(dmc_id)
 			kfree(dmc->dmc_info[dmc_id].payload);
 
 		kfree(dmc);
-		dev_priv->display.dmc.dmc = NULL;
+		i915->display.dmc.dmc = NULL;
 	}
 }
 
-- 
2.39.1

