Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E03E209DF2
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 13:58:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CB546EA6D;
	Thu, 25 Jun 2020 11:58:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 943 seconds by postgrey-1.36 at gabe;
 Thu, 25 Jun 2020 11:58:13 UTC
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0B7C6EA6D
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 11:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=fUle3aetxySRQYFTnbRVKd4H1XlZhjMbUYZWBlbn48k=; b=IlAEIN73y4SkxmCkWa7yhDlk/1
 UTW+wamX8rd87nkcMA14xI0uj+0eOXBymR+brQ5VDMPdgCuIQj9fOIAD0VjGWzKJyTDEPLAij4+WQ
 VJJqHujQFBPr7JkgUDt+QAU0DthmowEChSj/NuZ8Hpy+1l07QSxDJFCZK6Dexf9pU6SNlVnyjs+5h
 yd3Qe0uKKMJzuqjIT5lWIA7tSJ01vemZ5QqyoOgreX9XHeczZitK58Q7GO1Gzdg1ykVg5Wj/BOWo+
 5GCmVrrXL7DZcbwuyEsdfVcVBmUhL5tzYpe/MMCEuWwnSPivhcofUheKgxN2SlgD9ZPx9FrKWdNb4
 EBbP/zKA==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1joQGf-0002Qb-OE; Thu, 25 Jun 2020 11:42:09 +0000
Date: Thu, 25 Jun 2020 12:42:09 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200625114209.GA7703@casper.infradead.org>
References: <20200624191417.16735-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200624191417.16735-1-chris@chris-wilson.co.uk>
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
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Claudio Imbrenda <imbrenda@linux.ibm.com>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 24, 2020 at 08:14:17PM +0100, Chris Wilson wrote:
> A side effect of the LRU shrinker not being dma aware is that we will
> often attempt to perform direct reclaim on the persistent group of dma
> pages while continuing to use the dma HW (an issue as the HW may already
> be actively waiting for the next user request), and even attempt to
> reclaim a partially allocated dma object in order to satisfy pinning
> the next user page for that object.
> 
> It is to be expected that such pages are made available for reclaim at
> the end of the dma operation [unpin_user_pages()], and for truly
> longterm pins to be proactively recovered via device specific shrinkers
> [i.e. stop the HW, allow the pages to be returned to the system, and
> then compete again for the memory].

Why are DMA pinned pages still on the LRU list at all?  I never got an
answer to this that made sense to me.  By definition, a page which is
pinned for DMA is being accessed, and needs to at the very least change
position on the LRU list, so just take it off the list when DMA-pinned
and put it back on the list when DMA-unpinned.

This overly complex lease stuff must have some reason for existing, but
I still don't get it.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
