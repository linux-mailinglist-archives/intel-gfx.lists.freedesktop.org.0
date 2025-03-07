Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E8DA56981
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 14:54:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15C3610EB6E;
	Fri,  7 Mar 2025 13:54:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="P+fhR0DJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3783C10EB79
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Mar 2025 13:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=BT6OjbtDCOFHHAijJpjMRbh4BDIQM0uytaFHqbNbas4=; b=P+fhR0DJRyfUD/uNdzZFl7spFN
 s9WEWvyhYKjqMt2ZkZIw8P2H8WA9PRUelUHbNbUHUAD74hf7doJwzbkO5RVpwh1XkHE/3eWl4EgAR
 LByuBb7d7QakRILNQYu2zosdstSG2OVQKc8zyUTjASsG/6/FG2aKG5MZ1QnmEiNzxNlLdogOTcFpU
 rgdT+FGNEqYgWAyLW+dRtDMkhZXF+9s+H8tMynfWyjchQ7zGjOtAB+i5XJHklJ9mPx1w8iYJ0xBRJ
 KXvnFMlFbIF1YTpxibbA24zR/zRAq8aVvFNXIby2MHWPnxKh1O0U9YKiSqA0bIUCw55fMQWF4gEki
 y7yrID1w==;
Received: from willy by casper.infradead.org with local (Exim 4.98 #2 (Red Hat
 Linux)) id 1tqY9Y-0000000CXG8-0H5t; Fri, 07 Mar 2025 13:54:16 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Cc: "Matthew Wilcox (Oracle)" <willy@infradead.org>, linux-mm@kvack.org,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/11] f2fs: Remove f2fs_write_node_page()
Date: Fri,  7 Mar 2025 13:54:04 +0000
Message-ID: <20250307135414.2987755-5-willy@infradead.org>
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
 fs/f2fs/node.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/fs/f2fs/node.c b/fs/f2fs/node.c
index 36614a1c2590..b78c1f95bc04 100644
--- a/fs/f2fs/node.c
+++ b/fs/f2fs/node.c
@@ -1784,13 +1784,6 @@ int f2fs_move_node_page(struct page *node_page, int gc_type)
 	return err;
 }
 
-static int f2fs_write_node_page(struct page *page,
-				struct writeback_control *wbc)
-{
-	return __write_node_page(page, false, NULL, wbc, false,
-						FS_NODE_IO, NULL);
-}
-
 int f2fs_fsync_node_pages(struct f2fs_sb_info *sbi, struct inode *inode,
 			struct writeback_control *wbc, bool atomic,
 			unsigned int *seq_id)
@@ -2217,7 +2210,6 @@ static bool f2fs_dirty_node_folio(struct address_space *mapping,
  * Structure of the f2fs node operations
  */
 const struct address_space_operations f2fs_node_aops = {
-	.writepage	= f2fs_write_node_page,
 	.writepages	= f2fs_write_node_pages,
 	.dirty_folio	= f2fs_dirty_node_folio,
 	.invalidate_folio = f2fs_invalidate_folio,
-- 
2.47.2

