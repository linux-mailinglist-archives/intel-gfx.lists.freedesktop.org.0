Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8BC27F0C2
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 19:52:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 494D06E81B;
	Wed, 30 Sep 2020 17:52:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DA0B6E580;
 Wed, 30 Sep 2020 17:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=EtVpkGxd0Kyhqnh/t2FVgPRi015JMv+YUxF5ITQDDnw=; b=wRGt4EZ+2E5doJTK4BmkM+D/+o
 Dw04jnAiVsd8EeZlT/iM7dcBWh9nEdUYaM3QlQFzIBfFUrQz6ym6uMLch3YYJ1gNmWsFeQ+DGI5hA
 6RbHCb4kh/WuFF20eWHk386XzGBd64UtU3AaFJfDc1tqK479wRzY3Y5P1tuGmg4lRK7xW2DHD8lrC
 u88YURg64H9BWCOi0q1q70JYWCmlUf5QVubTIUQrp/FKxmiaD8hbc53nc5WN+5oxqt01VyTs0zV2m
 dBOz8RchoXv6Clq4JpwOKYJcyJmPKZuczxlKVrpSuAR61lRlDRmavVeyDRdv+nI8MiK97msrBVpqE
 sTeju+vA==;
Received: from [2001:4bb8:180:7b62:c70:4a89:bc61:4] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNgGO-0001Bg-9G; Wed, 30 Sep 2020 17:51:36 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Wed, 30 Sep 2020 19:51:24 +0200
Message-Id: <20200930175133.1252382-2-hch@lst.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200930175133.1252382-1-hch@lst.de>
References: <20200930175133.1252382-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] [PATCH 01/10] mm: update the documentation for vfree
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
Cc: Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Matthew Wilcox <willy@infradead.org>, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org, Peter Zijlstra <peterz@infradead.org>,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org, x86@kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Minchan Kim <minchan@kernel.org>,
 Matthew Auld <matthew.auld@intel.com>, xen-devel@lists.xenproject.org,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>, Nitin Gupta <ngupta@vflare.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: "Matthew Wilcox (Oracle)" <willy@infradead.org>

 * Document that you can call vfree() on an address returned from vmap()
 * Remove the note about the minimum size -- the minimum size of a vmalloc
   allocation is one page
 * Add a Context: section
 * Fix capitalisation
 * Reword the prohibition on calling from NMI context to avoid a double
   negative

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 mm/vmalloc.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/mm/vmalloc.c b/mm/vmalloc.c
index be4724b916b3e7..8770260419af06 100644
--- a/mm/vmalloc.c
+++ b/mm/vmalloc.c
@@ -2321,20 +2321,21 @@ static void __vfree(const void *addr)
 }
 
 /**
- * vfree - release memory allocated by vmalloc()
- * @addr:  memory base address
+ * vfree - Release memory allocated by vmalloc()
+ * @addr:  Memory base address
  *
- * Free the virtually continuous memory area starting at @addr, as
- * obtained from vmalloc(), vmalloc_32() or __vmalloc(). If @addr is
- * NULL, no operation is performed.
+ * Free the virtually continuous memory area starting at @addr, as obtained
+ * from one of the vmalloc() family of APIs.  This will usually also free the
+ * physical memory underlying the virtual allocation, but that memory is
+ * reference counted, so it will not be freed until the last user goes away.
  *
- * Must not be called in NMI context (strictly speaking, only if we don't
- * have CONFIG_ARCH_HAVE_NMI_SAFE_CMPXCHG, but making the calling
- * conventions for vfree() arch-depenedent would be a really bad idea)
+ * If @addr is NULL, no operation is performed.
  *
+ * Context:
  * May sleep if called *not* from interrupt context.
- *
- * NOTE: assumes that the object at @addr has a size >= sizeof(llist_node)
+ * Must not be called in NMI context (strictly speaking, it could be
+ * if we have CONFIG_ARCH_HAVE_NMI_SAFE_CMPXCHG, but making the calling
+ * conventions for vfree() arch-depenedent would be a really bad idea).
  */
 void vfree(const void *addr)
 {
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
