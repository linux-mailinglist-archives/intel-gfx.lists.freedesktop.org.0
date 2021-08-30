Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 658E33FBA18
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 18:26:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7787A89CB5;
	Mon, 30 Aug 2021 16:26:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F0BA89CAD
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 16:26:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10092"; a="279318048"
X-IronPort-AV: E=Sophos;i="5.84,363,1620716400"; d="scan'208";a="279318048"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2021 09:26:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,363,1620716400"; d="scan'208";a="497802557"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by fmsmga008.fm.intel.com with ESMTP; 30 Aug 2021 09:26:05 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Date: Mon, 30 Aug 2021 21:52:37 +0530
Message-Id: <20210830162240.3891502-6-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210830162240.3891502-1-ayaz.siddiqui@intel.com>
References: <20210830162240.3891502-1-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V3 5/8] drm/i915/gt: Initialize unused MOCS
 entries with device specific values
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

Historically we've initialized all undefined/reserved entries in
a platform's MOCS table to the contents of table entry #1 (i.e.,
I915_MOCS_PTE).
Going forward, we can't assume that table entry #1 will always
contain suitable values to use for undefined/reserved table
indices. We'll allow a platform-specific table index to be
selected at table initialization time in these cases.

This new mechanism to select L3 WB entry will be applicable for
all the Gen12+ platforms except TGL and RKL.

Since TGL and RLK are already in production so their mocs settings
are intact to avoid ABI break.

Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_mocs.c | 41 +++++++++++++++-------------
 1 file changed, 22 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 82eafa8d22453..a97cc08e5a395 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -25,6 +25,7 @@ struct drm_i915_mocs_table {
 	unsigned int n_entries;
 	const struct drm_i915_mocs_entry *table;
 	u8 uc_index;
+	u8 unused_entries_index;
 };
 
 enum register_type {
@@ -113,18 +114,25 @@ struct drm_i915_aux_table {
  *
  * Entries not part of the following tables are undefined as far as
  * userspace is concerned and shouldn't be relied upon.  For Gen < 12
- * they will be initialized to PTE. Gen >= 12 onwards don't have a setting for
- * PTE and will be initialized to an invalid value.
+ * they will be initialized to PTE. Gen >= 12 don't have a setting for
+ * PTE and those platforms except TGL/RKL will be initialized L3 WB to
+ * catch accidental use of reserved and unused mocs indexes.
  *
  * The last few entries are reserved by the hardware. For ICL+ they
  * should be initialized according to bspec and never used, for older
  * platforms they should never be written to.
  *
- * NOTE: These tables are part of bspec and defined as part of hardware
+ * NOTE1: These tables are part of bspec and defined as part of hardware
  *       interface for ICL+. For older platforms, they are part of kernel
  *       ABI. It is expected that, for specific hardware platform, existing
  *       entries will remain constant and the table will only be updated by
  *       adding new entries, filling unused positions.
+ *
+ * NOTE2: For GEN >= 12 except TGL and RKL, reserved and unspecified MOCS
+ *       indices have been set to L3 WB. These reserved entries should never
+ *       be used, they may be changed to low performant variants with better
+ *       coherency in the future if more entries are needed.
+ *       For TGL/RKL, all the unspecified MOCS indexes are mapped to L3 UC.
  */
 #define GEN9_MOCS_ENTRIES \
 	MOCS_ENTRY(I915_MOCS_UNCACHED, \
@@ -307,17 +315,9 @@ static const struct drm_i915_mocs_entry icl_mocs_table[] = {
 };
 
 static const struct drm_i915_mocs_entry dg1_mocs_table[] = {
-	/* Error */
-	MOCS_ENTRY(0, 0, L3_0_DIRECT),
 
 	/* UC */
 	MOCS_ENTRY(1, 0, L3_1_UC),
-
-	/* Reserved */
-	MOCS_ENTRY(2, 0, L3_0_DIRECT),
-	MOCS_ENTRY(3, 0, L3_0_DIRECT),
-	MOCS_ENTRY(4, 0, L3_0_DIRECT),
-
 	/* WB - L3 */
 	MOCS_ENTRY(5, 0, L3_3_WB),
 	/* WB - L3 50% */
@@ -469,6 +469,7 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
 		table->table = dg1_mocs_table;
 		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
 		table->uc_index = 1;
+		table->unused_entries_index = 5;
 	} else if (GRAPHICS_VER(i915) >= 12) {
 		table->size  = ARRAY_SIZE(tgl_mocs_table);
 		table->table = tgl_mocs_table;
@@ -600,16 +601,17 @@ int apply_mocs_aux_regs_ctx(struct i915_request *rq)
 }
 
 /*
- * Get control_value from MOCS entry taking into account when it's not used:
- * I915_MOCS_PTE's value is returned in this case.
+ * Get control_value from MOCS entry taking into account when it's not used
+ * then if unused_entries_index is non-zero then its value will be returned
+ * otherwise I915_MOCS_PTE's value is returned in this case.
  */
 static u32 get_entry_control(const struct drm_i915_mocs_table *table,
 			     unsigned int index)
 {
 	if (index < table->size && table->table[index].used)
 		return table->table[index].control_value;
-
-	return table->table[I915_MOCS_PTE].control_value;
+	index = table->unused_entries_index ? : I915_MOCS_PTE;
+	return table->table[index].control_value;
 }
 
 #define for_each_mocs(mocs, t, i) \
@@ -650,16 +652,17 @@ static void init_mocs_table(struct intel_engine_cs *engine,
 }
 
 /*
- * Get l3cc_value from MOCS entry taking into account when it's not used:
- * I915_MOCS_PTE's value is returned in this case.
+ * Get l3cc_value from MOCS entry taking into account when it's not used
+ * then if unused_entries_index is not zero then its value will be returned
+ * otherwise I915_MOCS_PTE's value is returned in this case.
  */
 static u16 get_entry_l3cc(const struct drm_i915_mocs_table *table,
 			  unsigned int index)
 {
 	if (index < table->size && table->table[index].used)
 		return table->table[index].l3cc_value;
-
-	return table->table[I915_MOCS_PTE].l3cc_value;
+	index = table->unused_entries_index ? : I915_MOCS_PTE;
+	return table->table[index].l3cc_value;
 }
 
 static u32 l3cc_combine(u16 low, u16 high)
-- 
2.26.2

