Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4887B24A630
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 20:49:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDF096E5B4;
	Wed, 19 Aug 2020 18:49:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 089946E5B0
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 18:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=p9w3DQmYzQVsLNeG7R7MdPybBJO6jXoNftILGTf+IE0=; b=s/Fj5e9N4i8MPBUyLdHzmYltJH
 W95qh4IqdO+bgeV/dKBXO34yVAYFsjEf92o4CweV2SCp098vES4xu2VCaPtffdljiQgVFusO0lPtR
 mVxJiPVCa8G/0SULJ8xl53dhiTptsPOCo1sLkBvQH4SedICuiVc6SD74X35sX59AOfjyMClCYGUzr
 978Ku/CwTM5ej8GuG7J5Hwsz0uakDJFFzqaSPsaVyedNaFZ8G9IsmSt4Xk4MOwfTnNBgqvB1gV7u9
 lDbXNqBWefAsnr4EO2lUpq8B6IotkPmE/O6f+kHf5745L3YB4RJNSt3UO0+ggGjOLpewsg3FA6VVz
 e6DXDilg==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1k8T8p-0006UC-TJ; Wed, 19 Aug 2020 18:48:56 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-mm@kvack.org
Date: Wed, 19 Aug 2020 19:48:49 +0100
Message-Id: <20200819184850.24779-8-willy@infradead.org>
X-Mailer: git-send-email 2.21.3
In-Reply-To: <20200819184850.24779-1-willy@infradead.org>
References: <20200819184850.24779-1-willy@infradead.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/8] mm: Return head page from find_lock_entry
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

Convert the one caller of find_lock_entry() to cope with a head page
being returned instead of the subpage for the index.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 include/linux/pagemap.h | 12 ++++++++++++
 mm/filemap.c            | 25 +++++++++++--------------
 mm/shmem.c              | 15 ++++++++-------
 3 files changed, 31 insertions(+), 21 deletions(-)

diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index 8261c64f592d..de8f3758ceaa 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -371,6 +371,18 @@ static inline struct page *grab_cache_page_nowait(struct address_space *mapping,
 			mapping_gfp_mask(mapping));
 }
 
+/*
+ * Is this index for one of the subpages of this page?
+ * This should always be called for a locked, non-hugetlbfs page.
+ */
+static inline bool thp_valid_index(struct page *head, pgoff_t index)
+{
+	VM_BUG_ON_PAGE(PageHuge(head), head);
+	VM_BUG_ON_PAGE(!PageLocked(head), head);
+
+	return head->index == (index & ~(thp_nr_pages(head) - 1));
+}
+
 /*
  * Given the page we found in the page cache, return the page corresponding
  * to this index in the file
diff --git a/mm/filemap.c b/mm/filemap.c
index 5a87e1bdddd6..6594baae7cd2 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -1594,37 +1594,34 @@ struct page *find_get_entry(struct address_space *mapping, pgoff_t index)
 }
 
 /**
- * find_lock_entry - locate, pin and lock a page cache entry
- * @mapping: the address_space to search
- * @offset: the page cache index
+ * find_lock_entry - Locate and lock a page cache entry.
+ * @mapping: The address_space to search.
+ * @index: The page cache index.
  *
- * Looks up the page cache slot at @mapping & @offset.  If there is a
- * page cache page, it is returned locked and with an increased
- * refcount.
+ * Looks up the page at @mapping & @index.  If there is a page in the
+ * cache, the head page is returned locked and with an increased refcount.
  *
  * If the slot holds a shadow entry of a previously evicted page, or a
  * swap entry from shmem/tmpfs, it is returned.
  *
- * find_lock_entry() may sleep.
- *
- * Return: the found page or shadow entry, %NULL if nothing is found.
+ * Context: May sleep.
+ * Return: The head page or shadow entry, %NULL if nothing is found.
  */
-struct page *find_lock_entry(struct address_space *mapping, pgoff_t offset)
+struct page *find_lock_entry(struct address_space *mapping, pgoff_t index)
 {
 	struct page *page;
 
 repeat:
-	page = find_get_entry(mapping, offset);
+	page = find_get_entry(mapping, index);
 	if (page && !xa_is_value(page)) {
 		lock_page(page);
 		/* Has the page been truncated? */
-		if (unlikely(page_mapping(page) != mapping)) {
+		if (unlikely(page->mapping != mapping)) {
 			unlock_page(page);
 			put_page(page);
 			goto repeat;
 		}
-		page = find_subpage(page, offset);
-		VM_BUG_ON_PAGE(page_to_pgoff(page) != offset, page);
+		VM_BUG_ON_PAGE(!thp_valid_index(page, index), page);
 	}
 	return page;
 }
diff --git a/mm/shmem.c b/mm/shmem.c
index 271548ca20f3..bbb43e9d35df 100644
--- a/mm/shmem.c
+++ b/mm/shmem.c
@@ -1834,8 +1834,9 @@ static int shmem_getpage_gfp(struct inode *inode, pgoff_t index,
 		page = NULL;
 	}
 	if (page || sgp == SGP_READ) {
-		*pagep = page;
-		return 0;
+		if (page && PageTransHuge(page))
+			hindex = round_down(index, HPAGE_PMD_NR);
+		goto out;
 	}
 
 	/*
@@ -1961,14 +1962,13 @@ static int shmem_getpage_gfp(struct inode *inode, pgoff_t index,
 	 * it now, lest undo on failure cancel our earlier guarantee.
 	 */
 	if (sgp != SGP_WRITE && !PageUptodate(page)) {
-		struct page *head = compound_head(page);
 		int i;
 
-		for (i = 0; i < compound_nr(head); i++) {
-			clear_highpage(head + i);
-			flush_dcache_page(head + i);
+		for (i = 0; i < compound_nr(page); i++) {
+			clear_highpage(page + i);
+			flush_dcache_page(page + i);
 		}
-		SetPageUptodate(head);
+		SetPageUptodate(page);
 	}
 
 	/* Perhaps the file has been truncated since we checked */
@@ -1984,6 +1984,7 @@ static int shmem_getpage_gfp(struct inode *inode, pgoff_t index,
 		error = -EINVAL;
 		goto unlock;
 	}
+out:
 	*pagep = page + index - hindex;
 	return 0;
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
