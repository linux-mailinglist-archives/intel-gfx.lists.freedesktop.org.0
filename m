Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 253B518CF8E
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 14:56:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C85DD6EB46;
	Fri, 20 Mar 2020 13:56:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE0F26EB46
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 13:56:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20631541-1500050 for multiple; Fri, 20 Mar 2020 13:56:36 +0000
MIME-Version: 1.0
In-Reply-To: <6c8963e8-02a3-5177-4ece-560349a423ef@linux.intel.com>
References: <20200320130159.3922-1-chris@chris-wilson.co.uk>
 <20200320130159.3922-4-chris@chris-wilson.co.uk>
 <6c8963e8-02a3-5177-4ece-560349a423ef@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158471259606.7928.6696866117861913836@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 20 Mar 2020 13:56:36 +0000
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/gem: Avoid gem_context->mutex
 for simple vma lookup
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

Quoting Tvrtko Ursulin (2020-03-20 13:47:39)
> 
> On 20/03/2020 13:01, Chris Wilson wrote:
> > As we store the handle lookup inside a radix tree, we do not need the
> > gem_context->mutex except until we need to insert our lookup into the
> > common radix tree. This takes a small bit of rearranging to ensure that
> > the lut we insert into the tree is ready prior to actually inserting it
> > (as soon as it is exposed via the radixtree, it is visible to any other
> > submission).
> > 
> > v2: For brownie points, remove the goto spaghetti.
> > v3: Tighten up the closed-handle checks.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 136 +++++++++++-------
> >   1 file changed, 87 insertions(+), 49 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > index c1179c00bc61..876fc2e124b9 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > @@ -481,7 +481,7 @@ eb_add_vma(struct i915_execbuffer *eb,
> >   
> >       GEM_BUG_ON(i915_vma_is_closed(vma));
> >   
> > -     ev->vma = i915_vma_get(vma);
> > +     ev->vma = vma;
> >       ev->exec = entry;
> >       ev->flags = entry->flags;
> >   
> > @@ -728,77 +728,117 @@ static int eb_select_context(struct i915_execbuffer *eb)
> >       return 0;
> >   }
> >   
> > -static int eb_lookup_vmas(struct i915_execbuffer *eb)
> > +static int __eb_add_lut(struct i915_execbuffer *eb,
> > +                     u32 handle, struct i915_vma *vma)
> >   {
> > -     struct radix_tree_root *handles_vma = &eb->gem_context->handles_vma;
> > -     struct drm_i915_gem_object *obj;
> > -     unsigned int i, batch;
> > +     struct i915_gem_context *ctx = eb->gem_context;
> > +     struct i915_lut_handle *lut;
> >       int err;
> >   
> > -     if (unlikely(i915_gem_context_is_closed(eb->gem_context)))
> > -             return -ENOENT;
> > +     lut = i915_lut_handle_alloc();
> > +     if (unlikely(!lut))
> > +             return -ENOMEM;
> >   
> > -     INIT_LIST_HEAD(&eb->relocs);
> > -     INIT_LIST_HEAD(&eb->unbound);
> > +     i915_vma_get(vma);
> > +     if (!atomic_fetch_inc(&vma->open_count))
> > +             i915_vma_reopen(vma);
> > +     lut->handle = handle;
> > +     lut->ctx = ctx;
> > +
> > +     /* Check that the context hasn't been closed in the meantime */
> > +     err = -EINTR;
> > +     if (!mutex_lock_interruptible(&ctx->mutex)) {
> > +             err = -ENOENT;
> > +             if (likely(!i915_gem_context_is_closed(ctx)))
> > +                     err = radix_tree_insert(&ctx->handles_vma, handle, vma);
> > +             if (err == 0) { /* And nor has this handle */
> > +                     struct drm_i915_gem_object *obj = vma->obj;
> > +
> > +                     i915_gem_object_lock(obj);
> 
> Does this fit into Maarten's rework - nesting of object_lock under 
> ctx->mutex I mean?

This is the current lock nesting, and should generally remain so. One
context will peek at multiple objects and we should be holding an object
lock to peek at a context.

As for the rework, it holds a bunch of exclusive locks far beyond their
scope causing an even worse BKL, and that will have to be reworked.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
