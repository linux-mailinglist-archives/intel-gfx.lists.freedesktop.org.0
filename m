Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A90688889
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 21:48:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B702E10E639;
	Thu,  2 Feb 2023 20:48:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8057B10E639
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 20:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675370887; x=1706906887;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cb74UX6sPqOqFYLdpYsDEt2u89WwNRoWKEAdhRI3dO0=;
 b=U1S7ouPwsNEdb3Nuhr85QzGJr0u7p9LSBwy7rxyNK/4P6kkA4BCUS1Vs
 cLwyQEKqlf4IbDys2+SoLHgERcyFhoNnpQW4FdrPFH+fRvNv/4jTpmdEL
 xxvttjeGsLBW3+4ff6yh7JqxZKL16bOd/j22xYDF7c/MQxzIiJuvkv1Zt
 qftROQq2ifZ80ER2DAC1N/DgtLtTx5SysUbf23nNde5CPWnyFTXJuw8MF
 Kf+7AcWIPmikWM7VwfM8W9/wkwRKMay+W0IXRxwGr8yPwvMJgItkQu2HP
 518fXHjLo7wx51HPXU/afNxpqJ7u8HSp97KKJ+qhccfkLNoVdsGuLR0vN A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="329850232"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="329850232"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 12:48:07 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="697823234"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="697823234"
Received: from skopplex-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.34.132])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 12:48:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Feb 2023 22:47:48 +0200
Message-Id: <6a06693dfab4d03a35d2ff41712c96ef15cc6db6.1675370801.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1675370801.git.jani.nikula@intel.com>
References: <cover.1675370801.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 3/3] drm/i915/dmc: allocate dmc structure
 dynamically
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

sizeof(struct intel_dmc) > 1024 bytes, allocated on all platforms as
part of struct drm_i915_private, whether they have DMC or not.

Allocate struct intel_dmc dynamically, and hide all the dmc details
behind an opaque pointer in intel_dmc.c.

Care must be taken to take into account all cases: DMC not supported on
the platform, DMC supported but not initialized, and DMC initialized but
not loaded. For the second case, we need to move the wakeref out of
struct intel_dmc.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |   8 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      | 136 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_dmc.h      |  33 +----
 .../drm/i915/display/intel_modeset_setup.c    |   1 +
 4 files changed, 105 insertions(+), 73 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index fb8670aa2932..e517e06d76a0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -19,7 +19,6 @@
 #include "intel_cdclk.h"
 #include "intel_display_limits.h"
 #include "intel_display_power.h"
-#include "intel_dmc.h"
 #include "intel_dpll_mgr.h"
 #include "intel_fbc.h"
 #include "intel_global_state.h"
@@ -40,6 +39,7 @@ struct intel_cdclk_vals;
 struct intel_color_funcs;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_dmc;
 struct intel_dpll_funcs;
 struct intel_dpll_mgr;
 struct intel_fbdev;
@@ -339,6 +339,11 @@ struct intel_display {
 		spinlock_t phy_lock;
 	} dkl;
 
+	struct {
+		struct intel_dmc *dmc;
+		intel_wakeref_t wakeref;
+	} dmc;
+
 	struct {
 		/* VLV/CHV/BXT/GLK DSI MMIO register base address */
 		u32 mmio_base;
@@ -466,7 +471,6 @@ struct intel_display {
 
 	/* Grouping using named structs. Keep sorted. */
 	struct intel_audio audio;
-	struct intel_dmc dmc;
 	struct intel_dpll dpll;
 	struct intel_fbc *fbc[I915_MAX_FBCS];
 	struct intel_frontbuffer_tracking fb_tracking;
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index ab4fdedd4c5f..8428d08e0c3d 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -38,6 +38,39 @@
  * low-power state and comes back to normal.
  */
 
+enum intel_dmc_id {
+	DMC_FW_MAIN = 0,
+	DMC_FW_PIPEA,
+	DMC_FW_PIPEB,
+	DMC_FW_PIPEC,
+	DMC_FW_PIPED,
+	DMC_FW_MAX
+};
+
+struct intel_dmc {
+	struct drm_i915_private *i915;
+	struct work_struct work;
+	const char *fw_path;
+	u32 max_fw_size; /* bytes */
+	u32 version;
+	struct dmc_fw_info {
+		u32 mmio_count;
+		i915_reg_t mmioaddr[20];
+		u32 mmiodata[20];
+		u32 dmc_offset;
+		u32 start_mmioaddr;
+		u32 dmc_fw_size; /*dwords */
+		u32 *payload;
+		bool present;
+	} dmc_info[DMC_FW_MAX];
+};
+
+/* Note: This may be NULL. */
+static struct intel_dmc *i915_to_dmc(struct drm_i915_private *i915)
+{
+	return i915->display.dmc.dmc;
+}
+
 #define DMC_VERSION(major, minor)	((major) << 16 | (minor))
 #define DMC_VERSION_MAJOR(version)	((version) >> 16)
 #define DMC_VERSION_MINOR(version)	((version) & 0xffff)
@@ -259,7 +292,9 @@ static bool is_valid_dmc_id(enum intel_dmc_id dmc_id)
 
 static bool has_dmc_id_fw(struct drm_i915_private *i915, enum intel_dmc_id dmc_id)
 {
-	return i915->display.dmc.dmc_info[dmc_id].payload;
+	struct intel_dmc *dmc = i915_to_dmc(i915);
+
+	return dmc && dmc->dmc_info[dmc_id].payload;
 }
 
 bool intel_dmc_has_payload(struct drm_i915_private *i915)
@@ -450,7 +485,7 @@ void intel_dmc_disable_pipe(struct drm_i915_private *i915, enum pipe pipe)
 void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 {
 	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
-	struct intel_dmc *dmc = &dev_priv->display.dmc;
+	struct intel_dmc *dmc = i915_to_dmc(dev_priv);
 	enum intel_dmc_id dmc_id;
 	u32 i;
 
@@ -515,8 +550,11 @@ void intel_dmc_disable_program(struct drm_i915_private *i915)
 
 void assert_dmc_loaded(struct drm_i915_private *i915)
 {
-	drm_WARN_ONCE(&i915->drm,
-		      !intel_de_read(i915, DMC_PROGRAM(i915->display.dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),
+	struct intel_dmc *dmc = i915_to_dmc(i915);
+
+	drm_WARN_ONCE(&i915->drm, !dmc, "DMC not initialized\n");
+	drm_WARN_ONCE(&i915->drm, dmc &&
+		      !intel_de_read(i915, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),
 		      "DMC program storage start is NULL\n");
 	drm_WARN_ONCE(&i915->drm, !intel_de_read(i915, DMC_SSP_BASE),
 		      "DMC SSP Base Not fine\n");
@@ -551,11 +589,10 @@ static void dmc_set_fw_offset(struct intel_dmc *dmc,
 			      const struct stepping_info *si,
 			      u8 package_ver)
 {
+	struct drm_i915_private *i915 = dmc->i915;
 	enum intel_dmc_id dmc_id;
 	unsigned int i;
 
-	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), display.dmc);
-
 	for (i = 0; i < num_entries; i++) {
 		dmc_id = package_ver <= 1 ? DMC_FW_MAIN : fw_info[i].dmc_id;
 
@@ -582,7 +619,7 @@ static bool dmc_mmio_addr_sanity_check(struct intel_dmc *dmc,
 				       const u32 *mmioaddr, u32 mmio_count,
 				       int header_ver, enum intel_dmc_id dmc_id)
 {
-	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), display.dmc);
+	struct drm_i915_private *i915 = dmc->i915;
 	u32 start_range, end_range;
 	int i;
 
@@ -615,7 +652,7 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 			       const struct intel_dmc_header_base *dmc_header,
 			       size_t rem_size, enum intel_dmc_id dmc_id)
 {
-	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), display.dmc);
+	struct drm_i915_private *i915 = dmc->i915;
 	struct dmc_fw_info *dmc_info = &dmc->dmc_info[dmc_id];
 	unsigned int header_len_bytes, dmc_header_size, payload_size, i;
 	const u32 *mmioaddr, *mmiodata;
@@ -726,7 +763,7 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
 		     const struct stepping_info *si,
 		     size_t rem_size)
 {
-	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), display.dmc);
+	struct drm_i915_private *i915 = dmc->i915;
 	u32 package_size = sizeof(struct intel_package_header);
 	u32 num_entries, max_entries;
 	const struct intel_fw_info *fw_info;
@@ -780,7 +817,7 @@ static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
 			    struct intel_css_header *css_header,
 			    size_t rem_size)
 {
-	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), display.dmc);
+	struct drm_i915_private *i915 = dmc->i915;
 
 	if (rem_size < sizeof(struct intel_css_header)) {
 		drm_err(&i915->drm, "Truncated DMC firmware, refusing.\n");
@@ -800,13 +837,12 @@ static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
 	return sizeof(struct intel_css_header);
 }
 
-static void parse_dmc_fw(struct drm_i915_private *dev_priv,
-			 const struct firmware *fw)
+static void parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw)
 {
+	struct drm_i915_private *dev_priv = dmc->i915;
 	struct intel_css_header *css_header;
 	struct intel_package_header *package_header;
 	struct intel_dmc_header_base *dmc_header;
-	struct intel_dmc *dmc = &dev_priv->display.dmc;
 	struct stepping_info display_info = { '*', '*'};
 	const struct stepping_info *si = intel_get_stepping_info(dev_priv, &display_info);
 	enum intel_dmc_id dmc_id;
@@ -833,7 +869,7 @@ static void parse_dmc_fw(struct drm_i915_private *dev_priv,
 	readcount += r;
 
 	for_each_dmc_id(dmc_id) {
-		if (!dev_priv->display.dmc.dmc_info[dmc_id].present)
+		if (!dmc->dmc_info[dmc_id].present)
 			continue;
 
 		offset = readcount + dmc->dmc_info[dmc_id].dmc_offset * 4;
@@ -872,16 +908,13 @@ static const char *dmc_fallback_path(struct drm_i915_private *i915)
 
 static void dmc_load_work_fn(struct work_struct *work)
 {
-	struct drm_i915_private *dev_priv;
-	struct intel_dmc *dmc;
+	struct intel_dmc *dmc = container_of(work, typeof(*dmc), work);
+	struct drm_i915_private *dev_priv = dmc->i915;
 	const struct firmware *fw = NULL;
 	const char *fallback_path;
 	int err;
 
-	dev_priv = container_of(work, typeof(*dev_priv), display.dmc.work);
-	dmc = &dev_priv->display.dmc;
-
-	err = request_firmware(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
+	err = request_firmware(&fw, dmc->fw_path, dev_priv->drm.dev);
 
 	if (err == -ENOENT && !dev_priv->params.dmc_firmware_path) {
 		fallback_path = dmc_fallback_path(dev_priv);
@@ -892,11 +925,11 @@ static void dmc_load_work_fn(struct work_struct *work)
 				    fallback_path);
 			err = request_firmware(&fw, fallback_path, dev_priv->drm.dev);
 			if (err == 0)
-				dev_priv->display.dmc.fw_path = fallback_path;
+				dmc->fw_path = fallback_path;
 		}
 	}
 
-	parse_dmc_fw(dev_priv, fw);
+	parse_dmc_fw(dmc, fw);
 
 	if (intel_dmc_has_payload(dev_priv)) {
 		intel_dmc_load_program(dev_priv);
@@ -904,7 +937,7 @@ static void dmc_load_work_fn(struct work_struct *work)
 
 		drm_info(&dev_priv->drm,
 			 "Finished loading DMC firmware %s (v%u.%u)\n",
-			 dev_priv->display.dmc.fw_path, DMC_VERSION_MAJOR(dmc->version),
+			 dmc->fw_path, DMC_VERSION_MAJOR(dmc->version),
 			 DMC_VERSION_MINOR(dmc->version));
 	} else {
 		drm_notice(&dev_priv->drm,
@@ -927,13 +960,19 @@ static void dmc_load_work_fn(struct work_struct *work)
  */
 void intel_dmc_init(struct drm_i915_private *dev_priv)
 {
-	struct intel_dmc *dmc = &dev_priv->display.dmc;
-
-	INIT_WORK(&dev_priv->display.dmc.work, dmc_load_work_fn);
+	struct intel_dmc *dmc;
 
 	if (!HAS_DMC(dev_priv))
 		return;
 
+	dmc = kzalloc(sizeof(*dmc), GFP_KERNEL);
+	if (!dmc)
+		return;
+
+	dmc->i915 = dev_priv;
+
+	INIT_WORK(&dmc->work, dmc_load_work_fn);
+
 	/*
 	 * Obtain a runtime pm reference, until DMC is loaded, to avoid entering
 	 * runtime-suspend.
@@ -983,10 +1022,9 @@ void intel_dmc_init(struct drm_i915_private *dev_priv)
 
 	if (dev_priv->params.dmc_firmware_path) {
 		if (strlen(dev_priv->params.dmc_firmware_path) == 0) {
-			dmc->fw_path = NULL;
 			drm_info(&dev_priv->drm,
 				 "Disabling DMC firmware and runtime PM\n");
-			return;
+			goto out;
 		}
 
 		dmc->fw_path = dev_priv->params.dmc_firmware_path;
@@ -995,11 +1033,18 @@ void intel_dmc_init(struct drm_i915_private *dev_priv)
 	if (!dmc->fw_path) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "No known DMC firmware for platform, disabling runtime PM\n");
-		return;
+		goto out;
 	}
 
+	dev_priv->display.dmc.dmc = dmc;
+
 	drm_dbg_kms(&dev_priv->drm, "Loading %s\n", dmc->fw_path);
-	schedule_work(&dev_priv->display.dmc.work);
+	schedule_work(&dmc->work);
+
+	return;
+
+out:
+	kfree(dmc);
 }
 
 /**
@@ -1012,10 +1057,13 @@ void intel_dmc_init(struct drm_i915_private *dev_priv)
  */
 void intel_dmc_suspend(struct drm_i915_private *dev_priv)
 {
+	struct intel_dmc *dmc = i915_to_dmc(dev_priv);
+
 	if (!HAS_DMC(dev_priv))
 		return;
 
-	flush_work(&dev_priv->display.dmc.work);
+	if (dmc)
+		flush_work(&dmc->work);
 
 	/* Drop the reference held in case DMC isn't loaded. */
 	if (!intel_dmc_has_payload(dev_priv))
@@ -1051,6 +1099,7 @@ void intel_dmc_resume(struct drm_i915_private *dev_priv)
  */
 void intel_dmc_fini(struct drm_i915_private *dev_priv)
 {
+	struct intel_dmc *dmc = i915_to_dmc(dev_priv);
 	enum intel_dmc_id dmc_id;
 
 	if (!HAS_DMC(dev_priv))
@@ -1059,36 +1108,45 @@ void intel_dmc_fini(struct drm_i915_private *dev_priv)
 	intel_dmc_suspend(dev_priv);
 	drm_WARN_ON(&dev_priv->drm, dev_priv->display.dmc.wakeref);
 
-	for_each_dmc_id(dmc_id)
-		kfree(dev_priv->display.dmc.dmc_info[dmc_id].payload);
+	if (dmc) {
+		for_each_dmc_id(dmc_id)
+			kfree(dmc->dmc_info[dmc_id].payload);
+
+		kfree(dmc);
+		dev_priv->display.dmc.dmc = NULL;
+	}
 }
 
 void intel_dmc_print_error_state(struct drm_i915_error_state_buf *m,
 				 struct drm_i915_private *i915)
 {
-	struct intel_dmc *dmc = &i915->display.dmc;
+	struct intel_dmc *dmc = i915_to_dmc(i915);
 
 	if (!HAS_DMC(i915))
 		return;
 
+	i915_error_printf(m, "DMC initialized: %s\n", str_yes_no(dmc));
 	i915_error_printf(m, "DMC loaded: %s\n",
 			  str_yes_no(intel_dmc_has_payload(i915)));
-	i915_error_printf(m, "DMC fw version: %d.%d\n",
-			  DMC_VERSION_MAJOR(dmc->version),
-			  DMC_VERSION_MINOR(dmc->version));
+	if (dmc)
+		i915_error_printf(m, "DMC fw version: %d.%d\n",
+				  DMC_VERSION_MAJOR(dmc->version),
+				  DMC_VERSION_MINOR(dmc->version));
 }
 
 static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *i915 = m->private;
+	struct intel_dmc *dmc = i915_to_dmc(i915);
 	intel_wakeref_t wakeref;
-	struct intel_dmc *dmc;
 	i915_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
 
 	if (!HAS_DMC(i915))
 		return -ENODEV;
 
-	dmc = &i915->display.dmc;
+	seq_printf(m, "DMC initialized: %s\n", str_yes_no(dmc));
+	if (!dmc)
+		return 0;
 
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index 90910cecc2f6..fd607afff2ef 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -6,43 +6,12 @@
 #ifndef __INTEL_DMC_H__
 #define __INTEL_DMC_H__
 
-#include "i915_reg_defs.h"
-#include "intel_wakeref.h"
-#include <linux/workqueue.h>
+#include <linux/types.h>
 
 struct drm_i915_error_state_buf;
 struct drm_i915_private;
-
 enum pipe;
 
-enum intel_dmc_id {
-	DMC_FW_MAIN = 0,
-	DMC_FW_PIPEA,
-	DMC_FW_PIPEB,
-	DMC_FW_PIPEC,
-	DMC_FW_PIPED,
-	DMC_FW_MAX
-};
-
-struct intel_dmc {
-	struct work_struct work;
-	const char *fw_path;
-	u32 max_fw_size; /* bytes */
-	u32 version;
-	struct dmc_fw_info {
-		u32 mmio_count;
-		i915_reg_t mmioaddr[20];
-		u32 mmiodata[20];
-		u32 dmc_offset;
-		u32 start_mmioaddr;
-		u32 dmc_fw_size; /*dwords */
-		u32 *payload;
-		bool present;
-	} dmc_info[DMC_FW_MAX];
-
-	intel_wakeref_t wakeref;
-};
-
 void intel_dmc_init(struct drm_i915_private *i915);
 void intel_dmc_load_program(struct drm_i915_private *i915);
 void intel_dmc_disable_program(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 52cdbd4fc2fa..8926fdcc00f5 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -21,6 +21,7 @@
 #include "intel_display.h"
 #include "intel_display_power.h"
 #include "intel_display_types.h"
+#include "intel_dmc.h"
 #include "intel_modeset_setup.h"
 #include "intel_pch_display.h"
 #include "intel_pm.h"
-- 
2.34.1

