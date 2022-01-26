Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 814D049D3B7
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 21:37:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDB3210E98E;
	Wed, 26 Jan 2022 20:36:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DB9110E901;
 Wed, 26 Jan 2022 20:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643229388; x=1674765388;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fqdo8Qx3lC6ixji+P86gIq1aCMVCtnLlM8T1Sfq3SdA=;
 b=N5uXbfjMba/fpzEY05zlCleYmX8/qDM7WYI80UeqWe0iR59DDezweKzu
 jJUFjs6DZJ07iAOPCMDPM2DPVgPuQF9hRbima5p5RbnUOkdhMnyxv/qfa
 NtSzRoUcxw1OHDEz5zM1wsimHa6o9i9zPUhVrb0QFn3W3bhefriy42LRq
 GEXmf+KTB38vtiXKXWfPXqM2jKJc9n0mwWhBfxuNa6N/H4tLZVTmEVS3r
 sOZn7hKpMkpL5n5BFvk63XlTMgerarYJbEboFdNmhqLGJJBn9O8H8ad0B
 RjjvAnGrIVmmMsR0VmVZq1FRa15EH1OE1A0biRv8iYpdbbLakBv+7z5RE w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="333000517"
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="333000517"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 12:36:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="581221540"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 12:36:25 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jan 2022 12:36:59 -0800
Message-Id: <20220126203702.1784589-17-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.35.0
In-Reply-To: <20220126203702.1784589-1-lucas.demarchi@intel.com>
References: <20220126203702.1784589-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 16/19] drm/i915/guc: Use a single pass to
 calculate regset
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The ADS initialitazion was using 2 passes to calculate the regset sent
to GuC to initialize each engine: the first pass to just have the final
object size and the second to set each register in place in the final
gem object.

However in order to maintain an ordered set of registers to pass to guc,
each register needs to be added and moved in the final array. The second
phase may actually happen in IO memory rather than system memory and
accessing IO memory by simply dereferencing the pointer doesn't work on
all architectures. Other places of the ADS initializaition were
converted to use the dma_buf_map API, but here there may be a lot more
accesses to IO memory. So, instead of following that same approach,
convert the regset initialization to calculate the final array in 1
pass and in the second pass that array is just copied to its final
location, updating the pointers for each engine written to the ADS blob.

One important thing is that struct temp_regset now have
different semantics: `registers` continues to track the registers of a
single engine, however the other fields are updated together, according
to the newly added `storage`, which tracks the memory allocated for
all the registers. So rename some of these fields and add a
__mmio_reg_add(): this function (possibly) allocates memory and operates
on the storage pointer while guc_mmio_reg_add() continues to manage the
registers pointer.

On a Tiger Lake system using enable_guc=3, the following log message is
now seen:

	[  187.334310] i915 0000:00:02.0: [drm:intel_guc_ads_create [i915]] Used 4 KB for temporary ADS regset

This change has also been tested on an ARM64 host with DG2 and other
discrete graphics cards.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h     |   7 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 117 +++++++++++++--------
 2 files changed, 79 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index e2e0df1c3d91..4c852eee3ad8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -152,6 +152,13 @@ struct intel_guc {
 	struct dma_buf_map ads_map;
 	/** @ads_regset_size: size of the save/restore regsets in the ADS */
 	u32 ads_regset_size;
+	/**
+	 * @ads_regset_count: number of save/restore registers in the ADS for
+	 * each engine
+	 */
+	u32 ads_regset_count[I915_NUM_ENGINES];
+	/** @ads_regset: save/restore regsets in the ADS */
+	struct guc_mmio_reg *ads_regset;
 	/** @ads_golden_ctxt_size: size of the golden contexts in the ADS */
 	u32 ads_golden_ctxt_size;
 	/** @ads_engine_usage_size: size of engine usage in the ADS */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 73ca34de44f7..390101ee3661 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -226,14 +226,13 @@ static void guc_mapping_table_init(struct intel_gt *gt,
 
 /*
  * The save/restore register list must be pre-calculated to a temporary
- * buffer of driver defined size before it can be generated in place
- * inside the ADS.
+ * buffer before it can be copied inside the ADS.
  */
-#define MAX_MMIO_REGS	128	/* Arbitrary size, increase as needed */
 struct temp_regset {
 	struct guc_mmio_reg *registers;
-	u32 used;
-	u32 size;
+	struct guc_mmio_reg *storage;
+	u32 storage_used;
+	u32 storage_max;
 };
 
 static int guc_mmio_reg_cmp(const void *a, const void *b)
@@ -244,18 +243,44 @@ static int guc_mmio_reg_cmp(const void *a, const void *b)
 	return (int)ra->offset - (int)rb->offset;
 }
 
+static struct guc_mmio_reg * __must_check
+__mmio_reg_add(struct temp_regset *regset, struct guc_mmio_reg *reg)
+{
+	u32 pos = regset->storage_used;
+	struct guc_mmio_reg *slot;
+
+	if (pos >= regset->storage_max) {
+		size_t size = ALIGN((pos + 1) * sizeof(*slot), PAGE_SIZE);
+		struct guc_mmio_reg *r = krealloc(regset->storage,
+						  size, GFP_KERNEL);
+		if (!r) {
+			WARN_ONCE(1, "Incomplete regset list: can't add register (%d)\n",
+				  -ENOMEM);
+			return ERR_PTR(-ENOMEM);
+		}
+
+		regset->registers = r + (regset->registers - regset->storage);
+		regset->storage = r;
+		regset->storage_max = size / sizeof(*slot);
+	}
+
+	slot = &regset->storage[pos];
+	regset->storage_used++;
+	*slot = *reg;
+
+	return slot;
+}
+
 static long __must_check guc_mmio_reg_add(struct temp_regset *regset,
 					  u32 offset, u32 flags)
 {
-	u32 count = regset->used;
+	u32 count = regset->storage_used - (regset->registers - regset->storage);
 	struct guc_mmio_reg reg = {
 		.offset = offset,
 		.flags = flags,
 	};
 	struct guc_mmio_reg *slot;
 
-	GEM_BUG_ON(count >= regset->size);
-
 	/*
 	 * The mmio list is built using separate lists within the driver.
 	 * It's possible that at some point we may attempt to add the same
@@ -266,9 +291,9 @@ static long __must_check guc_mmio_reg_add(struct temp_regset *regset,
 		    sizeof(reg), guc_mmio_reg_cmp))
 		return 0;
 
-	slot = &regset->registers[count];
-	regset->used++;
-	*slot = reg;
+	slot = __mmio_reg_add(regset, &reg);
+	if (IS_ERR(slot))
+		return PTR_ERR(slot);
 
 	while (slot-- > regset->registers) {
 		GEM_BUG_ON(slot[0].offset == slot[1].offset);
@@ -295,7 +320,11 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
 	unsigned int i;
 	int ret = 0;
 
-	regset->used = 0;
+	/*
+	 * Each engine's registers point to a new start relative to
+	 * storage
+	 */
+	regset->registers = regset->storage + regset->storage_used;
 
 	ret |= GUC_MMIO_REG_ADD(regset, RING_MODE_GEN7(base), true);
 	ret |= GUC_MMIO_REG_ADD(regset, RING_HWS_PGA(base), false);
@@ -317,32 +346,28 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
 	return ret ? -1 : 0;
 }
 
-static int guc_mmio_reg_state_query(struct intel_guc *guc)
+static long guc_mmio_reg_state_create(struct intel_guc *guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
-	struct temp_regset temp_set;
-	u32 total;
+	struct temp_regset temp_set = {};
+	long total = 0;
 
-	/*
-	 * Need to actually build the list in order to filter out
-	 * duplicates and other such data dependent constructions.
-	 */
-	temp_set.size = MAX_MMIO_REGS;
-	temp_set.registers = kmalloc_array(temp_set.size,
-					   sizeof(*temp_set.registers),
-					   GFP_KERNEL);
-	if (!temp_set.registers)
-		return -ENOMEM;
-
-	total = 0;
 	for_each_engine(engine, gt, id) {
-		guc_mmio_regset_init(&temp_set, engine);
-		total += temp_set.used;
+		u32 used = temp_set.storage_used;
+
+		if (guc_mmio_regset_init(&temp_set, engine) < 0)
+			return -1;
+
+		guc->ads_regset_count[id] = temp_set.storage_used - used;
+		total += guc->ads_regset_count[id];
 	}
 
-	kfree(temp_set.registers);
+	guc->ads_regset = temp_set.storage;
+
+	drm_dbg(&guc_to_gt(guc)->i915->drm, "Used %lu KB for temporary ADS regset\n",
+		(temp_set.storage_max * sizeof(struct guc_mmio_reg)) >> 10);
 
 	return total * sizeof(struct guc_mmio_reg);
 }
@@ -352,40 +377,38 @@ static void guc_mmio_reg_state_init(struct intel_guc *guc,
 {
 	struct intel_gt *gt = guc_to_gt(guc);
 	struct intel_engine_cs *engine;
+	struct guc_mmio_reg *ads_registers;
 	enum intel_engine_id id;
-	struct temp_regset temp_set;
-	struct guc_mmio_reg_set *ads_reg_set;
 	u32 addr_ggtt, offset;
-	u8 guc_class;
 
 	offset = guc_ads_regset_offset(guc);
 	addr_ggtt = intel_guc_ggtt_offset(guc, guc->ads_vma) + offset;
-	temp_set.registers = (struct guc_mmio_reg *)(((u8 *)blob) + offset);
-	temp_set.size = guc->ads_regset_size / sizeof(temp_set.registers[0]);
+	ads_registers = (struct guc_mmio_reg *)(((u8 *)blob) + offset);
+
+	memcpy(ads_registers, guc->ads_regset, guc->ads_regset_size);
 
 	for_each_engine(engine, gt, id) {
+		u32 count = guc->ads_regset_count[id];
+		struct guc_mmio_reg_set *ads_reg_set;
+		u8 guc_class;
+
 		/* Class index is checked in class converter */
 		GEM_BUG_ON(engine->instance >= GUC_MAX_INSTANCES_PER_CLASS);
 
 		guc_class = engine_class_to_guc_class(engine->class);
 		ads_reg_set = &blob->ads.reg_state_list[guc_class][engine->instance];
 
-		guc_mmio_regset_init(&temp_set, engine);
-		if (!temp_set.used) {
+		if (!count) {
 			ads_reg_set->address = 0;
 			ads_reg_set->count = 0;
 			continue;
 		}
 
 		ads_reg_set->address = addr_ggtt;
-		ads_reg_set->count = temp_set.used;
+		ads_reg_set->count = count;
 
-		temp_set.size -= temp_set.used;
-		temp_set.registers += temp_set.used;
-		addr_ggtt += temp_set.used * sizeof(struct guc_mmio_reg);
+		addr_ggtt += count * sizeof(struct guc_mmio_reg);
 	}
-
-	GEM_BUG_ON(temp_set.size);
 }
 
 static void fill_engine_enable_masks(struct intel_gt *gt,
@@ -634,8 +657,11 @@ int intel_guc_ads_create(struct intel_guc *guc)
 
 	GEM_BUG_ON(guc->ads_vma);
 
-	/* Need to calculate the reg state size dynamically: */
-	ret = guc_mmio_reg_state_query(guc);
+	/*
+	 * Create reg state size dynamically on system memory to be copied to
+	 * the final ads blob on gt init/reset
+	 */
+	ret = guc_mmio_reg_state_create(guc);
 	if (ret < 0)
 		return ret;
 	guc->ads_regset_size = ret;
@@ -681,6 +707,7 @@ void intel_guc_ads_destroy(struct intel_guc *guc)
 	i915_vma_unpin_and_release(&guc->ads_vma, I915_VMA_RELEASE_MAP);
 	guc->ads_blob = NULL;
 	dma_buf_map_clear(&guc->ads_map);
+	kfree(guc->ads_regset);
 }
 
 static void guc_ads_private_data_reset(struct intel_guc *guc)
-- 
2.35.0

