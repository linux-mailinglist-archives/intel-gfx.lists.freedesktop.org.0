Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF21A6619B
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Mar 2025 23:30:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B5E610E01F;
	Mon, 17 Mar 2025 22:30:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="lnqQ8GWQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61BFC10E01F
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Mar 2025 22:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=j5kfpSpCW3Y67C0StqdtkYxDyNl1nfMhxEJXQKT31Zo=; b=lnqQ8GWQJPuTHf0POXM4ZAutD3
 JO3eo1JAyCPUoWQLx5ExFjSN8D8EGfJcU6wdjr01FhiDe3p6f88sNLY1fnPaPUBfz2Zq5R/TDTs7E
 2MOu2txj7EzeNRp7sZaCr4USvP3iJJCWjri8hRHVG2vb3yC91F3Ai4SHuyJSR5RizmcKcYdStTKGE
 Rq/JG6IIZ1WcJWh/fHEksb8Aoqdxaz3Q2A8fpmxq7Rys8oE83FTcdMVJJxAjCrXLGLdZvDHZ9iRby
 0xQAQTktKcm1jIgBjuOu8xB0we1L6ivbHyrhDYdVPbYJDqTXrBScXqVGXO7IvXxua+5wNYKJCGZ8c
 nQg4YOfQ==;
Received: from willy by casper.infradead.org with local (Exim 4.98 #2 (Red Hat
 Linux)) id 1tuIyD-0000000A0Ax-2frk; Mon, 17 Mar 2025 22:30:05 +0000
Date: Mon, 17 Mar 2025 22:30:05 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Fan Ni <nifan.cxl@gmail.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Cc: linux-fsdevel@vger.kernel.org, linux-mm@kvack.org,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 11/11] fs: Remove aops->writepage
Message-ID: <Z9iibbHs-jHTu7LP@casper.infradead.org>
References: <20250307135414.2987755-1-willy@infradead.org>
 <20250307135414.2987755-12-willy@infradead.org>
 <Z9d2JH33sLeCuzfE@fan> <Z9eVdplZKs2XVB9J@casper.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z9eVdplZKs2XVB9J@casper.infradead.org>
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

On Mon, Mar 17, 2025 at 03:22:30AM +0000, Matthew Wilcox wrote:
> On Sun, Mar 16, 2025 at 06:08:52PM -0700, Fan Ni wrote:
> > On Fri, Mar 07, 2025 at 01:54:11PM +0000, Matthew Wilcox (Oracle) wrote:
> > > All callers and implementations are now removed, so remove the operation
> > > and update the documentation to match.
> > > 
> > > Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> > > ---
> > 
> > Hi Matthew,
> > 
> > Tried to apply the remaining patches in the patchest (Patch 5-11)  which
> > have not picked up by linux-next. It seems we have more to cleanup.
> > 
> > For example, I hit the following issue when try to compile
> > ----------------------------------------------------------------
> > drivers/gpu/drm/ttm/ttm_backup.c: In function ‘ttm_backup_backup_page’:
> > drivers/gpu/drm/ttm/ttm_backup.c:139:39: error: ‘const struct address_space_operations’ has no member named ‘writepage’; did you mean ‘writepages’?
> >   139 |                 ret = mapping->a_ops->writepage(folio_file_page(to_folio, idx), &wbc);
> 
> Looks like that was added to linux-next after I completed the removal of
> ->writepage.  Thomas, what's going on here?

This patch fixes the compilation problem.  But I don't understand why
it's messing with the reclaim flag.  Thomas, can you explain?

+++ b/drivers/gpu/drm/ttm/ttm_backup.c
@@ -136,13 +136,13 @@ ttm_backup_backup_page(struct ttm_backup *backup, struct page *page,
                        .for_reclaim = 1,
                };
                folio_set_reclaim(to_folio);
-               ret = mapping->a_ops->writepage(folio_file_page(to_folio, idx), &wbc);
+               ret = shmem_writeout(to_folio, &wbc);
                if (!folio_test_writeback(to_folio))
                        folio_clear_reclaim(to_folio);
                /*
-                * If writepage succeeds, it unlocks the folio.
-                * writepage() errors are otherwise dropped, since writepage()
-                * is only best effort here.
+                * If writeout succeeds, it unlocks the folio.  errors
+                * are otherwise dropped, since writeout is only best
+                * effort here.
                 */
                if (ret)
                        folio_unlock(to_folio);

