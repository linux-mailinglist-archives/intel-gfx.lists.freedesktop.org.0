Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB2C3ECDCE
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Aug 2021 06:55:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02C0D8995F;
	Mon, 16 Aug 2021 04:55:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBCB989BCD
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Aug 2021 04:55:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10077"; a="215823999"
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="215823999"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2021 21:55:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="422739342"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by orsmga006.jf.intel.com with ESMTP; 15 Aug 2021 21:55:40 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>,
	CQ Tang <cq.tang@intel.com>
Date: Mon, 16 Aug 2021 10:22:25 +0530
Message-Id: <20210816045229.423234-2-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210816045229.423234-1-ayaz.siddiqui@intel.com>
References: <20210816045229.423234-1-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V2 1/5] drm/i915/gt: Add support of mocs
 propagation
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

Now there are lots of Command and registers that require mocs index
programming.
So propagating mocs_index from mocs to gt so that it can be
used directly without having platform-specific checks.

Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Reviewed-by: CQ Tang<cq.tang@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_types.h |  4 ++++
 drivers/gpu/drm/i915/gt/intel_mocs.c     | 10 ++++++++++
 2 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index a81e21bf1bd1a..88601a2d2c229 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -192,6 +192,10 @@ struct intel_gt {
 
 		unsigned long mslice_mask;
 	} info;
+
+	struct i915_mocs_index_gt {
+		u8 uc_index;
+	} mocs;
 };
 
 enum intel_gt_scratch_field {
diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 582c4423b95d6..10cc508c1a4f6 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -22,6 +22,7 @@ struct drm_i915_mocs_table {
 	unsigned int size;
 	unsigned int n_entries;
 	const struct drm_i915_mocs_entry *table;
+	u8 uc_index;
 };
 
 /* Defines for the tables (XXX_MOCS_0 - XXX_MOCS_63) */
@@ -340,6 +341,8 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
 {
 	unsigned int flags;
 
+	memset(table, 0, sizeof(struct drm_i915_mocs_table));
+
 	if (IS_DG1(i915)) {
 		table->size = ARRAY_SIZE(dg1_mocs_table);
 		table->table = dg1_mocs_table;
@@ -504,6 +507,12 @@ static u32 global_mocs_offset(void)
 	return i915_mmio_reg_offset(GEN12_GLOBAL_MOCS(0));
 }
 
+static void set_mocs_index(struct intel_gt *gt,
+			   struct drm_i915_mocs_table *table)
+{
+	gt->mocs.uc_index = table->uc_index;
+}
+
 void intel_mocs_init(struct intel_gt *gt)
 {
 	struct drm_i915_mocs_table table;
@@ -515,6 +524,7 @@ void intel_mocs_init(struct intel_gt *gt)
 	flags = get_mocs_settings(gt->i915, &table);
 	if (flags & HAS_GLOBAL_MOCS)
 		__init_mocs_table(gt->uncore, &table, global_mocs_offset());
+	set_mocs_index(gt, &table);
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
-- 
2.26.2

