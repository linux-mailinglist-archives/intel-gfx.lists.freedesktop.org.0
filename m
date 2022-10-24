Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B0B60AD9C
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 16:29:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D241F10E7BB;
	Mon, 24 Oct 2022 14:29:33 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
X-Greylist: delayed 363 seconds by postgrey-1.36 at gabe;
 Mon, 24 Oct 2022 14:29:30 UTC
Received: from outbound-smtp11.blacknight.com (outbound-smtp11.blacknight.com
 [46.22.139.106])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EF3610E7BB
 for <Intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 14:29:30 +0000 (UTC)
Received: from mail.blacknight.com (pemlinmail03.blacknight.ie [81.17.254.16])
 by outbound-smtp11.blacknight.com (Postfix) with ESMTPS id
 934201C449B
 for <Intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 15:23:25 +0100 (IST)
Received: (qmail 2363 invoked from network); 24 Oct 2022 14:23:25 -0000
Received: from unknown (HELO techsingularity.net)
 (mgorman@techsingularity.net@[84.203.198.246])
 by 81.17.254.9 with ESMTPSA (AES256-SHA encrypted, authenticated);
 24 Oct 2022 14:23:25 -0000
Date: Mon, 24 Oct 2022 15:23:21 +0100
From: Mel Gorman <mgorman@techsingularity.net>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20221024142321.f2etddxtqa47bib7@techsingularity.net>
References: <1596edbb-02ad-6bdf-51b8-15c2d2e08b76@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
In-Reply-To: <1596edbb-02ad-6bdf-51b8-15c2d2e08b76@linux.intel.com>
Subject: Re: [Intel-gfx] mm/huge_memory: do not clobber swp_entry_t during
 THP split
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
Cc: Linux MM <linux-mm@kvack.org>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 Hugh Dickins <hughd@google.com>, Matthew Auld <matthew.auld@intel.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 24, 2022 at 02:04:50PM +0100, Tvrtko Ursulin wrote:
> 
> Hi Mel, mm experts,
> 
> With 6.1-rc2 we started hitting the WARN_ON added in 71e2d666ef85 ("mm/huge_memory: do not clobber swp_entry_t during THP split") in i915 automated CI:
> 

Thanks for the report. As shmem pages pages are allocated via vma_alloc_folio
and are compound pages, can you try the following patch please?  If it
still triggers, please post the new oops as it'll include the tail page
information.

--8<--
From: Hugh Dickins <hughd@google.com>
Subject: [PATCH] mm: prep_compound_tail() clear page->private

Although page allocation always clears page->private in the first page
or head page of an allocation, it has never made a point of clearing
page->private in the tails (though 0 is often what is already there).

But now commit 71e2d666ef85 ("mm/huge_memory: do not clobber swp_entry_t
during THP split") issues a warning when page_tail->private is found to
be non-0 (unless it's swapcache).

Change that warning to dump page_tail (which also dumps head), instead
of just the head: so far we have seen dead000000000122, dead000000000003,
dead000000000001 or 0000000000000002 in the raw output for tail private.

We could just delete the warning, but today's consensus appears to want
page->private to be 0, unless there's a good reason for it to be set:
so now clear it in prep_compound_tail() (more general than just for THP;
but not for high order allocation, which makes no pass down the tails).

Fixes: 71e2d666ef85 ("mm/huge_memory: do not clobber swp_entry_t during THP split")
Signed-off-by: Hugh Dickins <hughd@google.com>
Cc: Mel Gorman <mgorman@techsingularity.net>
Cc: Matthew Wilcox (Oracle) <willy@infradead.org>
Cc: <stable@vger.kernel.org>
---
 mm/huge_memory.c | 2 +-
 mm/page_alloc.c  | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/mm/huge_memory.c b/mm/huge_memory.c
index 03fc7e5edf07..561a42567477 100644
--- a/mm/huge_memory.c
+++ b/mm/huge_memory.c
@@ -2462,7 +2462,7 @@ static void __split_huge_page_tail(struct page *head, int tail,
 	 * Fix up and warn once if private is unexpectedly set.
 	 */
 	if (!folio_test_swapcache(page_folio(head))) {
-		VM_WARN_ON_ONCE_PAGE(page_tail->private != 0, head);
+		VM_WARN_ON_ONCE_PAGE(page_tail->private != 0, page_tail);
 		page_tail->private = 0;
 	}
 
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index b5a6c815ae28..218b28ee49ed 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -807,6 +807,7 @@ static void prep_compound_tail(struct page *head, int tail_idx)
 
 	p->mapping = TAIL_MAPPING;
 	set_compound_head(p, head);
+	set_page_private(p, 0);
 }
 
 void prep_compound_page(struct page *page, unsigned int order)
-- 
2.35.3
