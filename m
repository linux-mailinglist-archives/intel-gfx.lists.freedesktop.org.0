Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA8994D229
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2024 16:27:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67BFD10E92D;
	Fri,  9 Aug 2024 14:27:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NwWVwxPa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 336BF10E929;
 Fri,  9 Aug 2024 14:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723213657; x=1754749657;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mF8NzX/Mdd8rxoWzkyNkCfg5iiIj9ustK9HkzxAtD8k=;
 b=NwWVwxPaGgkiZx2ecI6BBsjk9Y5ENAN9qzM2KXOk0oB6JitAehTo0hvk
 eQMNQO/QBs9/ydeOvuhZBg+kA9V8g4yhZQJbW9SVTZ3imI5tiszDa+Pjp
 P9xhHfsbflzm0nwUNQaGgRSQxcjGkTB8/7pOr8cfFX1E5r5nLS2utqyJK
 5UrXT7hRTQnEmvVltiSpkt60TvoQJTMaUYZkaYmys+flVLWoihSiBHBf3
 GZ/tqBv+iFexI4MjKSCIkbpCRqOOMyfQvsB3ZmnRlWu95Brpb181lzc/A
 tSKhp7miQFGj7nwfVjKOG2bX3iZPc3DRYmWwhU3ItD/4ZBTpcd4Ec6Hd+ g==;
X-CSE-ConnectionGUID: ydYQKvVqQJ2O6M98iHORsg==
X-CSE-MsgGUID: hdnDpbgQTxO3GknMNYH6ew==
X-IronPort-AV: E=McAfee;i="6700,10204,11159"; a="32013796"
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="32013796"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 07:27:36 -0700
X-CSE-ConnectionGUID: pUYwRVJHQVSCSqMYD01Ltw==
X-CSE-MsgGUID: FVyZkloDRea/noh1yGUNjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="57471543"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.18])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 07:27:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [PATCH v2 4/4] drm/i915/bios: convert to struct intel_display
Date: Fri,  9 Aug 2024 17:27:06 +0300
Message-Id: <0d0261a53aff5f141b16b482222a5ffce78e176e.1723213547.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1723213547.git.jani.nikula@intel.com>
References: <cover.1723213547.git.jani.nikula@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Going forward, struct intel_display shall replace struct
drm_i915_private as the main display device data pointer type. Convert
intel_bios.[ch] to struct intel_display.

Do one drive-by conversion of unnecessary hex usage to decimal.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |   3 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   3 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |   3 +-
 drivers/gpu/drm/i915/display/intel_bios.c     | 844 +++++++++---------
 drivers/gpu/drm/i915/display/intel_bios.h     |  28 +-
 .../gpu/drm/i915/display/intel_combo_phy.c    |   8 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   3 +-
 drivers/gpu/drm/i915/display/intel_ddi.h      |   3 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   9 +-
 .../drm/i915/display/intel_display_debugfs.c  |   2 +-
 .../drm/i915/display/intel_display_driver.c   |   8 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |   3 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   8 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   5 +-
 drivers/gpu/drm/i915/display/intel_opregion.c |   5 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_tv.c       |   3 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   5 +-
 18 files changed, 495 insertions(+), 451 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index a8e746a0f670..c2128b46bdbd 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1279,6 +1279,7 @@ static const struct drm_encoder_funcs intel_dp_enc_funcs = {
 bool g4x_dp_init(struct drm_i915_private *dev_priv,
 		 i915_reg_t output_reg, enum port port)
 {
+	struct intel_display *display = &dev_priv->display;
 	const struct intel_bios_encoder_data *devdata;
 	struct intel_digital_port *dig_port;
 	struct intel_encoder *intel_encoder;
@@ -1288,7 +1289,7 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 	if (!assert_port_valid(dev_priv, port))
 		return false;
 
-	devdata = intel_bios_encoder_data_lookup(dev_priv, port);
+	devdata = intel_bios_encoder_data_lookup(display, port);
 
 	/* FIXME bail? */
 	if (!devdata)
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 8096492b3fad..46f23bdb4c17 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -686,6 +686,7 @@ static bool assert_hdmi_port_valid(struct drm_i915_private *i915, enum port port
 void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 		   i915_reg_t hdmi_reg, enum port port)
 {
+	struct intel_display *display = &dev_priv->display;
 	const struct intel_bios_encoder_data *devdata;
 	struct intel_digital_port *dig_port;
 	struct intel_encoder *intel_encoder;
@@ -697,7 +698,7 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 	if (!assert_hdmi_port_valid(dev_priv, port))
 		return;
 
-	devdata = intel_bios_encoder_data_lookup(dev_priv, port);
+	devdata = intel_bios_encoder_data_lookup(display, port);
 
 	/* FIXME bail? */
 	if (!devdata)
diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 55dd57d1bf94..293efc1f841d 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1945,6 +1945,7 @@ static void icl_dsi_add_properties(struct intel_connector *connector)
 void icl_dsi_init(struct drm_i915_private *dev_priv,
 		  const struct intel_bios_encoder_data *devdata)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_dsi *intel_dsi;
 	struct intel_encoder *encoder;
 	struct intel_connector *intel_connector;
@@ -2008,7 +2009,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv,
 
 	intel_dsi->panel_power_off_time = ktime_get_boottime();
 
-	intel_bios_init_panel_late(dev_priv, &intel_connector->panel, encoder->devdata, NULL);
+	intel_bios_init_panel_late(display, &intel_connector->panel, encoder->devdata, NULL);
 
 	mutex_lock(&dev_priv->drm.mode_config.mutex);
 	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 0b13b37f24a4..d49435af62c7 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -66,7 +66,7 @@
 
 /* Wrapper for VBT child device config */
 struct intel_bios_encoder_data {
-	struct drm_i915_private *i915;
+	struct intel_display *display;
 
 	struct child_device_config child;
 	struct dsc_compression_parameters_entry *dsc;
@@ -145,12 +145,12 @@ struct bdb_block_entry {
 };
 
 static const void *
-bdb_find_section(struct drm_i915_private *i915,
+bdb_find_section(struct intel_display *display,
 		 enum bdb_block_id section_id)
 {
 	struct bdb_block_entry *entry;
 
-	list_for_each_entry(entry, &i915->display.vbt.bdb_blocks, node) {
+	list_for_each_entry(entry, &display->vbt.bdb_blocks, node) {
 		if (entry->section_id == section_id)
 			return entry->data + 3;
 	}
@@ -200,12 +200,12 @@ static const struct {
 	  .min_size = sizeof(struct bdb_generic_dtd), },
 };
 
-static size_t lfp_data_min_size(struct drm_i915_private *i915)
+static size_t lfp_data_min_size(struct intel_display *display)
 {
 	const struct bdb_lfp_data_ptrs *ptrs;
 	size_t size;
 
-	ptrs = bdb_find_section(i915, BDB_LFP_DATA_PTRS);
+	ptrs = bdb_find_section(display, BDB_LFP_DATA_PTRS);
 	if (!ptrs)
 		return 0;
 
@@ -360,7 +360,7 @@ static void next_lfp_data_ptr(struct lfp_data_ptr_table *next,
 	next->offset = prev->offset + size;
 }
 
-static void *generate_lfp_data_ptrs(struct drm_i915_private *i915,
+static void *generate_lfp_data_ptrs(struct intel_display *display,
 				    const void *bdb)
 {
 	int i, size, table_size, block_size, offset, fp_timing_size;
@@ -374,7 +374,7 @@ static void *generate_lfp_data_ptrs(struct drm_i915_private *i915,
 	 * include block 41 and thus we don't need to
 	 * generate one.
 	 */
-	if (i915->display.vbt.version < 155)
+	if (display->vbt.version < 155)
 		return NULL;
 
 	fp_timing_size = 38;
@@ -383,7 +383,7 @@ static void *generate_lfp_data_ptrs(struct drm_i915_private *i915,
 	if (!block)
 		return NULL;
 
-	drm_dbg_kms(&i915->drm, "Generating LFP data table pointers\n");
+	drm_dbg_kms(display->drm, "Generating LFP data table pointers\n");
 
 	block_size = get_blocksize(block);
 
@@ -451,7 +451,7 @@ static void *generate_lfp_data_ptrs(struct drm_i915_private *i915,
 }
 
 static void
-init_bdb_block(struct drm_i915_private *i915,
+init_bdb_block(struct intel_display *display,
 	       const void *bdb, enum bdb_block_id section_id,
 	       size_t min_size)
 {
@@ -464,14 +464,14 @@ init_bdb_block(struct drm_i915_private *i915,
 
 	/* Modern VBTs lack the LFP data table pointers block, make one up */
 	if (!block && section_id == BDB_LFP_DATA_PTRS) {
-		temp_block = generate_lfp_data_ptrs(i915, bdb);
+		temp_block = generate_lfp_data_ptrs(display, bdb);
 		if (temp_block)
 			block = temp_block + 3;
 	}
 	if (!block)
 		return;
 
-	drm_WARN(&i915->drm, min_size == 0,
+	drm_WARN(display->drm, min_size == 0,
 		 "Block %d min_size is zero\n", section_id);
 
 	block_size = get_blocksize(block);
@@ -495,20 +495,22 @@ init_bdb_block(struct drm_i915_private *i915,
 
 	kfree(temp_block);
 
-	drm_dbg_kms(&i915->drm, "Found BDB block %d (size %zu, min size %zu)\n",
+	drm_dbg_kms(display->drm,
+		    "Found BDB block %d (size %zu, min size %zu)\n",
 		    section_id, block_size, min_size);
 
 	if (section_id == BDB_LFP_DATA_PTRS &&
 	    !fixup_lfp_data_ptrs(bdb, entry->data + 3)) {
-		drm_err(&i915->drm, "VBT has malformed LFP data table pointers\n");
+		drm_err(display->drm,
+			"VBT has malformed LFP data table pointers\n");
 		kfree(entry);
 		return;
 	}
 
-	list_add_tail(&entry->node, &i915->display.vbt.bdb_blocks);
+	list_add_tail(&entry->node, &display->vbt.bdb_blocks);
 }
 
-static void init_bdb_blocks(struct drm_i915_private *i915,
+static void init_bdb_blocks(struct intel_display *display,
 			    const void *bdb)
 {
 	int i;
@@ -518,14 +520,14 @@ static void init_bdb_blocks(struct drm_i915_private *i915,
 		size_t min_size = bdb_blocks[i].min_size;
 
 		if (section_id == BDB_LFP_DATA)
-			min_size = lfp_data_min_size(i915);
+			min_size = lfp_data_min_size(display);
 
-		init_bdb_block(i915, bdb, section_id, min_size);
+		init_bdb_block(display, bdb, section_id, min_size);
 	}
 }
 
 static void
-fill_detail_timing_data(struct drm_i915_private *i915,
+fill_detail_timing_data(struct intel_display *display,
 			struct drm_display_mode *panel_fixed_mode,
 			const struct bdb_edid_dtd *dvo_timing)
 {
@@ -568,12 +570,12 @@ fill_detail_timing_data(struct drm_i915_private *i915,
 
 	/* Some VBTs have bogus h/vsync_end values */
 	if (panel_fixed_mode->hsync_end > panel_fixed_mode->htotal) {
-		drm_dbg_kms(&i915->drm, "reducing hsync_end %d->%d\n",
+		drm_dbg_kms(display->drm, "reducing hsync_end %d->%d\n",
 			    panel_fixed_mode->hsync_end, panel_fixed_mode->htotal);
 		panel_fixed_mode->hsync_end = panel_fixed_mode->htotal;
 	}
 	if (panel_fixed_mode->vsync_end > panel_fixed_mode->vtotal) {
-		drm_dbg_kms(&i915->drm, "reducing vsync_end %d->%d\n",
+		drm_dbg_kms(display->drm, "reducing vsync_end %d->%d\n",
 			    panel_fixed_mode->vsync_end, panel_fixed_mode->vtotal);
 		panel_fixed_mode->vsync_end = panel_fixed_mode->vtotal;
 	}
@@ -618,28 +620,26 @@ get_lfp_data_tail(const struct bdb_lfp_data *data,
 		return NULL;
 }
 
-static int opregion_get_panel_type(struct drm_i915_private *i915,
+static int opregion_get_panel_type(struct intel_display *display,
 				   const struct intel_bios_encoder_data *devdata,
 				   const struct drm_edid *drm_edid, bool use_fallback)
 {
-	struct intel_display *display = &i915->display;
-
 	return intel_opregion_get_panel_type(display);
 }
 
-static int vbt_get_panel_type(struct drm_i915_private *i915,
+static int vbt_get_panel_type(struct intel_display *display,
 			      const struct intel_bios_encoder_data *devdata,
 			      const struct drm_edid *drm_edid, bool use_fallback)
 {
 	const struct bdb_lfp_options *lfp_options;
 
-	lfp_options = bdb_find_section(i915, BDB_LFP_OPTIONS);
+	lfp_options = bdb_find_section(display, BDB_LFP_OPTIONS);
 	if (!lfp_options)
 		return -1;
 
 	if (lfp_options->panel_type > 0xf &&
 	    lfp_options->panel_type != 0xff) {
-		drm_dbg_kms(&i915->drm, "Invalid VBT panel type 0x%x\n",
+		drm_dbg_kms(display->drm, "Invalid VBT panel type 0x%x\n",
 			    lfp_options->panel_type);
 		return -1;
 	}
@@ -647,12 +647,13 @@ static int vbt_get_panel_type(struct drm_i915_private *i915,
 	if (devdata && devdata->child.handle == DEVICE_HANDLE_LFP2)
 		return lfp_options->panel_type2;
 
-	drm_WARN_ON(&i915->drm, devdata && devdata->child.handle != DEVICE_HANDLE_LFP1);
+	drm_WARN_ON(display->drm,
+		    devdata && devdata->child.handle != DEVICE_HANDLE_LFP1);
 
 	return lfp_options->panel_type;
 }
 
-static int pnpid_get_panel_type(struct drm_i915_private *i915,
+static int pnpid_get_panel_type(struct intel_display *display,
 				const struct intel_bios_encoder_data *devdata,
 				const struct drm_edid *drm_edid, bool use_fallback)
 {
@@ -671,14 +672,14 @@ static int pnpid_get_panel_type(struct drm_i915_private *i915,
 	product_id_nodate.week_of_manufacture = 0;
 	product_id_nodate.year_of_manufacture = 0;
 
-	p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, "EDID");
+	p = drm_dbg_printer(display->drm, DRM_UT_KMS, "EDID");
 	drm_edid_print_product_id(&p, &product_id, true);
 
-	ptrs = bdb_find_section(i915, BDB_LFP_DATA_PTRS);
+	ptrs = bdb_find_section(display, BDB_LFP_DATA_PTRS);
 	if (!ptrs)
 		return -1;
 
-	data = bdb_find_section(i915, BDB_LFP_DATA);
+	data = bdb_find_section(display, BDB_LFP_DATA);
 	if (!data)
 		return -1;
 
@@ -702,7 +703,7 @@ static int pnpid_get_panel_type(struct drm_i915_private *i915,
 	return best;
 }
 
-static int fallback_get_panel_type(struct drm_i915_private *i915,
+static int fallback_get_panel_type(struct intel_display *display,
 				   const struct intel_bios_encoder_data *devdata,
 				   const struct drm_edid *drm_edid, bool use_fallback)
 {
@@ -716,13 +717,13 @@ enum panel_type {
 	PANEL_TYPE_FALLBACK,
 };
 
-static int get_panel_type(struct drm_i915_private *i915,
+static int get_panel_type(struct intel_display *display,
 			  const struct intel_bios_encoder_data *devdata,
 			  const struct drm_edid *drm_edid, bool use_fallback)
 {
 	struct {
 		const char *name;
-		int (*get_panel_type)(struct drm_i915_private *i915,
+		int (*get_panel_type)(struct intel_display *display,
 				      const struct intel_bios_encoder_data *devdata,
 				      const struct drm_edid *drm_edid, bool use_fallback);
 		int panel_type;
@@ -747,14 +748,14 @@ static int get_panel_type(struct drm_i915_private *i915,
 	int i;
 
 	for (i = 0; i < ARRAY_SIZE(panel_types); i++) {
-		panel_types[i].panel_type = panel_types[i].get_panel_type(i915, devdata,
+		panel_types[i].panel_type = panel_types[i].get_panel_type(display, devdata,
 									  drm_edid, use_fallback);
 
-		drm_WARN_ON(&i915->drm, panel_types[i].panel_type > 0xf &&
+		drm_WARN_ON(display->drm, panel_types[i].panel_type > 0xf &&
 			    panel_types[i].panel_type != 0xff);
 
 		if (panel_types[i].panel_type >= 0)
-			drm_dbg_kms(&i915->drm, "Panel type (%s): %d\n",
+			drm_dbg_kms(display->drm, "Panel type (%s): %d\n",
 				    panel_types[i].name, panel_types[i].panel_type);
 	}
 
@@ -769,7 +770,7 @@ static int get_panel_type(struct drm_i915_private *i915,
 	else
 		i = PANEL_TYPE_FALLBACK;
 
-	drm_dbg_kms(&i915->drm, "Selected panel type (%s): %d\n",
+	drm_dbg_kms(display->drm, "Selected panel type (%s): %d\n",
 		    panel_types[i].name, panel_types[i].panel_type);
 
 	return panel_types[i].panel_type;
@@ -787,14 +788,14 @@ static bool panel_bool(unsigned int value, int panel_type)
 
 /* Parse general panel options */
 static void
-parse_panel_options(struct drm_i915_private *i915,
+parse_panel_options(struct intel_display *display,
 		    struct intel_panel *panel)
 {
 	const struct bdb_lfp_options *lfp_options;
 	int panel_type = panel->vbt.panel_type;
 	int drrs_mode;
 
-	lfp_options = bdb_find_section(i915, BDB_LFP_OPTIONS);
+	lfp_options = bdb_find_section(display, BDB_LFP_OPTIONS);
 	if (!lfp_options)
 		return;
 
@@ -818,23 +819,23 @@ parse_panel_options(struct drm_i915_private *i915,
 	switch (drrs_mode) {
 	case 0:
 		panel->vbt.drrs_type = DRRS_TYPE_STATIC;
-		drm_dbg_kms(&i915->drm, "DRRS supported mode is static\n");
+		drm_dbg_kms(display->drm, "DRRS supported mode is static\n");
 		break;
 	case 2:
 		panel->vbt.drrs_type = DRRS_TYPE_SEAMLESS;
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "DRRS supported mode is seamless\n");
 		break;
 	default:
 		panel->vbt.drrs_type = DRRS_TYPE_NONE;
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "DRRS not supported (VBT input)\n");
 		break;
 	}
 }
 
 static void
-parse_lfp_panel_dtd(struct drm_i915_private *i915,
+parse_lfp_panel_dtd(struct intel_display *display,
 		    struct intel_panel *panel,
 		    const struct bdb_lfp_data *lfp_data,
 		    const struct bdb_lfp_data_ptrs *lfp_data_ptrs)
@@ -852,11 +853,11 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
 	if (!panel_fixed_mode)
 		return;
 
-	fill_detail_timing_data(i915, panel_fixed_mode, panel_dvo_timing);
+	fill_detail_timing_data(display, panel_fixed_mode, panel_dvo_timing);
 
 	panel->vbt.lfp_vbt_mode = panel_fixed_mode;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "Found panel mode in BIOS VBT legacy lfp table: " DRM_MODE_FMT "\n",
 		    DRM_MODE_ARG(panel_fixed_mode));
 
@@ -868,14 +869,14 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
 	if (fp_timing->x_res == panel_fixed_mode->hdisplay &&
 	    fp_timing->y_res == panel_fixed_mode->vdisplay) {
 		panel->vbt.bios_lvds_val = fp_timing->lvds_reg_val;
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "VBT initial LVDS value %x\n",
 			    panel->vbt.bios_lvds_val);
 	}
 }
 
 static void
-parse_lfp_data(struct drm_i915_private *i915,
+parse_lfp_data(struct intel_display *display,
 	       struct intel_panel *panel)
 {
 	const struct bdb_lfp_data *data;
@@ -885,41 +886,41 @@ parse_lfp_data(struct drm_i915_private *i915,
 	struct drm_printer p;
 	int panel_type = panel->vbt.panel_type;
 
-	ptrs = bdb_find_section(i915, BDB_LFP_DATA_PTRS);
+	ptrs = bdb_find_section(display, BDB_LFP_DATA_PTRS);
 	if (!ptrs)
 		return;
 
-	data = bdb_find_section(i915, BDB_LFP_DATA);
+	data = bdb_find_section(display, BDB_LFP_DATA);
 	if (!data)
 		return;
 
 	if (!panel->vbt.lfp_vbt_mode)
-		parse_lfp_panel_dtd(i915, panel, data, ptrs);
+		parse_lfp_panel_dtd(display, panel, data, ptrs);
 
 	pnp_id = get_lfp_pnp_id(data, ptrs, panel_type);
 
-	p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, "Panel");
+	p = drm_dbg_printer(display->drm, DRM_UT_KMS, "Panel");
 	drm_edid_print_product_id(&p, pnp_id, false);
 
 	tail = get_lfp_data_tail(data, ptrs);
 	if (!tail)
 		return;
 
-	drm_dbg_kms(&i915->drm, "Panel name: %.*s\n",
+	drm_dbg_kms(display->drm, "Panel name: %.*s\n",
 		    (int)sizeof(tail->panel_name[0].name),
 		    tail->panel_name[panel_type].name);
 
-	if (i915->display.vbt.version >= 188) {
+	if (display->vbt.version >= 188) {
 		panel->vbt.seamless_drrs_min_refresh_rate =
 			tail->seamless_drrs_min_refresh_rate[panel_type];
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Seamless DRRS min refresh rate: %d Hz\n",
 			    panel->vbt.seamless_drrs_min_refresh_rate);
 	}
 }
 
 static void
-parse_generic_dtd(struct drm_i915_private *i915,
+parse_generic_dtd(struct intel_display *display,
 		  struct intel_panel *panel)
 {
 	const struct bdb_generic_dtd *generic_dtd;
@@ -935,20 +936,20 @@ parse_generic_dtd(struct drm_i915_private *i915,
 	 * first on VBT >= 229, but still fall back to trying the old LFP
 	 * block if that fails.
 	 */
-	if (i915->display.vbt.version < 229)
+	if (display->vbt.version < 229)
 		return;
 
-	generic_dtd = bdb_find_section(i915, BDB_GENERIC_DTD);
+	generic_dtd = bdb_find_section(display, BDB_GENERIC_DTD);
 	if (!generic_dtd)
 		return;
 
 	if (generic_dtd->gdtd_size < sizeof(struct generic_dtd_entry)) {
-		drm_err(&i915->drm, "GDTD size %u is too small.\n",
+		drm_err(display->drm, "GDTD size %u is too small.\n",
 			generic_dtd->gdtd_size);
 		return;
 	} else if (generic_dtd->gdtd_size !=
 		   sizeof(struct generic_dtd_entry)) {
-		drm_err(&i915->drm, "Unexpected GDTD size %u\n",
+		drm_err(display->drm, "Unexpected GDTD size %u\n",
 			generic_dtd->gdtd_size);
 		/* DTD has unknown fields, but keep going */
 	}
@@ -956,7 +957,7 @@ parse_generic_dtd(struct drm_i915_private *i915,
 	num_dtd = (get_blocksize(generic_dtd) -
 		   sizeof(struct bdb_generic_dtd)) / generic_dtd->gdtd_size;
 	if (panel->vbt.panel_type >= num_dtd) {
-		drm_err(&i915->drm,
+		drm_err(display->drm,
 			"Panel type %d not found in table of %d DTD's\n",
 			panel->vbt.panel_type, num_dtd);
 		return;
@@ -1001,7 +1002,7 @@ parse_generic_dtd(struct drm_i915_private *i915,
 	else
 		panel_fixed_mode->flags |= DRM_MODE_FLAG_NVSYNC;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "Found panel mode in BIOS VBT generic dtd table: " DRM_MODE_FMT "\n",
 		    DRM_MODE_ARG(panel_fixed_mode));
 
@@ -1009,7 +1010,7 @@ parse_generic_dtd(struct drm_i915_private *i915,
 }
 
 static void
-parse_lfp_backlight(struct drm_i915_private *i915,
+parse_lfp_backlight(struct intel_display *display,
 		    struct intel_panel *panel)
 {
 	const struct bdb_lfp_backlight *backlight_data;
@@ -1017,12 +1018,12 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 	int panel_type = panel->vbt.panel_type;
 	u16 level;
 
-	backlight_data = bdb_find_section(i915, BDB_LFP_BACKLIGHT);
+	backlight_data = bdb_find_section(display, BDB_LFP_BACKLIGHT);
 	if (!backlight_data)
 		return;
 
 	if (backlight_data->entry_size != sizeof(backlight_data->data[0])) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Unsupported backlight data entry size %u\n",
 			    backlight_data->entry_size);
 		return;
@@ -1032,7 +1033,7 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 
 	panel->vbt.backlight.present = entry->type == BDB_BACKLIGHT_TYPE_PWM;
 	if (!panel->vbt.backlight.present) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "PWM backlight not present in VBT (type %u)\n",
 			    entry->type);
 		return;
@@ -1040,7 +1041,7 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 
 	panel->vbt.backlight.type = INTEL_BACKLIGHT_DISPLAY_DDI;
 	panel->vbt.backlight.controller = 0;
-	if (i915->display.vbt.version >= 191) {
+	if (display->vbt.version >= 191) {
 		const struct lfp_backlight_control_method *method;
 
 		method = &backlight_data->backlight_control[panel_type];
@@ -1051,14 +1052,14 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 	panel->vbt.backlight.pwm_freq_hz = entry->pwm_freq_hz;
 	panel->vbt.backlight.active_low_pwm = entry->active_low_pwm;
 
-	if (i915->display.vbt.version >= 234) {
+	if (display->vbt.version >= 234) {
 		u16 min_level;
 		bool scale;
 
 		level = backlight_data->brightness_level[panel_type].level;
 		min_level = backlight_data->brightness_min_level[panel_type].level;
 
-		if (i915->display.vbt.version >= 236)
+		if (display->vbt.version >= 236)
 			scale = backlight_data->brightness_precision_bits[panel_type] == 16;
 		else
 			scale = level > 255;
@@ -1067,7 +1068,7 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 			min_level = min_level / 255;
 
 		if (min_level > 255) {
-			drm_warn(&i915->drm, "Brightness min level > 255\n");
+			drm_warn(display->drm, "Brightness min level > 255\n");
 			level = 255;
 		}
 		panel->vbt.backlight.min_brightness = min_level;
@@ -1079,13 +1080,13 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 		panel->vbt.backlight.min_brightness = entry->min_brightness;
 	}
 
-	if (i915->display.vbt.version >= 239)
+	if (display->vbt.version >= 239)
 		panel->vbt.backlight.hdr_dpcd_refresh_timeout =
 			DIV_ROUND_UP(backlight_data->hdr_dpcd_refresh_timeout[panel_type], 100);
 	else
 		panel->vbt.backlight.hdr_dpcd_refresh_timeout = 30;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "VBT backlight PWM modulation frequency %u Hz, "
 		    "active %s, min brightness %u, level %u, controller %u\n",
 		    panel->vbt.backlight.pwm_freq_hz,
@@ -1096,16 +1097,16 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 }
 
 static void
-parse_sdvo_lvds_data(struct drm_i915_private *i915,
+parse_sdvo_lvds_data(struct intel_display *display,
 		     struct intel_panel *panel)
 {
 	const struct bdb_sdvo_lvds_dtd *dtd;
 	struct drm_display_mode *panel_fixed_mode;
 	int index;
 
-	index = i915->display.params.vbt_sdvo_panel_type;
+	index = display->params.vbt_sdvo_panel_type;
 	if (index == -2) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Ignore SDVO LVDS mode from BIOS VBT tables.\n");
 		return;
 	}
@@ -1113,14 +1114,14 @@ parse_sdvo_lvds_data(struct drm_i915_private *i915,
 	if (index == -1) {
 		const struct bdb_sdvo_lvds_options *sdvo_lvds_options;
 
-		sdvo_lvds_options = bdb_find_section(i915, BDB_SDVO_LVDS_OPTIONS);
+		sdvo_lvds_options = bdb_find_section(display, BDB_SDVO_LVDS_OPTIONS);
 		if (!sdvo_lvds_options)
 			return;
 
 		index = sdvo_lvds_options->panel_type;
 	}
 
-	dtd = bdb_find_section(i915, BDB_SDVO_LVDS_DTD);
+	dtd = bdb_find_section(display, BDB_SDVO_LVDS_DTD);
 	if (!dtd)
 		return;
 
@@ -1131,7 +1132,8 @@ parse_sdvo_lvds_data(struct drm_i915_private *i915,
 	 * it here to be sure.
 	 */
 	if (index >= ARRAY_SIZE(dtd->dtd)) {
-		drm_err(&i915->drm, "index %d is larger than dtd->dtd[4] array\n",
+		drm_err(display->drm,
+			"index %d is larger than dtd->dtd[4] array\n",
 			index);
 		return;
 	}
@@ -1140,19 +1142,19 @@ parse_sdvo_lvds_data(struct drm_i915_private *i915,
 	if (!panel_fixed_mode)
 		return;
 
-	fill_detail_timing_data(i915, panel_fixed_mode, &dtd->dtd[index]);
+	fill_detail_timing_data(display, panel_fixed_mode, &dtd->dtd[index]);
 
 	panel->vbt.sdvo_lvds_vbt_mode = panel_fixed_mode;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "Found SDVO LVDS mode in BIOS VBT tables: " DRM_MODE_FMT "\n",
 		    DRM_MODE_ARG(panel_fixed_mode));
 }
 
-static int intel_bios_ssc_frequency(struct drm_i915_private *i915,
+static int intel_bios_ssc_frequency(struct intel_display *display,
 				    bool alternate)
 {
-	switch (DISPLAY_VER(i915)) {
+	switch (DISPLAY_VER(display)) {
 	case 2:
 		return alternate ? 66667 : 48000;
 	case 3:
@@ -1164,45 +1166,46 @@ static int intel_bios_ssc_frequency(struct drm_i915_private *i915,
 }
 
 static void
-parse_general_features(struct drm_i915_private *i915)
+parse_general_features(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct bdb_general_features *general;
 
-	general = bdb_find_section(i915, BDB_GENERAL_FEATURES);
+	general = bdb_find_section(display, BDB_GENERAL_FEATURES);
 	if (!general)
 		return;
 
-	i915->display.vbt.int_tv_support = general->int_tv_support;
+	display->vbt.int_tv_support = general->int_tv_support;
 	/* int_crt_support can't be trusted on earlier platforms */
-	if (i915->display.vbt.version >= 155 &&
-	    (HAS_DDI(i915) || IS_VALLEYVIEW(i915)))
-		i915->display.vbt.int_crt_support = general->int_crt_support;
-	i915->display.vbt.lvds_use_ssc = general->enable_ssc;
-	i915->display.vbt.lvds_ssc_freq =
-		intel_bios_ssc_frequency(i915, general->ssc_freq);
-	i915->display.vbt.display_clock_mode = general->display_clock_mode;
-	i915->display.vbt.fdi_rx_polarity_inverted = general->fdi_rx_polarity_inverted;
-	if (i915->display.vbt.version >= 181) {
-		i915->display.vbt.orientation = general->rotate_180 ?
+	if (display->vbt.version >= 155 &&
+	    (HAS_DDI(display) || IS_VALLEYVIEW(i915)))
+		display->vbt.int_crt_support = general->int_crt_support;
+	display->vbt.lvds_use_ssc = general->enable_ssc;
+	display->vbt.lvds_ssc_freq =
+		intel_bios_ssc_frequency(display, general->ssc_freq);
+	display->vbt.display_clock_mode = general->display_clock_mode;
+	display->vbt.fdi_rx_polarity_inverted = general->fdi_rx_polarity_inverted;
+	if (display->vbt.version >= 181) {
+		display->vbt.orientation = general->rotate_180 ?
 			DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP :
 			DRM_MODE_PANEL_ORIENTATION_NORMAL;
 	} else {
-		i915->display.vbt.orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
+		display->vbt.orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
 	}
 
-	if (i915->display.vbt.version >= 249 && general->afc_startup_config) {
-		i915->display.vbt.override_afc_startup = true;
-		i915->display.vbt.override_afc_startup_val = general->afc_startup_config == 0x1 ? 0x0 : 0x7;
+	if (display->vbt.version >= 249 && general->afc_startup_config) {
+		display->vbt.override_afc_startup = true;
+		display->vbt.override_afc_startup_val = general->afc_startup_config == 1 ? 0 : 7;
 	}
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "BDB_GENERAL_FEATURES int_tv_support %d int_crt_support %d lvds_use_ssc %d lvds_ssc_freq %d display_clock_mode %d fdi_rx_polarity_inverted %d\n",
-		    i915->display.vbt.int_tv_support,
-		    i915->display.vbt.int_crt_support,
-		    i915->display.vbt.lvds_use_ssc,
-		    i915->display.vbt.lvds_ssc_freq,
-		    i915->display.vbt.display_clock_mode,
-		    i915->display.vbt.fdi_rx_polarity_inverted);
+		    display->vbt.int_tv_support,
+		    display->vbt.int_crt_support,
+		    display->vbt.lvds_use_ssc,
+		    display->vbt.lvds_ssc_freq,
+		    display->vbt.display_clock_mode,
+		    display->vbt.fdi_rx_polarity_inverted);
 }
 
 static const struct child_device_config *
@@ -1212,7 +1215,7 @@ child_device_ptr(const struct bdb_general_definitions *defs, int i)
 }
 
 static void
-parse_sdvo_device_mapping(struct drm_i915_private *i915)
+parse_sdvo_device_mapping(struct intel_display *display)
 {
 	const struct intel_bios_encoder_data *devdata;
 	int count = 0;
@@ -1221,12 +1224,12 @@ parse_sdvo_device_mapping(struct drm_i915_private *i915)
 	 * Only parse SDVO mappings on gens that could have SDVO. This isn't
 	 * accurate and doesn't have to be, as long as it's not too strict.
 	 */
-	if (!IS_DISPLAY_VER(i915, 3, 7)) {
-		drm_dbg_kms(&i915->drm, "Skipping SDVO device mapping\n");
+	if (!IS_DISPLAY_VER(display, 3, 7)) {
+		drm_dbg_kms(display->drm, "Skipping SDVO device mapping\n");
 		return;
 	}
 
-	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
+	list_for_each_entry(devdata, &display->vbt.display_devices, node) {
 		const struct child_device_config *child = &devdata->child;
 		struct sdvo_device_mapping *mapping;
 
@@ -1241,17 +1244,17 @@ parse_sdvo_device_mapping(struct drm_i915_private *i915)
 		if (child->dvo_port != DEVICE_PORT_DVOB &&
 		    child->dvo_port != DEVICE_PORT_DVOC) {
 			/* skip the incorrect SDVO port */
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "Incorrect SDVO port. Skip it\n");
 			continue;
 		}
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "the SDVO device with target addr %2x is found on"
 			    " %s port\n",
 			    child->target_addr,
 			    (child->dvo_port == DEVICE_PORT_DVOB) ?
 			    "SDVOB" : "SDVOC");
-		mapping = &i915->display.vbt.sdvo_mappings[child->dvo_port - 1];
+		mapping = &display->vbt.sdvo_mappings[child->dvo_port - 1];
 		if (!mapping->initialized) {
 			mapping->dvo_port = child->dvo_port;
 			mapping->target_addr = child->target_addr;
@@ -1259,20 +1262,20 @@ parse_sdvo_device_mapping(struct drm_i915_private *i915)
 			mapping->ddc_pin = child->ddc_pin;
 			mapping->i2c_pin = child->i2c_pin;
 			mapping->initialized = 1;
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "SDVO device: dvo=%x, addr=%x, wiring=%d, ddc_pin=%d, i2c_pin=%d\n",
 				    mapping->dvo_port, mapping->target_addr,
 				    mapping->dvo_wiring, mapping->ddc_pin,
 				    mapping->i2c_pin);
 		} else {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "Maybe one SDVO port is shared by "
 				    "two SDVO device.\n");
 		}
 		if (child->target2_addr) {
 			/* Maybe this is a SDVO device with multiple inputs */
 			/* And the mapping info is not added */
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "there exists the target2_addr. Maybe this"
 				    " is a SDVO device with multiple inputs.\n");
 		}
@@ -1281,28 +1284,28 @@ parse_sdvo_device_mapping(struct drm_i915_private *i915)
 
 	if (!count) {
 		/* No SDVO device info is found */
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "No SDVO device info is found in VBT\n");
 	}
 }
 
 static void
-parse_driver_features(struct drm_i915_private *i915)
+parse_driver_features(struct intel_display *display)
 {
 	const struct bdb_driver_features *driver;
 
-	driver = bdb_find_section(i915, BDB_DRIVER_FEATURES);
+	driver = bdb_find_section(display, BDB_DRIVER_FEATURES);
 	if (!driver)
 		return;
 
-	if (DISPLAY_VER(i915) >= 5) {
+	if (DISPLAY_VER(display) >= 5) {
 		/*
 		 * Note that we consider BDB_DRIVER_FEATURE_INT_SDVO_LVDS
 		 * to mean "eDP". The VBT spec doesn't agree with that
 		 * interpretation, but real world VBTs seem to.
 		 */
 		if (driver->lvds_config != BDB_DRIVER_FEATURE_INT_LVDS)
-			i915->display.vbt.int_lvds_support = 0;
+			display->vbt.int_lvds_support = 0;
 	} else {
 		/*
 		 * FIXME it's not clear which BDB version has the LVDS config
@@ -1315,25 +1318,25 @@ parse_driver_features(struct drm_i915_private *i915)
 		 * in the wild with the bits correctly populated. Version
 		 * 108 (on i85x) does not have the bits correctly populated.
 		 */
-		if (i915->display.vbt.version >= 134 &&
+		if (display->vbt.version >= 134 &&
 		    driver->lvds_config != BDB_DRIVER_FEATURE_INT_LVDS &&
 		    driver->lvds_config != BDB_DRIVER_FEATURE_INT_SDVO_LVDS)
-			i915->display.vbt.int_lvds_support = 0;
+			display->vbt.int_lvds_support = 0;
 	}
 }
 
 static void
-parse_panel_driver_features(struct drm_i915_private *i915,
+parse_panel_driver_features(struct intel_display *display,
 			    struct intel_panel *panel)
 {
 	const struct bdb_driver_features *driver;
 
-	driver = bdb_find_section(i915, BDB_DRIVER_FEATURES);
+	driver = bdb_find_section(display, BDB_DRIVER_FEATURES);
 	if (!driver)
 		return;
 
-	if (i915->display.vbt.version < 228) {
-		drm_dbg_kms(&i915->drm, "DRRS State Enabled:%d\n",
+	if (display->vbt.version < 228) {
+		drm_dbg_kms(display->drm, "DRRS State Enabled:%d\n",
 			    driver->drrs_enabled);
 		/*
 		 * If DRRS is not supported, drrs_type has to be set to 0.
@@ -1357,7 +1360,7 @@ parse_panel_driver_features(struct drm_i915_private *i915,
 }
 
 static void
-parse_power_conservation_features(struct drm_i915_private *i915,
+parse_power_conservation_features(struct intel_display *display,
 				  struct intel_panel *panel)
 {
 	const struct bdb_lfp_power *power;
@@ -1365,10 +1368,10 @@ parse_power_conservation_features(struct drm_i915_private *i915,
 
 	panel->vbt.vrr = true; /* matches Windows behaviour */
 
-	if (i915->display.vbt.version < 228)
+	if (display->vbt.version < 228)
 		return;
 
-	power = bdb_find_section(i915, BDB_LFP_POWER);
+	power = bdb_find_section(display, BDB_LFP_POWER);
 	if (!power)
 		return;
 
@@ -1391,16 +1394,16 @@ parse_power_conservation_features(struct drm_i915_private *i915,
 			panel->vbt.drrs_type = DRRS_TYPE_NONE;
 	}
 
-	if (i915->display.vbt.version >= 232)
+	if (display->vbt.version >= 232)
 		panel->vbt.edp.hobl = panel_bool(power->hobl, panel_type);
 
-	if (i915->display.vbt.version >= 233)
+	if (display->vbt.version >= 233)
 		panel->vbt.vrr = panel_bool(power->vrr_feature_enabled,
 					    panel_type);
 }
 
 static void
-parse_edp(struct drm_i915_private *i915,
+parse_edp(struct intel_display *display,
 	  struct intel_panel *panel)
 {
 	const struct bdb_edp *edp;
@@ -1408,7 +1411,7 @@ parse_edp(struct drm_i915_private *i915,
 	const struct edp_fast_link_params *edp_link_params;
 	int panel_type = panel->vbt.panel_type;
 
-	edp = bdb_find_section(i915, BDB_EDP);
+	edp = bdb_find_section(display, BDB_EDP);
 	if (!edp)
 		return;
 
@@ -1430,7 +1433,7 @@ parse_edp(struct drm_i915_private *i915,
 
 	panel->vbt.edp.pps = *edp_pps;
 
-	if (i915->display.vbt.version >= 224) {
+	if (display->vbt.version >= 224) {
 		panel->vbt.edp.rate =
 			edp->edp_fast_link_training_rate[panel_type] * 20;
 	} else {
@@ -1445,7 +1448,7 @@ parse_edp(struct drm_i915_private *i915,
 			panel->vbt.edp.rate = 540000;
 			break;
 		default:
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "VBT has unknown eDP link rate value %u\n",
 				    edp_link_params->rate);
 			break;
@@ -1463,7 +1466,7 @@ parse_edp(struct drm_i915_private *i915,
 		panel->vbt.edp.lanes = 4;
 		break;
 	default:
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "VBT has unknown eDP lane count value %u\n",
 			    edp_link_params->lanes);
 		break;
@@ -1483,7 +1486,7 @@ parse_edp(struct drm_i915_private *i915,
 		panel->vbt.edp.preemphasis = DP_TRAIN_PRE_EMPH_LEVEL_3;
 		break;
 	default:
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "VBT has unknown eDP pre-emphasis value %u\n",
 			    edp_link_params->preemphasis);
 		break;
@@ -1503,19 +1506,19 @@ parse_edp(struct drm_i915_private *i915,
 		panel->vbt.edp.vswing = DP_TRAIN_VOLTAGE_SWING_LEVEL_3;
 		break;
 	default:
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "VBT has unknown eDP voltage swing value %u\n",
 			    edp_link_params->vswing);
 		break;
 	}
 
-	if (i915->display.vbt.version >= 173) {
+	if (display->vbt.version >= 173) {
 		u8 vswing;
 
 		/* Don't read from VBT if module parameter has valid value*/
-		if (i915->display.params.edp_vswing) {
+		if (display->params.edp_vswing) {
 			panel->vbt.edp.low_vswing =
-				i915->display.params.edp_vswing == 1;
+				display->params.edp_vswing == 1;
 		} else {
 			vswing = (edp->edp_vswing_preemph >> (panel_type * 4)) & 0xF;
 			panel->vbt.edp.low_vswing = vswing == 0;
@@ -1525,26 +1528,27 @@ parse_edp(struct drm_i915_private *i915,
 	panel->vbt.edp.drrs_msa_timing_delay =
 		panel_bits(edp->sdrrs_msa_timing_delay, panel_type, 2);
 
-	if (i915->display.vbt.version >= 244)
+	if (display->vbt.version >= 244)
 		panel->vbt.edp.max_link_rate =
 			edp->edp_max_port_link_rate[panel_type] * 20;
 
-	if (i915->display.vbt.version >= 251)
+	if (display->vbt.version >= 251)
 		panel->vbt.edp.dsc_disable =
 			panel_bool(edp->edp_dsc_disable, panel_type);
 }
 
 static void
-parse_psr(struct drm_i915_private *i915,
+parse_psr(struct intel_display *display,
 	  struct intel_panel *panel)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct bdb_psr *psr;
 	const struct psr_table *psr_table;
 	int panel_type = panel->vbt.panel_type;
 
-	psr = bdb_find_section(i915, BDB_PSR);
+	psr = bdb_find_section(display, BDB_PSR);
 	if (!psr) {
-		drm_dbg_kms(&i915->drm, "No PSR BDB found.\n");
+		drm_dbg_kms(display->drm, "No PSR BDB found.\n");
 		return;
 	}
 
@@ -1561,8 +1565,8 @@ parse_psr(struct drm_i915_private *i915,
 	 * New psr options 0=500us, 1=100us, 2=2500us, 3=0us
 	 * Old decimal value is wake up time in multiples of 100 us.
 	 */
-	if (i915->display.vbt.version >= 205 &&
-	    (DISPLAY_VER(i915) >= 9 && !IS_BROXTON(i915))) {
+	if (display->vbt.version >= 205 &&
+	    (DISPLAY_VER(display) >= 9 && !IS_BROXTON(i915))) {
 		switch (psr_table->tp1_wakeup_time) {
 		case 0:
 			panel->vbt.psr.tp1_wakeup_time_us = 500;
@@ -1574,7 +1578,7 @@ parse_psr(struct drm_i915_private *i915,
 			panel->vbt.psr.tp1_wakeup_time_us = 0;
 			break;
 		default:
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "VBT tp1 wakeup time value %d is outside range[0-3], defaulting to max value 2500us\n",
 				    psr_table->tp1_wakeup_time);
 			fallthrough;
@@ -1594,7 +1598,7 @@ parse_psr(struct drm_i915_private *i915,
 			panel->vbt.psr.tp2_tp3_wakeup_time_us = 0;
 			break;
 		default:
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "VBT tp2_tp3 wakeup time value %d is outside range[0-3], defaulting to max value 2500us\n",
 				    psr_table->tp2_tp3_wakeup_time);
 			fallthrough;
@@ -1607,7 +1611,7 @@ parse_psr(struct drm_i915_private *i915,
 		panel->vbt.psr.tp2_tp3_wakeup_time_us = psr_table->tp2_tp3_wakeup_time * 100;
 	}
 
-	if (i915->display.vbt.version >= 226) {
+	if (display->vbt.version >= 226) {
 		u32 wakeup_time = psr->psr2_tp2_tp3_wakeup_time;
 
 		wakeup_time = panel_bits(wakeup_time, panel_type, 2);
@@ -1633,13 +1637,13 @@ parse_psr(struct drm_i915_private *i915,
 	}
 }
 
-static void parse_dsi_backlight_ports(struct drm_i915_private *i915,
+static void parse_dsi_backlight_ports(struct intel_display *display,
 				      struct intel_panel *panel,
 				      enum port port)
 {
-	enum port port_bc = DISPLAY_VER(i915) >= 11 ? PORT_B : PORT_C;
+	enum port port_bc = DISPLAY_VER(display) >= 11 ? PORT_B : PORT_C;
 
-	if (!panel->vbt.dsi.config->dual_link || i915->display.vbt.version < 197) {
+	if (!panel->vbt.dsi.config->dual_link || display->vbt.version < 197) {
 		panel->vbt.dsi.bl_ports = BIT(port);
 		if (panel->vbt.dsi.config->cabc_supported)
 			panel->vbt.dsi.cabc_ports = BIT(port);
@@ -1679,7 +1683,7 @@ static void parse_dsi_backlight_ports(struct drm_i915_private *i915,
 }
 
 static void
-parse_mipi_config(struct drm_i915_private *i915,
+parse_mipi_config(struct intel_display *display,
 		  struct intel_panel *panel)
 {
 	const struct bdb_mipi_config *start;
@@ -1689,19 +1693,19 @@ parse_mipi_config(struct drm_i915_private *i915,
 	enum port port;
 
 	/* parse MIPI blocks only if LFP type is MIPI */
-	if (!intel_bios_is_dsi_present(i915, &port))
+	if (!intel_bios_is_dsi_present(display, &port))
 		return;
 
 	/* Initialize this to undefined indicating no generic MIPI support */
 	panel->vbt.dsi.panel_id = MIPI_DSI_UNDEFINED_PANEL_ID;
 
-	start = bdb_find_section(i915, BDB_MIPI_CONFIG);
+	start = bdb_find_section(display, BDB_MIPI_CONFIG);
 	if (!start) {
-		drm_dbg_kms(&i915->drm, "No MIPI config BDB found");
+		drm_dbg_kms(display->drm, "No MIPI config BDB found");
 		return;
 	}
 
-	drm_dbg(&i915->drm, "Found MIPI Config block, panel index = %d\n",
+	drm_dbg(display->drm, "Found MIPI Config block, panel index = %d\n",
 		panel_type);
 
 	/*
@@ -1722,7 +1726,7 @@ parse_mipi_config(struct drm_i915_private *i915,
 		return;
 	}
 
-	parse_dsi_backlight_ports(i915, panel, port);
+	parse_dsi_backlight_ports(display, panel, port);
 
 	/* FIXME is the 90 vs. 270 correct? */
 	switch (config->rotation) {
@@ -1754,7 +1758,7 @@ parse_mipi_config(struct drm_i915_private *i915,
 
 /* Find the sequence block and size for the given panel. */
 static const u8 *
-find_panel_sequence_block(struct drm_i915_private *i915,
+find_panel_sequence_block(struct intel_display *display,
 			  const struct bdb_mipi_sequence *sequence,
 			  u16 panel_id, u32 *seq_size)
 {
@@ -1772,7 +1776,8 @@ find_panel_sequence_block(struct drm_i915_private *i915,
 
 	for (i = 0; i < MAX_MIPI_CONFIGURATIONS && index < total; i++) {
 		if (index + header_size > total) {
-			drm_err(&i915->drm, "Invalid sequence block (header)\n");
+			drm_err(display->drm,
+				"Invalid sequence block (header)\n");
 			return NULL;
 		}
 
@@ -1785,7 +1790,7 @@ find_panel_sequence_block(struct drm_i915_private *i915,
 		index += header_size;
 
 		if (index + current_size > total) {
-			drm_err(&i915->drm, "Invalid sequence block\n");
+			drm_err(display->drm, "Invalid sequence block\n");
 			return NULL;
 		}
 
@@ -1797,12 +1802,13 @@ find_panel_sequence_block(struct drm_i915_private *i915,
 		index += current_size;
 	}
 
-	drm_err(&i915->drm, "Sequence block detected but no valid configuration\n");
+	drm_err(display->drm,
+		"Sequence block detected but no valid configuration\n");
 
 	return NULL;
 }
 
-static int goto_next_sequence(struct drm_i915_private *i915,
+static int goto_next_sequence(struct intel_display *display,
 			      const u8 *data, int index, int total)
 {
 	u16 len;
@@ -1833,7 +1839,7 @@ static int goto_next_sequence(struct drm_i915_private *i915,
 			len = *(data + index + 6) + 7;
 			break;
 		default:
-			drm_err(&i915->drm, "Unknown operation byte\n");
+			drm_err(display->drm, "Unknown operation byte\n");
 			return 0;
 		}
 	}
@@ -1841,7 +1847,7 @@ static int goto_next_sequence(struct drm_i915_private *i915,
 	return 0;
 }
 
-static int goto_next_sequence_v3(struct drm_i915_private *i915,
+static int goto_next_sequence_v3(struct intel_display *display,
 				 const u8 *data, int index, int total)
 {
 	int seq_end;
@@ -1853,7 +1859,7 @@ static int goto_next_sequence_v3(struct drm_i915_private *i915,
 	 * checking on the structure.
 	 */
 	if (total < 5) {
-		drm_err(&i915->drm, "Too small sequence size\n");
+		drm_err(display->drm, "Too small sequence size\n");
 		return 0;
 	}
 
@@ -1870,7 +1876,7 @@ static int goto_next_sequence_v3(struct drm_i915_private *i915,
 
 	seq_end = index + size_of_sequence;
 	if (seq_end > total) {
-		drm_err(&i915->drm, "Invalid sequence size\n");
+		drm_err(display->drm, "Invalid sequence size\n");
 		return 0;
 	}
 
@@ -1880,7 +1886,8 @@ static int goto_next_sequence_v3(struct drm_i915_private *i915,
 
 		if (operation_byte == MIPI_SEQ_ELEM_END) {
 			if (index != seq_end) {
-				drm_err(&i915->drm, "Invalid element structure\n");
+				drm_err(display->drm,
+					"Invalid element structure\n");
 				return 0;
 			}
 			return index;
@@ -1902,7 +1909,7 @@ static int goto_next_sequence_v3(struct drm_i915_private *i915,
 		case MIPI_SEQ_ELEM_PMIC:
 			break;
 		default:
-			drm_err(&i915->drm, "Unknown operation byte %u\n",
+			drm_err(display->drm, "Unknown operation byte %u\n",
 				operation_byte);
 			break;
 		}
@@ -1915,13 +1922,13 @@ static int goto_next_sequence_v3(struct drm_i915_private *i915,
  * Get len of pre-fixed deassert fragment from a v1 init OTP sequence,
  * skip all delay + gpio operands and stop at the first DSI packet op.
  */
-static int get_init_otp_deassert_fragment_len(struct drm_i915_private *i915,
+static int get_init_otp_deassert_fragment_len(struct intel_display *display,
 					      struct intel_panel *panel)
 {
 	const u8 *data = panel->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP];
 	int index, len;
 
-	if (drm_WARN_ON(&i915->drm,
+	if (drm_WARN_ON(display->drm,
 			!data || panel->vbt.dsi.seq_version != 1))
 		return 0;
 
@@ -1950,7 +1957,7 @@ static int get_init_otp_deassert_fragment_len(struct drm_i915_private *i915,
  * these devices we split the init OTP sequence into a deassert sequence and
  * the actual init OTP part.
  */
-static void vlv_fixup_mipi_sequences(struct drm_i915_private *i915,
+static void vlv_fixup_mipi_sequences(struct intel_display *display,
 				     struct intel_panel *panel)
 {
 	u8 *init_otp;
@@ -1968,11 +1975,11 @@ static void vlv_fixup_mipi_sequences(struct drm_i915_private *i915,
 		return;
 
 	/* The deassert-sequence ends at the first DSI packet */
-	len = get_init_otp_deassert_fragment_len(i915, panel);
+	len = get_init_otp_deassert_fragment_len(display, panel);
 	if (!len)
 		return;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "Using init OTP fragment to deassert reset\n");
 
 	/* Copy the fragment, update seq byte and terminate it */
@@ -2005,29 +2012,32 @@ static void vlv_fixup_mipi_sequences(struct drm_i915_private *i915,
  *       or examine the contents of the sequences to
  *       avoid false positives?
  */
-static void icl_fixup_mipi_sequences(struct drm_i915_private *i915,
+static void icl_fixup_mipi_sequences(struct intel_display *display,
 				     struct intel_panel *panel)
 {
 	if (!panel->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP] &&
 	    panel->vbt.dsi.sequence[MIPI_SEQ_DISPLAY_ON]) {
-		drm_dbg_kms(&i915->drm, "Broken VBT: Swapping INIT_OTP and DISPLAY_ON sequences\n");
+		drm_dbg_kms(display->drm,
+			    "Broken VBT: Swapping INIT_OTP and DISPLAY_ON sequences\n");
 
 		swap(panel->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP],
 		     panel->vbt.dsi.sequence[MIPI_SEQ_DISPLAY_ON]);
 	}
 }
 
-static void fixup_mipi_sequences(struct drm_i915_private *i915,
+static void fixup_mipi_sequences(struct intel_display *display,
 				 struct intel_panel *panel)
 {
-	if (DISPLAY_VER(i915) >= 11)
-		icl_fixup_mipi_sequences(i915, panel);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	if (DISPLAY_VER(display) >= 11)
+		icl_fixup_mipi_sequences(display, panel);
 	else if (IS_VALLEYVIEW(i915))
-		vlv_fixup_mipi_sequences(i915, panel);
+		vlv_fixup_mipi_sequences(display, panel);
 }
 
 static void
-parse_mipi_sequence(struct drm_i915_private *i915,
+parse_mipi_sequence(struct intel_display *display,
 		    struct intel_panel *panel)
 {
 	int panel_type = panel->vbt.panel_type;
@@ -2041,25 +2051,25 @@ parse_mipi_sequence(struct drm_i915_private *i915,
 	if (panel->vbt.dsi.panel_id != MIPI_DSI_GENERIC_PANEL_ID)
 		return;
 
-	sequence = bdb_find_section(i915, BDB_MIPI_SEQUENCE);
+	sequence = bdb_find_section(display, BDB_MIPI_SEQUENCE);
 	if (!sequence) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "No MIPI Sequence found, parsing complete\n");
 		return;
 	}
 
 	/* Fail gracefully for forward incompatible sequence block. */
 	if (sequence->version >= 4) {
-		drm_err(&i915->drm,
+		drm_err(display->drm,
 			"Unable to parse MIPI Sequence Block v%u\n",
 			sequence->version);
 		return;
 	}
 
-	drm_dbg(&i915->drm, "Found MIPI sequence block v%u\n",
+	drm_dbg(display->drm, "Found MIPI sequence block v%u\n",
 		sequence->version);
 
-	seq_data = find_panel_sequence_block(i915, sequence, panel_type, &seq_size);
+	seq_data = find_panel_sequence_block(display, sequence, panel_type, &seq_size);
 	if (!seq_data)
 		return;
 
@@ -2074,24 +2084,24 @@ parse_mipi_sequence(struct drm_i915_private *i915,
 			break;
 
 		if (seq_id >= MIPI_SEQ_MAX) {
-			drm_err(&i915->drm, "Unknown sequence %u\n",
+			drm_err(display->drm, "Unknown sequence %u\n",
 				seq_id);
 			goto err;
 		}
 
 		/* Log about presence of sequences we won't run. */
 		if (seq_id == MIPI_SEQ_TEAR_ON || seq_id == MIPI_SEQ_TEAR_OFF)
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "Unsupported sequence %u\n", seq_id);
 
 		panel->vbt.dsi.sequence[seq_id] = data + index;
 
 		if (sequence->version >= 3)
-			index = goto_next_sequence_v3(i915, data, index, seq_size);
+			index = goto_next_sequence_v3(display, data, index, seq_size);
 		else
-			index = goto_next_sequence(i915, data, index, seq_size);
+			index = goto_next_sequence(display, data, index, seq_size);
 		if (!index) {
-			drm_err(&i915->drm, "Invalid sequence %u\n",
+			drm_err(display->drm, "Invalid sequence %u\n",
 				seq_id);
 			goto err;
 		}
@@ -2101,9 +2111,9 @@ parse_mipi_sequence(struct drm_i915_private *i915,
 	panel->vbt.dsi.size = seq_size;
 	panel->vbt.dsi.seq_version = sequence->version;
 
-	fixup_mipi_sequences(i915, panel);
+	fixup_mipi_sequences(display, panel);
 
-	drm_dbg(&i915->drm, "MIPI related VBT parsing complete\n");
+	drm_dbg(display->drm, "MIPI related VBT parsing complete\n");
 	return;
 
 err:
@@ -2112,47 +2122,47 @@ parse_mipi_sequence(struct drm_i915_private *i915,
 }
 
 static void
-parse_compression_parameters(struct drm_i915_private *i915)
+parse_compression_parameters(struct intel_display *display)
 {
 	const struct bdb_compression_parameters *params;
 	struct intel_bios_encoder_data *devdata;
 	u16 block_size;
 	int index;
 
-	if (i915->display.vbt.version < 198)
+	if (display->vbt.version < 198)
 		return;
 
-	params = bdb_find_section(i915, BDB_COMPRESSION_PARAMETERS);
+	params = bdb_find_section(display, BDB_COMPRESSION_PARAMETERS);
 	if (params) {
 		/* Sanity checks */
 		if (params->entry_size != sizeof(params->data[0])) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "VBT: unsupported compression param entry size\n");
 			return;
 		}
 
 		block_size = get_blocksize(params);
 		if (block_size < sizeof(*params)) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "VBT: expected 16 compression param entries\n");
 			return;
 		}
 	}
 
-	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
+	list_for_each_entry(devdata, &display->vbt.display_devices, node) {
 		const struct child_device_config *child = &devdata->child;
 
 		if (!child->compression_enable)
 			continue;
 
 		if (!params) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "VBT: compression params not available\n");
 			continue;
 		}
 
 		if (child->compression_method_cps) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "VBT: CPS compression not supported\n");
 			continue;
 		}
@@ -2164,12 +2174,12 @@ parse_compression_parameters(struct drm_i915_private *i915)
 	}
 }
 
-static u8 translate_iboost(struct drm_i915_private *i915, u8 val)
+static u8 translate_iboost(struct intel_display *display, u8 val)
 {
 	static const u8 mapping[] = { 1, 3, 7 }; /* See VBT spec */
 
 	if (val >= ARRAY_SIZE(mapping)) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Unsupported I_boost value found in VBT (%d), display may not work properly\n", val);
 		return 0;
 	}
@@ -2226,8 +2236,9 @@ static const u8 adlp_ddc_pin_map[] = {
 	[GMBUS_PIN_12_TC4_ICP] = ADLP_DDC_BUS_PORT_TC4,
 };
 
-static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
+static u8 map_ddc_pin(struct intel_display *display, u8 vbt_pin)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	const u8 *ddc_pin_map;
 	int i, n_entries;
 
@@ -2242,7 +2253,7 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
 	} else if (IS_ROCKETLAKE(i915) && INTEL_PCH_TYPE(i915) == PCH_TGP) {
 		ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
 		n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
-	} else if (HAS_PCH_TGP(i915) && DISPLAY_VER(i915) == 9) {
+	} else if (HAS_PCH_TGP(i915) && DISPLAY_VER(display) == 9) {
 		ddc_pin_map = gen9bc_tgp_ddc_pin_map;
 		n_entries = ARRAY_SIZE(gen9bc_tgp_ddc_pin_map);
 	} else if (INTEL_PCH_TYPE(i915) >= PCH_ICP) {
@@ -2261,7 +2272,7 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
 			return i;
 	}
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "Ignoring alternate pin: VBT claims DDC pin %d, which is not valid for this platform\n",
 		    vbt_pin);
 	return 0;
@@ -2319,9 +2330,10 @@ static enum port __dvo_port_to_port(int n_ports, int n_dvo,
 	return PORT_NONE;
 }
 
-static enum port dvo_port_to_port(struct drm_i915_private *i915,
+static enum port dvo_port_to_port(struct intel_display *display,
 				  u8 dvo_port)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	/*
 	 * Each DDI port can have more than one value on the "DVO Port" field,
 	 * so look for all the possible values for each port.
@@ -2373,7 +2385,7 @@ static enum port dvo_port_to_port(struct drm_i915_private *i915,
 		[PORT_TC4] = { DVO_PORT_HDMII, DVO_PORT_DPI, -1 },
 	};
 
-	if (DISPLAY_VER(i915) >= 13)
+	if (DISPLAY_VER(display) >= 13)
 		return __dvo_port_to_port(ARRAY_SIZE(xelpd_port_mapping),
 					  ARRAY_SIZE(xelpd_port_mapping[0]),
 					  xelpd_port_mapping,
@@ -2396,13 +2408,13 @@ static enum port dvo_port_to_port(struct drm_i915_private *i915,
 }
 
 static enum port
-dsi_dvo_port_to_port(struct drm_i915_private *i915, u8 dvo_port)
+dsi_dvo_port_to_port(struct intel_display *display, u8 dvo_port)
 {
 	switch (dvo_port) {
 	case DVO_PORT_MIPIA:
 		return PORT_A;
 	case DVO_PORT_MIPIC:
-		if (DISPLAY_VER(i915) >= 11)
+		if (DISPLAY_VER(display) >= 11)
 			return PORT_B;
 		else
 			return PORT_C;
@@ -2413,13 +2425,13 @@ dsi_dvo_port_to_port(struct drm_i915_private *i915, u8 dvo_port)
 
 enum port intel_bios_encoder_port(const struct intel_bios_encoder_data *devdata)
 {
-	struct drm_i915_private *i915 = devdata->i915;
+	struct intel_display *display = devdata->display;
 	const struct child_device_config *child = &devdata->child;
 	enum port port;
 
-	port = dvo_port_to_port(i915, child->dvo_port);
-	if (port == PORT_NONE && DISPLAY_VER(i915) >= 11)
-		port = dsi_dvo_port_to_port(i915, child->dvo_port);
+	port = dvo_port_to_port(display, child->dvo_port);
+	if (port == PORT_NONE && DISPLAY_VER(display) >= 11)
+		port = dsi_dvo_port_to_port(display, child->dvo_port);
 
 	return port;
 }
@@ -2464,10 +2476,10 @@ static int parse_bdb_216_dp_max_link_rate(const int vbt_max_link_rate)
 
 int intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *devdata)
 {
-	if (!devdata || devdata->i915->display.vbt.version < 216)
+	if (!devdata || devdata->display->vbt.version < 216)
 		return 0;
 
-	if (devdata->i915->display.vbt.version >= 230)
+	if (devdata->display->vbt.version >= 230)
 		return parse_bdb_230_dp_max_link_rate(devdata->child.dp_max_link_rate);
 	else
 		return parse_bdb_216_dp_max_link_rate(devdata->child.dp_max_link_rate);
@@ -2475,7 +2487,7 @@ int intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *devdata)
 
 int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata)
 {
-	if (!devdata || devdata->i915->display.vbt.version < 244)
+	if (!devdata || devdata->display->vbt.version < 244)
 		return 0;
 
 	return devdata->child.dp_max_lane_count + 1;
@@ -2484,10 +2496,10 @@ int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata)
 static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
 				 enum port port)
 {
-	struct drm_i915_private *i915 = devdata->i915;
+	struct intel_display *display = devdata->display;
 	bool is_hdmi;
 
-	if (port != PORT_A || DISPLAY_VER(i915) >= 12)
+	if (port != PORT_A || DISPLAY_VER(display) >= 12)
 		return;
 
 	if (!intel_bios_encoder_supports_dvi(devdata))
@@ -2495,7 +2507,7 @@ static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
 
 	is_hdmi = intel_bios_encoder_supports_hdmi(devdata);
 
-	drm_dbg_kms(&i915->drm, "VBT claims port A supports DVI%s, ignoring\n",
+	drm_dbg_kms(display->drm, "VBT claims port A supports DVI%s, ignoring\n",
 		    is_hdmi ? "/HDMI" : "");
 
 	devdata->child.device_type &= ~DEVICE_TYPE_TMDS_DVI_SIGNALING;
@@ -2505,7 +2517,8 @@ static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
 static void sanitize_hdmi_level_shift(struct intel_bios_encoder_data *devdata,
 				      enum port port)
 {
-	struct drm_i915_private *i915 = devdata->i915;
+	struct intel_display *display = devdata->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (!intel_bios_encoder_supports_dvi(devdata))
 		return;
@@ -2516,7 +2529,8 @@ static void sanitize_hdmi_level_shift(struct intel_bios_encoder_data *devdata,
 	 * up to 11, whereas the BDW max is 9.
 	 */
 	if (IS_BROADWELL(i915) && devdata->child.hdmi_level_shifter_value > 9) {
-		drm_dbg_kms(&i915->drm, "Bogus port %c VBT HDMI level shift %d, adjusting to %d\n",
+		drm_dbg_kms(display->drm,
+			    "Bogus port %c VBT HDMI level shift %d, adjusting to %d\n",
 			    port_name(port), devdata->child.hdmi_level_shifter_value, 9);
 
 		devdata->child.hdmi_level_shifter_value = 9;
@@ -2564,14 +2578,14 @@ intel_bios_encoder_supports_dsi(const struct intel_bios_encoder_data *devdata)
 bool
 intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata)
 {
-	return devdata && HAS_LSPCON(devdata->i915) && devdata->child.lspcon;
+	return devdata && HAS_LSPCON(devdata->display) && devdata->child.lspcon;
 }
 
 /* This is an index in the HDMI/DVI DDI buffer translation table, or -1 */
 int intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *devdata)
 {
-	if (!devdata || devdata->i915->display.vbt.version < 158 ||
-	    DISPLAY_VER(devdata->i915) >= 14)
+	if (!devdata || devdata->display->vbt.version < 158 ||
+	    DISPLAY_VER(devdata->display) >= 14)
 		return -1;
 
 	return devdata->child.hdmi_level_shifter_value;
@@ -2579,7 +2593,7 @@ int intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *devdata)
 
 int intel_bios_hdmi_max_tmds_clock(const struct intel_bios_encoder_data *devdata)
 {
-	if (!devdata || devdata->i915->display.vbt.version < 204)
+	if (!devdata || devdata->display->vbt.version < 204)
 		return 0;
 
 	switch (devdata->child.hdmi_max_data_rate) {
@@ -2601,8 +2615,9 @@ int intel_bios_hdmi_max_tmds_clock(const struct intel_bios_encoder_data *devdata
 	}
 }
 
-static bool is_port_valid(struct drm_i915_private *i915, enum port port)
+static bool is_port_valid(struct intel_display *display, enum port port)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	/*
 	 * On some ICL SKUs port F is not present, but broken VBTs mark
 	 * the port as present. Only try to initialize port F for the
@@ -2616,7 +2631,7 @@ static bool is_port_valid(struct drm_i915_private *i915, enum port port)
 
 static void print_ddi_port(const struct intel_bios_encoder_data *devdata)
 {
-	struct drm_i915_private *i915 = devdata->i915;
+	struct intel_display *display = devdata->display;
 	const struct child_device_config *child = &devdata->child;
 	bool is_dvi, is_hdmi, is_dp, is_edp, is_dsi, is_crt, supports_typec_usb, supports_tbt;
 	int dp_boost_level, dp_max_link_rate, hdmi_boost_level, hdmi_level_shift, max_tmds_clock;
@@ -2636,7 +2651,7 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata)
 	supports_typec_usb = intel_bios_encoder_supports_typec_usb(devdata);
 	supports_tbt = intel_bios_encoder_supports_tbt(devdata);
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "Port %c VBT info: CRT:%d DVI:%d HDMI:%d DP:%d eDP:%d DSI:%d DP++:%d LSPCON:%d USB-Type-C:%d TBT:%d DSC:%d\n",
 		    port_name(port), is_crt, is_dvi, is_hdmi, is_dp, is_edp, is_dsi,
 		    intel_bios_encoder_supports_dp_dual_mode(devdata),
@@ -2646,33 +2661,33 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata)
 
 	hdmi_level_shift = intel_bios_hdmi_level_shift(devdata);
 	if (hdmi_level_shift >= 0) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Port %c VBT HDMI level shift: %d\n",
 			    port_name(port), hdmi_level_shift);
 	}
 
 	max_tmds_clock = intel_bios_hdmi_max_tmds_clock(devdata);
 	if (max_tmds_clock)
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Port %c VBT HDMI max TMDS clock: %d kHz\n",
 			    port_name(port), max_tmds_clock);
 
 	/* I_boost config for SKL and above */
 	dp_boost_level = intel_bios_dp_boost_level(devdata);
 	if (dp_boost_level)
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Port %c VBT (e)DP boost level: %d\n",
 			    port_name(port), dp_boost_level);
 
 	hdmi_boost_level = intel_bios_hdmi_boost_level(devdata);
 	if (hdmi_boost_level)
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Port %c VBT HDMI boost level: %d\n",
 			    port_name(port), hdmi_boost_level);
 
 	dp_max_link_rate = intel_bios_dp_max_link_rate(devdata);
 	if (dp_max_link_rate)
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Port %c VBT DP max link rate: %d\n",
 			    port_name(port), dp_max_link_rate);
 
@@ -2680,22 +2695,22 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata)
 	 * FIXME need to implement support for VBT
 	 * vswing/preemph tables should this ever trigger.
 	 */
-	drm_WARN(&i915->drm, child->use_vbt_vswing,
+	drm_WARN(display->drm, child->use_vbt_vswing,
 		 "Port %c asks to use VBT vswing/preemph tables\n",
 		 port_name(port));
 }
 
 static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 {
-	struct drm_i915_private *i915 = devdata->i915;
+	struct intel_display *display = devdata->display;
 	enum port port;
 
 	port = intel_bios_encoder_port(devdata);
 	if (port == PORT_NONE)
 		return;
 
-	if (!is_port_valid(i915, port)) {
-		drm_dbg_kms(&i915->drm,
+	if (!is_port_valid(display, port)) {
+		drm_dbg_kms(display->drm,
 			    "VBT reports port %c as supported, but that can't be true: skipping\n",
 			    port_name(port));
 		return;
@@ -2705,22 +2720,24 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 	sanitize_hdmi_level_shift(devdata, port);
 }
 
-static bool has_ddi_port_info(struct drm_i915_private *i915)
+static bool has_ddi_port_info(struct intel_display *display)
 {
-	return DISPLAY_VER(i915) >= 5 || IS_G4X(i915);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	return DISPLAY_VER(display) >= 5 || IS_G4X(i915);
 }
 
-static void parse_ddi_ports(struct drm_i915_private *i915)
+static void parse_ddi_ports(struct intel_display *display)
 {
 	struct intel_bios_encoder_data *devdata;
 
-	if (!has_ddi_port_info(i915))
+	if (!has_ddi_port_info(display))
 		return;
 
-	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node)
+	list_for_each_entry(devdata, &display->vbt.display_devices, node)
 		parse_ddi_port(devdata);
 
-	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node)
+	list_for_each_entry(devdata, &display->vbt.display_devices, node)
 		print_ddi_port(devdata);
 }
 
@@ -2746,27 +2763,27 @@ static int child_device_expected_size(u16 version)
 		return 22;
 }
 
-static bool child_device_size_valid(struct drm_i915_private *i915, int size)
+static bool child_device_size_valid(struct intel_display *display, int size)
 {
 	int expected_size;
 
-	expected_size = child_device_expected_size(i915->display.vbt.version);
+	expected_size = child_device_expected_size(display->vbt.version);
 	if (expected_size < 0) {
 		expected_size = sizeof(struct child_device_config);
-		drm_dbg(&i915->drm,
+		drm_dbg(display->drm,
 			"Expected child device config size for VBT version %u not known; assuming %d\n",
-			i915->display.vbt.version, expected_size);
+			display->vbt.version, expected_size);
 	}
 
 	/* Flag an error for unexpected size, but continue anyway. */
 	if (size != expected_size)
-		drm_err(&i915->drm,
+		drm_err(display->drm,
 			"Unexpected child device config size %d (expected %d for VBT version %u)\n",
-			size, expected_size, i915->display.vbt.version);
+			size, expected_size, display->vbt.version);
 
 	/* The legacy sized child device config is the minimum we need. */
 	if (size < LEGACY_CHILD_DEVICE_CONFIG_SIZE) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Child device config size %d is too small.\n",
 			    size);
 		return false;
@@ -2776,8 +2793,9 @@ static bool child_device_size_valid(struct drm_i915_private *i915, int size)
 }
 
 static void
-parse_general_definitions(struct drm_i915_private *i915)
+parse_general_definitions(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct bdb_general_definitions *defs;
 	struct intel_bios_encoder_data *devdata;
 	const struct child_device_config *child;
@@ -2785,27 +2803,27 @@ parse_general_definitions(struct drm_i915_private *i915)
 	u16 block_size;
 	int bus_pin;
 
-	defs = bdb_find_section(i915, BDB_GENERAL_DEFINITIONS);
+	defs = bdb_find_section(display, BDB_GENERAL_DEFINITIONS);
 	if (!defs) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "No general definition block is found, no devices defined.\n");
 		return;
 	}
 
 	block_size = get_blocksize(defs);
 	if (block_size < sizeof(*defs)) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "General definitions block too small (%u)\n",
 			    block_size);
 		return;
 	}
 
 	bus_pin = defs->crt_ddc_gmbus_pin;
-	drm_dbg_kms(&i915->drm, "crt_ddc_bus_pin: %d\n", bus_pin);
+	drm_dbg_kms(display->drm, "crt_ddc_bus_pin: %d\n", bus_pin);
 	if (intel_gmbus_is_valid_pin(i915, bus_pin))
-		i915->display.vbt.crt_ddc_pin = bus_pin;
+		display->vbt.crt_ddc_pin = bus_pin;
 
-	if (!child_device_size_valid(i915, defs->child_dev_size))
+	if (!child_device_size_valid(display, defs->child_dev_size))
 		return;
 
 	/* get the number of child device */
@@ -2816,7 +2834,7 @@ parse_general_definitions(struct drm_i915_private *i915)
 		if (!child->device_type)
 			continue;
 
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Found VBT child device with type 0x%x\n",
 			    child->device_type);
 
@@ -2824,7 +2842,7 @@ parse_general_definitions(struct drm_i915_private *i915)
 		if (!devdata)
 			break;
 
-		devdata->i915 = i915;
+		devdata->display = display;
 
 		/*
 		 * Copy as much as we know (sizeof) and is available
@@ -2834,37 +2852,39 @@ parse_general_definitions(struct drm_i915_private *i915)
 		memcpy(&devdata->child, child,
 		       min_t(size_t, defs->child_dev_size, sizeof(*child)));
 
-		list_add_tail(&devdata->node, &i915->display.vbt.display_devices);
+		list_add_tail(&devdata->node, &display->vbt.display_devices);
 	}
 
-	if (list_empty(&i915->display.vbt.display_devices))
-		drm_dbg_kms(&i915->drm,
+	if (list_empty(&display->vbt.display_devices))
+		drm_dbg_kms(display->drm,
 			    "no child dev is parsed from VBT\n");
 }
 
 /* Common defaults which may be overridden by VBT. */
 static void
-init_vbt_defaults(struct drm_i915_private *i915)
+init_vbt_defaults(struct intel_display *display)
 {
-	i915->display.vbt.crt_ddc_pin = GMBUS_PIN_VGADDC;
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	display->vbt.crt_ddc_pin = GMBUS_PIN_VGADDC;
 
 	/* general features */
-	i915->display.vbt.int_tv_support = 1;
-	i915->display.vbt.int_crt_support = 1;
+	display->vbt.int_tv_support = 1;
+	display->vbt.int_crt_support = 1;
 
 	/* driver features */
-	i915->display.vbt.int_lvds_support = 1;
+	display->vbt.int_lvds_support = 1;
 
 	/* Default to using SSC */
-	i915->display.vbt.lvds_use_ssc = 1;
+	display->vbt.lvds_use_ssc = 1;
 	/*
 	 * Core/SandyBridge/IvyBridge use alternative (120MHz) reference
 	 * clock for LVDS.
 	 */
-	i915->display.vbt.lvds_ssc_freq = intel_bios_ssc_frequency(i915,
-								   !HAS_PCH_SPLIT(i915));
-	drm_dbg_kms(&i915->drm, "Set default to SSC at %d kHz\n",
-		    i915->display.vbt.lvds_ssc_freq);
+	display->vbt.lvds_ssc_freq = intel_bios_ssc_frequency(display,
+							      !HAS_PCH_SPLIT(i915));
+	drm_dbg_kms(display->drm, "Set default to SSC at %d kHz\n",
+		    display->vbt.lvds_ssc_freq);
 }
 
 /* Common defaults which may be overridden by VBT. */
@@ -2880,12 +2900,13 @@ init_vbt_panel_defaults(struct intel_panel *panel)
 
 /* Defaults to initialize only if there is no VBT. */
 static void
-init_vbt_missing_defaults(struct drm_i915_private *i915)
+init_vbt_missing_defaults(struct intel_display *display)
 {
-	unsigned int ports = DISPLAY_RUNTIME_INFO(i915)->port_mask;
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	unsigned int ports = DISPLAY_RUNTIME_INFO(display)->port_mask;
 	enum port port;
 
-	if (!HAS_DDI(i915) && !IS_CHERRYVIEW(i915))
+	if (!HAS_DDI(display) && !IS_CHERRYVIEW(i915))
 		return;
 
 	for_each_port_masked(port, ports) {
@@ -2905,7 +2926,7 @@ init_vbt_missing_defaults(struct drm_i915_private *i915)
 		if (!devdata)
 			break;
 
-		devdata->i915 = i915;
+		devdata->display = display;
 		child = &devdata->child;
 
 		if (port == PORT_F)
@@ -2924,15 +2945,15 @@ init_vbt_missing_defaults(struct drm_i915_private *i915)
 		if (port == PORT_A)
 			child->device_type |= DEVICE_TYPE_INTERNAL_CONNECTOR;
 
-		list_add_tail(&devdata->node, &i915->display.vbt.display_devices);
+		list_add_tail(&devdata->node, &display->vbt.display_devices);
 
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Generating default VBT child device with type 0x04%x on port %c\n",
 			    child->device_type, port_name(port));
 	}
 
 	/* Bypass some minimum baseline VBT version checks */
-	i915->display.vbt.version = 155;
+	display->vbt.version = 155;
 }
 
 static const struct bdb_header *get_bdb_header(const struct vbt_header *vbt)
@@ -2944,13 +2965,13 @@ static const struct bdb_header *get_bdb_header(const struct vbt_header *vbt)
 
 /**
  * intel_bios_is_valid_vbt - does the given buffer contain a valid VBT
- * @i915:	the device
+ * @display:	display device
  * @buf:	pointer to a buffer to validate
  * @size:	size of the buffer
  *
  * Returns true on valid VBT.
  */
-bool intel_bios_is_valid_vbt(struct drm_i915_private *i915,
+bool intel_bios_is_valid_vbt(struct intel_display *display,
 			     const void *buf, size_t size)
 {
 	const struct vbt_header *vbt = buf;
@@ -2960,17 +2981,18 @@ bool intel_bios_is_valid_vbt(struct drm_i915_private *i915,
 		return false;
 
 	if (sizeof(struct vbt_header) > size) {
-		drm_dbg_kms(&i915->drm, "VBT header incomplete\n");
+		drm_dbg_kms(display->drm, "VBT header incomplete\n");
 		return false;
 	}
 
 	if (memcmp(vbt->signature, "$VBT", 4)) {
-		drm_dbg_kms(&i915->drm, "VBT invalid signature\n");
+		drm_dbg_kms(display->drm, "VBT invalid signature\n");
 		return false;
 	}
 
 	if (vbt->vbt_size > size) {
-		drm_dbg_kms(&i915->drm, "VBT incomplete (vbt_size overflows)\n");
+		drm_dbg_kms(display->drm,
+			    "VBT incomplete (vbt_size overflows)\n");
 		return false;
 	}
 
@@ -2980,48 +3002,48 @@ bool intel_bios_is_valid_vbt(struct drm_i915_private *i915,
 			      vbt->bdb_offset,
 			      sizeof(struct bdb_header),
 			      size)) {
-		drm_dbg_kms(&i915->drm, "BDB header incomplete\n");
+		drm_dbg_kms(display->drm, "BDB header incomplete\n");
 		return false;
 	}
 
 	bdb = get_bdb_header(vbt);
 	if (range_overflows_t(size_t, vbt->bdb_offset, bdb->bdb_size, size)) {
-		drm_dbg_kms(&i915->drm, "BDB incomplete\n");
+		drm_dbg_kms(display->drm, "BDB incomplete\n");
 		return false;
 	}
 
 	return vbt;
 }
 
-static struct vbt_header *firmware_get_vbt(struct drm_i915_private *i915,
+static struct vbt_header *firmware_get_vbt(struct intel_display *display,
 					   size_t *size)
 {
 	struct vbt_header *vbt = NULL;
 	const struct firmware *fw = NULL;
-	const char *name = i915->display.params.vbt_firmware;
+	const char *name = display->params.vbt_firmware;
 	int ret;
 
 	if (!name || !*name)
 		return NULL;
 
-	ret = request_firmware(&fw, name, i915->drm.dev);
+	ret = request_firmware(&fw, name, display->drm->dev);
 	if (ret) {
-		drm_err(&i915->drm,
+		drm_err(display->drm,
 			"Requesting VBT firmware \"%s\" failed (%d)\n",
 			name, ret);
 		return NULL;
 	}
 
-	if (intel_bios_is_valid_vbt(i915, fw->data, fw->size)) {
+	if (intel_bios_is_valid_vbt(display, fw->data, fw->size)) {
 		vbt = kmemdup(fw->data, fw->size, GFP_KERNEL);
 		if (vbt) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "Found valid VBT firmware \"%s\"\n", name);
 			if (size)
 				*size = fw->size;
 		}
 	} else {
-		drm_dbg_kms(&i915->drm, "Invalid VBT firmware \"%s\"\n",
+		drm_dbg_kms(display->drm, "Invalid VBT firmware \"%s\"\n",
 			    name);
 	}
 
@@ -3037,9 +3059,10 @@ static u32 intel_spi_read(struct intel_uncore *uncore, u32 offset)
 	return intel_uncore_read(uncore, PRIMARY_SPI_TRIGGER);
 }
 
-static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915,
+static struct vbt_header *spi_oprom_get_vbt(struct intel_display *display,
 					    size_t *size)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	u32 count, data, found, store = 0;
 	u32 static_region, oprom_offset;
 	u32 oprom_size = 0x200000;
@@ -3076,10 +3099,10 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915,
 	for (count = 0; count < vbt_size; count += 4)
 		*(vbt + store++) = intel_spi_read(&i915->uncore, found + count);
 
-	if (!intel_bios_is_valid_vbt(i915, vbt, vbt_size))
+	if (!intel_bios_is_valid_vbt(display, vbt, vbt_size))
 		goto err_free_vbt;
 
-	drm_dbg_kms(&i915->drm, "Found valid VBT in SPI flash\n");
+	drm_dbg_kms(display->drm, "Found valid VBT in SPI flash\n");
 
 	if (size)
 		*size = vbt_size;
@@ -3092,10 +3115,10 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915,
 	return NULL;
 }
 
-static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915,
+static struct vbt_header *oprom_get_vbt(struct intel_display *display,
 					size_t *sizep)
 {
-	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 	void __iomem *p = NULL, *oprom;
 	struct vbt_header *vbt;
 	u16 vbt_size;
@@ -3119,13 +3142,13 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915,
 		goto err_unmap_oprom;
 
 	if (sizeof(struct vbt_header) > size) {
-		drm_dbg(&i915->drm, "VBT header incomplete\n");
+		drm_dbg(display->drm, "VBT header incomplete\n");
 		goto err_unmap_oprom;
 	}
 
 	vbt_size = ioread16(p + offsetof(struct vbt_header, vbt_size));
 	if (vbt_size > size) {
-		drm_dbg(&i915->drm,
+		drm_dbg(display->drm,
 			"VBT incomplete (vbt_size overflows)\n");
 		goto err_unmap_oprom;
 	}
@@ -3137,7 +3160,7 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915,
 
 	memcpy_fromio(vbt, p, vbt_size);
 
-	if (!intel_bios_is_valid_vbt(i915, vbt, vbt_size))
+	if (!intel_bios_is_valid_vbt(display, vbt, vbt_size))
 		goto err_free_vbt;
 
 	pci_unmap_rom(pdev, oprom);
@@ -3145,7 +3168,7 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915,
 	if (sizep)
 		*sizep = vbt_size;
 
-	drm_dbg_kms(&i915->drm, "Found valid VBT in PCI ROM\n");
+	drm_dbg_kms(display->drm, "Found valid VBT in PCI ROM\n");
 
 	return vbt;
 
@@ -3157,14 +3180,14 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915,
 	return NULL;
 }
 
-static const struct vbt_header *intel_bios_get_vbt(struct drm_i915_private *i915,
+static const struct vbt_header *intel_bios_get_vbt(struct intel_display *display,
 						   size_t *sizep)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct vbt_header *vbt = NULL;
 	intel_wakeref_t wakeref;
 
-	vbt = firmware_get_vbt(i915, sizep);
+	vbt = firmware_get_vbt(display, sizep);
 
 	if (!vbt)
 		vbt = intel_opregion_get_vbt(display, sizep);
@@ -3175,76 +3198,77 @@ static const struct vbt_header *intel_bios_get_vbt(struct drm_i915_private *i915
 	 */
 	if (!vbt && IS_DGFX(i915))
 		with_intel_runtime_pm(&i915->runtime_pm, wakeref)
-			vbt = spi_oprom_get_vbt(i915, sizep);
+			vbt = spi_oprom_get_vbt(display, sizep);
 
 	if (!vbt)
 		with_intel_runtime_pm(&i915->runtime_pm, wakeref)
-			vbt = oprom_get_vbt(i915, sizep);
+			vbt = oprom_get_vbt(display, sizep);
 
 	return vbt;
 }
 
 /**
  * intel_bios_init - find VBT and initialize settings from the BIOS
- * @i915: i915 device instance
+ * @display: display device instance
  *
  * Parse and initialize settings from the Video BIOS Tables (VBT). If the VBT
  * was not found in ACPI OpRegion, try to find it in PCI ROM first. Also
  * initialize some defaults if the VBT is not present at all.
  */
-void intel_bios_init(struct drm_i915_private *i915)
+void intel_bios_init(struct intel_display *display)
 {
 	const struct vbt_header *vbt;
 	const struct bdb_header *bdb;
 
-	INIT_LIST_HEAD(&i915->display.vbt.display_devices);
-	INIT_LIST_HEAD(&i915->display.vbt.bdb_blocks);
+	INIT_LIST_HEAD(&display->vbt.display_devices);
+	INIT_LIST_HEAD(&display->vbt.bdb_blocks);
 
-	if (!HAS_DISPLAY(i915)) {
-		drm_dbg_kms(&i915->drm,
+	if (!HAS_DISPLAY(display)) {
+		drm_dbg_kms(display->drm,
 			    "Skipping VBT init due to disabled display.\n");
 		return;
 	}
 
-	init_vbt_defaults(i915);
+	init_vbt_defaults(display);
 
-	vbt = intel_bios_get_vbt(i915, NULL);
+	vbt = intel_bios_get_vbt(display, NULL);
 
 	if (!vbt)
 		goto out;
 
 	bdb = get_bdb_header(vbt);
-	i915->display.vbt.version = bdb->version;
+	display->vbt.version = bdb->version;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "VBT signature \"%.*s\", BDB version %d\n",
-		    (int)sizeof(vbt->signature), vbt->signature, i915->display.vbt.version);
+		    (int)sizeof(vbt->signature), vbt->signature,
+		    display->vbt.version);
 
-	init_bdb_blocks(i915, bdb);
+	init_bdb_blocks(display, bdb);
 
 	/* Grab useful general definitions */
-	parse_general_features(i915);
-	parse_general_definitions(i915);
-	parse_driver_features(i915);
+	parse_general_features(display);
+	parse_general_definitions(display);
+	parse_driver_features(display);
 
 	/* Depends on child device list */
-	parse_compression_parameters(i915);
+	parse_compression_parameters(display);
 
 out:
 	if (!vbt) {
-		drm_info(&i915->drm,
+		drm_info(display->drm,
 			 "Failed to find VBIOS tables (VBT)\n");
-		init_vbt_missing_defaults(i915);
+		init_vbt_missing_defaults(display);
 	}
 
 	/* Further processing on pre-parsed or generated child device data */
-	parse_sdvo_device_mapping(i915);
-	parse_ddi_ports(i915);
+	parse_sdvo_device_mapping(display);
+	parse_ddi_ports(display);
 
 	kfree(vbt);
 }
 
-static void intel_bios_init_panel(struct drm_i915_private *i915,
+static void intel_bios_init_panel(struct intel_display *display,
 				  struct intel_panel *panel,
 				  const struct intel_bios_encoder_data *devdata,
 				  const struct drm_edid *drm_edid,
@@ -3252,63 +3276,64 @@ static void intel_bios_init_panel(struct drm_i915_private *i915,
 {
 	/* already have it? */
 	if (panel->vbt.panel_type >= 0) {
-		drm_WARN_ON(&i915->drm, !use_fallback);
+		drm_WARN_ON(display->drm, !use_fallback);
 		return;
 	}
 
-	panel->vbt.panel_type = get_panel_type(i915, devdata,
+	panel->vbt.panel_type = get_panel_type(display, devdata,
 					       drm_edid, use_fallback);
 	if (panel->vbt.panel_type < 0) {
-		drm_WARN_ON(&i915->drm, use_fallback);
+		drm_WARN_ON(display->drm, use_fallback);
 		return;
 	}
 
 	init_vbt_panel_defaults(panel);
 
-	parse_panel_options(i915, panel);
-	parse_generic_dtd(i915, panel);
-	parse_lfp_data(i915, panel);
-	parse_lfp_backlight(i915, panel);
-	parse_sdvo_lvds_data(i915, panel);
-	parse_panel_driver_features(i915, panel);
-	parse_power_conservation_features(i915, panel);
-	parse_edp(i915, panel);
-	parse_psr(i915, panel);
-	parse_mipi_config(i915, panel);
-	parse_mipi_sequence(i915, panel);
+	parse_panel_options(display, panel);
+	parse_generic_dtd(display, panel);
+	parse_lfp_data(display, panel);
+	parse_lfp_backlight(display, panel);
+	parse_sdvo_lvds_data(display, panel);
+	parse_panel_driver_features(display, panel);
+	parse_power_conservation_features(display, panel);
+	parse_edp(display, panel);
+	parse_psr(display, panel);
+	parse_mipi_config(display, panel);
+	parse_mipi_sequence(display, panel);
 }
 
-void intel_bios_init_panel_early(struct drm_i915_private *i915,
+void intel_bios_init_panel_early(struct intel_display *display,
 				 struct intel_panel *panel,
 				 const struct intel_bios_encoder_data *devdata)
 {
-	intel_bios_init_panel(i915, panel, devdata, NULL, false);
+	intel_bios_init_panel(display, panel, devdata, NULL, false);
 }
 
-void intel_bios_init_panel_late(struct drm_i915_private *i915,
+void intel_bios_init_panel_late(struct intel_display *display,
 				struct intel_panel *panel,
 				const struct intel_bios_encoder_data *devdata,
 				const struct drm_edid *drm_edid)
 {
-	intel_bios_init_panel(i915, panel, devdata, drm_edid, true);
+	intel_bios_init_panel(display, panel, devdata, drm_edid, true);
 }
 
 /**
  * intel_bios_driver_remove - Free any resources allocated by intel_bios_init()
- * @i915: i915 device instance
+ * @display: display device instance
  */
-void intel_bios_driver_remove(struct drm_i915_private *i915)
+void intel_bios_driver_remove(struct intel_display *display)
 {
 	struct intel_bios_encoder_data *devdata, *nd;
 	struct bdb_block_entry *entry, *ne;
 
-	list_for_each_entry_safe(devdata, nd, &i915->display.vbt.display_devices, node) {
+	list_for_each_entry_safe(devdata, nd, &display->vbt.display_devices,
+				 node) {
 		list_del(&devdata->node);
 		kfree(devdata->dsc);
 		kfree(devdata);
 	}
 
-	list_for_each_entry_safe(entry, ne, &i915->display.vbt.bdb_blocks, node) {
+	list_for_each_entry_safe(entry, ne, &display->vbt.bdb_blocks, node) {
 		list_del(&entry->node);
 		kfree(entry);
 	}
@@ -3332,22 +3357,22 @@ void intel_bios_fini_panel(struct intel_panel *panel)
 
 /**
  * intel_bios_is_tv_present - is integrated TV present in VBT
- * @i915: i915 device instance
+ * @display: display device instance
  *
  * Return true if TV is present. If no child devices were parsed from VBT,
  * assume TV is present.
  */
-bool intel_bios_is_tv_present(struct drm_i915_private *i915)
+bool intel_bios_is_tv_present(struct intel_display *display)
 {
 	const struct intel_bios_encoder_data *devdata;
 
-	if (!i915->display.vbt.int_tv_support)
+	if (!display->vbt.int_tv_support)
 		return false;
 
-	if (list_empty(&i915->display.vbt.display_devices))
+	if (list_empty(&display->vbt.display_devices))
 		return true;
 
-	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
+	list_for_each_entry(devdata, &display->vbt.display_devices, node) {
 		const struct child_device_config *child = &devdata->child;
 
 		/*
@@ -3373,21 +3398,21 @@ bool intel_bios_is_tv_present(struct drm_i915_private *i915)
 
 /**
  * intel_bios_is_lvds_present - is LVDS present in VBT
- * @i915:	i915 device instance
+ * @display: display device instance
  * @i2c_pin:	i2c pin for LVDS if present
  *
  * Return true if LVDS is present. If no child devices were parsed from VBT,
  * assume LVDS is present.
  */
-bool intel_bios_is_lvds_present(struct drm_i915_private *i915, u8 *i2c_pin)
+bool intel_bios_is_lvds_present(struct intel_display *display, u8 *i2c_pin)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct intel_bios_encoder_data *devdata;
 
-	if (list_empty(&i915->display.vbt.display_devices))
+	if (list_empty(&display->vbt.display_devices))
 		return true;
 
-	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
+	list_for_each_entry(devdata, &display->vbt.display_devices, node) {
 		const struct child_device_config *child = &devdata->child;
 
 		/* If the device type is not LFP, continue.
@@ -3422,25 +3447,25 @@ bool intel_bios_is_lvds_present(struct drm_i915_private *i915, u8 *i2c_pin)
 
 /**
  * intel_bios_is_port_present - is the specified digital port present
- * @i915:	i915 device instance
+ * @display: display device instance
  * @port:	port to check
  *
  * Return true if the device in %port is present.
  */
-bool intel_bios_is_port_present(struct drm_i915_private *i915, enum port port)
+bool intel_bios_is_port_present(struct intel_display *display, enum port port)
 {
 	const struct intel_bios_encoder_data *devdata;
 
-	if (WARN_ON(!has_ddi_port_info(i915)))
+	if (WARN_ON(!has_ddi_port_info(display)))
 		return true;
 
-	if (!is_port_valid(i915, port))
+	if (!is_port_valid(display, port))
 		return false;
 
-	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
+	list_for_each_entry(devdata, &display->vbt.display_devices, node) {
 		const struct child_device_config *child = &devdata->child;
 
-		if (dvo_port_to_port(i915, child->dvo_port) == port)
+		if (dvo_port_to_port(display, child->dvo_port) == port)
 			return true;
 	}
 
@@ -3471,32 +3496,32 @@ bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_encoder_da
 
 /**
  * intel_bios_is_dsi_present - is DSI present in VBT
- * @i915:	i915 device instance
+ * @display: display device instance
  * @port:	port for DSI if present
  *
  * Return true if DSI is present, and return the port in %port.
  */
-bool intel_bios_is_dsi_present(struct drm_i915_private *i915,
+bool intel_bios_is_dsi_present(struct intel_display *display,
 			       enum port *port)
 {
 	const struct intel_bios_encoder_data *devdata;
 
-	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
+	list_for_each_entry(devdata, &display->vbt.display_devices, node) {
 		const struct child_device_config *child = &devdata->child;
 		u8 dvo_port = child->dvo_port;
 
 		if (!(child->device_type & DEVICE_TYPE_MIPI_OUTPUT))
 			continue;
 
-		if (dsi_dvo_port_to_port(i915, dvo_port) == PORT_NONE) {
-			drm_dbg_kms(&i915->drm,
+		if (dsi_dvo_port_to_port(display, dvo_port) == PORT_NONE) {
+			drm_dbg_kms(display->drm,
 				    "VBT has unsupported DSI port %c\n",
 				    port_name(dvo_port - DVO_PORT_MIPIA));
 			continue;
 		}
 
 		if (port)
-			*port = dsi_dvo_port_to_port(i915, dvo_port);
+			*port = dsi_dvo_port_to_port(display, dvo_port);
 		return true;
 	}
 
@@ -3507,7 +3532,7 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
 		     struct dsc_compression_parameters_entry *dsc,
 		     int dsc_max_bpc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
 	int bpc = 8;
 
@@ -3521,7 +3546,7 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
 	else if (dsc->support_8bpc && dsc_max_bpc >= 8)
 		bpc = 8;
 	else
-		drm_dbg_kms(&i915->drm, "VBT: Unsupported BPC %d for DCS\n",
+		drm_dbg_kms(display->drm, "VBT: Unsupported BPC %d for DCS\n",
 			    dsc_max_bpc);
 
 	crtc_state->pipe_bpp = bpc * 3;
@@ -3542,14 +3567,16 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
 	} else {
 		/* FIXME */
 		if (!(dsc->slices_per_line & BIT(0)))
-			drm_dbg_kms(&i915->drm, "VBT: Unsupported DSC slice count for DSI\n");
+			drm_dbg_kms(display->drm,
+				    "VBT: Unsupported DSC slice count for DSI\n");
 
 		crtc_state->dsc.slice_count = 1;
 	}
 
 	if (crtc_state->hw.adjusted_mode.crtc_hdisplay %
 	    crtc_state->dsc.slice_count != 0)
-		drm_dbg_kms(&i915->drm, "VBT: DSC hdisplay %d not divisible by slice count %d\n",
+		drm_dbg_kms(display->drm,
+			    "VBT: DSC hdisplay %d not divisible by slice count %d\n",
 			    crtc_state->hw.adjusted_mode.crtc_hdisplay,
 			    crtc_state->dsc.slice_count);
 
@@ -3573,16 +3600,16 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 			       struct intel_crtc_state *crtc_state,
 			       int dsc_max_bpc)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	const struct intel_bios_encoder_data *devdata;
 
-	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
+	list_for_each_entry(devdata, &display->vbt.display_devices, node) {
 		const struct child_device_config *child = &devdata->child;
 
 		if (!(child->device_type & DEVICE_TYPE_MIPI_OUTPUT))
 			continue;
 
-		if (dsi_dvo_port_to_port(i915, child->dvo_port) == encoder->port) {
+		if (dsi_dvo_port_to_port(display, child->dvo_port) == encoder->port) {
 			if (!devdata->dsc)
 				return false;
 
@@ -3642,12 +3669,13 @@ static const u8 direct_aux_ch_map[] = {
 	[AUX_CH_I] = DP_AUX_I, /* aka AUX_CH_USBC6 */
 };
 
-static enum aux_ch map_aux_ch(struct drm_i915_private *i915, u8 aux_channel)
+static enum aux_ch map_aux_ch(struct intel_display *display, u8 aux_channel)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	const u8 *aux_ch_map;
 	int i, n_entries;
 
-	if (DISPLAY_VER(i915) >= 13) {
+	if (DISPLAY_VER(display) >= 13) {
 		aux_ch_map = adlp_aux_ch_map;
 		n_entries = ARRAY_SIZE(adlp_aux_ch_map);
 	} else if (IS_ALDERLAKE_S(i915)) {
@@ -3666,7 +3694,7 @@ static enum aux_ch map_aux_ch(struct drm_i915_private *i915, u8 aux_channel)
 			return i;
 	}
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "Ignoring alternate AUX CH: VBT claims AUX 0x%x, which is not valid for this platform\n",
 		    aux_channel);
 
@@ -3678,22 +3706,22 @@ enum aux_ch intel_bios_dp_aux_ch(const struct intel_bios_encoder_data *devdata)
 	if (!devdata || !devdata->child.aux_channel)
 		return AUX_CH_NONE;
 
-	return map_aux_ch(devdata->i915, devdata->child.aux_channel);
+	return map_aux_ch(devdata->display, devdata->child.aux_channel);
 }
 
 bool intel_bios_dp_has_shared_aux_ch(const struct intel_bios_encoder_data *devdata)
 {
-	struct drm_i915_private *i915;
+	struct intel_display *display;
 	u8 aux_channel;
 	int count = 0;
 
 	if (!devdata || !devdata->child.aux_channel)
 		return false;
 
-	i915 = devdata->i915;
+	display = devdata->display;
 	aux_channel = devdata->child.aux_channel;
 
-	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
+	list_for_each_entry(devdata, &display->vbt.display_devices, node) {
 		if (intel_bios_encoder_supports_dp(devdata) &&
 		    aux_channel == devdata->child.aux_channel)
 			count++;
@@ -3704,18 +3732,18 @@ bool intel_bios_dp_has_shared_aux_ch(const struct intel_bios_encoder_data *devda
 
 int intel_bios_dp_boost_level(const struct intel_bios_encoder_data *devdata)
 {
-	if (!devdata || devdata->i915->display.vbt.version < 196 || !devdata->child.iboost)
+	if (!devdata || devdata->display->vbt.version < 196 || !devdata->child.iboost)
 		return 0;
 
-	return translate_iboost(devdata->i915, devdata->child.dp_iboost_level);
+	return translate_iboost(devdata->display, devdata->child.dp_iboost_level);
 }
 
 int intel_bios_hdmi_boost_level(const struct intel_bios_encoder_data *devdata)
 {
-	if (!devdata || devdata->i915->display.vbt.version < 196 || !devdata->child.iboost)
+	if (!devdata || devdata->display->vbt.version < 196 || !devdata->child.iboost)
 		return 0;
 
-	return translate_iboost(devdata->i915, devdata->child.hdmi_iboost_level);
+	return translate_iboost(devdata->display, devdata->child.hdmi_iboost_level);
 }
 
 int intel_bios_hdmi_ddc_pin(const struct intel_bios_encoder_data *devdata)
@@ -3723,17 +3751,17 @@ int intel_bios_hdmi_ddc_pin(const struct intel_bios_encoder_data *devdata)
 	if (!devdata || !devdata->child.ddc_pin)
 		return 0;
 
-	return map_ddc_pin(devdata->i915, devdata->child.ddc_pin);
+	return map_ddc_pin(devdata->display, devdata->child.ddc_pin);
 }
 
 bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata)
 {
-	return devdata->i915->display.vbt.version >= 195 && devdata->child.dp_usb_type_c;
+	return devdata->display->vbt.version >= 195 && devdata->child.dp_usb_type_c;
 }
 
 bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devdata)
 {
-	return devdata->i915->display.vbt.version >= 209 && devdata->child.tbt;
+	return devdata->display->vbt.version >= 209 && devdata->child.tbt;
 }
 
 bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_data *devdata)
@@ -3747,11 +3775,11 @@ bool intel_bios_encoder_hpd_invert(const struct intel_bios_encoder_data *devdata
 }
 
 const struct intel_bios_encoder_data *
-intel_bios_encoder_data_lookup(struct drm_i915_private *i915, enum port port)
+intel_bios_encoder_data_lookup(struct intel_display *display, enum port port)
 {
 	struct intel_bios_encoder_data *devdata;
 
-	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
+	list_for_each_entry(devdata, &display->vbt.display_devices, node) {
 		if (intel_bios_encoder_port(devdata) == port)
 			return devdata;
 	}
@@ -3759,23 +3787,23 @@ intel_bios_encoder_data_lookup(struct drm_i915_private *i915, enum port port)
 	return NULL;
 }
 
-void intel_bios_for_each_encoder(struct drm_i915_private *i915,
-				 void (*func)(struct drm_i915_private *i915,
+void intel_bios_for_each_encoder(struct intel_display *display,
+				 void (*func)(struct intel_display *display,
 					      const struct intel_bios_encoder_data *devdata))
 {
 	struct intel_bios_encoder_data *devdata;
 
-	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node)
-		func(i915, devdata);
+	list_for_each_entry(devdata, &display->vbt.display_devices, node)
+		func(display, devdata);
 }
 
 static int intel_bios_vbt_show(struct seq_file *m, void *unused)
 {
-	struct drm_i915_private *i915 = m->private;
+	struct intel_display *display = m->private;
 	const void *vbt;
 	size_t vbt_size;
 
-	vbt = intel_bios_get_vbt(i915, &vbt_size);
+	vbt = intel_bios_get_vbt(display, &vbt_size);
 
 	if (vbt) {
 		seq_write(m, vbt, vbt_size);
@@ -3787,10 +3815,10 @@ static int intel_bios_vbt_show(struct seq_file *m, void *unused)
 
 DEFINE_SHOW_ATTRIBUTE(intel_bios_vbt);
 
-void intel_bios_debugfs_register(struct drm_i915_private *i915)
+void intel_bios_debugfs_register(struct intel_display *display)
 {
-	struct drm_minor *minor = i915->drm.primary;
+	struct drm_minor *minor = display->drm->primary;
 
 	debugfs_create_file("i915_vbt", 0444, minor->debugfs_root,
-			    i915, &intel_bios_vbt_fops);
+			    display, &intel_bios_vbt_fops);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 06a51be4afd8..8b703f6cfe17 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -33,9 +33,9 @@
 #include <linux/types.h>
 
 struct drm_edid;
-struct drm_i915_private;
 struct intel_bios_encoder_data;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_encoder;
 struct intel_panel;
 enum aux_ch;
@@ -232,28 +232,28 @@ struct mipi_pps_data {
 	u16 panel_power_cycle_delay;
 } __packed;
 
-void intel_bios_init(struct drm_i915_private *dev_priv);
-void intel_bios_init_panel_early(struct drm_i915_private *dev_priv,
+void intel_bios_init(struct intel_display *display);
+void intel_bios_init_panel_early(struct intel_display *display,
 				 struct intel_panel *panel,
 				 const struct intel_bios_encoder_data *devdata);
-void intel_bios_init_panel_late(struct drm_i915_private *dev_priv,
+void intel_bios_init_panel_late(struct intel_display *display,
 				struct intel_panel *panel,
 				const struct intel_bios_encoder_data *devdata,
 				const struct drm_edid *drm_edid);
 void intel_bios_fini_panel(struct intel_panel *panel);
-void intel_bios_driver_remove(struct drm_i915_private *dev_priv);
-bool intel_bios_is_valid_vbt(struct drm_i915_private *i915,
+void intel_bios_driver_remove(struct intel_display *display);
+bool intel_bios_is_valid_vbt(struct intel_display *display,
 			     const void *buf, size_t size);
-bool intel_bios_is_tv_present(struct drm_i915_private *dev_priv);
-bool intel_bios_is_lvds_present(struct drm_i915_private *dev_priv, u8 *i2c_pin);
-bool intel_bios_is_port_present(struct drm_i915_private *dev_priv, enum port port);
-bool intel_bios_is_dsi_present(struct drm_i915_private *dev_priv, enum port *port);
+bool intel_bios_is_tv_present(struct intel_display *display);
+bool intel_bios_is_lvds_present(struct intel_display *display, u8 *i2c_pin);
+bool intel_bios_is_port_present(struct intel_display *display, enum port port);
+bool intel_bios_is_dsi_present(struct intel_display *display, enum port *port);
 bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 			       struct intel_crtc_state *crtc_state,
 			       int dsc_max_bpc);
 
 const struct intel_bios_encoder_data *
-intel_bios_encoder_data_lookup(struct drm_i915_private *i915, enum port port);
+intel_bios_encoder_data_lookup(struct intel_display *display, enum port port);
 
 bool intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_hdmi(const struct intel_bios_encoder_data *devdata);
@@ -277,10 +277,10 @@ int intel_bios_hdmi_ddc_pin(const struct intel_bios_encoder_data *devdata);
 int intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *devdata);
 int intel_bios_hdmi_max_tmds_clock(const struct intel_bios_encoder_data *devdata);
 
-void intel_bios_for_each_encoder(struct drm_i915_private *i915,
-				 void (*func)(struct drm_i915_private *i915,
+void intel_bios_for_each_encoder(struct intel_display *display,
+				 void (*func)(struct intel_display *display,
 					      const struct intel_bios_encoder_data *devdata));
 
-void intel_bios_debugfs_register(struct drm_i915_private *i915);
+void intel_bios_debugfs_register(struct intel_display *display);
 
 #endif /* _INTEL_BIOS_H_ */
diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 143d66951631..3252dab56430 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -159,9 +159,11 @@ static bool icl_combo_phy_enabled(struct drm_i915_private *dev_priv,
 
 static bool ehl_vbt_ddi_d_present(struct drm_i915_private *i915)
 {
-	bool ddi_a_present = intel_bios_is_port_present(i915, PORT_A);
-	bool ddi_d_present = intel_bios_is_port_present(i915, PORT_D);
-	bool dsi_present = intel_bios_is_dsi_present(i915, NULL);
+	struct intel_display *display = &i915->display;
+
+	bool ddi_a_present = intel_bios_is_port_present(display, PORT_A);
+	bool ddi_d_present = intel_bios_is_port_present(display, PORT_D);
+	bool dsi_present = intel_bios_is_dsi_present(display, NULL);
 
 	/*
 	 * VBT's 'dvo port' field for child devices references the DDI, not
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 85c3f806c821..926cf3751593 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4854,9 +4854,10 @@ static bool port_in_use(struct drm_i915_private *i915, enum port port)
 	return false;
 }
 
-void intel_ddi_init(struct drm_i915_private *dev_priv,
+void intel_ddi_init(struct intel_display *display,
 		    const struct intel_bios_encoder_data *devdata)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_digital_port *dig_port;
 	struct intel_encoder *encoder;
 	bool init_hdmi, init_dp;
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index 434de7196875..6d85422bdefe 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -15,6 +15,7 @@ struct intel_bios_encoder_data;
 struct intel_connector;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_dp;
 struct intel_dpll_hw_state;
 struct intel_encoder;
@@ -53,7 +54,7 @@ void hsw_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state);
 void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
 			     enum port port);
-void intel_ddi_init(struct drm_i915_private *dev_priv,
+void intel_ddi_init(struct intel_display *display,
 		    const struct intel_bios_encoder_data *devdata);
 bool intel_ddi_get_hw_state(struct intel_encoder *encoder, enum pipe *pipe);
 void intel_ddi_enable_transcoder_func(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3d695688b6b5..9f2a4a854548 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7786,6 +7786,7 @@ bool assert_port_valid(struct drm_i915_private *i915, enum port port)
 
 void intel_setup_outputs(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_encoder *encoder;
 	bool dpd_is_edp = false;
 
@@ -7798,7 +7799,7 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		if (intel_ddi_crt_present(dev_priv))
 			intel_crt_init(dev_priv);
 
-		intel_bios_for_each_encoder(dev_priv, intel_ddi_init);
+		intel_bios_for_each_encoder(display, intel_ddi_init);
 
 		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
 			vlv_dsi_init(dev_priv);
@@ -7860,14 +7861,14 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		 * HDMI ports that the VBT claim are DP or eDP.
 		 */
 		has_edp = intel_dp_is_port_edp(dev_priv, PORT_B);
-		has_port = intel_bios_is_port_present(dev_priv, PORT_B);
+		has_port = intel_bios_is_port_present(display, PORT_B);
 		if (intel_de_read(dev_priv, VLV_DP_B) & DP_DETECTED || has_port)
 			has_edp &= g4x_dp_init(dev_priv, VLV_DP_B, PORT_B);
 		if ((intel_de_read(dev_priv, VLV_HDMIB) & SDVO_DETECTED || has_port) && !has_edp)
 			g4x_hdmi_init(dev_priv, VLV_HDMIB, PORT_B);
 
 		has_edp = intel_dp_is_port_edp(dev_priv, PORT_C);
-		has_port = intel_bios_is_port_present(dev_priv, PORT_C);
+		has_port = intel_bios_is_port_present(display, PORT_C);
 		if (intel_de_read(dev_priv, VLV_DP_C) & DP_DETECTED || has_port)
 			has_edp &= g4x_dp_init(dev_priv, VLV_DP_C, PORT_C);
 		if ((intel_de_read(dev_priv, VLV_HDMIC) & SDVO_DETECTED || has_port) && !has_edp)
@@ -7878,7 +7879,7 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 			 * eDP not supported on port D,
 			 * so no need to worry about it
 			 */
-			has_port = intel_bios_is_port_present(dev_priv, PORT_D);
+			has_port = intel_bios_is_port_present(display, PORT_D);
 			if (intel_de_read(dev_priv, CHV_DP_D) & DP_DETECTED || has_port)
 				g4x_dp_init(dev_priv, CHV_DP_D, PORT_D);
 			if (intel_de_read(dev_priv, CHV_HDMID) & SDVO_DETECTED || has_port)
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 7d3ae826a353..0cf0b4223513 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1065,7 +1065,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 				 ARRAY_SIZE(intel_display_debugfs_list),
 				 minor->debugfs_root, minor);
 
-	intel_bios_debugfs_register(i915);
+	intel_bios_debugfs_register(display);
 	intel_cdclk_debugfs_register(i915);
 	intel_dmc_debugfs_register(i915);
 	intel_fbc_debugfs_register(display);
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index a2666b69834e..328d8b5a6b66 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -217,7 +217,7 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
 			return ret;
 	}
 
-	intel_bios_init(i915);
+	intel_bios_init(display);
 
 	ret = intel_vga_register(i915);
 	if (ret)
@@ -275,7 +275,7 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
 cleanup_vga:
 	intel_vga_unregister(i915);
 cleanup_bios:
-	intel_bios_driver_remove(i915);
+	intel_bios_driver_remove(display);
 
 	return ret;
 }
@@ -615,13 +615,15 @@ void intel_display_driver_remove_noirq(struct drm_i915_private *i915)
 /* part #3: call after gem init */
 void intel_display_driver_remove_nogem(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
+
 	intel_dmc_fini(i915);
 
 	intel_power_domains_driver_remove(i915);
 
 	intel_vga_unregister(i915);
 
-	intel_bios_driver_remove(i915);
+	intel_bios_driver_remove(display);
 }
 
 void intel_display_driver_unregister(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 6cc1cc5e94d5..3f53db68c44c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1690,6 +1690,7 @@ static void icp_irq_postinstall(struct drm_i915_private *i915);
 
 void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
 	u32 de_pipe_masked = gen8_de_pipe_fault_mask(dev_priv) |
@@ -1724,7 +1725,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	} else if (DISPLAY_VER(dev_priv) >= 11) {
 		enum port port;
 
-		if (intel_bios_is_dsi_present(dev_priv, &port))
+		if (intel_bios_is_dsi_present(display, &port))
 			de_port_masked |= DSI0_TE | DSI1_TE;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 49a37b996530..977f149551f6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6503,8 +6503,9 @@ static bool _intel_dp_is_port_edp(struct drm_i915_private *dev_priv,
 
 bool intel_dp_is_port_edp(struct drm_i915_private *i915, enum port port)
 {
+	struct intel_display *display = &i915->display;
 	const struct intel_bios_encoder_data *devdata =
-		intel_bios_encoder_data_lookup(i915, port);
+		intel_bios_encoder_data_lookup(display, port);
 
 	return _intel_dp_is_port_edp(i915, devdata, port);
 }
@@ -6607,6 +6608,7 @@ static void intel_edp_backlight_setup(struct intel_dp *intel_dp,
 static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 				     struct intel_connector *intel_connector)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	struct drm_connector *connector = &intel_connector->base;
 	struct drm_display_mode *fixed_mode;
@@ -6632,7 +6634,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	intel_bios_init_panel_early(dev_priv, &intel_connector->panel,
+	intel_bios_init_panel_early(display, &intel_connector->panel,
 				    encoder->devdata);
 
 	if (!intel_pps_init(intel_dp)) {
@@ -6729,7 +6731,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 		drm_edid = ERR_PTR(-ENOENT);
 	}
 
-	intel_bios_init_panel_late(dev_priv, &intel_connector->panel, encoder->devdata,
+	intel_bios_init_panel_late(display, &intel_connector->panel, encoder->devdata,
 				   IS_ERR(drm_edid) ? NULL : drm_edid);
 
 	intel_panel_add_edid_fixed_modes(intel_connector, true);
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 9f018503d4fd..fb4ed9f7855b 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -838,6 +838,7 @@ static void intel_lvds_add_properties(struct drm_connector *connector)
  */
 void intel_lvds_init(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct intel_lvds_encoder *lvds_encoder;
 	struct intel_connector *connector;
 	const struct drm_edid *drm_edid;
@@ -872,7 +873,7 @@ void intel_lvds_init(struct drm_i915_private *i915)
 	}
 
 	ddc_pin = GMBUS_PIN_PANEL;
-	if (!intel_bios_is_lvds_present(i915, &ddc_pin)) {
+	if (!intel_bios_is_lvds_present(display, &ddc_pin)) {
 		if ((lvds & LVDS_PORT_EN) == 0) {
 			drm_dbg_kms(&i915->drm,
 				    "LVDS is not present in VBT\n");
@@ -966,7 +967,7 @@ void intel_lvds_init(struct drm_i915_private *i915)
 	} else {
 		drm_edid = ERR_PTR(-ENOENT);
 	}
-	intel_bios_init_panel_late(i915, &connector->panel, NULL,
+	intel_bios_init_panel_late(display, &connector->panel, NULL,
 				   IS_ERR(drm_edid) ? NULL : drm_edid);
 
 	/* Try EDID first */
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 7a9d6b2f4100..dfa1d9f30d33 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -870,7 +870,6 @@ static const struct dmi_system_id intel_no_opregion_vbt[] = {
 
 int intel_opregion_setup(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_opregion *opregion;
 	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 	u32 asls, mboxes;
@@ -991,7 +990,7 @@ int intel_opregion_setup(struct intel_display *display)
 
 		vbt = opregion->rvda;
 		vbt_size = opregion->asle->rvds;
-		if (intel_bios_is_valid_vbt(i915, vbt, vbt_size)) {
+		if (intel_bios_is_valid_vbt(display, vbt, vbt_size)) {
 			drm_dbg_kms(display->drm,
 				    "Found valid VBT in ACPI OpRegion (RVDA)\n");
 			opregion->vbt = vbt;
@@ -1016,7 +1015,7 @@ int intel_opregion_setup(struct intel_display *display)
 	vbt_size = (mboxes & MBOX_ASLE_EXT) ?
 		OPREGION_ASLE_EXT_OFFSET : OPREGION_SIZE;
 	vbt_size -= OPREGION_VBT_OFFSET;
-	if (intel_bios_is_valid_vbt(i915, vbt, vbt_size)) {
+	if (intel_bios_is_valid_vbt(display, vbt, vbt_size)) {
 		drm_dbg_kms(display->drm,
 			    "Found valid VBT in ACPI OpRegion (Mailbox #4)\n");
 		opregion->vbt = vbt;
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 4cfa27ca8c22..7cc519b402e9 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2919,6 +2919,7 @@ intel_sdvo_analog_init(struct intel_sdvo *intel_sdvo, u16 type)
 static bool
 intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, u16 type)
 {
+	struct intel_display *display = to_intel_display(&intel_sdvo->base);
 	struct drm_encoder *encoder = &intel_sdvo->base.base;
 	struct drm_i915_private *i915 = to_i915(encoder->dev);
 	struct drm_connector *connector;
@@ -2946,7 +2947,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, u16 type)
 	if (!intel_sdvo_create_enhance_property(intel_sdvo, intel_sdvo_connector))
 		goto err;
 
-	intel_bios_init_panel_late(i915, &intel_connector->panel, NULL, NULL);
+	intel_bios_init_panel_late(display, &intel_connector->panel, NULL, NULL);
 
 	/*
 	 * Fetch modes from VBT. For SDVO prefer the VBT mode since some
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 9df0f1263913..bfc43bda8532 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1930,6 +1930,7 @@ static void intel_tv_add_properties(struct drm_connector *connector)
 void
 intel_tv_init(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct drm_connector *connector;
 	struct intel_tv *intel_tv;
 	struct intel_encoder *intel_encoder;
@@ -1939,7 +1940,7 @@ intel_tv_init(struct drm_i915_private *dev_priv)
 	if ((intel_de_read(dev_priv, TV_CTL) & TV_FUSE_STATE_MASK) == TV_FUSE_STATE_DISABLED)
 		return;
 
-	if (!intel_bios_is_tv_present(dev_priv)) {
+	if (!intel_bios_is_tv_present(display)) {
 		drm_dbg_kms(&dev_priv->drm, "Integrated TV is not present.\n");
 		return;
 	}
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index eae5b5e09aa8..248bab691181 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1880,6 +1880,7 @@ static const struct dmi_system_id vlv_dsi_dmi_quirk_table[] = {
 
 void vlv_dsi_init(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_dsi *intel_dsi;
 	struct intel_encoder *encoder;
 	struct intel_connector *connector;
@@ -1891,7 +1892,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	drm_dbg_kms(&dev_priv->drm, "\n");
 
 	/* There is no detection method for MIPI so rely on VBT */
-	if (!intel_bios_is_dsi_present(dev_priv, &port))
+	if (!intel_bios_is_dsi_present(display, &port))
 		return;
 
 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
@@ -1946,7 +1947,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 
 	intel_dsi->panel_power_off_time = ktime_get_boottime();
 
-	intel_bios_init_panel_late(dev_priv, &connector->panel, NULL, NULL);
+	intel_bios_init_panel_late(display, &connector->panel, NULL, NULL);
 
 	if (connector->panel.vbt.dsi.config->dual_link)
 		intel_dsi->ports = BIT(PORT_A) | BIT(PORT_C);
-- 
2.39.2

