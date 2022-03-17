Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2494DCC37
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 18:20:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2F4F10E5FB;
	Thu, 17 Mar 2022 17:19:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78B8210E601
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 17:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647537597; x=1679073597;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=DhEAi+vahQLXoo/VUpkdlqbVpXmUhFlHorBXlr2GpbM=;
 b=MHb3iSecGEzWQ3TafW2GYCCpdzqX0H3Qam0nUoq9RnbN+q4x8fpzdd1Q
 BXqecw9ufram1kNA09UJEJceETCbBCOlL6F6e3pqqUzdftBWAd+Kw8eUq
 KDk2QzxxEffqk5Bu6h6QV0iFDwbOhzjOR1beGcWXPJQaz0SBo/6eeK6PI
 U9Wgdw4/9OoRq44f6exZTkrMw6XlCYCytAUm2C3VUGIf64AoVc8UHSpBg
 xMj2wUcMO+QmLAN1SHh6vnsfWqUPwOqhjRi5gQ6bZN93jMCaPRkz1Zn1o
 xqBYMEI8SqnOT0DQb92b9NC+Jhpqu9dziEIR2lRho4nQXimHna+FvkbSX Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="257113312"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="257113312"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 10:19:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="581369170"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 17 Mar 2022 10:19:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Mar 2022 19:19:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 19:19:39 +0200
Message-Id: <20220317171948.10400-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
References: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/11] drm/i915/bios: Make copies of VBT data
 blocks
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Make a copy of each VB data block with a guaranteed minimum
size. The extra (if any) will just be left zeroed.

This means we don't have to worry about going out of bounds
when accessing any of the structure members. Otherwise that
could easliy happen if we simply get the version check wrong,
or if the VBT is broken/malicious.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 122 ++++++++++++++++++----
 drivers/gpu/drm/i915/i915_drv.h           |   1 +
 2 files changed, 104 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 31fce7c92a28..ff04514eb3b7 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -87,8 +87,28 @@ static u32 get_blocksize(const void *block_data)
 	return _get_blocksize(block_data - 3);
 }
 
+struct bdb_block_entry {
+	struct list_head node;
+	size_t min_size;
+	enum bdb_block_id section_id;
+	u8 data[];
+};
+
+static struct bdb_block_entry *
+find_bdb_block(struct drm_i915_private *i915, enum bdb_block_id section_id)
+{
+	struct bdb_block_entry *entry;
+
+	list_for_each_entry(entry, &i915->vbt.bdb_blocks, node) {
+		if (entry->section_id == section_id)
+			return entry;
+	}
+
+	return NULL;
+}
+
 static const void *
-find_section(const void *_bdb, enum bdb_block_id section_id)
+find_raw_section(const void *_bdb, enum bdb_block_id section_id)
 {
 	const struct bdb_header *bdb = _bdb;
 	const u8 *base = _bdb;
@@ -118,6 +138,47 @@ find_section(const void *_bdb, enum bdb_block_id section_id)
 	return NULL;
 }
 
+static const void *
+find_section(struct drm_i915_private *i915,
+	     const void *bdb, enum bdb_block_id section_id,
+	     size_t min_size)
+{
+	struct bdb_block_entry *entry;
+	const void *block;
+	size_t block_size;
+
+	entry = find_bdb_block(i915, section_id);
+	if (entry) {
+		/* make sure all callers pass in a consistent min_size */
+		if (drm_WARN_ON(&i915->drm, entry->min_size != min_size))
+			return NULL;
+
+		return entry->data + 3;
+	}
+
+	block = find_raw_section(bdb, section_id);
+	if (!block)
+		return NULL;
+
+	block_size = get_blocksize(block);
+
+	entry = kzalloc(struct_size(entry, data, max(min_size, block_size) + 3),
+			GFP_KERNEL);
+	if (!entry)
+		return NULL;
+
+	entry->section_id = section_id;
+	entry->min_size = min_size;
+	memcpy(entry->data, block - 3, block_size + 3);
+
+	drm_dbg_kms(&i915->drm, "Found BDB block %d (size %zu, min size %zu)\n",
+		    section_id, block_size, min_size);
+
+	list_add(&entry->node, &i915->vbt.bdb_blocks);
+
+	return entry->data + 3;
+}
+
 static void
 fill_detail_timing_data(struct drm_display_mode *panel_fixed_mode,
 			const struct lvds_dvo_timing *dvo_timing)
@@ -222,7 +283,8 @@ parse_panel_options(struct drm_i915_private *i915,
 	int drrs_mode;
 	int ret;
 
-	lvds_options = find_section(bdb, BDB_LVDS_OPTIONS);
+	lvds_options = find_section(i915, bdb, BDB_LVDS_OPTIONS,
+				    sizeof(*lvds_options));
 	if (!lvds_options)
 		return;
 
@@ -285,11 +347,13 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
 	struct drm_display_mode *panel_fixed_mode;
 	int panel_type = i915->vbt.panel_type;
 
-	lvds_lfp_data = find_section(bdb, BDB_LVDS_LFP_DATA);
+	lvds_lfp_data = find_section(i915, bdb, BDB_LVDS_LFP_DATA,
+				     sizeof(*lvds_lfp_data));
 	if (!lvds_lfp_data)
 		return;
 
-	lvds_lfp_data_ptrs = find_section(bdb, BDB_LVDS_LFP_DATA_PTRS);
+	lvds_lfp_data_ptrs = find_section(i915, bdb, BDB_LVDS_LFP_DATA_PTRS,
+					  sizeof(*lvds_lfp_data_ptrs));
 	if (!lvds_lfp_data_ptrs)
 		return;
 
@@ -333,7 +397,8 @@ parse_generic_dtd(struct drm_i915_private *i915,
 	struct drm_display_mode *panel_fixed_mode;
 	int num_dtd;
 
-	generic_dtd = find_section(bdb, BDB_GENERIC_DTD);
+	generic_dtd = find_section(i915, bdb, BDB_GENERIC_DTD,
+				   sizeof(*generic_dtd));
 	if (!generic_dtd)
 		return;
 
@@ -430,7 +495,8 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 	int panel_type = i915->vbt.panel_type;
 	u16 level;
 
-	backlight_data = find_section(bdb, BDB_LVDS_BACKLIGHT);
+	backlight_data = find_section(i915, bdb, BDB_LVDS_BACKLIGHT,
+				      sizeof(*backlight_data));
 	if (!backlight_data)
 		return;
 
@@ -531,14 +597,16 @@ parse_sdvo_panel_data(struct drm_i915_private *i915,
 	if (index == -1) {
 		const struct bdb_sdvo_lvds_options *sdvo_lvds_options;
 
-		sdvo_lvds_options = find_section(bdb, BDB_SDVO_LVDS_OPTIONS);
+		sdvo_lvds_options = find_section(i915, bdb, BDB_SDVO_LVDS_OPTIONS,
+						 sizeof(*sdvo_lvds_options));
 		if (!sdvo_lvds_options)
 			return;
 
 		index = sdvo_lvds_options->panel_type;
 	}
 
-	dtds = find_section(bdb, BDB_SDVO_PANEL_DTDS);
+	dtds = find_section(i915, bdb, BDB_SDVO_PANEL_DTDS,
+			    sizeof(*dtds));
 	if (!dtds)
 		return;
 
@@ -575,7 +643,8 @@ parse_general_features(struct drm_i915_private *i915,
 {
 	const struct bdb_general_features *general;
 
-	general = find_section(bdb, BDB_GENERAL_FEATURES);
+	general = find_section(i915, bdb, BDB_GENERAL_FEATURES,
+			       sizeof(*general));
 	if (!general)
 		return;
 
@@ -700,7 +769,8 @@ parse_driver_features(struct drm_i915_private *i915,
 {
 	const struct bdb_driver_features *driver;
 
-	driver = find_section(bdb, BDB_DRIVER_FEATURES);
+	driver = find_section(i915, bdb, BDB_DRIVER_FEATURES,
+			      sizeof(*driver));
 	if (!driver)
 		return;
 
@@ -756,7 +826,8 @@ parse_power_conservation_features(struct drm_i915_private *i915,
 	if (bdb->version < 228)
 		return;
 
-	power = find_section(bdb, BDB_LFP_POWER);
+	power = find_section(i915, bdb, BDB_LFP_POWER,
+			     sizeof(*power));
 	if (!power)
 		return;
 
@@ -783,7 +854,8 @@ parse_edp(struct drm_i915_private *i915, const struct bdb_header *bdb)
 	const struct edp_fast_link_params *edp_link_params;
 	int panel_type = i915->vbt.panel_type;
 
-	edp = find_section(bdb, BDB_EDP);
+	edp = find_section(i915, bdb, BDB_EDP,
+			   sizeof(*edp));
 	if (!edp)
 		return;
 
@@ -900,7 +972,8 @@ parse_psr(struct drm_i915_private *i915, const struct bdb_header *bdb)
 	const struct psr_table *psr_table;
 	int panel_type = i915->vbt.panel_type;
 
-	psr = find_section(bdb, BDB_PSR);
+	psr = find_section(i915, bdb, BDB_PSR,
+			   sizeof(*psr));
 	if (!psr) {
 		drm_dbg_kms(&i915->drm, "No PSR BDB found.\n");
 		return;
@@ -1058,7 +1131,8 @@ parse_mipi_config(struct drm_i915_private *i915,
 	/* Parse #52 for panel index used from panel_type already
 	 * parsed
 	 */
-	start = find_section(bdb, BDB_MIPI_CONFIG);
+	start = find_section(i915, bdb, BDB_MIPI_CONFIG,
+			     sizeof(*start));
 	if (!start) {
 		drm_dbg_kms(&i915->drm, "No MIPI config BDB found");
 		return;
@@ -1368,7 +1442,8 @@ parse_mipi_sequence(struct drm_i915_private *i915,
 	if (i915->vbt.dsi.panel_id != MIPI_DSI_GENERIC_PANEL_ID)
 		return;
 
-	sequence = find_section(bdb, BDB_MIPI_SEQUENCE);
+	sequence = find_section(i915, bdb, BDB_MIPI_SEQUENCE,
+				sizeof(*sequence));
 	if (!sequence) {
 		drm_dbg_kms(&i915->drm,
 			    "No MIPI Sequence found, parsing complete\n");
@@ -1451,7 +1526,8 @@ parse_compression_parameters(struct drm_i915_private *i915,
 	if (bdb->version < 198)
 		return;
 
-	params = find_section(bdb, BDB_COMPRESSION_PARAMETERS);
+	params = find_section(i915, bdb, BDB_COMPRESSION_PARAMETERS,
+			      sizeof(*params));
 	if (params) {
 		/* Sanity checks */
 		if (params->entry_size != sizeof(params->data[0])) {
@@ -2097,7 +2173,8 @@ parse_general_definitions(struct drm_i915_private *i915,
 	u16 block_size;
 	int bus_pin;
 
-	defs = find_section(bdb, BDB_GENERAL_DEFINITIONS);
+	defs = find_section(i915, bdb, BDB_GENERAL_DEFINITIONS,
+			    sizeof(*defs));
 	if (!defs) {
 		drm_dbg_kms(&i915->drm,
 			    "No general definition block is found, no devices defined.\n");
@@ -2466,6 +2543,7 @@ void intel_bios_init(struct drm_i915_private *i915)
 	const struct bdb_header *bdb;
 
 	INIT_LIST_HEAD(&i915->vbt.display_devices);
+	INIT_LIST_HEAD(&i915->vbt.bdb_blocks);
 
 	if (!HAS_DISPLAY(i915)) {
 		drm_dbg_kms(&i915->drm,
@@ -2536,14 +2614,20 @@ void intel_bios_init(struct drm_i915_private *i915)
  */
 void intel_bios_driver_remove(struct drm_i915_private *i915)
 {
-	struct intel_bios_encoder_data *devdata, *n;
+	struct intel_bios_encoder_data *devdata, *nd;
+	struct bdb_block_entry *entry, *ne;
 
-	list_for_each_entry_safe(devdata, n, &i915->vbt.display_devices, node) {
+	list_for_each_entry_safe(devdata, nd, &i915->vbt.display_devices, node) {
 		list_del(&devdata->node);
 		kfree(devdata->dsc);
 		kfree(devdata);
 	}
 
+	list_for_each_entry_safe(entry, ne, &i915->vbt.bdb_blocks, node) {
+		list_del(&entry->node);
+		kfree(entry);
+	}
+
 	kfree(i915->vbt.sdvo_lvds_vbt_mode);
 	i915->vbt.sdvo_lvds_vbt_mode = NULL;
 	kfree(i915->vbt.lfp_lvds_vbt_mode);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a9aceb08fcd1..0f52ce62281e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -382,6 +382,7 @@ struct intel_vbt_data {
 	int crt_ddc_pin;
 
 	struct list_head display_devices;
+	struct list_head bdb_blocks;
 
 	struct intel_bios_encoder_data *ports[I915_MAX_PORTS]; /* Non-NULL if port present. */
 	struct sdvo_device_mapping sdvo_mappings[2];
-- 
2.34.1

