Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7FCA63D03
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Mar 2025 04:22:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3759D10E049;
	Mon, 17 Mar 2025 03:22:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="pVkdirYH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29E2310E049
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Mar 2025 03:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=vYT3SBm9OApcKhO8tAbEbIrDwgI7CdNQazUfl8IYf1w=; b=pVkdirYHfWLQaKIN7ktDZAhWTK
 MaLt54W36sDuBHMl6zI3wqQsNmqUlyvQRKHYQA9q03mSYnYh/HtGzAao5TLl56ZtOm8EfbkIbnivl
 3foYeY5J+4kbZM7udB5HwMuX2UzwpXIFklEMphnqCrESoPjBoFdTTFYvHCYSUGC5WXu05TNYe1BG2
 k2CFyueT54exsXAw7amrdIpcKsgZzEEr5wAHaf2LnIP9GLjF0z25uYmlmVwt4bNaPvPV3Odcd96Qq
 Hyj/8+Bm0VP+OHxVURQZVf4hPuqB6SMiyZWFyesjVzsWv7MpBAUtqt1GaH9Flq6AK+DbPrR3zAArn
 cR1mnB7A==;
Received: from willy by casper.infradead.org with local (Exim 4.98 #2 (Red Hat
 Linux)) id 1tu13f-00000001Fxa-0NV9; Mon, 17 Mar 2025 03:22:31 +0000
Date: Mon, 17 Mar 2025 03:22:30 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Fan Ni <nifan.cxl@gmail.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Cc: linux-fsdevel@vger.kernel.org, linux-mm@kvack.org,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 11/11] fs: Remove aops->writepage
Message-ID: <Z9eVdplZKs2XVB9J@casper.infradead.org>
References: <20250307135414.2987755-1-willy@infradead.org>
 <20250307135414.2987755-12-willy@infradead.org>
 <Z9d2JH33sLeCuzfE@fan>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z9d2JH33sLeCuzfE@fan>
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

On Sun, Mar 16, 2025 at 06:08:52PM -0700, Fan Ni wrote:
> On Fri, Mar 07, 2025 at 01:54:11PM +0000, Matthew Wilcox (Oracle) wrote:
> > All callers and implementations are now removed, so remove the operation
> > and update the documentation to match.
> > 
> > Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> > ---
> 
> Hi Matthew,
> 
> Tried to apply the remaining patches in the patchest (Patch 5-11)  which
> have not picked up by linux-next. It seems we have more to cleanup.
> 
> For example, I hit the following issue when try to compile
> ----------------------------------------------------------------
> drivers/gpu/drm/ttm/ttm_backup.c: In function ‘ttm_backup_backup_page’:
> drivers/gpu/drm/ttm/ttm_backup.c:139:39: error: ‘const struct address_space_operations’ has no member named ‘writepage’; did you mean ‘writepages’?
>   139 |                 ret = mapping->a_ops->writepage(folio_file_page(to_folio, idx), &wbc);

Looks like that was added to linux-next after I completed the removal of
->writepage.  Thomas, what's going on here?
