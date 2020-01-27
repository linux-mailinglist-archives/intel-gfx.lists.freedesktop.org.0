Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D8714A49D
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 14:11:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BA326EB8B;
	Mon, 27 Jan 2020 13:11:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38D086EB8B
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 13:11:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20022493-1500050 for multiple; Mon, 27 Jan 2020 13:11:07 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200127125626.37198-1-matthew.auld@intel.com>
In-Reply-To: <20200127125626.37198-1-matthew.auld@intel.com>
Message-ID: <158013066519.25356.6351758637499300837@skylake-alporthouse-com>
Date: Mon, 27 Jan 2020 13:11:05 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests/perf: measure memcpy bw
 between regions
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

Quoting Matthew Auld (2020-01-27 12:56:26)
> Measure the memcpy bw between our CPU accessible regions, trying all
> supported mapping combinations(WC, WB) across various sizes.
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  .../drm/i915/selftests/i915_perf_selftests.h  |   1 +
>  .../drm/i915/selftests/intel_memory_region.c  | 164 ++++++++++++++++++
>  2 files changed, 165 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/i915_perf_selftests.h b/drivers/gpu/drm/i915/selftests/i915_perf_selftests.h
> index 5a577a1332f5..3bf7f53e9924 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_perf_selftests.h
> +++ b/drivers/gpu/drm/i915/selftests/i915_perf_selftests.h
> @@ -17,3 +17,4 @@
>   */
>  selftest(engine_cs, intel_engine_cs_perf_selftests)
>  selftest(blt, i915_gem_object_blt_perf_selftests)
> +selftest(region, intel_memory_region_perf_selftests)
> diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> index 3ef3620e0da5..6d493a198eb1 100644
> --- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> @@ -4,6 +4,7 @@
>   */
>  
>  #include <linux/prime_numbers.h>
> +#include <linux/sort.h>
>  
>  #include "../i915_selftest.h"
>  
> @@ -572,6 +573,157 @@ static int igt_lmem_write_cpu(void *arg)
>         return err;
>  }
>  
> +static const char *stringify_map_type(u32 type)
Fwiw, I've begun using repr_foo(foo). Which do we prefer?

> +{
> +       switch (type) {
> +       case I915_MAP_WB:
> +               return "WB";
> +       case I915_MAP_WC:
> +               return "WC";
> +       }
> +
> +       return "";
> +}
> +
> +static inline struct drm_i915_gem_object *
> +create_region(struct intel_memory_region *mr, u64 size)
> +{
> +       struct drm_i915_gem_object *obj;
> +
> +       obj = i915_gem_object_create_region(mr, size, 0);
> +       if (!IS_ERR(obj)) {
> +               if (!i915_gem_object_type_has(obj,
> +                                             I915_GEM_OBJECT_HAS_STRUCT_PAGE |
> +                                             I915_GEM_OBJECT_HAS_IOMEM)) {

Can we not tell from the mr what properties we would end up with?

I would suggest calling it something like create_region_for_mapping() as
I had to look around to see why the type_has() was justified.

Hmm. Perhaps better (more agnostic to the pin_map) would be to try and
fail to create the map and squash the -ENODEV error there.


> +                       i915_gem_object_put(obj);
> +                       return ERR_PTR(-ENODEV);
> +               }
> +       }
> +
> +       return obj;
> +}
> +
> +static int wrap_ktime_compare(const void *A, const void *B)
> +{
> +       const ktime_t *a = A, *b = B;
> +
> +       return ktime_compare(*a, *b);
> +}
> +
> +int _perf_memcpy(struct intel_memory_region *src_mr,
> +                struct intel_memory_region *dst_mr,
> +                u64 size, u32 src_type, u32 dst_type)
> +{
> +       struct drm_i915_gem_object *src, *dst;
> +       void *src_addr, *dst_addr;
> +       ktime_t t[5];
> +       int pass;
> +       int ret = 0;
> +
> +       src = create_region(src_mr, size);
> +       if (IS_ERR(src)) {
> +               ret = PTR_ERR(src);
> +               goto out;
> +       }
> +
> +       src_addr = i915_gem_object_pin_map(src, src_type);
> +       if (IS_ERR(src_addr)) {
> +               ret = PTR_ERR(src_addr);
> +               goto out_put_src;
> +       }
> +
> +       dst = create_region(dst_mr, size);
> +       if (IS_ERR(dst)) {
> +               ret = PTR_ERR(dst);
> +               goto out_unpin_src;
> +       }
> +
> +       dst_addr = i915_gem_object_pin_map(dst, dst_type);
> +       if (IS_ERR(dst_addr)) {
> +               ret = PTR_ERR(dst_addr);
> +               goto out_put_dst;
> +       }
> +
> +       for (pass = 0; pass < ARRAY_SIZE(t); pass++) {
> +               ktime_t t0, t1;
> +
> +               t0 = ktime_get();
> +
> +               memcpy(dst_addr, src_addr, size);

Fwiw, different sizes of memcpy() may prove important,
(memcpy32/memcpy64). As would memcpy_from_wc.

> +
> +               t1 = ktime_get();
> +               t[pass] = ktime_sub(t1, t0);
> +       }
> +
> +       sort(t, ARRAY_SIZE(t), sizeof(*t), wrap_ktime_compare, NULL);
> +       pr_info("%s src(%s, %s) -> dst(%s, %s) memcpy %llu KiB copy: %lld MiB/s\n",
> +               __func__,
> +               src_mr->name,
> +               stringify_map_type(src_type),
> +               dst_mr->name,
> +               stringify_map_type(dst_type),
> +               size >> 10,
> +               div64_u64(mul_u32_u32(4 * size,
> +                                     1000 * 1000 * 1000),
> +                         t[1] + 2 * t[2] + t[3]) >> 20);
> +
> +       i915_gem_object_unpin_map(dst);
> +       __i915_gem_object_put_pages(dst);
> +out_put_dst:
> +       i915_gem_object_put(dst);
> +out_unpin_src:
> +       i915_gem_object_unpin_map(src);
> +       __i915_gem_object_put_pages(src);
> +out_put_src:
> +       i915_gem_object_put(src);
> +out:
> +       if (ret == -ENODEV || ret == -ENOMEM)
> +               ret = 0;
> +
> +       return ret;
> +}
> +
> +int perf_memcpy(void *arg)
> +{
> +       struct drm_i915_private *i915 = arg;
> +       static const u32 types[] = {
> +               I915_MAP_WB,
> +               I915_MAP_WC,
> +       };
> +       static const u32 sizes[] = {
> +               SZ_4K,
> +               SZ_64K,
> +               SZ_2M,
> +               SZ_64M,
> +       };
> +       struct intel_memory_region *src_mr, *dst_mr;
> +       int src_id, dst_id;
> +       int i, j, k;
> +       int ret;
> +
> +       for_each_memory_region(src_mr, i915, src_id) {
> +               for_each_memory_region(dst_mr, i915, dst_id) {
> +                       for (i = 0; i < ARRAY_SIZE(sizes); ++i) {
> +                               for (j = 0; j < ARRAY_SIZE(types); ++j) {
> +                                       for (k = 0; k < ARRAY_SIZE(types); ++k) {
> +                                               ret = _perf_memcpy(src_mr,
> +                                                                  dst_mr,
> +                                                                  sizes[i],
> +                                                                  types[j],
> +                                                                  types[k]);
> +                                               if (ret)
> +                                                       return ret;

64M from wc could be quite slow. I might put a caveat here to stop
measuring larger sizes if we exceed a time limit.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
