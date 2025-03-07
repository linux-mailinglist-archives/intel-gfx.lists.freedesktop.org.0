Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FF9A5697D
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 14:54:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B2D510EB62;
	Fri,  7 Mar 2025 13:54:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="K0rUlg3+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C08E10EB6F
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Mar 2025 13:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=gYAlq/IZDrN3gAui/tjJNHWS0bZWyHE15MvZlcNIc7w=; b=K0rUlg3+uTjZX3ud/LW+9LOept
 eIWClltyGb551+sTtSjHCSZEBJNGkuChoXa74eq4oYYIuEdEAfgeArfvO3oklLkFCn/EYC7h2mCqI
 E75wHlKErYegjFzgWWReHWhUTQqWQ2FhM1ffcbZgz4t1t3Z7Tnu3hFNPX72K23UrXm1Oyka/m4Ymu
 vOjmwRLhefSEPrfeUv0U9xEZLAmnegRAjGVleZzIUtp00VM2cT/JnPGqEZzXEAyA3nCx5In+W7si8
 K4V51BwGYhJgz2F/Pbnsyc3xyQ0uwSUWzyVps7NBtGXl7vNBcGZ79Mfg4Lgzs6lW8WsUWx55917/c
 pqF/8D4w==;
Received: from willy by casper.infradead.org with local (Exim 4.98 #2 (Red Hat
 Linux)) id 1tqY9X-0000000CXFt-2gHs; Fri, 07 Mar 2025 13:54:15 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Cc: "Matthew Wilcox (Oracle)" <willy@infradead.org>, linux-mm@kvack.org,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/11] f2fs: Remove f2fs_write_data_page()
Date: Fri,  7 Mar 2025 13:54:02 +0000
Message-ID: <20250307135414.2987755-3-willy@infradead.org>
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
 fs/f2fs/data.c | 24 ------------------------
 1 file changed, 24 deletions(-)

diff --git a/fs/f2fs/data.c b/fs/f2fs/data.c
index a80d5ef9acbb..cdd63e8ad42e 100644
--- a/fs/f2fs/data.c
+++ b/fs/f2fs/data.c
@@ -2935,29 +2935,6 @@ int f2fs_write_single_data_page(struct folio *folio, int *submitted,
 	return err;
 }
 
-static int f2fs_write_data_page(struct page *page,
-					struct writeback_control *wbc)
-{
-	struct folio *folio = page_folio(page);
-#ifdef CONFIG_F2FS_FS_COMPRESSION
-	struct inode *inode = folio->mapping->host;
-
-	if (unlikely(f2fs_cp_error(F2FS_I_SB(inode))))
-		goto out;
-
-	if (f2fs_compressed_file(inode)) {
-		if (f2fs_is_compressed_cluster(inode, folio->index)) {
-			folio_redirty_for_writepage(wbc, folio);
-			return AOP_WRITEPAGE_ACTIVATE;
-		}
-	}
-out:
-#endif
-
-	return f2fs_write_single_data_page(folio, NULL, NULL, NULL,
-						wbc, FS_DATA_IO, 0, true);
-}
-
 /*
  * This function was copied from write_cache_pages from mm/page-writeback.c.
  * The major change is making write step of cold data page separately from
@@ -4111,7 +4088,6 @@ static void f2fs_swap_deactivate(struct file *file)
 const struct address_space_operations f2fs_dblock_aops = {
 	.read_folio	= f2fs_read_data_folio,
 	.readahead	= f2fs_readahead,
-	.writepage	= f2fs_write_data_page,
 	.writepages	= f2fs_write_data_pages,
 	.write_begin	= f2fs_write_begin,
 	.write_end	= f2fs_write_end,
-- 
2.47.2

