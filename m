Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9411B19C39E
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 16:07:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 026636EA97;
	Thu,  2 Apr 2020 14:07:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12A5C6EA96;
 Thu,  2 Apr 2020 14:07:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20777280-1500050 for multiple; Thu, 02 Apr 2020 15:07:46 +0100
MIME-Version: 1.0
In-Reply-To: <20200402140057.330937-1-chris@chris-wilson.co.uk>
References: <20200402140057.330937-1-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Message-ID: <158583646743.5852.9331967495457501342@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 02 Apr 2020 15:07:47 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/perf_pmu: Exercise mixing perf
 reads into i915 mmaps
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-04-02 15:00:57)
> Feed a fresh i915 mmap into a read(perf_fd) to teach lockdep about the
> potential lock chains should we take a pagefault into our vm_fault
> handlers from within perf.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  tests/perf_pmu.c | 39 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/tests/perf_pmu.c b/tests/perf_pmu.c
> index 259670f4b..1d6681d80 100644
> --- a/tests/perf_pmu.c
> +++ b/tests/perf_pmu.c
> @@ -1827,6 +1827,35 @@ accuracy(int gem_fd, const struct intel_execution_engine2 *e,
>         assert_within(100.0 * busy_r, 100.0 * expected, 2);
>  }
>  
> +static void *create_mmap(int gem_fd, const struct mmap_offset *t, int sz)
> +{
> +       uint32_t handle;
> +       void *ptr;
> +
> +       handle = gem_create(gem_fd, sz);
> +       ptr = __gem_mmap_offset(gem_fd, handle, 0, sz, PROT_WRITE, t->type);
> +       gem_close(gem_fd, handle);
> +
> +       return ptr;
> +}
> +
> +static void
> +faulting_read(int gem_fd, const struct mmap_offset *t)
> +{
> +       void *ptr;
> +       int fd;
> +
> +       ptr = create_mmap(gem_fd, t, 4096);
> +       igt_require(ptr != NULL);
> +
> +       fd = open_pmu(gem_fd, I915_PMU_ENGINE_BUSY(0, 0));
> +       igt_require(fd != -1);
> +       igt_assert_eq(read(fd, ptr, 4096), 2 * sizeof(uint64_t));
> +       close(fd);
> +
> +       munmap(ptr, 4096);
> +}
> +
>  #define test_each_engine(T, i915, e) \
>         igt_subtest_with_dynamic(T) __for_each_physical_engine(i915, e) \
>                 igt_dynamic_f("%s", e->name)
> @@ -1860,6 +1889,16 @@ igt_main
>         igt_subtest("invalid-init")
>                 invalid_init(fd);
>  
> +       igt_subtest_with_dynamic("faulting-read") {
> +               for_each_mmap_offset_type(fd, t) {
> +                       if (!gem_has_mmap_offset_type(fd, t))
> +                               continue;

Redundant, for_each_mmap_offset_type() includes the skip.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
