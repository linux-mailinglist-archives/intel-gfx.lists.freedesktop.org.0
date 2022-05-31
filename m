Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D59C45396DF
	for <lists+intel-gfx@lfdr.de>; Tue, 31 May 2022 21:19:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EEBB10E2E9;
	Tue, 31 May 2022 19:19:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACB9B10E2E9
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 May 2022 19:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654024743; x=1685560743;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sgR4NIXsBKim0ETFYO481PGnmWVQTCGTBmD5FkVWPTU=;
 b=oB0XF3CUIvm28TFJuS0h5FsxDa0HfcZSCkAl4Sb9B4vyzO7CI1WOtpj6
 SR7pfmqx58Q/F2w80QSFeco+oGcYzlLWL5MCCxJ3N2bQDvOzCa33O1GaG
 YzFOwHC6kzpb69j5K+zt/sBompp90yog2HUb7ix9ByLMyGkpvXW56lmBA
 YeRv4N9IvdMKUbnPXMqPk8BIRwATuiKeZ8+aVvvtO0F5TKN6+zToX4p6c
 ZILftUBiOe32h/ItWWlmV6UOjA5xx0W021JPmddh83MBSpfQQ1nAJ4VGL
 lPxiSogRf7ON/Nik3Zs212rFvVxAjM5U3s+bgjRk2A4VAEn4JfDAf7Lho g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="275085569"
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="275085569"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 12:19:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="576555325"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga007.jf.intel.com with SMTP; 31 May 2022 12:19:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 31 May 2022 22:19:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 May 2022 22:18:43 +0300
Message-Id: <20220531191844.11313-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220531191844.11313-1-ville.syrjala@linux.intel.com>
References: <20220531191844.11313-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/6] drm/i915/bios: Define more BDB contents
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add a bunch of new struff we're missing in various BDB blocks.

TODO: Bunch of these might actually need to be taken
into use...

v2: s/lfp_features/lfp_power/features/ (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 50 ++++++++++++++++---
 1 file changed, 43 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 39109f204c6d..14f1e1cc92c5 100644
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
+struct lfp_power_features {
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
+	struct lfp_power_features features;
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

