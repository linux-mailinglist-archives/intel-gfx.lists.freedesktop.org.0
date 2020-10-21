Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B47A29516E
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 19:20:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AE356EDF1;
	Wed, 21 Oct 2020 17:20:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D70046EDF1
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 17:20:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22768183-1500050 for multiple; Wed, 21 Oct 2020 18:20:48 +0100
MIME-Version: 1.0
In-Reply-To: <20201021103606.241395-1-matthew.auld@intel.com>
References: <20201021103606.241395-1-matthew.auld@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 18:20:47 +0100
Message-ID: <160330084741.24927.7463504036343720114@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/region: fix max size calculation
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

Quoting Matthew Auld (2020-10-21 11:36:06)
> We are incorrectly limiting the max allocation size as per the mm
> max_order, which is effectively the largest power-of-two that we can fit
> in the region size. However, it's normal to setup the region or
> allocator with a non-power-of-two size(for example 3G), which we should
> already handle correctly, except it seems for the early too-big-check.
> 
> v2: make sure we also exercise the I915_BO_ALLOC_CONTIGUOUS path, which
> is quite different, since for that we are actually limited by the
> largest power-of-two that we can fit within the region size. (Chris)
> 
> Fixes: b908be543e44 ("drm/i915: support creating LMEM objects")
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: CQ Tang <cq.tang@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_memory_region.c    |  2 +-
>  .../drm/i915/selftests/intel_memory_region.c  | 77 +++++++++++++++++++
>  drivers/gpu/drm/i915/selftests/mock_region.c  |  2 +-
>  3 files changed, 79 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
> index 6b5e9d88646d..180e1078ef7c 100644
> --- a/drivers/gpu/drm/i915/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/intel_memory_region.c
> @@ -87,7 +87,7 @@ __intel_memory_region_get_pages_buddy(struct intel_memory_region *mem,
>                 min_order = ilog2(size) - ilog2(mem->mm.chunk_size);
>         }
>  
> -       if (size > BIT(mem->mm.max_order) * mem->mm.chunk_size)
> +       if (size > mem->mm.size)
>                 return -E2BIG;
>  
>         n_pages = size >> ilog2(mem->mm.chunk_size);
> diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> index 334b0648e253..0aeba8e3af28 100644
> --- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> @@ -261,6 +261,82 @@ static int igt_mock_contiguous(void *arg)
>         return err;
>  }
>  
> +static int igt_mock_splintered_region(void *arg)
> +{
> +       struct intel_memory_region *mem = arg;
> +       struct drm_i915_private *i915 = mem->i915;
> +       struct drm_i915_gem_object *obj;
> +       unsigned int expected_order;
> +       LIST_HEAD(objects);
> +       u64 size;
> +       int err = 0;
> +
> +       /*
> +        * Sanity check we can still allocate everything even if the
> +        * mm.max_order != mm.size. i.e our starting address space size is not a
> +        * power-of-two.
> +        */
> +
> +       size = (SZ_4G - 1) & PAGE_MASK;
> +       mem = mock_region_create(i915, 0, size, PAGE_SIZE, 0);
> +       if (IS_ERR(mem))
> +               return PTR_ERR(mem);
> +
> +       if (mem->mm.size != size) {
> +               pr_err("%s size mismatch(%llu != %llu)\n",
> +                      __func__, mem->mm.size, size);
> +               err = -EINVAL;
> +               goto out_put;
> +       }
> +
> +       expected_order = get_order(rounddown_pow_of_two(size));
> +       if (mem->mm.max_order != expected_order) {
> +               pr_err("%s order mismatch(%u != %u)\n",
> +                      __func__, mem->mm.max_order, expected_order);
> +               err = -EINVAL;
> +               goto out_put;
> +       }
> +
> +       obj = igt_object_create(mem, &objects, size, 0);
> +       if (IS_ERR(obj)) {
> +               err = PTR_ERR(obj);
> +               goto out_close;
> +       }
> +
> +       close_objects(mem, &objects);
> +
> +       /*
> +        * While we should be able allocate everything without any flag
> +        * restrictions, if we consider I915_BO_ALLOC_CONTIGUOUS then we are
> +        * actually limited to the largest power-of-two for the region size i.e
> +        * max_order, due to the inner workings of the buddy allocator. So make
> +        * sure that does indeed hold true.
> +        */
> +
> +       obj = igt_object_create(mem, &objects, size, I915_BO_ALLOC_CONTIGUOUS);
> +       if (!IS_ERR(obj)) {
> +               pr_err("%s too large contiguous allocation was not rejected\n",
> +                      __func__);
> +               err = -EINVAL;
> +               goto out_close;
> +       }
> +
> +       obj = igt_object_create(mem, &objects, rounddown_pow_of_two(size),
> +                               I915_BO_ALLOC_CONTIGUOUS);
> +       if (IS_ERR(obj)) {
> +               pr_err("%s largest possible contiguous allocation failed\n",
> +                      __func__);
> +               err = PTR_ERR(obj);
> +               goto out_close;
> +       }
> +
> +out_close:
> +       close_objects(mem, &objects);
> +out_put:
> +       intel_memory_region_put(mem);
> +       return err;
> +}
> +
>  static int igt_gpu_write_dw(struct intel_context *ce,
>                             struct i915_vma *vma,
>                             u32 dword,
> @@ -771,6 +847,7 @@ int intel_memory_region_mock_selftests(void)
>         static const struct i915_subtest tests[] = {
>                 SUBTEST(igt_mock_fill),
>                 SUBTEST(igt_mock_contiguous),
> +               SUBTEST(igt_mock_splintered_region),
>         };
>         struct intel_memory_region *mem;
>         struct drm_i915_private *i915;
> diff --git a/drivers/gpu/drm/i915/selftests/mock_region.c b/drivers/gpu/drm/i915/selftests/mock_region.c
> index 09660f5a0a4c..979d96f27c43 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_region.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_region.c
> @@ -24,7 +24,7 @@ mock_object_create(struct intel_memory_region *mem,
>         struct drm_i915_private *i915 = mem->i915;
>         struct drm_i915_gem_object *obj;
>  
> -       if (size > BIT(mem->mm.max_order) * mem->mm.chunk_size)
> +       if (size > mem->mm.size)
>                 return ERR_PTR(-E2BIG);

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
