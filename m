Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 955D714EE8E
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 15:37:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D976C6FB70;
	Fri, 31 Jan 2020 14:37:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3279F6E9AF;
 Fri, 31 Jan 2020 14:37:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20073810-1500050 for multiple; Fri, 31 Jan 2020 14:37:07 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200131131234.23058-2-janusz.krzysztofik@linux.intel.com>
References: <20200131131234.23058-1-janusz.krzysztofik@linux.intel.com>
 <20200131131234.23058-2-janusz.krzysztofik@linux.intel.com>
Message-ID: <158048142584.2430.6713808810476573778@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 31 Jan 2020 14:37:05 +0000
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t 1/1] tests/gem_mmap_offset:
 Exercise mapping to userptr
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Janusz Krzysztofik (2020-01-31 13:12:34)
> Creating a mapping to a userptr backed GEM object may cause a currently
> unavoidable lockdep splat inside the i915 driver.  Then, such operation
> is expected to fail to prevent from that badness to happen.
> 
> Add a respective subtest for each mapping type.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  tests/i915/gem_mmap_offset.c | 55 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
> 
> diff --git a/tests/i915/gem_mmap_offset.c b/tests/i915/gem_mmap_offset.c
> index 7c4088cdf..a5f28328b 100644
> --- a/tests/i915/gem_mmap_offset.c
> +++ b/tests/i915/gem_mmap_offset.c
> @@ -141,6 +141,36 @@ static void bad_extensions(int i915)
>         gem_close(i915, arg.handle);
>  }
>  
> +static bool has_userptr(int i915)
> +{
> +       uint32_t handle = 0;
> +       void *ptr;
> +
> +       igt_assert_eq(posix_memalign(&ptr, 4096, 4096), 0);
> +       if (__gem_userptr(i915, ptr, 4096, 0, 0, &handle) == 0)
> +               gem_close(i915, handle);
> +       free(ptr);
> +
> +       return handle;
> +}
> +
> +static void userptr(int i915, uint64_t flags)
> +{
> +       struct drm_i915_gem_mmap_offset arg = {
> +               .flags = flags,
> +       };
> +       void *ptr;
> +
> +       igt_assert_eq(posix_memalign(&ptr, 4096, 4096), 0);
> +
> +       gem_userptr(i915, ptr, 4096, 0, 0, &arg.handle);
> +
> +       igt_assert_eq(mmap_offset_ioctl(i915, &arg), -EINVAL);

Not quite. The only reason it doesn't work is because the implementation
ties itself into knots, not that it is meant to not work. :|
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
