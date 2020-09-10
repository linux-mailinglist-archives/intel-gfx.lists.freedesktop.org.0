Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB4D264D14
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 20:33:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43F206E980;
	Thu, 10 Sep 2020 18:33:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3F9C6E97E
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=wbdpAXqj/iEx6EyIMoxgt0sVerHjAkyShMVwI+uny1Q=; b=pJRs1fv6/U1cDPcHJO/d6uGe68
 zx+LxtAYUzYOOMLNaWcwUA/TDBT9LWGZGazRv/4K91Y7ZzYrFNMQLcC51R6CReznUaXHfu4qcDuVB
 rWQAtWLeNfvDT3ylTYEmaiMC9hRiBEa/cU3QfmlGhRV1uY9l0cAGOsYJVsE8bojVTGu4BW0uwRCIk
 tIuSB227gJFvCj97WZ9JvFGphzpl857t6IhN/UdDNCduoat3cq+DyiiBvsFoaRX1asx2bFbZmBi5s
 3uF74gDU/S3WNrL4Pe4C/6j5y+/7h5eBqxuBEauyS42arTqIsrdzU2N3wtaIlLlTnX4oz7Cp9GgSm
 9QoNUXyg==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kGRNp-0005GW-Ou; Thu, 10 Sep 2020 18:33:21 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-mm@kvack.org
Date: Thu, 10 Sep 2020 19:33:16 +0100
Message-Id: <20200910183318.20139-7-willy@infradead.org>
X-Mailer: git-send-email 2.21.3
In-Reply-To: <20200910183318.20139-1-willy@infradead.org>
References: <20200910183318.20139-1-willy@infradead.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 6/8] mm: Convert find_get_entry to return the
 head page
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

There are only four callers remaining of find_get_entry().
get_shadow_from_swap_cache() only wants to see shadow entries and doesn't
care about which page is returned.  Push the find_subpage() call into
find_lock_entry(), find_get_incore_page() and pagecache_get_page().

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 mm/filemap.c    | 13 +++++++------
 mm/swap_state.c |  2 +-
 2 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/mm/filemap.c b/mm/filemap.c
index d64f6f76bc0b..2f134383b0ae 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -1567,19 +1567,19 @@ EXPORT_SYMBOL(page_cache_prev_miss);
 /**
  * find_get_entry - find and get a page cache entry
  * @mapping: the address_space to search
- * @offset: the page cache index
+ * @index: The page cache index.
  *
  * Looks up the page cache slot at @mapping & @offset.  If there is a
- * page cache page, it is returned with an increased refcount.
+ * page cache page, the head page is returned with an increased refcount.
  *
  * If the slot holds a shadow entry of a previously evicted page, or a
  * swap entry from shmem/tmpfs, it is returned.
  *
- * Return: the found page or shadow entry, %NULL if nothing is found.
+ * Return: The head page or shadow entry, %NULL if nothing is found.
  */
-struct page *find_get_entry(struct address_space *mapping, pgoff_t offset)
+struct page *find_get_entry(struct address_space *mapping, pgoff_t index)
 {
-	XA_STATE(xas, &mapping->i_pages, offset);
+	XA_STATE(xas, &mapping->i_pages, index);
 	struct page *page;
 
 	rcu_read_lock();
@@ -1607,7 +1607,6 @@ struct page *find_get_entry(struct address_space *mapping, pgoff_t offset)
 		put_page(page);
 		goto repeat;
 	}
-	page = find_subpage(page, offset);
 out:
 	rcu_read_unlock();
 
@@ -1644,6 +1643,7 @@ struct page *find_lock_entry(struct address_space *mapping, pgoff_t offset)
 			put_page(page);
 			goto repeat;
 		}
+		page = find_subpage(page, offset);
 		VM_BUG_ON_PAGE(page_to_pgoff(page) != offset, page);
 	}
 	return page;
@@ -1690,6 +1690,7 @@ struct page *pagecache_get_page(struct address_space *mapping, pgoff_t index,
 		page = NULL;
 	if (!page)
 		goto no_page;
+	page = find_subpage(page, index);
 
 	if (fgp_flags & FGP_LOCK) {
 		if (fgp_flags & FGP_NOWAIT) {
diff --git a/mm/swap_state.c b/mm/swap_state.c
index c79e2242dd04..c8cf1757ca06 100644
--- a/mm/swap_state.c
+++ b/mm/swap_state.c
@@ -432,7 +432,7 @@ struct page *find_get_incore_page(struct address_space *mapping, pgoff_t index)
 	struct page *page = find_get_entry(mapping, index);
 
 	if (!xa_is_value(page))
-		return page;
+		return find_subpage(page, index);
 	if (!shmem_mapping(mapping))
 		return NULL;
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
