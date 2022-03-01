Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 186E04C9120
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 18:09:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB34B10E5A3;
	Tue,  1 Mar 2022 17:09:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8822588A56
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 17:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646154545; x=1677690545;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y6shJX/G7WZzh2R6np12sW0SDbY5nHJDIXs/NTQnH0A=;
 b=V79ApgJTSlsj7EUpvWTjq03o1GYkAMuYWAi2UOYd25WAkz4XD1pAAgGp
 2Zo5EBKn/fBn/7va7o0shtSXkYKx/19cXVWxLgfMziy9dHnQa6kLaCUut
 jSYnLlmeRTylareICsutu9uPfxJZPCZ1ATRtKvrq4alogD52LtHC8HnTq
 4j32iwN2UuowZTbp7nPvk6TSfDQCWLbLeEo8qf4agc+V6eYkrF6Pl+dYd
 fKJt3XjlRW61CHYCJzUQxbf93wdS67XEcQbSVFe8tiY7DvnMTA/h7HQYj
 CXJF2Bv9pjwzVyl5+29l8scbrkgvZx2JlAz3kmX+BffC8hOSoJ+San/Dw A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="313904432"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="313904432"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 09:09:05 -0800
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="493185405"
Received: from daithiby-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.15.82])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 09:09:04 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Mar 2022 17:08:35 +0000
Message-Id: <20220301170835.682715-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220301170835.682715-1-matthew.auld@intel.com>
References: <20220301170835.682715-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 3/3] drm/i915: Use i915_gem_object_pin_map_unlocked
 function for lmem allocation
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Using i915_gem_object_pin_map_unlocked instead of
i915_gem_object_lmem_io_map, would eliminate the need
of using I915_BO_ALLOC_CONTIGUOUS, when calling
i915_vma_pin_iomap, because it supports non-contiguous
allocation as well.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 27 ++++++++++++++++++++-------
 1 file changed, 20 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 94fcdb7bd21d..c3bfa1312507 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -562,10 +562,16 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
 		 * of pages, that way we can also drop the
 		 * I915_BO_ALLOC_CONTIGUOUS when allocating the object.
 		 */
-		if (i915_gem_object_is_lmem(vma->obj))
-			ptr = i915_gem_object_lmem_io_map(vma->obj, 0,
-							  vma->obj->base.size);
-		else
+		if (i915_gem_object_is_lmem(vma->obj)) {
+			ptr = (void __iomem *)
+			       i915_gem_object_pin_map_unlocked(vma->obj,
+								I915_MAP_WC);
+			if (IS_ERR(ptr)) {
+				err = PTR_ERR(ptr);
+				goto err;
+			}
+			ptr = page_pack_bits(ptr, 1);
+		} else
 			ptr = io_mapping_map_wc(&i915_vm_to_ggtt(vma->vm)->iomap,
 						vma->node.start,
 						vma->node.size);
@@ -575,7 +581,10 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
 		}
 
 		if (unlikely(cmpxchg(&vma->iomap, NULL, ptr))) {
-			io_mapping_unmap(ptr);
+			if (page_unmask_bits(ptr))
+				__i915_gem_object_release_map(vma->obj);
+			else
+				io_mapping_unmap(ptr);
 			ptr = vma->iomap;
 		}
 	}
@@ -589,7 +598,7 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
 	i915_vma_set_ggtt_write(vma);
 
 	/* NB Access through the GTT requires the device to be awake. */
-	return ptr;
+	return page_mask_bits(ptr);
 
 err_unpin:
 	__i915_vma_unpin(vma);
@@ -1748,7 +1757,11 @@ static void __i915_vma_iounmap(struct i915_vma *vma)
 	if (vma->iomap == NULL)
 		return;
 
-	io_mapping_unmap(vma->iomap);
+	if (page_unmask_bits(vma->iomap))
+		__i915_gem_object_release_map(vma->obj);
+	else
+		io_mapping_unmap(vma->iomap);
+
 	vma->iomap = NULL;
 }
 
-- 
2.34.1

