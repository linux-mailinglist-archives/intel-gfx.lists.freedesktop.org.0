Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8630894EE79
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2024 15:38:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54FE910E215;
	Mon, 12 Aug 2024 13:38:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PTPV7wG7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84DF510E215
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2024 13:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723469913; x=1755005913;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zrEvRShVH9N+6AkeZ8Qi3C2qmVyBPa5X3S8NHpNzCBY=;
 b=PTPV7wG7FT4+LknQxUw3u7jnk2yR//R7YyApFZSHslokWPT5yee/lHoP
 9RgcizjZ1WBNYrgqqVAzX+T7NMMxqZMiIX1dob/kcx+sYjZWvRcVek5IV
 LZZFh+TTcRvuc9cM0w+GJRGWUuAzfusi27WnaLofj+n/v+oPCIfBZ+Bg3
 0Csc5wEKnWRb+7Rdlm/eI81CG4tA6f5Ko3u/XKvVwLtznVaAunso1fFOH
 6oYoZol4KTh0WQ47PEeeATI1isJy6/Jeligo2MF88dRerfI/aPRGLnI5Q
 DOVgdC3w7rJxN0RcKSvgmHJh5DuYkCGL/zO7eXnidAOi29oi5aOMinJ5T g==;
X-CSE-ConnectionGUID: p7KCpF8ZTniwsGTVQoTbDg==
X-CSE-MsgGUID: nO3XO3KyQlCXGwvyIOzKJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="32257085"
X-IronPort-AV: E=Sophos;i="6.09,283,1716274800"; d="scan'208";a="32257085"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 06:38:32 -0700
X-CSE-ConnectionGUID: nfDch5gkSoubvUdEtQR/rw==
X-CSE-MsgGUID: MaKBC+QFR+StvGxupGwjDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,283,1716274800"; d="scan'208";a="63100254"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orviesa003.jf.intel.com with ESMTP; 12 Aug 2024 06:38:30 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH] drm/i915/bios: Update new entries in VBT BDB block definations
Date: Mon, 12 Aug 2024 19:10:47 +0530
Message-Id: <20240812134047.4042341-1-dnyaneshwar.bhadane@intel.com>
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

New entries updated in BDB defination from VBT v257- v260.

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 35 ++++++++++++++++---
 1 file changed, 30 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index e613288937e4..65342f347bba 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -1080,6 +1080,8 @@ struct bdb_edp {
 	u16 edp_fast_link_training_rate[16];			/* 224+ */
 	u16 edp_max_port_link_rate[16];				/* 244+ */
 	u16 edp_dsc_disable;					/* 251+ */
+	u16 t16_delay;						/* 260+ */
+	u16 t16_link_idle_time;					/* 260+ */
 } __packed;
 
 /*
@@ -1330,12 +1332,27 @@ struct aggressiveness_profile2_entry {
 	u8 elp_aggressiveness : 4;
 } __packed;
 
+struct aggressiveness_profile3_entry {
+	u8 adp_aggressiveness:4;
+	u8 po_aggressiveness:4;
+} __packed;
+
+struct aggressiveness_profile4_entry {
+	u8 xpst_aggressiveness:4;
+	u8 tcon_aggressiveness:4;
+} __packed;
+
+struct panel_identification {
+	u8 panel_type:4;
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
+	struct aggressiveness_profile_entry aggressiveness[16];		/* 228-256 */
 	u16 hobl;							/* 232+ */
 	u16 vrr_feature_enabled;					/* 233+ */
-	u16 elp;							/* 247+ */
-	u16 opst;							/* 247+ */
-	struct aggressiveness_profile2_entry aggressiveness2[16];	/* 247+ */
+	u16 elp;							/* 247-256 */
+	u16 opst;							/* 247-256 */
+	struct aggressiveness_profile2_entry aggressiveness2[16];	/* 247-256 */
+	u16 adp;							/* 253-256 */
+	u16 po;								/* 253-256 */
+	struct aggressiveness_profile3_entry aggressiveness3[16];	/* 253-256 */
+	struct panel_identification panel_identity[16];			/* 257+ */
+	u16 xpst;							/* 257+ */
+	u16 tcon;							/* 257+ */
+	struct aggressiveness_profile4_entry aggressiveness4[16];	/* 257+ */
+	u16 tcon_coexist_xpst;						/* 257+ */
 } __packed;
 
 /*
-- 
2.34.1

