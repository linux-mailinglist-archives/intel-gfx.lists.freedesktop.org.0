Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 917476063EB
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 17:12:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9683310E0BB;
	Thu, 20 Oct 2022 15:12:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51F3910E0BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 15:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666278747; x=1697814747;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=igNI/v1xWiV8LjxqPsTUtwX+48GO2duEYbVbxa3a9PU=;
 b=e8pae2nce7AirG5na1rB37x7pEJlBKaANQJ4Ybr5PzELN/GH4H/2RItp
 ZKT/a5pO3YnLF3U8gAX0SUaSSg1onnN/aGSmJdh4oYpcqItyf6FN1adQf
 sT/ipkyQQ/ZzxvBAYxbstJr6G92XoncPx9Nkiobn6QTXBTw88DJrJq84y
 EVmpo3d+mGlWM9E3raIPENxE5fn08kMC2VY5eUNjNvQS9iaCwbmT57zZk
 0qNNVXYnr7c/CiTVVj1BFDKa8tQnmfBQD/1BuGir2WR4QP/rzvWLf87KB
 OKC81T7dUawFACgyyH0wlk7sXVCDpex9RdljblGDb1+9OoC1ABrN57fmF g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="290044374"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="290044374"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 08:10:57 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="734898116"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="734898116"
Received: from tcarvalx-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.12.144])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 08:10:56 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Oct 2022 16:10:47 +0100
Message-Id: <20221020151047.369354-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: use i915_sg_dma_sizes() for internal
 backend
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We rely on page_sizes.sg in setup_scratch_page() reporting the correct
value if the underlying sgl is not contiguous, however in
get_pages_internal() we are only looking at the layout of the created
pages when calculating the sg_page_sizes, and not the final sgl, which
could in theory be completely different. In such a situation we might
incorrectly think we have a 64K scratch page, when it is actually only
4K or similar split over multiple non-contiguous entries, which could
lead to broken behaviour when touching the scratch space within the
padding of a 64K GTT page-table.  Like we already do for other backends,
switch over to calling i915_sg_dma_sizes() after mapping the pages.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_internal.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_internal.c b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
index c698f95af15f..301cfb127c4c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_internal.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
@@ -36,7 +36,6 @@ static int i915_gem_object_get_pages_internal(struct drm_i915_gem_object *obj)
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct sg_table *st;
 	struct scatterlist *sg;
-	unsigned int sg_page_sizes;
 	unsigned int npages;
 	int max_order;
 	gfp_t gfp;
@@ -75,7 +74,6 @@ static int i915_gem_object_get_pages_internal(struct drm_i915_gem_object *obj)
 
 	sg = st->sgl;
 	st->nents = 0;
-	sg_page_sizes = 0;
 
 	do {
 		int order = min(fls(npages) - 1, max_order);
@@ -94,7 +92,6 @@ static int i915_gem_object_get_pages_internal(struct drm_i915_gem_object *obj)
 		} while (1);
 
 		sg_set_page(sg, page, PAGE_SIZE << order, 0);
-		sg_page_sizes |= PAGE_SIZE << order;
 		st->nents++;
 
 		npages -= 1 << order;
@@ -116,7 +113,7 @@ static int i915_gem_object_get_pages_internal(struct drm_i915_gem_object *obj)
 		goto err;
 	}
 
-	__i915_gem_object_set_pages(obj, st, sg_page_sizes);
+	__i915_gem_object_set_pages(obj, st, i915_sg_dma_sizes(st->sgl));
 
 	return 0;
 
-- 
2.37.3

