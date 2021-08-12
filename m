Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2053E9EE8
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 08:52:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0879E6E311;
	Thu, 12 Aug 2021 06:52:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BC4D6E303
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 06:51:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10073"; a="215319897"
X-IronPort-AV: E=Sophos;i="5.84,315,1620716400"; d="scan'208";a="215319897"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2021 23:51:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,315,1620716400"; d="scan'208";a="503764900"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by orsmga001.jf.intel.com with ESMTP; 11 Aug 2021 23:51:48 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Date: Thu, 12 Aug 2021 12:17:58 +0530
Message-Id: <20210812064758.4102925-6-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210812064758.4102925-1-ayaz.siddiqui@intel.com>
References: <20210812064758.4102925-1-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i95/adl: Define MOCS table for Alderlake
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

In order to program unused and reserved mocs entries to L3_WB,
we need to create a separate mocs table for alderlake.

This patch will also covers wa_1608975824.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_mocs.c | 40 +++++++++++++++++++++++++++-
 1 file changed, 39 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 02610dc1cf2c3..a3123fecb887f 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -322,6 +322,38 @@ static const struct drm_i915_mocs_entry dg1_mocs_table[] = {
 	MOCS_ENTRY(62, 0, L3_1_UC),
 	MOCS_ENTRY(63, 0, L3_1_UC),
 };
+static const struct drm_i915_mocs_entry adl_mocs_table[] = {
+	/* wa_1608975824 */
+	MOCS_ENTRY(0,
+			LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+			L3_3_WB),
+
+	GEN11_MOCS_ENTRIES,
+	/* Implicitly enable L1 - HDC:L1 + L3 + LLC */
+	MOCS_ENTRY(48,
+			LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+			L3_3_WB),
+	/* Implicitly enable L1 - HDC:L1 + L3 */
+	MOCS_ENTRY(49,
+			LE_1_UC | LE_TC_1_LLC,
+			L3_3_WB),
+	/* Implicitly enable L1 - HDC:L1 + LLC */
+	MOCS_ENTRY(50,
+			LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+			L3_1_UC),
+	/* Implicitly enable L1 - HDC:L1 */
+	MOCS_ENTRY(51,
+			LE_1_UC | LE_TC_1_LLC,
+			L3_1_UC),
+	/* HW Special Case (CCS) */
+	MOCS_ENTRY(60,
+			LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+			L3_1_UC),
+	/* HW Special Case (Displayable) */
+	MOCS_ENTRY(61,
+			LE_1_UC | LE_TC_1_LLC,
+			L3_3_WB),
+};
 
 enum {
 	HAS_GLOBAL_MOCS = BIT(0),
@@ -444,7 +476,13 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
 
 	memset(table, 0, sizeof(struct drm_i915_mocs_table));
 
-	if (IS_DG1(i915)) {
+	if (IS_ALDERLAKE_S(i915) || IS_ALDERLAKE_P(i915)) {
+		table->size = ARRAY_SIZE(adl_mocs_table);
+		table->table = adl_mocs_table;
+		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
+		table->uc_index = 3;
+		table->unused_entries_index = 2;
+	} else if (IS_DG1(i915)) {
 		table->size = ARRAY_SIZE(dg1_mocs_table);
 		table->table = dg1_mocs_table;
 		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
-- 
2.26.2

