Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFA96714D6
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 08:17:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 116C710E6CF;
	Wed, 18 Jan 2023 07:16:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5274D10E6B7;
 Wed, 18 Jan 2023 07:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674026177; x=1705562177;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oC9T0c9OHuur13s9g94k4MqpZ2ytaz26y+Rk4CbLThE=;
 b=DCW6dYRpdjwf2BNMuGqLuVNg6tsQjQOKyNjv8LGmcrfortjSqQEtXOY6
 zakLmj39jYJ4sGc8L2TXdMXCUVNcv2tVj/CD6AEEqIP32er1pq+IaGIx9
 g9AUOXz2n3BjATtKJmI8QK8fMf7/ggQEQWUJb38p5c8sTXHEdWt8xKGnj
 UJMTGhvuehrHmDrEq5zhUuVjRHlja+8FlKpWX8qW/2UxImM4o5ddVn8Mp
 2C1+0WqeiNnJtagVLudp8hbcqixb71nuQafKwgxK9OQYMPeyLImGP90HK
 QoLkN0+0H0ApunNNjYiY4UnNYK5eHcwFcvbfhX0dyM/LKRpYhnGp+cVfm A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="308482089"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="308482089"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 23:16:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="661610038"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="661610038"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 23:16:16 -0800
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 17 Jan 2023 23:16:08 -0800
Message-Id: <20230118071609.17572-23-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
In-Reply-To: <20230118071609.17572-1-niranjana.vishwanathapura@intel.com>
References: <20230118071609.17572-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 22/23] drm/i915/vm_bind: Properly build
 persistent map sg table
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
Cc: paulo.r.zanoni@intel.com, jani.nikula@intel.com, thomas.hellstrom@intel.com,
 matthew.auld@intel.com, daniel.vetter@intel.com, christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Properly build the sg table for persistent mapping which can
be partial map of the underlying object. Ensure the sg pages
are properly set for page backed regions. The dump capture
support requires this for page backed regions.

v2: Remove redundant sg_mark_end() call

Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 113 +++++++++++++++++++++++++++++++-
 1 file changed, 112 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 5b9ae5ebf55c..2f0994f0ed42 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1328,6 +1328,113 @@ intel_partial_pages(const struct i915_gtt_view *view,
 	return ERR_PTR(ret);
 }
 
+static unsigned int
+intel_copy_dma_sg(struct sg_table *src_st, struct sg_table *dst_st,
+		  u64 offset, u64 length, bool dry_run)
+{
+	struct scatterlist *dst_sg, *src_sg;
+	unsigned int i, len, nents = 0;
+
+	dst_sg = dst_st->sgl;
+	for_each_sgtable_dma_sg(src_st, src_sg, i) {
+		if (sg_dma_len(src_sg) <= offset) {
+			offset -= sg_dma_len(src_sg);
+			continue;
+		}
+
+		nents++;
+		len = min(sg_dma_len(src_sg) - offset, length);
+		if (!dry_run) {
+			sg_dma_address(dst_sg) = sg_dma_address(src_sg) + offset;
+			sg_dma_len(dst_sg) = len;
+			dst_sg = sg_next(dst_sg);
+		}
+
+		length -= len;
+		offset = 0;
+		if (!length)
+			break;
+	}
+	WARN_ON_ONCE(length);
+
+	return nents;
+}
+
+static unsigned int
+intel_copy_sg(struct sg_table *src_st, struct sg_table *dst_st,
+	      u64 offset, u64 length, bool dry_run)
+{
+	struct scatterlist *dst_sg, *src_sg;
+	unsigned int i, len, nents = 0;
+
+	dst_sg = dst_st->sgl;
+	for_each_sgtable_sg(src_st, src_sg, i) {
+		if (src_sg->length <= offset) {
+			offset -= src_sg->length;
+			continue;
+		}
+
+		nents++;
+		len = min(src_sg->length - offset, length);
+		if (!dry_run) {
+			unsigned long pfn;
+
+			pfn = page_to_pfn(sg_page(src_sg)) + offset / PAGE_SIZE;
+			sg_set_page(dst_sg, pfn_to_page(pfn), len, 0);
+			dst_sg = sg_next(dst_sg);
+		}
+
+		length -= len;
+		offset = 0;
+		if (!length)
+			break;
+	}
+	WARN_ON_ONCE(length);
+
+	return nents;
+}
+
+static noinline struct sg_table *
+intel_persistent_partial_pages(const struct i915_gtt_view *view,
+			       struct drm_i915_gem_object *obj)
+{
+	u64 offset = view->partial.offset << PAGE_SHIFT;
+	struct sg_table *st, *obj_st = obj->mm.pages;
+	u64 length = view->partial.size << PAGE_SHIFT;
+	unsigned int nents;
+	int ret = -ENOMEM;
+
+	st = kmalloc(sizeof(*st), GFP_KERNEL);
+	if (!st)
+		goto err_st_alloc;
+
+	/* Get required sg_table size */
+	nents = intel_copy_dma_sg(obj_st, st, offset, length, true);
+	if (i915_gem_object_has_struct_page(obj)) {
+		unsigned int pg_nents;
+
+		pg_nents = intel_copy_sg(obj_st, st, offset, length, true);
+		if (nents < pg_nents)
+			nents = pg_nents;
+	}
+
+	ret = sg_alloc_table(st, nents, GFP_KERNEL);
+	if (ret)
+		goto err_sg_alloc;
+
+	/* Build sg_table for specified <offset, length> section */
+	intel_copy_dma_sg(obj_st, st, offset, length, false);
+	if (i915_gem_object_has_struct_page(obj))
+		intel_copy_sg(obj_st, st, offset, length, false);
+
+	return st;
+
+err_sg_alloc:
+	kfree(st);
+err_st_alloc:
+	return ERR_PTR(ret);
+}
+
 static int
 __i915_vma_get_pages(struct i915_vma *vma)
 {
@@ -1360,7 +1467,11 @@ __i915_vma_get_pages(struct i915_vma *vma)
 		break;
 
 	case I915_GTT_VIEW_PARTIAL:
-		pages = intel_partial_pages(&vma->gtt_view, vma->obj);
+		if (i915_vma_is_persistent(vma))
+			pages = intel_persistent_partial_pages(&vma->gtt_view,
+							       vma->obj);
+		else
+			pages = intel_partial_pages(&vma->gtt_view, vma->obj);
 		break;
 	}
 
-- 
2.21.0.rc0.32.g243a4c7e27

