Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3148827025F
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Sep 2020 18:40:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 834526ED10;
	Fri, 18 Sep 2020 16:40:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D89B6ED10;
 Fri, 18 Sep 2020 16:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=kbkCOaAVGW2W0qtF3ILC2dY2YuGuU78+gf+gMb7gwmg=; b=kW/m5vnUNR9hH31GcXuVcpd9j2
 YA6VaBH1j/TiUI3s10h53oQiEx5bSqjcpwY8JemDJbytieos8zt+gRB1FpEaZE9ZsAKzL4LQC0jza
 iqqFAttfNNTd4/5l8lRTxiHEru6CjyH/WYZRSvfVriw/iqmEjMdx7BgGWHp8bWD5i5kx+iWa6kL8H
 gBcyIRucV67OIH/x5iE4iVZODxkkwqs3zdZ+XmOdUAkQoickM8doXsxt/7EZ+p93DBYP3QdoVQtAN
 2milUFpS2U5fzp8jyoapCmfH59wTxVZclqKH1diAZY87+wVGYpDlWdBfpnNKB0VdioTh1sC8mAgnG
 JPit0e+w==;
Received: from 089144214092.atnat0023.highway.a1.net ([89.144.214.92]
 helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJJQ7-00071w-B7; Fri, 18 Sep 2020 16:39:35 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Fri, 18 Sep 2020 18:37:18 +0200
Message-Id: <20200918163724.2511-1-hch@lst.de>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] remove alloc_vm_area
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
Cc: Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>, linux-mm@kvack.org,
 Peter Zijlstra <peterz@infradead.org>, intel-gfx@lists.freedesktop.org,
 x86@kernel.org, linux-kernel@vger.kernel.org, Minchan Kim <minchan@kernel.org>,
 dri-devel@lists.freedesktop.org, xen-devel@lists.xenproject.org,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>, Nitin Gupta <ngupta@vflare.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrew,

this series removes alloc_vm_area, which was left over from the big
vmalloc interface rework.  It is a rather arkane interface, basicaly
the equivalent of get_vm_area + actually faulting in all PTEs in
the allocated area.  It was originally addeds for Xen (which isn't
modular to start with), and then grew users in zsmalloc and i915
which seems to mostly qualify as abuses of the interface, especially
for i915 as a random driver should not set up PTE bits directly.

Note that my laptop doesn't seem to actually exercise the new vmap_pfn
path, so careful review from the i915 maintainers is very welcome.

Also I wonder why zsmalloc is even doing the manual allocation of kernel
virtual address space plus mapping into it.  IMHO zsmalloc should be
using our normal vm_map_ram / vm_unmap_ram interface instead of being so
special, which would also allow building it as a module again for the
virtual mapping case.

Diffstat:
 arch/x86/xen/grant-table.c                |   27 +++++---
 drivers/gpu/drm/i915/Kconfig              |    1 
 drivers/gpu/drm/i915/gem/i915_gem_pages.c |  101 +++++++++++++-----------------
 drivers/gpu/drm/i915/gt/shmem_utils.c     |   90 +++++++++++---------------
 drivers/xen/xenbus/xenbus_client.c        |   30 ++++----
 include/linux/vmalloc.h                   |    6 -
 mm/Kconfig                                |    3 
 mm/nommu.c                                |    7 --
 mm/vmalloc.c                              |   93 +++++++++++++--------------
 mm/zsmalloc.c                             |    2 
 10 files changed, 172 insertions(+), 188 deletions(-)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
