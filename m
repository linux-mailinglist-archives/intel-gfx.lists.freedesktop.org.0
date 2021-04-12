Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1751F35BBB7
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 10:09:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5214C6E221;
	Mon, 12 Apr 2021 08:09:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00BAB6E21C
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 08:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
 Subject:Cc:To:From:Date:Message-ID:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To;
 bh=OtIPE7LdX+QBKK2tSqSr9/uYg2L3KF1qrgrA2x1fPJU=; b=Wu1I1vXFc6dGqQYFarxc8bK06Z
 Km2Pr+jwqQnttpzYUbE7RzxcmP+jqsL1r4g9+WKNlXWUx6AZhWfGvqlybyVpkz/ezIvV9k9lYtf9O
 W+YPJfUsHf8VfwtRK3kABW9KX2uiytcBvcR/K7XX2/XPWeOUHmJb0tYFs23aUlVZgq8U5UGakAHJt
 Ys9Ao6rc2EtVEme7dy1Vh2i3iPxrEFdBLEArAgjcH3ulGRsrfEAr43PiPB8w8EBlERdGpKdzxUOWa
 6Ssq6pYqqh+++0luSnKiSkLi6GwsqvySfVv0Lza4l5oi59GGVvBxU5OtdzdInLFNlEOvRtA8csp+d
 CT0XxotA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lVrcl-003yd7-5P; Mon, 12 Apr 2021 08:08:49 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 7DE8230022D;
 Mon, 12 Apr 2021 10:08:44 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 0)
 id 347FB25F2152E; Mon, 12 Apr 2021 10:08:44 +0200 (CEST)
Message-ID: <20210412080611.635125063@infradead.org>
User-Agent: quilt/0.66
Date: Mon, 12 Apr 2021 10:00:14 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: akpm@linux-foundation.org
References: <20210412080012.357146277@infradead.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/7] xen/gntdev,
 x86: Remove apply_to_page_range() use from module
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
Cc: jgross@suse.com, sstabellini@kernel.org, keescook@chromium.org,
 peterz@infradead.org, intel-gfx@lists.freedesktop.org, x86@kernel.org,
 linux-kernel@vger.kernel.org, chris@chris-wilson.co.uk, linux-mm@kvack.org,
 boris.ostrovsky@oracle.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instead of relying on apply_to_page_range() being available to
modules, move its use into core kernel code and export it's
application.

NOTE: ideally we do: use_ptemod = !auto_translate_physmap &&
gnttab_map_avail_bits and remove this hack.

Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
---
 arch/x86/include/asm/xen/page.h |    2 ++
 arch/x86/xen/mmu.c              |   26 ++++++++++++++++++++++++++
 drivers/xen/gntdev.c            |   23 +----------------------
 3 files changed, 29 insertions(+), 22 deletions(-)

--- a/arch/x86/include/asm/xen/page.h
+++ b/arch/x86/include/asm/xen/page.h
@@ -370,4 +370,6 @@ static inline unsigned long xen_get_swio
 	return __get_free_pages(__GFP_NOWARN, order);
 }
 
+extern void xen_set_grant_as_special(struct vm_area_struct *vma);
+
 #endif /* _ASM_X86_XEN_PAGE_H */
--- a/arch/x86/xen/mmu.c
+++ b/arch/x86/xen/mmu.c
@@ -51,3 +51,29 @@ int xen_unmap_domain_gfn_range(struct vm
 	return -EINVAL;
 }
 EXPORT_SYMBOL_GPL(xen_unmap_domain_gfn_range);
+
+static int set_grant_ptes_as_special(pte_t *pte, unsigned long addr, void *data)
+{
+	set_pte_at(current->mm, addr, pte, pte_mkspecial(*pte));
+	return 0;
+}
+
+void xen_set_grant_as_special(struct vm_area_struct *vma)
+{
+	if (xen_feature(XENFEAT_gnttab_map_avail_bits))
+		return;
+
+	/*
+	 * If the PTEs were not made special by the grant map
+	 * hypercall, do so here.
+	 *
+	 * This is racy since the mapping is already visible
+	 * to userspace but userspace should be well-behaved
+	 * enough to not touch it until the mmap() call
+	 * returns.
+	 */
+	apply_to_page_range(vma->vm_mm, vma->vm_start,
+			    vma->vm_end - vma->vm_start,
+			    set_grant_ptes_as_special, NULL);
+}
+EXPORT_SYMBOL_GPL(xen_set_grant_as_special);
--- a/drivers/xen/gntdev.c
+++ b/drivers/xen/gntdev.c
@@ -278,14 +278,6 @@ static int find_grant_ptes(pte_t *pte, u
 	return 0;
 }
 
-#ifdef CONFIG_X86
-static int set_grant_ptes_as_special(pte_t *pte, unsigned long addr, void *data)
-{
-	set_pte_at(current->mm, addr, pte, pte_mkspecial(*pte));
-	return 0;
-}
-#endif
-
 int gntdev_map_grant_pages(struct gntdev_grant_map *map)
 {
 	int i, err = 0;
@@ -1040,20 +1032,7 @@ static int gntdev_mmap(struct file *flip
 			goto out_put_map;
 	} else {
 #ifdef CONFIG_X86
-		/*
-		 * If the PTEs were not made special by the grant map
-		 * hypercall, do so here.
-		 *
-		 * This is racy since the mapping is already visible
-		 * to userspace but userspace should be well-behaved
-		 * enough to not touch it until the mmap() call
-		 * returns.
-		 */
-		if (!xen_feature(XENFEAT_gnttab_map_avail_bits)) {
-			apply_to_page_range(vma->vm_mm, vma->vm_start,
-					    vma->vm_end - vma->vm_start,
-					    set_grant_ptes_as_special, NULL);
-		}
+		xen_set_grant_as_special(vma);
 #endif
 	}
 


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
