Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3E6209D67
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 13:25:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54F2C6EA6A;
	Thu, 25 Jun 2020 11:24:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EAD66EA6A
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 11:24:57 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id E7CB1AD60;
 Thu, 25 Jun 2020 11:24:55 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
 id AB4511E1274; Thu, 25 Jun 2020 13:24:55 +0200 (CEST)
Date: Thu, 25 Jun 2020 13:24:55 +0200
From: Jan Kara <jack@suse.cz>
To: John Hubbard <jhubbard@nvidia.com>
Message-ID: <20200625112455.GC17788@quack2.suse.cz>
References: <20200624191417.16735-1-chris@chris-wilson.co.uk>
 <20200624192116.GO6578@ziepe.ca>
 <44708b2e-479f-7d58-fe01-29cfd6c70bdb@nvidia.com>
 <20200624232047.GP6578@ziepe.ca>
 <887ac706-65f0-3089-b51b-47aabf7d3847@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <887ac706-65f0-3089-b51b-47aabf7d3847@nvidia.com>
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
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>, linux-mm@kvack.org,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Claudio Imbrenda <imbrenda@linux.ibm.com>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed 24-06-20 17:11:30, John Hubbard wrote:
> On 2020-06-24 16:20, Jason Gunthorpe wrote:
> > > I do like this code change, though. And I *think* it's actually safe to
> > > do this, as it stays away from writeback or other filesystem activity.
> > > But let me double check that, in case I'm forgetting something.
> 
> ...OK, I've checked, and I like it a little bit less now. Mainly for
> structural reasons, though. I think it would work correctly. But
> here's a concern: try_to_unmap() should only fail to unmap if there is a
> reason to not unmap. Having a page be pinned for dma is a reason to not
> *free* a page, and it's also a reason to be careful about writeback and
> page buffers for writeback and such. But I'm not sure that it's a reason
> to fail to remove mappings.
> 
> True, most (all?) of the reasons that we remove mappings, generally are
> for things that are not allowed while a page is dma-pinned...at least,
> today. But still, there's nothing fundamental about a mapping that
> should prevent it from coming or going while a page is undergoing
> dma.
> 
> So, it's merely a convenient, now-misnamed location in the call stack
> to fail out. That's not great. It might be better, as Jason hints at
> below, to fail out a little earlier, instead. That would lead to a more
> places to call page_maybe_dma_pinned(), but that's not a real problem,
> because it's still a small number of places.

Agreed, I think that shrink_page_list() as Michal writes is a better place
for the page_may_be_dma_pinned() check. But other than that I agree it is
good to avoid all the unnecessary work of preparing a page for reclaim when
we can now check there's no hope of reclaiming it (at this time).

> > I don't know, but could it be that try_to_unmap() has to be done
> > before checking the refcount as each mapping is included in the
> > refcount? ie we couldn't know a DMA pin was active in advance?
> > 
> > Now that we have your pin stuff we can detect a DMA pin without doing
> > all the unmaps?
> > 
> 
> Once something calls pin_user_page*(), then the pages will be marked
> as dma-pinned, yes. So no, there is no need to wait until try_to_unmap()
> to find out.

Yeah, I'm pretty sure the page ref check happens so late because earlier it
was impossible to tell whether there are "external" page references reclaim
cannot get rid of - filesystem may (but need not!) hold a page reference
for its private data, page tables will hold references as well, etc. Now
with page_may_be_dma_pinned() we can detect at least one class of external
references (i.e. pins) early so it's stupid not to do that.

> A final note: depending on where page_maybe_dma_pinned() ends up
> getting called, this might prevent a fair number of the problems that
> Jan originally reported [1], and that I also reported separately!
> 
> Well, not all of the problems, and only after the filesystems get
> converted to call pin_user_pages() (working on that next), but...I think
> it would actually avoid the crash our customer reported back in early
> 2018. Even though we don't have the full file lease + pin_user_pages()
> solution in place.
> 
> That's because reclaim is what triggers the problems that we saw. And
> with this patch, we bail out of reclaim early.

I agree that with this change, some races will become much less likely for
some usecases. But as you say, it's not a full solution.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
