Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CD0576EF9
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Jul 2022 16:39:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 873FE10FBCF;
	Sat, 16 Jul 2022 14:36:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DB7210E05A
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jul 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657916454; x=1689452454;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hHnrDwNMCXNTWUkbjYVUU3lIToR2Y8kOCpWDRJ7JOBw=;
 b=fJsok86gDirWBBBHNaQAPs3m1ufhM923Zc1LNfUZVfMcrwJgmYi23VCA
 7T3Gj0yi8Ole6iCozCKahMGwlcYchGYOuK0HTcrobGrn0XshbN9lEXGMO
 uDMtnc7NOra+JSdPam26Wp7wZJD/8zLVC+E96hFeXvpzbud45vrErui0s
 iGkXtaTSvHPsGdNym00ON2TMuSDKBUcx8RVauQfii+ju8In28aZCod+E7
 pw+8PXdJYer4c3jjWnzY3LJC1n9b0aZ6WFlKRC0pAI+hc/cRhxpq0FHr4
 26FeOOomevdS/yhUUu8y6R5ZA0Ei/bEIy6g/ufgaF+2Ob4x56E1pBpiLn g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10409"; a="347580230"
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="347580230"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 13:20:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="699333310"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by fmsmga002.fm.intel.com with SMTP; 15 Jul 2022 13:20:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Jul 2022 23:20:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jul 2022 23:20:34 +0300
Message-Id: <20220715202044.11153-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/12] drm/i915: Add some more VBT version
 number comments
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

Document the VBT version dependency of several other fields.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 76 +++++++++----------
 1 file changed, 38 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index ba328d130991..e997b8bcc6b8 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -502,25 +502,25 @@ struct bdb_general_definitions {
 
 struct psr_table {
 	/* Feature bits */
-	u8 full_link:1;
-	u8 require_aux_to_wakeup:1;
+	u8 full_link:1;						/* 165+ */
+	u8 require_aux_to_wakeup:1;				/* 165+ */
 	u8 feature_bits_rsvd:6;
 
 	/* Wait times */
-	u8 idle_frames:4;
-	u8 lines_to_wait:3;
+	u8 idle_frames:4;					/* 165+ */
+	u8 lines_to_wait:3;					/* 165+ */
 	u8 wait_times_rsvd:1;
 
 	/* TP wake up time in multiple of 100 */
-	u16 tp1_wakeup_time;
-	u16 tp2_tp3_wakeup_time;
+	u16 tp1_wakeup_time;					/* 165+ */
+	u16 tp2_tp3_wakeup_time;				/* 165+ */
 } __packed;
 
 struct bdb_psr {
 	struct psr_table psr_table[16];
 
 	/* PSR2 TP2/TP3 wakeup time for 16 panels */
-	u32 psr2_tp2_tp3_wakeup_time;
+	u32 psr2_tp2_tp3_wakeup_time;				/* 226+ */
 } __packed;
 
 /*
@@ -562,28 +562,28 @@ struct bdb_driver_features {
 	u16 tv_hotplug:1;
 	u16 hdmi_config:2;
 
-	u8 static_display:1;
+	u8 static_display:1;					/* 163+ */
 	u8 reserved2:7;
+
 	u16 legacy_crt_max_x;
 	u16 legacy_crt_max_y;
 	u8 legacy_crt_max_refresh;
 
 	u8 hdmi_termination;
-	u8 custom_vbt_version;
-	/* Driver features data block */
-	u16 rmpm_enabled:1;
-	u16 s2ddt_enabled:1;
-	u16 dpst_enabled:1;
-	u16 bltclt_enabled:1;
-	u16 adb_enabled:1;
-	u16 drrs_enabled:1;
-	u16 grs_enabled:1;
-	u16 gpmt_enabled:1;
-	u16 tbt_enabled:1;
-	u16 psr_enabled:1;
-	u16 ips_enabled:1;
+	u8 custom_vbt_version;					/* 165+ */
+	u16 rmpm_enabled:1;					/* 165+ */
+	u16 s2ddt_enabled:1;					/* 165+ */
+	u16 dpst_enabled:1;					/* 165-227 */
+	u16 bltclt_enabled:1;					/* 165+ */
+	u16 adb_enabled:1;					/* 165-227 */
+	u16 drrs_enabled:1;					/* 165-227 */
+	u16 grs_enabled:1;					/* 165+ */
+	u16 gpmt_enabled:1;					/* 165+ */
+	u16 tbt_enabled:1;					/* 165+ */
+	u16 psr_enabled:1;					/* 165-227 */
+	u16 ips_enabled:1;					/* 165+ */
 	u16 reserved3:1;
-	u16 dmrrs_enabled:1;
+	u16 dmrrs_enabled:1;					/* 174-227 */
 	u16 reserved4:2;
 	u16 pc_feature_valid:1;
 } __packed;
@@ -671,7 +671,7 @@ struct bdb_sdvo_panel_dtds {
 
 
 struct edp_fast_link_params {
-	u8 rate:4;
+	u8 rate:4;						/* ???-223 */
 	u8 lanes:4;
 	u8 preemphasis:4;
 	u8 vswing:4;
@@ -731,7 +731,7 @@ struct bdb_lvds_options {
 	u8 pfit_gfx_mode_enhanced:1;
 	u8 pfit_ratio_auto:1;
 	u8 pixel_dither:1;
-	u8 lvds_edid:1;
+	u8 lvds_edid:1;						/* ???-240 */
 	u8 rsvd2:1;
 	u8 rsvd4;
 	/* LVDS Panel channel bits stored here */
@@ -745,7 +745,7 @@ struct bdb_lvds_options {
 	/* LVDS panel type bits stored here */
 	u32 dps_panel_type_bits;
 	/* LVDS backlight control type bits stored here */
-	u32 blt_control_type_bits;
+	u32 blt_control_type_bits;				/* ???-240 */
 
 	u16 lcdvcc_s0_enable;					/* 200+ */
 	u32 rotation;						/* 228+ */
@@ -888,8 +888,8 @@ struct lfp_power_features {
 	u8 reserved1:1;
 	u8 power_conservation_pref:3;
 	u8 reserved2:1;
-	u8 lace_enabled_status:1;
-	u8 lace_support:1;
+	u8 lace_enabled_status:1;					/* 210+ */
+	u8 lace_support:1;						/* 210+ */
 	u8 als_enable:1;
 } __packed;
 
@@ -909,19 +909,19 @@ struct aggressiveness_profile2_entry {
 } __packed;
 
 struct bdb_lfp_power {
-	struct lfp_power_features features;
+	struct lfp_power_features features;				/* ???-227 */
 	struct als_data_entry als[5];
-	u8 lace_aggressiveness_profile:3;
+	u8 lace_aggressiveness_profile:3;				/* 210-227 */
 	u8 reserved1:5;
-	u16 dpst;
-	u16 psr;
-	u16 drrs;
-	u16 lace_support;
-	u16 adt;
-	u16 dmrrs;
-	u16 adb;
-	u16 lace_enabled_status;
-	struct aggressiveness_profile_entry aggressiveness[16];
+	u16 dpst;							/* 228+ */
+	u16 psr;							/* 228+ */
+	u16 drrs;							/* 228+ */
+	u16 lace_support;						/* 228+ */
+	u16 adt;							/* 228+ */
+	u16 dmrrs;							/* 228+ */
+	u16 adb;							/* 228+ */
+	u16 lace_enabled_status;					/* 228+ */
+	struct aggressiveness_profile_entry aggressiveness[16];		/* 228+ */
 	u16 hobl;							/* 232+ */
 	u16 vrr_feature_enabled;					/* 233+ */
 	u16 elp;							/* 247+ */
-- 
2.35.1

