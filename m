Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B40E66CD35
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jan 2023 18:34:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 907B310E470;
	Mon, 16 Jan 2023 17:34:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0783D10E470
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Jan 2023 17:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673890470; x=1705426470;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OaqdPqOIr71WE8Oan6TKJC02DxiOww5PRbmnWXsbd1Q=;
 b=gXf04Q1HGvc5OOJb9XI21N3QdU+ZkgUEeB5TGv6viJuFAmuQNCb3CgGV
 zP0vdI2ueuL1j9em4hhDGZAIVEeO8a6PPPpmS37tpzamvPkYvW2uyq+hm
 AKCZYAXQmvOXcL64M8W8EnmmQpbrE7t6seLHMr2raL+3XNbHNYpfDYGaw
 koFZn6dL4biYXTWom85xRgQttOJfyQNgUj5/lVgXU+uED0yVXhrqhXCof
 qgxhaUL8wR5tY9M0WfHSWw+xKcCZrwDsVyz8Uf0XbBYEGl6A74WCv5leW
 zmOYtmEkYukDSsTbjtaKjsxArgKyQqymEj9Dvr+2jggjMq8t/JByM6h3V Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="326569827"
X-IronPort-AV: E=Sophos;i="5.97,221,1669104000"; d="scan'208";a="326569827"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 09:34:27 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="987868267"
X-IronPort-AV: E=Sophos;i="5.97,221,1669104000"; d="scan'208";a="987868267"
Received: from amakarev-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.13.137])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 09:34:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Jan 2023 19:34:21 +0200
Message-Id: <20230116173422.1858527-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: add struct i915_dsm to wrap dsm
 members together
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Wrap the stolen memory related struct drm_i915_private members (dsm,
dsm_reserved, and stolen_usable_size) together in a a new struct
i915_dsm.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c      | 10 ++--
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  2 +-
 .../drm/i915/display/intel_plane_initial.c    |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c    | 36 ++++++-------
 drivers/gpu/drm/i915/gt/intel_rc6.c           | 12 ++---
 drivers/gpu/drm/i915/gt/selftest_reset.c      |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               | 53 +++++++++++--------
 drivers/gpu/drm/i915/selftests/i915_gem.c     |  4 +-
 8 files changed, 64 insertions(+), 57 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index c508dcf415b4..b507ff944864 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -331,15 +331,15 @@ static void i8xx_fbc_program_cfb(struct intel_fbc *fbc)
 {
 	struct drm_i915_private *i915 = fbc->i915;
 
-	GEM_BUG_ON(range_overflows_end_t(u64, i915->dsm.start,
+	GEM_BUG_ON(range_overflows_end_t(u64, i915->dsm.stolen.start,
 					 fbc->compressed_fb.start, U32_MAX));
-	GEM_BUG_ON(range_overflows_end_t(u64, i915->dsm.start,
+	GEM_BUG_ON(range_overflows_end_t(u64, i915->dsm.stolen.start,
 					 fbc->compressed_llb.start, U32_MAX));
 
 	intel_de_write(i915, FBC_CFB_BASE,
-		       i915->dsm.start + fbc->compressed_fb.start);
+		       i915->dsm.stolen.start + fbc->compressed_fb.start);
 	intel_de_write(i915, FBC_LL_BASE,
-		       i915->dsm.start + fbc->compressed_llb.start);
+		       i915->dsm.stolen.start + fbc->compressed_llb.start);
 }
 
 static const struct intel_fbc_funcs i8xx_fbc_funcs = {
@@ -712,7 +712,7 @@ static u64 intel_fbc_stolen_end(struct drm_i915_private *i915)
 	 * underruns, even if that range is not reserved by the BIOS. */
 	if (IS_BROADWELL(i915) ||
 	    (DISPLAY_VER(i915) == 9 && !IS_BROXTON(i915)))
-		end = resource_size(&i915->dsm) - 8 * 1024 * 1024;
+		end = resource_size(&i915->dsm.stolen) - 8 * 1024 * 1024;
 	else
 		end = U64_MAX;
 
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index bbdb98d7c96e..19f3b5d92a55 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -170,7 +170,7 @@ static int intelfb_alloc(struct drm_fb_helper *helper,
 		 * important and we should probably use that space with FBC or other
 		 * features.
 		 */
-		if (size * 2 < dev_priv->stolen_usable_size)
+		if (size * 2 < dev_priv->dsm.usable_size)
 			obj = i915_gem_object_create_stolen(dev_priv, size);
 		if (IS_ERR(obj))
 			obj = i915_gem_object_create_shmem(dev_priv, size);
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index 76be796df255..bb6ea7de5c61 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -107,7 +107,7 @@ initial_plane_vma(struct drm_i915_private *i915,
 	 */
 	if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
 	    mem == i915->mm.stolen_region &&
-	    size * 2 > i915->stolen_usable_size)
+	    size * 2 > i915->dsm.usable_size)
 		return NULL;
 
 	obj = i915_gem_object_create_region_at(mem, phys_base, size, 0);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index bc9521078807..de873498d95b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -211,7 +211,7 @@ static void g4x_get_stolen_reserved(struct drm_i915_private *i915,
 					IS_GM45(i915) ?
 					CTG_STOLEN_RESERVED :
 					ELK_STOLEN_RESERVED);
-	resource_size_t stolen_top = i915->dsm.end + 1;
+	resource_size_t stolen_top = i915->dsm.stolen.end + 1;
 
 	drm_dbg(&i915->drm, "%s_STOLEN_RESERVED = %08x\n",
 		IS_GM45(i915) ? "CTG" : "ELK", reg_val);
@@ -276,7 +276,7 @@ static void vlv_get_stolen_reserved(struct drm_i915_private *i915,
 				    resource_size_t *size)
 {
 	u32 reg_val = intel_uncore_read(uncore, GEN6_STOLEN_RESERVED);
-	resource_size_t stolen_top = i915->dsm.end + 1;
+	resource_size_t stolen_top = i915->dsm.stolen.end + 1;
 
 	drm_dbg(&i915->drm, "GEN6_STOLEN_RESERVED = %08x\n", reg_val);
 
@@ -365,7 +365,7 @@ static void bdw_get_stolen_reserved(struct drm_i915_private *i915,
 				    resource_size_t *size)
 {
 	u32 reg_val = intel_uncore_read(uncore, GEN6_STOLEN_RESERVED);
-	resource_size_t stolen_top = i915->dsm.end + 1;
+	resource_size_t stolen_top = i915->dsm.stolen.end + 1;
 
 	drm_dbg(&i915->drm, "GEN6_STOLEN_RESERVED = %08x\n", reg_val);
 
@@ -414,7 +414,7 @@ static void icl_get_stolen_reserved(struct drm_i915_private *i915,
 }
 
 /*
- * Initialize i915->dsm_reserved to contain the reserved space within the Data
+ * Initialize i915->dsm.reserved to contain the reserved space within the Data
  * Stolen Memory. This is a range on the top of DSM that is reserved, not to
  * be used by driver, so must be excluded from the region passed to the
  * allocator later. In the spec this is also called as WOPCM.
@@ -430,7 +430,7 @@ static int init_reserved_stolen(struct drm_i915_private *i915)
 	resource_size_t reserved_size;
 	int ret = 0;
 
-	stolen_top = i915->dsm.end + 1;
+	stolen_top = i915->dsm.stolen.end + 1;
 	reserved_base = stolen_top;
 	reserved_size = 0;
 
@@ -471,13 +471,13 @@ static int init_reserved_stolen(struct drm_i915_private *i915)
 		goto bail_out;
 	}
 
-	i915->dsm_reserved =
+	i915->dsm.reserved =
 		(struct resource)DEFINE_RES_MEM(reserved_base, reserved_size);
 
-	if (!resource_contains(&i915->dsm, &i915->dsm_reserved)) {
+	if (!resource_contains(&i915->dsm.stolen, &i915->dsm.reserved)) {
 		drm_err(&i915->drm,
 			"Stolen reserved area %pR outside stolen memory %pR\n",
-			&i915->dsm_reserved, &i915->dsm);
+			&i915->dsm.reserved, &i915->dsm.stolen);
 		ret = -EINVAL;
 		goto bail_out;
 	}
@@ -485,7 +485,7 @@ static int init_reserved_stolen(struct drm_i915_private *i915)
 	return 0;
 
 bail_out:
-	i915->dsm_reserved =
+	i915->dsm.reserved =
 		(struct resource)DEFINE_RES_MEM(reserved_base, 0);
 
 	return ret;
@@ -517,27 +517,27 @@ static int i915_gem_init_stolen(struct intel_memory_region *mem)
 	if (request_smem_stolen(i915, &mem->region))
 		return -ENOSPC;
 
-	i915->dsm = mem->region;
+	i915->dsm.stolen = mem->region;
 
 	if (init_reserved_stolen(i915))
 		return -ENOSPC;
 
 	/* Exclude the reserved region from driver use */
-	mem->region.end = i915->dsm_reserved.start - 1;
+	mem->region.end = i915->dsm.reserved.start - 1;
 	mem->io_size = min(mem->io_size, resource_size(&mem->region));
 
-	i915->stolen_usable_size = resource_size(&mem->region);
+	i915->dsm.usable_size = resource_size(&mem->region);
 
 	drm_dbg(&i915->drm,
 		"Memory reserved for graphics device: %lluK, usable: %lluK\n",
-		(u64)resource_size(&i915->dsm) >> 10,
-		(u64)i915->stolen_usable_size >> 10);
+		(u64)resource_size(&i915->dsm.stolen) >> 10,
+		(u64)i915->dsm.usable_size >> 10);
 
-	if (i915->stolen_usable_size == 0)
+	if (i915->dsm.usable_size == 0)
 		return -ENOSPC;
 
 	/* Basic memrange allocator for stolen space. */
-	drm_mm_init(&i915->mm.stolen, 0, i915->stolen_usable_size);
+	drm_mm_init(&i915->mm.stolen, 0, i915->dsm.usable_size);
 
 	return 0;
 }
@@ -587,7 +587,7 @@ i915_pages_create_for_stolen(struct drm_device *dev,
 	struct sg_table *st;
 	struct scatterlist *sg;
 
-	GEM_BUG_ON(range_overflows(offset, size, resource_size(&i915->dsm)));
+	GEM_BUG_ON(range_overflows(offset, size, resource_size(&i915->dsm.stolen)));
 
 	/* We hide that we have no struct page backing our stolen object
 	 * by wrapping the contiguous physical allocation with a fake
@@ -607,7 +607,7 @@ i915_pages_create_for_stolen(struct drm_device *dev,
 	sg->offset = 0;
 	sg->length = size;
 
-	sg_dma_address(sg) = (dma_addr_t)i915->dsm.start + offset;
+	sg_dma_address(sg) = (dma_addr_t)i915->dsm.stolen.start + offset;
 	sg_dma_len(sg) = size;
 
 	return st;
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 2ee4051e4d96..5c91622dfca4 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -301,7 +301,7 @@ static int chv_rc6_init(struct intel_rc6 *rc6)
 	pcbr = intel_uncore_read(uncore, VLV_PCBR);
 	if ((pcbr >> VLV_PCBR_ADDR_SHIFT) == 0) {
 		drm_dbg(&i915->drm, "BIOS didn't set up PCBR, fixing up\n");
-		paddr = i915->dsm.end + 1 - pctx_size;
+		paddr = i915->dsm.stolen.end + 1 - pctx_size;
 		GEM_BUG_ON(paddr > U32_MAX);
 
 		pctx_paddr = (paddr & ~4095);
@@ -325,7 +325,7 @@ static int vlv_rc6_init(struct intel_rc6 *rc6)
 		/* BIOS set it up already, grab the pre-alloc'd space */
 		resource_size_t pcbr_offset;
 
-		pcbr_offset = (pcbr & ~4095) - i915->dsm.start;
+		pcbr_offset = (pcbr & ~4095) - i915->dsm.stolen.start;
 		pctx = i915_gem_object_create_region_at(i915->mm.stolen_region,
 							pcbr_offset,
 							pctx_size,
@@ -354,10 +354,10 @@ static int vlv_rc6_init(struct intel_rc6 *rc6)
 	}
 
 	GEM_BUG_ON(range_overflows_end_t(u64,
-					 i915->dsm.start,
+					 i915->dsm.stolen.start,
 					 pctx->stolen->start,
 					 U32_MAX));
-	pctx_paddr = i915->dsm.start + pctx->stolen->start;
+	pctx_paddr = i915->dsm.stolen.start + pctx->stolen->start;
 	intel_uncore_write(uncore, VLV_PCBR, pctx_paddr);
 
 out:
@@ -448,8 +448,8 @@ static bool bxt_check_bios_rc6_setup(struct intel_rc6 *rc6)
 	 */
 	rc6_ctx_base =
 		intel_uncore_read(uncore, RC6_CTX_BASE) & RC6_CTX_BASE_MASK;
-	if (!(rc6_ctx_base >= i915->dsm_reserved.start &&
-	      rc6_ctx_base + PAGE_SIZE < i915->dsm_reserved.end)) {
+	if (!(rc6_ctx_base >= i915->dsm.reserved.start &&
+	      rc6_ctx_base + PAGE_SIZE < i915->dsm.reserved.end)) {
 		drm_dbg(&i915->drm, "RC6 Base address not as expected.\n");
 		enable_rc6 = false;
 	}
diff --git a/drivers/gpu/drm/i915/gt/selftest_reset.c b/drivers/gpu/drm/i915/gt/selftest_reset.c
index 37c38bdd5f47..a9e0a91bc0e0 100644
--- a/drivers/gpu/drm/i915/gt/selftest_reset.c
+++ b/drivers/gpu/drm/i915/gt/selftest_reset.c
@@ -20,7 +20,7 @@ __igt_reset_stolen(struct intel_gt *gt,
 		   const char *msg)
 {
 	struct i915_ggtt *ggtt = gt->ggtt;
-	const struct resource *dsm = &gt->i915->dsm;
+	const struct resource *dsm = &gt->i915->dsm.stolen;
 	resource_size_t num_pages, page;
 	struct intel_engine_cs *engine;
 	intel_wakeref_t wakeref;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 72ca62c22797..13fab81a39b8 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -86,6 +86,35 @@ struct intel_pxp;
 
 #define GEM_QUIRK_PIN_SWIZZLED_PAGES	BIT(0)
 
+struct i915_dsm {
+	/*
+	 * Data Stolen Memory - aka "i915 stolen memory" gives us the start and
+	 * end of stolen which we can optionally use to create GEM objects
+	 * backed by stolen memory. Note that stolen_usable_size tells us
+	 * exactly how much of this we are actually allowed to use, given that
+	 * some portion of it is in fact reserved for use by hardware functions.
+	 */
+	struct resource stolen;
+
+	/*
+	 * Reserved portion of Data Stolen Memory.
+	 */
+	struct resource reserved;
+
+	/*
+	 * Stolen memory is segmented in hardware with different portions
+	 * offlimits to certain functions.
+	 *
+	 * The drm_mm is initialised to the total accessible range, as found
+	 * from the PCI config. On Broadwell+, this is further restricted to
+	 * avoid the first page! The upper end of stolen memory is reserved for
+	 * hardware functions and similarly removed from the accessible range.
+	 *
+	 * Total size minus reserved ranges.
+	 */
+	resource_size_t usable_size;
+};
+
 struct i915_suspend_saved_registers {
 	u32 saveDSPARB;
 	u32 saveSWF0[16];
@@ -205,29 +234,7 @@ struct drm_i915_private {
 	struct intel_runtime_info __runtime; /* Use RUNTIME_INFO() to access. */
 	struct intel_driver_caps caps;
 
-	/**
-	 * Data Stolen Memory - aka "i915 stolen memory" gives us the start and
-	 * end of stolen which we can optionally use to create GEM objects
-	 * backed by stolen memory. Note that stolen_usable_size tells us
-	 * exactly how much of this we are actually allowed to use, given that
-	 * some portion of it is in fact reserved for use by hardware functions.
-	 */
-	struct resource dsm;
-	/**
-	 * Reseved portion of Data Stolen Memory
-	 */
-	struct resource dsm_reserved;
-
-	/*
-	 * Stolen memory is segmented in hardware with different portions
-	 * offlimits to certain functions.
-	 *
-	 * The drm_mm is initialised to the total accessible range, as found
-	 * from the PCI config. On Broadwell+, this is further restricted to
-	 * avoid the first page! The upper end of stolen memory is reserved for
-	 * hardware functions and similarly removed from the accessible range.
-	 */
-	resource_size_t stolen_usable_size;	/* Total size minus reserved ranges */
+	struct i915_dsm dsm;
 
 	struct intel_uncore uncore;
 	struct intel_uncore_mmio_debug mmio_debug;
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem.c b/drivers/gpu/drm/i915/selftests/i915_gem.c
index 2535b9684bd1..d91d0ade8abd 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem.c
@@ -44,7 +44,7 @@ static void trash_stolen(struct drm_i915_private *i915)
 {
 	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
 	const u64 slot = ggtt->error_capture.start;
-	const resource_size_t size = resource_size(&i915->dsm);
+	const resource_size_t size = resource_size(&i915->dsm.stolen);
 	unsigned long page;
 	u32 prng = 0x12345678;
 
@@ -53,7 +53,7 @@ static void trash_stolen(struct drm_i915_private *i915)
 		return;
 
 	for (page = 0; page < size; page += PAGE_SIZE) {
-		const dma_addr_t dma = i915->dsm.start + page;
+		const dma_addr_t dma = i915->dsm.stolen.start + page;
 		u32 __iomem *s;
 		int x;
 
-- 
2.34.1

