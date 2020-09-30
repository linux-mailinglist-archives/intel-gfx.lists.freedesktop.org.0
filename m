Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8359527F0CF
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 19:52:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DD516E823;
	Wed, 30 Sep 2020 17:52:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 742176E580;
 Wed, 30 Sep 2020 17:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=07YiCh12zxNb+LfRUHOuc0cOw1/oVX+fVA/5cFMfxTE=; b=S0V1ilHwkGgbbTo2M350wdoI3C
 7lLk66poahAwcksIO1u1LSSIxtPdZ4ajUF7mmZOuiAy4VKWO2BOkh4jmJEgoz+vYl+pxKKmn1L62/
 cR5OxZR0ZcX8CtFM/89ZjqDZ90kkZgAZeV5ujQjb8OMvbUfBgu6ZTJ+NIRxRgtKUnqSF7fUiBFUNQ
 fR4r0qk8dSD+qYuIsfTRM+UXKnS/TE4Da87IJGDT47CsLpsTEzDQLDabopXoZRINzBGFNcHo0bZYh
 hOkxAjzXXVDPEnTyi8auHmOSpSvIRbGjcSC4yKDNp4s2Ir9GCQHS7afLyB8VzQkH75/ca3S3ZtESd
 mLLKt94A==;
Received: from [2001:4bb8:180:7b62:c70:4a89:bc61:4] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNgGM-0001Ax-Rh; Wed, 30 Sep 2020 17:51:35 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Wed, 30 Sep 2020 19:51:23 +0200
Message-Id: <20200930175133.1252382-1-hch@lst.de>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] remove alloc_vm_area v3
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
 Stefano Stabellini <sstabellini@kernel.org>,
 Matthew Wilcox <willy@infradead.org>, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org, Peter Zijlstra <peterz@infradead.org>,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org, x86@kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Minchan Kim <minchan@kernel.org>,
 Matthew Auld <matthew.auld@intel.com>, xen-devel@lists.xenproject.org,
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

A git tree is also available here:

    git://git.infradead.org/users/hch/misc.git alloc_vm_area

Gitweb:

    http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/alloc_vm_area

Changes since v2:
 - add another missing i initialization
 - rebased to mainline instead of drm-tip again

Changes since v1:
 - fix a bug in the zsmalloc changes
 - fix a bug and rebase to include the recent changes in i915
 - add a new vmap flag that allows to free the page array and pages
   using vfree
 - add a vfree documentation updated from Matthew

Diffstat:
 arch/x86/xen/grant-table.c                |   27 ++++--
 drivers/gpu/drm/i915/Kconfig              |    1 
 drivers/gpu/drm/i915/gem/i915_gem_pages.c |  131 +++++++++++++-----------------
 drivers/gpu/drm/i915/gt/shmem_utils.c     |   76 ++++-------------
 drivers/xen/xenbus/xenbus_client.c        |   30 +++---
 include/linux/vmalloc.h                   |    7 -
 mm/Kconfig                                |    3 
 mm/memory.c                               |   16 ++-
 mm/nommu.c                                |    7 -
 mm/vmalloc.c                              |  123 ++++++++++++++--------------
 mm/zsmalloc.c                             |   10 +-
 11 files changed, 200 insertions(+), 231 deletions(-)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
