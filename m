Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BCC24D228
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Aug 2020 12:22:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EBAA6EAC5;
	Fri, 21 Aug 2020 10:22:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B16F6EAC5
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Aug 2020 10:22:07 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 07861B5E2;
 Fri, 21 Aug 2020 10:22:34 +0000 (UTC)
Date: Fri, 21 Aug 2020 12:22:04 +0200
From: Joerg Roedel <jroedel@suse.de>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200821102204.GH3354@suse.de>
References: <20200821085011.28878-1-chris@chris-wilson.co.uk>
 <20200821095129.GF3354@suse.de>
 <159800366215.29194.8455636122843151159@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159800366215.29194.8455636122843151159@build.alporthouse.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/4] mm: Export flush_vm_area() to sync the
 PTEs upon construction
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, linux-mm@kvack.org,
 David Vrabel <david.vrabel@citrix.com>, Pavel Machek <pavel@ucw.cz>,
 Dave Airlie <airlied@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Aug 21, 2020 at 10:54:22AM +0100, Chris Wilson wrote:
> Ok. I thought it had to be after assigning the *ptep. If we apply the
> sync first, do not have to worry about PGTBL_PTE_MODIFIED from the
> *ptep?

Hmm, if I understand the code correctly, you are re-implementing some
generic ioremap/vmalloc mapping logic in the i915 driver. I don't know
the reason, but if it is valid you need to manually call
arch_sync_kernel_mappings() from your driver like this to be correct:

	if (ARCH_PAGE_TABLE_SYNC_MASK & PGTBL_PTE_MODIFIED)
		arch_sync_kernel_mappings();

In practice this is a no-op, because nobody sets PGTBL_PTE_MODIFIED in
ARCH_PAGE_TABLE_SYNC_MASK, so the above code would be optimized away.

But what you really care about is the tracking in apply_to_page_range(),
as that allocates the !pte levels of your page-table, which needs
synchronization on x86-32.

Btw, what are the reasons you can't use generic vmalloc/ioremap
interfaces to map the range?

Regards,

	Joerg
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
