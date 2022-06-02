Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE4053BA94
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 16:20:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BEE1112D75;
	Thu,  2 Jun 2022 14:20:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82DDF112D75
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 14:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654179638; x=1685715638;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OgmCgf5VIrbafZ180BnrwAWZCNGG4nYVdLA4zdm2lvQ=;
 b=eAYuLK+NGiMuYHeOBxUdQrQXo2YscKneRFg5AR1KbQLXgCnVXq1V+Dik
 wSe25ht+w91ZVFhwcds7iOnl8WAvSpjXJxPzd+7fM+IGRbY4lQqZc/mRl
 Y+EZbQ6LCINmKz3igfNthuE5lk7SO1ldkGFt8IQADu9EkR5VDvcpgUgWa
 Ds78H5vm2kIHta/S0pyLMd7uoKdfO1pJ6I+4SKTWt/Rn+cTmNANY2XT7Q
 q+a9/2fzuu7agxurYYdJ3C5BHhvGnrSyAn/36fo9yc03yJASlp0krItSn
 PU4s2kTZW6OcEid/IHft8KV3CbMeAFef87wtYWn7kiHSN/OvaJfD4uGn4 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10365"; a="339007293"
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="339007293"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 07:20:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="905007671"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmsmga005.fm.intel.com with ESMTP; 02 Jun 2022 07:20:36 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jun 2022 19:48:48 +0530
Message-Id: <20220602141850.21301-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20220602141850.21301-1-animesh.manna@intel.com>
References: <20220602141850.21301-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 3/5] drm/i915/display: Use panel index to
 parse lfp backlight
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

There will be separate entry of backlight info for each
LFP in VBT. Panel index is used for deriving backlight info
of the respective panel.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 943c5584f242..34160dc6b092 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -957,11 +957,11 @@ parse_generic_dtd(struct drm_i915_private *i915,
 
 static void
 parse_lfp_backlight(struct drm_i915_private *i915,
-		    struct intel_panel *panel)
+		    struct intel_panel *panel,
+		    int panel_index)
 {
 	const struct bdb_lfp_backlight_data *backlight_data;
 	const struct lfp_backlight_data_entry *entry;
-	int panel_type = panel->vbt.panel_type;
 	u16 level;
 
 	backlight_data = find_section(i915, BDB_LVDS_BACKLIGHT);
@@ -975,7 +975,7 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 		return;
 	}
 
-	entry = &backlight_data->data[panel_type];
+	entry = &backlight_data->data[panel_index];
 
 	panel->vbt.backlight.present = entry->type == BDB_BACKLIGHT_TYPE_PWM;
 	if (!panel->vbt.backlight.present) {
@@ -999,7 +999,7 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 		if (get_blocksize(backlight_data) >= exp_size) {
 			const struct lfp_backlight_control_method *method;
 
-			method = &backlight_data->backlight_control[panel_type];
+			method = &backlight_data->backlight_control[panel_index];
 			panel->vbt.backlight.type = method->type;
 			panel->vbt.backlight.controller = method->controller;
 		}
@@ -1012,11 +1012,11 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 		u16 min_level;
 		bool scale;
 
-		level = backlight_data->brightness_level[panel_type].level;
-		min_level = backlight_data->brightness_min_level[panel_type].level;
+		level = backlight_data->brightness_level[panel_index].level;
+		min_level = backlight_data->brightness_min_level[panel_index].level;
 
 		if (i915->vbt.version >= 236)
-			scale = backlight_data->brightness_precision_bits[panel_type] == 16;
+			scale = backlight_data->brightness_precision_bits[panel_index] == 16;
 		else
 			scale = level > 255;
 
@@ -1028,11 +1028,8 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 			level = 255;
 		}
 		panel->vbt.backlight.min_brightness = min_level;
-
-		panel->vbt.backlight.brightness_precision_bits =
-			backlight_data->brightness_precision_bits[panel_type];
 	} else {
-		level = backlight_data->level[panel_type];
+		level = backlight_data->level[panel_index];
 		panel->vbt.backlight.min_brightness = entry->min_brightness;
 	}
 
@@ -3117,7 +3114,7 @@ void intel_bios_init_panel(struct drm_i915_private *i915,
 	parse_panel_options(i915, panel, edid, panel_index);
 	parse_generic_dtd(i915, panel, panel_index);
 	parse_lfp_data(i915, panel, panel_index);
-	parse_lfp_backlight(i915, panel);
+	parse_lfp_backlight(i915, panel, panel_index);
 	parse_sdvo_panel_data(i915, panel);
 	parse_panel_driver_features(i915, panel);
 	parse_power_conservation_features(i915, panel);
-- 
2.29.0

