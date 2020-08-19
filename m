Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE8024A637
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 20:49:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 954426E5C1;
	Wed, 19 Aug 2020 18:49:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2A096E5B2
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 18:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=w+HVqr4efGoD6sO5rh6jBUm19i4nXIWL4lYqxm6m+Dw=; b=ZmtYcgiZ5LdbDSIKoVXUG1ouFg
 /hfkSHtfH3uHd26x5DjGqRysCKmmFZ9MCgamFq9q3hfGzI8pECzDcZV9/Nq4ICmOUp0D4/9zRsJb8
 kIixebqo4HfYXJGK7bYVSwORjoUKlHeD68WpP+Yr8GaLfd+gblrSY+C7I1H2PGW/bbSx3NAW72duE
 uDBfPYyqJ3SL/9LtMwu4H1SAx5sI40Rrelt5nfF+kX0367TC4hz0v++1/aFxyPDIhEFDv+Y0HyOG3
 XX9Uttsq1ZrFRlbcEGnwRwLXA1c1OOi5+STQo4WqHMNi0W+Hl0c7U82skzW23ti+d3yK6kof329hs
 9846SOKg==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1k8T8m-0006Sk-C1; Wed, 19 Aug 2020 18:48:52 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-mm@kvack.org
Date: Wed, 19 Aug 2020 19:48:42 +0100
Message-Id: <20200819184850.24779-1-willy@infradead.org>
X-Mailer: git-send-email 2.21.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/8] Return head pages from find_get_entry and
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

This patch seris started out as part of the THP patch set, but it has
some nice effects along the way and it seems worth splitting it out and
submitting separately.

Currently find_get_entry() and find_lock_entry() return the page
corresponding to the requested index, but the first thing most callers do
is find the head page, which we just threw away.  As part of auditing
all the callers, I found some misuses of the APIs and some plain
inefficiencies that I've fixed.

The diffstat is unflattering, but I added more kernel-doc.

Matthew Wilcox (Oracle) (8):
  mm: Factor find_get_swap_page out of mincore_page
  mm: Use find_get_swap_page in memcontrol
  mm: Optimise madvise WILLNEED
  proc: Optimise smaps for shmem entries
  i915: Use find_lock_page instead of find_lock_entry
  mm: Convert find_get_entry to return the head page
  mm: Return head page from find_lock_entry
  mm: Hoist find_subpage call further up in pagecache_get_page

 drivers/gpu/drm/i915/gem/i915_gem_shmem.c |  4 +--
 fs/proc/task_mmu.c                        |  8 +----
 include/linux/pagemap.h                   | 16 +++++++--
 include/linux/swap.h                      |  7 ++++
 mm/filemap.c                              | 41 +++++++++++------------
 mm/madvise.c                              | 21 +++++++-----
 mm/memcontrol.c                           | 25 ++------------
 mm/mincore.c                              | 28 ++--------------
 mm/shmem.c                                | 15 +++++----
 mm/swap_state.c                           | 31 +++++++++++++++++
 10 files changed, 98 insertions(+), 98 deletions(-)

-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
