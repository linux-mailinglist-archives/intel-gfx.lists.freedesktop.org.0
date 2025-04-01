Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F139A78053
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Apr 2025 18:27:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A20A10E61C;
	Tue,  1 Apr 2025 16:27:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4906B10E61C
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Apr 2025 16:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=LNObDbT4ATxiT4jSsqJRv32cSZfqzQ9KW0j8T6d9+NE=; b=Fj+uYHb+jju1ndZ3029s90cXHJ
 RjOZokodxO+o8OZVrk6AydFnf0CTEyq0g1K/rpjgoFZhSJag7dBNSYmOjwNiFay88aHcbxNSrBFDm
 A801t3F9NemVnDQAYUTGQ4rWAHZwebMcwF5QUbgdrEDA3HRU4iYyL4ZFQ9zm3Gc1K/51AwaGOdNUL
 MsJcoDB06ZRPica41iZmYHoWFNNtiPCzrCssrlP2qSN6BLfVouUhhnAmmNMjpPuQj1FIEhKTajgsN
 AUTE5zQGuSUNhoAiry4WwmiEATZJmbBWelTvz8jcKNCckGHwz50bGISpQaB75mzLlC3Aq/DbApwRW
 b7I7P7QA==;
Received: from willy by casper.infradead.org with local (Exim 4.98.1 #2 (Red
 Hat Linux)) id 1tzeRn-00000007dTF-1bdv;
 Tue, 01 Apr 2025 16:26:43 +0000
Date: Tue, 1 Apr 2025 17:26:43 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Cc: Fan Ni <nifan.cxl@gmail.com>, linux-fsdevel@vger.kernel.org,
 linux-mm@kvack.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 11/11] fs: Remove aops->writepage
Message-ID: <Z-wTw5p5r4yPGfFE@casper.infradead.org>
References: <20250307135414.2987755-1-willy@infradead.org>
 <20250307135414.2987755-12-willy@infradead.org>
 <Z9d2JH33sLeCuzfE@fan> <Z9eVdplZKs2XVB9J@casper.infradead.org>
 <Z9iibbHs-jHTu7LP@casper.infradead.org>
 <9937a6346feccb7ab739aff63a084f63f3ad4382.camel@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9937a6346feccb7ab739aff63a084f63f3ad4382.camel@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 18, 2025 at 09:10:38AM +0100, Thomas Hellström wrote:
> On Mon, 2025-03-17 at 22:30 +0000, Matthew Wilcox wrote:
> > This patch fixes the compilation problem.  But I don't understand why
> > it's messing with the reclaim flag.  Thomas, can you explain?
> 
> Hi, Sorry for not responding earlier. The patch that uses writepage()
> here has been around for quite some time waiting for reviews / acks so
> I failed to notice that it's going away.

My turn to be sorry for dropping this conversation ...

> Anyway the reclaim flag clearing follows that of pageout() in vmscan.c
> which was also the case for the i915_gem_shmem.c usage in
> __shmem_writeback(). My understanding was that if the writeback was
> already completed at that point, the reclaim flag was no longer
> desirable.

I think the question is really why you're setting it in the first place.
Setting the reclaim flag indicates that you want the folio removed from
the page cache as soon as possible.  Other changes in flight are about
to make this more aggressive --  instead of waiting for the folio to
reach the end of the writeout queue, it'll be removed upon I/O completion.

It doesn't seem to me that this is what you actually want for TTM,
but perhaps I've misunderstood the intent of the code.
