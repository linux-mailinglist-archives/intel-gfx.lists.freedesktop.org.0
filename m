Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2684AA5697C
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 14:54:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B31010EB63;
	Fri,  7 Mar 2025 13:54:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="bCVkhALH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EF9B10EB71
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Mar 2025 13:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=HxorfBgE1Uv1byaGENr7pDp1WuWnctNAqk3G3c3CU84=; b=bCVkhALHyYVYY1ZRHBnGCe1QqL
 8t9wy2R3quPKYY4KBJyKMDggEYqBMvyCoNB8ICvghWixxhaz2jHMV6kVsIBsS+bOqoviiM8jrxF93
 KK7250g/MVmbkejykejPIZUR7m1LWlifvA2DGHN9yI6tQfjMfPBUXmF/5ACR0oDEtKoUqUhDtY5EP
 qLR1PHgla+HM0OaedXb5zEhjTMpfsPsUkAk/EYR0zSWDnyo9UaJNpVmVJeHbpksEvmq8VwlSllVEm
 FPc66REQWUxZNFcxxaKY7WUBtHPkb9W77w4/IYg+4Xb6ET1gl7Tnsyb1P0/KRqSHbLzl4c8QG/TFQ
 dVrqbC0A==;
Received: from willy by casper.infradead.org with local (Exim 4.98 #2 (Red Hat
 Linux)) id 1tqY9Y-0000000CXGh-2pLo; Fri, 07 Mar 2025 13:54:16 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Cc: "Matthew Wilcox (Oracle)" <willy@infradead.org>, linux-mm@kvack.org,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/11] i915: Use writeback_iter()
Date: Fri,  7 Mar 2025 13:54:09 +0000
Message-ID: <20250307135414.2987755-10-willy@infradead.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250307135414.2987755-1-willy@infradead.org>
References: <20250307135414.2987755-1-willy@infradead.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert from an inefficient loop to the standard writeback iterator.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 32 ++++++-----------------
 1 file changed, 8 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index ae3343c81a64..5e784db9f315 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -305,36 +305,20 @@ void __shmem_writeback(size_t size, struct address_space *mapping)
 		.range_end = LLONG_MAX,
 		.for_reclaim = 1,
 	};
-	unsigned long i;
+	struct folio *folio = NULL;
+	int error = 0;
 
 	/*
 	 * Leave mmapings intact (GTT will have been revoked on unbinding,
-	 * leaving only CPU mmapings around) and add those pages to the LRU
+	 * leaving only CPU mmapings around) and add those folios to the LRU
 	 * instead of invoking writeback so they are aged and paged out
 	 * as normal.
 	 */
-
-	/* Begin writeback on each dirty page */
-	for (i = 0; i < size >> PAGE_SHIFT; i++) {
-		struct page *page;
-
-		page = find_lock_page(mapping, i);
-		if (!page)
-			continue;
-
-		if (!page_mapped(page) && clear_page_dirty_for_io(page)) {
-			int ret;
-
-			SetPageReclaim(page);
-			ret = mapping->a_ops->writepage(page, &wbc);
-			if (!PageWriteback(page))
-				ClearPageReclaim(page);
-			if (!ret)
-				goto put;
-		}
-		unlock_page(page);
-put:
-		put_page(page);
+	while ((folio = writeback_iter(mapping, &wbc, folio, &error))) {
+		if (folio_mapped(folio))
+			folio_redirty_for_writepage(&wbc, folio);
+		else
+			error = shmem_writeout(folio, &wbc);
 	}
 }
 
-- 
2.47.2

