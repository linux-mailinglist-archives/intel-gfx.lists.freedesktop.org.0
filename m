Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 901E14008C1
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Sep 2021 02:36:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2E646E8EE;
	Sat,  4 Sep 2021 00:35:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6898F6E8EA;
 Sat,  4 Sep 2021 00:35:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10096"; a="216404815"
X-IronPort-AV: E=Sophos;i="5.85,266,1624345200"; d="scan'208";a="216404815"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 17:35:53 -0700
X-IronPort-AV: E=Sophos;i="5.85,266,1624345200"; d="scan'208";a="511701403"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 17:35:53 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Stuart Summers <stuart.summers@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Date: Fri,  3 Sep 2021 17:35:43 -0700
Message-Id: <20210904003544.2422282-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210904003544.2422282-1-matthew.d.roper@intel.com>
References: <20210904003544.2422282-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/xehpsdv: Define MOCS table for
 XeHP SDV
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

From: Lucas De Marchi <lucas.demarchi@intel.com>

Like DG1, XeHP SDV doesn't have LLC/eDRAM control values due to being a
dgfx card. XeHP SDV adds 2 more bits: L3_GLBGO to "push the Go point to
memory for L3 destined transaction" and L3_LKP to "enable Lookup for
uncacheable accesses".

Bspec: 45101
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Stuart Summers <stuart.summers@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_mocs.c | 35 +++++++++++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index e96afd7beb49..133cfe07cb9f 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -42,6 +42,8 @@ struct drm_i915_mocs_table {
 #define L3_ESC(value)		((value) << 0)
 #define L3_SCC(value)		((value) << 1)
 #define _L3_CACHEABILITY(value)	((value) << 4)
+#define L3_GLBGO(value)		((value) << 6)
+#define L3_LKUP(value)		((value) << 7)
 
 /* Helper defines */
 #define GEN9_NUM_MOCS_ENTRIES	64  /* 63-64 are reserved, but configured. */
@@ -315,6 +317,31 @@ static const struct drm_i915_mocs_entry dg1_mocs_table[] = {
 	MOCS_ENTRY(63, 0, L3_1_UC),
 };
 
+static const struct drm_i915_mocs_entry xehpsdv_mocs_table[] = {
+	/* wa_1608975824 */
+	MOCS_ENTRY(0, 0, L3_3_WB | L3_LKUP(1)),
+
+	/* UC - Coherent; GO:L3 */
+	MOCS_ENTRY(1, 0, L3_1_UC | L3_LKUP(1)),
+	/* UC - Coherent; GO:Memory */
+	MOCS_ENTRY(2, 0, L3_1_UC | L3_GLBGO(1) | L3_LKUP(1)),
+	/* UC - Non-Coherent; GO:Memory */
+	MOCS_ENTRY(3, 0, L3_1_UC | L3_GLBGO(1)),
+	/* UC - Non-Coherent; GO:L3 */
+	MOCS_ENTRY(4, 0, L3_1_UC),
+
+	/* WB */
+	MOCS_ENTRY(5, 0, L3_3_WB | L3_LKUP(1)),
+
+	/* HW Reserved - SW program but never use. */
+	MOCS_ENTRY(48, 0, L3_3_WB | L3_LKUP(1)),
+	MOCS_ENTRY(49, 0, L3_1_UC | L3_LKUP(1)),
+	MOCS_ENTRY(60, 0, L3_1_UC),
+	MOCS_ENTRY(61, 0, L3_1_UC),
+	MOCS_ENTRY(62, 0, L3_1_UC),
+	MOCS_ENTRY(63, 0, L3_1_UC),
+};
+
 enum {
 	HAS_GLOBAL_MOCS = BIT(0),
 	HAS_ENGINE_MOCS = BIT(1),
@@ -344,7 +371,13 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
 	memset(table, 0, sizeof(struct drm_i915_mocs_table));
 
 	table->unused_entries_index = I915_MOCS_PTE;
-	if (IS_DG1(i915)) {
+	if (IS_XEHPSDV(i915)) {
+		table->size = ARRAY_SIZE(xehpsdv_mocs_table);
+		table->table = xehpsdv_mocs_table;
+		table->uc_index = 2;
+		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
+		table->unused_entries_index = 5;
+	} else if (IS_DG1(i915)) {
 		table->size = ARRAY_SIZE(dg1_mocs_table);
 		table->table = dg1_mocs_table;
 		table->uc_index = 1;
-- 
2.25.4

