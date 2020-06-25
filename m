Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE72320A294
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 18:05:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C41FB6E069;
	Thu, 25 Jun 2020 16:05:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75DD26E069
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 16:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Nbnfe8y2phVSLNtkpgv4yoZAKzFobqvinOzyPepTciA=; b=wJ5yDwSYYtQBTCnxgg6LiDb+j3
 OEOu0V3IhIOevYdpcK3XhbqU/M42tAf1xPjiFbpF3EbxSgs2VHixCTiGCO++8ZRo23BFZSKx8q9FT
 jHGhqG1fksAytQpxqYfqkDxivoCNcceeNdqpCOOAuoOxMeV3pXj5naJPPAEW7jKEnUDBfdKVxaGlp
 3VLdH+Oc/oxPofZm5cEb8DT/nbQfvJjuoYXDTNQO57H+vTyksE0sJ3KebCxqFxwVsB7jcJBpBDaid
 RY0Br5FuDo6EhV1hJMfAsbys3Hg/Q/+WK3bQVd/iDeI7nUHdH1ekeugyVYY24yziSlHX0G3fQ4dSa
 mkL2JG/g==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1joUNO-0006gj-Rx; Thu, 25 Jun 2020 16:05:22 +0000
Date: Thu, 25 Jun 2020 17:05:22 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Jan Kara <jack@suse.cz>
Message-ID: <20200625160522.GD7703@casper.infradead.org>
References: <20200624191417.16735-1-chris@chris-wilson.co.uk>
 <20200625114209.GA7703@casper.infradead.org>
 <20200625134044.GD17788@quack2.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200625134044.GD17788@quack2.suse.cz>
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
Cc: Jason Gunthorpe <jgg@ziepe.ca>, John Hubbard <jhubbard@nvidia.com>,
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

On Thu, Jun 25, 2020 at 03:40:44PM +0200, Jan Kara wrote:
> On Thu 25-06-20 12:42:09, Matthew Wilcox wrote:
> > Why are DMA pinned pages still on the LRU list at all?  I never got an
> > answer to this that made sense to me.  By definition, a page which is
> > pinned for DMA is being accessed, and needs to at the very least change
> > position on the LRU list, so just take it off the list when DMA-pinned
> > and put it back on the list when DMA-unpinned.
> 
> Well, we do mark_page_accessed() when pinning in GUP. This is not perfect
> but it's as good as it gets with CPU having no control when the page is
> actually accessed. Also taking the page off and then back to LRU list would
> increase the contention on the LRU list locks and generally cost
> performance so for short term pins it is not desirable... Otherwise I agree
> that conceptually it would make some sence although I'm not sure some
> places wouldn't get confused by e.g. page cache pages not being on LRU
> list. 

We could/should do what we do for mlocked pages:
Documentation/vm/unevictable-lru.rst

I think 'case five' is wrong and needs to be removed.  Pinning is
inappropriate for "I'm going to modify the page myself".
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
