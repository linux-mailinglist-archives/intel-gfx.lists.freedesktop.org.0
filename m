Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3CE2D5843
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 11:31:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EF196EA65;
	Thu, 10 Dec 2020 10:31:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98A986EA65;
 Thu, 10 Dec 2020 10:31:28 +0000 (UTC)
IronPort-SDR: CHV9m/3GXDlAPLqP/XjrHPgD3Ubs0b/sDkwtj6fGRq9NTKy8Az1qexPIAxX7tSfJ0V0ikxE26R
 b73TNFzxJxPw==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="235826533"
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="235826533"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 02:31:27 -0800
IronPort-SDR: y4hZbTH3fMMCwhfGDn97Q0GeqFnTlZWgayCKulOnnVS93Q8J0dpx/yavFQ2qZFoD5sBNdIlxaZ
 OzAL1yHZLzMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="319116335"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 10 Dec 2020 02:31:25 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id EC7BB5C201A; Thu, 10 Dec 2020 12:29:09 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
In-Reply-To: <20201210102702.2450068-1-chris@chris-wilson.co.uk>
References: <20201210102702.2450068-1-chris@chris-wilson.co.uk>
Date: Thu, 10 Dec 2020 12:29:09 +0200
Message-ID: <87mtymlzt6.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_mmap_gtt: Replace
 gem_threaded_access_tiled
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Concurrent access to a mmap is covered by gem_mmap_gtt/concurrent,
> if we add tiled access to it, we make gem_threaded_access_tiled entirely
> redundant.

Aww, my first ever test for igt iirc.

>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  tests/Makefile.am                      |   2 -
>  tests/Makefile.sources                 |   3 -
>  tests/i915/gem_mmap_gtt.c              |  21 +++--
>  tests/i915/gem_threaded_access_tiled.c | 122 -------------------------
>  tests/meson.build                      |   1 -
>  5 files changed, 15 insertions(+), 134 deletions(-)
>  delete mode 100644 tests/i915/gem_threaded_access_tiled.c
>
> diff --git a/tests/Makefile.am b/tests/Makefile.am
> index 9f0dda7d7..415271add 100644
> --- a/tests/Makefile.am
> +++ b/tests/Makefile.am
> @@ -118,8 +118,6 @@ gem_mmap_wc_CFLAGS = $(AM_CFLAGS) $(THREAD_CFLAGS)
>  gem_mmap_wc_LDADD = $(LDADD) -lpthread
>  gem_sync_CFLAGS = $(AM_CFLAGS) $(THREAD_CFLAGS)
>  gem_sync_LDADD = $(LDADD) -lpthread
> -gem_threaded_access_tiled_CFLAGS = $(AM_CFLAGS) $(THREAD_CFLAGS)
> -gem_threaded_access_tiled_LDADD = $(LDADD) -lpthread
>  gem_tiled_swapping_CFLAGS = $(AM_CFLAGS) $(THREAD_CFLAGS)
>  gem_tiled_swapping_LDADD = $(LDADD) -lpthread
>  i915_pm_rc6_residency_LDADD = $(LDADD) $(top_builddir)/lib/libigt_perf.la
> diff --git a/tests/Makefile.sources b/tests/Makefile.sources
> index 15fb56048..d9c8f6104 100644
> --- a/tests/Makefile.sources
> +++ b/tests/Makefile.sources
> @@ -422,9 +422,6 @@ gem_streaming_writes_SOURCES = i915/gem_streaming_writes.c
>  TESTS_progs += gem_sync
>  gem_sync_SOURCES = i915/gem_sync.c
>  
> -TESTS_progs += gem_threaded_access_tiled
> -gem_threaded_access_tiled_SOURCES = i915/gem_threaded_access_tiled.c
> -
>  TESTS_progs += gem_tiled_blits
>  gem_tiled_blits_SOURCES = i915/gem_tiled_blits.c
>  
> diff --git a/tests/i915/gem_mmap_gtt.c b/tests/i915/gem_mmap_gtt.c
> index 6ecff12b9..61fbc5bc7 100644
> --- a/tests/i915/gem_mmap_gtt.c
> +++ b/tests/i915/gem_mmap_gtt.c
> @@ -72,12 +72,14 @@ mmap_bo(int fd, uint32_t handle, uint64_t size)
>  }
>  
>  static void *
> -create_pointer_size(int fd, uint64_t size)
> +create_pointer_size(int fd, uint64_t size, int tiling)
>  {
>  	uint32_t handle;
>  	void *ptr;
>  
>  	handle = gem_create(fd, size);
> +	if (tiling)
> +		gem_set_tiling(fd, handle, tiling, 1024);
>  
>  	ptr = mmap_bo(fd, handle, size);
>  
> @@ -89,7 +91,7 @@ create_pointer_size(int fd, uint64_t size)
>  static void *
>  create_pointer(int fd)
>  {
> -	return create_pointer_size(fd, OBJECT_SIZE);
> +	return create_pointer_size(fd, OBJECT_SIZE, I915_TILING_NONE);
>  }
>  
>  static void
> @@ -1180,20 +1182,23 @@ thread_fault_concurrent(void *closure)
>  }
>  
>  static void
> -test_fault_concurrent(int fd)
> +test_fault_concurrent(int fd, int tiling)
>  {
>  	uint32_t *ptr[32];
>  	struct thread_fault_concurrent thread[64];
>  	int *ctl;
>  	int n;
>  
> -	ctl = create_pointer_size(fd, 4096);
> +	if (tiling != I915_TILING_NONE)
> +		igt_require(gem_available_fences(fd) > 0);
> +
> +	ctl = create_pointer_size(fd, 4096, I915_TILING_NONE);
>  	*ctl = 1;
>  
>  	for (n = 0; n < 32; n++) {
>  		uint32_t sz = (n + 1) << 19; /* 512KiB increments */
>  
> -		ptr[n] = create_pointer_size(fd, sz);
> +		ptr[n] = create_pointer_size(fd, sz, tiling);
>  		*ptr[n] = sz / sizeof(uint32_t); /* num_elems for convenience */
>  	}
>  
> @@ -1301,7 +1306,11 @@ igt_main
>  	igt_subtest("basic-write-read-distinct")
>  		test_read_write2(fd, READ_AFTER_WRITE);
>  	igt_subtest("fault-concurrent")
> -		test_fault_concurrent(fd);
> +		test_fault_concurrent(fd, I915_TILING_NONE);
> +	igt_subtest("fault-concurrent-X")
> +		test_fault_concurrent(fd, I915_TILING_X);
> +	igt_subtest("fault-concurrent-Y")
> +		test_fault_concurrent(fd, I915_TILING_Y);
>  	igt_subtest("basic-write-cpu-read-gtt")
>  		test_write_cpu_read_gtt(fd);
>  	igt_subtest("basic-wc")
> diff --git a/tests/i915/gem_threaded_access_tiled.c b/tests/i915/gem_threaded_access_tiled.c
> deleted file mode 100644
> index 53b475a45..000000000
> --- a/tests/i915/gem_threaded_access_tiled.c
> +++ /dev/null
> @@ -1,122 +0,0 @@
> -/*
> - * Copyright (c) 2012 Intel Corporation
> - *
> - * Permission is hereby granted, free of charge, to any person obtaining a
> - * copy of this software and associated documentation files (the "Software"),
> - * to deal in the Software without restriction, including without limitation
> - * the rights to use, copy, modify, merge, publish, distribute, sublicense,
> - * and/or sell copies of the Software, and to permit persons to whom the
> - * Software is furnished to do so, subject to the following conditions:
> - *
> - * The above copyright notice and this permission notice (including the next
> - * paragraph) shall be included in all copies or substantial portions of the
> - * Software.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> - * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> - * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
> - * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> - * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> - * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
> - * IN THE SOFTWARE.
> - *
> - * Authors:
> - *    Mika Kuoppala <mika.kuoppala@intel.com>
> - */
> -
> -#include "igt.h"
> -#include <stdlib.h>
> -#include <string.h>
> -#include <fcntl.h>
> -#include <unistd.h>
> -#include <pthread.h>
> -
> -IGT_TEST_DESCRIPTION("Check parallel access to tiled memory.");
> -
> -/* Testcase: check parallel access to tiled memory
> - *
> - * Parallel access to tiled memory caused sigbus
> - */
> -
> -#define NUM_THREADS 2
> -#define WIDTH 4096
> -#define HEIGHT 4096
> -
> -struct thread_ctx {
> -	struct intel_buf *buf;
> -};
> -
> -static struct buf_ops *bops;
> -static struct thread_ctx tctx[NUM_THREADS];
> -
> -static void *copy_fn(void *p)
> -{
> -	unsigned char *buf;
> -	struct thread_ctx *c = p;
> -
> -	buf = malloc(WIDTH * HEIGHT);
> -	if (buf == NULL)
> -		return (void *)1;
> -
> -	memcpy(buf, c->buf->ptr, WIDTH * HEIGHT);
> -
> -	free(buf);
> -	return (void *)0;
> -}
> -
> -static int copy_tile_threaded(struct intel_buf *buf)
> -{
> -	int i;
> -	int r;
> -	pthread_t thr[NUM_THREADS];
> -	void *status;
> -
> -	for (i = 0; i < NUM_THREADS; i++) {
> -		tctx[i].buf = buf;
> -		r = pthread_create(&thr[i], NULL, copy_fn, (void *)&tctx[i]);
> -		igt_assert_eq(r, 0);
> -	}
> -
> -	for (i = 0;  i < NUM_THREADS; i++) {
> -		pthread_join(thr[i], &status);
> -		igt_assert(status == 0);
> -	}
> -
> -	return 0;
> -}
> -
> -igt_simple_main
> -{
> -	int fd;
> -	struct intel_buf *buf;
> -	uint32_t tiling_mode = I915_TILING_Y;
> -	int r;
> -
> -	fd = drm_open_driver(DRIVER_INTEL);
> -	igt_assert(fd >= 0);
> -
> -	igt_require(gem_available_fences(fd) > 0);
> -
> -	bops = buf_ops_create(fd);
> -
> -	buf = intel_buf_create(bops, WIDTH, HEIGHT, 8, 0, tiling_mode,
> -			       I915_COMPRESSION_NONE);
> -	igt_assert(buf);
> -
> -	buf->ptr = gem_mmap__gtt(fd, buf->handle, buf->surface[0].size,
> -				 PROT_WRITE | PROT_READ);
> -	gem_set_domain(fd, buf->handle,
> -		       I915_GEM_DOMAIN_GTT, I915_GEM_DOMAIN_GTT);
> -
> -	r = copy_tile_threaded(buf);
> -	igt_assert(!r);
> -
> -	r = gem_munmap(buf->ptr, buf->surface[0].size);
> -	buf->ptr = NULL;
> -	igt_assert(!r);
> -
> -	intel_buf_destroy(buf);
> -	buf_ops_destroy(bops);
> -
> -	close(fd);
> -}
> diff --git a/tests/meson.build b/tests/meson.build
> index a2decf4ab..9d6006709 100644
> --- a/tests/meson.build
> +++ b/tests/meson.build
> @@ -207,7 +207,6 @@ i915_progs = [
>  	'gem_spin_batch',
>  	'gem_streaming_writes',
>  	'gem_sync',
> -	'gem_threaded_access_tiled',
>  	'gem_tiled_blits',
>  	'gem_tiled_fence_blits',
>  	'gem_tiled_partial_pwrite_pread',
> -- 
> 2.29.2
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
