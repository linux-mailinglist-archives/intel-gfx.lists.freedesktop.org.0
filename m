Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F768BAC5C
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:25:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 757D11127A9;
	Fri,  3 May 2024 12:25:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CUB7WtJq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C296F1127A9
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739104; x=1746275104;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=SFjd0zBnEA5EZ5h7BSilFYw9tmPJ1MXZeJVWfIR5dFQ=;
 b=CUB7WtJqV4w433DElfJneftXwdrba6l2FUaZBs24ruA6eeKbmdkU8IS8
 /Y+9S6xflBhptjHb266xGEsFVF9DnXGXbcFOsLzwigyvF+JM4EOFzc/Vd
 TleHX655gjgPKd3gHsgq/sWni/HiXN9zxKFEOoAkKvAE4x3W/Z0odVuar
 FF8bdZw1cIRaSOBJNRuSI+E51EWtsUv/7L4oytsXkRiS/WZiLnvKs7kfY
 +5TBtPtoZOWbPoPQy6Nu+KHvsS0OwE//Y+B3M3KEM9IeX2x2XgOSYkWqC
 NEM2bYIpMU1vGkRWJNBSJLb78YOnr681JnBMs6aBCXrAo/MQq4FdoRJtY Q==;
X-CSE-ConnectionGUID: N+UlkRfhS7K1fW5bHXQN+Q==
X-CSE-MsgGUID: NSRTND1xRyuU1vENLjeOcA==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372726"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372726"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:25:03 -0700
X-CSE-ConnectionGUID: 9BwsmtupTNmIuY1UMC81Qg==
X-CSE-MsgGUID: HnWa56GaQpWMELXY+nvwcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463585"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:25:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:25:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/35] drm/i915/bios: Get rid of "LVDS" from all LFP data stuff
Date: Fri,  3 May 2024 15:24:18 +0300
Message-ID: <20240503122449.27266-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The LFP data applies to all kinds of display interfaces, so
stop calling things by the "LVDS" name.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 178 +++++++++---------
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  50 ++---
 5 files changed, 117 insertions(+), 117 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 9f933508be1c..cde981c4b8b8 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -174,18 +174,18 @@ static const struct {
 	  .min_size = sizeof(struct bdb_sdvo_panel_dtds), },
 	{ .section_id = BDB_EDP,
 	  .min_size = sizeof(struct bdb_edp), },
-	{ .section_id = BDB_LVDS_OPTIONS,
-	  .min_size = sizeof(struct bdb_lvds_options), },
+	{ .section_id = BDB_LFP_OPTIONS,
+	  .min_size = sizeof(struct bdb_lfp_options), },
 	/*
-	 * BDB_LVDS_LFP_DATA depends on BDB_LVDS_LFP_DATA_PTRS,
+	 * BDB_LFP_DATA depends on BDB_LFP_DATA_PTRS,
 	 * so keep the two ordered.
 	 */
-	{ .section_id = BDB_LVDS_LFP_DATA_PTRS,
-	  .min_size = sizeof(struct bdb_lvds_lfp_data_ptrs), },
-	{ .section_id = BDB_LVDS_LFP_DATA,
+	{ .section_id = BDB_LFP_DATA_PTRS,
+	  .min_size = sizeof(struct bdb_lfp_data_ptrs), },
+	{ .section_id = BDB_LFP_DATA,
 	  .min_size = 0, /* special case */ },
-	{ .section_id = BDB_LVDS_BACKLIGHT,
-	  .min_size = sizeof(struct bdb_lfp_backlight_data), },
+	{ .section_id = BDB_LFP_BACKLIGHT,
+	  .min_size = sizeof(struct bdb_lfp_backlight), },
 	{ .section_id = BDB_LFP_POWER,
 	  .min_size = sizeof(struct bdb_lfp_power), },
 	{ .section_id = BDB_MIPI_CONFIG,
@@ -200,30 +200,30 @@ static const struct {
 
 static size_t lfp_data_min_size(struct drm_i915_private *i915)
 {
-	const struct bdb_lvds_lfp_data_ptrs *ptrs;
+	const struct bdb_lfp_data_ptrs *ptrs;
 	size_t size;
 
-	ptrs = bdb_find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
+	ptrs = bdb_find_section(i915, BDB_LFP_DATA_PTRS);
 	if (!ptrs)
 		return 0;
 
-	size = sizeof(struct bdb_lvds_lfp_data);
+	size = sizeof(struct bdb_lfp_data);
 	if (ptrs->panel_name.table_size)
 		size = max(size, ptrs->panel_name.offset +
-			   sizeof(struct bdb_lvds_lfp_data_tail));
+			   sizeof(struct bdb_lfp_data_tail));
 
 	return size;
 }
 
 static bool validate_lfp_data_ptrs(const void *bdb,
-				   const struct bdb_lvds_lfp_data_ptrs *ptrs)
+				   const struct bdb_lfp_data_ptrs *ptrs)
 {
 	int fp_timing_size, dvo_timing_size, panel_pnp_id_size, panel_name_size;
 	int data_block_size, lfp_data_size;
 	const void *data_block;
 	int i;
 
-	data_block = find_raw_section(bdb, BDB_LVDS_LFP_DATA);
+	data_block = find_raw_section(bdb, BDB_LFP_DATA);
 	if (!data_block)
 		return false;
 
@@ -232,7 +232,7 @@ static bool validate_lfp_data_ptrs(const void *bdb,
 		return false;
 
 	/* always 3 indicating the presence of fp_timing+dvo_timing+panel_pnp_id */
-	if (ptrs->lvds_entries != 3)
+	if (ptrs->num_entries != 3)
 		return false;
 
 	fp_timing_size = ptrs->ptr[0].fp_timing.table_size;
@@ -311,11 +311,11 @@ static bool validate_lfp_data_ptrs(const void *bdb,
 /* make the data table offsets relative to the data block */
 static bool fixup_lfp_data_ptrs(const void *bdb, void *ptrs_block)
 {
-	struct bdb_lvds_lfp_data_ptrs *ptrs = ptrs_block;
+	struct bdb_lfp_data_ptrs *ptrs = ptrs_block;
 	u32 offset;
 	int i;
 
-	offset = raw_block_offset(bdb, BDB_LVDS_LFP_DATA);
+	offset = raw_block_offset(bdb, BDB_LFP_DATA);
 
 	for (i = 0; i < 16; i++) {
 		if (ptrs->ptr[i].fp_timing.offset < offset ||
@@ -338,7 +338,7 @@ static bool fixup_lfp_data_ptrs(const void *bdb, void *ptrs_block)
 	return validate_lfp_data_ptrs(bdb, ptrs);
 }
 
-static int make_lfp_data_ptr(struct lvds_lfp_data_ptr_table *table,
+static int make_lfp_data_ptr(struct lfp_data_ptr_table *table,
 			     int table_size, int total_size)
 {
 	if (total_size < table_size)
@@ -350,8 +350,8 @@ static int make_lfp_data_ptr(struct lvds_lfp_data_ptr_table *table,
 	return total_size - table_size;
 }
 
-static void next_lfp_data_ptr(struct lvds_lfp_data_ptr_table *next,
-			      const struct lvds_lfp_data_ptr_table *prev,
+static void next_lfp_data_ptr(struct lfp_data_ptr_table *next,
+			      const struct lfp_data_ptr_table *prev,
 			      int size)
 {
 	next->table_size = prev->table_size;
@@ -362,7 +362,7 @@ static void *generate_lfp_data_ptrs(struct drm_i915_private *i915,
 				    const void *bdb)
 {
 	int i, size, table_size, block_size, offset, fp_timing_size;
-	struct bdb_lvds_lfp_data_ptrs *ptrs;
+	struct bdb_lfp_data_ptrs *ptrs;
 	const void *block;
 	void *ptrs_block;
 
@@ -377,7 +377,7 @@ static void *generate_lfp_data_ptrs(struct drm_i915_private *i915,
 
 	fp_timing_size = 38;
 
-	block = find_raw_section(bdb, BDB_LVDS_LFP_DATA);
+	block = find_raw_section(bdb, BDB_LFP_DATA);
 	if (!block)
 		return NULL;
 
@@ -394,7 +394,7 @@ static void *generate_lfp_data_ptrs(struct drm_i915_private *i915,
 	if (!ptrs_block)
 		return NULL;
 
-	*(u8 *)(ptrs_block + 0) = BDB_LVDS_LFP_DATA_PTRS;
+	*(u8 *)(ptrs_block + 0) = BDB_LFP_DATA_PTRS;
 	*(u16 *)(ptrs_block + 1) = sizeof(*ptrs);
 	ptrs = ptrs_block + 3;
 
@@ -408,13 +408,13 @@ static void *generate_lfp_data_ptrs(struct drm_i915_private *i915,
 	size = make_lfp_data_ptr(&ptrs->ptr[0].fp_timing, table_size, size);
 
 	if (ptrs->ptr[0].fp_timing.table_size)
-		ptrs->lvds_entries++;
+		ptrs->num_entries++;
 	if (ptrs->ptr[0].dvo_timing.table_size)
-		ptrs->lvds_entries++;
+		ptrs->num_entries++;
 	if (ptrs->ptr[0].panel_pnp_id.table_size)
-		ptrs->lvds_entries++;
+		ptrs->num_entries++;
 
-	if (size != 0 || ptrs->lvds_entries != 3) {
+	if (size != 0 || ptrs->num_entries != 3) {
 		kfree(ptrs_block);
 		return NULL;
 	}
@@ -461,7 +461,7 @@ init_bdb_block(struct drm_i915_private *i915,
 	block = find_raw_section(bdb, section_id);
 
 	/* Modern VBTs lack the LFP data table pointers block, make one up */
-	if (!block && section_id == BDB_LVDS_LFP_DATA_PTRS) {
+	if (!block && section_id == BDB_LFP_DATA_PTRS) {
 		temp_block = generate_lfp_data_ptrs(i915, bdb);
 		if (temp_block)
 			block = temp_block + 3;
@@ -496,7 +496,7 @@ init_bdb_block(struct drm_i915_private *i915,
 	drm_dbg_kms(&i915->drm, "Found BDB block %d (size %zu, min size %zu)\n",
 		    section_id, block_size, min_size);
 
-	if (section_id == BDB_LVDS_LFP_DATA_PTRS &&
+	if (section_id == BDB_LFP_DATA_PTRS &&
 	    !fixup_lfp_data_ptrs(bdb, entry->data + 3)) {
 		drm_err(&i915->drm, "VBT has malformed LFP data table pointers\n");
 		kfree(entry);
@@ -515,7 +515,7 @@ static void init_bdb_blocks(struct drm_i915_private *i915,
 		enum bdb_block_id section_id = bdb_blocks[i].section_id;
 		size_t min_size = bdb_blocks[i].min_size;
 
-		if (section_id == BDB_LVDS_LFP_DATA)
+		if (section_id == BDB_LFP_DATA)
 			min_size = lfp_data_min_size(i915);
 
 		init_bdb_block(i915, bdb, section_id, min_size);
@@ -580,25 +580,25 @@ fill_detail_timing_data(struct drm_i915_private *i915,
 }
 
 static const struct bdb_edid_dtd *
-get_lvds_dvo_timing(const struct bdb_lvds_lfp_data *data,
-		    const struct bdb_lvds_lfp_data_ptrs *ptrs,
-		    int index)
-{
-	return (const void *)data + ptrs->ptr[index].dvo_timing.offset;
-}
-
-static const struct lvds_fp_timing *
-get_lvds_fp_timing(const struct bdb_lvds_lfp_data *data,
-		   const struct bdb_lvds_lfp_data_ptrs *ptrs,
+get_lfp_dvo_timing(const struct bdb_lfp_data *data,
+		   const struct bdb_lfp_data_ptrs *ptrs,
 		   int index)
+{
+	return (const void *)data + ptrs->ptr[index].dvo_timing.offset;
+}
+
+static const struct fp_timing *
+get_lfp_fp_timing(const struct bdb_lfp_data *data,
+		  const struct bdb_lfp_data_ptrs *ptrs,
+		  int index)
 {
 	return (const void *)data + ptrs->ptr[index].fp_timing.offset;
 }
 
 static const struct drm_edid_product_id *
-get_lvds_pnp_id(const struct bdb_lvds_lfp_data *data,
-		const struct bdb_lvds_lfp_data_ptrs *ptrs,
-		int index)
+get_lfp_pnp_id(const struct bdb_lfp_data *data,
+	       const struct bdb_lfp_data_ptrs *ptrs,
+	       int index)
 {
 	/* These two are supposed to have the same layout in memory. */
 	BUILD_BUG_ON(sizeof(struct bdb_edid_pnp_id) != sizeof(struct drm_edid_product_id));
@@ -606,9 +606,9 @@ get_lvds_pnp_id(const struct bdb_lvds_lfp_data *data,
 	return (const void *)data + ptrs->ptr[index].panel_pnp_id.offset;
 }
 
-static const struct bdb_lvds_lfp_data_tail *
-get_lfp_data_tail(const struct bdb_lvds_lfp_data *data,
-		  const struct bdb_lvds_lfp_data_ptrs *ptrs)
+static const struct bdb_lfp_data_tail *
+get_lfp_data_tail(const struct bdb_lfp_data *data,
+		  const struct bdb_lfp_data_ptrs *ptrs)
 {
 	if (ptrs->panel_name.table_size)
 		return (const void *)data + ptrs->panel_name.offset;
@@ -627,33 +627,33 @@ static int vbt_get_panel_type(struct drm_i915_private *i915,
 			      const struct intel_bios_encoder_data *devdata,
 			      const struct drm_edid *drm_edid, bool use_fallback)
 {
-	const struct bdb_lvds_options *lvds_options;
+	const struct bdb_lfp_options *lfp_options;
 
-	lvds_options = bdb_find_section(i915, BDB_LVDS_OPTIONS);
-	if (!lvds_options)
+	lfp_options = bdb_find_section(i915, BDB_LFP_OPTIONS);
+	if (!lfp_options)
 		return -1;
 
-	if (lvds_options->panel_type > 0xf &&
-	    lvds_options->panel_type != 0xff) {
+	if (lfp_options->panel_type > 0xf &&
+	    lfp_options->panel_type != 0xff) {
 		drm_dbg_kms(&i915->drm, "Invalid VBT panel type 0x%x\n",
-			    lvds_options->panel_type);
+			    lfp_options->panel_type);
 		return -1;
 	}
 
 	if (devdata && devdata->child.handle == DEVICE_HANDLE_LFP2)
-		return lvds_options->panel_type2;
+		return lfp_options->panel_type2;
 
 	drm_WARN_ON(&i915->drm, devdata && devdata->child.handle != DEVICE_HANDLE_LFP1);
 
-	return lvds_options->panel_type;
+	return lfp_options->panel_type;
 }
 
 static int pnpid_get_panel_type(struct drm_i915_private *i915,
 				const struct intel_bios_encoder_data *devdata,
 				const struct drm_edid *drm_edid, bool use_fallback)
 {
-	const struct bdb_lvds_lfp_data *data;
-	const struct bdb_lvds_lfp_data_ptrs *ptrs;
+	const struct bdb_lfp_data *data;
+	const struct bdb_lfp_data_ptrs *ptrs;
 	struct drm_edid_product_id product_id, product_id_nodate;
 	struct drm_printer p;
 	int i, best = -1;
@@ -670,17 +670,17 @@ static int pnpid_get_panel_type(struct drm_i915_private *i915,
 	p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, "EDID");
 	drm_edid_print_product_id(&p, &product_id, true);
 
-	ptrs = bdb_find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
+	ptrs = bdb_find_section(i915, BDB_LFP_DATA_PTRS);
 	if (!ptrs)
 		return -1;
 
-	data = bdb_find_section(i915, BDB_LVDS_LFP_DATA);
+	data = bdb_find_section(i915, BDB_LFP_DATA);
 	if (!data)
 		return -1;
 
 	for (i = 0; i < 16; i++) {
 		const struct drm_edid_product_id *vbt_id =
-			get_lvds_pnp_id(data, ptrs, i);
+			get_lfp_pnp_id(data, ptrs, i);
 
 		/* full match? */
 		if (!memcmp(vbt_id, &product_id, sizeof(*vbt_id)))
@@ -786,25 +786,25 @@ static void
 parse_panel_options(struct drm_i915_private *i915,
 		    struct intel_panel *panel)
 {
-	const struct bdb_lvds_options *lvds_options;
+	const struct bdb_lfp_options *lfp_options;
 	int panel_type = panel->vbt.panel_type;
 	int drrs_mode;
 
-	lvds_options = bdb_find_section(i915, BDB_LVDS_OPTIONS);
-	if (!lvds_options)
+	lfp_options = bdb_find_section(i915, BDB_LFP_OPTIONS);
+	if (!lfp_options)
 		return;
 
-	panel->vbt.lvds_dither = lvds_options->pixel_dither;
+	panel->vbt.lvds_dither = lfp_options->pixel_dither;
 
 	/*
 	 * Empirical evidence indicates the block size can be
 	 * either 4,14,16,24+ bytes. For older VBTs no clear
 	 * relationship between the block size vs. BDB version.
 	 */
-	if (get_blocksize(lvds_options) < 16)
+	if (get_blocksize(lfp_options) < 16)
 		return;
 
-	drrs_mode = panel_bits(lvds_options->dps_panel_type_bits,
+	drrs_mode = panel_bits(lfp_options->dps_panel_type_bits,
 			       panel_type, 2);
 	/*
 	 * VBT has static DRRS = 0 and seamless DRRS = 2.
@@ -832,17 +832,17 @@ parse_panel_options(struct drm_i915_private *i915,
 static void
 parse_lfp_panel_dtd(struct drm_i915_private *i915,
 		    struct intel_panel *panel,
-		    const struct bdb_lvds_lfp_data *lvds_lfp_data,
-		    const struct bdb_lvds_lfp_data_ptrs *lvds_lfp_data_ptrs)
+		    const struct bdb_lfp_data *lfp_data,
+		    const struct bdb_lfp_data_ptrs *lfp_data_ptrs)
 {
 	const struct bdb_edid_dtd *panel_dvo_timing;
-	const struct lvds_fp_timing *fp_timing;
+	const struct fp_timing *fp_timing;
 	struct drm_display_mode *panel_fixed_mode;
 	int panel_type = panel->vbt.panel_type;
 
-	panel_dvo_timing = get_lvds_dvo_timing(lvds_lfp_data,
-					       lvds_lfp_data_ptrs,
-					       panel_type);
+	panel_dvo_timing = get_lfp_dvo_timing(lfp_data,
+					      lfp_data_ptrs,
+					      panel_type);
 
 	panel_fixed_mode = kzalloc(sizeof(*panel_fixed_mode), GFP_KERNEL);
 	if (!panel_fixed_mode)
@@ -850,15 +850,15 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
 
 	fill_detail_timing_data(i915, panel_fixed_mode, panel_dvo_timing);
 
-	panel->vbt.lfp_lvds_vbt_mode = panel_fixed_mode;
+	panel->vbt.lfp_vbt_mode = panel_fixed_mode;
 
 	drm_dbg_kms(&i915->drm,
 		    "Found panel mode in BIOS VBT legacy lfp table: " DRM_MODE_FMT "\n",
 		    DRM_MODE_ARG(panel_fixed_mode));
 
-	fp_timing = get_lvds_fp_timing(lvds_lfp_data,
-				       lvds_lfp_data_ptrs,
-				       panel_type);
+	fp_timing = get_lfp_fp_timing(lfp_data,
+				      lfp_data_ptrs,
+				      panel_type);
 
 	/* check the resolution, just to be sure */
 	if (fp_timing->x_res == panel_fixed_mode->hdisplay &&
@@ -874,25 +874,25 @@ static void
 parse_lfp_data(struct drm_i915_private *i915,
 	       struct intel_panel *panel)
 {
-	const struct bdb_lvds_lfp_data *data;
-	const struct bdb_lvds_lfp_data_tail *tail;
-	const struct bdb_lvds_lfp_data_ptrs *ptrs;
+	const struct bdb_lfp_data *data;
+	const struct bdb_lfp_data_tail *tail;
+	const struct bdb_lfp_data_ptrs *ptrs;
 	const struct drm_edid_product_id *pnp_id;
 	struct drm_printer p;
 	int panel_type = panel->vbt.panel_type;
 
-	ptrs = bdb_find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
+	ptrs = bdb_find_section(i915, BDB_LFP_DATA_PTRS);
 	if (!ptrs)
 		return;
 
-	data = bdb_find_section(i915, BDB_LVDS_LFP_DATA);
+	data = bdb_find_section(i915, BDB_LFP_DATA);
 	if (!data)
 		return;
 
-	if (!panel->vbt.lfp_lvds_vbt_mode)
+	if (!panel->vbt.lfp_vbt_mode)
 		parse_lfp_panel_dtd(i915, panel, data, ptrs);
 
-	pnp_id = get_lvds_pnp_id(data, ptrs, panel_type);
+	pnp_id = get_lfp_pnp_id(data, ptrs, panel_type);
 
 	p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, "Panel");
 	drm_edid_print_product_id(&p, pnp_id, false);
@@ -1001,19 +1001,19 @@ parse_generic_dtd(struct drm_i915_private *i915,
 		    "Found panel mode in BIOS VBT generic dtd table: " DRM_MODE_FMT "\n",
 		    DRM_MODE_ARG(panel_fixed_mode));
 
-	panel->vbt.lfp_lvds_vbt_mode = panel_fixed_mode;
+	panel->vbt.lfp_vbt_mode = panel_fixed_mode;
 }
 
 static void
 parse_lfp_backlight(struct drm_i915_private *i915,
 		    struct intel_panel *panel)
 {
-	const struct bdb_lfp_backlight_data *backlight_data;
+	const struct bdb_lfp_backlight *backlight_data;
 	const struct lfp_backlight_data_entry *entry;
 	int panel_type = panel->vbt.panel_type;
 	u16 level;
 
-	backlight_data = bdb_find_section(i915, BDB_LVDS_BACKLIGHT);
+	backlight_data = bdb_find_section(i915, BDB_LFP_BACKLIGHT);
 	if (!backlight_data)
 		return;
 
@@ -1040,7 +1040,7 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 		size_t exp_size;
 
 		if (i915->display.vbt.version >= 236)
-			exp_size = sizeof(struct bdb_lfp_backlight_data);
+			exp_size = sizeof(struct bdb_lfp_backlight);
 		else if (i915->display.vbt.version >= 234)
 			exp_size = EXP_BDB_LFP_BL_DATA_SIZE_REV_234;
 		else
@@ -1688,7 +1688,7 @@ parse_mipi_config(struct drm_i915_private *i915,
 	panel->vbt.dsi.panel_id = MIPI_DSI_UNDEFINED_PANEL_ID;
 
 	/* Block #40 is already parsed and panel_fixed_mode is
-	 * stored in i915->lfp_lvds_vbt_mode
+	 * stored in i915->lfp_vbt_mode
 	 * resuse this when needed
 	 */
 
@@ -3318,8 +3318,8 @@ void intel_bios_fini_panel(struct intel_panel *panel)
 {
 	kfree(panel->vbt.sdvo_lvds_vbt_mode);
 	panel->vbt.sdvo_lvds_vbt_mode = NULL;
-	kfree(panel->vbt.lfp_lvds_vbt_mode);
-	panel->vbt.lfp_lvds_vbt_mode = NULL;
+	kfree(panel->vbt.lfp_vbt_mode);
+	panel->vbt.lfp_vbt_mode = NULL;
 	kfree(panel->vbt.dsi.data);
 	panel->vbt.dsi.data = NULL;
 	kfree(panel->vbt.dsi.pps);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 00eba3fbcdc6..a06a154d587b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -305,7 +305,7 @@ enum drrs_type {
 };
 
 struct intel_vbt_panel_data {
-	struct drm_display_mode *lfp_lvds_vbt_mode; /* if any */
+	struct drm_display_mode *lfp_vbt_mode; /* if any */
 	struct drm_display_mode *sdvo_lvds_vbt_mode; /* if any */
 
 	/* Feature bits */
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index a5d7fc8418c9..cdc9dadb578d 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -751,7 +751,7 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id)
 	struct intel_connector *connector = intel_dsi->attached_connector;
 	struct mipi_config *mipi_config = connector->panel.vbt.dsi.config;
 	struct mipi_pps_data *pps = connector->panel.vbt.dsi.pps;
-	struct drm_display_mode *mode = connector->panel.vbt.lfp_lvds_vbt_mode;
+	struct drm_display_mode *mode = connector->panel.vbt.lfp_vbt_mode;
 	u16 burst_mode_ratio;
 	enum port port;
 
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 6f4ff6a89c32..71454ddef20f 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -352,7 +352,7 @@ void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector *connector)
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	const struct drm_display_mode *mode;
 
-	mode = connector->panel.vbt.lfp_lvds_vbt_mode;
+	mode = connector->panel.vbt.lfp_vbt_mode;
 	if (!mode)
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 7ad4d31f6437..35c844b569a3 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -165,10 +165,10 @@ enum bdb_block_id {
 	BDB_SDVO_LVDS_POWER_SEQ		= 25,
 	BDB_TV_OPTIONS			= 26,
 	BDB_EDP				= 27,
-	BDB_LVDS_OPTIONS		= 40,
-	BDB_LVDS_LFP_DATA_PTRS		= 41,
-	BDB_LVDS_LFP_DATA		= 42,
-	BDB_LVDS_BACKLIGHT		= 43,
+	BDB_LFP_OPTIONS			= 40,
+	BDB_LFP_DATA_PTRS		= 41,
+	BDB_LFP_DATA			= 42,
+	BDB_LFP_BACKLIGHT		= 43,
 	BDB_LFP_POWER			= 44,
 	BDB_MIPI_CONFIG			= 52,
 	BDB_MIPI_SEQUENCE		= 53,
@@ -769,7 +769,7 @@ struct bdb_edp {
  * Block 40 - LFP Data Block
  */
 
-struct bdb_lvds_options {
+struct bdb_lfp_options {
 	u8 panel_type;
 	u8 panel_type2;						/* 212+ */
 	/* LVDS capabilities, stored in a dword */
@@ -802,22 +802,22 @@ struct bdb_lvds_options {
 /*
  * Block 41 - LFP Data Table Pointers
  */
-struct lvds_lfp_data_ptr_table {
+struct lfp_data_ptr_table {
 	u16 offset; /* offsets are from start of bdb */
 	u8 table_size;
 } __packed;
 
 /* LFP pointer table contains entries to the struct below */
-struct lvds_lfp_data_ptr {
-	struct lvds_lfp_data_ptr_table fp_timing;
-	struct lvds_lfp_data_ptr_table dvo_timing;
-	struct lvds_lfp_data_ptr_table panel_pnp_id;
+struct lfp_data_ptr {
+	struct lfp_data_ptr_table fp_timing;
+	struct lfp_data_ptr_table dvo_timing;
+	struct lfp_data_ptr_table panel_pnp_id;
 } __packed;
 
-struct bdb_lvds_lfp_data_ptrs {
-	u8 lvds_entries;
-	struct lvds_lfp_data_ptr ptr[16];
-	struct lvds_lfp_data_ptr_table panel_name;		/* (156-163?)+ */
+struct bdb_lfp_data_ptrs {
+	u8 num_entries;
+	struct lfp_data_ptr ptr[16];
+	struct lfp_data_ptr_table panel_name;		/* (156-163?)+ */
 } __packed;
 
 /*
@@ -825,7 +825,7 @@ struct bdb_lvds_lfp_data_ptrs {
  */
 
 /* LFP data has 3 blocks per entry */
-struct lvds_fp_timing {
+struct fp_timing {
 	u16 x_res;
 	u16 y_res;
 	u32 lvds_reg;
@@ -846,29 +846,29 @@ struct lvds_fp_timing {
  * the data must be accessed using the data table pointers.
  * Do not use this directly!
  */
-struct lvds_lfp_data_entry {
-	struct lvds_fp_timing fp_timing;
+struct lfp_data_entry {
+	struct fp_timing fp_timing;
 	struct bdb_edid_dtd dvo_timing;
 	struct bdb_edid_pnp_id pnp_id;
 } __packed;
 
-struct bdb_lvds_lfp_data {
-	struct lvds_lfp_data_entry data[16];
+struct bdb_lfp_data {
+	struct lfp_data_entry data[16];
 } __packed;
 
-struct lvds_lfp_black_border {
+struct lfp_black_border {
 	u8 top;		/* 227+ */
 	u8 bottom;	/* 227+ */
 	u8 left;	/* 238+ */
 	u8 right;	/* 238+ */
 } __packed;
 
-struct bdb_lvds_lfp_data_tail {
+struct bdb_lfp_data_tail {
 	struct bdb_edid_product_name panel_name[16];		/* (156-163?)+ */
 	u16 scaling_enable;					/* 187+ */
 	u8 seamless_drrs_min_refresh_rate[16];			/* 188+ */
 	u8 pixel_overlap_count[16];				/* 208+ */
-	struct lvds_lfp_black_border black_border[16];		/* 227+ */
+	struct lfp_black_border black_border[16];		/* 227+ */
 	u16 dual_lfp_port_sync_enable;				/* 231+ */
 	u16 gpu_dithering_for_banding_artifacts;		/* 245+ */
 } __packed;
@@ -902,11 +902,11 @@ struct lfp_brightness_level {
 } __packed;
 
 #define EXP_BDB_LFP_BL_DATA_SIZE_REV_191 \
-	offsetof(struct bdb_lfp_backlight_data, brightness_level)
+	offsetof(struct bdb_lfp_backlight, brightness_level)
 #define EXP_BDB_LFP_BL_DATA_SIZE_REV_234 \
-	offsetof(struct bdb_lfp_backlight_data, brightness_precision_bits)
+	offsetof(struct bdb_lfp_backlight, brightness_precision_bits)
 
-struct bdb_lfp_backlight_data {
+struct bdb_lfp_backlight {
 	u8 entry_size;
 	struct lfp_backlight_data_entry data[16];
 	u8 level[16];							/* 162-233 */
-- 
2.43.2

