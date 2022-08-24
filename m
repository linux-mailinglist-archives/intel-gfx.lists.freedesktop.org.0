Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 908C859FB20
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:19:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43D5AB5288;
	Wed, 24 Aug 2022 13:18:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5A6F9B2AC
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661347013; x=1692883013;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VuXkuDIkHCxOx6r3NHVAKJBk34Qq5RcJaxbq0od+Jlk=;
 b=W4he8ZU9xXLv67GMxty4t4fEOlCpOfFPpu3UIdfs2IPMS0PGGF2QGGeF
 ekt1D92FJIERLj2Mqp5KIn8nNLyoGMiVNEbFfS+k95uBvcSny4mQccEVR
 k+065fFyTHups+hH5fA8QAnboV8VWR65vNJMfP0wFkADORZ0Mv4mtALT9
 qqvwnc2iywnl6k1wambLIl2cuH5g9GnBkBI4fs6OS1BxzukFwltrQfb00
 cgzXshbDNL7vcH2I4O8nuvPeGKI/W695zkzLCh0wqVYChxdwoF2aPEoYU
 4RW5aZz38M6A+HIxA0Nhije9MocyimnvO2pmnZqWO7uGbWOY1Bn5x0ne2 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="292706746"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="292706746"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:16:52 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="642853678"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by orsmga001-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:16:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:36 +0300
Message-Id: <7cb91222e099b96b82c74b5f086d50c43459d61b.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/38] drm/i915: move dmc to display.dmc
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display dmc related members under drm_i915_private display
sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  4 ++
 .../drm/i915/display/intel_display_power.c    | 18 +++----
 .../i915/display/intel_display_power_well.c   | 18 +++----
 drivers/gpu/drm/i915/display/intel_dmc.c      | 52 +++++++++----------
 drivers/gpu/drm/i915/display/intel_psr.c      |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  3 --
 6 files changed, 49 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 95334c28aed7..f2392bc16279 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -10,6 +10,7 @@
 #include <linux/types.h>
 #include <linux/wait.h>
 
+#include "intel_dmc.h"
 #include "intel_gmbus.h"
 
 struct drm_i915_private;
@@ -106,6 +107,9 @@ struct intel_display {
 		/* protects panel power sequencer state */
 		struct mutex mutex;
 	} pps;
+
+	/* Grouping using named structs. Keep sorted. */
+	struct intel_dmc dmc;
 };
 
 #endif /* __INTEL_DISPLAY_CORE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index f7e8d1ff62cf..31962a8fee3a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -269,7 +269,7 @@ sanitize_target_dc_state(struct drm_i915_private *dev_priv,
 		if (target_dc_state != states[i])
 			continue;
 
-		if (dev_priv->dmc.allowed_dc_mask & target_dc_state)
+		if (dev_priv->display.dmc.allowed_dc_mask & target_dc_state)
 			break;
 
 		target_dc_state = states[i + 1];
@@ -302,7 +302,7 @@ void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
 
 	state = sanitize_target_dc_state(dev_priv, state);
 
-	if (state == dev_priv->dmc.target_dc_state)
+	if (state == dev_priv->display.dmc.target_dc_state)
 		goto unlock;
 
 	dc_off_enabled = intel_power_well_is_enabled(dev_priv, power_well);
@@ -313,7 +313,7 @@ void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
 	if (!dc_off_enabled)
 		intel_power_well_enable(dev_priv, power_well);
 
-	dev_priv->dmc.target_dc_state = state;
+	dev_priv->display.dmc.target_dc_state = state;
 
 	if (!dc_off_enabled)
 		intel_power_well_disable(dev_priv, power_well);
@@ -982,10 +982,10 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
 	dev_priv->params.disable_power_well =
 		sanitize_disable_power_well_option(dev_priv,
 						   dev_priv->params.disable_power_well);
-	dev_priv->dmc.allowed_dc_mask =
+	dev_priv->display.dmc.allowed_dc_mask =
 		get_allowed_dc_mask(dev_priv, dev_priv->params.enable_dc);
 
-	dev_priv->dmc.target_dc_state =
+	dev_priv->display.dmc.target_dc_state =
 		sanitize_target_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
 
 	mutex_init(&power_domains->lock);
@@ -2043,7 +2043,7 @@ void intel_power_domains_suspend(struct drm_i915_private *i915,
 	 * resources as required and also enable deeper system power states
 	 * that would be blocked if the firmware was inactive.
 	 */
-	if (!(i915->dmc.allowed_dc_mask & DC_STATE_EN_DC9) &&
+	if (!(i915->display.dmc.allowed_dc_mask & DC_STATE_EN_DC9) &&
 	    suspend_mode == I915_DRM_SUSPEND_IDLE &&
 	    intel_dmc_has_payload(i915)) {
 		intel_display_power_flush_work(i915);
@@ -2236,10 +2236,10 @@ void intel_display_power_resume(struct drm_i915_private *i915)
 		bxt_disable_dc9(i915);
 		icl_display_core_init(i915, true);
 		if (intel_dmc_has_payload(i915)) {
-			if (i915->dmc.allowed_dc_mask &
+			if (i915->display.dmc.allowed_dc_mask &
 			    DC_STATE_EN_UPTO_DC6)
 				skl_enable_dc6(i915);
-			else if (i915->dmc.allowed_dc_mask &
+			else if (i915->display.dmc.allowed_dc_mask &
 				 DC_STATE_EN_UPTO_DC5)
 				gen9_enable_dc5(i915);
 		}
@@ -2247,7 +2247,7 @@ void intel_display_power_resume(struct drm_i915_private *i915)
 		bxt_disable_dc9(i915);
 		bxt_display_core_init(i915, true);
 		if (intel_dmc_has_payload(i915) &&
-		    (i915->dmc.allowed_dc_mask & DC_STATE_EN_UPTO_DC5))
+		    (i915->display.dmc.allowed_dc_mask & DC_STATE_EN_UPTO_DC5))
 			gen9_enable_dc5(i915);
 	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
 		hsw_disable_pc8(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 7044016d4d98..e442055f1d6c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -711,8 +711,8 @@ void gen9_sanitize_dc_state(struct drm_i915_private *dev_priv)
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "Resetting DC state tracking from %02x to %02x\n",
-		    dev_priv->dmc.dc_state, val);
-	dev_priv->dmc.dc_state = val;
+		    dev_priv->display.dmc.dc_state, val);
+	dev_priv->display.dmc.dc_state = val;
 }
 
 /**
@@ -747,8 +747,8 @@ void gen9_set_dc_state(struct drm_i915_private *dev_priv, u32 state)
 		return;
 
 	if (drm_WARN_ON_ONCE(&dev_priv->drm,
-			     state & ~dev_priv->dmc.allowed_dc_mask))
-		state &= dev_priv->dmc.allowed_dc_mask;
+			     state & ~dev_priv->display.dmc.allowed_dc_mask))
+		state &= dev_priv->display.dmc.allowed_dc_mask;
 
 	val = intel_de_read(dev_priv, DC_STATE_EN);
 	mask = gen9_dc_mask(dev_priv);
@@ -756,16 +756,16 @@ void gen9_set_dc_state(struct drm_i915_private *dev_priv, u32 state)
 		    val & mask, state);
 
 	/* Check if DMC is ignoring our DC state requests */
-	if ((val & mask) != dev_priv->dmc.dc_state)
+	if ((val & mask) != dev_priv->display.dmc.dc_state)
 		drm_err(&dev_priv->drm, "DC state mismatch (0x%x -> 0x%x)\n",
-			dev_priv->dmc.dc_state, val & mask);
+			dev_priv->display.dmc.dc_state, val & mask);
 
 	val &= ~mask;
 	val |= state;
 
 	gen9_write_dc_state(dev_priv, val);
 
-	dev_priv->dmc.dc_state = val & mask;
+	dev_priv->display.dmc.dc_state = val & mask;
 }
 
 static void tgl_enable_dc3co(struct drm_i915_private *dev_priv)
@@ -959,7 +959,7 @@ void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
 {
 	struct intel_cdclk_config cdclk_config = {};
 
-	if (dev_priv->dmc.target_dc_state == DC_STATE_EN_DC3CO) {
+	if (dev_priv->display.dmc.target_dc_state == DC_STATE_EN_DC3CO) {
 		tgl_disable_dc3co(dev_priv);
 		return;
 	}
@@ -1001,7 +1001,7 @@ static void gen9_dc_off_power_well_disable(struct drm_i915_private *dev_priv,
 	if (!intel_dmc_has_payload(dev_priv))
 		return;
 
-	switch (dev_priv->dmc.target_dc_state) {
+	switch (dev_priv->display.dmc.target_dc_state) {
 	case DC_STATE_EN_DC3CO:
 		tgl_enable_dc3co(dev_priv);
 		break;
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 6c35212c3625..e52ecc0738a6 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -250,7 +250,7 @@ struct stepping_info {
 
 static bool has_dmc_id_fw(struct drm_i915_private *i915, int dmc_id)
 {
-	return i915->dmc.dmc_info[dmc_id].payload;
+	return i915->display.dmc.dmc_info[dmc_id].payload;
 }
 
 bool intel_dmc_has_payload(struct drm_i915_private *i915)
@@ -417,7 +417,7 @@ static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
  */
 void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 {
-	struct intel_dmc *dmc = &dev_priv->dmc;
+	struct intel_dmc *dmc = &dev_priv->display.dmc;
 	u32 id, i;
 
 	if (!intel_dmc_has_payload(dev_priv))
@@ -448,7 +448,7 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 		}
 	}
 
-	dev_priv->dmc.dc_state = 0;
+	dev_priv->display.dmc.dc_state = 0;
 
 	gen9_set_dc_state_debugmask(dev_priv);
 
@@ -482,7 +482,7 @@ void intel_dmc_disable_program(struct drm_i915_private *i915)
 void assert_dmc_loaded(struct drm_i915_private *i915)
 {
 	drm_WARN_ONCE(&i915->drm,
-		      !intel_de_read(i915, DMC_PROGRAM(i915->dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),
+		      !intel_de_read(i915, DMC_PROGRAM(i915->display.dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),
 		      "DMC program storage start is NULL\n");
 	drm_WARN_ONCE(&i915->drm, !intel_de_read(i915, DMC_SSP_BASE),
 		      "DMC SSP Base Not fine\n");
@@ -519,7 +519,7 @@ static void dmc_set_fw_offset(struct intel_dmc *dmc,
 {
 	unsigned int i, id;
 
-	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
+	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), display.dmc);
 
 	for (i = 0; i < num_entries; i++) {
 		id = package_ver <= 1 ? DMC_FW_MAIN : fw_info[i].dmc_id;
@@ -547,7 +547,7 @@ static bool dmc_mmio_addr_sanity_check(struct intel_dmc *dmc,
 				       const u32 *mmioaddr, u32 mmio_count,
 				       int header_ver, u8 dmc_id)
 {
-	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
+	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), display.dmc);
 	u32 start_range, end_range;
 	int i;
 
@@ -585,7 +585,7 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 			       const struct intel_dmc_header_base *dmc_header,
 			       size_t rem_size, u8 dmc_id)
 {
-	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
+	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), display.dmc);
 	struct dmc_fw_info *dmc_info = &dmc->dmc_info[dmc_id];
 	unsigned int header_len_bytes, dmc_header_size, payload_size, i;
 	const u32 *mmioaddr, *mmiodata;
@@ -696,7 +696,7 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
 		     const struct stepping_info *si,
 		     size_t rem_size)
 {
-	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
+	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), display.dmc);
 	u32 package_size = sizeof(struct intel_package_header);
 	u32 num_entries, max_entries;
 	const struct intel_fw_info *fw_info;
@@ -750,7 +750,7 @@ static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
 			    struct intel_css_header *css_header,
 			    size_t rem_size)
 {
-	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
+	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), display.dmc);
 
 	if (rem_size < sizeof(struct intel_css_header)) {
 		drm_err(&i915->drm, "Truncated DMC firmware, refusing.\n");
@@ -787,7 +787,7 @@ static void parse_dmc_fw(struct drm_i915_private *dev_priv,
 	struct intel_css_header *css_header;
 	struct intel_package_header *package_header;
 	struct intel_dmc_header_base *dmc_header;
-	struct intel_dmc *dmc = &dev_priv->dmc;
+	struct intel_dmc *dmc = &dev_priv->display.dmc;
 	struct stepping_info display_info = { '*', '*'};
 	const struct stepping_info *si = intel_get_stepping_info(dev_priv, &display_info);
 	u32 readcount = 0;
@@ -814,7 +814,7 @@ static void parse_dmc_fw(struct drm_i915_private *dev_priv,
 	readcount += r;
 
 	for (id = 0; id < DMC_FW_MAX; id++) {
-		if (!dev_priv->dmc.dmc_info[id].present)
+		if (!dev_priv->display.dmc.dmc_info[id].present)
 			continue;
 
 		offset = readcount + dmc->dmc_info[id].dmc_offset * 4;
@@ -830,15 +830,15 @@ static void parse_dmc_fw(struct drm_i915_private *dev_priv,
 
 static void intel_dmc_runtime_pm_get(struct drm_i915_private *dev_priv)
 {
-	drm_WARN_ON(&dev_priv->drm, dev_priv->dmc.wakeref);
-	dev_priv->dmc.wakeref =
+	drm_WARN_ON(&dev_priv->drm, dev_priv->display.dmc.wakeref);
+	dev_priv->display.dmc.wakeref =
 		intel_display_power_get(dev_priv, POWER_DOMAIN_INIT);
 }
 
 static void intel_dmc_runtime_pm_put(struct drm_i915_private *dev_priv)
 {
 	intel_wakeref_t wakeref __maybe_unused =
-		fetch_and_zero(&dev_priv->dmc.wakeref);
+		fetch_and_zero(&dev_priv->display.dmc.wakeref);
 
 	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
 }
@@ -849,10 +849,10 @@ static void dmc_load_work_fn(struct work_struct *work)
 	struct intel_dmc *dmc;
 	const struct firmware *fw = NULL;
 
-	dev_priv = container_of(work, typeof(*dev_priv), dmc.work);
-	dmc = &dev_priv->dmc;
+	dev_priv = container_of(work, typeof(*dev_priv), display.dmc.work);
+	dmc = &dev_priv->display.dmc;
 
-	request_firmware(&fw, dev_priv->dmc.fw_path, dev_priv->drm.dev);
+	request_firmware(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
 	parse_dmc_fw(dev_priv, fw);
 
 	if (intel_dmc_has_payload(dev_priv)) {
@@ -861,7 +861,7 @@ static void dmc_load_work_fn(struct work_struct *work)
 
 		drm_info(&dev_priv->drm,
 			 "Finished loading DMC firmware %s (v%u.%u)\n",
-			 dev_priv->dmc.fw_path, DMC_VERSION_MAJOR(dmc->version),
+			 dev_priv->display.dmc.fw_path, DMC_VERSION_MAJOR(dmc->version),
 			 DMC_VERSION_MINOR(dmc->version));
 	} else {
 		drm_notice(&dev_priv->drm,
@@ -884,9 +884,9 @@ static void dmc_load_work_fn(struct work_struct *work)
  */
 void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
 {
-	struct intel_dmc *dmc = &dev_priv->dmc;
+	struct intel_dmc *dmc = &dev_priv->display.dmc;
 
-	INIT_WORK(&dev_priv->dmc.work, dmc_load_work_fn);
+	INIT_WORK(&dev_priv->display.dmc.work, dmc_load_work_fn);
 
 	if (!HAS_DMC(dev_priv))
 		return;
@@ -969,7 +969,7 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
 	}
 
 	drm_dbg_kms(&dev_priv->drm, "Loading %s\n", dmc->fw_path);
-	schedule_work(&dev_priv->dmc.work);
+	schedule_work(&dev_priv->display.dmc.work);
 }
 
 /**
@@ -985,7 +985,7 @@ void intel_dmc_ucode_suspend(struct drm_i915_private *dev_priv)
 	if (!HAS_DMC(dev_priv))
 		return;
 
-	flush_work(&dev_priv->dmc.work);
+	flush_work(&dev_priv->display.dmc.work);
 
 	/* Drop the reference held in case DMC isn't loaded. */
 	if (!intel_dmc_has_payload(dev_priv))
@@ -1027,16 +1027,16 @@ void intel_dmc_ucode_fini(struct drm_i915_private *dev_priv)
 		return;
 
 	intel_dmc_ucode_suspend(dev_priv);
-	drm_WARN_ON(&dev_priv->drm, dev_priv->dmc.wakeref);
+	drm_WARN_ON(&dev_priv->drm, dev_priv->display.dmc.wakeref);
 
 	for (id = 0; id < DMC_FW_MAX; id++)
-		kfree(dev_priv->dmc.dmc_info[id].payload);
+		kfree(dev_priv->display.dmc.dmc_info[id].payload);
 }
 
 void intel_dmc_print_error_state(struct drm_i915_error_state_buf *m,
 				 struct drm_i915_private *i915)
 {
-	struct intel_dmc *dmc = &i915->dmc;
+	struct intel_dmc *dmc = &i915->display.dmc;
 
 	if (!HAS_DMC(i915))
 		return;
@@ -1058,7 +1058,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 	if (!HAS_DMC(i915))
 		return -ENODEV;
 
-	dmc = &i915->dmc;
+	dmc = &i915->display.dmc;
 
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 98c3c8015a5c..079b7d3d0c53 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -706,7 +706,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
 	if (crtc_state->enable_psr2_sel_fetch)
 		return;
 
-	if (!(dev_priv->dmc.allowed_dc_mask & DC_STATE_EN_DC3CO))
+	if (!(dev_priv->display.dmc.allowed_dc_mask & DC_STATE_EN_DC3CO))
 		return;
 
 	if (!dc3co_is_pipe_port_compatible(intel_dp, crtc_state))
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 381593905f4a..4c2703750a49 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -41,7 +41,6 @@
 #include "display/intel_display.h"
 #include "display/intel_display_core.h"
 #include "display/intel_display_power.h"
-#include "display/intel_dmc.h"
 #include "display/intel_dpll_mgr.h"
 #include "display/intel_dsb.h"
 #include "display/intel_fbc.h"
@@ -379,8 +378,6 @@ struct drm_i915_private {
 
 	struct intel_wopcm wopcm;
 
-	struct intel_dmc dmc;
-
 	/* MMIO base address for MIPI regs */
 	u32 mipi_mmio_base;
 
-- 
2.34.1

