Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14561264D12
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 20:33:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71D826E97B;
	Thu, 10 Sep 2020 18:33:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 033CC6E97E
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 18:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=O3f4pJZULtJ0Hg2fNHWuRs5XcF+sc7d6/Hzv1fj3FPw=; b=K31IH21Tut9dcJNTkS09h6hBMc
 zzqUmjTdSEGz7kbkojcnDkmNauqqxB7FbXhHGDpsxcJhPWRcqSYX0le9QfA9DkUTleaOsDu76FXdT
 3AdUKzs5yHbqQq3g1sP4PZsgZQkYfiNcQgmItXFGklo37jxy/0YO6B1YYw9zFBHlrFKptdYs3itjz
 LbBbGz1kjShY7XpdkW2tr/ARbYgUzKLJbGFBcZRovkONmt0heqXfLfc1Q/7MqGrFAeh1pfKxrHrJv
 VNm5Xs5VZPTA+FKeangibdYPtMCLGkGhe1oY8JSdJ8LyauGiq0l3DmjoxI8ToSbCB1zDsYU632iZa
 dvs7zhXw==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kGRNn-0005FX-SV; Thu, 10 Sep 2020 18:33:19 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-mm@kvack.org
Date: Thu, 10 Sep 2020 19:33:10 +0100
Message-Id: <20200910183318.20139-1-willy@infradead.org>
X-Mailer: git-send-email 2.21.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/8] Return head pages from find_*_entry
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

This patch series started out as part of the THP patch set, but it has
some nice effects along the way and it seems worth splitting it out and
submitting separately.

Currently find_get_entry() and find_lock_entry() return the page
corresponding to the requested index, but the first thing most callers do
is find the head page, which we just threw away.  As part of auditing
all the callers, I found some misuses of the APIs and some plain
inefficiencies that I've fixed.

The diffstat is unflattering, but I added more kernel-doc and a new wrapper.

v2:
 - Rework how shmem_getpage_gfp() handles getting a head page back from
   find_lock_entry()
 - Renamed find_get_swap_page() to find_get_incore_page()
 - Make sure find_get_incore_page() doesn't return a head page
 - Fix the missing include of linux/shmem_fs.h
 - Move find_get_entry and find_lock_entry prototypes to mm/internal.h
 - Rename thp_valid_index() to thp_contains()
 - Fix thp_contains() for hugetlbfs and swapcache
 - Add find_lock_head() wrapper around pagecache_get_page()

Matthew Wilcox (Oracle) (8):
  mm: Factor find_get_incore_page out of mincore_page
  mm: Use find_get_incore_page in memcontrol
  mm: Optimise madvise WILLNEED
  proc: Optimise smaps for shmem entries
  i915: Use find_lock_page instead of find_lock_entry
  mm: Convert find_get_entry to return the head page
  mm/shmem: Return head page from find_lock_entry
  mm: Add find_lock_head

 drivers/gpu/drm/i915/gem/i915_gem_shmem.c |  4 +--
 fs/proc/task_mmu.c                        |  8 +----
 include/linux/pagemap.h                   | 43 +++++++++++++++++-----
 include/linux/swap.h                      |  7 ++++
 mm/filemap.c                              | 44 +++++++++++------------
 mm/internal.h                             |  3 ++
 mm/madvise.c                              | 21 ++++++-----
 mm/memcontrol.c                           | 24 ++-----------
 mm/mincore.c                              | 28 ++-------------
 mm/shmem.c                                | 20 +++++------
 mm/swap_state.c                           | 32 +++++++++++++++++
 11 files changed, 127 insertions(+), 107 deletions(-)

-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
