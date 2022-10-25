Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FA160C987
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 12:10:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CEB910E2F5;
	Tue, 25 Oct 2022 10:10:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
X-Greylist: delayed 391 seconds by postgrey-1.36 at gabe;
 Tue, 25 Oct 2022 10:10:14 UTC
Received: from outbound-smtp31.blacknight.com (outbound-smtp31.blacknight.com
 [81.17.249.62])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2FB510E2F5
 for <Intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 10:10:14 +0000 (UTC)
Received: from mail.blacknight.com (pemlinmail02.blacknight.ie [81.17.254.11])
 by outbound-smtp31.blacknight.com (Postfix) with ESMTPS id
 8CB7D134006
 for <Intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 11:03:40 +0100 (IST)
Received: (qmail 16574 invoked from network); 25 Oct 2022 10:03:40 -0000
Received: from unknown (HELO techsingularity.net)
 (mgorman@techsingularity.net@[84.203.198.246])
 by 81.17.254.9 with ESMTPSA (AES256-SHA encrypted, authenticated);
 25 Oct 2022 10:03:40 -0000
Date: Tue, 25 Oct 2022 11:03:38 +0100
From: Mel Gorman <mgorman@techsingularity.net>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20221025100338.zcvqyji5gwiuj3nj@techsingularity.net>
References: <1596edbb-02ad-6bdf-51b8-15c2d2e08b76@linux.intel.com>
 <20221024142321.f2etddxtqa47bib7@techsingularity.net>
 <8d9517cc-6fba-ede0-a95f-e9b036e75ceb@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
In-Reply-To: <8d9517cc-6fba-ede0-a95f-e9b036e75ceb@linux.intel.com>
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
Cc: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 Hugh Dickins <hughd@google.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Linux MM <linux-mm@kvack.org>, Matthew Auld <matthew.auld@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cc'ing Andrew for awareness. Andrew, this bug report is almost identical to
the one Hugh already reported and fixed in "[PATCH] mm: prep_compound_tail()
clear page->private". Nothing wrong with the patch AFAIK and only the last
paragraph is relevant to you.

On Tue, Oct 25, 2022 at 09:50:14AM +0100, Tvrtko Ursulin wrote:
> 
> On 24/10/2022 15:23, Mel Gorman wrote:
> > On Mon, Oct 24, 2022 at 02:04:50PM +0100, Tvrtko Ursulin wrote:
> > > 
> > > Hi Mel, mm experts,
> > > 
> > > With 6.1-rc2 we started hitting the WARN_ON added in 71e2d666ef85 ("mm/huge_memory: do not clobber swp_entry_t during THP split") in i915 automated CI:
> > > 
> > 
> > Thanks for the report. As shmem pages pages are allocated via vma_alloc_folio
> > and are compound pages, can you try the following patch please?  If it
> > still triggers, please post the new oops as it'll include the tail page
> > information.
> > 
> > --8<--
> > From: Hugh Dickins <hughd@google.com>
> > Subject: [PATCH] mm: prep_compound_tail() clear page->private
> > 
> > Although page allocation always clears page->private in the first page
> > or head page of an allocation, it has never made a point of clearing
> > page->private in the tails (though 0 is often what is already there).
> > 
> > But now commit 71e2d666ef85 ("mm/huge_memory: do not clobber swp_entry_t
> > during THP split") issues a warning when page_tail->private is found to
> > be non-0 (unless it's swapcache).
> > 
> > Change that warning to dump page_tail (which also dumps head), instead
> > of just the head: so far we have seen dead000000000122, dead000000000003,
> > dead000000000001 or 0000000000000002 in the raw output for tail private.
> > 
> > We could just delete the warning, but today's consensus appears to want
> > page->private to be 0, unless there's a good reason for it to be set:
> > so now clear it in prep_compound_tail() (more general than just for THP;
> > but not for high order allocation, which makes no pass down the tails).
> > 
> > Fixes: 71e2d666ef85 ("mm/huge_memory: do not clobber swp_entry_t during THP split")
> > Signed-off-by: Hugh Dickins <hughd@google.com>
> > Cc: Mel Gorman <mgorman@techsingularity.net>
> > Cc: Matthew Wilcox (Oracle) <willy@infradead.org>
> > Cc: <stable@vger.kernel.org>
> > ---
> >   mm/huge_memory.c | 2 +-
> >   mm/page_alloc.c  | 1 +
> >   2 files changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/mm/huge_memory.c b/mm/huge_memory.c
> > index 03fc7e5edf07..561a42567477 100644
> > --- a/mm/huge_memory.c
> > +++ b/mm/huge_memory.c
> > @@ -2462,7 +2462,7 @@ static void __split_huge_page_tail(struct page *head, int tail,
> >   	 * Fix up and warn once if private is unexpectedly set.
> >   	 */
> >   	if (!folio_test_swapcache(page_folio(head))) {
> > -		VM_WARN_ON_ONCE_PAGE(page_tail->private != 0, head);
> > +		VM_WARN_ON_ONCE_PAGE(page_tail->private != 0, page_tail);
> >   		page_tail->private = 0;
> >   	}
> > diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> > index b5a6c815ae28..218b28ee49ed 100644
> > --- a/mm/page_alloc.c
> > +++ b/mm/page_alloc.c
> > @@ -807,6 +807,7 @@ static void prep_compound_tail(struct page *head, int tail_idx)
> >   	p->mapping = TAIL_MAPPING;
> >   	set_compound_head(p, head);
> > +	set_page_private(p, 0);
> >   }
> >   void prep_compound_page(struct page *page, unsigned int order)
> 
> The patch seems to fix our CI runs.

Thanks for letting me know.

> Is it considered final version?

AFAIK, yes.

> If so I
> can temporarily put it in until it arrives via the next rc - assuming that
> would be the flow from upstream pov?
> 

I expect it to. It's currently in the akpm/mm.git branch
mm/mm-hotfixes-unstable where I expect it to flow to mm/mm-hotfixes-stable
in due course before sending to Linus. I can't make promises about the
timing as that's determined by Andrew.

-- 
Mel Gorman
SUSE Labs
