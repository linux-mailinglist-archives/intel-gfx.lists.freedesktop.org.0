Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04301264D13
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 20:33:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3430F6E97E;
	Thu, 10 Sep 2020 18:33:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC2C86E97E
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=t4cbRdKf2ijE6kqJJxv8bdn8kFWgLxOFi/schcE0nRE=; b=rNWuYzU1YtoAnXiHJRmR/JtlkT
 oCgCfmfDzsUSKwCARtS/TK+S44gKkkmnhS2j39NPtKkamP3sSBPTDhk0G9H0k/4D7vfFABR+v9+dq
 Xf/Yqryar1Bue7sAFWv82sIm7AHNbrxhjKjp5h/1JLNf5Q4ctkoDa+s2hZ5z541SgJ5ZoBKb8OALD
 XwY/scqtUcymhxGLbQkaEWio8afszwY8uzZpu6Md/nBl/jIqkpiqa8L/PNQR77A/aC8lQeH1OyKnE
 bHfZXhiwmSEqg9jwzcMj/eoxkqfd+rC6tm/tMGjfLuL7DZg/mvNaDifqxPIL/6hn/Z+sQvAVosHyL
 nMDv1z0w==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kGRNp-0005GO-6D; Thu, 10 Sep 2020 18:33:21 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-mm@kvack.org
Date: Thu, 10 Sep 2020 19:33:14 +0100
Message-Id: <20200910183318.20139-5-willy@infradead.org>
X-Mailer: git-send-email 2.21.3
In-Reply-To: <20200910183318.20139-1-willy@infradead.org>
References: <20200910183318.20139-1-willy@infradead.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 4/8] proc: Optimise smaps for shmem entries
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

Avoid bumping the refcount on pages when we're only interested in the
swap entries.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Acked-by: Johannes Weiner <hannes@cmpxchg.org>
---
 fs/proc/task_mmu.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/fs/proc/task_mmu.c b/fs/proc/task_mmu.c
index 5066b0251ed8..e42d9e5e9a3c 100644
--- a/fs/proc/task_mmu.c
+++ b/fs/proc/task_mmu.c
@@ -520,16 +520,10 @@ static void smaps_pte_entry(pte_t *pte, unsigned long addr,
 			page = device_private_entry_to_page(swpent);
 	} else if (unlikely(IS_ENABLED(CONFIG_SHMEM) && mss->check_shmem_swap
 							&& pte_none(*pte))) {
-		page = find_get_entry(vma->vm_file->f_mapping,
+		page = xa_load(&vma->vm_file->f_mapping->i_pages,
 						linear_page_index(vma, addr));
-		if (!page)
-			return;
-
 		if (xa_is_value(page))
 			mss->swap += PAGE_SIZE;
-		else
-			put_page(page);
-
 		return;
 	}
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
