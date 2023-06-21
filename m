Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28026738C8C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 19:04:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 499D210E338;
	Wed, 21 Jun 2023 17:04:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1110 seconds by postgrey-1.36 at gabe;
 Wed, 21 Jun 2023 17:04:37 UTC
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71BEE10E338
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 17:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=jTDGdnu+fG/6kslyclH2srz/sHr6MJEFetnoOEAqThE=; b=J7syLfgLtqZEvF+FaGdNCpIxYK
 FGrBsHrwiUgwuOgUEvOX2i7PWXG/ZXhqiAhW6CpfyR4l4rDqNGULpmdUDJAIMFqrXnlWMyJuuuQew
 CRIwuxDz6BodPG9A2vL0dc3r9jSUjJ096kbZOKhyXbwTEF5WnPbOv35W1YxmyI5xeO3eW9SZeu6Ui
 elEI4SaI8VG431yTXK/Agfd1OvARTxSno98kcl4XPxpk7V8Q46NmOwcGLYx7LMoOCYaku65I0hGaM
 vfxZSH7R76ZxcVPpw10enxxDEKsn/iEIr1hxmLFS6RNnFgRQiKGzIC7i3HzHCE4ZskLC1FZi9nT0k
 4UQzvpAA==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qC0y1-00EjDk-FK; Wed, 21 Jun 2023 16:46:01 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-mm@kvack.org,
	Andrew Morton <akpm@linux-foundation.org>
Date: Wed, 21 Jun 2023 17:45:47 +0100
Message-Id: <20230621164557.3510324-4-willy@infradead.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20230621164557.3510324-1-willy@infradead.org>
References: <20230621164557.3510324-1-willy@infradead.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/13] scatterlist: Add sg_set_folio()
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
Cc: linux-nfs@vger.kernel.org, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org, linux-afs@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This wrapper for sg_set_page() lets drivers add folios to a scatterlist
more easily.  We could, perhaps, do better by using a different page
in the folio if offset is larger than UINT_MAX, but let's hope we get
a better data structure than this before we need to care about such
large folios.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 include/linux/scatterlist.h | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/include/linux/scatterlist.h b/include/linux/scatterlist.h
index ec46d8e8e49d..77df3d7b18a6 100644
--- a/include/linux/scatterlist.h
+++ b/include/linux/scatterlist.h
@@ -141,6 +141,30 @@ static inline void sg_set_page(struct scatterlist *sg, struct page *page,
 	sg->length = len;
 }
 
+/**
+ * sg_set_folio - Set sg entry to point at given folio
+ * @sg:		 SG entry
+ * @folio:	 The folio
+ * @len:	 Length of data
+ * @offset:	 Offset into folio
+ *
+ * Description:
+ *   Use this function to set an sg entry pointing at a folio, never assign
+ *   the folio directly. We encode sg table information in the lower bits
+ *   of the folio pointer. See sg_page() for looking up the page belonging
+ *   to an sg entry.
+ *
+ **/
+static inline void sg_set_folio(struct scatterlist *sg, struct folio *folio,
+			       size_t len, size_t offset)
+{
+	WARN_ON_ONCE(len > UINT_MAX);
+	WARN_ON_ONCE(offset > UINT_MAX);
+	sg_assign_page(sg, &folio->page);
+	sg->offset = offset;
+	sg->length = len;
+}
+
 static inline struct page *sg_page(struct scatterlist *sg)
 {
 #ifdef CONFIG_DEBUG_SG
-- 
2.39.2

