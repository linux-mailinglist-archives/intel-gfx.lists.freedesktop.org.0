Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4624E32D2
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 23:45:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5A2010E4CB;
	Mon, 21 Mar 2022 22:44:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1E8810E4B0;
 Mon, 21 Mar 2022 22:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647902687; x=1679438687;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=A7rBB1kD6y+MBVtpEwheCCraisaEFjdf1sPPjwDSxu4=;
 b=dPdhGIuTPryTJ+RmzAg+BtHkoRo72k7wEw8MV/OJfJZvMt5ZLqeEgtDR
 O7WwtItXvxsGRkwjF6TMlvjh4zfZfvtD80b8v0GvqJb8VuUm4vL0cmGd5
 j1zNBGhL51fdcc1dfu1DVSHUlnwNzcBAjWsa3pUqLxpT4DkIflJoSrebD
 /2DJ+QHu1GOn5M/W7iXG7Jmr4OQ4gGds8MXurtPNnrzWfBZGyibPfvxZp
 x1FrIfjL/0xGE9YiFnAblDSkIPC61LMaEOP+v7R4ZQ29TDd45n/ykdfRu
 RObuvF+1JV7yqzILm77TBqTHs/PKC8X3I3gbygH3xOSVsB88SMErDVR4E Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="257613719"
X-IronPort-AV: E=Sophos;i="5.90,199,1643702400"; d="scan'208";a="257613719"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 15:44:46 -0700
X-IronPort-AV: E=Sophos;i="5.90,199,1643702400"; d="scan'208";a="543414248"
Received: from ramaling-i9x.iind.intel.com ([10.203.144.108])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 15:44:44 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Date: Tue, 22 Mar 2022 04:14:59 +0530
Message-Id: <20220321224459.12223-10-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220321224459.12223-1-ramalingam.c@intel.com>
References: <20220321224459.12223-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 9/9] drm/i915/migrate: Evict and restore the
 flatccs capable lmem obj
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
Cc: Hellstrom Thomas <thomas.hellstrom@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When we are swapping out the local memory obj on flat-ccs capable platform,
we need to capture the ccs data too along with main meory and we need to
restore it when we are swapping in the content.

When lmem object is swapped into a smem obj, smem obj will
have the extra pages required to hold the ccs data corresponding to the
lmem main memory. So main memory of lmem will be copied into the initial
pages of the smem and then ccs data corresponding to the main memory
will be copied to the subsequent pages of smem. ccs data is 1/256 of
lmem size.

Swapin happens exactly in reverse order. First main memory of lmem is
restored from the smem's initial pages and the ccs data will be restored
from the subsequent pages of smem.

Extracting and restoring the CCS data is done through a special cmd called
XY_CTRL_SURF_COPY_BLT

v2: Fixing the ccs handling
v3: Handle the ccs data at same loop as main memory [Thomas]
v4: changes for emit_copy_ccs

Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_migrate.c | 163 +++++++++++++++++++++++-
 1 file changed, 159 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index 5f6341f91622..22e3c079468f 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -657,6 +657,65 @@ static int emit_copy(struct i915_request *rq,
 	return 0;
 }
 
+static int scatter_list_length(struct scatterlist *sg)
+{
+	int len = 0;
+
+	while (sg && sg_dma_len(sg)) {
+		len += sg_dma_len(sg);
+		sg = sg_next(sg);
+	};
+
+	return len;
+}
+
+static void
+calculate_chunk_sz(struct drm_i915_private *i915, bool src_is_lmem,
+		   int *src_sz, int *ccs_sz, u32 bytes_to_cpy,
+		   u32 ccs_bytes_to_cpy)
+{
+	if (ccs_bytes_to_cpy) {
+		/*
+		 * We can only copy the ccs data corresponding to
+		 * the CHUNK_SZ of lmem which is
+		 * GET_CCS_BYTES(i915, CHUNK_SZ))
+		 */
+		*ccs_sz = min_t(int, ccs_bytes_to_cpy, GET_CCS_BYTES(i915, CHUNK_SZ));
+
+		if (!src_is_lmem)
+			/*
+			 * When CHUNK_SZ is passed all the pages upto CHUNK_SZ
+			 * will be taken for the blt. in Flat-ccs supported
+			 * platform Smem obj will have more pages than required
+			 * for main meory hence limit it to the required size
+			 * for main memory
+			 */
+			*src_sz = min_t(int, bytes_to_cpy, CHUNK_SZ);
+	} else { /* ccs handling is not required */
+		*src_sz = CHUNK_SZ;
+	}
+}
+
+static void get_ccs_sg_sgt(struct sgt_dma *it, u32 bytes_to_cpy)
+{
+	u32 len;
+
+	do {
+		GEM_BUG_ON(!it->sg || !sg_dma_len(it->sg));
+		len = it->max - it->dma;
+		if (len > bytes_to_cpy) {
+			it->dma += bytes_to_cpy;
+			break;
+		}
+
+		bytes_to_cpy -= len;
+
+		it->sg = __sg_next(it->sg);
+		it->dma = sg_dma_address(it->sg);
+		it->max = it->dma + sg_dma_len(it->sg);
+	} while (bytes_to_cpy);
+}
+
 int
 intel_context_migrate_copy(struct intel_context *ce,
 			   const struct i915_deps *deps,
@@ -668,9 +727,15 @@ intel_context_migrate_copy(struct intel_context *ce,
 			   bool dst_is_lmem,
 			   struct i915_request **out)
 {
-	struct sgt_dma it_src = sg_sgt(src), it_dst = sg_sgt(dst);
+	struct sgt_dma it_src = sg_sgt(src), it_dst = sg_sgt(dst), it_ccs;
+	struct drm_i915_private *i915 = ce->engine->i915;
+	u32 ccs_bytes_to_cpy = 0, bytes_to_cpy;
+	enum i915_cache_level ccs_cache_level;
+	int src_sz, dst_sz, ccs_sz;
 	u32 src_offset, dst_offset;
+	u8 src_access, dst_access;
 	struct i915_request *rq;
+	bool ccs_is_src;
 	int err;
 
 	GEM_BUG_ON(ce->vm != ce->engine->gt->migrate.context->vm);
@@ -678,6 +743,38 @@ intel_context_migrate_copy(struct intel_context *ce,
 
 	GEM_BUG_ON(ce->ring->size < SZ_64K);
 
+	src_sz = scatter_list_length(src);
+	bytes_to_cpy = src_sz;
+
+	if (HAS_FLAT_CCS(i915) && src_is_lmem ^ dst_is_lmem) {
+		src_access = !src_is_lmem && dst_is_lmem;
+		dst_access = !src_access;
+
+		dst_sz = scatter_list_length(dst);
+		if (src_is_lmem) {
+			it_ccs = it_dst;
+			ccs_cache_level = dst_cache_level;
+			ccs_is_src = false;
+		} else if (dst_is_lmem) {
+			bytes_to_cpy = dst_sz;
+			it_ccs = it_src;
+			ccs_cache_level = src_cache_level;
+			ccs_is_src = true;
+		}
+
+		/*
+		 * When there is a eviction of ccs needed smem will have the
+		 * extra pages for the ccs data
+		 *
+		 * TO-DO: Want to move the size mismatch check to a WARN_ON,
+		 * but still we have some requests of smem->lmem with same size.
+		 * Need to fix it.
+		 */
+		ccs_bytes_to_cpy = src_sz != dst_sz ? GET_CCS_BYTES(i915, bytes_to_cpy) : 0;
+		if (ccs_bytes_to_cpy)
+			get_ccs_sg_sgt(&it_ccs, bytes_to_cpy);
+	}
+
 	src_offset = 0;
 	dst_offset = CHUNK_SZ;
 	if (HAS_64K_PAGES(ce->engine->i915)) {
@@ -719,8 +816,11 @@ intel_context_migrate_copy(struct intel_context *ce,
 		if (err)
 			goto out_rq;
 
+		calculate_chunk_sz(i915, src_is_lmem, &src_sz, &ccs_sz,
+				   bytes_to_cpy, ccs_bytes_to_cpy);
+
 		len = emit_pte(rq, &it_src, src_cache_level, src_is_lmem,
-			       src_offset, CHUNK_SZ);
+			       src_offset, src_sz);
 		if (len <= 0) {
 			err = len;
 			goto out_rq;
@@ -737,7 +837,46 @@ intel_context_migrate_copy(struct intel_context *ce,
 		if (err)
 			goto out_rq;
 
-		err = emit_copy(rq, dst_offset, src_offset, len);
+		err = emit_copy(rq, dst_offset,	src_offset, len);
+		if (err)
+			goto out_rq;
+
+		bytes_to_cpy -= len;
+
+		if (ccs_bytes_to_cpy) {
+			err = rq->engine->emit_flush(rq, EMIT_INVALIDATE);
+			if (err)
+				goto out_rq;
+
+			err = emit_pte(rq, &it_ccs, ccs_cache_level, false,
+				       ccs_is_src ? src_offset : dst_offset,
+				       ccs_sz);
+
+			err = rq->engine->emit_flush(rq, EMIT_INVALIDATE);
+			if (err)
+				goto out_rq;
+
+			/*
+			 * Using max of src_sz and dst_sz, as we need to
+			 * pass the lmem size corresponding to the ccs
+			 * blocks we need to handle.
+			 */
+			ccs_sz = max_t(int, ccs_is_src ? ccs_sz : src_sz,
+				       ccs_is_src ? dst_sz : ccs_sz);
+
+			err = emit_copy_ccs(rq, dst_offset, dst_access,
+					    src_offset, src_access, ccs_sz);
+			if (err)
+				goto out_rq;
+
+			err = rq->engine->emit_flush(rq, EMIT_INVALIDATE);
+			if (err)
+				goto out_rq;
+
+			/* Converting back to ccs bytes */
+			ccs_sz = GET_CCS_BYTES(rq->engine->i915, ccs_sz);
+			ccs_bytes_to_cpy -= ccs_sz;
+		}
 
 		/* Arbitration is re-enabled between requests. */
 out_rq:
@@ -745,9 +884,25 @@ intel_context_migrate_copy(struct intel_context *ce,
 			i915_request_put(*out);
 		*out = i915_request_get(rq);
 		i915_request_add(rq);
-		if (err || !it_src.sg || !sg_dma_len(it_src.sg))
+
+		if (err)
 			break;
 
+		if (!bytes_to_cpy && !ccs_bytes_to_cpy) {
+			if (src_is_lmem)
+				WARN_ON(it_src.sg && sg_dma_len(it_src.sg));
+			else
+				WARN_ON(it_dst.sg && sg_dma_len(it_dst.sg));
+			break;
+		}
+
+		if (WARN_ON(!it_src.sg || !sg_dma_len(it_src.sg) ||
+			    !it_dst.sg || !sg_dma_len(it_dst.sg) ||
+			    !it_ccs.sg || !sg_dma_len(it_ccs.sg))) {
+			err = -EINVAL;
+			break;
+		}
+
 		cond_resched();
 	} while (1);
 
-- 
2.20.1

