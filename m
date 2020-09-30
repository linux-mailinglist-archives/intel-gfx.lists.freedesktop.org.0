Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A61527F0CB
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 19:52:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2745B6E81F;
	Wed, 30 Sep 2020 17:52:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BD196E7E6;
 Wed, 30 Sep 2020 17:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=aKbcvSTUYHnc5Kwat+nQ3mcktPzxpqXoVaxpdMprQBc=; b=CpPbN3ixHM87YY3u9XM3Qv+U7T
 1ZWv8GVgV6IxroFPz3OTmX0Pvp+2NDzRr4qI7h1iJaBus5DlsMnTe2D91JP/X3IVr95lVLMJV1nvH
 D9Os2QRPqW7J6RDHO1kY7okt1bF/FA1lHIbFlVkHQo/rkpDvgaS5aoBM6saFqyGifoYvIjFyGQMzE
 nCpf/HBAlm8ElQB7pCVubi8N9HqQ1iV6uH3LxWO2hN1BUnaEIDYz76I/QQqBQqiRZ7Q9lYlmRLZ/F
 73ufU43CuubCJKrxqv+c3PvEcn6kc89SL24CgkYdHvU/uyKb1K6tQ4Inps8UoBNoa+BVSXTsdMGNn
 1BJqCBzA==;
Received: from [2001:4bb8:180:7b62:c70:4a89:bc61:4] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNgGZ-0001D6-Mw; Wed, 30 Sep 2020 17:51:49 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Wed, 30 Sep 2020 19:51:32 +0200
Message-Id: <20200930175133.1252382-10-hch@lst.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200930175133.1252382-1-hch@lst.de>
References: <20200930175133.1252382-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] [PATCH 09/10] x86/xen: open code alloc_vm_area in
 arch_gnttab_valloc
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

Replace the last call to alloc_vm_area with an open coded version using
an iterator in struct gnttab_vm_area instead of the triple indirection
magic in alloc_vm_area.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Boris Ostrovsky <boris.ostrovsky@oracle.com>
---
 arch/x86/xen/grant-table.c | 27 ++++++++++++++++++++-------
 1 file changed, 20 insertions(+), 7 deletions(-)

diff --git a/arch/x86/xen/grant-table.c b/arch/x86/xen/grant-table.c
index 4988e19598c8a5..1e681bf62561a0 100644
--- a/arch/x86/xen/grant-table.c
+++ b/arch/x86/xen/grant-table.c
@@ -25,6 +25,7 @@
 static struct gnttab_vm_area {
 	struct vm_struct *area;
 	pte_t **ptes;
+	int idx;
 } gnttab_shared_vm_area, gnttab_status_vm_area;
 
 int arch_gnttab_map_shared(unsigned long *frames, unsigned long nr_gframes,
@@ -90,19 +91,31 @@ void arch_gnttab_unmap(void *shared, unsigned long nr_gframes)
 	}
 }
 
+static int gnttab_apply(pte_t *pte, unsigned long addr, void *data)
+{
+	struct gnttab_vm_area *area = data;
+
+	area->ptes[area->idx++] = pte;
+	return 0;
+}
+
 static int arch_gnttab_valloc(struct gnttab_vm_area *area, unsigned nr_frames)
 {
 	area->ptes = kmalloc_array(nr_frames, sizeof(*area->ptes), GFP_KERNEL);
 	if (area->ptes == NULL)
 		return -ENOMEM;
-
-	area->area = alloc_vm_area(PAGE_SIZE * nr_frames, area->ptes);
-	if (area->area == NULL) {
-		kfree(area->ptes);
-		return -ENOMEM;
-	}
-
+	area->area = get_vm_area(PAGE_SIZE * nr_frames, VM_IOREMAP);
+	if (!area->area)
+		goto out_free_ptes;
+	if (apply_to_page_range(&init_mm, (unsigned long)area->area->addr,
+			PAGE_SIZE * nr_frames, gnttab_apply, area))
+		goto out_free_vm_area;
 	return 0;
+out_free_vm_area:
+	free_vm_area(area->area);
+out_free_ptes:
+	kfree(area->ptes);
+	return -ENOMEM;
 }
 
 static void arch_gnttab_vfree(struct gnttab_vm_area *area)
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
