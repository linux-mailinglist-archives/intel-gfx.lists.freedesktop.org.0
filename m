Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4EB20A027
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 15:40:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 488A86E291;
	Thu, 25 Jun 2020 13:40:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 923A76E2A0
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 13:40:46 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id E9490AEDD;
 Thu, 25 Jun 2020 13:40:44 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
 id E966C1E1274; Thu, 25 Jun 2020 15:40:44 +0200 (CEST)
Date: Thu, 25 Jun 2020 15:40:44 +0200
From: Jan Kara <jack@suse.cz>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20200625134044.GD17788@quack2.suse.cz>
References: <20200624191417.16735-1-chris@chris-wilson.co.uk>
 <20200625114209.GA7703@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200625114209.GA7703@casper.infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] mm: Skip opportunistic reclaim for dma
 pinned pages
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
Cc: Jan Kara <jack@suse.cz>, Jason Gunthorpe <jgg@ziepe.ca>,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 linux-mm@kvack.org, =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Claudio Imbrenda <imbrenda@linux.ibm.com>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu 25-06-20 12:42:09, Matthew Wilcox wrote:
> On Wed, Jun 24, 2020 at 08:14:17PM +0100, Chris Wilson wrote:
> > A side effect of the LRU shrinker not being dma aware is that we will
> > often attempt to perform direct reclaim on the persistent group of dma
> > pages while continuing to use the dma HW (an issue as the HW may already
> > be actively waiting for the next user request), and even attempt to
> > reclaim a partially allocated dma object in order to satisfy pinning
> > the next user page for that object.
> > 
> > It is to be expected that such pages are made available for reclaim at
> > the end of the dma operation [unpin_user_pages()], and for truly
> > longterm pins to be proactively recovered via device specific shrinkers
> > [i.e. stop the HW, allow the pages to be returned to the system, and
> > then compete again for the memory].
> 
> Why are DMA pinned pages still on the LRU list at all?  I never got an
> answer to this that made sense to me.  By definition, a page which is
> pinned for DMA is being accessed, and needs to at the very least change
> position on the LRU list, so just take it off the list when DMA-pinned
> and put it back on the list when DMA-unpinned.

Well, we do mark_page_accessed() when pinning in GUP. This is not perfect
but it's as good as it gets with CPU having no control when the page is
actually accessed. Also taking the page off and then back to LRU list would
increase the contention on the LRU list locks and generally cost
performance so for short term pins it is not desirable... Otherwise I agree
that conceptually it would make some sence although I'm not sure some
places wouldn't get confused by e.g. page cache pages not being on LRU
list. 

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
