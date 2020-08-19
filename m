Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B112A24A635
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 20:49:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DECD6E5C0;
	Wed, 19 Aug 2020 18:49:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 025C56E5B0
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 18:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=SFuii2T6WPhgcSR/n6o4MUthReftxuKz6bFegDk7V6Y=; b=fHiweH4xvcHxBZBo/Hs4Zh/x8q
 IOR/lnZgsQ40NMoRAkmTBSFUeWvZ+BhxiVYwvmJ6/Pq6aCH0ZcHkN4WQpVwHrbcFgnTPrMOR5ZG+2
 sb+yfADxrEVowOqFCkiUp4DXUwwrI2Aoz5w+0Ps1J3NhxsPfFcad6NmL7IL38er0SZfwH6JR7ji29
 hGF/hfcvukAn8t3r6FgFgVC4LRBRJHcWoDjO9oczio+FTlp8gZq5Lyn6eyhG8b1Bik8v4IiSoW96m
 g4sKNy+aJq94mEab3qR1Xgw19wyvZ83QaPb2dmDmI8OXMdf9Fl7fauESRq9u9FzhI8WObi5xkFtEh
 ACKe314Q==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1k8T8p-0006Tz-Hr; Wed, 19 Aug 2020 18:48:55 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-mm@kvack.org
Date: Wed, 19 Aug 2020 19:48:48 +0100
Message-Id: <20200819184850.24779-7-willy@infradead.org>
X-Mailer: git-send-email 2.21.3
In-Reply-To: <20200819184850.24779-1-willy@infradead.org>
References: <20200819184850.24779-1-willy@infradead.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/8] mm: Convert find_get_entry to return the
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

There are only three callers remaining of find_get_entry().
find_get_swap_page() is happy to get the head page instead of the subpage.
Add find_subpage() calls to find_lock_entry() and pagecache_get_page()
to avoid auditing all their callers.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 include/linux/pagemap.h |  4 ++--
 mm/filemap.c            | 13 +++++++------
 2 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index 7de11dcd534d..8261c64f592d 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -384,8 +384,8 @@ static inline struct page *find_subpage(struct page *head, pgoff_t index)
 	return head + (index & (thp_nr_pages(head) - 1));
 }
 
-struct page *find_get_entry(struct address_space *mapping, pgoff_t offset);
-struct page *find_lock_entry(struct address_space *mapping, pgoff_t offset);
+struct page *find_get_entry(struct address_space *mapping, pgoff_t index);
+struct page *find_lock_entry(struct address_space *mapping, pgoff_t index);
 unsigned find_get_entries(struct address_space *mapping, pgoff_t start,
 			  unsigned int nr_entries, struct page **entries,
 			  pgoff_t *indices);
diff --git a/mm/filemap.c b/mm/filemap.c
index 36067cf7f8c5..5a87e1bdddd6 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -1547,19 +1547,19 @@ EXPORT_SYMBOL(page_cache_prev_miss);
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
@@ -1587,7 +1587,6 @@ struct page *find_get_entry(struct address_space *mapping, pgoff_t offset)
 		put_page(page);
 		goto repeat;
 	}
-	page = find_subpage(page, offset);
 out:
 	rcu_read_unlock();
 
@@ -1624,6 +1623,7 @@ struct page *find_lock_entry(struct address_space *mapping, pgoff_t offset)
 			put_page(page);
 			goto repeat;
 		}
+		page = find_subpage(page, offset);
 		VM_BUG_ON_PAGE(page_to_pgoff(page) != offset, page);
 	}
 	return page;
@@ -1670,6 +1670,7 @@ struct page *pagecache_get_page(struct address_space *mapping, pgoff_t index,
 		page = NULL;
 	if (!page)
 		goto no_page;
+	page = find_subpage(page, index);
 
 	if (fgp_flags & FGP_LOCK) {
 		if (fgp_flags & FGP_NOWAIT) {
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
