Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2C64F3CE6
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 19:34:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3170210EDA8;
	Tue,  5 Apr 2022 17:34:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A526B10ED9D
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 17:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649180083; x=1680716083;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=r7ufx/akG7aXPKUQpvR1eunm1U94mXpITw+fgyRyQrc=;
 b=E+6LM9OylXirDjcNHA+EICtodg8XiW9UsX7nFStvC5FgfJH0g0n0KvbF
 3ik6cuzAkJPdSC442Y9YgJntOlxrJhYVdSgUx8sob5usnTdASj08JT5I9
 YuDVuKYvhE7mNMjqy4vwzQeIxc268ORR0kOqd8oMFcyI4PE2MmPdbyR2M
 ISgXsDCd6cLlgs2k2lySJqgSIxTkWfQyew2P98bXXn38tyuWP1UJuQrdp
 lLPQoMuC9Vs50mOD7/FfXLILjYvd+sbzB7UyLFGrADQrSYyCdOpfoAXdI
 /pzbUfC5QzbakwAPyiOtqm4HU/IG9KLlRlxzFJZSrQNCy1s+vPvzKKN3+ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="241404287"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="241404287"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 10:34:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="524093762"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga006.jf.intel.com with SMTP; 05 Apr 2022 10:34:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Apr 2022 20:34:25 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Apr 2022 20:33:53 +0300
Message-Id: <20220405173410.11436-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/22] drm/i915/bios: Trust the LFP data
 pointers
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

Now that we've sufficiently validated the LFP data pointers we
can trust them.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 60 ++++++-----------------
 1 file changed, 16 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index cd82ea4de8e1..925f521f1f84 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -397,44 +397,19 @@ fill_detail_timing_data(struct drm_display_mode *panel_fixed_mode,
 }
 
 static const struct lvds_dvo_timing *
-get_lvds_dvo_timing(const struct bdb_lvds_lfp_data *lvds_lfp_data,
-		    const struct bdb_lvds_lfp_data_ptrs *lvds_lfp_data_ptrs,
+get_lvds_dvo_timing(const struct bdb_lvds_lfp_data *data,
+		    const struct bdb_lvds_lfp_data_ptrs *ptrs,
 		    int index)
 {
-	/*
-	 * the size of fp_timing varies on the different platform.
-	 * So calculate the DVO timing relative offset in LVDS data
-	 * entry to get the DVO timing entry
-	 */
-
-	int lfp_data_size =
-		lvds_lfp_data_ptrs->ptr[1].dvo_timing.offset -
-		lvds_lfp_data_ptrs->ptr[0].dvo_timing.offset;
-	int dvo_timing_offset =
-		lvds_lfp_data_ptrs->ptr[0].dvo_timing.offset -
-		lvds_lfp_data_ptrs->ptr[0].fp_timing.offset;
-	char *entry = (char *)lvds_lfp_data->data + lfp_data_size * index;
-
-	return (struct lvds_dvo_timing *)(entry + dvo_timing_offset);
+	return (const void *)data + ptrs->ptr[index].dvo_timing.offset;
 }
 
-/* get lvds_fp_timing entry
- * this function may return NULL if the corresponding entry is invalid
- */
 static const struct lvds_fp_timing *
 get_lvds_fp_timing(const struct bdb_lvds_lfp_data *data,
 		   const struct bdb_lvds_lfp_data_ptrs *ptrs,
 		   int index)
 {
-	u16 data_size = ((const u16 *)data)[-1]; /* stored in header */
-	size_t ofs;
-
-	if (index >= ARRAY_SIZE(ptrs->ptr))
-		return NULL;
-	ofs = ptrs->ptr[index].fp_timing.offset;
-	if (ofs + sizeof(struct lvds_fp_timing) > data_size)
-		return NULL;
-	return (const struct lvds_fp_timing *)((const u8 *)data + ofs);
+	return (const void *)data + ptrs->ptr[index].fp_timing.offset;
 }
 
 /* Parse general panel options */
@@ -499,8 +474,7 @@ parse_panel_options(struct drm_i915_private *i915)
 
 /* Try to find integrated panel timing data */
 static void
-parse_lfp_panel_dtd(struct drm_i915_private *i915,
-		    const struct bdb_header *bdb)
+parse_lfp_panel_dtd(struct drm_i915_private *i915)
 {
 	const struct bdb_lvds_lfp_data *lvds_lfp_data;
 	const struct bdb_lvds_lfp_data_ptrs *lvds_lfp_data_ptrs;
@@ -536,15 +510,14 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
 	fp_timing = get_lvds_fp_timing(lvds_lfp_data,
 				       lvds_lfp_data_ptrs,
 				       panel_type);
-	if (fp_timing) {
-		/* check the resolution, just to be sure */
-		if (fp_timing->x_res == panel_fixed_mode->hdisplay &&
-		    fp_timing->y_res == panel_fixed_mode->vdisplay) {
-			i915->vbt.bios_lvds_val = fp_timing->lvds_reg_val;
-			drm_dbg_kms(&i915->drm,
-				    "VBT initial LVDS value %x\n",
-				    i915->vbt.bios_lvds_val);
-		}
+
+	/* check the resolution, just to be sure */
+	if (fp_timing->x_res == panel_fixed_mode->hdisplay &&
+	    fp_timing->y_res == panel_fixed_mode->vdisplay) {
+		i915->vbt.bios_lvds_val = fp_timing->lvds_reg_val;
+		drm_dbg_kms(&i915->drm,
+			    "VBT initial LVDS value %x\n",
+			    i915->vbt.bios_lvds_val);
 	}
 }
 
@@ -627,8 +600,7 @@ parse_generic_dtd(struct drm_i915_private *i915)
 }
 
 static void
-parse_panel_dtd(struct drm_i915_private *i915,
-		const struct bdb_header *bdb)
+parse_panel_dtd(struct drm_i915_private *i915)
 {
 	/*
 	 * Older VBTs provided provided DTD information for internal displays
@@ -641,7 +613,7 @@ parse_panel_dtd(struct drm_i915_private *i915,
 	if (i915->vbt.version >= 229)
 		parse_generic_dtd(i915);
 	if (!i915->vbt.lfp_lvds_vbt_mode)
-		parse_lfp_panel_dtd(i915, bdb);
+		parse_lfp_panel_dtd(i915);
 }
 
 static void
@@ -2720,7 +2692,7 @@ void intel_bios_init(struct drm_i915_private *i915)
 	parse_general_features(i915);
 	parse_general_definitions(i915);
 	parse_panel_options(i915);
-	parse_panel_dtd(i915, bdb);
+	parse_panel_dtd(i915);
 	parse_lfp_backlight(i915);
 	parse_sdvo_panel_data(i915);
 	parse_driver_features(i915);
-- 
2.35.1

