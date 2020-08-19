Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D148F24A634
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 20:49:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 631F56E5BE;
	Wed, 19 Aug 2020 18:49:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8FAB6E5B0
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 18:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=lHH3FI1tdZZ9OqCoI613Ez6EcSFNmDwjhfuwAt20rC0=; b=bV5mILzXSPzh12r4bbJtUTmcyK
 mmNzxSnEJpTqrEIi28olHtDus3qRFErxyqk3CfVa6Nd4m1tQJRl4IgaCasF0ja9tQDItvvrax3GnS
 8UkqbyOfosJ5Q1ytEse0bM/qsh4yxOC1BjxdwFk5+1XwRJS5Mzl9pD0gRQiZFy1b0n+04o76H48LY
 t3U9M07QP7XUBrtP90Ne92iZXCDHymovYeKar5RSM0+3U/Kkv4PkKew1BHT59pZ55s+bYN1mtFgId
 s+FXFgC5nX3xOrYqcNbRh6at1KntZUZAJORErYWO3YvaY8XYRm8CaujUuJjZ+cHzX44rlsGU7au8p
 ZnGIytaQ==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1k8T8p-0006Te-2y; Wed, 19 Aug 2020 18:48:55 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-mm@kvack.org
Date: Wed, 19 Aug 2020 19:48:47 +0100
Message-Id: <20200819184850.24779-6-willy@infradead.org>
X-Mailer: git-send-email 2.21.3
In-Reply-To: <20200819184850.24779-1-willy@infradead.org>
References: <20200819184850.24779-1-willy@infradead.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/8] i915: Use find_lock_page instead of
 find_lock_entry
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
Cc: intel-gfx@lists.freedesktop.org, Huang Ying <ying.huang@intel.com>,
 Hugh Dickins <hughd@google.com>, linux-kernel@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 William Kucharski <william.kucharski@oracle.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Johannes Weiner <hannes@cmpxchg.org>, cgroups@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Alexey Dobriyan <adobriyan@gmail.com>, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

i915 does not want to see value entries.  Switch it to use
find_lock_page() instead, and remove the export of find_lock_entry().

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 4 ++--
 mm/filemap.c                              | 1 -
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 38113d3c0138..75e8b71c18b9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -258,8 +258,8 @@ shmem_writeback(struct drm_i915_gem_object *obj)
 	for (i = 0; i < obj->base.size >> PAGE_SHIFT; i++) {
 		struct page *page;
 
-		page = find_lock_entry(mapping, i);
-		if (!page || xa_is_value(page))
+		page = find_lock_page(mapping, i);
+		if (!page)
 			continue;
 
 		if (!page_mapped(page) && clear_page_dirty_for_io(page)) {
diff --git a/mm/filemap.c b/mm/filemap.c
index 1aaea26556cc..36067cf7f8c5 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -1628,7 +1628,6 @@ struct page *find_lock_entry(struct address_space *mapping, pgoff_t offset)
 	}
 	return page;
 }
-EXPORT_SYMBOL(find_lock_entry);
 
 /**
  * pagecache_get_page - Find and get a reference to a page.
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
