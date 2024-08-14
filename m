Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F29951E67
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2024 17:19:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDAAD10E4C9;
	Wed, 14 Aug 2024 15:19:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kFY5wlaP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E25010E4C9
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2024 15:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723648782; x=1755184782;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=E6XLr7J8xrf66DvTt+JSmUrABJRZR2LmA9h1AZC4M4w=;
 b=kFY5wlaPYEJsd6nQLYn+ZigVOzfOBlJ0Gy4bCPAKwrtSuff7AHVzdDmv
 FKWyUTD4xq3WupAsriE6/Fjqhw+gTeDSoZoBNtNWNRRtYebpIK6lDVmp0
 oyVD9VFmdn2mfCDirnyxZWylwB5qZqu1n+Xq8szOqTGucJxx55eeZg7O/
 3L3In6O9blJd98Cr/ZKKGtP/dGUGg2cTF7brNFPuOcmq0yOd3DDSVZ/MN
 BTsg68HOf/JsH/xXBiZ0k6CE11Gte050O+8tO7LkaJlgV8U+YBq2LARUA
 Ew3yzKrFHVH8tmiz2sH47usIcovmN89sAoxM6Hx82A+UQF4grBlvY6wuW Q==;
X-CSE-ConnectionGUID: JMEPU1a1THmOg/Bd0M6fTA==
X-CSE-MsgGUID: b+6zo1c+RMiYwd80jlWofQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11164"; a="21429160"
X-IronPort-AV: E=Sophos;i="6.10,146,1719903600"; d="scan'208";a="21429160"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 08:19:42 -0700
X-CSE-ConnectionGUID: k9SbR/L3TNSgAtE3jZcPyA==
X-CSE-MsgGUID: ROtehbq1SdqfBZr7nonoiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,146,1719903600"; d="scan'208";a="82268803"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by fmviesa002.fm.intel.com with ESMTP; 14 Aug 2024 08:19:40 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [v2] drm/i915/bios: Update new entries in VBT BDB block definitions
Date: Wed, 14 Aug 2024 20:51:53 +0530
Message-Id: <20240814152153.321537-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
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

New entries updated in BDB definition from VBT v257 to v260.

Extend fields in backlight power controller VBT block 43 for VBT v257.
Add t6 delay support fields in edp panel power block 27 for VBT v260.
Update supported VBT version range for obsolete fields.

v2:
- Update the commit message with description(Jani)
- Rename variable names align to spec names(Jani)

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 37 ++++++++++++++++---
 1 file changed, 31 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index e613288937e4..454a309d766e 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -1080,6 +1080,8 @@ struct bdb_edp {
 	u16 edp_fast_link_training_rate[16];			/* 224+ */
 	u16 edp_max_port_link_rate[16];				/* 244+ */
 	u16 edp_dsc_disable;					/* 251+ */
+	u16 t6_delay;						/* 260+ */
+	u16 t6_link_idle_time[16];				/* 260+ */
 } __packed;
 
 /*
@@ -1321,7 +1323,7 @@ struct als_data_entry {
 } __packed;
 
 struct aggressiveness_profile_entry {
-	u8 dpst_aggressiveness : 4;
+	u8 dpst_aggressiveness : 4;		/* (228/252)-256 */
 	u8 lace_aggressiveness : 4;
 } __packed;
 
@@ -1330,12 +1332,27 @@ struct aggressiveness_profile2_entry {
 	u8 elp_aggressiveness : 4;
 } __packed;
 
+struct aggressiveness_profile3_entry {
+	u8 apd_aggressiveness:4;
+	u8 pixoptix_aggressiveness:4;
+} __packed;
+
+struct aggressiveness_profile4_entry {
+	u8 xpst_aggressiveness:4;
+	u8 tcon_aggressiveness:4;
+} __packed;
+
+struct panel_identification {
+	u8 panel_technology:4;
+	u8 reserved:4;
+} __packed;
+
 struct bdb_lfp_power {
 	struct lfp_power_features features;				/* ???-227 */
 	struct als_data_entry als[5];
 	u8 lace_aggressiveness_profile:3;				/* 210-227 */
 	u8 reserved1:5;
-	u16 dpst;							/* 228+ */
+	u16 dpst;							/* 228-256 */
 	u16 psr;							/* 228+ */
 	u16 drrs;							/* 228+ */
 	u16 lace_support;						/* 228+ */
@@ -1343,12 +1360,20 @@ struct bdb_lfp_power {
 	u16 dmrrs;							/* 228+ */
 	u16 adb;							/* 228+ */
 	u16 lace_enabled_status;					/* 228+ */
-	struct aggressiveness_profile_entry aggressiveness[16];		/* 228+ */
+	struct aggressiveness_profile_entry aggressiveness[16];
 	u16 hobl;							/* 232+ */
 	u16 vrr_feature_enabled;					/* 233+ */
-	u16 elp;							/* 247+ */
-	u16 opst;							/* 247+ */
-	struct aggressiveness_profile2_entry aggressiveness2[16];	/* 247+ */
+	u16 elp;							/* 247-256 */
+	u16 opst;							/* 247-256 */
+	struct aggressiveness_profile2_entry aggressiveness2[16];	/* 247-256 */
+	u16 apd;							/* 253-256 */
+	u16 pixoptix;							/* 253-256 */
+	struct aggressiveness_profile3_entry aggressiveness3[16];	/* 253-256 */
+	struct panel_identification panel_identification[16];		/* 257+ */
+	u16 xpst_support;						/* 257+ */
+	u16 tcon_based_backlight_optimization;				/* 257+ */
+	struct aggressiveness_profile4_entry aggressiveness4[16];	/* 257+ */
+	u16 tcon_xpst_coexistence;					/* 257+ */
 } __packed;
 
 /*
-- 
2.34.1

