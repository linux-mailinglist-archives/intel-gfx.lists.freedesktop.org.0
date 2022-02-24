Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8674C2A49
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 12:06:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 406F910FA54;
	Thu, 24 Feb 2022 11:06:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7397B10FA53
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 11:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645700784; x=1677236784;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kfRwhTEP1OkQQKnGuH9djUyvVTbFlWjBvNAtCO/Da/0=;
 b=V2Khm658E6eqi7jeQnQu4jiGUyO9qnmX5sRYFvJaLS89vxeGET4ezsbz
 DNZncA0Ikhmg1FomHezgI87AeNwkYaqrERScZYgpB+lhhUeTbE3660Ziu
 Cx/rwMiu5cNozWwpKc7z0d6J2c4Rjl2s6Y9Afh9js9HeNvEtZfaTQVFhv
 VysTE+BezhPYQNRHOUcDmcu65wkbLtZCr9bSgNfkRwm15lGyaIv06TxV1
 xwp/vxxY8svv7vS6Xo4QId280Q8NeI2BOdc5zKmSZyLyCso62YcYPvCO4
 jwct8LHz4JWxAjt1n5oBWepcGEw+O5pCDchXi6fIzzACBnX6WFP7tEVN8 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="252401645"
X-IronPort-AV: E=Sophos;i="5.88,393,1635231600"; d="scan'208";a="252401645"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 03:06:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,393,1635231600"; d="scan'208";a="592051709"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by fmsmga008.fm.intel.com with ESMTP; 24 Feb 2022 03:06:22 -0800
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Feb 2022 16:22:45 +0530
Message-Id: <20220224105246.145917-3-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220224105246.145917-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
References: <20220224105246.145917-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V3 2/3] drm/i915: Introduce guard pages to
 i915_vma
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
Cc: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris@chris-wilson.co.uk>

Introduce the concept of padding the i915_vma with guard pages before
and aft. The major consequence is that all ordinary uses of i915_vma
must use i915_vma_offset/i915_vma_size and not i915_vma.node.start/size
directly, as the drm_mm_node will include the guard pages that surround
our object.

The biggest connundrum is how exactly to mix requesting a fixed address
with guard pages, particularly through the existing uABI. The user does
not know about guard pages, so such must be transparent to the user, and
so the execobj.offset must be that of the object itself excluding the
guard. So a PIN_OFFSET_FIXED must then be exclusive of the guard pages.
The caveat is that some placements will be impossible with guard pages,
as wrap arounds need to be avoided, and the vma itself will require a
larger node. We must we not report EINVAL but ENOSPC as these are
unavailable locations within the GTT rather than conflicting user
requirements.

In the next patch, we start using guard pages for scanout objects. While
these are limited to GGTT vma, on a few platforms these vma (or at least
an alias of the vma) is shared with userspace, so we may leak the
existence of such guards if we are not careful to ensure that the
execobj.offset is transparent and excludes the guards. (On such platforms
like ivb, without full-ppgtt, userspace has to use relocations so the
presence of more untouchable regions within its GTT such be of no further
issue.)

v2: Include the guard range in the overflow checks and placement
restrictions.

v3: Fix the check on the placement upper bound. The request user offset
is relative to the guard offset (not the node.start) and so we should
not include the initial guard offset again when computing the upper
bound of the node.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c  | 14 ++++++++++++--
 drivers/gpu/drm/i915/i915_vma.c       | 25 ++++++++++++++++++++-----
 drivers/gpu/drm/i915/i915_vma.h       |  5 +++--
 drivers/gpu/drm/i915/i915_vma_types.h |  3 ++-
 4 files changed, 37 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index fab220882204..549c2178a0c9 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -271,6 +271,8 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
 {
 	const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level, flags);
 	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
+	struct i915_vma *vma = container_of((void *)vma_res, struct i915_vma,
+					    resource);
 	gen8_pte_t __iomem *gte;
 	gen8_pte_t __iomem *end;
 	struct sgt_iter iter;
@@ -283,7 +285,10 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
 
 	gte = (gen8_pte_t __iomem *)ggtt->gsm;
 	gte += vma_res->start / I915_GTT_PAGE_SIZE;
-	end = gte + vma_res->node_size / I915_GTT_PAGE_SIZE;
+	end = gte + vma->guard / I915_GTT_PAGE_SIZE;
+	while (gte < end)
+		gen8_set_pte(gte++, vm->scratch[0]->encode);
+	end += (vma->node.size - vma->guard) / I915_GTT_PAGE_SIZE;
 
 	for_each_sgt_daddr(addr, iter, vma_res->bi.pages)
 		gen8_set_pte(gte++, pte_encode | addr);
@@ -327,6 +332,8 @@ static void gen6_ggtt_insert_entries(struct i915_address_space *vm,
 				     u32 flags)
 {
 	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
+	struct i915_vma *vma = container_of((void *)vma_res, struct i915_vma,
+					    resource);
 	gen6_pte_t __iomem *gte;
 	gen6_pte_t __iomem *end;
 	struct sgt_iter iter;
@@ -334,8 +341,11 @@ static void gen6_ggtt_insert_entries(struct i915_address_space *vm,
 
 	gte = (gen6_pte_t __iomem *)ggtt->gsm;
 	gte += vma_res->start / I915_GTT_PAGE_SIZE;
-	end = gte + vma_res->node_size / I915_GTT_PAGE_SIZE;
 
+	end = gte + vma->guard / I915_GTT_PAGE_SIZE;
+	while (gte < end)
+		gen8_set_pte(gte++, vm->scratch[0]->encode);
+	end += (vma->node.size - vma->guard) / I915_GTT_PAGE_SIZE;
 	for_each_sgt_daddr(addr, iter, vma_res->bi.pages)
 		iowrite32(vm->pte_encode(addr, level, flags), gte++);
 	GEM_BUG_ON(gte > end);
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 447b14778070..a00e8ff2a276 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -729,7 +729,7 @@ static int
 i915_vma_insert(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 		u64 size, u64 alignment, u64 flags)
 {
-	unsigned long color;
+	unsigned long color, guard;
 	u64 start, end;
 	int ret;
 
@@ -737,7 +737,7 @@ i915_vma_insert(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	GEM_BUG_ON(drm_mm_node_allocated(&vma->node));
 
 	size = max(size, vma->size);
-	alignment = max(alignment, vma->display_alignment);
+	alignment = max_t(typeof(alignment), alignment, vma->display_alignment);
 	if (flags & PIN_MAPPABLE) {
 		size = max_t(typeof(size), size, vma->fence_size);
 		alignment = max_t(typeof(alignment),
@@ -748,6 +748,9 @@ i915_vma_insert(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	GEM_BUG_ON(!IS_ALIGNED(alignment, I915_GTT_MIN_ALIGNMENT));
 	GEM_BUG_ON(!is_power_of_2(alignment));
 
+	guard = vma->guard; /* retain guard across rebinds */
+	guard = ALIGN(guard, alignment);
+
 	start = flags & PIN_OFFSET_BIAS ? flags & PIN_OFFSET_MASK : 0;
 	GEM_BUG_ON(!IS_ALIGNED(start, I915_GTT_PAGE_SIZE));
 
@@ -757,6 +760,7 @@ i915_vma_insert(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	if (flags & PIN_ZONE_4G)
 		end = min_t(u64, end, (1ULL << 32) - I915_GTT_PAGE_SIZE);
 	GEM_BUG_ON(!IS_ALIGNED(end, I915_GTT_PAGE_SIZE));
+	GEM_BUG_ON(2 * guard > end);
 
 	alignment = max(alignment, i915_vm_obj_min_alignment(vma->vm, vma->obj));
 	/*
@@ -770,7 +774,7 @@ i915_vma_insert(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	 * aperture has, reject it early before evicting everything in a vain
 	 * attempt to find space.
 	 */
-	if (size > end) {
+	if (size > end - 2 * guard) {
 		DRM_DEBUG("Attempting to bind an object larger than the aperture: request=%llu > %s aperture=%llu\n",
 			  size, flags & PIN_MAPPABLE ? "mappable" : "total",
 			  end);
@@ -787,13 +791,23 @@ i915_vma_insert(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 		if (!IS_ALIGNED(offset, alignment) ||
 		    range_overflows(offset, size, end))
 			return -EINVAL;
+		/*
+		 * The caller knows not of the guard added by others and
+		 * requests for the offset of the start of its buffer
+		 * to be fixed, which may not be the same as the position
+		 * of the vma->node due to the guard pages.
+		 */
+		if (offset < guard || offset + size > end - guard)
+			return -ENOSPC;
 
 		ret = i915_gem_gtt_reserve(vma->vm, ww, &vma->node,
-					   size, offset, color,
-					   flags);
+					   size + 2 * guard,
+					   offset - guard,
+					   color, flags);
 		if (ret)
 			return ret;
 	} else {
+		size += 2 * guard;
 		/*
 		 * We only support huge gtt pages through the 48b PPGTT,
 		 * however we also don't want to force any alignment for
@@ -840,6 +854,7 @@ i915_vma_insert(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	GEM_BUG_ON(!i915_gem_valid_gtt_space(vma, color));
 
 	list_add_tail(&vma->vm_link, &vma->vm->bound_list);
+	vma->guard = guard;
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 0371c60098c0..c435d08f0563 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -127,12 +127,13 @@ static inline bool i915_vma_is_closed(const struct i915_vma *vma)
 static inline u64 i915_vma_size(const struct i915_vma *vma)
 {
 	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
-	return vma->node.size;
+	return vma->node.size - 2 * vma->guard;
 }
 
 static inline u64 __i915_vma_offset(const struct i915_vma *vma)
 {
-	return vma->node.start;
+	/* The actual start of the vma->pages is after the guard pages. */
+	return vma->node.start + vma->guard;
 }
 
 static inline u64 i915_vma_offset(const struct i915_vma *vma)
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index 88370dadca82..2c541f798b20 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -197,14 +197,15 @@ struct i915_vma {
 	struct i915_fence_reg *fence;
 
 	u64 size;
-	u64 display_alignment;
 	struct i915_page_sizes page_sizes;
 
 	/* mmap-offset associated with fencing for this vma */
 	struct i915_mmap_offset	*mmo;
 
+	u32 guard; /* padding allocated around vma->pages within the node */
 	u32 fence_size;
 	u32 fence_alignment;
+	u32 display_alignment;
 
 	/**
 	 * Count of the number of times this vma has been opened by different
-- 
2.34.1

