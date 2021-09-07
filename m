Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C32402DAB
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 19:20:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E87516E0B7;
	Tue,  7 Sep 2021 17:20:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 611EB6E0B7
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 17:20:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="281280093"
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; d="scan'208";a="281280093"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 10:20:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; d="scan'208";a="469282080"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by orsmga007.jf.intel.com with ESMTP; 07 Sep 2021 10:20:05 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Date: Tue,  7 Sep 2021 22:46:39 +0530
Message-Id: <20210907171639.1221287-1-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Add separate MOCS table for Gen12
 devices other than TGL/RKL
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

MOCS table of TGL/RKL has MOCS[1] set to L3_UC.
While for other gen12 devices we need to set MOCS[1] as L3_WB,
So adding a new MOCS table for other gen 12 devices eg. ADL.

Fixes: cfbe5291a189 ("drm/i915/gt: Initialize unused MOCS entries with device specific values")
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_mocs.c | 41 +++++++++++++++++++++++++---
 1 file changed, 37 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index e96afd7beb49..c8d289b00de4 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -315,6 +315,35 @@ static const struct drm_i915_mocs_entry dg1_mocs_table[] = {
 	MOCS_ENTRY(63, 0, L3_1_UC),
 };
 
+static const struct drm_i915_mocs_entry gen12_mocs_table[] = {
+
+	GEN11_MOCS_ENTRIES,
+	/* Implicitly enable L1 - HDC:L1 + L3 + LLC */
+	MOCS_ENTRY(48,
+		   LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	/* Implicitly enable L1 - HDC:L1 + L3 */
+	MOCS_ENTRY(49,
+		   LE_1_UC | LE_TC_1_LLC,
+		   L3_3_WB),
+	/* Implicitly enable L1 - HDC:L1 + LLC */
+	MOCS_ENTRY(50,
+		   LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_1_UC),
+	/* Implicitly enable L1 - HDC:L1 */
+	MOCS_ENTRY(51,
+		   LE_1_UC | LE_TC_1_LLC,
+		   L3_1_UC),
+	/* HW Special Case (CCS) */
+	MOCS_ENTRY(60,
+		   LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_1_UC),
+	/* HW Special Case (Displayable) */
+	MOCS_ENTRY(61,
+		   LE_1_UC | LE_TC_1_LLC,
+		   L3_3_WB),
+};
+
 enum {
 	HAS_GLOBAL_MOCS = BIT(0),
 	HAS_ENGINE_MOCS = BIT(1),
@@ -351,14 +380,18 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
 		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
 		table->uc_index = 1;
 		table->unused_entries_index = 5;
-	} else if (GRAPHICS_VER(i915) >= 12) {
+	} else if (IS_TIGERLAKE(i915) || IS_ROCKETLAKE(i915)) {
+		/* For TGL/RKL, Can't be changed now for ABI reasons */
 		table->size  = ARRAY_SIZE(tgl_mocs_table);
 		table->table = tgl_mocs_table;
 		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
 		table->uc_index = 3;
-		/* For TGL/RKL, Can't be changed now for ABI reasons */
-		if (!IS_TIGERLAKE(i915) && !IS_ROCKETLAKE(i915))
-			table->unused_entries_index = 2;
+	} else if (GRAPHICS_VER(i915) >= 12) {
+		table->size  = ARRAY_SIZE(gen12_mocs_table);
+		table->table = gen12_mocs_table;
+		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
+		table->uc_index = 3;
+		table->unused_entries_index = 2;
 	} else if (GRAPHICS_VER(i915) == 11) {
 		table->size  = ARRAY_SIZE(icl_mocs_table);
 		table->table = icl_mocs_table;
-- 
2.26.2

