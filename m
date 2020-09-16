Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D62F126C5A9
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 19:17:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5580D6EA83;
	Wed, 16 Sep 2020 17:16:58 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 840D16EA83
 for <Intel-GFX@lists.freedesktop.org>; Wed, 16 Sep 2020 17:16:55 +0000 (UTC)
IronPort-SDR: AVlbYzAWZwBoanj3ZLh7Vx0ADfXIYfj+2ifueZ3reDPa0oIJTqMU7WHwtno0CbX31IpXLrDl8k
 lfnuiJTJ2POA==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="139534273"
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="139534273"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 10:16:54 -0700
IronPort-SDR: QW5N7UdMesOBLZG1IQmRfRCeg04Q+u7k1tUy5SiIWsIvjarSUFLW6vcm5Ldr8+kvzKva7i0X6p
 DwXrIiw7TEeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="287259450"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga007.fm.intel.com with ESMTP; 16 Sep 2020 10:16:54 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 16 Sep 2020 10:16:47 -0700
Message-Id: <20200916171653.2021483-7-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
References: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH 06/12] drm/i915/guc: ADS changes for GuC v42
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

The ADS layout changes significantly with GuC firmware v42. This patch
updates the shared structure (but does not fill in the new tables,
that comes later as part of the GuC submission support). It also adds
better documentation of the layout.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c  | 86 +++++++++++++++------
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h | 24 +++---
 2 files changed, 74 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index a662825f67ad..b2f05139de05 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -10,11 +10,52 @@
 
 /*
  * The Additional Data Struct (ADS) has pointers for different buffers used by
- * the GuC. One single gem object contains the ADS struct itself (guc_ads), the
- * scheduling policies (guc_policies), a structure describing a collection of
- * register sets (guc_mmio_reg_state) and some extra pages for the GuC to save
- * its internal state for sleep.
+ * the GuC. One single gem object contains the ADS struct itself (guc_ads) and
+ * all the extra buffers indirectly linked via the ADS struct's entries.
+ *
+ * Layout of the ADS blob allocated for the GuC:
+ *
+ *      +---------------------------------------+ <== base
+ *      | guc_ads                               |
+ *      +---------------------------------------+
+ *      | guc_policies                          |
+ *      +---------------------------------------+
+ *      | guc_gt_system_info                    |
+ *      +---------------------------------------+
+ *      | guc_clients_info                      |
+ *      +---------------------------------------+
+ *      | guc_ct_pool_entry[size]               |
+ *      +---------------------------------------+
+ *      | padding                               |
+ *      +---------------------------------------+ <== 4K aligned
+ *      | private data                          |
+ *      +---------------------------------------+
+ *      | padding                               |
+ *      +---------------------------------------+ <== 4K aligned
  */
+struct __guc_ads_blob {
+	struct guc_ads ads;
+	struct guc_policies policies;
+	struct guc_gt_system_info system_info;
+	struct guc_clients_info clients_info;
+	struct guc_ct_pool_entry ct_pool[GUC_CT_POOL_SIZE];
+} __packed;
+
+static u32 guc_ads_private_data_size(struct intel_guc *guc)
+{
+	return PAGE_ALIGN(guc->fw.private_data_size);
+}
+
+static u32 guc_ads_private_data_offset(struct intel_guc *guc)
+{
+	return PAGE_ALIGN(sizeof(struct __guc_ads_blob));
+}
+
+static u32 guc_ads_blob_size(struct intel_guc *guc)
+{
+	return guc_ads_private_data_offset(guc) +
+	       guc_ads_private_data_size(guc);
+}
 
 static void guc_policy_init(struct guc_policy *policy)
 {
@@ -75,16 +116,6 @@ static void guc_mapping_table_init(struct intel_gt *gt,
  */
 #define LR_HW_CONTEXT_SIZE	(80 * sizeof(u32))
 
-/* The ads obj includes the struct itself and buffers passed to GuC */
-struct __guc_ads_blob {
-	struct guc_ads ads;
-	struct guc_policies policies;
-	struct guc_mmio_reg_state reg_state;
-	struct guc_gt_system_info system_info;
-	struct guc_clients_info clients_info;
-	struct guc_ct_pool_entry ct_pool[GUC_CT_POOL_SIZE];
-} __packed;
-
 static void __guc_ads_init(struct intel_guc *guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
@@ -140,13 +171,11 @@ static void __guc_ads_init(struct intel_guc *guc)
 
 	/* ADS */
 	blob->ads.scheduler_policies = base + ptr_offset(blob, policies);
-	blob->ads.reg_state_addr = base + ptr_offset(blob, reg_state);
 	blob->ads.gt_system_info = base + ptr_offset(blob, system_info);
 	blob->ads.clients_info = base + ptr_offset(blob, clients_info);
 
 	/* Private Data */
-	blob->ads.private_data = base +
-		PAGE_ALIGN(sizeof(struct __guc_ads_blob));
+	blob->ads.private_data = base + guc_ads_private_data_offset(guc);
 
 	i915_gem_object_flush_map(guc->ads_vma->obj);
 }
@@ -160,16 +189,15 @@ static void __guc_ads_init(struct intel_guc *guc)
  */
 int intel_guc_ads_create(struct intel_guc *guc)
 {
-	u32 size = PAGE_ALIGN(sizeof(struct __guc_ads_blob));
+	u32 size;
 	int ret;
 
 	GEM_BUG_ON(guc->ads_vma);
 
-	size += PAGE_ALIGN(guc->fw.private_data_size);
+	size = guc_ads_blob_size(guc);
 
 	ret = intel_guc_allocate_and_map_vma(guc, size, &guc->ads_vma,
 					     (void **)&guc->ads_blob);
-
 	if (ret)
 		return ret;
 
@@ -183,6 +211,18 @@ void intel_guc_ads_destroy(struct intel_guc *guc)
 	i915_vma_unpin_and_release(&guc->ads_vma, I915_VMA_RELEASE_MAP);
 }
 
+static void guc_ads_private_data_reset(struct intel_guc *guc)
+{
+	u32 size;
+
+	size = guc_ads_private_data_size(guc);
+	if (!size)
+		return;
+
+	memset((void *)guc->ads_blob + guc_ads_private_data_offset(guc), 0,
+	       size);
+}
+
 /**
  * intel_guc_ads_reset() - prepares GuC Additional Data Struct for reuse
  * @guc: intel_guc struct
@@ -195,10 +235,8 @@ void intel_guc_ads_reset(struct intel_guc *guc)
 {
 	if (!guc->ads_vma)
 		return;
+
 	__guc_ads_init(guc);
 
-	if (guc->fw.private_data_size)
-		memset((void *)guc->ads_blob +
-		       PAGE_ALIGN(sizeof(struct __guc_ads_blob)), 0,
-		       PAGE_ALIGN(guc->fw.private_data_size));
+	guc_ads_private_data_reset(guc);
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index f375388e8c50..0cd4a7f7f4cb 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -27,7 +27,7 @@
 #define GUC_MAX_ENGINES_NUM		(GUC_VIDEO_ENGINE2 + 1)
 
 #define GUC_MAX_ENGINE_CLASSES		5
-#define GUC_MAX_INSTANCES_PER_CLASS	16
+#define GUC_MAX_INSTANCES_PER_CLASS	32
 
 #define GUC_DOORBELL_INVALID		256
 
@@ -352,7 +352,6 @@ struct guc_policies {
 /* GuC MMIO reg state struct */
 
 
-#define GUC_REGSET_MAX_REGISTERS	64
 #define GUC_S3_SAVE_SPACE_PAGES		10
 
 struct guc_mmio_reg {
@@ -362,16 +361,17 @@ struct guc_mmio_reg {
 #define GUC_REGSET_MASKED		(1 << 0)
 } __packed;
 
-struct guc_mmio_regset {
-	struct guc_mmio_reg registers[GUC_REGSET_MAX_REGISTERS];
-	u32 values_valid;
-	u32 number_of_registers;
-} __packed;
-
 /* GuC register sets */
-struct guc_mmio_reg_state {
-	struct guc_mmio_regset engine_reg[GUC_MAX_ENGINE_CLASSES][GUC_MAX_INSTANCES_PER_CLASS];
-	u32 reserved[98];
+struct guc_mmio_reg_set {
+	u32 address;
+	union {
+		struct {
+			u32 count:16;
+			u32 reserved1:12;
+			u32 reserved2:4;
+		};
+		u32 count_u32;
+	};
 } __packed;
 
 /* HW info */
@@ -406,7 +406,7 @@ struct guc_clients_info {
 
 /* GuC Additional Data Struct */
 struct guc_ads {
-	u32 reg_state_addr;
+	struct guc_mmio_reg_set reg_state_list[GUC_MAX_ENGINE_CLASSES][GUC_MAX_INSTANCES_PER_CLASS];
 	u32 reserved0;
 	u32 scheduler_policies;
 	u32 gt_system_info;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
