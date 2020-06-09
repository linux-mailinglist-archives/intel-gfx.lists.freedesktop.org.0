Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8A61F3872
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jun 2020 12:48:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 203DA89CE3;
	Tue,  9 Jun 2020 10:48:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D993C89CE3
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jun 2020 10:48:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21441226-1500050 for multiple; Tue, 09 Jun 2020 11:48:16 +0100
MIME-Version: 1.0
In-Reply-To: <ae303541-7df8-6966-95ea-ed46942acb06@linux.intel.com>
References: <20200607222108.14401-1-chris@chris-wilson.co.uk>
 <20200607222108.14401-10-chris@chris-wilson.co.uk>
 <ae303541-7df8-6966-95ea-ed46942acb06@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159169969604.24308.16289911444825302624@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 09 Jun 2020 11:48:16 +0100
Subject: Re: [Intel-gfx] [PATCH 10/28] drm/i915/gem: Separate reloc
 validation into an earlier step
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

Quoting Tvrtko Ursulin (2020-06-09 08:47:00)
> 
> On 07/06/2020 23:20, Chris Wilson wrote:
> > Over the next couple of patches, we will want to lock all the modified
> > vma for relocation processing under a single ww_mutex. We neither want
> > to have to include the vma that are skipped (due to no modifications
> > required) nor do we want those to be marked as written too. So separate
> > out the reloc validation into an early step, which we can use both to
> > reject the execbuf before committing to making our changes, and to
> > filter out the unmodified vma.
> > 
> > This does introduce a second pass through the reloc[], but only if we
> > need to emit relocations.
> > 
> > v2: reuse the outer loop, not cut'n'paste.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 145 +++++++++++-------
> >   1 file changed, 86 insertions(+), 59 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > index 23db79b806db..01ab1e15a142 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > @@ -911,9 +911,9 @@ static void eb_destroy(const struct i915_execbuffer *eb)
> >   
> >   static inline u64
> >   relocation_target(const struct drm_i915_gem_relocation_entry *reloc,
> > -               const struct i915_vma *target)
> > +               u64 target)
> >   {
> > -     return gen8_canonical_addr((int)reloc->delta + target->node.start);
> > +     return gen8_canonical_addr((int)reloc->delta + target);
> >   }
> >   
> >   static void reloc_cache_init(struct reloc_cache *cache,
> > @@ -1292,26 +1292,11 @@ static int __reloc_entry_gpu(struct i915_execbuffer *eb,
> >       return 0;
> >   }
> >   
> > -static u64
> > -relocate_entry(struct i915_execbuffer *eb,
> > -            struct i915_vma *vma,
> > -            const struct drm_i915_gem_relocation_entry *reloc,
> > -            const struct i915_vma *target)
> > -{
> > -     u64 target_addr = relocation_target(reloc, target);
> > -     int err;
> > -
> > -     err = __reloc_entry_gpu(eb, vma, reloc->offset, target_addr);
> > -     if (err)
> > -             return err;
> > -
> > -     return target->node.start | UPDATE;
> > -}
> > -
> > -static u64
> > -eb_relocate_entry(struct i915_execbuffer *eb,
> > -               struct eb_vma *ev,
> > -               const struct drm_i915_gem_relocation_entry *reloc)
> > +static int
> > +eb_reloc_prepare(struct i915_execbuffer *eb,
> > +              struct eb_vma *ev,
> > +              const struct drm_i915_gem_relocation_entry *reloc,
> > +              struct drm_i915_gem_relocation_entry __user *user)
> >   {
> >       struct drm_i915_private *i915 = eb->i915;
> >       struct eb_vma *target;
> > @@ -1389,6 +1374,32 @@ eb_relocate_entry(struct i915_execbuffer *eb,
> >               return -EINVAL;
> >       }
> >   
> > +     return 1;
> > +}
> > +
> > +static int
> > +eb_reloc_entry(struct i915_execbuffer *eb,
> > +            struct eb_vma *ev,
> > +            const struct drm_i915_gem_relocation_entry *reloc,
> > +            struct drm_i915_gem_relocation_entry __user *user)
> > +{
> > +     struct eb_vma *target;
> > +     u64 offset;
> > +     int err;
> > +
> > +     /* we've already hold a reference to all valid objects */
> > +     target = eb_get_vma(eb, reloc->target_handle);
> > +     if (unlikely(!target))
> > +             return -ENOENT;
> > +
> > +     /*
> > +      * If the relocation already has the right value in it, no
> > +      * more work needs to be done.
> > +      */
> > +     offset = gen8_canonical_addr(target->vma->node.start);
> > +     if (offset == reloc->presumed_offset) > +               return 0;
> > +
> 
> Haven't these reloc entries been removed from the list in the prepare phase?

No, we don't adjust the user reloc arrays, we only skip entire objects
that do not require relocs.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
