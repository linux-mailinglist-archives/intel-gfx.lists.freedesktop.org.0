Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C566A56984
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 14:54:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21BA410EB70;
	Fri,  7 Mar 2025 13:54:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="XY7U93Dx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33F2210EB78
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Mar 2025 13:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=nbz+BLNYgFlD4q+RSS71Ot7C9TdXZjDl9SBqkDnbsow=; b=XY7U93DxQ+cGHvN+aCVMwhd7bD
 Q5omSA/aDlZZUo4fX5k0l7Bt7oZCdWZFxn3uYSrmnYsV+05wv3PbwCywdxZM18Sbk0MwOcLQWaWIK
 jKYjpk2VpjpmGP7AC7Z4KtBd4OE8uUFu1LVAs78sznRKKHgeC2KI5uPo6riG9jppW70Zfw1HDACxB
 zk3tAtFduAuGZ+lMVcXsHpAbD9dU+69tKdaGcCcUAOKATP3I/UZogeaTFNZZQLxYF8VYQ+QBwnzKx
 727elCnkPaDIaHy3WvwUUkIBt3aQh6YLeCVtLpZK5MWWOWijpRqVdUkyPZwR/Ml0adWX/Bn9Hud/f
 /BzBL14g==;
Received: from willy by casper.infradead.org with local (Exim 4.98 #2 (Red Hat
 Linux)) id 1tqY9X-0000000CXFr-2KOb; Fri, 07 Mar 2025 13:54:15 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Cc: "Matthew Wilcox (Oracle)" <willy@infradead.org>, linux-mm@kvack.org,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 01/11] f2fs: Remove check for ->writepage
Date: Fri,  7 Mar 2025 13:54:01 +0000
Message-ID: <20250307135414.2987755-2-willy@infradead.org>
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

We're almost able to remove a_ops->writepage.  This check is unnecessary
as we'll never call into __f2fs_write_data_pages() for character
devices.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/f2fs/data.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/fs/f2fs/data.c b/fs/f2fs/data.c
index c82d949709f4..a80d5ef9acbb 100644
--- a/fs/f2fs/data.c
+++ b/fs/f2fs/data.c
@@ -3280,10 +3280,6 @@ static int __f2fs_write_data_pages(struct address_space *mapping,
 	int ret;
 	bool locked = false;
 
-	/* deal with chardevs and other special file */
-	if (!mapping->a_ops->writepage)
-		return 0;
-
 	/* skip writing if there is no dirty page in this inode */
 	if (!get_dirty_pages(inode) && wbc->sync_mode == WB_SYNC_NONE)
 		return 0;
-- 
2.47.2

