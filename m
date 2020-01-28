Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CEC214C06C
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 19:54:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8482A6F395;
	Tue, 28 Jan 2020 18:54:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3056D6F395
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 18:54:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20039634-1500050 for multiple; Tue, 28 Jan 2020 18:54:19 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200128183806.149576-1-matthew.auld@intel.com>
In-Reply-To: <20200128183806.149576-1-matthew.auld@intel.com>
Message-ID: <158023765820.2129.13427585414402734376@skylake-alporthouse-com>
Date: Tue, 28 Jan 2020 18:54:18 +0000
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/selftests/perf: measure memcpy
 bw between regions
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

Quoting Matthew Auld (2020-01-28 18:38:06)
> Measure the memcpy bw between our CPU accessible regions, trying all
> supported mapping combinations(WC, WB) across various sizes.
> 
> v2:
>     use smaller sizes
>     throw in memcpy32/memcpy64/memcpy_from_wc
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  .../drm/i915/selftests/i915_perf_selftests.h  |   1 +
>  .../drm/i915/selftests/intel_memory_region.c  | 218 ++++++++++++++++++
>  2 files changed, 219 insertions(+)
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
> index 3ef3620e0da5..2ae9e9a22ce2 100644
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
> @@ -19,6 +20,7 @@
>  #include "gem/selftests/mock_context.h"
>  #include "gt/intel_engine_user.h"
>  #include "gt/intel_gt.h"
> +#include "i915_memcpy.h"
>  #include "selftests/igt_flush_test.h"
>  #include "selftests/i915_random.h"
>  
> @@ -572,6 +574,210 @@ static int igt_lmem_write_cpu(void *arg)
>         return err;
>  }
>  
> +static const char *repr_type(u32 type)
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
> +static struct drm_i915_gem_object *
> +create_region_for_mapping(struct intel_memory_region *mr, u64 size, u32 type,
> +                         void **out_addr)
> +{
> +       struct drm_i915_gem_object *obj;
> +       void *addr;
> +
> +       obj = i915_gem_object_create_region(mr, size, 0);
> +       if (IS_ERR(obj))
> +               return obj;
> +
> +       addr = i915_gem_object_pin_map(obj, type);
> +       if (IS_ERR(addr)) {
> +               i915_gem_object_put(obj);
> +               if (PTR_ERR(addr) == -ENXIO)
> +                       return ERR_PTR(-ENODEV);
> +               return addr;
> +       }
> +
> +       *out_addr = addr;
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
> +static void igt_memcpy32(void *dst, const void *src, size_t size)
> +{
> +       u32 *tmp = dst;
> +       const u32 *s = src;
> +
> +       size = size / sizeof(u32);
> +       while (size--)
> +               *tmp++ = *s++;
> +}
> +
> +static void igt_memcpy64(void *dst, const void *src, size_t size)
> +{
> +       u64 *tmp = dst;
> +       const u64 *s = src;
> +
> +       size = size / sizeof(u64);
> +       while (size--)
> +               *tmp++ = *s++;

memcpy64 will do. I was mainly worrying about the effect of reps being
always on WC memory. So potentially bad memcpy, mediocre memcpy64 and
memcpy_from_wc should cover the possibilities.

Hmm. How about memcpy_long instead (that should give us x32/x64
agnosticism).

> +}
> +
> +static inline void igt_memcpy(void *dst, const void *src, size_t size)
> +{
> +       memcpy(dst, src, size);
> +}
> +
> +static inline void igt_memcpy_from_wc(void *dst, const void *src, size_t size)
> +{
> +       i915_memcpy_from_wc(dst, src, size);
> +}
> +
> +static int _perf_memcpy(struct intel_memory_region *src_mr,
> +                       struct intel_memory_region *dst_mr,
> +                       u64 size, u32 src_type, u32 dst_type)
> +{
> +       const struct {
> +               const char *name;
> +               void (*copy)(void *dst, const void *src, size_t size);
> +               bool skip;
> +       } tests[] = {
> +               {
> +                       "memcpy32",
> +                       igt_memcpy32,
> +               },
> +               {
> +                       "memcpy64",
> +                       igt_memcpy64,
> +               },
> +               {
> +                       "memcpy",
> +                       igt_memcpy,
> +               },
> +               {
> +                       "memcpy_from_wc",
> +                       igt_memcpy_from_wc,
> +                       src_type != I915_MAP_WC || !i915_has_memcpy_from_wc(),

Should be safe for any source mapping (at least according to
experiments), so just !i915_has_memcpy_from_wc.

> +               },
> +       };
> +       struct drm_i915_gem_object *src, *dst;
> +       void *src_addr, *dst_addr;
> +       int ret = 0;
> +       int i;
> +
> +       src = create_region_for_mapping(src_mr, size, src_type, &src_addr);
> +       if (IS_ERR(src)) {
> +               ret = PTR_ERR(src);
> +               goto out;
> +       }
> +
> +       dst = create_region_for_mapping(dst_mr, size, dst_type, &dst_addr);
> +       if (IS_ERR(dst)) {
> +               ret = PTR_ERR(dst);
> +               goto out_unpin_src;
> +       }
> +
> +       for (i = 0; i < ARRAY_SIZE(tests); ++i) {
> +               ktime_t t[5];
> +               int pass;
> +
> +               if (tests[i].skip)
> +                       continue;
> +
> +               for (pass = 0; pass < ARRAY_SIZE(t); pass++) {
> +                       ktime_t t0, t1;
> +
> +                       t0 = ktime_get();
> +
> +                       tests[i].copy(dst_addr, src_addr, size);
> +
> +                       t1 = ktime_get();
> +                       t[pass] = ktime_sub(t1, t0);
> +               }
> +
> +               sort(t, ARRAY_SIZE(t), sizeof(*t), wrap_ktime_compare, NULL);
> +               pr_info("%s src(%s, %s) -> dst(%s, %s) %s %llu KiB copy: %lld MiB/s\n",
> +                       __func__,
> +                       src_mr->name,
> +                       repr_type(src_type),
> +                       dst_mr->name,
> +                       repr_type(dst_type),
> +                       tests[i].name,
> +                       size >> 10,
> +                       div64_u64(mul_u32_u32(4 * size,
> +                                             1000 * 1000 * 1000),
> +                                 t[1] + 2 * t[2] + t[3]) >> 20);

Should this be >> 22 ? (20 /* to MiB */ + 2 /* for avergage */)

> +
> +               cond_resched();
> +       }
> +
> +       i915_gem_object_unpin_map(dst);
> +       __i915_gem_object_put_pages(dst);

put_pages() to speed up the reaping?

How about skipping that leaving it to the ordinary free to cleanup, and
flushing the free?

	object_unpin_map(dst);
	object_put(dst);

	object_unpin_map(src);
	object_put(src);

	i915_gem_drain_freed_objects();

> +
> +       i915_gem_object_put(dst);
> +out_unpin_src:
> +       i915_gem_object_unpin_map(src);
> +       __i915_gem_object_put_pages(src);
> +
> +       i915_gem_object_put(src);
> +out:
> +       if (ret == -ENODEV)
> +               ret = 0;
> +
> +       return ret;
> +}
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
