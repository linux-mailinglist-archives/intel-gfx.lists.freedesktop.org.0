Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E55560D07D
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 17:26:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9109F10E3CA;
	Tue, 25 Oct 2022 15:26:14 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com
 [IPv6:2607:f8b0:4864:20::82a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0190110E3C3
 for <Intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 15:26:10 +0000 (UTC)
Received: by mail-qt1-x82a.google.com with SMTP id w29so635095qtv.9
 for <Intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 08:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=Fq8OBTCvxuU7iNfEymr260aprwFrObsXpd7QqI8YK8E=;
 b=a+lqY993etaHnQZ3JYXoGQXHAEhb4qkUUxLVFT4hKAN3Ip0u1aYw70XLS6kkeln00P
 bokMPEgbuotNO4pbIlqt2aDqr3NzgVZRPjhMQkpiH5+vc9OcZyoPRPiPXr0AdQCKabqg
 k+H/aASQH6HedTiZ6jeBcmsuAiW2k3s1lTqEqukKbhrt9biZlhiVMhjmBRKPPVNpOG99
 naxVqEwicxXObqczaFhHdDq8cjh03az2yjb+5ze9MJiqBQFFI84e0m/m4v2YDJoQfhLy
 B4O//bmhHyhsDemY/Ve8tOQQwPKYslF0pF0jJLVtELyARe3QU8xDPa16yICROUYjGGM3
 1LJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Fq8OBTCvxuU7iNfEymr260aprwFrObsXpd7QqI8YK8E=;
 b=jd16yvcShvpncz/yCl2Bkj3XTY+xM67F9rFk1MemUl6T9m3txPu5Yu2J4ye+XyWpXF
 p6Xx6w6uHaRL+KBVA+CXX3WLrvqA7KyL7GUTRJcoaFv41s5aFY+0G4u54qXCyhsPALoZ
 4afOBJWpHbXzXP1Q/nmdXYQMSwgV3NJ/Edg/D/N1TzxiIQ2GnDHD7ZedxQhfxeutZfOo
 ExPNWce+K33vqGRaN5S9VYqmPDS77WaX8HydGDUEv91UKjNzYrhvPNJ7V4b3pKDneieD
 sVjcZ/KdVN/dmtIlzaFM0wXtvsKcSiLM3xuTGmJRQo+Fijq5mfJTABR8HcIrE/gPlx+k
 1Qvw==
X-Gm-Message-State: ACrzQf0NJDCldg7kr/UkHCSoVs2iaDtbyrfWIWcU/K/5oMn2dY3sCwpu
 2fJOy156FyS8UaJB2cTrb6s0dQ==
X-Google-Smtp-Source: AMsMyM4UXW2qFO81UvvA7bW1CYI3Csd0CxoyEVKejNW8/mCAMWSP1pKxVz8E0tSGkNl97iYCchyvpQ==
X-Received: by 2002:a05:622a:41:b0:39c:e2d6:b9ea with SMTP id
 y1-20020a05622a004100b0039ce2d6b9eamr31819433qtw.58.1666711569838; 
 Tue, 25 Oct 2022 08:26:09 -0700 (PDT)
Received: from ripple.attlocal.net
 (172-10-233-147.lightspeed.sntcca.sbcglobal.net. [172.10.233.147])
 by smtp.gmail.com with ESMTPSA id
 ay14-20020a05620a178e00b006c479acd82fsm2213845qkb.7.2022.10.25.08.26.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Oct 2022 08:26:08 -0700 (PDT)
Date: Tue, 25 Oct 2022 08:26:06 -0700 (PDT)
From: Hugh Dickins <hughd@google.com>
X-X-Sender: hugh@ripple.attlocal.net
To: Mel Gorman <mgorman@techsingularity.net>
In-Reply-To: <20221025100338.zcvqyji5gwiuj3nj@techsingularity.net>
Message-ID: <831c3f2f-97c6-608d-9d16-1742c447c7e@google.com>
References: <1596edbb-02ad-6bdf-51b8-15c2d2e08b76@linux.intel.com>
 <20221024142321.f2etddxtqa47bib7@techsingularity.net>
 <8d9517cc-6fba-ede0-a95f-e9b036e75ceb@linux.intel.com>
 <20221025100338.zcvqyji5gwiuj3nj@techsingularity.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Tue, 25 Oct 2022, Mel Gorman wrote:

> Cc'ing Andrew for awareness. Andrew, this bug report is almost identical to
> the one Hugh already reported and fixed in "[PATCH] mm: prep_compound_tail()
> clear page->private". Nothing wrong with the patch AFAIK and only the last
> paragraph is relevant to you.
> 
> On Tue, Oct 25, 2022 at 09:50:14AM +0100, Tvrtko Ursulin wrote:
> > 
> > On 24/10/2022 15:23, Mel Gorman wrote:
> > > On Mon, Oct 24, 2022 at 02:04:50PM +0100, Tvrtko Ursulin wrote:
> > > > 
> > > > Hi Mel, mm experts,
> > > > 
> > > > With 6.1-rc2 we started hitting the WARN_ON added in 71e2d666ef85 ("mm/huge_memory: do not clobber swp_entry_t during THP split") in i915 automated CI:
> > > > 
> > > 
> > > Thanks for the report. As shmem pages pages are allocated via vma_alloc_folio
> > > and are compound pages, can you try the following patch please?  If it
> > > still triggers, please post the new oops as it'll include the tail page
> > > information.
> > > 
> > > --8<--
> > > From: Hugh Dickins <hughd@google.com>
> > > Subject: [PATCH] mm: prep_compound_tail() clear page->private
> > > 
> > > Although page allocation always clears page->private in the first page
> > > or head page of an allocation, it has never made a point of clearing
> > > page->private in the tails (though 0 is often what is already there).
> > > 
> > > But now commit 71e2d666ef85 ("mm/huge_memory: do not clobber swp_entry_t
> > > during THP split") issues a warning when page_tail->private is found to
> > > be non-0 (unless it's swapcache).
> > > 
> > > Change that warning to dump page_tail (which also dumps head), instead
> > > of just the head: so far we have seen dead000000000122, dead000000000003,
> > > dead000000000001 or 0000000000000002 in the raw output for tail private.
> > > 
> > > We could just delete the warning, but today's consensus appears to want
> > > page->private to be 0, unless there's a good reason for it to be set:
> > > so now clear it in prep_compound_tail() (more general than just for THP;
> > > but not for high order allocation, which makes no pass down the tails).
> > > 
> > > Fixes: 71e2d666ef85 ("mm/huge_memory: do not clobber swp_entry_t during THP split")
> > > Signed-off-by: Hugh Dickins <hughd@google.com>
> > > Cc: Mel Gorman <mgorman@techsingularity.net>
> > > Cc: Matthew Wilcox (Oracle) <willy@infradead.org>
> > > Cc: <stable@vger.kernel.org>
> > > ---
> > >   mm/huge_memory.c | 2 +-
> > >   mm/page_alloc.c  | 1 +
> > >   2 files changed, 2 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/mm/huge_memory.c b/mm/huge_memory.c
> > > index 03fc7e5edf07..561a42567477 100644
> > > --- a/mm/huge_memory.c
> > > +++ b/mm/huge_memory.c
> > > @@ -2462,7 +2462,7 @@ static void __split_huge_page_tail(struct page *head, int tail,
> > >   	 * Fix up and warn once if private is unexpectedly set.
> > >   	 */
> > >   	if (!folio_test_swapcache(page_folio(head))) {
> > > -		VM_WARN_ON_ONCE_PAGE(page_tail->private != 0, head);
> > > +		VM_WARN_ON_ONCE_PAGE(page_tail->private != 0, page_tail);
> > >   		page_tail->private = 0;
> > >   	}
> > > diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> > > index b5a6c815ae28..218b28ee49ed 100644
> > > --- a/mm/page_alloc.c
> > > +++ b/mm/page_alloc.c
> > > @@ -807,6 +807,7 @@ static void prep_compound_tail(struct page *head, int tail_idx)
> > >   	p->mapping = TAIL_MAPPING;
> > >   	set_compound_head(p, head);
> > > +	set_page_private(p, 0);
> > >   }
> > >   void prep_compound_page(struct page *page, unsigned int order)
> > 
> > The patch seems to fix our CI runs.
> 
> Thanks for letting me know.
> 
> > Is it considered final version?
> 
> AFAIK, yes.

AFAItooK, yes - modulo akpm's signoff and final SHA1.

> 
> > If so I
> > can temporarily put it in until it arrives via the next rc - assuming that
> > would be the flow from upstream pov?

The right thing for now is for GregKH to drop Mel's from 6.0.4:
I've just sent a mail asking for that (I would have asked yesterday,
but mistook that GregKH was not in Cc).

Of course Mel's fix is much more important than the harmless
(unless panic on warn) warning, but let's delay it a few more days,
it just flowed into stable too quickly.

Thanks Mel: I never knowingly hit the THP_SWAP issue which your patch
is fixing, but it now looks like it was also responsible for mysterious
occasional OOM kills that I had been chasing for weeks.

Hugh

> > 
> 
> I expect it to. It's currently in the akpm/mm.git branch
> mm/mm-hotfixes-unstable where I expect it to flow to mm/mm-hotfixes-stable
> in due course before sending to Linus. I can't make promises about the
> timing as that's determined by Andrew.
> 
> -- 
> Mel Gorman
> SUSE Labs
