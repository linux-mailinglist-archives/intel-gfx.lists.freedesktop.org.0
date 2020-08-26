Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D2C2533F1
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 17:49:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BF676E071;
	Wed, 26 Aug 2020 15:49:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEC396E071
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 15:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=I18u0dNCe4slxMxufMguyF6f9uk6YgWYDMxiYXb8r/M=; b=UkAgccpf8C57KDxqkodEH9olO/
 1uRw550MvDayPZHtymBnFfxwmNtcgF2M6M96967ti7Q0kRqhAJD7EntbGZL40Lyy/dSXmziTiz7Hk
 lbnctZsn662cXzfd6hEb2utiYDSGSBQ9MMuBEMkU4epwpDT9aRW6rBD0kAE2/WhSDIlgYgN0uvYHv
 c5TtMuUjgUaaySu/tXn9XT3Fdu34TLsipV80GR1LCDvPxHlwYwEnRuupZUec5g7a9rqmgnBVv2OwM
 AfLYitWZTrvbKthc6NKOJtYTa0Bz0jsofeKe/qhWz/aTsyo6BYZPDxDJfSEiDV625F6g9O9aiVfKH
 0a4QY2Ng==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kAxfX-0005m4-3j; Wed, 26 Aug 2020 15:48:59 +0000
Date: Wed, 26 Aug 2020 16:48:59 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Johannes Weiner <hannes@cmpxchg.org>
Message-ID: <20200826154859.GT17456@casper.infradead.org>
References: <20200819184850.24779-1-willy@infradead.org>
 <20200819184850.24779-7-willy@infradead.org>
 <20200826150925.GE988805@cmpxchg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200826150925.GE988805@cmpxchg.org>
Subject: Re: [Intel-gfx] [PATCH 6/8] mm: Convert find_get_entry to return
 the head page
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
Cc: William Kucharski <william.kucharski@oracle.com>,
 intel-gfx@lists.freedesktop.org, Hugh Dickins <hughd@google.com>,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 linux-mm@kvack.org, Matthew Auld <matthew.auld@intel.com>,
 Huang Ying <ying.huang@intel.com>, cgroups@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Alexey Dobriyan <adobriyan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 26, 2020 at 11:09:25AM -0400, Johannes Weiner wrote:
> On Wed, Aug 19, 2020 at 07:48:48PM +0100, Matthew Wilcox (Oracle) wrote:
> > There are only three callers remaining of find_get_entry().
> > find_get_swap_page() is happy to get the head page instead of the subpage.
> > Add find_subpage() calls to find_lock_entry() and pagecache_get_page()
> > to avoid auditing all their callers.
> 
> I believe this would cause a subtle bug in memcg charge moving for pte
> mapped huge pages. We currently skip over tail pages in the range
> (they don't have page->mem_cgroup set) and account for the huge page
> once from the headpage. After this change, we would see the headpage
> and account for it 512 times (or whatever the number is on non-x86).

Hmm ... so if you have the last 511 pages of a huge page mapped, you
actually don't charge for it at all today?

I think you're right that I'd introduce this bug, and so that needs to
be fixed.

> But that aside, I don't quite understand the intent.
> 
> Before, all these functions simply return the base page at @index,
> whether it's a regular page or a tail page.
> 
> Afterwards, find_lock_entry(), find_get_page() et al still do, but
> find_get_entry() returns headpage at @index & HPAGE_CACHE_INDEX_MASK.
> 
> Shouldn't we be consistent about how we handle huge pages when
> somebody queries the tree for a given base page index?
> 
> [ Wouldn't that mean that e.g. find_get_swap_page() would return tail
>   pages for regular files and head pages for shmem files? ]

What I'd _like_ to do is convert all the callers to cope with tail
pages never being returned from all the find_* functions.  That seems
like a lot of disruption.

My intent in this series is to get all the find_*_entr{y,ies}
functions to the point where they don't return tail pages.
Also find_get_pages_tag() because tags are only set on head pages.

This is generally what the callers want anyway.  There's even a hack
in find_get_entries() in current to terminate early on finding a THP
(see commit 71725ed10c40696dc6bdccf8e225815dcef24dba).  If I want
to remove that, I need to do _something_ to not put all the subpages
of a THP into the pagevec.

So the new rule will be that find_*_entry() don't return tail pages but
find_*_page() do.  With the full THP patchset in place, THPs become quite
common, so bugs in this area will surface quickly instead of lingering
for years and only popping out in rare circumstances.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
