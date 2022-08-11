Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9809758FEF1
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:14:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70B24B3D91;
	Thu, 11 Aug 2022 15:13:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AEF6B3D5B
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230817; x=1691766817;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4Uw0i76rbsRk+otqUmlspikWdgQiPDYHP9jkn8Rpndc=;
 b=blTN+qxb7aFmWkpfXuV4/cPBx36vJ4MeC0hrDk4O3dM2OBGamH5KmSSg
 1yMHYP/10UnwnufzVSRoYz/Jd8PQSqHeTlMwLOCdOoAP3C+2UvGskKY98
 0B9xxKNU3x+MhAdOE8sActemJcnoMUXFEj0oIwajPY4aR9IbxOcqNaISM
 WOtGSSKw0t/ge4BY35KJF9GE2d7fcWV2/zwxSd+OFIIzHzmHcuZLnq3wh
 Ipv0Hcxc6hS+sQ7S17gC1+M3p1CYI12nWKfPWao2jPs/j/0PzH5iDm+Vw
 NMOQ2EnRgrqiZoBKDpggdmXKWOcRbo228vUBKDtiV83I5jPHu6gxiIk8O Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="377663168"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="377663168"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:08:51 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="747843364"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:08:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:22 +0300
Message-Id: <034fed72ccfe9c25bfd7543991344a57340ceb43.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/39] drm/i915: move dmc to display.dmc
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

FIXME: dmc really needs to be abstracted and hidden inside intel_dmc.c
with display.dmc turned into a pointer

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  4 ++
 .../drm/i915/display/intel_display_power.c    | 18 +++----
 .../i915/display/intel_display_power_well.c   | 18 +++----
 drivers/gpu/drm/i915/display/intel_dmc.c      | 52 +++++++++----------
 drivers/gpu/drm/i915/display/intel_psr.c      |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  3 --
 6 files changed, 49 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 030ced4068bb..ca22706e11e6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -10,6 +10,7 @@
 #include <linux/types.h>
 #include <linux/wait.h>
 
+#include "intel_dmc.h"
 #include "intel_gmbus.h"
 
 struct drm_i915_private;
@@ -108,6 +109,9 @@ struct intel_display {
 		/* protects panel power sequencer state */
 		struct mutex mutex;
 	} pps;
+
+	/* Grouping using named structs. Keep sorted. */
+	struct intel_dmc dmc;
 };
 
 #endif /* __INTEL_DISPLAY_CORE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 3f84af6beff3..07d083e95e37 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -268,7 +268,7 @@ sanitize_target_dc_state(struct drm_i915_private *dev_priv,
 		if (target_dc_state != states[i])
 			continue;
 
-		if (dev_priv->dmc.allowed_dc_mask & target_dc_state)
+		if (dev_priv->display.dmc.allowed_dc_mask & target_dc_state)
 			break;
 
 		target_dc_state = states[i + 1];
@@ -301,7 +301,7 @@ void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
 
 	state = sanitize_target_dc_state(dev_priv, state);
 
-	if (state == dev_priv->dmc.target_dc_state)
+	if (state == dev_priv->display.dmc.target_dc_state)
 		goto unlock;
 
 	dc_off_enabled = intel_power_well_is_enabled(dev_priv, power_well);
@@ -312,7 +312,7 @@ void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
 	if (!dc_off_enabled)
 		intel_power_well_enable(dev_priv, power_well);
 
-	dev_priv->dmc.target_dc_state = state;
+	dev_priv->display.dmc.target_dc_state = state;
 
 	if (!dc_off_enabled)
 		intel_power_well_disable(dev_priv, power_well);
@@ -981,10 +981,10 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
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
@@ -2050,7 +2050,7 @@ void intel_power_domains_suspend(struct drm_i915_private *i915,
 	 * resources as required and also enable deeper system power states
 	 * that would be blocked if the firmware was inactive.
 	 */
-	if (!(i915->dmc.allowed_dc_mask & DC_STATE_EN_DC9) &&
+	if (!(i915->display.dmc.allowed_dc_mask & DC_STATE_EN_DC9) &&
 	    suspend_mode == I915_DRM_SUSPEND_IDLE &&
 	    intel_dmc_has_payload(i915)) {
 		intel_display_power_flush_work(i915);
@@ -2243,10 +2243,10 @@ void intel_display_power_resume(struct drm_i915_private *i915)
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
@@ -2254,7 +2254,7 @@ void intel_display_power_resume(struct drm_i915_private *i915)
 		bxt_disable_dc9(i915);
 		bxt_display_core_init(i915, true);
 		if (intel_dmc_has_payload(i915) &&
-		    (i915->dmc.allowed_dc_mask & DC_STATE_EN_UPTO_DC5))
+		    (i915->display.dmc.allowed_dc_mask & DC_STATE_EN_UPTO_DC5))
 			gen9_enable_dc5(i915);
 	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
 		hsw_disable_pc8(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 91cfd5890f46..119e6134b789 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -710,8 +710,8 @@ void gen9_sanitize_dc_state(struct drm_i915_private *dev_priv)
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "Resetting DC state tracking from %02x to %02x\n",
-		    dev_priv->dmc.dc_state, val);
-	dev_priv->dmc.dc_state = val;
+		    dev_priv->display.dmc.dc_state, val);
+	dev_priv->display.dmc.dc_state = val;
 }
 
 /**
@@ -746,8 +746,8 @@ void gen9_set_dc_state(struct drm_i915_private *dev_priv, u32 state)
 		return;
 
 	if (drm_WARN_ON_ONCE(&dev_priv->drm,
-			     state & ~dev_priv->dmc.allowed_dc_mask))
-		state &= dev_priv->dmc.allowed_dc_mask;
+			     state & ~dev_priv->display.dmc.allowed_dc_mask))
+		state &= dev_priv->display.dmc.allowed_dc_mask;
 
 	val = intel_de_read(dev_priv, DC_STATE_EN);
 	mask = gen9_dc_mask(dev_priv);
@@ -755,16 +755,16 @@ void gen9_set_dc_state(struct drm_i915_private *dev_priv, u32 state)
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
@@ -958,7 +958,7 @@ void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
 {
 	struct intel_cdclk_config cdclk_config = {};
 
-	if (dev_priv->dmc.target_dc_state == DC_STATE_EN_DC3CO) {
+	if (dev_priv->display.dmc.target_dc_state == DC_STATE_EN_DC3CO) {
 		tgl_disable_dc3co(dev_priv);
 		return;
 	}
@@ -1000,7 +1000,7 @@ static void gen9_dc_off_power_well_disable(struct drm_i915_private *dev_priv,
 	if (!intel_dmc_has_payload(dev_priv))
 		return;
 
-	switch (dev_priv->dmc.target_dc_state) {
+	switch (dev_priv->display.dmc.target_dc_state) {
 	case DC_STATE_EN_DC3CO:
 		tgl_enable_dc3co(dev_priv);
 		break;
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 00e18a4a5a5a..21545fd72c1e 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -250,7 +250,7 @@ struct stepping_info {
 
 static bool has_dmc_id_fw(struct drm_i915_private *i915, int dmc_id)
 {
-	return i915->dmc.dmc_info[dmc_id].payload;
+	return i915->display.dmc.dmc_info[dmc_id].payload;
 }
 
 bool intel_dmc_has_payload(struct drm_i915_private *i915)
@@ -393,7 +393,7 @@ static void disable_all_event_handlers(struct drm_i915_private *i915)
  */
 void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 {
-	struct intel_dmc *dmc = &dev_priv->dmc;
+	struct intel_dmc *dmc = &dev_priv->display.dmc;
 	u32 id, i;
 
 	if (!intel_dmc_has_payload(dev_priv))
@@ -422,7 +422,7 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 		}
 	}
 
-	dev_priv->dmc.dc_state = 0;
+	dev_priv->display.dmc.dc_state = 0;
 
 	gen9_set_dc_state_debugmask(dev_priv);
 
@@ -452,7 +452,7 @@ void intel_dmc_disable_program(struct drm_i915_private *i915)
 void assert_dmc_loaded(struct drm_i915_private *i915)
 {
 	drm_WARN_ONCE(&i915->drm,
-		      !intel_de_read(i915, DMC_PROGRAM(i915->dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),
+		      !intel_de_read(i915, DMC_PROGRAM(i915->display.dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),
 		      "DMC program storage start is NULL\n");
 	drm_WARN_ONCE(&i915->drm, !intel_de_read(i915, DMC_SSP_BASE),
 		      "DMC SSP Base Not fine\n");
@@ -489,7 +489,7 @@ static void dmc_set_fw_offset(struct intel_dmc *dmc,
 {
 	unsigned int i, id;
 
-	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
+	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), display.dmc);
 
 	for (i = 0; i < num_entries; i++) {
 		id = package_ver <= 1 ? DMC_FW_MAIN : fw_info[i].dmc_id;
@@ -517,7 +517,7 @@ static bool dmc_mmio_addr_sanity_check(struct intel_dmc *dmc,
 				       const u32 *mmioaddr, u32 mmio_count,
 				       int header_ver, u8 dmc_id)
 {
-	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
+	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), display.dmc);
 	u32 start_range, end_range;
 	int i;
 
@@ -555,7 +555,7 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 			       const struct intel_dmc_header_base *dmc_header,
 			       size_t rem_size, u8 dmc_id)
 {
-	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
+	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), display.dmc);
 	struct dmc_fw_info *dmc_info = &dmc->dmc_info[dmc_id];
 	unsigned int header_len_bytes, dmc_header_size, payload_size, i;
 	const u32 *mmioaddr, *mmiodata;
@@ -666,7 +666,7 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
 		     const struct stepping_info *si,
 		     size_t rem_size)
 {
-	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
+	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), display.dmc);
 	u32 package_size = sizeof(struct intel_package_header);
 	u32 num_entries, max_entries;
 	const struct intel_fw_info *fw_info;
@@ -720,7 +720,7 @@ static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
 			    struct intel_css_header *css_header,
 			    size_t rem_size)
 {
-	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
+	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), display.dmc);
 
 	if (rem_size < sizeof(struct intel_css_header)) {
 		drm_err(&i915->drm, "Truncated DMC firmware, refusing.\n");
@@ -757,7 +757,7 @@ static void parse_dmc_fw(struct drm_i915_private *dev_priv,
 	struct intel_css_header *css_header;
 	struct intel_package_header *package_header;
 	struct intel_dmc_header_base *dmc_header;
-	struct intel_dmc *dmc = &dev_priv->dmc;
+	struct intel_dmc *dmc = &dev_priv->display.dmc;
 	struct stepping_info display_info = { '*', '*'};
 	const struct stepping_info *si = intel_get_stepping_info(dev_priv, &display_info);
 	u32 readcount = 0;
@@ -784,7 +784,7 @@ static void parse_dmc_fw(struct drm_i915_private *dev_priv,
 	readcount += r;
 
 	for (id = 0; id < DMC_FW_MAX; id++) {
-		if (!dev_priv->dmc.dmc_info[id].present)
+		if (!dev_priv->display.dmc.dmc_info[id].present)
 			continue;
 
 		offset = readcount + dmc->dmc_info[id].dmc_offset * 4;
@@ -800,15 +800,15 @@ static void parse_dmc_fw(struct drm_i915_private *dev_priv,
 
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
@@ -819,10 +819,10 @@ static void dmc_load_work_fn(struct work_struct *work)
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
@@ -831,7 +831,7 @@ static void dmc_load_work_fn(struct work_struct *work)
 
 		drm_info(&dev_priv->drm,
 			 "Finished loading DMC firmware %s (v%u.%u)\n",
-			 dev_priv->dmc.fw_path, DMC_VERSION_MAJOR(dmc->version),
+			 dev_priv->display.dmc.fw_path, DMC_VERSION_MAJOR(dmc->version),
 			 DMC_VERSION_MINOR(dmc->version));
 	} else {
 		drm_notice(&dev_priv->drm,
@@ -854,9 +854,9 @@ static void dmc_load_work_fn(struct work_struct *work)
  */
 void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
 {
-	struct intel_dmc *dmc = &dev_priv->dmc;
+	struct intel_dmc *dmc = &dev_priv->display.dmc;
 
-	INIT_WORK(&dev_priv->dmc.work, dmc_load_work_fn);
+	INIT_WORK(&dev_priv->display.dmc.work, dmc_load_work_fn);
 
 	if (!HAS_DMC(dev_priv))
 		return;
@@ -939,7 +939,7 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
 	}
 
 	drm_dbg_kms(&dev_priv->drm, "Loading %s\n", dmc->fw_path);
-	schedule_work(&dev_priv->dmc.work);
+	schedule_work(&dev_priv->display.dmc.work);
 }
 
 /**
@@ -955,7 +955,7 @@ void intel_dmc_ucode_suspend(struct drm_i915_private *dev_priv)
 	if (!HAS_DMC(dev_priv))
 		return;
 
-	flush_work(&dev_priv->dmc.work);
+	flush_work(&dev_priv->display.dmc.work);
 
 	/* Drop the reference held in case DMC isn't loaded. */
 	if (!intel_dmc_has_payload(dev_priv))
@@ -997,16 +997,16 @@ void intel_dmc_ucode_fini(struct drm_i915_private *dev_priv)
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
@@ -1028,7 +1028,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
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
index 8ba133f37fb5..d1b51e2460e0 100644
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
@@ -378,8 +377,6 @@ struct drm_i915_private {
 
 	struct intel_wopcm wopcm;
 
-	struct intel_dmc dmc;
-
 	/* MMIO base address for MIPI regs */
 	u32 mipi_mmio_base;
 
-- 
2.34.1

