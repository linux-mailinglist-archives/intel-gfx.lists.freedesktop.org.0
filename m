Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC30AA73754
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 17:52:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0667E10E06D;
	Thu, 27 Mar 2025 16:52:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="tff+XbVM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A680810E06D
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Mar 2025 16:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=WvJvXJ3OrGWCdtCx1QOheQY5gfEHa0CN+A8keiNSVBk=; b=tff+XbVM+3StuD0VjdfR5xxB7f
 evRprvJDo+8MKUQ+57677XAwMV1B5JST3TsTJ8sOoCtAHAHN1YDhcEJW79vFkdlpB/6qc0K9zPCn8
 b35pvaNzwEwWI+Rh+UHZDtvanMaUznfYLve9OBramtw+1lMqkzMUKM/0HuCuHv9RLeqDbkNo3BGUu
 JmNlDHggPEuQbsR82uCo1J1S6V0O9RRaYn4TL/khla44+qyBZwqkcIPhn1BkBhAi3kV1UanGct4qV
 WNandZeEwxWTn+XN9vGHser7aIl65P4YFNi2ItG+uhWo9Omgm1HWLPwqulzb6h5R1SKmmeN0xFyip
 QYSt2LiQ==;
Received: from willy by casper.infradead.org with local (Exim 4.98.1 #2 (Red
 Hat Linux)) id 1txqSX-0000000DYhZ-1mPH;
 Thu, 27 Mar 2025 16:52:01 +0000
Date: Thu, 27 Mar 2025 16:52:01 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Zi Yan <ziy@nvidia.com>
Cc: linux-fsdevel@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 Joanne Koong <joannelkoong@gmail.com>, linux-mm@kvack.org,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 06/11] migrate: Remove call to ->writepage
Message-ID: <Z-WCMYYQRsrRlikA@casper.infradead.org>
References: <20250307135414.2987755-1-willy@infradead.org>
 <20250307135414.2987755-7-willy@infradead.org>
 <D8R539L45F9P.3PIKZ5DUGGVS8@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <D8R539L45F9P.3PIKZ5DUGGVS8@nvidia.com>
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

On Thu, Mar 27, 2025 at 11:04:57AM -0400, Zi Yan wrote:
> On Fri Mar 7, 2025 at 8:54 AM EST, Matthew Wilcox (Oracle) wrote:
> > The writepage callback is going away; filesystems must implement
> > migrate_folio or else dirty folios will not be migratable.
> 
> What is the impact of this? Are there any filesystem that has
> a_ops->writepage() without migrate_folio()? I wonder if it could make
> the un-migratable problem worse[1] when such FS exists.

As Christoph and I have been going through filesystems removing their
->writepage operations, we've been careful to add ->migrate_folio
callbacks at the same time.  But we haven't fixed any out-of-tree
filesystems, and we can't fix the filesystems which will be written in
the future.

So maybe what we should do is WARN_ON_ONCE() for filesystems which
have a ->writepages, but do not have a ->migrate_folio()?

> >  static int fallback_migrate_folio(struct address_space *mapping,
> >  		struct folio *dst, struct folio *src, enum migrate_mode mode)
> >  {
> > -	if (folio_test_dirty(src)) {
> > -		/* Only writeback folios in full synchronous migration */
> > -		switch (mode) {
> > -		case MIGRATE_SYNC:
> > -			break;
> > -		default:
> > -			return -EBUSY;
> > -		}
> > -		return writeout(mapping, src);
> > -	}
> 
> Now fallback_migrate_folio() no longer writes out page for FS, so it is
> the responsibilty of migrate_folio()?

->migrate_folio() doesn't need to write out the page.  It can migrate
dirty folios (just not folios currently under writeback, obviously)

