Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF349A56985
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 14:54:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DD2210EB71;
	Fri,  7 Mar 2025 13:54:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="P2q4tSdD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B9EB10EB68
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Mar 2025 13:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=+taT2QSuxL8BkaKw5rATlyAdw/O8TmblfYyY8TlzKtQ=; b=P2q4tSdDk1vTyS4yQ8UtnlEgiT
 rTSbqcb1hggXVwczLfNokNr5lTyrPEmcEg9r2Fiddr8Ss/ztL1ISAkKwd3Xp1h1AdltBA8yHGj0zq
 fAN0Aafq6BV5Vzl0gPlbyi25y20AX4pC76CprIgFG86Uo0cmkBkdXFm0Du0za+Tvhkb6/RPJ3uDXo
 LtkaIPnCP5Q8dWNheEuAj2hBm+3seeDOOjbHCSXry/3tcU9f/goxuo4P7bpoQ5glrzpezR87yhSwN
 3RxFVJGiIlAO3KufL58simBwsjQ9qquBDzYKK5vbatEuLXrmO5uy8zipnmf78uNCrh7kCDzmgrsFg
 cGvenHsA==;
Received: from willy by casper.infradead.org with local (Exim 4.98 #2 (Red Hat
 Linux)) id 1tqY9X-0000000CXFp-1xdu; Fri, 07 Mar 2025 13:54:15 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Cc: "Matthew Wilcox (Oracle)" <willy@infradead.org>, linux-mm@kvack.org,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/11] Remove aops->writepage
Date: Fri,  7 Mar 2025 13:54:00 +0000
Message-ID: <20250307135414.2987755-1-willy@infradead.org>
X-Mailer: git-send-email 2.48.1
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

I was preparing for LSFMM and noticed that actually we're almost done
with the writepage conversion.  This patchset finishes it off.
Something changed in my test environment and now it crashes before
even starting a run, so this is only build tested.

The first five patches (f2fs and vboxsf) are uninteresting.  I'll try
and get those into linux-next for the imminent merge window.  I think
the migrate and writeback patches are good, but maybe I've missed
something.  Then we come to i915 needing to tell shmem to do writeout,
so I added a module-accessible function to do that.  I also removed
the setting/clearing of reclaim, which would be easy to bring back if
it's really needed.  Patch 10 is probably the exciting one where
pageout() calls swap or shmem directly.  And then patch 11 really just
removes the op itself and the documentation for it.  I may have
over-trimmed here, but some of the documentation was so out of date it
was hard to tell what was worth preserving.

Anyway, let's see what the bots make of this.  This is against
next-20250307.

Matthew Wilcox (Oracle) (11):
  f2fs: Remove check for ->writepage
  f2fs: Remove f2fs_write_data_page()
  f2fs: Remove f2fs_write_meta_page()
  f2fs: Remove f2fs_write_node_page()
  vboxsf: Convert to writepages
  migrate: Remove call to ->writepage
  writeback: Remove writeback_use_writepage()
  shmem: Add shmem_writeout()
  i915: Use writeback_iter()
  mm: Remove swap_writepage() and shmem_writepage()
  fs: Remove aops->writepage

 Documentation/admin-guide/cgroup-v2.rst   |  2 +-
 Documentation/filesystems/fscrypt.rst     |  2 +-
 Documentation/filesystems/locking.rst     | 54 +--------------------
 Documentation/filesystems/vfs.rst         | 39 ++++------------
 block/blk-wbt.c                           |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 32 ++++---------
 fs/buffer.c                               |  4 +-
 fs/f2fs/checkpoint.c                      |  7 ---
 fs/f2fs/data.c                            | 28 -----------
 fs/f2fs/node.c                            |  8 ----
 fs/vboxsf/file.c                          | 47 ++++++++++---------
 include/linux/fs.h                        |  1 -
 include/linux/shmem_fs.h                  |  7 +--
 mm/migrate.c                              | 57 ++---------------------
 mm/page-writeback.c                       | 28 +----------
 mm/page_io.c                              |  3 +-
 mm/shmem.c                                | 33 ++++++-------
 mm/swap.h                                 |  4 +-
 mm/swap_state.c                           |  1 -
 mm/swapfile.c                             |  2 +-
 mm/vmscan.c                               | 29 ++++++------
 21 files changed, 93 insertions(+), 297 deletions(-)

-- 
2.47.2

