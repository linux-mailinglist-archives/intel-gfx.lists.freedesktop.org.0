Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED76127734D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 15:59:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E078B6EB21;
	Thu, 24 Sep 2020 13:59:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AF8A6EB1A;
 Thu, 24 Sep 2020 13:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=UxCKXqRP/rysmc9RNpHAJ/UIhdxbXkB6cd/t5AXU7G8=; b=nRv+YEeYewKaHP55mNdmSAS11o
 U9Oech0FgjNZcrTrkBpq+PptQaFo5K9CSwvRMPRR6unvlkcxomBoazDNs2zTPspK29D0pMwSAwF1d
 I8XWMKwIU4mLyZpJsfNQ7mCADzELo7e0Uuvy1qo/0dKVX0wysVaROWYDGLesbntUtF57jiZShbN2g
 JSHko51TjQMewrRmdZGgaP9DLIOvpQXaaPZFeH+gzjKSJI64DzOKgJ/YdKbaiq9d9k2BY8xAu8bh8
 Qxpgx24LGKQHMArVnLBE8tlnW3k7KsTMC0zFXGJTBZ0MtGAxNPgo77WCS3ILZmAK9iSVn5tnCYZTb
 lzuwTvOg==;
Received: from p4fdb0c34.dip0.t-ipconnect.de ([79.219.12.52] helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLRm5-0003wm-QB; Thu, 24 Sep 2020 13:59:06 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Thu, 24 Sep 2020 15:58:51 +0200
Message-Id: <20200924135853.875294-10-hch@lst.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200924135853.875294-1-hch@lst.de>
References: <20200924135853.875294-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] [PATCH 09/11] xen/xenbus: use apply_to_page_range
 directly in xenbus_map_ring_pv
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

Replacing alloc_vm_area with get_vm_area_caller + apply_page_range
allows to fill put the phys_addr values directly instead of doing
another loop over all addresses.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/xen/xenbus/xenbus_client.c | 30 ++++++++++++++++--------------
 1 file changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/xen/xenbus/xenbus_client.c b/drivers/xen/xenbus/xenbus_client.c
index 2690318ad50f48..fd80e318b99cc7 100644
--- a/drivers/xen/xenbus/xenbus_client.c
+++ b/drivers/xen/xenbus/xenbus_client.c
@@ -73,16 +73,13 @@ struct map_ring_valloc {
 	struct xenbus_map_node *node;
 
 	/* Why do we need two arrays? See comment of __xenbus_map_ring */
-	union {
-		unsigned long addrs[XENBUS_MAX_RING_GRANTS];
-		pte_t *ptes[XENBUS_MAX_RING_GRANTS];
-	};
+	unsigned long addrs[XENBUS_MAX_RING_GRANTS];
 	phys_addr_t phys_addrs[XENBUS_MAX_RING_GRANTS];
 
 	struct gnttab_map_grant_ref map[XENBUS_MAX_RING_GRANTS];
 	struct gnttab_unmap_grant_ref unmap[XENBUS_MAX_RING_GRANTS];
 
-	unsigned int idx;	/* HVM only. */
+	unsigned int idx;
 };
 
 static DEFINE_SPINLOCK(xenbus_valloc_lock);
@@ -686,6 +683,14 @@ int xenbus_unmap_ring_vfree(struct xenbus_device *dev, void *vaddr)
 EXPORT_SYMBOL_GPL(xenbus_unmap_ring_vfree);
 
 #ifdef CONFIG_XEN_PV
+static int map_ring_apply(pte_t *pte, unsigned long addr, void *data)
+{
+	struct map_ring_valloc *info = data;
+
+	info->phys_addrs[info->idx++] = arbitrary_virt_to_machine(pte).maddr;
+	return 0;
+}
+
 static int xenbus_map_ring_pv(struct xenbus_device *dev,
 			      struct map_ring_valloc *info,
 			      grant_ref_t *gnt_refs,
@@ -694,18 +699,15 @@ static int xenbus_map_ring_pv(struct xenbus_device *dev,
 {
 	struct xenbus_map_node *node = info->node;
 	struct vm_struct *area;
-	int err = GNTST_okay;
-	int i;
-	bool leaked;
+	bool leaked = false;
+	int err = -ENOMEM;
 
-	area = alloc_vm_area(XEN_PAGE_SIZE * nr_grefs, info->ptes);
+	area = get_vm_area(XEN_PAGE_SIZE * nr_grefs, VM_IOREMAP);
 	if (!area)
 		return -ENOMEM;
-
-	for (i = 0; i < nr_grefs; i++)
-		info->phys_addrs[i] =
-			arbitrary_virt_to_machine(info->ptes[i]).maddr;
-
+	if (apply_to_page_range(&init_mm, (unsigned long)area->addr,
+				XEN_PAGE_SIZE * nr_grefs, map_ring_apply, info))
+		goto failed;
 	err = __xenbus_map_ring(dev, gnt_refs, nr_grefs, node->handles,
 				info, GNTMAP_host_map | GNTMAP_contains_pte,
 				&leaked);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
