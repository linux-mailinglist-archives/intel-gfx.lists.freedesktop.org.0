Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E29CA56980
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 14:54:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA97310EB6C;
	Fri,  7 Mar 2025 13:54:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="nnGr+Xt3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BA1610EB6B
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Mar 2025 13:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=T8fXRyaYOssoLEG59sUpr97PSMqTmPmVh2Clh/QPZVU=; b=nnGr+Xt3+97jZBGQECj87NaDqI
 XK8uVQj8thhehM0zZlfDnmvlOXcBQ7SO/K8NTEb3FRquZXAarnz7wDTJEkwev+safNXqNwMRfnaif
 +pAsjoSitQfyymKZLmoU50i4NHcwZ0cC5EuNc9jfgqDK6BdkWuzJg40ZAJJ3uBIMmknep94icuZG/
 C6WPgd5F3oI4SCW3MO4/ii3C5CxeWkeuBT+bEHgvTn8os3y6u2ttvT+5+8RkNI7GuVwyyXf3aIW0y
 qaE5ugvrhoXw5fNciwFpeMMJFukQfyGGRVImUAaBUB6ZgY8zt4atiw2YWormv0v03A69cDNPIGN6s
 cML+42aA==;
Received: from willy by casper.infradead.org with local (Exim 4.98 #2 (Red Hat
 Linux)) id 1tqY9X-0000000CXG1-3uYy; Fri, 07 Mar 2025 13:54:15 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Cc: "Matthew Wilcox (Oracle)" <willy@infradead.org>, linux-mm@kvack.org,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/11] f2fs: Remove f2fs_write_meta_page()
Date: Fri,  7 Mar 2025 13:54:03 +0000
Message-ID: <20250307135414.2987755-4-willy@infradead.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250307135414.2987755-1-willy@infradead.org>
References: <20250307135414.2987755-1-willy@infradead.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Mappings which implement writepages should not implement writepage
as it can only harm writeback patterns.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/f2fs/checkpoint.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/fs/f2fs/checkpoint.c b/fs/f2fs/checkpoint.c
index a35595f8d3f5..412282f50cbb 100644
--- a/fs/f2fs/checkpoint.c
+++ b/fs/f2fs/checkpoint.c
@@ -381,12 +381,6 @@ static int __f2fs_write_meta_page(struct page *page,
 	return AOP_WRITEPAGE_ACTIVATE;
 }
 
-static int f2fs_write_meta_page(struct page *page,
-				struct writeback_control *wbc)
-{
-	return __f2fs_write_meta_page(page, wbc, FS_META_IO);
-}
-
 static int f2fs_write_meta_pages(struct address_space *mapping,
 				struct writeback_control *wbc)
 {
@@ -507,7 +501,6 @@ static bool f2fs_dirty_meta_folio(struct address_space *mapping,
 }
 
 const struct address_space_operations f2fs_meta_aops = {
-	.writepage	= f2fs_write_meta_page,
 	.writepages	= f2fs_write_meta_pages,
 	.dirty_folio	= f2fs_dirty_meta_folio,
 	.invalidate_folio = f2fs_invalidate_folio,
-- 
2.47.2

