Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1600A56986
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 14:54:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3B9110EB73;
	Fri,  7 Mar 2025 13:54:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="XZn6/qRR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F04310EB73
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Mar 2025 13:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=/z5i0Mk9Cv2/sY4L3FZ7BIchCOXs9aYcNdg4XHBiico=; b=XZn6/qRRlZuA8W/65iLtP+DmJA
 0a6R3g2imvgF9NFcjTV1wjItQb+Gm+iOmA3lKwb4uzXzpnGk1s+xHDW1io4ZlfX02BHlNf6G97ThN
 u2X2fj2Fs/PyNipIEfklLIt1qS6Yvysi39dBIgGZs19uBqdkje0otPp8X6WgmP4CQcUcfk3S/55aI
 T69BjppGgpcnsa2I1E5z1bACCLuqc1dYu/JT0Ao97YkukJGpxyiE6WN8iCl0IVdAD/ikqUSAgUX6q
 JHN4JQhhgTuWrUFBmcQinFwhgbp7J+0zmTpBe8abLU2VrxruKpPU3fThzjwCY8FxIcJckOvoQy44X
 nq+E4ZlA==;
Received: from willy by casper.infradead.org with local (Exim 4.98 #2 (Red Hat
 Linux)) id 1tqY9Y-0000000CXGT-1pj8; Fri, 07 Mar 2025 13:54:16 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Cc: "Matthew Wilcox (Oracle)" <willy@infradead.org>, linux-mm@kvack.org,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 07/11] writeback: Remove writeback_use_writepage()
Date: Fri,  7 Mar 2025 13:54:07 +0000
Message-ID: <20250307135414.2987755-8-willy@infradead.org>
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

The ->writepage operation is going away.  Remove this alternative to
calling ->writepages.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 mm/page-writeback.c | 28 ++--------------------------
 1 file changed, 2 insertions(+), 26 deletions(-)

diff --git a/mm/page-writeback.c b/mm/page-writeback.c
index 18456ddd463b..3cf7ae45be58 100644
--- a/mm/page-writeback.c
+++ b/mm/page-writeback.c
@@ -2621,27 +2621,6 @@ int write_cache_pages(struct address_space *mapping,
 }
 EXPORT_SYMBOL(write_cache_pages);
 
-static int writeback_use_writepage(struct address_space *mapping,
-		struct writeback_control *wbc)
-{
-	struct folio *folio = NULL;
-	struct blk_plug plug;
-	int err;
-
-	blk_start_plug(&plug);
-	while ((folio = writeback_iter(mapping, wbc, folio, &err))) {
-		err = mapping->a_ops->writepage(&folio->page, wbc);
-		if (err == AOP_WRITEPAGE_ACTIVATE) {
-			folio_unlock(folio);
-			err = 0;
-		}
-		mapping_set_error(mapping, err);
-	}
-	blk_finish_plug(&plug);
-
-	return err;
-}
-
 int do_writepages(struct address_space *mapping, struct writeback_control *wbc)
 {
 	int ret;
@@ -2652,14 +2631,11 @@ int do_writepages(struct address_space *mapping, struct writeback_control *wbc)
 	wb = inode_to_wb_wbc(mapping->host, wbc);
 	wb_bandwidth_estimate_start(wb);
 	while (1) {
-		if (mapping->a_ops->writepages) {
+		if (mapping->a_ops->writepages)
 			ret = mapping->a_ops->writepages(mapping, wbc);
-		} else if (mapping->a_ops->writepage) {
-			ret = writeback_use_writepage(mapping, wbc);
-		} else {
+		else
 			/* deal with chardevs and other special files */
 			ret = 0;
-		}
 		if (ret != -ENOMEM || wbc->sync_mode != WB_SYNC_ALL)
 			break;
 
-- 
2.47.2

