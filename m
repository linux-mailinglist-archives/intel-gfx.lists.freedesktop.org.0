Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 968F8264D0E
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 20:33:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 035BC6E97A;
	Thu, 10 Sep 2020 18:33:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF05C6E979
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 18:33:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=iUQLI4IkKhxmuIt5IQ92wfzZNFFmlqJHR5Mjgm7VnoA=; b=BA9fXgzR2ABZNFehO2jFdouN4b
 iatHnAm3X02YEDHBkg5V7kpzguGHl7vVWOOyszawHEkfApPAg1CVxxTQddRDUlB2DXtjsIPebRC0H
 +RSun9FiyBLil2BxMQTak8vbiwPaq02YTFwtoCHfj3fHL9EVOeHaJFkRRGNvBNMkGf76k2ekSGR8w
 q+6P8md5vudIkfhhBaRydUlngTJBq7gdHAIuO2S8Wb8c5A7bhSSLnSPs5HtyvAHjness9QKziYg+o
 4Su2kksd56Fv0Rz0NaXC5CIngX3owPQbylFWO6K+Gq+ygUkjYDxRzGzapwO8XsA13+zclT89KPb0o
 e7QRA3hQ==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kGRNq-0005Ge-AD; Thu, 10 Sep 2020 18:33:22 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-mm@kvack.org
Date: Thu, 10 Sep 2020 19:33:18 +0100
Message-Id: <20200910183318.20139-9-willy@infradead.org>
X-Mailer: git-send-email 2.21.3
In-Reply-To: <20200910183318.20139-1-willy@infradead.org>
References: <20200910183318.20139-1-willy@infradead.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 8/8] mm: Add find_lock_head
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

Add a new FGP_HEAD flag which avoids calling find_subpage() and add a
convenience wrapper for it.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 include/linux/pagemap.h | 32 ++++++++++++++++++++++++++------
 mm/filemap.c            |  9 ++++++---
 2 files changed, 32 insertions(+), 9 deletions(-)

diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index f374618b2c93..4e52a3ff92fb 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -278,6 +278,7 @@ pgoff_t page_cache_prev_miss(struct address_space *mapping,
 #define FGP_NOFS		0x00000010
 #define FGP_NOWAIT		0x00000020
 #define FGP_FOR_MMAP		0x00000040
+#define FGP_HEAD		0x00000080
 
 struct page *pagecache_get_page(struct address_space *mapping, pgoff_t offset,
 		int fgp_flags, gfp_t cache_gfp_mask);
@@ -309,18 +310,37 @@ static inline struct page *find_get_page_flags(struct address_space *mapping,
  * @mapping: the address_space to search
  * @offset: the page index
  *
- * Looks up the page cache slot at @mapping & @offset.  If there is a
+ * Looks up the page cache entry at @mapping & @offset.  If there is a
  * page cache page, it is returned locked and with an increased
  * refcount.
  *
- * Otherwise, %NULL is returned.
- *
- * find_lock_page() may sleep.
+ * Context: May sleep.
+ * Return: A struct page or %NULL if there is no page in the cache for this
+ * index.
  */
 static inline struct page *find_lock_page(struct address_space *mapping,
-					pgoff_t offset)
+					pgoff_t index)
+{
+	return pagecache_get_page(mapping, index, FGP_LOCK, 0);
+}
+
+/**
+ * find_lock_head - Locate, pin and lock a pagecache page.
+ * @mapping: The address_space to search.
+ * @offset: The page index.
+ *
+ * Looks up the page cache entry at @mapping & @offset.  If there is a
+ * page cache page, its head page is returned locked and with an increased
+ * refcount.
+ *
+ * Context: May sleep.
+ * Return: A struct page which is !PageTail, or %NULL if there is no page
+ * in the cache for this index.
+ */
+static inline struct page *find_lock_head(struct address_space *mapping,
+					pgoff_t index)
 {
-	return pagecache_get_page(mapping, offset, FGP_LOCK, 0);
+	return pagecache_get_page(mapping, index, FGP_LOCK | FGP_HEAD, 0);
 }
 
 /**
diff --git a/mm/filemap.c b/mm/filemap.c
index 453535170b8d..e429e02317ef 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -1659,6 +1659,8 @@ struct page *find_lock_entry(struct address_space *mapping, pgoff_t index)
  *
  * * %FGP_ACCESSED - The page will be marked accessed.
  * * %FGP_LOCK - The page is returned locked.
+ * * %FGP_HEAD - If the page is present and a THP, return the head page
+ *   rather than the exact page specified by the index.
  * * %FGP_CREAT - If no page is present then a new page is allocated using
  *   @gfp_mask and added to the page cache and the VM's LRU list.
  *   The page is returned locked and with an increased refcount.
@@ -1687,7 +1689,6 @@ struct page *pagecache_get_page(struct address_space *mapping, pgoff_t index,
 		page = NULL;
 	if (!page)
 		goto no_page;
-	page = find_subpage(page, index);
 
 	if (fgp_flags & FGP_LOCK) {
 		if (fgp_flags & FGP_NOWAIT) {
@@ -1700,12 +1701,12 @@ struct page *pagecache_get_page(struct address_space *mapping, pgoff_t index,
 		}
 
 		/* Has the page been truncated? */
-		if (unlikely(compound_head(page)->mapping != mapping)) {
+		if (unlikely(page->mapping != mapping)) {
 			unlock_page(page);
 			put_page(page);
 			goto repeat;
 		}
-		VM_BUG_ON_PAGE(page->index != index, page);
+		VM_BUG_ON_PAGE(!thp_contains(page, index), page);
 	}
 
 	if (fgp_flags & FGP_ACCESSED)
@@ -1715,6 +1716,8 @@ struct page *pagecache_get_page(struct address_space *mapping, pgoff_t index,
 		if (page_is_idle(page))
 			clear_page_idle(page);
 	}
+	if (!(fgp_flags & FGP_HEAD))
+		page = find_subpage(page, index);
 
 no_page:
 	if (!page && (fgp_flags & FGP_CREAT)) {
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
