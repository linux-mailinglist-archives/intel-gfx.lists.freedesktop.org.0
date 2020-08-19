Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DDF24A62E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 20:49:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C8C36E5B0;
	Wed, 19 Aug 2020 18:49:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3C2E6E5B2
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 18:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=yHlibx9T0xrkfaCUzHO6K9mta5VlhggyQEWPghnljAs=; b=mtqG2R5K+Yx4dE8Kn6VbN3423G
 kIyD7iHdEs9//9zn4d+MqCrVYAzK+wcoAiner0u6ns9sOmIc5tfRAgo27IXLWgMP6nwGY0e6y6pmA
 3HyU19g7ZHaw31ZJ8zxxv6IAybbAuxOaFrkQK2spsvcHh6QuyTpP2yNUbuYLJtWlcWRvqXSIlF0jI
 9Vy40hmXVmrp6grQd7r+oJ7KtTvTI521d9fNWtfKyyqTvGJ4P+MhRWJZc+95qtI0mQz6V/ZnZbfe4
 Kgct1GcrVAvfxOQF0Ag9wTk4R925hXyZsT3fcWZRlbRDSahohQn09B2qh4/GBAkF9CnxwnjMmjRTs
 EKPHJUnA==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1k8T8n-0006T8-TC; Wed, 19 Aug 2020 18:48:53 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-mm@kvack.org
Date: Wed, 19 Aug 2020 19:48:45 +0100
Message-Id: <20200819184850.24779-4-willy@infradead.org>
X-Mailer: git-send-email 2.21.3
In-Reply-To: <20200819184850.24779-1-willy@infradead.org>
References: <20200819184850.24779-1-willy@infradead.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/8] mm: Optimise madvise WILLNEED
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
Cc: intel-gfx@lists.freedesktop.org, Huang Ying <ying.huang@intel.com>,
 Hugh Dickins <hughd@google.com>, linux-kernel@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 William Kucharski <william.kucharski@oracle.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Johannes Weiner <hannes@cmpxchg.org>, cgroups@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Alexey Dobriyan <adobriyan@gmail.com>, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instead of calling find_get_entry() for every page index, use an XArray
iterator to skip over NULL entries, and avoid calling get_page(),
because we only want the swap entries.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 mm/madvise.c | 21 ++++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/mm/madvise.c b/mm/madvise.c
index dd1d43cf026d..96189acd6969 100644
--- a/mm/madvise.c
+++ b/mm/madvise.c
@@ -224,25 +224,28 @@ static void force_shm_swapin_readahead(struct vm_area_struct *vma,
 		unsigned long start, unsigned long end,
 		struct address_space *mapping)
 {
-	pgoff_t index;
+	XA_STATE(xas, &mapping->i_pages, linear_page_index(vma, start));
+	pgoff_t end_index = end / PAGE_SIZE;
 	struct page *page;
-	swp_entry_t swap;
 
-	for (; start < end; start += PAGE_SIZE) {
-		index = ((start - vma->vm_start) >> PAGE_SHIFT) + vma->vm_pgoff;
+	rcu_read_lock();
+	xas_for_each(&xas, page, end_index) {
+		swp_entry_t swap;
 
-		page = find_get_entry(mapping, index);
-		if (!xa_is_value(page)) {
-			if (page)
-				put_page(page);
+		if (!xa_is_value(page))
 			continue;
-		}
+		rcu_read_unlock();
+
 		swap = radix_to_swp_entry(page);
 		page = read_swap_cache_async(swap, GFP_HIGHUSER_MOVABLE,
 							NULL, 0, false);
 		if (page)
 			put_page(page);
+
+		rcu_read_lock();
+		xas_reset(&xas);
 	}
+	rcu_read_unlock();
 
 	lru_add_drain();	/* Push any new pages onto the LRU now */
 }
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
