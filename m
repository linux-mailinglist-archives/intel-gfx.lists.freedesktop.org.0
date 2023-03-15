Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCCD6BB095
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Mar 2023 13:19:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1602B10E9F1;
	Wed, 15 Mar 2023 12:19:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAB1510EAE6
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Mar 2023 12:19:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678882771; x=1710418771;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gu4zOPIOUQRhph4lqZayhNr33Q66qhOXUH6OzvJElcM=;
 b=ZyzbDPc8L7j1aKrymCFDJfuswC6x3iTgbzMlR5WGk9IkrflETqkJAfxW
 9mIvidCNKd+l4wvozMyQ5xUOMMOYpU9P7dKFg3SCWxxD0aRLVy61nXOQk
 kBbOyyjAKmn1vmnUgR93LqMuAyCiEUQFq0zaEpvsydzuIZFHRoNob36in
 2cW64JmFlk+gEf21A5y55Wr6f6jUKpRJUjbB70M7GTdr9QID/EJDMCVEK
 4m65DeNeHP1GJPhvvx7RvxVGaPa0EBf+ZqVNbqDIQX7j2DP8Qk3RBJlS2
 zdflQUv9Y42npThgels+Gn6iPRkjqfn0OCKC6JAP2ZBQhcGKTIoQeCVkP A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="340048012"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="340048012"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 05:19:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="789776294"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="789776294"
Received: from wujunyox-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.32])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 05:19:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Mar 2023 14:19:24 +0200
Message-Id: <20230315121924.2314693-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/bios: Rename find_section to
 find_bdb_section
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

From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

This prevents a namespace collision on other archs.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 46 +++++++++++------------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index e54febd34ca9..75e69dffc5e9 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -141,8 +141,8 @@ struct bdb_block_entry {
 };
 
 static const void *
-find_section(struct drm_i915_private *i915,
-	     enum bdb_block_id section_id)
+bdb_find_section(struct drm_i915_private *i915,
+		 enum bdb_block_id section_id)
 {
 	struct bdb_block_entry *entry;
 
@@ -201,7 +201,7 @@ static size_t lfp_data_min_size(struct drm_i915_private *i915)
 	const struct bdb_lvds_lfp_data_ptrs *ptrs;
 	size_t size;
 
-	ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
+	ptrs = bdb_find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
 	if (!ptrs)
 		return 0;
 
@@ -630,7 +630,7 @@ static int vbt_get_panel_type(struct drm_i915_private *i915,
 {
 	const struct bdb_lvds_options *lvds_options;
 
-	lvds_options = find_section(i915, BDB_LVDS_OPTIONS);
+	lvds_options = bdb_find_section(i915, BDB_LVDS_OPTIONS);
 	if (!lvds_options)
 		return -1;
 
@@ -671,11 +671,11 @@ static int pnpid_get_panel_type(struct drm_i915_private *i915,
 
 	dump_pnp_id(i915, edid_id, "EDID");
 
-	ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
+	ptrs = bdb_find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
 	if (!ptrs)
 		return -1;
 
-	data = find_section(i915, BDB_LVDS_LFP_DATA);
+	data = bdb_find_section(i915, BDB_LVDS_LFP_DATA);
 	if (!data)
 		return -1;
 
@@ -791,7 +791,7 @@ parse_panel_options(struct drm_i915_private *i915,
 	int panel_type = panel->vbt.panel_type;
 	int drrs_mode;
 
-	lvds_options = find_section(i915, BDB_LVDS_OPTIONS);
+	lvds_options = bdb_find_section(i915, BDB_LVDS_OPTIONS);
 	if (!lvds_options)
 		return;
 
@@ -881,11 +881,11 @@ parse_lfp_data(struct drm_i915_private *i915,
 	const struct lvds_pnp_id *pnp_id;
 	int panel_type = panel->vbt.panel_type;
 
-	ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
+	ptrs = bdb_find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
 	if (!ptrs)
 		return;
 
-	data = find_section(i915, BDB_LVDS_LFP_DATA);
+	data = bdb_find_section(i915, BDB_LVDS_LFP_DATA);
 	if (!data)
 		return;
 
@@ -932,7 +932,7 @@ parse_generic_dtd(struct drm_i915_private *i915,
 	if (i915->display.vbt.version < 229)
 		return;
 
-	generic_dtd = find_section(i915, BDB_GENERIC_DTD);
+	generic_dtd = bdb_find_section(i915, BDB_GENERIC_DTD);
 	if (!generic_dtd)
 		return;
 
@@ -1011,7 +1011,7 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 	int panel_type = panel->vbt.panel_type;
 	u16 level;
 
-	backlight_data = find_section(i915, BDB_LVDS_BACKLIGHT);
+	backlight_data = bdb_find_section(i915, BDB_LVDS_BACKLIGHT);
 	if (!backlight_data)
 		return;
 
@@ -1119,14 +1119,14 @@ parse_sdvo_panel_data(struct drm_i915_private *i915,
 	if (index == -1) {
 		const struct bdb_sdvo_lvds_options *sdvo_lvds_options;
 
-		sdvo_lvds_options = find_section(i915, BDB_SDVO_LVDS_OPTIONS);
+		sdvo_lvds_options = bdb_find_section(i915, BDB_SDVO_LVDS_OPTIONS);
 		if (!sdvo_lvds_options)
 			return;
 
 		index = sdvo_lvds_options->panel_type;
 	}
 
-	dtds = find_section(i915, BDB_SDVO_PANEL_DTDS);
+	dtds = bdb_find_section(i915, BDB_SDVO_PANEL_DTDS);
 	if (!dtds)
 		return;
 
@@ -1162,7 +1162,7 @@ parse_general_features(struct drm_i915_private *i915)
 {
 	const struct bdb_general_features *general;
 
-	general = find_section(i915, BDB_GENERAL_FEATURES);
+	general = bdb_find_section(i915, BDB_GENERAL_FEATURES);
 	if (!general)
 		return;
 
@@ -1285,7 +1285,7 @@ parse_driver_features(struct drm_i915_private *i915)
 {
 	const struct bdb_driver_features *driver;
 
-	driver = find_section(i915, BDB_DRIVER_FEATURES);
+	driver = bdb_find_section(i915, BDB_DRIVER_FEATURES);
 	if (!driver)
 		return;
 
@@ -1322,7 +1322,7 @@ parse_panel_driver_features(struct drm_i915_private *i915,
 {
 	const struct bdb_driver_features *driver;
 
-	driver = find_section(i915, BDB_DRIVER_FEATURES);
+	driver = bdb_find_section(i915, BDB_DRIVER_FEATURES);
 	if (!driver)
 		return;
 
@@ -1362,7 +1362,7 @@ parse_power_conservation_features(struct drm_i915_private *i915,
 	if (i915->display.vbt.version < 228)
 		return;
 
-	power = find_section(i915, BDB_LFP_POWER);
+	power = bdb_find_section(i915, BDB_LFP_POWER);
 	if (!power)
 		return;
 
@@ -1402,7 +1402,7 @@ parse_edp(struct drm_i915_private *i915,
 	const struct edp_fast_link_params *edp_link_params;
 	int panel_type = panel->vbt.panel_type;
 
-	edp = find_section(i915, BDB_EDP);
+	edp = bdb_find_section(i915, BDB_EDP);
 	if (!edp)
 		return;
 
@@ -1532,7 +1532,7 @@ parse_psr(struct drm_i915_private *i915,
 	const struct psr_table *psr_table;
 	int panel_type = panel->vbt.panel_type;
 
-	psr = find_section(i915, BDB_PSR);
+	psr = bdb_find_section(i915, BDB_PSR);
 	if (!psr) {
 		drm_dbg_kms(&i915->drm, "No PSR BDB found.\n");
 		return;
@@ -1693,7 +1693,7 @@ parse_mipi_config(struct drm_i915_private *i915,
 	/* Parse #52 for panel index used from panel_type already
 	 * parsed
 	 */
-	start = find_section(i915, BDB_MIPI_CONFIG);
+	start = bdb_find_section(i915, BDB_MIPI_CONFIG);
 	if (!start) {
 		drm_dbg_kms(&i915->drm, "No MIPI config BDB found");
 		return;
@@ -2005,7 +2005,7 @@ parse_mipi_sequence(struct drm_i915_private *i915,
 	if (panel->vbt.dsi.panel_id != MIPI_DSI_GENERIC_PANEL_ID)
 		return;
 
-	sequence = find_section(i915, BDB_MIPI_SEQUENCE);
+	sequence = bdb_find_section(i915, BDB_MIPI_SEQUENCE);
 	if (!sequence) {
 		drm_dbg_kms(&i915->drm,
 			    "No MIPI Sequence found, parsing complete\n");
@@ -2086,7 +2086,7 @@ parse_compression_parameters(struct drm_i915_private *i915)
 	if (i915->display.vbt.version < 198)
 		return;
 
-	params = find_section(i915, BDB_COMPRESSION_PARAMETERS);
+	params = bdb_find_section(i915, BDB_COMPRESSION_PARAMETERS);
 	if (params) {
 		/* Sanity checks */
 		if (params->entry_size != sizeof(params->data[0])) {
@@ -2792,7 +2792,7 @@ parse_general_definitions(struct drm_i915_private *i915)
 	u16 block_size;
 	int bus_pin;
 
-	defs = find_section(i915, BDB_GENERAL_DEFINITIONS);
+	defs = bdb_find_section(i915, BDB_GENERAL_DEFINITIONS);
 	if (!defs) {
 		drm_dbg_kms(&i915->drm,
 			    "No general definition block is found, no devices defined.\n");
-- 
2.39.2

