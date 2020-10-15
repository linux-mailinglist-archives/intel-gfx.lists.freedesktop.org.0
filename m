Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EED5F28F5BE
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 17:23:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 463BC6ED63;
	Thu, 15 Oct 2020 15:23:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 691F86ED63
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 15:23:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22725864-1500050 for multiple; Thu, 15 Oct 2020 16:22:59 +0100
MIME-Version: 1.0
In-Reply-To: <c9d5258a-7d8d-72ac-8b06-18c454fe0418@intel.com>
References: <20201015115820.665-1-chris@chris-wilson.co.uk>
 <20201015115954.871-1-chris@chris-wilson.co.uk>
 <c9d5258a-7d8d-72ac-8b06-18c454fe0418@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Thu, 15 Oct 2020 16:22:59 +0100
Message-ID: <160277537900.32312.1071109136621697613@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Support parsing of oversize
 batches
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2020-10-15 16:13:07)
> On 15/10/2020 12:59, Chris Wilson wrote:
> > Matthew Auld noted that on more recent systems (such as the parser for
> > gen9) we may have objects that are larger than expected by the GEM uAPI
> > (i.e. greater than u32). These objects would have incorrect implicit
> > batch lengths, causing the parser to reject them for being incomplete,
> > or worse.
> > 
> > Based on a patch by Matthew Auld.
> > 
> > Reported-by: Matthew Auld <matthew.auld@intel.com>
> > Fixes: 435e8fc059db ("drm/i915: Allow parsing of unsized batches")
> > Testcase: igt/gem_exec_params/larger-than-life-batch
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Matthew Auld <matthew.auld@intel.com>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 11 ++++++++---
> >   1 file changed, 8 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > index 4b09bcd70cf4..44b4558d5e86 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > @@ -287,8 +287,8 @@ struct i915_execbuffer {
> >       u64 invalid_flags; /** Set of execobj.flags that are invalid */
> >       u32 context_flags; /** Set of execobj.flags to insert from the ctx */
> >   
> > +     u64 batch_len; /** Length of batch within object */
> >       u32 batch_start_offset; /** Location within object of batch */
> > -     u32 batch_len; /** Length of batch within object */
> >       u32 batch_flags; /** Flags composed for emit_bb_start() */
> >       struct intel_gt_buffer_pool_node *batch_pool; /** pool node for batch buffer */
> >   
> > @@ -871,6 +871,10 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
> >   
> >       if (eb->batch_len == 0)
> >               eb->batch_len = eb->batch->vma->size - eb->batch_start_offset;
> > +     if (eb->batch_len == 0) {
> > +             drm_dbg(&i915->drm, "Invalid batch length\n");
> > +             return -EINVAL;
> > +     }
> 
> This one should be impossible, or at least we should have hit the 
> range_overflows check first?

It should be impossible, yes. I erred on the side of prudence; one little
check for the security conscious as the ramifications of it going wrong
are nasty.

Odd. I still feel in this instance, a check is better than a bug-on. I
must be unwell.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
