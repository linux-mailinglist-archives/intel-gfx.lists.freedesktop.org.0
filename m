Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7CF2DB628
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 22:56:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 713EB89933;
	Tue, 15 Dec 2020 21:56:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C78F989933
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Dec 2020 21:56:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23337903-1500050 for multiple; Tue, 15 Dec 2020 21:56:38 +0000
MIME-Version: 1.0
In-Reply-To: <aefcbf58-b021-fc1f-e1cf-a8b90634b3f3@intel.com>
References: <20201215021509.32176-1-chris@chris-wilson.co.uk>
 <20201215021509.32176-2-chris@chris-wilson.co.uk>
 <aefcbf58-b021-fc1f-e1cf-a8b90634b3f3@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 15 Dec 2020 21:56:39 +0000
Message-ID: <160806939956.14591.11474376697500908072@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Provide a utility to
 create a scratch buffer
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

Quoting Daniele Ceraolo Spurio (2020-12-15 21:51:13)
> 
> 
> On 12/14/2020 6:15 PM, Chris Wilson wrote:
> > Primarily used by selftests, but also by runtime debugging of engine
> > w/a, is a routine to create a temporarily bound buffer for readback.
> > Almagamate the duplicated routines into one.
> >
> > Suggested-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   .../drm/i915/gem/selftests/igt_gem_utils.h    |  1 +
> >   drivers/gpu/drm/i915/gt/intel_gtt.c           | 29 +++++++++++++++
> >   drivers/gpu/drm/i915/gt/intel_gtt.h           |  3 ++
> >   drivers/gpu/drm/i915/gt/intel_workarounds.c   | 36 ++-----------------
> >   drivers/gpu/drm/i915/gt/selftest_execlists.c  | 29 +--------------
> >   drivers/gpu/drm/i915/gt/selftest_lrc.c        | 24 +------------
> >   drivers/gpu/drm/i915/gt/selftest_mocs.c       | 29 +--------------
> >   .../gpu/drm/i915/gt/selftest_workarounds.c    |  6 ++--
> >   8 files changed, 41 insertions(+), 116 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h
> > index 4221cf84d175..13b241581dbb 100644
> > --- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h
> > +++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h
> > @@ -9,6 +9,7 @@
> >   
> >   #include <linux/types.h>
> >   
> > +struct i915_address_space;
> 
> This doesn't seem to be required in this header.

Can you guess where I first put a igt_create_scratch?

> 
> >   struct i915_request;
> >   struct i915_gem_context;
> >   struct i915_vma;
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> > index 7bfe9072be9a..fbe6c0c5a060 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> > @@ -422,6 +422,35 @@ void setup_private_pat(struct intel_uncore *uncore)
> >               bdw_setup_private_ppat(uncore);
> >   }
> >   
> > +struct i915_vma *
> > +__vm_create_scratch(struct i915_address_space *vm, unsigned long size)
> > +{
> > +     struct drm_i915_gem_object *obj;
> > +     struct i915_vma *vma;
> > +     int err;
> > +
> > +     obj = i915_gem_object_create_internal(vm->i915, PAGE_ALIGN(size));
> > +     if (IS_ERR(obj))
> > +             return ERR_CAST(obj);
> > +
> > +     i915_gem_object_set_cache_coherency(obj, I915_CACHING_CACHED);
> > +
> > +     vma = i915_vma_instance(obj, vm, NULL);
> > +     if (IS_ERR(vma)) {
> > +             i915_gem_object_put(obj);
> > +             return vma;
> > +     }
> > +
> > +     err = i915_vma_pin(vma, 0, 0,
> > +                        i915_vma_is_ggtt(vma) ? PIN_GLOBAL : PIN_USER);
> > +     if (err) {
> > +             i915_gem_object_put(obj);
> > +             return ERR_PTR(err);
> > +     }
> > +
> > +     return vma;
> > +}
> > +
> >   #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> >   #include "selftests/mock_gtt.c"
> >   #endif
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> > index 8a33940a71f3..1cff86073af8 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> > @@ -573,6 +573,9 @@ int i915_vm_pin_pt_stash(struct i915_address_space *vm,
> >   void i915_vm_free_pt_stash(struct i915_address_space *vm,
> >                          struct i915_vm_pt_stash *stash);
> >   
> > +struct i915_vma *
> > +__vm_create_scratch(struct i915_address_space *vm, unsigned long size);
> > +
> >   static inline struct sgt_dma {
> >       struct scatterlist *sg;
> >       dma_addr_t dma, max;
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 52f12a6d66b9..be5b090ae6ae 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -2085,39 +2085,6 @@ void intel_engine_apply_workarounds(struct intel_engine_cs *engine)
> >       wa_list_apply(engine->uncore, &engine->wa_list);
> >   }
> >   
> > -static struct i915_vma *
> > -create_scratch(struct i915_address_space *vm, int count)
> > -{
> > -     struct drm_i915_gem_object *obj;
> > -     struct i915_vma *vma;
> > -     unsigned int size;
> > -     int err;
> > -
> > -     size = round_up(count * sizeof(u32), PAGE_SIZE);
> > -     obj = i915_gem_object_create_internal(vm->i915, size);
> > -     if (IS_ERR(obj))
> > -             return ERR_CAST(obj);
> > -
> > -     i915_gem_object_set_cache_coherency(obj, I915_CACHE_LLC);
> > -
> > -     vma = i915_vma_instance(obj, vm, NULL);
> > -     if (IS_ERR(vma)) {
> > -             err = PTR_ERR(vma);
> > -             goto err_obj;
> > -     }
> > -
> > -     err = i915_vma_pin(vma, 0, 0,
> > -                        i915_vma_is_ggtt(vma) ? PIN_GLOBAL : PIN_USER);
> > -     if (err)
> > -             goto err_obj;
> > -
> > -     return vma;
> > -
> > -err_obj:
> > -     i915_gem_object_put(obj);
> > -     return ERR_PTR(err);
> > -}
> > -
> >   struct mcr_range {
> >       u32 start;
> >       u32 end;
> > @@ -2220,7 +2187,8 @@ static int engine_wa_list_verify(struct intel_context *ce,
> >       if (!wal->count)
> >               return 0;
> >   
> > -     vma = create_scratch(&ce->engine->gt->ggtt->vm, wal->count);
> > +     vma = __vm_create_scratch(&ce->engine->gt->ggtt->vm,
> > +                               wal->count * sizeof(u32));
> >       if (IS_ERR(vma))
> >               return PTR_ERR(vma);
> >   
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> > index 34c2bb8313eb..c6c0b9918c3e 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> > @@ -25,33 +25,6 @@
> >   #define NUM_GPR 16
> >   #define NUM_GPR_DW (NUM_GPR * 2) /* each GPR is 2 dwords */
> >   
> > -static struct i915_vma *create_scratch(struct intel_gt *gt)
> > -{
> > -     struct drm_i915_gem_object *obj;
> > -     struct i915_vma *vma;
> > -     int err;
> > -
> > -     obj = i915_gem_object_create_internal(gt->i915, PAGE_SIZE);
> > -     if (IS_ERR(obj))
> > -             return ERR_CAST(obj);
> > -
> > -     i915_gem_object_set_cache_coherency(obj, I915_CACHING_CACHED);
> > -
> > -     vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
> > -     if (IS_ERR(vma)) {
> > -             i915_gem_object_put(obj);
> > -             return vma;
> > -     }
> > -
> > -     err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL);
> > -     if (err) {
> > -             i915_gem_object_put(obj);
> > -             return ERR_PTR(err);
> > -     }
> > -
> > -     return vma;
> > -}
> > -
> >   static bool is_active(struct i915_request *rq)
> >   {
> >       if (i915_request_is_active(rq))
> > @@ -4167,7 +4140,7 @@ static int preserved_virtual_engine(struct intel_gt *gt,
> >       int err = 0;
> >       u32 *cs;
> >   
> > -     scratch = create_scratch(siblings[0]->gt);
> > +     scratch = __vm_create_scratch(&siblings[0]->gt->ggtt->vm, PAGE_SIZE);
> >       if (IS_ERR(scratch))
> >               return PTR_ERR(scratch);
> >   
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > index 5774626d3d34..b26982ab7cca 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > @@ -28,29 +28,7 @@
> >   
> >   static struct i915_vma *create_scratch(struct intel_gt *gt)
> >   {
> > -     struct drm_i915_gem_object *obj;
> > -     struct i915_vma *vma;
> > -     int err;
> > -
> > -     obj = i915_gem_object_create_internal(gt->i915, PAGE_SIZE);
> > -     if (IS_ERR(obj))
> > -             return ERR_CAST(obj);
> > -
> > -     i915_gem_object_set_cache_coherency(obj, I915_CACHING_CACHED);
> > -
> > -     vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
> > -     if (IS_ERR(vma)) {
> > -             i915_gem_object_put(obj);
> > -             return vma;
> > -     }
> > -
> > -     err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL);
> > -     if (err) {
> > -             i915_gem_object_put(obj);
> > -             return ERR_PTR(err);
> > -     }
> > -
> > -     return vma;
> > +     return __vm_create_scratch(&gt->ggtt->vm, PAGE_SIZE);
> >   }
> >   
> >   static bool is_active(struct i915_request *rq)
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> > index 21dcd91cbd62..38d82b94d1a1 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> > @@ -56,33 +56,6 @@ static int request_add_spin(struct i915_request *rq, struct igt_spinner *spin)
> >       return err;
> >   }
> >   
> > -static struct i915_vma *create_scratch(struct intel_gt *gt)
> > -{
> > -     struct drm_i915_gem_object *obj;
> > -     struct i915_vma *vma;
> > -     int err;
> > -
> > -     obj = i915_gem_object_create_internal(gt->i915, PAGE_SIZE);
> > -     if (IS_ERR(obj))
> > -             return ERR_CAST(obj);
> > -
> > -     i915_gem_object_set_cache_coherency(obj, I915_CACHING_CACHED);
> > -
> > -     vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
> > -     if (IS_ERR(vma)) {
> > -             i915_gem_object_put(obj);
> > -             return vma;
> > -     }
> > -
> > -     err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL);
> > -     if (err) {
> > -             i915_gem_object_put(obj);
> > -             return ERR_PTR(err);
> > -     }
> > -
> > -     return vma;
> > -}
> > -
> >   static int live_mocs_init(struct live_mocs *arg, struct intel_gt *gt)
> >   {
> >       struct drm_i915_mocs_table table;
> > @@ -101,7 +74,7 @@ static int live_mocs_init(struct live_mocs *arg, struct intel_gt *gt)
> >       if (flags & (HAS_GLOBAL_MOCS | HAS_ENGINE_MOCS))
> >               arg->mocs = table;
> >   
> > -     arg->scratch = create_scratch(gt);
> > +     arg->scratch = __vm_create_scratch(&gt->ggtt->vm, PAGE_SIZE);
> >       if (IS_ERR(arg->scratch))
> >               return PTR_ERR(arg->scratch);
> >   
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> > index 703b77207a47..04f8f5df2270 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> > @@ -489,7 +489,7 @@ static int check_dirty_whitelist(struct intel_context *ce)
> >       int err = 0, i, v;
> >       u32 *cs, *results;
> >   
> > -     scratch = create_scratch(ce->vm, 2 * ARRAY_SIZE(values) + 1);
> > +     scratch = __vm_create_scratch(ce->vm, 2 * ARRAY_SIZE(values) + 1);
> 
> The size here needs to be multiplied by sizeof(u32).

Well caught, thanks.

Not keen on __vm_create_scratch(), but I also don't want to be too
friendly.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
