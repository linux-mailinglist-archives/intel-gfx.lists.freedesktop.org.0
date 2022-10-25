Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECA560D10C
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 17:55:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7623A10E1D6;
	Tue, 25 Oct 2022 15:55:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D375910E3E4
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 15:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=8mNbdR78o+U+PojIkQ1QQ7RZaEeJAuKM9CjCh6ni4bc=; b=izwdVH9vnkwufZJnE6X7nCz25H
 2LQk/EB4aH/DoN1JNM+zOCODqWdyduVYW2CMK7tPgQrppP536L5TDICaDr0x3oOuo+O1KxEnLlkdl
 DQH+bMfoaH3CjeG0gX/Wgk7zh4+v2ctDc2LWHuni3GPOsS0CbfNQfWOdHITHlxZ5ax3cKmvH2T6B+
 QOV+p0xA1fBj8g4bV8HI4vGJD1tIWsMiYKOwkCfhWsFJe/2O712E8YF7/NvGam46lDG263aMUWPTN
 dhcATB6X46rA/s/uL2P3SRkg/USvsUF4+sOOIeKfZplqzAdjOCBJ9Th/PvJU3CGI0na7aLpc/QQsI
 vXr6iSGQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1onMGV-00GNSb-PX; Tue, 25 Oct 2022 15:54:55 +0000
Date: Tue, 25 Oct 2022 16:54:55 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <Y1gGz9TlvgqqK4dx@casper.infradead.org>
References: <20221024172139.80435-1-matthew.auld@intel.com>
 <992f7687-f56a-e174-9369-b7216d7d6fca@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <992f7687-f56a-e174-9369-b7216d7d6fca@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/userptr: restore probe_range
 behaviour
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
Cc: intel-gfx@lists.freedesktop.org, kernel test robot <oliver.sang@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 Yu Zhao <yuzhao@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 25, 2022 at 04:40:23PM +0100, Tvrtko Ursulin wrote:
> 
> On 24/10/2022 18:21, Matthew Auld wrote:
> > The conversion looks harmless, however the addr value is updated inside
> > the loop with the previous vm_end, which then incorrectly leads to
> > for_each_vma_range() iterating over stuff outside the range we care
> > about. Fix this by storing the end value separately.
> > 
> > Testcase: igt@gem_userptr_blits@probe
> > Fixes: f683b9d61319 ("i915: use the VMA iterator")
> > Reported-by: kernel test robot <oliver.sang@intel.com>
> > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > Cc: Matthew Wilcox (Oracle) <willy@infradead.org>
> > Cc: Vlastimil Babka <vbabka@suse.cz>
> > Cc: Yu Zhao <yuzhao@google.com>
> > ---
> >   drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 3 ++-
> >   1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> > index b7e24476a0fd..dadb3e3fa9c8 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> > @@ -427,9 +427,10 @@ probe_range(struct mm_struct *mm, unsigned long addr, unsigned long len)
> >   {
> >   	VMA_ITERATOR(vmi, mm, addr);
> >   	struct vm_area_struct *vma;
> > +	unsigned long end = addr + len;
> >   	mmap_read_lock(mm);
> > -	for_each_vma_range(vmi, vma, addr + len) {
> > +	for_each_vma_range(vmi, vma, end) {
> >   		/* Check for holes, note that we also update the addr below */
> >   		if (vma->vm_start > addr)
> >   			break;
> 
> I am unsure of the for_each_vma_range() behaviour regarding holes. If it
> just skips overs them and continues to next VMA in the range then patch
> looks good to me. Could someone confirm?

It's "For each VMA in this range".  It doesn't iterate over non-VMAs
within that range ;-)  Nor does a gap between VMAs stop the iteration.
