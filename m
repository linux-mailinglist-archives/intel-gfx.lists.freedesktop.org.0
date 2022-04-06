Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AB54F6014
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 15:40:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4FA510E05D;
	Wed,  6 Apr 2022 13:40:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 993BB10E05D
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 13:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649252407; x=1680788407;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6MRIIsmAKuOLpchBaYikPR/aajoy4OGbB9t6tA5oHpg=;
 b=RVqibV3kw2qGKKOuwKSHezvofNLxS8dLsb803tEe2qtGLZnSDC8DrbJR
 +wO36XHDAhkWksYsGq7UNNMRWz090vytHb3FuxGYZ6GNYNe4QLxakzs/R
 5KuSoso4lxtCzVjE+OBf57MB4a3vr3pdLKoWT+u7cYDCZtaCjclCEp7Bf
 St3j+i1NV8RfhhIMKizAsoS88zkUuSL4CPPMo93H5MnL90nbNjBfKB3ft
 fSdRRehwGNXOkFfE4dnzqw/YRDxhnxGJNN/EC/JYt+kordLo625kQFpgq
 TksQni5+UElr3lywP23EGiwik+4r1A0fs59H/cgY6rXiUtWIFd8dctc8w g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="324213258"
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="324213258"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 06:40:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="642055075"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by FMSMGA003.fm.intel.com with SMTP; 06 Apr 2022 06:40:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Apr 2022 16:40:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Apr 2022 16:40:02 +0300
Message-Id: <20220406134002.30761-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220405173410.11436-10-ville.syrjala@linux.intel.com>
References: <20220405173410.11436-10-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 09/22] drm/i915/bios: Get access to the tail
 end of the LFP data block
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

We need to start parsing stuff from the tail end of the LFP data block.
This is made awkward by the fact that the fp_timing table has variable
size. So we must use a bit more finesse to get the tail end, and to
make sure we allocate enough memory for it to make sure our struct
representation fits.

v2: Rebase due to the preallocation of BDB blocks
v3: Rebase due to min_size WARN relocation

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 39 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 17 ++++++++
 2 files changed, 55 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index d32091dad1b0..9a14d55b636c 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -188,7 +188,7 @@ static const struct {
 	{ .section_id = BDB_LVDS_LFP_DATA_PTRS,
 	  .min_size = sizeof(struct bdb_lvds_lfp_data_ptrs), },
 	{ .section_id = BDB_LVDS_LFP_DATA,
-	  .min_size = sizeof(struct bdb_lvds_lfp_data), },
+	  .min_size = 0, /* special case */ },
 	{ .section_id = BDB_LVDS_BACKLIGHT,
 	  .min_size = sizeof(struct bdb_lfp_backlight_data), },
 	{ .section_id = BDB_LFP_POWER,
@@ -203,6 +203,23 @@ static const struct {
 	  .min_size = sizeof(struct bdb_generic_dtd), },
 };
 
+static size_t lfp_data_min_size(struct drm_i915_private *i915)
+{
+	const struct bdb_lvds_lfp_data_ptrs *ptrs;
+	size_t size;
+
+	ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
+	if (!ptrs)
+		return 0;
+
+	size = sizeof(struct bdb_lvds_lfp_data);
+	if (ptrs->panel_name.table_size)
+		size = max(size, ptrs->panel_name.offset +
+			   sizeof(struct bdb_lvds_lfp_data_tail));
+
+	return size;
+}
+
 static bool validate_lfp_data_ptrs(const void *bdb,
 				   const struct bdb_lvds_lfp_data_ptrs *ptrs)
 {
@@ -492,6 +509,9 @@ static void init_bdb_blocks(struct drm_i915_private *i915,
 		enum bdb_block_id section_id = bdb_blocks[i].section_id;
 		size_t min_size = bdb_blocks[i].min_size;
 
+		if (section_id == BDB_LVDS_LFP_DATA)
+			min_size = lfp_data_min_size(i915);
+
 		init_bdb_block(i915, bdb, section_id, min_size);
 	}
 }
@@ -562,6 +582,16 @@ get_lvds_fp_timing(const struct bdb_lvds_lfp_data *data,
 	return (const void *)data + ptrs->ptr[index].fp_timing.offset;
 }
 
+static const struct bdb_lvds_lfp_data_tail *
+get_lfp_data_tail(const struct bdb_lvds_lfp_data *data,
+		  const struct bdb_lvds_lfp_data_ptrs *ptrs)
+{
+	if (ptrs->panel_name.table_size)
+		return (const void *)data + ptrs->panel_name.offset;
+	else
+		return NULL;
+}
+
 /* Parse general panel options */
 static void
 parse_panel_options(struct drm_i915_private *i915)
@@ -666,6 +696,7 @@ static void
 parse_lfp_data(struct drm_i915_private *i915)
 {
 	const struct bdb_lvds_lfp_data *data;
+	const struct bdb_lvds_lfp_data_tail *tail;
 	const struct bdb_lvds_lfp_data_ptrs *ptrs;
 
 	ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
@@ -678,6 +709,12 @@ parse_lfp_data(struct drm_i915_private *i915)
 
 	if (!i915->vbt.lfp_lvds_vbt_mode)
 		parse_lfp_panel_dtd(i915, data, ptrs);
+
+	tail = get_lfp_data_tail(data, ptrs);
+	if (!tail)
+		return;
+
+	(void)tail;
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index e4a11c3e3f3e..64551d206aeb 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -783,6 +783,23 @@ struct lvds_lfp_panel_name {
 	u8 name[13];
 } __packed;
 
+struct lvds_lfp_black_border {
+	u8 top; /*  227 */
+	u8 bottom; /*  227 */
+	u8 left; /* 238 */
+	u8 right; /* 238 */
+} __packed;
+
+struct bdb_lvds_lfp_data_tail {
+	struct lvds_lfp_panel_name panel_name[16]; /* 156-163? */
+	u16 scaling_enable; /* 187 */
+	u8 seamless_drrs_min_refresh_rate[16]; /* 188 */
+	u8 pixel_overlap_count[16]; /* 208 */
+	struct lvds_lfp_black_border black_border[16]; /* 227 */
+	u16 dual_lfp_port_sync_enable; /* 231 */
+	u16 gpu_dithering_for_banding_artifacts; /* 245 */
+} __packed;
+
 /*
  * Block 43 - LFP Backlight Control Data Block
  */
-- 
2.35.1

