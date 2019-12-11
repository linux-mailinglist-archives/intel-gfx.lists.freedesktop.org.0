Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5C811AA27
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 12:46:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 248A96EB13;
	Wed, 11 Dec 2019 11:46:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0D906EB13
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 11:46:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19539758-1500050 for multiple; Wed, 11 Dec 2019 11:46:34 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191207170110.2200142-1-chris@chris-wilson.co.uk>
 <20191207170110.2200142-6-chris@chris-wilson.co.uk>
 <157606363734.10520.8397483575791116170@jlahtine-desk.ger.corp.intel.com>
In-Reply-To: <157606363734.10520.8397483575791116170@jlahtine-desk.ger.corp.intel.com>
Message-ID: <157606479479.17013.7261781500723284097@skylake-alporthouse-com>
Date: Wed, 11 Dec 2019 11:46:34 +0000
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915: Prepare gen7 cmdparser for
 async execution
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

Quoting Joonas Lahtinen (2019-12-11 11:27:17)
> Quoting Chris Wilson (2019-12-07 19:01:08)
> > The gen7 cmdparser is primarily a promotion-based system to allow access
> > to additional registers beyond the HW validation, and allows fallback to
> > normal execution of the user batch buffer if valid and requires
> > chaining. In the next patch, we will do the cmdparser validation in the
> > pipeline asynchronously and so at the point of request construction we
> > will not know if we want to execute the privileged and validated batch,
> > or the original user batch. The solution employed here is to execute
> > both batches, one with raised privileges and one as normal. This is
> > because the gen7 MI_BATCH_BUFFER_START command cannot change privilege
> > level within a batch and must strictly use the current privilege level
> > (or undefined behaviour kills the GPU). So in order to execute the
> > original batch, we need a second non-priviledged batch buffer chain from
> > the ring, i.e. we need to emit two batches for each user batch. Inside
> > the two batches we determine which one should actually execute, we
> > provide a conditional trampoline to call the original batch.
> 
> It's only a single batch executed twice from different offsets. I would
> rephrase the commit message to reflect that.
> 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> 
> <SNIP>
> 
> > #define NUM_EXTRA 2
> 
> Looks like BOs, we should have a more descriptive name.

It's not just bo, it's the execbuf state.
 
> #define NUM_KERNEL_BUFFERS?

I'll go one better, and drop it since it ended up not being used.

> > @@ -1985,59 +1970,80 @@ shadow_batch_pin(struct i915_execbuffer *eb, struct drm_i915_gem_object *obj)
> >  static int eb_parse(struct i915_execbuffer *eb)
> >  {
> >         struct intel_engine_pool_node *pool;
> > -       struct i915_vma *vma;
> > +       struct i915_vma *shadow, *trampoline;
> > +       unsigned int len;
> >         int err;
> >  
> >         if (!eb_use_cmdparser(eb))
> >                 return 0;
> >  
> > -       pool = intel_engine_get_pool(eb->engine, eb->batch_len);
> > +       len = eb->batch_len;
> > +       if (!CMDPARSER_USES_GGTT(eb->i915)) {
> > +               /*
> > +                * PPGTT backed shadow buffers must be mapped RO, to prevent
> > +                * post-scan tampering
> > +                */
> > +               if (!eb->context->vm->has_read_only) {
> > +                       DRM_DEBUG("Cannot prevent post-scan tampering without RO capable vm\n");
> > +                       return -EINVAL;
> > +               }
> > +       } else {
> > +               len += 8;
> 
> Magic number. #define TRAMPOLINE_SOMETHING ?
> 
> > @@ -2089,6 +2095,16 @@ static int eb_submit(struct i915_execbuffer *eb)
> >         if (err)
> >                 return err;
> >  
> > +       if (eb->trampoline) {
> > +               GEM_BUG_ON(eb->batch_start_offset);
> > +               err = eb->engine->emit_bb_start(eb->request,
> > +                                               eb->trampoline->node.start +
> > +                                               eb->batch_len,
> > +                                               8, 0);
> 
> Magic 8 detected.
> 
> I'd emphasis that we're jumping to the end, either by computing start +
> batch_len separately or bringing them to same line.

Fwiw, I kept the line split to match the original eb->engine->emit_bb_start() call.
You can't see that in the diff

I'll replace the magic 8 with the even more magic 0 :-p

The rest will take some time to polish up.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
