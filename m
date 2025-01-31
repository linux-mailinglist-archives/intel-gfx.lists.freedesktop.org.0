Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CF6A239C0
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 08:10:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 638BB10EA20;
	Fri, 31 Jan 2025 07:10:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="pVOThwwm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CAA610EA20
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2025 07:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Gnn9O5bhwCUoZ2vwLg43aIO2C1sCiVIi/g5nxmb2czc=; b=pVOThwwmjvZXsFr9BMGV8UxkSZ
 T5jyWkdlHJtIINV5cREf438q20VcCAn6k/j3ije99Id45nD2c/dK6ispDDTj9N3cKY9KPzhMynVlM
 0Bbv6WiZYnNFcaMige5UvjemEiVwtSYihRhWdrWNPZ3D1nS4qkBbvVvAgcgApT7P9PEBtpkL6yGvy
 JC6XsHRCzfPU+RUJH5kDvM76AjqSgZrCxi1Xn6vluJ3dLt5H0CUC05bA4EW0g/S5O9TjTsL+pwcsr
 v2x0cvViqD8HXnKzxX4J6ecfrcSqqX7Jdzz8PsbeHrbQqq16+/FgKykqRhJZFMDS4z8dcp3v4Dj9E
 TGet5l8w==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98 #2 (Red Hat
 Linux)) id 1tdlAF-0000000A5Wz-2jWd; Fri, 31 Jan 2025 07:10:07 +0000
Date: Thu, 30 Jan 2025 23:10:07 -0800
From: Christoph Hellwig <hch@infradead.org>
To: "Vishal Moola (Oracle)" <vishal.moola@gmail.com>
Cc: akpm@linux-foundation.org, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, hch@infradead.org, urezki@gmail.com,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 0/2] vmalloc: Introduce vmap_file()
Message-ID: <Z5x3TwhAWadIV8oJ@infradead.org>
References: <20250131001806.92349-1-vishal.moola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250131001806.92349-1-vishal.moola@gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
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

On Thu, Jan 30, 2025 at 04:18:04PM -0800, Vishal Moola (Oracle) wrote:
> Currently, users have to call vmap() or vmap_pfn() to map pages to
> kernel virtual space. vmap() requires the page references, and
> vmap_pfn() requires page pfns. If we have a file but no page references,
> we have to do extra work to map them.
> 
> Create a function, vmap_file(), to map a specified range of a given
> file to kernel virtual space. Also convert a user that benefits from
> vmap_file().

As far as I can tell there is exatly one user that maps file pages
into vmalloc space.  It's a pretty odd thing to do, so figuring out
a way to get rid of that might be a better use of time.

