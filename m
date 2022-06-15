Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B1354CC5D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 17:14:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D720F10FE78;
	Wed, 15 Jun 2022 15:14:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCA5B10FE32
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 15:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655306094; x=1686842094;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=JluCiKz7LbUmA9xg49hWCFJqgBOu70SiqeMDhfw05z8=;
 b=BPeSMKw1AxeZWTGH0/H5BBVNX+wK8mlEpAkrNDkH1/xLC2UG7ZZ9FNBB
 ruvV+/AW6WAv0vEswudEgsN475eUukI9IFvC8N533vO9pYbR84lFG7ibH
 Y2651BCBgAsJxcgNbtB8vNLNAmIfCemAskVrMc+ZYI4KXxaDwFbWINoCQ
 FVuqFsxzzlN8XTZKrIbN4KMToiHILVyrPGGPrqnISOj3ZB1nHMB764pg0
 qdf5MMUp0b4VsXKcoQAs3JFWOQJcLleOVM3FNkzvSjN6G7L+CtGcY5QKh
 9ZxJ85pGqRNAMKjxeWdCoZGeS690k2ivF+wJQPT5hYTzLO6DFZTxIivcy w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="279042851"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="279042851"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 08:14:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="687353267"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga002.fm.intel.com with SMTP; 15 Jun 2022 08:14:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Jun 2022 18:14:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jun 2022 18:14:45 +0300
Message-Id: <20220615151445.8531-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220615151445.8531-1-ville.syrjala@linux.intel.com>
References: <20220615151445.8531-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/bios: Introduce panel_bits() and
 panel_bool()
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

Abstract the bit extraction from the VBT per-panel bitfields
slightly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 31 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  3 --
 2 files changed, 21 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 807184fd5618..76e86358adb9 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -743,6 +743,16 @@ static int get_panel_type(struct drm_i915_private *i915,
 	return panel_types[i].panel_type;
 }
 
+static unsigned int panel_bits(unsigned int value, int panel_type, int num_bits)
+{
+	return (value >> (panel_type * num_bits)) & (BIT(num_bits) - 1);
+}
+
+static bool panel_bool(unsigned int value, int panel_type)
+{
+	return panel_bits(value, panel_type, 1);
+}
+
 /* Parse general panel options */
 static void
 parse_panel_options(struct drm_i915_private *i915,
@@ -766,8 +776,8 @@ parse_panel_options(struct drm_i915_private *i915,
 	if (get_blocksize(lvds_options) < 16)
 		return;
 
-	drrs_mode = (lvds_options->dps_panel_type_bits
-				>> (panel_type * 2)) & MODE_MASK;
+	drrs_mode = panel_bits(lvds_options->dps_panel_type_bits,
+			       panel_type, 2);
 	/*
 	 * VBT has static DRRS = 0 and seamless DRRS = 2.
 	 * The below piece of code is required to adjust vbt.drrs_type
@@ -1313,7 +1323,7 @@ parse_power_conservation_features(struct drm_i915_private *i915,
 	if (!power)
 		return;
 
-	panel->vbt.psr.enable = power->psr & BIT(panel_type);
+	panel->vbt.psr.enable = panel_bool(power->psr, panel_type);
 
 	/*
 	 * If DRRS is not supported, drrs_type has to be set to 0.
@@ -1321,22 +1331,23 @@ parse_power_conservation_features(struct drm_i915_private *i915,
 	 * static DRRS is 0 and DRRS not supported is represented by
 	 * power->drrs & BIT(panel_type)=false
 	 */
-	if (!(power->drrs & BIT(panel_type)) && panel->vbt.drrs_type != DRRS_TYPE_NONE) {
+	if (!panel_bool(power->drrs, panel_type) && panel->vbt.drrs_type != DRRS_TYPE_NONE) {
 		/*
 		 * FIXME Should DMRRS perhaps be treated as seamless
 		 * but without the automatic downclocking?
 		 */
-		if (power->dmrrs & BIT(panel_type))
+		if (panel_bool(power->dmrrs, panel_type))
 			panel->vbt.drrs_type = DRRS_TYPE_STATIC;
 		else
 			panel->vbt.drrs_type = DRRS_TYPE_NONE;
 	}
 
 	if (i915->vbt.version >= 232)
-		panel->vbt.edp.hobl = power->hobl & BIT(panel_type);
+		panel->vbt.edp.hobl = panel_bool(power->hobl, panel_type);
 
 	if (i915->vbt.version >= 233)
-		panel->vbt.vrr = power->vrr_feature_enabled & BIT(panel_type);
+		panel->vbt.vrr = panel_bool(power->vrr_feature_enabled,
+					    panel_type);
 }
 
 static void
@@ -1352,7 +1363,7 @@ parse_edp(struct drm_i915_private *i915,
 	if (!edp)
 		return;
 
-	switch ((edp->color_depth >> (panel_type * 2)) & 3) {
+	switch (panel_bits(edp->color_depth, panel_type, 2)) {
 	case EDP_18BPP:
 		panel->vbt.edp.bpp = 18;
 		break;
@@ -1463,7 +1474,7 @@ parse_edp(struct drm_i915_private *i915,
 	}
 
 	panel->vbt.edp.drrs_msa_timing_delay =
-		(edp->sdrrs_msa_timing_delay >> (panel_type * 2)) & 3;
+		panel_bits(edp->sdrrs_msa_timing_delay, panel_type, 2);
 
 	if (i915->vbt.version >= 244)
 		panel->vbt.edp.max_link_rate =
@@ -1546,7 +1557,7 @@ parse_psr(struct drm_i915_private *i915,
 	if (i915->vbt.version >= 226) {
 		u32 wakeup_time = psr->psr2_tp2_tp3_wakeup_time;
 
-		wakeup_time = (wakeup_time >> (2 * panel_type)) & 0x3;
+		wakeup_time = panel_bits(wakeup_time, panel_type, 2);
 		switch (wakeup_time) {
 		case 0:
 			wakeup_time = 500;
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index f8e5097222f2..3766c09bd65d 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -704,9 +704,6 @@ struct bdb_edp {
  * Block 40 - LFP Data Block
  */
 
-/* Mask for DRRS / Panel Channel / SSC / BLT control bits extraction */
-#define MODE_MASK		0x3
-
 struct bdb_lvds_options {
 	u8 panel_type;
 	u8 panel_type2;						/* 212 */
-- 
2.35.1

