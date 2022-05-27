Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D7353683D
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 22:50:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C76910ECAC;
	Fri, 27 May 2022 20:50:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9075310E6D0
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 May 2022 20:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653684607; x=1685220607;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qooy/RBJefiX0MvUJxCibdE93stq+PATJ5ENjA0WS3U=;
 b=kbyckznUcZ89iPP5Xt6RyW19vbLBxa61h8nFN+5lyDDEN+IqhL/e71Hs
 PHGczO6ExwKgdpovJ1Rj+lXBSDZY8w9pmQqcU4bjQEowzDvyEiT6y0Fiv
 9ptfMCrh55VS9an/NMW3q+rI2tf7jiKZRvP2D3/8FfiVDAUyv10WY4w7N
 miz5ww1KAFvyEEOsPQWkriiNVIJr8INasDBh/stJeBt7+eXRCQ20CwrRn
 0bIT5S3QO3uGe4buqBEd/MQLbmtf9zOgiFslzmTWOzYdlR+d2nPbbH3Av
 OnsHafRrJF/sDFnIWA9hV7/U/w9dFtZy9X6lTW0Lrwav8wdC21V4Z9IC0 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10360"; a="272144279"
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="272144279"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 13:50:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="665624277"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by FMSMGA003.fm.intel.com with SMTP; 27 May 2022 13:50:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 May 2022 23:50:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 May 2022 23:49:48 +0300
Message-Id: <20220527204949.2264-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220527204949.2264-1-ville.syrjala@linux.intel.com>
References: <20220527204949.2264-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/bios: Define more BDB contents
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

Add a bunch of new struff we're missing in various BDB blocks.

TODO: Bunch of these might actually need to be taken
into use...

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 50 ++++++++++++++++---
 1 file changed, 43 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 39109f204c6d..be99f585b1d0 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -564,7 +564,9 @@ struct bdb_driver_features {
 	u16 tbt_enabled:1;
 	u16 psr_enabled:1;
 	u16 ips_enabled:1;
-	u16 reserved3:4;
+	u16 reserved3:1;
+	u16 dmrrs_enabled:1;
+	u16 reserved4:2;
 	u16 pc_feature_valid:1;
 } __packed;
 
@@ -666,6 +668,16 @@ struct edp_full_link_params {
 	u8 vswing:4;
 } __packed;
 
+struct edp_apical_params {
+	u32 panel_oui;
+	u32 dpcd_base_address;
+	u32 dpcd_idridix_control_0;
+	u32 dpcd_option_select;
+	u32 dpcd_backlight;
+	u32 ambient_light;
+	u32 backlight_scale;
+} __packed;
+
 struct bdb_edp {
 	struct edp_power_seq power_seqs[16];
 	u32 color_depth;
@@ -681,6 +693,9 @@ struct bdb_edp {
 	struct edp_pwm_delays pwm_delays[16];			/* 186 */
 	u16 full_link_params_provided;				/* 199 */
 	struct edp_full_link_params full_link_params[16];	/* 199 */
+	u16 apical_enable;					/* 203 */
+	struct edp_apical_params apical_params[16];		/* 203 */
+	u16 edp_fast_link_training_rate[16];			/* 224 */
 } __packed;
 
 /*
@@ -717,6 +732,7 @@ struct bdb_lvds_options {
 
 	u16 lcdvcc_s0_enable;					/* 200 */
 	u32 rotation;						/* 228 */
+	u32 position;						/* 240 */
 } __packed;
 
 /*
@@ -843,13 +859,22 @@ struct bdb_lfp_backlight_data {
 	u8 level[16]; /* Obsolete from 234+ */
 	struct lfp_backlight_control_method backlight_control[16];
 	struct lfp_brightness_level brightness_level[16];		/* 234+ */
-	struct lfp_brightness_level brightness_min_level[16];	/* 234+ */
-	u8 brightness_precision_bits[16];						/* 236+ */
+	struct lfp_brightness_level brightness_min_level[16];		/* 234+ */
+	u8 brightness_precision_bits[16];				/* 236+ */
+	u16 hdr_dpcd_refresh_timeout[16];				/* 239+ */
 } __packed;
 
 /*
  * Block 44 - LFP Power Conservation Features Block
  */
+struct lfp_features {
+	u8 reserved1:1;
+	u8 power_conservation_pref:3;
+	u8 reserved2:1;
+	u8 lace_enabled_status:1;
+	u8 lace_support:1;
+	u8 als_enable:1;
+} __packed;
 
 struct als_data_entry {
 	u16 backlight_adjust;
@@ -861,10 +886,16 @@ struct aggressiveness_profile_entry {
 	u8 lace_aggressiveness : 4;
 } __packed;
 
+struct aggressiveness_profile2_entry {
+	u8 opst_aggressiveness : 4;
+	u8 elp_aggressiveness : 4;
+} __packed;
+
 struct bdb_lfp_power {
-	u8 lfp_feature_bits;
+	struct lfp_features features;
 	struct als_data_entry als[5];
-	u8 lace_aggressiveness_profile;
+	u8 lace_aggressiveness_profile:3;
+	u8 reserved1:5;
 	u16 dpst;
 	u16 psr;
 	u16 drrs;
@@ -876,6 +907,9 @@ struct bdb_lfp_power {
 	struct aggressiveness_profile_entry aggressiveness[16];
 	u16 hobl; /* 232+ */
 	u16 vrr_feature_enabled; /* 233+ */
+	u16 elp; /* 247+ */
+	u16 opst; /* 247+ */
+	struct aggressiveness_profile2_entry aggressiveness2[16]; /* 247+ */
 } __packed;
 
 /*
@@ -885,8 +919,10 @@ struct bdb_lfp_power {
 #define MAX_MIPI_CONFIGURATIONS	6
 
 struct bdb_mipi_config {
-	struct mipi_config config[MAX_MIPI_CONFIGURATIONS];
-	struct mipi_pps_data pps[MAX_MIPI_CONFIGURATIONS];
+	struct mipi_config config[MAX_MIPI_CONFIGURATIONS]; /* 175 */
+	struct mipi_pps_data pps[MAX_MIPI_CONFIGURATIONS]; /* 177 */
+	struct edp_pwm_delays pwm_delays[MAX_MIPI_CONFIGURATIONS]; /* 186 */
+	u8 pmic_i2c_bus_number[MAX_MIPI_CONFIGURATIONS]; /* 190 */
 } __packed;
 
 /*
-- 
2.35.1

