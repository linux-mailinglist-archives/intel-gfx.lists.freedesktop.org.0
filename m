Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6031969804F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 17:14:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA51910EACF;
	Wed, 15 Feb 2023 16:14:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38C0D10EACF;
 Wed, 15 Feb 2023 16:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676477681; x=1708013681;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fBC7jBzo37+O/nCkHNJ6G49Az5rw8kNvRLn7CLfn/ts=;
 b=T3/OqiP3MbeVN3h2OFWdtEtsuvHjJQqxTyYSrDBdPbbPyzOO8w//c4Bj
 t9R1XCpdrNjw1twsgeuul9GWrWGWsMJMcdP/gwSoNKQHniSP+RNtJCgG1
 iP57yEAHpxh4K0nxsa91hIl7IwOZ3yXxCNSNSMAnT48YkafGKiennfgab
 OfuiGdgDPpEATKjkFGOkvoE6oKCQAfLjWbhRiT6YflhfHcAfywihO6aaa
 Vg4pq15areggrhhlLbMXvRPZQPyAuEdQvZYLEocH9ibY1NMKriBNyJbYi
 bNIux8c5BJhKV7MjWhTIbnIdy1RRrYaXZ0afSd4axpUDEm9NX8sZl6RDq g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="393870710"
X-IronPort-AV: E=Sophos;i="5.97,300,1669104000"; d="scan'208";a="393870710"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 08:14:40 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="758472124"
X-IronPort-AV: E=Sophos;i="5.97,300,1669104000"; d="scan'208";a="758472124"
Received: from auliel-mobl1.ger.corp.intel.com (HELO thellstr-mobl1.intel.com)
 ([10.249.254.14])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 08:14:34 -0800
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 15 Feb 2023 17:13:51 +0100
Message-Id: <20230215161405.187368-3-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230215161405.187368-1-thomas.hellstrom@linux.intel.com>
References: <20230215161405.187368-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 02/16] drm/ttm/pool: Fix ttm_pool_alloc
 error path
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
Cc: Miaohe Lin <linmiaohe@huawei.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 David Hildenbrand <david@redhat.com>, NeilBrown <neilb@suse.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-mm@kvack.org,
 Dave Hansen <dave.hansen@intel.com>, Huang Rui <ray.huang@amd.com>,
 linux-graphics-maintainer@vmware.com, Peter Xu <peterx@redhat.com>,
 Johannes Weiner <hannes@cmpxchg.org>, Madhav Chauhan <madhav.chauhan@amd.com>,
 Dave Airlie <airlied@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When hitting an error, the error path forgot to unmap dma mappings and
could call set_pages_wb() on already uncached pages.

Fix this by introducing a common __ttm_pool_free() function that
does the right thing.

Fixes: d099fc8f540a ("drm/ttm: new TT backend allocation pool v3")
Cc: Christian König <christian.koenig@amd.com>
Cc: Dave Airlie <airlied@redhat.com>
Cc: Madhav Chauhan <madhav.chauhan@amd.com>
Cc: Christian Koenig <christian.koenig@amd.com>
Cc: Huang Rui <ray.huang@amd.com>
Cc: dri-devel@lists.freedesktop.org
Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/ttm/ttm_pool.c | 74 +++++++++++++++++++++-------------
 1 file changed, 45 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_pool.c b/drivers/gpu/drm/ttm/ttm_pool.c
index aa116a7bbae3..1cc7591a9542 100644
--- a/drivers/gpu/drm/ttm/ttm_pool.c
+++ b/drivers/gpu/drm/ttm/ttm_pool.c
@@ -367,6 +367,39 @@ static int ttm_pool_page_allocated(struct ttm_pool *pool, unsigned int order,
 	return 0;
 }
 
+static void __ttm_pool_free(struct ttm_pool *pool, struct ttm_tt *tt,
+			    struct page **caching_divide,
+			    enum ttm_caching initial_caching,
+			    enum ttm_caching subseq_caching,
+			    pgoff_t num_pages)
+{
+	enum ttm_caching caching = subseq_caching;
+	struct page **pages = tt->pages;
+	unsigned int order;
+	pgoff_t i, nr;
+
+	if (pool && caching_divide)
+		caching = initial_caching;
+
+	for (i = 0; i < num_pages; i += nr, pages += nr) {
+		struct ttm_pool_type *pt = NULL;
+
+		if (unlikely(caching_divide == pages))
+			caching = subseq_caching;
+
+		order = ttm_pool_page_order(pool, *pages);
+		nr = (1UL << order);
+		if (tt->dma_address)
+			ttm_pool_unmap(pool, tt->dma_address[i], nr);
+
+		pt = ttm_pool_select_type(pool, caching, order);
+		if (pt)
+			ttm_pool_type_give(pt, *pages);
+		else
+			ttm_pool_free_page(pool, caching, order, *pages);
+	}
+}
+
 /**
  * ttm_pool_alloc - Fill a ttm_tt object
  *
@@ -386,8 +419,9 @@ int ttm_pool_alloc(struct ttm_pool *pool, struct ttm_tt *tt,
 	dma_addr_t *dma_addr = tt->dma_address;
 	struct page **caching = tt->pages;
 	struct page **pages = tt->pages;
+	enum ttm_caching page_caching;
 	gfp_t gfp_flags = GFP_USER;
-	unsigned int i, order;
+	unsigned int order;
 	struct page *p;
 	int r;
 
@@ -410,6 +444,7 @@ int ttm_pool_alloc(struct ttm_pool *pool, struct ttm_tt *tt,
 	     order = min_t(unsigned int, order, __fls(num_pages))) {
 		struct ttm_pool_type *pt;
 
+		page_caching = tt->caching;
 		pt = ttm_pool_select_type(pool, tt->caching, order);
 		p = pt ? ttm_pool_type_take(pt) : NULL;
 		if (p) {
@@ -418,6 +453,7 @@ int ttm_pool_alloc(struct ttm_pool *pool, struct ttm_tt *tt,
 			if (r)
 				goto error_free_page;
 
+			caching = pages;
 			do {
 				r = ttm_pool_page_allocated(pool, order, p,
 							    &dma_addr,
@@ -426,14 +462,15 @@ int ttm_pool_alloc(struct ttm_pool *pool, struct ttm_tt *tt,
 				if (r)
 					goto error_free_page;
 
+				caching = pages;
 				if (num_pages < (1 << order))
 					break;
 
 				p = ttm_pool_type_take(pt);
 			} while (p);
-			caching = pages;
 		}
 
+		page_caching = ttm_cached;
 		while (num_pages >= (1 << order) &&
 		       (p = ttm_pool_alloc_page(pool, gfp_flags, order))) {
 
@@ -442,6 +479,7 @@ int ttm_pool_alloc(struct ttm_pool *pool, struct ttm_tt *tt,
 							   tt->caching);
 				if (r)
 					goto error_free_page;
+				caching = pages;
 			}
 			r = ttm_pool_page_allocated(pool, order, p, &dma_addr,
 						    &num_pages, &pages);
@@ -468,15 +506,12 @@ int ttm_pool_alloc(struct ttm_pool *pool, struct ttm_tt *tt,
 	return 0;
 
 error_free_page:
-	ttm_pool_free_page(pool, tt->caching, order, p);
+	ttm_pool_free_page(pool, page_caching, order, p);
 
 error_free_all:
 	num_pages = tt->num_pages - num_pages;
-	for (i = 0; i < num_pages; ) {
-		order = ttm_pool_page_order(pool, tt->pages[i]);
-		ttm_pool_free_page(pool, tt->caching, order, tt->pages[i]);
-		i += 1 << order;
-	}
+	__ttm_pool_free(pool, tt, caching, tt->caching, ttm_cached,
+			num_pages);
 
 	return r;
 }
@@ -492,27 +527,8 @@ EXPORT_SYMBOL(ttm_pool_alloc);
  */
 void ttm_pool_free(struct ttm_pool *pool, struct ttm_tt *tt)
 {
-	unsigned int i;
-
-	for (i = 0; i < tt->num_pages; ) {
-		struct page *p = tt->pages[i];
-		unsigned int order, num_pages;
-		struct ttm_pool_type *pt;
-
-		order = ttm_pool_page_order(pool, p);
-		num_pages = 1ULL << order;
-		if (tt->dma_address)
-			ttm_pool_unmap(pool, tt->dma_address[i], num_pages);
-
-		pt = ttm_pool_select_type(pool, tt->caching, order);
-		if (pt)
-			ttm_pool_type_give(pt, tt->pages[i]);
-		else
-			ttm_pool_free_page(pool, tt->caching, order,
-					   tt->pages[i]);
-
-		i += num_pages;
-	}
+	__ttm_pool_free(pool, tt, NULL, tt->caching, tt->caching,
+			tt->num_pages);
 
 	while (atomic_long_read(&allocated_pages) > page_pool_size)
 		ttm_pool_shrink();
-- 
2.34.1

