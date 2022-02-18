Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC214BBFE0
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 19:48:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BC3C10E8C8;
	Fri, 18 Feb 2022 18:48:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8011410E8C8;
 Fri, 18 Feb 2022 18:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645210090; x=1676746090;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hRIILt9tJhC26kqrnWf/jfBds5O9Mz0NUy2C+A3WfSs=;
 b=BHEB4KhdEK6PoxntAvFSiScJatAD0H4AwMMH9pd7dDuTxtLNzfxNhdjT
 G3/Bx86eZLHJ/LEfJQSogNNtxPgbCttVcponU3A9Dv+xY2btywB6/v8m1
 1bMRVMOLnCZ8yhPeSk51yR1Ga7bXQZbYuVTKXPNLJhE1mtHL1PDE6lbZy
 bBoDBvOmNBMfoC7OfU/2nIrrAxPFC3D3lLxs08vJEVECih3OSfW10T4PT
 /21M29SmRIK0Sx5DPm9Bqw0eYqMHhh6Yds/1sXbjpZXmKNNFiDXR9yYfY
 NM68gc1sazKNVoLgkt5uPFmHVZsrgnvHkKxTTxfKUXXZnhwzg9L7hK/8P g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10262"; a="238593023"
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="238593023"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 10:48:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="489642320"
Received: from ramaling-i9x.iind.intel.com ([10.203.144.108])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 10:48:07 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Date: Sat, 19 Feb 2022 00:17:48 +0530
Message-Id: <20220218184752.7524-12-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220218184752.7524-1-ramalingam.c@intel.com>
References: <20220218184752.7524-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/15] drm/i915/migrate: add acceleration
 support for DG2
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
 lucas.demarchi@intel.com, Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matthew Auld <matthew.auld@intel.com>

This is all kinds of awkward since we now have to contend with using 64K
GTT pages when mapping anything in LMEM(including the page-tables
themselves).

v2(Ram)
  - Document the ppGTT layout and add a better description for the
    different windows.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Ramalingam C <ramalingam.c@intel.com>
Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_migrate.c | 196 ++++++++++++++++++++----
 1 file changed, 164 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index 18b44af56969..20444d6ceb3c 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -32,6 +32,38 @@ static bool engine_supports_migration(struct intel_engine_cs *engine)
 	return true;
 }
 
+static void xehpsdv_toggle_pdes(struct i915_address_space *vm,
+				struct i915_page_table *pt,
+				void *data)
+{
+	struct insert_pte_data *d = data;
+
+	/*
+	 * Insert a dummy PTE into every PT that will map to LMEM to ensure
+	 * we have a correctly setup PDE structure for later use.
+	 */
+	vm->insert_page(vm, 0, d->offset, I915_CACHE_NONE, PTE_LM);
+	GEM_BUG_ON(!pt->is_compact);
+	d->offset += SZ_2M;
+}
+
+static void xehpsdv_insert_pte(struct i915_address_space *vm,
+			       struct i915_page_table *pt,
+			       void *data)
+{
+	struct insert_pte_data *d = data;
+
+	/*
+	 * We are playing tricks here, since the actual pt, from the hw
+	 * pov, is only 256bytes with 32 entries, or 4096bytes with 512
+	 * entries, but we are still guaranteed that the physical
+	 * alignment is 64K underneath for the pt, and we are careful
+	 * not to access the space in the void.
+	 */
+	vm->insert_page(vm, px_dma(pt), d->offset, I915_CACHE_NONE, PTE_LM);
+	d->offset += SZ_64K;
+}
+
 static void insert_pte(struct i915_address_space *vm,
 		       struct i915_page_table *pt,
 		       void *data)
@@ -74,7 +106,32 @@ static struct i915_address_space *migrate_vm(struct intel_gt *gt)
 	 * i.e. within the same non-preemptible window so that we do not switch
 	 * to another migration context that overwrites the PTE.
 	 *
-	 * TODO: Add support for huge LMEM PTEs
+	 * This changes quite a bit on platforms with HAS_64K_PAGES support,
+	 * where we instead have three windows, each CHUNK_SIZE in size. The
+	 * first is reserved for mapping system-memory, and that just uses the
+	 * 512 entry layout using 4K GTT pages. The other two windows just map
+	 * lmem pages and must use the new compact 32 entry layout using 64K GTT
+	 * pages, which ensures we can address any lmem object that the user
+	 * throws at us. We then also use the xehpsdv_toggle_pdes as a way of
+	 * just toggling the PDE bit(GEN12_PDE_64K) for us, to enable the
+	 * compact layout for each of these page-tables, that fall within the
+	 * [CHUNK_SIZE, 3 * CHUNK_SIZE) range.
+	 *
+	 * We lay the ppGTT out as:
+	 *
+	 * [0, CHUNK_SZ) -> first window/object, maps smem
+	 * [CHUNK_SZ, 2 * CHUNK_SZ) -> second window/object, maps lmem src
+	 * [2 * CHUNK_SZ, 3 * CHUNK_SZ) -> third window/object, maps lmem dst
+	 *
+	 * For the PTE window it's also quite different, since each PTE must
+	 * point to some 64K page, one for each PT(since it's in lmem), and yet
+	 * each is only <= 4096bytes, but since the unused space within that PTE
+	 * range is never touched, this should be fine.
+	 *
+	 * So basically each PT now needs 64K of virtual memory, instead of 4K,
+	 * which looks like:
+	 *
+	 * [3 * CHUNK_SZ, 3 * CHUNK_SZ + ((3 * CHUNK_SZ / SZ_2M) * SZ_64K)] -> PTE
 	 */
 
 	vm = i915_ppgtt_create(gt, I915_BO_ALLOC_PM_EARLY);
@@ -86,6 +143,9 @@ static struct i915_address_space *migrate_vm(struct intel_gt *gt)
 		goto err_vm;
 	}
 
+	if (HAS_64K_PAGES(gt->i915))
+		stash.pt_sz = I915_GTT_PAGE_SIZE_64K;
+
 	/*
 	 * Each engine instance is assigned its own chunk in the VM, so
 	 * that we can run multiple instances concurrently
@@ -105,14 +165,20 @@ static struct i915_address_space *migrate_vm(struct intel_gt *gt)
 		 * We copy in 8MiB chunks. Each PDE covers 2MiB, so we need
 		 * 4x2 page directories for source/destination.
 		 */
-		sz = 2 * CHUNK_SZ;
+		if (HAS_64K_PAGES(gt->i915))
+			sz = 3 * CHUNK_SZ;
+		else
+			sz = 2 * CHUNK_SZ;
 		d.offset = base + sz;
 
 		/*
 		 * We need another page directory setup so that we can write
 		 * the 8x512 PTE in each chunk.
 		 */
-		sz += (sz >> 12) * sizeof(u64);
+		if (HAS_64K_PAGES(gt->i915))
+			sz += (sz / SZ_2M) * SZ_64K;
+		else
+			sz += (sz >> 12) * sizeof(u64);
 
 		err = i915_vm_alloc_pt_stash(&vm->vm, &stash, sz);
 		if (err)
@@ -133,7 +199,18 @@ static struct i915_address_space *migrate_vm(struct intel_gt *gt)
 			goto err_vm;
 
 		/* Now allow the GPU to rewrite the PTE via its own ppGTT */
-		vm->vm.foreach(&vm->vm, base, d.offset - base, insert_pte, &d);
+		if (HAS_64K_PAGES(gt->i915)) {
+			vm->vm.foreach(&vm->vm, base, d.offset - base,
+				       xehpsdv_insert_pte, &d);
+			d.offset = base + CHUNK_SZ;
+			vm->vm.foreach(&vm->vm,
+				       d.offset,
+				       2 * CHUNK_SZ,
+				       xehpsdv_toggle_pdes, &d);
+		} else {
+			vm->vm.foreach(&vm->vm, base, d.offset - base,
+				       insert_pte, &d);
+		}
 	}
 
 	return &vm->vm;
@@ -269,19 +346,38 @@ static int emit_pte(struct i915_request *rq,
 		    u64 offset,
 		    int length)
 {
+	bool has_64K_pages = HAS_64K_PAGES(rq->engine->i915);
 	const u64 encode = rq->context->vm->pte_encode(0, cache_level,
 						       is_lmem ? PTE_LM : 0);
 	struct intel_ring *ring = rq->ring;
-	int total = 0;
+	int pkt, dword_length;
+	u32 total = 0;
+	u32 page_size;
 	u32 *hdr, *cs;
-	int pkt;
 
 	GEM_BUG_ON(GRAPHICS_VER(rq->engine->i915) < 8);
 
+	page_size = I915_GTT_PAGE_SIZE;
+	dword_length = 0x400;
+
 	/* Compute the page directory offset for the target address range */
-	offset >>= 12;
-	offset *= sizeof(u64);
-	offset += 2 * CHUNK_SZ;
+	if (has_64K_pages) {
+		GEM_BUG_ON(!IS_ALIGNED(offset, SZ_2M));
+
+		offset /= SZ_2M;
+		offset *= SZ_64K;
+		offset += 3 * CHUNK_SZ;
+
+		if (is_lmem) {
+			page_size = I915_GTT_PAGE_SIZE_64K;
+			dword_length = 0x40;
+		}
+	} else {
+		offset >>= 12;
+		offset *= sizeof(u64);
+		offset += 2 * CHUNK_SZ;
+	}
+
 	offset += (u64)rq->engine->instance << 32;
 
 	cs = intel_ring_begin(rq, 6);
@@ -289,7 +385,7 @@ static int emit_pte(struct i915_request *rq,
 		return PTR_ERR(cs);
 
 	/* Pack as many PTE updates as possible into a single MI command */
-	pkt = min_t(int, 0x400, ring->space / sizeof(u32) + 5);
+	pkt = min_t(int, dword_length, ring->space / sizeof(u32) + 5);
 	pkt = min_t(int, pkt, (ring->size - ring->emit) / sizeof(u32) + 5);
 
 	hdr = cs;
@@ -299,6 +395,8 @@ static int emit_pte(struct i915_request *rq,
 
 	do {
 		if (cs - hdr >= pkt) {
+			int dword_rem;
+
 			*hdr += cs - hdr - 2;
 			*cs++ = MI_NOOP;
 
@@ -310,7 +408,18 @@ static int emit_pte(struct i915_request *rq,
 			if (IS_ERR(cs))
 				return PTR_ERR(cs);
 
-			pkt = min_t(int, 0x400, ring->space / sizeof(u32) + 5);
+			dword_rem = dword_length;
+			if (has_64K_pages) {
+				if (IS_ALIGNED(total, SZ_2M)) {
+					offset = round_up(offset, SZ_64K);
+				} else {
+					dword_rem = SZ_2M - (total & (SZ_2M - 1));
+					dword_rem /= page_size;
+					dword_rem *= 2;
+				}
+			}
+
+			pkt = min_t(int, dword_rem, ring->space / sizeof(u32) + 5);
 			pkt = min_t(int, pkt, (ring->size - ring->emit) / sizeof(u32) + 5);
 
 			hdr = cs;
@@ -319,13 +428,15 @@ static int emit_pte(struct i915_request *rq,
 			*cs++ = upper_32_bits(offset);
 		}
 
+		GEM_BUG_ON(!IS_ALIGNED(it->dma, page_size));
+
 		*cs++ = lower_32_bits(encode | it->dma);
 		*cs++ = upper_32_bits(encode | it->dma);
 
 		offset += 8;
-		total += I915_GTT_PAGE_SIZE;
+		total += page_size;
 
-		it->dma += I915_GTT_PAGE_SIZE;
+		it->dma += page_size;
 		if (it->dma >= it->max) {
 			it->sg = __sg_next(it->sg);
 			if (!it->sg || sg_dma_len(it->sg) == 0)
@@ -356,7 +467,8 @@ static bool wa_1209644611_applies(int ver, u32 size)
 	return height % 4 == 3 && height <= 8;
 }
 
-static int emit_copy(struct i915_request *rq, int size)
+static int emit_copy(struct i915_request *rq,
+		     u32 dst_offset, u32 src_offset, int size)
 {
 	const int ver = GRAPHICS_VER(rq->engine->i915);
 	u32 instance = rq->engine->instance;
@@ -371,31 +483,31 @@ static int emit_copy(struct i915_request *rq, int size)
 		*cs++ = BLT_DEPTH_32 | PAGE_SIZE;
 		*cs++ = 0;
 		*cs++ = size >> PAGE_SHIFT << 16 | PAGE_SIZE / 4;
-		*cs++ = CHUNK_SZ; /* dst offset */
+		*cs++ = dst_offset;
 		*cs++ = instance;
 		*cs++ = 0;
 		*cs++ = PAGE_SIZE;
-		*cs++ = 0; /* src offset */
+		*cs++ = src_offset;
 		*cs++ = instance;
 	} else if (ver >= 8) {
 		*cs++ = XY_SRC_COPY_BLT_CMD | BLT_WRITE_RGBA | (10 - 2);
 		*cs++ = BLT_DEPTH_32 | BLT_ROP_SRC_COPY | PAGE_SIZE;
 		*cs++ = 0;
 		*cs++ = size >> PAGE_SHIFT << 16 | PAGE_SIZE / 4;
-		*cs++ = CHUNK_SZ; /* dst offset */
+		*cs++ = dst_offset;
 		*cs++ = instance;
 		*cs++ = 0;
 		*cs++ = PAGE_SIZE;
-		*cs++ = 0; /* src offset */
+		*cs++ = src_offset;
 		*cs++ = instance;
 	} else {
 		GEM_BUG_ON(instance);
 		*cs++ = SRC_COPY_BLT_CMD | BLT_WRITE_RGBA | (6 - 2);
 		*cs++ = BLT_DEPTH_32 | BLT_ROP_SRC_COPY | PAGE_SIZE;
 		*cs++ = size >> PAGE_SHIFT << 16 | PAGE_SIZE;
-		*cs++ = CHUNK_SZ; /* dst offset */
+		*cs++ = dst_offset;
 		*cs++ = PAGE_SIZE;
-		*cs++ = 0; /* src offset */
+		*cs++ = src_offset;
 	}
 
 	intel_ring_advance(rq, cs);
@@ -423,6 +535,7 @@ intel_context_migrate_copy(struct intel_context *ce,
 	GEM_BUG_ON(ce->ring->size < SZ_64K);
 
 	do {
+		u32 src_offset, dst_offset;
 		int len;
 
 		rq = i915_request_create(ce);
@@ -450,15 +563,28 @@ intel_context_migrate_copy(struct intel_context *ce,
 		if (err)
 			goto out_rq;
 
-		len = emit_pte(rq, &it_src, src_cache_level, src_is_lmem, 0,
-			       CHUNK_SZ);
+		src_offset = 0;
+		dst_offset = CHUNK_SZ;
+		if (HAS_64K_PAGES(ce->engine->i915)) {
+			GEM_BUG_ON(!src_is_lmem && !dst_is_lmem);
+
+			src_offset = 0;
+			dst_offset = 0;
+			if (src_is_lmem)
+				src_offset = CHUNK_SZ;
+			if (dst_is_lmem)
+				dst_offset = 2 * CHUNK_SZ;
+		}
+
+		len = emit_pte(rq, &it_src, src_cache_level, src_is_lmem,
+			       src_offset, CHUNK_SZ);
 		if (len <= 0) {
 			err = len;
 			goto out_rq;
 		}
 
 		err = emit_pte(rq, &it_dst, dst_cache_level, dst_is_lmem,
-			       CHUNK_SZ, len);
+			       dst_offset, len);
 		if (err < 0)
 			goto out_rq;
 		if (err < len) {
@@ -470,7 +596,7 @@ intel_context_migrate_copy(struct intel_context *ce,
 		if (err)
 			goto out_rq;
 
-		err = emit_copy(rq, len);
+		err = emit_copy(rq, dst_offset, src_offset, len);
 
 		/* Arbitration is re-enabled between requests. */
 out_rq:
@@ -488,14 +614,15 @@ intel_context_migrate_copy(struct intel_context *ce,
 	return err;
 }
 
-static int emit_clear(struct i915_request *rq, int size, u32 value)
+static int emit_clear(struct i915_request *rq, u64 offset, int size, u32 value)
 {
 	const int ver = GRAPHICS_VER(rq->engine->i915);
-	u32 instance = rq->engine->instance;
 	u32 *cs;
 
 	GEM_BUG_ON(size >> PAGE_SHIFT > S16_MAX);
 
+	offset += (u64)rq->engine->instance << 32;
+
 	cs = intel_ring_begin(rq, ver >= 8 ? 8 : 6);
 	if (IS_ERR(cs))
 		return PTR_ERR(cs);
@@ -505,17 +632,17 @@ static int emit_clear(struct i915_request *rq, int size, u32 value)
 		*cs++ = BLT_DEPTH_32 | BLT_ROP_COLOR_COPY | PAGE_SIZE;
 		*cs++ = 0;
 		*cs++ = size >> PAGE_SHIFT << 16 | PAGE_SIZE / 4;
-		*cs++ = 0; /* offset */
-		*cs++ = instance;
+		*cs++ = lower_32_bits(offset);
+		*cs++ = upper_32_bits(offset);
 		*cs++ = value;
 		*cs++ = MI_NOOP;
 	} else {
-		GEM_BUG_ON(instance);
+		GEM_BUG_ON(upper_32_bits(offset));
 		*cs++ = XY_COLOR_BLT_CMD | BLT_WRITE_RGBA | (6 - 2);
 		*cs++ = BLT_DEPTH_32 | BLT_ROP_COLOR_COPY | PAGE_SIZE;
 		*cs++ = 0;
 		*cs++ = size >> PAGE_SHIFT << 16 | PAGE_SIZE / 4;
-		*cs++ = 0;
+		*cs++ = lower_32_bits(offset);
 		*cs++ = value;
 	}
 
@@ -542,6 +669,7 @@ intel_context_migrate_clear(struct intel_context *ce,
 	GEM_BUG_ON(ce->ring->size < SZ_64K);
 
 	do {
+		u32 offset;
 		int len;
 
 		rq = i915_request_create(ce);
@@ -569,7 +697,11 @@ intel_context_migrate_clear(struct intel_context *ce,
 		if (err)
 			goto out_rq;
 
-		len = emit_pte(rq, &it, cache_level, is_lmem, 0, CHUNK_SZ);
+		offset = 0;
+		if (HAS_64K_PAGES(ce->engine->i915) && is_lmem)
+			offset = CHUNK_SZ;
+
+		len = emit_pte(rq, &it, cache_level, is_lmem, offset, CHUNK_SZ);
 		if (len <= 0) {
 			err = len;
 			goto out_rq;
@@ -579,7 +711,7 @@ intel_context_migrate_clear(struct intel_context *ce,
 		if (err)
 			goto out_rq;
 
-		err = emit_clear(rq, len, value);
+		err = emit_clear(rq, offset, len, value);
 
 		/* Arbitration is re-enabled between requests. */
 out_rq:
-- 
2.20.1

