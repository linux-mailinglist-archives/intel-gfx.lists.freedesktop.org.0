Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89ABC8BAC5A
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:25:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 026781123CA;
	Fri,  3 May 2024 12:25:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kb5AWIEV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4A8C10FBFA
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739101; x=1746275101;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hpTbUVf2LOI/Rj8uEF3tW0YBNgueSY0Rm7UnXhSRrBk=;
 b=Kb5AWIEVEM/TRYm0yfqRG6S3PpgY7nFqzPpiyJb7VfRZm7+lI1iZG32+
 NhdvKxgbfQKRxVHdKR6b1QVTqTrJgbCJM2mdiET9Jj2drta5UwU5cIHTS
 2luM2SM0OQaNnXw+XPv3HZGQUONMu0In/9Qs7yS6KxNAWJAzU6NeN1kl6
 iOxARHEbVe8+9LCM6E8F9742Zg8B4kCzO+JZVlLMgdFEU/Ub/q6lD2fY7
 NIYhH0mDbR1qFH3X5LCt+qj8qzO4UxUdBcfj+XTdRdQ0rMWVhDdStx1LQ
 Zwo0amIwAUQ/INE5xC3dkz098+ER+lCLRPobnrFF65zxML0NCAVr1g3UL Q==;
X-CSE-ConnectionGUID: 8uCOkwQ0ROC+J4mIQ+5N/g==
X-CSE-MsgGUID: qB3/TZ5DTjiVQkftjpiitQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372722"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372722"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:25:00 -0700
X-CSE-ConnectionGUID: daHhXJCTQdWYiihlUAMytw==
X-CSE-MsgGUID: mUW4Nt66TN6M+BeR6e40pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463564"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:24:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:24:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/35] drm/i915/bios: Indicate which VBT structures are based
 on EDID
Date: Fri,  3 May 2024 15:24:17 +0300
Message-ID: <20240503122449.27266-4-ville.syrjala@linux.intel.com>
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

VBT reuses a bunch of EDID data structures. Flag those as such
for clarity.

I chose "bdb_edid_" as the namespace for these.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 28 +++---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 95 ++++++++++---------
 2 files changed, 62 insertions(+), 61 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 661842a3c2e6..9f933508be1c 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -242,13 +242,13 @@ static bool validate_lfp_data_ptrs(const void *bdb,
 
 	/* fp_timing has variable size */
 	if (fp_timing_size < 32 ||
-	    dvo_timing_size != sizeof(struct lvds_dvo_timing) ||
-	    panel_pnp_id_size != sizeof(struct lvds_pnp_id))
+	    dvo_timing_size != sizeof(struct bdb_edid_dtd) ||
+	    panel_pnp_id_size != sizeof(struct bdb_edid_pnp_id))
 		return false;
 
 	/* panel_name is not present in old VBTs */
 	if (panel_name_size != 0 &&
-	    panel_name_size != sizeof(struct lvds_lfp_panel_name))
+	    panel_name_size != sizeof(struct bdb_edid_product_name))
 		return false;
 
 	lfp_data_size = ptrs->ptr[1].fp_timing.offset - ptrs->ptr[0].fp_timing.offset;
@@ -385,8 +385,8 @@ static void *generate_lfp_data_ptrs(struct drm_i915_private *i915,
 
 	block_size = get_blocksize(block);
 
-	size = fp_timing_size + sizeof(struct lvds_dvo_timing) +
-		sizeof(struct lvds_pnp_id);
+	size = fp_timing_size + sizeof(struct bdb_edid_dtd) +
+		sizeof(struct bdb_edid_pnp_id);
 	if (size * 16 > block_size)
 		return NULL;
 
@@ -398,10 +398,10 @@ static void *generate_lfp_data_ptrs(struct drm_i915_private *i915,
 	*(u16 *)(ptrs_block + 1) = sizeof(*ptrs);
 	ptrs = ptrs_block + 3;
 
-	table_size = sizeof(struct lvds_pnp_id);
+	table_size = sizeof(struct bdb_edid_pnp_id);
 	size = make_lfp_data_ptr(&ptrs->ptr[0].panel_pnp_id, table_size, size);
 
-	table_size = sizeof(struct lvds_dvo_timing);
+	table_size = sizeof(struct bdb_edid_dtd);
 	size = make_lfp_data_ptr(&ptrs->ptr[0].dvo_timing, table_size, size);
 
 	table_size = fp_timing_size;
@@ -419,15 +419,15 @@ static void *generate_lfp_data_ptrs(struct drm_i915_private *i915,
 		return NULL;
 	}
 
-	size = fp_timing_size + sizeof(struct lvds_dvo_timing) +
-		sizeof(struct lvds_pnp_id);
+	size = fp_timing_size + sizeof(struct bdb_edid_dtd) +
+		sizeof(struct bdb_edid_pnp_id);
 	for (i = 1; i < 16; i++) {
 		next_lfp_data_ptr(&ptrs->ptr[i].fp_timing, &ptrs->ptr[i-1].fp_timing, size);
 		next_lfp_data_ptr(&ptrs->ptr[i].dvo_timing, &ptrs->ptr[i-1].dvo_timing, size);
 		next_lfp_data_ptr(&ptrs->ptr[i].panel_pnp_id, &ptrs->ptr[i-1].panel_pnp_id, size);
 	}
 
-	table_size = sizeof(struct lvds_lfp_panel_name);
+	table_size = sizeof(struct bdb_edid_product_name);
 
 	if (16 * (size + table_size) <= block_size) {
 		ptrs->panel_name.table_size = table_size;
@@ -525,7 +525,7 @@ static void init_bdb_blocks(struct drm_i915_private *i915,
 static void
 fill_detail_timing_data(struct drm_i915_private *i915,
 			struct drm_display_mode *panel_fixed_mode,
-			const struct lvds_dvo_timing *dvo_timing)
+			const struct bdb_edid_dtd *dvo_timing)
 {
 	panel_fixed_mode->hdisplay = (dvo_timing->hactive_hi << 8) |
 		dvo_timing->hactive_lo;
@@ -579,7 +579,7 @@ fill_detail_timing_data(struct drm_i915_private *i915,
 	drm_mode_set_name(panel_fixed_mode);
 }
 
-static const struct lvds_dvo_timing *
+static const struct bdb_edid_dtd *
 get_lvds_dvo_timing(const struct bdb_lvds_lfp_data *data,
 		    const struct bdb_lvds_lfp_data_ptrs *ptrs,
 		    int index)
@@ -601,7 +601,7 @@ get_lvds_pnp_id(const struct bdb_lvds_lfp_data *data,
 		int index)
 {
 	/* These two are supposed to have the same layout in memory. */
-	BUILD_BUG_ON(sizeof(struct lvds_pnp_id) != sizeof(struct drm_edid_product_id));
+	BUILD_BUG_ON(sizeof(struct bdb_edid_pnp_id) != sizeof(struct drm_edid_product_id));
 
 	return (const void *)data + ptrs->ptr[index].panel_pnp_id.offset;
 }
@@ -835,7 +835,7 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
 		    const struct bdb_lvds_lfp_data *lvds_lfp_data,
 		    const struct bdb_lvds_lfp_data_ptrs *lvds_lfp_data_ptrs)
 {
-	const struct lvds_dvo_timing *panel_dvo_timing;
+	const struct bdb_edid_dtd *panel_dvo_timing;
 	const struct lvds_fp_timing *fp_timing;
 	struct drm_display_mode *panel_fixed_mode;
 	int panel_type = panel->vbt.panel_type;
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index eebb91f4d88b..7ad4d31f6437 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -39,6 +39,50 @@
 
 #include "intel_bios.h"
 
+/* EDID derived structures */
+struct bdb_edid_pnp_id {
+	u16 mfg_name;
+	u16 product_code;
+	u32 serial;
+	u8 mfg_week;
+	u8 mfg_year;
+} __packed;
+
+struct bdb_edid_product_name {
+	char name[13];
+} __packed;
+
+struct bdb_edid_dtd {
+	u16 clock;		/**< In 10khz */
+	u8 hactive_lo;
+	u8 hblank_lo;
+	u8 hblank_hi:4;
+	u8 hactive_hi:4;
+	u8 vactive_lo;
+	u8 vblank_lo;
+	u8 vblank_hi:4;
+	u8 vactive_hi:4;
+	u8 hsync_off_lo;
+	u8 hsync_pulse_width_lo;
+	u8 vsync_pulse_width_lo:4;
+	u8 vsync_off_lo:4;
+	u8 vsync_pulse_width_hi:2;
+	u8 vsync_off_hi:2;
+	u8 hsync_pulse_width_hi:2;
+	u8 hsync_off_hi:2;
+	u8 himage_lo;
+	u8 vimage_lo;
+	u8 vimage_hi:4;
+	u8 himage_hi:4;
+	u8 h_border;
+	u8 v_border;
+	u8 rsvd1:3;
+	u8 digital:2;
+	u8 vsync_positive:1;
+	u8 hsync_positive:1;
+	u8 non_interlaced:1;
+} __packed;
+
 /**
  * struct vbt_header - VBT Header structure
  * @signature:		VBT signature, always starts with "$VBT"
@@ -645,39 +689,8 @@ struct bdb_sdvo_lvds_options {
  * Block 23 - SDVO LVDS Panel DTDs
  */
 
-struct lvds_dvo_timing {
-	u16 clock;		/**< In 10khz */
-	u8 hactive_lo;
-	u8 hblank_lo;
-	u8 hblank_hi:4;
-	u8 hactive_hi:4;
-	u8 vactive_lo;
-	u8 vblank_lo;
-	u8 vblank_hi:4;
-	u8 vactive_hi:4;
-	u8 hsync_off_lo;
-	u8 hsync_pulse_width_lo;
-	u8 vsync_pulse_width_lo:4;
-	u8 vsync_off_lo:4;
-	u8 vsync_pulse_width_hi:2;
-	u8 vsync_off_hi:2;
-	u8 hsync_pulse_width_hi:2;
-	u8 hsync_off_hi:2;
-	u8 himage_lo;
-	u8 vimage_lo;
-	u8 vimage_hi:4;
-	u8 himage_hi:4;
-	u8 h_border;
-	u8 v_border;
-	u8 rsvd1:3;
-	u8 digital:2;
-	u8 vsync_positive:1;
-	u8 hsync_positive:1;
-	u8 non_interlaced:1;
-} __packed;
-
 struct bdb_sdvo_panel_dtds {
-	struct lvds_dvo_timing dtds[4];
+	struct bdb_edid_dtd dtds[4];
 } __packed;
 
 /*
@@ -828,14 +841,6 @@ struct lvds_fp_timing {
 	u16 terminator;
 } __packed;
 
-struct lvds_pnp_id {
-	u16 mfg_name;
-	u16 product_code;
-	u32 serial;
-	u8 mfg_week;
-	u8 mfg_year;
-} __packed;
-
 /*
  * For reference only. fp_timing has variable size so
  * the data must be accessed using the data table pointers.
@@ -843,18 +848,14 @@ struct lvds_pnp_id {
  */
 struct lvds_lfp_data_entry {
 	struct lvds_fp_timing fp_timing;
-	struct lvds_dvo_timing dvo_timing;
-	struct lvds_pnp_id pnp_id;
+	struct bdb_edid_dtd dvo_timing;
+	struct bdb_edid_pnp_id pnp_id;
 } __packed;
 
 struct bdb_lvds_lfp_data {
 	struct lvds_lfp_data_entry data[16];
 } __packed;
 
-struct lvds_lfp_panel_name {
-	u8 name[13];
-} __packed;
-
 struct lvds_lfp_black_border {
 	u8 top;		/* 227+ */
 	u8 bottom;	/* 227+ */
@@ -863,7 +864,7 @@ struct lvds_lfp_black_border {
 } __packed;
 
 struct bdb_lvds_lfp_data_tail {
-	struct lvds_lfp_panel_name panel_name[16];		/* (156-163?)+ */
+	struct bdb_edid_product_name panel_name[16];		/* (156-163?)+ */
 	u16 scaling_enable;					/* 187+ */
 	u8 seamless_drrs_min_refresh_rate[16];			/* 188+ */
 	u8 pixel_overlap_count[16];				/* 208+ */
-- 
2.43.2

