Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5455048E62F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 09:25:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9336510E9E7;
	Fri, 14 Jan 2022 08:25:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C32E910E9F4
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jan 2022 08:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642148716; x=1673684716;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fzRmY8F0fwDhXbpeCzH+WM8e2ENYrXFRgp8/IubbK2A=;
 b=PLoWR9+8JFMSM8K+vDbNzio7Z+RWQqO81X2qVW68RXkFR9m9jwZGa8nX
 Qcd/UMLSrEQVhfogt60ZpF7M3/ydFZL81rSaJL9/w89r97H+KNrK7aCc2
 lv6IlRwTuyQ1PDURpb5f+ksWxshaVsIygW19/y0tbhoTBaYmI8pnN655K
 IR41M+CiYLIOMd1p2P09yOiiF6uSHhxsbsUNzeBVphbZtUK9M18ahMlBH
 HZHCWwzb1tmptqCjYRZJjRZqI39gSigLGgJtOBne4egCg2s2vKJYlWM3x
 aFMz6+3XzQrDy7mGeQjlHUwBwZH25FQtNgpac+kKp1fr6fZ18n/rEZHLk w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="244161674"
X-IronPort-AV: E=Sophos;i="5.88,288,1635231600"; d="scan'208";a="244161674"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 00:25:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,288,1635231600"; d="scan'208";a="473575572"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga003.jf.intel.com with ESMTP; 14 Jan 2022 00:25:14 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jan 2022 10:25:17 +0200
Message-Id: <20220114082517.25551-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Use i915_gem_object_pin_map_unlocked
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
Cc: chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

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
index 1f15c3298112..194ad92013f6 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -547,10 +547,16 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
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
@@ -560,7 +566,10 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
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
@@ -574,7 +583,7 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
 	i915_vma_set_ggtt_write(vma);
 
 	/* NB Access through the GTT requires the device to be awake. */
-	return ptr;
+	return page_mask_bits(ptr);
 
 err_unpin:
 	__i915_vma_unpin(vma);
@@ -1687,7 +1696,11 @@ static void __i915_vma_iounmap(struct i915_vma *vma)
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
2.24.1.485.gad05a3d8e5

