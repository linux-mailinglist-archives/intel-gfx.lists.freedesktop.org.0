Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B399738C98
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 19:05:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A77210E35B;
	Wed, 21 Jun 2023 17:05:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE4DE10E352
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 17:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=H7xjtBA+jzTamJkZvSrBReaOKW0qDsx5kc7RVJ9s550=; b=t7EgP9l+MssKQftiMAo7VAdBCc
 Nv98h8aNtVO16LGaXGeEq2m9ltD2DVLbWxZHMVIHdnansE52q8B0dmRkBjGAlUiCMoIMy/OreImcr
 5cqHvjHzMp6Nq3yxahSKcv8h0zZPtEmJc2nmPl3Y7HZoHQEaS6cdgbsAZkrux0e53j9vMSEKgXdOK
 EKZ68SjKoRwct8bGiDcah4w9QZ3tVXt3ANsdqnDF3UeEkp2GKmn12AODcUbhsUcILgUOYmiiBAZWV
 9DXjTmPrk3hO4ePJxd9hC8YahWikG3UdRtJUwE1RGLdoobQf/AQ8MdhsOblwR8sJo3t78oQYQslj4
 WpEPi5ag==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qC0y2-00EjEd-D4; Wed, 21 Jun 2023 16:46:02 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-mm@kvack.org,
	Andrew Morton <akpm@linux-foundation.org>
Date: Wed, 21 Jun 2023 17:45:55 +0100
Message-Id: <20230621164557.3510324-12-willy@infradead.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20230621164557.3510324-1-willy@infradead.org>
References: <20230621164557.3510324-1-willy@infradead.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/13] mm: Rename invalidate_mapping_pagevec to
 mapping_try_invalidate
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
Cc: linux-nfs@vger.kernel.org, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org, linux-afs@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We don't use pagevecs for the LRU cache any more, and we don't know
that the failed invalidations were due to the folio being in an
LRU cache.  So rename it to be more accurate.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 mm/fadvise.c  | 16 +++++++---------
 mm/internal.h |  4 ++--
 mm/truncate.c | 25 ++++++++++++-------------
 3 files changed, 21 insertions(+), 24 deletions(-)

diff --git a/mm/fadvise.c b/mm/fadvise.c
index fb7c5f43fd2a..f684ffd7f9c9 100644
--- a/mm/fadvise.c
+++ b/mm/fadvise.c
@@ -143,7 +143,7 @@ int generic_fadvise(struct file *file, loff_t offset, loff_t len, int advice)
 		}
 
 		if (end_index >= start_index) {
-			unsigned long nr_pagevec = 0;
+			unsigned long nr_failed = 0;
 
 			/*
 			 * It's common to FADV_DONTNEED right after
@@ -156,17 +156,15 @@ int generic_fadvise(struct file *file, loff_t offset, loff_t len, int advice)
 			 */
 			lru_add_drain();
 
-			invalidate_mapping_pagevec(mapping,
-						start_index, end_index,
-						&nr_pagevec);
+			mapping_try_invalidate(mapping, start_index, end_index,
+					&nr_failed);
 
 			/*
-			 * If fewer pages were invalidated than expected then
-			 * it is possible that some of the pages were on
-			 * a per-cpu pagevec for a remote CPU. Drain all
-			 * pagevecs and try again.
+			 * The failures may be due to the folio being
+			 * in the LRU cache of a remote CPU. Drain all
+			 * caches and try again.
 			 */
-			if (nr_pagevec) {
+			if (nr_failed) {
 				lru_add_drain_all();
 				invalidate_mapping_pages(mapping, start_index,
 						end_index);
diff --git a/mm/internal.h b/mm/internal.h
index 119a8241f9d9..2ff7587b4045 100644
--- a/mm/internal.h
+++ b/mm/internal.h
@@ -133,8 +133,8 @@ int truncate_inode_folio(struct address_space *mapping, struct folio *folio);
 bool truncate_inode_partial_folio(struct folio *folio, loff_t start,
 		loff_t end);
 long invalidate_inode_page(struct page *page);
-unsigned long invalidate_mapping_pagevec(struct address_space *mapping,
-		pgoff_t start, pgoff_t end, unsigned long *nr_pagevec);
+unsigned long mapping_try_invalidate(struct address_space *mapping,
+		pgoff_t start, pgoff_t end, unsigned long *nr_failed);
 
 /**
  * folio_evictable - Test whether a folio is evictable.
diff --git a/mm/truncate.c b/mm/truncate.c
index 86de31ed4d32..4a917570887f 100644
--- a/mm/truncate.c
+++ b/mm/truncate.c
@@ -486,18 +486,17 @@ void truncate_inode_pages_final(struct address_space *mapping)
 EXPORT_SYMBOL(truncate_inode_pages_final);
 
 /**
- * invalidate_mapping_pagevec - Invalidate all the unlocked pages of one inode
- * @mapping: the address_space which holds the pages to invalidate
+ * mapping_try_invalidate - Invalidate all the evictable folios of one inode
+ * @mapping: the address_space which holds the folios to invalidate
  * @start: the offset 'from' which to invalidate
  * @end: the offset 'to' which to invalidate (inclusive)
- * @nr_pagevec: invalidate failed page number for caller
+ * @nr_failed: How many folio invalidations failed
  *
- * This helper is similar to invalidate_mapping_pages(), except that it accounts
- * for pages that are likely on a pagevec and counts them in @nr_pagevec, which
- * will be used by the caller.
+ * This function is similar to invalidate_mapping_pages(), except that it
+ * returns the number of folios which could not be evicted in @nr_failed.
  */
-unsigned long invalidate_mapping_pagevec(struct address_space *mapping,
-		pgoff_t start, pgoff_t end, unsigned long *nr_pagevec)
+unsigned long mapping_try_invalidate(struct address_space *mapping,
+		pgoff_t start, pgoff_t end, unsigned long *nr_failed)
 {
 	pgoff_t indices[PAGEVEC_SIZE];
 	struct folio_batch fbatch;
@@ -527,9 +526,9 @@ unsigned long invalidate_mapping_pagevec(struct address_space *mapping,
 			 */
 			if (!ret) {
 				deactivate_file_folio(folio);
-				/* It is likely on the pagevec of a remote CPU */
-				if (nr_pagevec)
-					(*nr_pagevec)++;
+				/* Likely in the lru cache of a remote CPU */
+				if (nr_failed)
+					(*nr_failed)++;
 			}
 			count += ret;
 		}
@@ -552,12 +551,12 @@ unsigned long invalidate_mapping_pagevec(struct address_space *mapping,
  * If you want to remove all the pages of one inode, regardless of
  * their use and writeback state, use truncate_inode_pages().
  *
- * Return: the number of the cache entries that were invalidated
+ * Return: The number of indices that had their contents invalidated
  */
 unsigned long invalidate_mapping_pages(struct address_space *mapping,
 		pgoff_t start, pgoff_t end)
 {
-	return invalidate_mapping_pagevec(mapping, start, end, NULL);
+	return mapping_try_invalidate(mapping, start, end, NULL);
 }
 EXPORT_SYMBOL(invalidate_mapping_pages);
 
-- 
2.39.2

