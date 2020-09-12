Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB5626776B
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Sep 2020 05:21:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84B466E046;
	Sat, 12 Sep 2020 03:21:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D394B6E046
 for <intel-gfx@lists.freedesktop.org>; Sat, 12 Sep 2020 03:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=3XyNqMnXE3dOK2LZAXqfj7lb32o+C6Csf8Brn5Bb450=; b=POSXWmPe4sISzgZQH+wc1kFuN3
 zmQW6gC6mLwro2U2FtHW7Sq93S+VHIBsct6sWrOaNPkyAQFzzqNf8xvDFwDMjm9G5OBLpip/L2MCw
 2hgEDnwZb400PZWOBSnVpoQJXOd33tlbN5YkfZGu7uS9j2nvE7pEH4Zr6Eg0MhTouPNg+RPUrpqXd
 rPj6X2GCPbfbcGJ7tF3ijPy4hbLotRMAy/KayY7tFS0lna10TRTjm1hPkjAVjVF4clTnF+G0+t5Ua
 DN0oTTARMku5+xwm3lRWb1U1vQmFiBoUDSzwq1nbBeRykblqL6AYaT3brtZD134pn2pzNW7IjXeDe
 RAIxAAgQ==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kGw5i-0006YH-Ck; Sat, 12 Sep 2020 03:20:42 +0000
Date: Sat, 12 Sep 2020 04:20:42 +0100
From: Matthew Wilcox <willy@infradead.org>
To: linux-mm@kvack.org
Message-ID: <20200912032042.GA6583@casper.infradead.org>
References: <20200910183318.20139-1-willy@infradead.org>
 <20200910183318.20139-8-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200910183318.20139-8-willy@infradead.org>
Subject: Re: [Intel-gfx] [PATCH v2 7/8] mm/shmem: Return head page from
 find_lock_entry
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
 Matthew Auld <matthew.auld@intel.com>, Johannes Weiner <hannes@cmpxchg.org>,
 cgroups@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Alexey Dobriyan <adobriyan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 10, 2020 at 07:33:17PM +0100, Matthew Wilcox (Oracle) wrote:
> Convert shmem_getpage_gfp() (the only remaining caller of
> find_lock_entry()) to cope with a head page being returned instead of
> the subpage for the index.

This version was buggy.  Apparently I was too focused on running the test suite against XFS and neglected to run it against tmpfs, which crashed instantly.

Here's the patch I should have sent.

commit 7bfa655881da76f3386e6d4c07e38a165b4a6ca8
Author: Matthew Wilcox (Oracle) <willy@infradead.org>
Date:   Sun Aug 2 07:22:34 2020 -0400

    mm/shmem: Return head page from find_lock_entry
    
    Convert shmem_getpage_gfp() (the only remaining caller of
    find_lock_entry()) to cope with a head page being returned instead of
    the subpage for the index.
    
    Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>

diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index 905a64030647..f374618b2c93 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -371,6 +371,15 @@ static inline struct page *grab_cache_page_nowait(struct address_space *mapping,
 			mapping_gfp_mask(mapping));
 }
 
+/* Does this page contain this index? */
+static inline bool thp_contains(struct page *head, pgoff_t index)
+{
+	/* HugeTLBfs indexes the page cache in units of hpage_size */
+	if (PageHuge(head))
+		return head->index == index;
+	return page_index(head) == (index & ~(thp_nr_pages(head) - 1UL));
+}
+
 /*
  * Given the page we found in the page cache, return the page corresponding
  * to this index in the file
diff --git a/mm/filemap.c b/mm/filemap.c
index 2f134383b0ae..453535170b8d 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -1614,37 +1614,34 @@ struct page *find_get_entry(struct address_space *mapping, pgoff_t index)
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
+		VM_BUG_ON_PAGE(!thp_contains(page, index), page);
 	}
 	return page;
 }
diff --git a/mm/shmem.c b/mm/shmem.c
index 271548ca20f3..58bc9e326d0d 100644
--- a/mm/shmem.c
+++ b/mm/shmem.c
@@ -1822,6 +1822,8 @@ static int shmem_getpage_gfp(struct inode *inode, pgoff_t index,
 		return error;
 	}
 
+	if (page)
+		hindex = page->index;
 	if (page && sgp == SGP_WRITE)
 		mark_page_accessed(page);
 
@@ -1832,11 +1834,10 @@ static int shmem_getpage_gfp(struct inode *inode, pgoff_t index,
 		unlock_page(page);
 		put_page(page);
 		page = NULL;
+		hindex = index;
 	}
-	if (page || sgp == SGP_READ) {
-		*pagep = page;
-		return 0;
-	}
+	if (page || sgp == SGP_READ)
+		goto out;
 
 	/*
 	 * Fast cache lookup did not find it:
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
 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
