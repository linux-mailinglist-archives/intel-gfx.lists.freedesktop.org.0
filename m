Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08EFA4DCF38
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 21:21:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47BF710E769;
	Thu, 17 Mar 2022 20:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF72C10E769
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 20:21:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647548479; x=1679084479;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=u97CBknBxJA6BUi65aOSV6zeg6dT8GKu5VRdw1qa/Jg=;
 b=Foy8nkFM1/wAQN9eEJ4J1ywgyQKmNnvLyIhTWFvr5cxTlVDsb2OUezZc
 arMsVezLKNxGdkQxoiTEluRw+sK5lMDpqMcURRXBkKbucSGaV5pgY9YQL
 UdHVr97ibFhgjkdZE2gTUfZ0aQieUR6Bq7k2/3Ict6CD9XZwVF613tD36
 NRk+A24wtILzw9TNEwoCxZnAcLgrtW7mw1YO2gg0v/IaNknz7mCNOoDGA
 uSFnKjLAcF8lvnJLM+I3qSvXhlcnu+8TUh2nUTUMoOdJNi3x7hHv+8wfb
 YGkM7uyuYIR3OGH0nl3ri73K6tw9oWUnmfVqYqOVo+EemsLlrrDIs7ZjE g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="317693170"
X-IronPort-AV: E=Sophos;i="5.90,190,1643702400"; d="scan'208";a="317693170"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 13:21:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,190,1643702400"; d="scan'208";a="541526540"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 17 Mar 2022 13:21:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Mar 2022 22:21:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 22:21:16 +0200
Message-Id: <20220317202116.5651-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220317171948.10400-3-ville.syrjala@linux.intel.com>
References: <20220317171948.10400-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/11] drm/i915/bios: Make copies of VBT data
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

v2: Don't do arithmetic between bdb header and copy
    of the LFP data block (Jani)

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 139 ++++++++++++++++++----
 drivers/gpu/drm/i915/i915_drv.h           |   1 +
 2 files changed, 120 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 31fce7c92a28..ffeaf7f6405f 100644
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
@@ -118,6 +138,62 @@ find_section(const void *_bdb, enum bdb_block_id section_id)
 	return NULL;
 }
 
+/*
+ * Offset from the start of BDB to the start of the
+ * block data (just past the block header).
+ */
+static u32 block_offset(const void *bdb, enum bdb_block_id section_id)
+{
+	const void *block;
+
+	block = find_raw_section(bdb, section_id);
+	if (!block)
+		return 0;
+
+	return block - bdb;
+}
+
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
@@ -199,7 +275,7 @@ get_lvds_fp_timing(const struct bdb_header *bdb,
 		   const struct bdb_lvds_lfp_data_ptrs *ptrs,
 		   int index)
 {
-	size_t data_ofs = (const u8 *)data - (const u8 *)bdb;
+	size_t data_ofs = block_offset(bdb, BDB_LVDS_LFP_DATA);
 	u16 data_size = ((const u16 *)data)[-1]; /* stored in header */
 	size_t ofs;
 
@@ -222,7 +298,8 @@ parse_panel_options(struct drm_i915_private *i915,
 	int drrs_mode;
 	int ret;
 
-	lvds_options = find_section(bdb, BDB_LVDS_OPTIONS);
+	lvds_options = find_section(i915, bdb, BDB_LVDS_OPTIONS,
+				    sizeof(*lvds_options));
 	if (!lvds_options)
 		return;
 
@@ -285,11 +362,13 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
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
 
@@ -333,7 +412,8 @@ parse_generic_dtd(struct drm_i915_private *i915,
 	struct drm_display_mode *panel_fixed_mode;
 	int num_dtd;
 
-	generic_dtd = find_section(bdb, BDB_GENERIC_DTD);
+	generic_dtd = find_section(i915, bdb, BDB_GENERIC_DTD,
+				   sizeof(*generic_dtd));
 	if (!generic_dtd)
 		return;
 
@@ -430,7 +510,8 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 	int panel_type = i915->vbt.panel_type;
 	u16 level;
 
-	backlight_data = find_section(bdb, BDB_LVDS_BACKLIGHT);
+	backlight_data = find_section(i915, bdb, BDB_LVDS_BACKLIGHT,
+				      sizeof(*backlight_data));
 	if (!backlight_data)
 		return;
 
@@ -531,14 +612,16 @@ parse_sdvo_panel_data(struct drm_i915_private *i915,
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
 
@@ -575,7 +658,8 @@ parse_general_features(struct drm_i915_private *i915,
 {
 	const struct bdb_general_features *general;
 
-	general = find_section(bdb, BDB_GENERAL_FEATURES);
+	general = find_section(i915, bdb, BDB_GENERAL_FEATURES,
+			       sizeof(*general));
 	if (!general)
 		return;
 
@@ -700,7 +784,8 @@ parse_driver_features(struct drm_i915_private *i915,
 {
 	const struct bdb_driver_features *driver;
 
-	driver = find_section(bdb, BDB_DRIVER_FEATURES);
+	driver = find_section(i915, bdb, BDB_DRIVER_FEATURES,
+			      sizeof(*driver));
 	if (!driver)
 		return;
 
@@ -756,7 +841,8 @@ parse_power_conservation_features(struct drm_i915_private *i915,
 	if (bdb->version < 228)
 		return;
 
-	power = find_section(bdb, BDB_LFP_POWER);
+	power = find_section(i915, bdb, BDB_LFP_POWER,
+			     sizeof(*power));
 	if (!power)
 		return;
 
@@ -783,7 +869,8 @@ parse_edp(struct drm_i915_private *i915, const struct bdb_header *bdb)
 	const struct edp_fast_link_params *edp_link_params;
 	int panel_type = i915->vbt.panel_type;
 
-	edp = find_section(bdb, BDB_EDP);
+	edp = find_section(i915, bdb, BDB_EDP,
+			   sizeof(*edp));
 	if (!edp)
 		return;
 
@@ -900,7 +987,8 @@ parse_psr(struct drm_i915_private *i915, const struct bdb_header *bdb)
 	const struct psr_table *psr_table;
 	int panel_type = i915->vbt.panel_type;
 
-	psr = find_section(bdb, BDB_PSR);
+	psr = find_section(i915, bdb, BDB_PSR,
+			   sizeof(*psr));
 	if (!psr) {
 		drm_dbg_kms(&i915->drm, "No PSR BDB found.\n");
 		return;
@@ -1058,7 +1146,8 @@ parse_mipi_config(struct drm_i915_private *i915,
 	/* Parse #52 for panel index used from panel_type already
 	 * parsed
 	 */
-	start = find_section(bdb, BDB_MIPI_CONFIG);
+	start = find_section(i915, bdb, BDB_MIPI_CONFIG,
+			     sizeof(*start));
 	if (!start) {
 		drm_dbg_kms(&i915->drm, "No MIPI config BDB found");
 		return;
@@ -1368,7 +1457,8 @@ parse_mipi_sequence(struct drm_i915_private *i915,
 	if (i915->vbt.dsi.panel_id != MIPI_DSI_GENERIC_PANEL_ID)
 		return;
 
-	sequence = find_section(bdb, BDB_MIPI_SEQUENCE);
+	sequence = find_section(i915, bdb, BDB_MIPI_SEQUENCE,
+				sizeof(*sequence));
 	if (!sequence) {
 		drm_dbg_kms(&i915->drm,
 			    "No MIPI Sequence found, parsing complete\n");
@@ -1451,7 +1541,8 @@ parse_compression_parameters(struct drm_i915_private *i915,
 	if (bdb->version < 198)
 		return;
 
-	params = find_section(bdb, BDB_COMPRESSION_PARAMETERS);
+	params = find_section(i915, bdb, BDB_COMPRESSION_PARAMETERS,
+			      sizeof(*params));
 	if (params) {
 		/* Sanity checks */
 		if (params->entry_size != sizeof(params->data[0])) {
@@ -2097,7 +2188,8 @@ parse_general_definitions(struct drm_i915_private *i915,
 	u16 block_size;
 	int bus_pin;
 
-	defs = find_section(bdb, BDB_GENERAL_DEFINITIONS);
+	defs = find_section(i915, bdb, BDB_GENERAL_DEFINITIONS,
+			    sizeof(*defs));
 	if (!defs) {
 		drm_dbg_kms(&i915->drm,
 			    "No general definition block is found, no devices defined.\n");
@@ -2466,6 +2558,7 @@ void intel_bios_init(struct drm_i915_private *i915)
 	const struct bdb_header *bdb;
 
 	INIT_LIST_HEAD(&i915->vbt.display_devices);
+	INIT_LIST_HEAD(&i915->vbt.bdb_blocks);
 
 	if (!HAS_DISPLAY(i915)) {
 		drm_dbg_kms(&i915->drm,
@@ -2536,14 +2629,20 @@ void intel_bios_init(struct drm_i915_private *i915)
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

