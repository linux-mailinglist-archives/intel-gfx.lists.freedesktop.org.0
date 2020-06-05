Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A39FD1EFCA0
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 17:38:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C36F6E93B;
	Fri,  5 Jun 2020 15:38:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE8F06E93B
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 15:38:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21408764-1500050 for multiple; Fri, 05 Jun 2020 16:38:28 +0100
MIME-Version: 1.0
In-Reply-To: <8c33c119-0d7f-6897-c697-c0e95a7e0bc5@linux.intel.com>
References: <20200605095858.28455-1-chris@chris-wilson.co.uk>
 <20200605095858.28455-2-chris@chris-wilson.co.uk>
 <8c33c119-0d7f-6897-c697-c0e95a7e0bc5@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159137150578.22562.7904269772462642978@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 05 Jun 2020 16:38:25 +0100
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/gem: Separate reloc validation
 into an earlier step
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

Quoting Tvrtko Ursulin (2020-06-05 16:27:26)
> 
> On 05/06/2020 10:58, Chris Wilson wrote:
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
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 178 +++++++++++++-----
> >   1 file changed, 133 insertions(+), 45 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > index cfe6d2cdbef1..7d4464fddca8 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > @@ -1331,6 +1331,117 @@ static u64
> >   eb_relocate_entry(struct i915_execbuffer *eb,
> >                 struct eb_vma *ev,
> >                 const struct drm_i915_gem_relocation_entry *reloc)
> > +{
> > +     struct eb_vma *target;
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
> > +     if (gen8_canonical_addr(target->vma->node.start) == reloc->presumed_offset)
> > +             return 0;
> 
> These have been filtered out, no?

Only if the entire execobj->reloc[] was skipped. If some skipped and
some did not, we may end up here.

> 
> > +
> > +     /*
> > +      * If we write into the object, we need to force the synchronisation
> > +      * barrier, either with an asynchronous clflush or if we executed the
> > +      * patching using the GPU (though that should be serialised by the
> > +      * timeline). To be completely sure, and since we are required to
> > +      * do relocations we are already stalling, disable the user's opt
> > +      * out of our synchronisation.
> > +      */
> > +     ev->flags &= ~EXEC_OBJECT_ASYNC;
> > +
> > +     /* and update the user's relocation entry */
> > +     return relocate_entry(eb, ev->vma, reloc, target->vma);
> > +}
> > +
> > +static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
> > +{
> > +#define N_RELOC(x) ((x) / sizeof(struct drm_i915_gem_relocation_entry))
> > +     struct drm_i915_gem_relocation_entry stack[N_RELOC(512)];
> > +     const struct drm_i915_gem_exec_object2 *entry = ev->exec;
> > +     struct drm_i915_gem_relocation_entry __user *urelocs =
> > +             u64_to_user_ptr(entry->relocs_ptr);
> > +     unsigned long remain = entry->relocation_count;
> > +
> > +     if (unlikely(remain > N_RELOC(ULONG_MAX)))
> > +             return -EINVAL;
> 
> This has been checked already in eb_reloca_vma_validate.

Ok. It didn't even register.

> 
> > +
> > +     /*
> > +      * We must check that the entire relocation array is safe
> > +      * to read. However, if the array is not writable the user loses
> > +      * the updated relocation values.
> > +      */
> > +     if (unlikely(!access_ok(urelocs, remain * sizeof(*urelocs))))
> > +             return -EFAULT;
> > +
> > +     do {
> > +             struct drm_i915_gem_relocation_entry *r = stack;
> > +             unsigned int count =
> > +                     min_t(unsigned long, remain, ARRAY_SIZE(stack));
> > +             unsigned int copied;
> > +
> > +             /*
> > +              * This is the fast path and we cannot handle a pagefault
> > +              * whilst holding the struct mutex lest the user pass in the
> > +              * relocations contained within a mmaped bo. For in such a case
> > +              * we, the page fault handler would call i915_gem_fault() and
> > +              * we would try to acquire the struct mutex again. Obviously
> > +              * this is bad and so lockdep complains vehemently.
> > +              */
> > +             copied = __copy_from_user(r, urelocs, count * sizeof(r[0]));
> > +             if (unlikely(copied))
> > +                     return -EFAULT;
> > +
> > +             remain -= count;
> 
> The above two comments end up duplicated which is kind of ugly. Not sure 
> how a common "runner/looper" would look with just the per-reloc body 
> being a passed in function.

I looked and thought it would just be the outer pair of loops being saved.
Still probably worth it, but it felt like more work than cut'n'paste!

> 
> > +             do {
> > +                     u64 offset = eb_relocate_entry(eb, ev, r);
> > +
> > +                     if (likely(offset == 0)) {
> > +                     } else if ((s64)offset < 0) {
> > +                             return (int)offset;
> > +                     } else {
> > +                             /*
> > +                              * Note that reporting an error now
> > +                              * leaves everything in an inconsistent
> > +                              * state as we have *already* changed
> > +                              * the relocation value inside the
> > +                              * object. As we have not changed the
> > +                              * reloc.presumed_offset or will not
> > +                              * change the execobject.offset, on the
> > +                              * call we may not rewrite the value
> > +                              * inside the object, leaving it
> > +                              * dangling and causing a GPU hang. Unless
> > +                              * userspace dynamically rebuilds the
> > +                              * relocations on each execbuf rather than
> > +                              * presume a static tree.
> > +                              *
> > +                              * We did previously check if the relocations
> > +                              * were writable (access_ok), an error now
> > +                              * would be a strange race with mprotect,
> > +                              * having already demonstrated that we
> > +                              * can read from this userspace address.
> > +                              */
> > +                             offset = gen8_canonical_addr(offset & ~UPDATE);
> > +                             __put_user(offset,
> > +                                        &urelocs[r - stack].presumed_offset);
> > +                     }
> > +             } while (r++, --count);
> > +             urelocs += ARRAY_SIZE(stack);
> > +     } while (remain);
> > +
> > +     return 0;
> > +}
> > +
> > +static int
> > +eb_reloc_valid(struct i915_execbuffer *eb,
> > +            struct eb_vma *ev,
> > +            const struct drm_i915_gem_relocation_entry *reloc)
> 
> It does a bit more than check for validity so if you agree maybe 
> eb_reloc_prepare(_entry)?

You mean the deeply buried gen6 w/a

eb_reloc_prepare doesn't sound too bad.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
