Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC3F302CFA
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 21:54:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 530EC6E283;
	Mon, 25 Jan 2021 20:54:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFA366E283
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 20:54:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23697460-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 20:53:59 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 20:54:01 +0000
Message-Id: <20210125205401.29505-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] Revert "mm: fix initialization of struct page for
 holes in memory layout"
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit d3921cb8be29ce5668c64e23ffdaeec5f8c69399.
---
 mm/page_alloc.c | 84 ++++++++++++++++++++-----------------------------
 1 file changed, 34 insertions(+), 50 deletions(-)

diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index 783913e41f65..519a60d5b6f7 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -7080,26 +7080,23 @@ void __init free_area_init_memoryless_node(int nid)
  * Initialize all valid struct pages in the range [spfn, epfn) and mark them
  * PageReserved(). Return the number of struct pages that were initialized.
  */
-static u64 __init init_unavailable_range(unsigned long spfn, unsigned long epfn,
-					 int zone, int nid)
+static u64 __init init_unavailable_range(unsigned long spfn, unsigned long epfn)
 {
-	unsigned long pfn, zone_spfn, zone_epfn;
+	unsigned long pfn;
 	u64 pgcnt = 0;
 
-	zone_spfn = arch_zone_lowest_possible_pfn[zone];
-	zone_epfn = arch_zone_highest_possible_pfn[zone];
-
-	spfn = clamp(spfn, zone_spfn, zone_epfn);
-	epfn = clamp(epfn, zone_spfn, zone_epfn);
-
 	for (pfn = spfn; pfn < epfn; pfn++) {
 		if (!pfn_valid(ALIGN_DOWN(pfn, pageblock_nr_pages))) {
 			pfn = ALIGN_DOWN(pfn, pageblock_nr_pages)
 				+ pageblock_nr_pages - 1;
 			continue;
 		}
-
-		__init_single_page(pfn_to_page(pfn), pfn, zone, nid);
+		/*
+		 * Use a fake node/zone (0) for now. Some of these pages
+		 * (in memblock.reserved but not in memblock.memory) will
+		 * get re-initialized via reserve_bootmem_region() later.
+		 */
+		__init_single_page(pfn_to_page(pfn), pfn, 0, 0);
 		__SetPageReserved(pfn_to_page(pfn));
 		pgcnt++;
 	}
@@ -7108,64 +7105,51 @@ static u64 __init init_unavailable_range(unsigned long spfn, unsigned long epfn,
 }
 
 /*
- * Only struct pages that correspond to ranges defined by memblock.memory
- * are zeroed and initialized by going through __init_single_page() during
- * memmap_init().
+ * Only struct pages that are backed by physical memory are zeroed and
+ * initialized by going through __init_single_page(). But, there are some
+ * struct pages which are reserved in memblock allocator and their fields
+ * may be accessed (for example page_to_pfn() on some configuration accesses
+ * flags). We must explicitly initialize those struct pages.
  *
- * But, there could be struct pages that correspond to holes in
- * memblock.memory. This can happen because of the following reasons:
- * - phyiscal memory bank size is not necessarily the exact multiple of the
- *   arbitrary section size
- * - early reserved memory may not be listed in memblock.memory
- * - memory layouts defined with memmap= kernel parameter may not align
- *   nicely with memmap sections
- *
- * Explicitly initialize those struct pages so that:
- * - PG_Reserved is set
- * - zone link is set accorging to the architecture constrains
- * - node is set to node id of the next populated region except for the
- *   trailing hole where last node id is used
+ * This function also addresses a similar issue where struct pages are left
+ * uninitialized because the physical address range is not covered by
+ * memblock.memory or memblock.reserved. That could happen when memblock
+ * layout is manually configured via memmap=, or when the highest physical
+ * address (max_pfn) does not end on a section boundary.
  */
-static void __init init_zone_unavailable_mem(int zone)
+static void __init init_unavailable_mem(void)
 {
-	unsigned long start, end;
-	int i, nid;
-	u64 pgcnt;
-	unsigned long next = 0;
+	phys_addr_t start, end;
+	u64 i, pgcnt;
+	phys_addr_t next = 0;
 
 	/*
-	 * Loop through holes in memblock.memory and initialize struct
-	 * pages corresponding to these holes
+	 * Loop through unavailable ranges not covered by memblock.memory.
 	 */
 	pgcnt = 0;
-	for_each_mem_pfn_range(i, MAX_NUMNODES, &start, &end, &nid) {
+	for_each_mem_range(i, &start, &end) {
 		if (next < start)
-			pgcnt += init_unavailable_range(next, start, zone, nid);
+			pgcnt += init_unavailable_range(PFN_DOWN(next),
+							PFN_UP(start));
 		next = end;
 	}
 
 	/*
-	 * Last section may surpass the actual end of memory (e.g. we can
-	 * have 1Gb section and 512Mb of RAM pouplated).
-	 * Make sure that memmap has a well defined state in this case.
+	 * Early sections always have a fully populated memmap for the whole
+	 * section - see pfn_valid(). If the last section has holes at the
+	 * end and that section is marked "online", the memmap will be
+	 * considered initialized. Make sure that memmap has a well defined
+	 * state.
 	 */
-	end = round_up(max_pfn, PAGES_PER_SECTION);
-	pgcnt += init_unavailable_range(next, end, zone, nid);
+	pgcnt += init_unavailable_range(PFN_DOWN(next),
+					round_up(max_pfn, PAGES_PER_SECTION));
 
 	/*
 	 * Struct pages that do not have backing memory. This could be because
 	 * firmware is using some of this memory, or for some other reasons.
 	 */
 	if (pgcnt)
-		pr_info("Zone %s: zeroed struct page in unavailable ranges: %lld pages", zone_names[zone], pgcnt);
-}
-
-static void __init init_unavailable_mem(void)
-{
-	int zone;
-
-	for (zone = 0; zone < ZONE_MOVABLE; zone++)
-		init_zone_unavailable_mem(zone);
+		pr_info("Zeroed struct page in unavailable ranges: %lld pages", pgcnt);
 }
 #else
 static inline void __init init_unavailable_mem(void)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
