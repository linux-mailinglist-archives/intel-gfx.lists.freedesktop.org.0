Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D9524D1FA
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Aug 2020 12:09:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4826F6EAC6;
	Fri, 21 Aug 2020 10:09:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A68A6EAC6
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Aug 2020 10:09:05 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id AD749AE38;
 Fri, 21 Aug 2020 10:09:31 +0000 (UTC)
Date: Fri, 21 Aug 2020 12:09:02 +0200
From: Joerg Roedel <jroedel@suse.de>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200821100902.GG3354@suse.de>
References: <20200821085011.28878-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200821085011.28878-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-gfx] [PATCH] mm: Track page table modifications in
 __apply_to_page_range() construction
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, linux-mm@kvack.org,
 David Vrabel <david.vrabel@citrix.com>, Pavel Machek <pavel@ucw.cz>,
 Dave Airlie <airlied@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The __apply_to_page_range() function is also used to change and/or
allocate page-table pages in the vmalloc area of the address space.
Make sure these changes get synchronized to other page-tables in the
system by calling arch_sync_kernel_mappings() when necessary.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
(Only compile tested on x86-64 so far)

 mm/memory.c | 32 +++++++++++++++++++++-----------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/mm/memory.c b/mm/memory.c
index 3a7779d9891d..fd845991f14a 100644
--- a/mm/memory.c
+++ b/mm/memory.c
@@ -83,6 +83,7 @@
 #include <asm/tlb.h>
 #include <asm/tlbflush.h>
 
+#include "pgalloc-track.h"
 #include "internal.h"
 
 #if defined(LAST_CPUPID_NOT_IN_PAGE_FLAGS) && !defined(CONFIG_COMPILE_TEST)
@@ -2206,7 +2207,8 @@ EXPORT_SYMBOL(vm_iomap_memory);
 
 static int apply_to_pte_range(struct mm_struct *mm, pmd_t *pmd,
 				     unsigned long addr, unsigned long end,
-				     pte_fn_t fn, void *data, bool create)
+				     pte_fn_t fn, void *data, bool create,
+				     pgtbl_mod_mask *mask)
 {
 	pte_t *pte;
 	int err = 0;
@@ -2235,6 +2237,7 @@ static int apply_to_pte_range(struct mm_struct *mm, pmd_t *pmd,
 				break;
 		}
 	} while (addr += PAGE_SIZE, addr != end);
+	*mask |= PGTBL_PTE_MODIFIED;
 
 	arch_leave_lazy_mmu_mode();
 
@@ -2245,7 +2248,8 @@ static int apply_to_pte_range(struct mm_struct *mm, pmd_t *pmd,
 
 static int apply_to_pmd_range(struct mm_struct *mm, pud_t *pud,
 				     unsigned long addr, unsigned long end,
-				     pte_fn_t fn, void *data, bool create)
+				     pte_fn_t fn, void *data, bool create,
+				     pgtbl_mod_mask *mask)
 {
 	pmd_t *pmd;
 	unsigned long next;
@@ -2254,7 +2258,7 @@ static int apply_to_pmd_range(struct mm_struct *mm, pud_t *pud,
 	BUG_ON(pud_huge(*pud));
 
 	if (create) {
-		pmd = pmd_alloc(mm, pud, addr);
+		pmd = pmd_alloc_track(mm, pud, addr, mask);
 		if (!pmd)
 			return -ENOMEM;
 	} else {
@@ -2264,7 +2268,7 @@ static int apply_to_pmd_range(struct mm_struct *mm, pud_t *pud,
 		next = pmd_addr_end(addr, end);
 		if (create || !pmd_none_or_clear_bad(pmd)) {
 			err = apply_to_pte_range(mm, pmd, addr, next, fn, data,
-						 create);
+						 create, mask);
 			if (err)
 				break;
 		}
@@ -2274,14 +2278,15 @@ static int apply_to_pmd_range(struct mm_struct *mm, pud_t *pud,
 
 static int apply_to_pud_range(struct mm_struct *mm, p4d_t *p4d,
 				     unsigned long addr, unsigned long end,
-				     pte_fn_t fn, void *data, bool create)
+				     pte_fn_t fn, void *data, bool create,
+				     pgtbl_mod_mask *mask)
 {
 	pud_t *pud;
 	unsigned long next;
 	int err = 0;
 
 	if (create) {
-		pud = pud_alloc(mm, p4d, addr);
+		pud = pud_alloc_track(mm, p4d, addr, mask);
 		if (!pud)
 			return -ENOMEM;
 	} else {
@@ -2291,7 +2296,7 @@ static int apply_to_pud_range(struct mm_struct *mm, p4d_t *p4d,
 		next = pud_addr_end(addr, end);
 		if (create || !pud_none_or_clear_bad(pud)) {
 			err = apply_to_pmd_range(mm, pud, addr, next, fn, data,
-						 create);
+						 create, mask);
 			if (err)
 				break;
 		}
@@ -2301,14 +2306,15 @@ static int apply_to_pud_range(struct mm_struct *mm, p4d_t *p4d,
 
 static int apply_to_p4d_range(struct mm_struct *mm, pgd_t *pgd,
 				     unsigned long addr, unsigned long end,
-				     pte_fn_t fn, void *data, bool create)
+				     pte_fn_t fn, void *data, bool create,
+				     pgtbl_mod_mask *mask)
 {
 	p4d_t *p4d;
 	unsigned long next;
 	int err = 0;
 
 	if (create) {
-		p4d = p4d_alloc(mm, pgd, addr);
+		p4d = p4d_alloc_track(mm, pgd, addr, mask);
 		if (!p4d)
 			return -ENOMEM;
 	} else {
@@ -2318,7 +2324,7 @@ static int apply_to_p4d_range(struct mm_struct *mm, pgd_t *pgd,
 		next = p4d_addr_end(addr, end);
 		if (create || !p4d_none_or_clear_bad(p4d)) {
 			err = apply_to_pud_range(mm, p4d, addr, next, fn, data,
-						 create);
+						 create, mask);
 			if (err)
 				break;
 		}
@@ -2333,6 +2339,7 @@ static int __apply_to_page_range(struct mm_struct *mm, unsigned long addr,
 	pgd_t *pgd;
 	unsigned long next;
 	unsigned long end = addr + size;
+	pgtbl_mod_mask mask = 0;
 	int err = 0;
 
 	if (WARN_ON(addr >= end))
@@ -2343,11 +2350,14 @@ static int __apply_to_page_range(struct mm_struct *mm, unsigned long addr,
 		next = pgd_addr_end(addr, end);
 		if (!create && pgd_none_or_clear_bad(pgd))
 			continue;
-		err = apply_to_p4d_range(mm, pgd, addr, next, fn, data, create);
+		err = apply_to_p4d_range(mm, pgd, addr, next, fn, data, create, &mask);
 		if (err)
 			break;
 	} while (pgd++, addr = next, addr != end);
 
+	if (mask & ARCH_PAGE_TABLE_SYNC_MASK)
+		arch_sync_kernel_mappings(addr, addr + size);
+
 	return err;
 }
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
