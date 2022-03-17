Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26CCA4DCC45
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 18:20:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A3E510E60B;
	Thu, 17 Mar 2022 17:20:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A406E10E60B
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 17:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647537625; x=1679073625;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=CpY5ZpTj7Iakw9Yf3V/QqK5kJCW6VyY5DAeMaDaVoLg=;
 b=R21RZiMGXzHZSnyhN6NHC6tbeH1NiQQDI+Y/Bf0eKwrAUwH79voK3ZzA
 zR3jxSNVgoGju2jZK6OdE1mcQNYYETVhLPIOVUSLK0A9gLCu1sn9ZSuwG
 knVWpKs9FjgU7RuXYJ+1ofegneSrf8kJj9OycUkRBxnS/OPraArmNcgcj
 iN13wKdPldRQ2c0L1I9e3ekShLerdmmkvfS3pNPfVO0thv7rrWNWIMzlD
 x+QfZckDaWfGBFzXSkqtiErUWu0ByawFBbsAlKckG/EXRpBOj2rRuotVU
 x42cyV5adOMcNhQPe2cu9SGWek19x+NK4DFLPzAjYALJFQls8ytTPUfEY g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="239086645"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="239086645"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 10:20:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="558024706"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 17 Mar 2022 10:20:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Mar 2022 19:20:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 19:19:46 +0200
Message-Id: <20220317171948.10400-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
References: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/11] drm/i915/bios: Get access to the tail end
 of the LFP data block
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 31 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 17 ++++++++++
 2 files changed, 47 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index b34f8a77712a..3d56fd440c0b 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -517,6 +517,28 @@ get_lvds_fp_timing(const struct bdb_lvds_lfp_data *data,
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
+static size_t lfp_data_min_size(const struct bdb_lvds_lfp_data_ptrs *ptrs)
+{
+	size_t size;
+
+	size = sizeof(struct bdb_lvds_lfp_data);
+	if (ptrs->panel_name.table_size)
+		size = max(size, ptrs->panel_name.offset +
+			   sizeof(struct bdb_lvds_lfp_data_tail));
+
+	return size;
+}
+
 /* Parse general panel options */
 static void
 parse_panel_options(struct drm_i915_private *i915,
@@ -624,6 +646,7 @@ parse_lfp_data(struct drm_i915_private *i915,
 	       const struct bdb_header *bdb)
 {
 	const struct bdb_lvds_lfp_data *data;
+	const struct bdb_lvds_lfp_data_tail *tail;
 	const struct bdb_lvds_lfp_data_ptrs *ptrs;
 
 	ptrs = find_section(i915, bdb, BDB_LVDS_LFP_DATA_PTRS,
@@ -632,12 +655,18 @@ parse_lfp_data(struct drm_i915_private *i915,
 		return;
 
 	data = find_section(i915, bdb, BDB_LVDS_LFP_DATA,
-			    sizeof(*data));
+			    lfp_data_min_size(ptrs));
 	if (!data)
 		return;
 
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
2.34.1

