Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D58359EAB
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Apr 2021 14:29:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B260C6E4A2;
	Fri,  9 Apr 2021 12:29:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0E166E4AA
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Apr 2021 12:29:00 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id b9so5482383wrs.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 09 Apr 2021 05:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=MSXB4W8+C5m52Yp1Yjnf+IRYXMLCV2frikYjQwF7MFI=;
 b=lmd/trEv5n7F121YopCk0AitQiVi7WjWaWKevSqLrfx+O/Lc/h1qPd+Id6sY647ukh
 EkeuSFuN0aZRTTrZesX/iG0vtGn0wDgOpAB/8xcKmvZZnEUt2um2DEGbRRuF81iIyRz6
 o9M0fIZ5Uu8Bcjw2pkAskebgf4WBnDio/Ji54=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=MSXB4W8+C5m52Yp1Yjnf+IRYXMLCV2frikYjQwF7MFI=;
 b=JcnNIuwNAyDLu55Q5yzNE79nIJklQQCCFnSLjh5d16J3rkigvn1tntzQVqRoUHeyYw
 7fFSQb7FtxhsVXoZ8hamY+yEMhAc45xO1Wd4XOkSbGuVF+kOY0CxnBF9oD1qT+zrJrfO
 yJ4oE61kz7gIocMwUbs1JuBCEYH8VxjSDxwEOV2VmMMpRQjqwT2/T9GdV/rGSdfm6zGH
 jGF0hilDBVeBTaUM+4V7dya/mA758av0b6wgP2XPf0bEDpu0q15/Rybe1wCZxFt/Fh/F
 4bpUeWOf5yGwE6Jc35Qt66uYQ7he8trCvtK27oEUPXF7bzAioFAtpAJHCFVkvmO8ISjC
 qBOA==
X-Gm-Message-State: AOAM533t20FsBdMsVk+bq4az77QV6TW+ijsZWtz1JTwNQ2OqBxwi3yi/
 zQ6h/9A2QV64pMs7uK4ztY8mew==
X-Google-Smtp-Source: ABdhPJzoP28VGjdW4QJLjVBxB/9RD+wTcO3j2hTWM4vGAbnEgLH7Ycdjgu/kT7NxHjATOxZPdnHPdg==
X-Received: by 2002:adf:ce91:: with SMTP id r17mr239185wrn.330.1617971339380; 
 Fri, 09 Apr 2021 05:28:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id g35sm3469969wmp.42.2021.04.09.05.28.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Apr 2021 05:28:58 -0700 (PDT)
Date: Fri, 9 Apr 2021 14:28:56 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <YHBIiKm2gilHal0i@phenom.ffwll.local>
References: <20210409085704.40233-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210409085704.40233-1-janusz.krzysztofik@linux.intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [igt-dev] [RFC PATCH] tests/gem_userptr_blits:
 Check for banned mmap-offset
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 09, 2021 at 10:57:04AM +0200, Janusz Krzysztofik wrote:
> Support for mmap-offset to userptr has been obsoleted, then related
> lockdep splat reported issues are not going to be resolved other than
> still banning mmap-offset to userptr attempts.
> 
> Replace "mmap-offset-invalidate-*" and "readonly-mmap-unsync" subtests
> which now skip with a negative "mmap-offset-banned" that fails if a
> mmap-offset attempt to a userptr object doesn't return ENODEV.  Also,
> remove mmap-offset to userptr dependent processing paths from other
> subtest bodies and drop obsolete subtest variants.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

But I think would be good if you cross-review with someone else for the
details. I think Zbyszek has a lot of patches that need review help.

Cheers, Daniel

> ---
>  tests/i915/gem_userptr_blits.c | 324 +++------------------------------
>  1 file changed, 30 insertions(+), 294 deletions(-)
> 
> diff --git a/tests/i915/gem_userptr_blits.c b/tests/i915/gem_userptr_blits.c
> index 7a80c0161..aad5f141b 100644
> --- a/tests/i915/gem_userptr_blits.c
> +++ b/tests/i915/gem_userptr_blits.c
> @@ -70,52 +70,12 @@
>  #endif
>  
>  static uint32_t userptr_flags;
> -static bool *can_mmap;
>  
>  #define WIDTH 512
>  #define HEIGHT 512
>  
>  static uint32_t linear[WIDTH*HEIGHT];
>  
> -static bool has_mmap(int i915, const struct mmap_offset *t)
> -{
> -	void *ptr, *map;
> -	uint32_t handle;
> -
> -	handle = gem_create(i915, PAGE_SIZE);
> -	map = __gem_mmap_offset(i915, handle, 0, PAGE_SIZE, PROT_WRITE,
> -				t->type);
> -	gem_close(i915, handle);
> -	if (map) {
> -		munmap(map, PAGE_SIZE);
> -	} else {
> -		igt_debug("no HW / kernel support for mmap-offset(%s)\n",
> -			  t->name);
> -		return false;
> -	}
> -	map = NULL;
> -
> -	igt_assert(posix_memalign(&ptr, PAGE_SIZE, PAGE_SIZE) == 0);
> -
> -	if (__gem_userptr(i915, ptr, 4096, 0,
> -			  I915_USERPTR_UNSYNCHRONIZED, &handle))
> -		goto out_ptr;
> -	igt_assert(handle != 0);
> -
> -	map = __gem_mmap_offset(i915, handle, 0, 4096, PROT_WRITE, t->type);
> -	if (map)
> -		munmap(map, 4096);
> -	else
> -		igt_debug("mmap-offset(%s) banned, lockdep loop prevention\n",
> -			  t->name);
> -
> -	gem_close(i915, handle);
> -out_ptr:
> -	free(ptr);
> -
> -	return map != NULL;
> -}
> -
>  static void gem_userptr_test_unsynchronized(void)
>  {
>  	userptr_flags = I915_USERPTR_UNSYNCHRONIZED;
> @@ -914,28 +874,13 @@ static int test_invalid_mapping(int fd, const struct mmap_offset *t)
>  }
>  
>  #define PE_BUSY 0x1
> -static void test_process_exit(int fd, const struct mmap_offset *mmo, int flags)
> +static void test_process_exit(int fd, int flags)
>  {
> -	if (mmo)
> -		igt_require_f(can_mmap[mmo->type],
> -			      "HW & kernel support for LLC and mmap-offset(%s) over userptr\n",
> -			      mmo->name);
> -
>  	igt_fork(child, 1) {
>  		uint32_t handle;
>  
>  		handle = create_userptr_bo(fd, sizeof(linear));
>  
> -		if (mmo) {
> -			uint32_t *ptr;
> -
> -			ptr = __gem_mmap_offset(fd, handle, 0, sizeof(linear),
> -						PROT_READ | PROT_WRITE,
> -						mmo->type);
> -			if (ptr)
> -				*ptr = 0;
> -		}
> -
>  		if (flags & PE_BUSY)
>  			igt_assert_eq(copy(fd, handle, handle), 0);
>  	}
> @@ -1064,53 +1009,30 @@ static int test_map_fixed_invalidate(int fd, uint32_t flags,
>  	return 0;
>  }
>  
> -static void test_mmap_offset_invalidate(int fd,
> -					const struct mmap_offset *t,
> -					unsigned int flags)
> -#define MMOI_ACTIVE (1u << 0)
> +static void test_mmap_offset_banned(int fd, const struct mmap_offset *t)
>  {
> -	igt_spin_t *spin = NULL;
> -	uint32_t handle;
> -	uint32_t *map;
> +	struct drm_i915_gem_mmap_offset arg;
>  	void *ptr;
>  
>  	/* check if mmap_offset type is supported by hardware, skip if not */
> -	handle = gem_create(fd, PAGE_SIZE);
> -	map = __gem_mmap_offset(fd, handle, 0, PAGE_SIZE,
> -				PROT_READ | PROT_WRITE, t->type);
> -	igt_require_f(map,
> -		      "HW & kernel support for mmap_offset(%s)\n", t->name);
> -	munmap(map, PAGE_SIZE);
> -	gem_close(fd, handle);
> +	memset(&arg, 0, sizeof(arg));
> +	arg.flags = t->type;
> +	arg.handle = gem_create(fd, PAGE_SIZE);
> +	igt_skip_on_f(igt_ioctl(fd, DRM_IOCTL_I915_GEM_MMAP_OFFSET, &arg),
> +				"HW & kernel support for mmap_offset(%s)\n", t->name);
> +	gem_close(fd, arg.handle);
>  
>  	/* create userptr object */
> +	memset(&arg, 0, sizeof(arg));
> +	arg.flags = t->type;
>  	igt_assert_eq(posix_memalign(&ptr, PAGE_SIZE, PAGE_SIZE), 0);
> -	gem_userptr(fd, ptr, PAGE_SIZE, 0, userptr_flags, &handle);
> +	gem_userptr(fd, ptr, PAGE_SIZE, 0, userptr_flags, &arg.handle);
>  
> -	/* set up mmap-offset mapping on top of the object, skip if refused */
> -	map = __gem_mmap_offset(fd, handle, 0, PAGE_SIZE,
> -				PROT_READ | PROT_WRITE, t->type);
> -	igt_require_f(map, "mmap-offset banned, lockdep loop prevention\n");
> -
> -	/* set object pages in order to activate MMU notifier for it */
> -	gem_set_domain(fd, handle, t->domain, t->domain);
> -	*map = 0;
> -
> -	if (flags & MMOI_ACTIVE) {
> -		gem_quiescent_gpu(fd);
> -		spin = igt_spin_new(fd,
> -				    .dependency = handle,
> -				    .flags = IGT_SPIN_NO_PREEMPTION);
> -		igt_spin_set_timeout(spin, NSEC_PER_SEC); /* XXX borked */
> -	}
> +	/* try to set up mmap-offset mapping on top of the object, fail if not banned */
> +	do_ioctl_err(fd, DRM_IOCTL_I915_GEM_MMAP_OFFSET, &arg, ENODEV);
>  
> -	/* trigger the notifier */
> +	gem_close(fd, arg.handle);
>  	munmap(ptr, PAGE_SIZE);
> -
> -	/* cleanup */
> -	igt_spin_free(fd, spin);
> -	munmap(map, PAGE_SIZE);
> -	gem_close(fd, handle);
>  }
>  
>  static int test_forbidden_ops(int fd)
> @@ -1195,36 +1117,28 @@ static void (* volatile orig_sigbus)(int sig, siginfo_t *info, void *param);
>  static volatile unsigned long sigbus_start;
>  static volatile long sigbus_cnt = -1;
>  
> -static void *umap(int fd, uint32_t handle, const struct mmap_offset *mmo)
> +static void *umap(int fd, uint32_t handle)
>  {
>  	void *ptr;
> +	uint32_t tmp = gem_create(fd, sizeof(linear));
>  
> -	if (mmo) {
> -		ptr = __gem_mmap_offset(fd, handle, 0, sizeof(linear),
> -					PROT_READ | PROT_WRITE, mmo->type);
> -		igt_assert(ptr);
> -	} else {
> -		uint32_t tmp = gem_create(fd, sizeof(linear));
> -		igt_assert_eq(copy(fd, tmp, handle), 0);
> -		ptr = gem_mmap__cpu(fd, tmp, 0, sizeof(linear), PROT_READ);
> -		gem_close(fd, tmp);
> -	}
> +	igt_assert_eq(copy(fd, tmp, handle), 0);
> +	ptr = gem_mmap__cpu(fd, tmp, 0, sizeof(linear), PROT_READ);
> +	gem_close(fd, tmp);
>  
>  	return ptr;
>  }
>  
>  static void
> -check_bo(int fd1, uint32_t handle1, int is_userptr, int fd2, uint32_t handle2,
> -	 const struct mmap_offset *mmo)
> +check_bo(int fd1, uint32_t handle1, int is_userptr, int fd2, uint32_t handle2)
>  {
>  	unsigned char *ptr1, *ptr2;
> -	unsigned long size = sizeof(linear);
>  
> -	ptr2 = umap(fd2, handle2, mmo);
> +	ptr2 = umap(fd2, handle2);
>  	if (is_userptr)
>  		ptr1 = is_userptr > 0 ? get_handle_ptr(handle1) : ptr2;
>  	else
> -		ptr1 = umap(fd1, handle1, mmo);
> +		ptr1 = umap(fd1, handle1);
>  
>  	igt_assert(ptr1);
>  	igt_assert(ptr2);
> @@ -1232,12 +1146,6 @@ check_bo(int fd1, uint32_t handle1, int is_userptr, int fd2, uint32_t handle2,
>  	sigbus_start = (unsigned long)ptr2;
>  	igt_assert(memcmp(ptr1, ptr2, sizeof(linear)) == 0);
>  
> -	if (mmo) {
> -		counter++;
> -		memset(ptr1, counter, size);
> -		memset(ptr2, counter, size);
> -	}
> -
>  	if (!is_userptr)
>  		munmap(ptr1, sizeof(linear));
>  	munmap(ptr2, sizeof(linear));
> @@ -1260,47 +1168,15 @@ static int export_handle(int fd, uint32_t handle, int *outfd)
>  	return ret;
>  }
>  
> -static void sigbus(int sig, siginfo_t *info, void *param)
> -{
> -	unsigned long ptr = (unsigned long)info->si_addr;
> -	void *addr;
> -
> -	if (ptr >= sigbus_start &&
> -	    ptr < sigbus_start + sizeof(linear)) {
> -		/* replace mapping to allow progress */
> -		munmap((void *)sigbus_start, sizeof(linear));
> -		addr = mmap((void *)sigbus_start, sizeof(linear),
> -			    PROT_READ | PROT_WRITE,
> -			    MAP_ANONYMOUS | MAP_PRIVATE | MAP_FIXED, -1, 0);
> -		igt_assert((unsigned long)addr == sigbus_start);
> -		memset(addr, counter, sizeof(linear));
> -
> -		sigbus_cnt++;
> -		return;
> -	}
> -
> -	if (orig_sigbus)
> -		orig_sigbus(sig, info, param);
> -	igt_assert(0);
> -}
> -
>  static int test_dmabuf(void)
>  {
>  	int fd1, fd2;
>  	uint32_t handle, handle_import;
>  	int dma_buf_fd = -1;
>  	int ret;
> -	const struct mmap_offset *mmo = NULL;
>  
>  	fd1 = drm_open_driver(DRIVER_INTEL);
>  
> -	for_each_mmap_offset_type(fd1, t)
> -		if (can_mmap[t->type]) {
> -			igt_debug("using mmap-offset(%s)\n", t->name);
> -			mmo = t;
> -			break;
> -	}
> -
>  	handle = create_userptr_bo(fd1, sizeof(linear));
>  	memset(get_handle_ptr(handle), counter, sizeof(linear));
>  
> @@ -1317,35 +1193,16 @@ static int test_dmabuf(void)
>  
>  	fd2 = drm_open_driver(DRIVER_INTEL);
>  	handle_import = prime_fd_to_handle(fd2, dma_buf_fd);
> -	check_bo(fd1, handle, 1, fd2, handle_import, mmo);
> +	check_bo(fd1, handle, 1, fd2, handle_import);
>  
>  	/* close dma_buf, check whether nothing disappears. */
>  	close(dma_buf_fd);
> -	check_bo(fd1, handle, 1, fd2, handle_import, mmo);
> +	check_bo(fd1, handle, 1, fd2, handle_import);
>  
>  	/* destroy userptr object and expect SIGBUS */
>  	free_userptr_bo(fd1, handle);
>  	close(fd1);
>  
> -	if (mmo) {
> -		struct sigaction sigact, orig_sigact;
> -
> -		memset(&sigact, 0, sizeof(sigact));
> -		sigact.sa_sigaction = sigbus;
> -		sigact.sa_flags = SA_SIGINFO;
> -		ret = sigaction(SIGBUS, &sigact, &orig_sigact);
> -		igt_assert_eq(ret, 0);
> -
> -		orig_sigbus = orig_sigact.sa_sigaction;
> -
> -		sigbus_cnt = 0;
> -		check_bo(fd2, handle_import, -1, fd2, handle_import, mmo);
> -		igt_assert(sigbus_cnt > 0);
> -
> -		ret = sigaction(SIGBUS, &orig_sigact, NULL);
> -		igt_assert_eq(ret, 0);
> -	}
> -
>  	close(fd2);
>  	reset_handle_ptr();
>  
> @@ -1548,93 +1405,6 @@ static void test_readonly(int i915)
>  	munmap(pages, sz);
>  }
>  
> -static jmp_buf sigjmp;
> -
> -__noreturn static void sigjmp_handler(int sig)
> -{
> -	siglongjmp(sigjmp, sig);
> -}
> -
> -static void test_readonly_mmap(int i915, const struct mmap_offset *t)
> -{
> -	char *original, *result;
> -	uint32_t handle;
> -	uint32_t sz;
> -	void *pages;
> -	void *ptr;
> -	int sig;
> -
> -	/*
> -	 * A quick check to ensure that we cannot circumvent the
> -	 * read-only nature of our memory by creating a GTT mmap into
> -	 * the pages. Imagine receiving a readonly SHM segment from
> -	 * another process, or a readonly file mmap, it must remain readonly
> -	 * on the GPU as well.
> -	 */
> -
> -	handle = gem_create(i915, PAGE_SIZE);
> -	ptr = __gem_mmap_offset(i915, handle, 0, PAGE_SIZE,
> -				PROT_READ | PROT_WRITE, t->type);
> -	gem_close(i915, handle);
> -	igt_require_f(ptr, "HW & kernel support for mmap-offset(%s)\n",
> -		      t->name);
> -	munmap(ptr, PAGE_SIZE);
> -
> -	igt_require(igt_setup_clflush());
> -
> -	sz = 16 << 12;
> -	pages = mmap(NULL, sz, PROT_WRITE, MAP_ANON | MAP_PRIVATE, -1, 0);
> -	igt_assert(pages != MAP_FAILED);
> -
> -	igt_require(__gem_userptr(i915, pages, sz, true, userptr_flags, &handle) == 0);
> -	gem_set_caching(i915, handle, 0);
> -
> -	memset(pages, 0xa5, sz);
> -	igt_clflush_range(pages, sz);
> -	original = g_compute_checksum_for_data(G_CHECKSUM_SHA1, pages, sz);
> -
> -	ptr = __gem_mmap_offset(i915, handle, 0, sz, PROT_WRITE, t->type);
> -	igt_assert(ptr == NULL);
> -
> -	/* Optional kernel support for GTT mmaps of userptr */
> -	ptr = __gem_mmap_offset(i915, handle, 0, sz, PROT_READ, t->type);
> -	gem_close(i915, handle);
> -
> -	if (ptr) { /* Check that a write into the GTT readonly map fails */
> -		if (!(sig = sigsetjmp(sigjmp, 1))) {
> -			signal(SIGBUS, sigjmp_handler);
> -			signal(SIGSEGV, sigjmp_handler);
> -			memset(ptr, 0x5a, sz);
> -			igt_assert(0);
> -		}
> -		igt_assert_eq(sig, SIGSEGV);
> -
> -		/* Check that we disallow removing the readonly protection */
> -		igt_assert(mprotect(ptr, sz, PROT_WRITE));
> -		if (!(sig = sigsetjmp(sigjmp, 1))) {
> -			signal(SIGBUS, sigjmp_handler);
> -			signal(SIGSEGV, sigjmp_handler);
> -			memset(ptr, 0x5a, sz);
> -			igt_assert(0);
> -		}
> -		igt_assert_eq(sig, SIGSEGV);
> -
> -		/* A single read from the GTT pointer to prove that works */
> -		igt_assert_eq_u32(*(uint8_t *)ptr, 0xa5);
> -		munmap(ptr, sz);
> -	}
> -
> -	/* Double check that the kernel did indeed not let any writes through */
> -	igt_clflush_range(pages, sz);
> -	result = g_compute_checksum_for_data(G_CHECKSUM_SHA1, pages, sz);
> -	igt_assert(!strcmp(original, result));
> -
> -	g_free(original);
> -	g_free(result);
> -
> -	munmap(pages, sz);
> -}
> -
>  static void test_readonly_pwrite(int i915)
>  {
>  	char *original, *result;
> @@ -2423,12 +2193,6 @@ igt_main_args("c:", NULL, help_str, opt_handler, NULL)
>  				mmo_max = t->type + 1;
>  		igt_assert(mmo_max);
>  
> -		can_mmap = calloc(mmo_max, sizeof(*can_mmap));
> -		igt_assert(can_mmap);
> -
> -		for_each_mmap_offset_type(fd, t)
> -			can_mmap[t->type] = has_mmap(fd, t) && gem_has_llc(fd);
> -
>  		size = sizeof(linear);
>  
>  		aperture_size = gem_aperture_size(fd);
> @@ -2520,12 +2284,6 @@ igt_main_args("c:", NULL, help_str, opt_handler, NULL)
>  		igt_subtest("readonly-unsync")
>  			test_readonly(fd);
>  
> -		igt_describe("Examine mmap-offset mapping to read-only userptr");
> -		igt_subtest_with_dynamic("readonly-mmap-unsync")
> -			for_each_mmap_offset_type(fd, t)
> -				igt_dynamic(t->name)
> -					test_readonly_mmap(fd, t);
> -
>  		igt_subtest("readonly-pwrite-unsync")
>  			test_readonly_pwrite(fd);
>  
> @@ -2595,22 +2353,10 @@ igt_main_args("c:", NULL, help_str, opt_handler, NULL)
>  		}
>  
>  		igt_subtest("process-exit")
> -			test_process_exit(fd, NULL, 0);
> -
> -		igt_describe("Test process exit with userptr object mmapped via mmap-offset");
> -		igt_subtest_with_dynamic("process-exit-mmap")
> -			for_each_mmap_offset_type(fd, t)
> -				igt_dynamic(t->name)
> -					test_process_exit(fd, t, 0);
> +			test_process_exit(fd, 0);
>  
>  		igt_subtest("process-exit-busy")
> -			test_process_exit(fd, NULL, PE_BUSY);
> -
> -		igt_describe("Test process exit with busy userptr object mmapped via mmap-offset");
> -		igt_subtest_with_dynamic("process-exit-mmap-busy")
> -			for_each_mmap_offset_type(fd, t)
> -				igt_dynamic(t->name)
> -					test_process_exit(fd, t, PE_BUSY);
> +			test_process_exit(fd, PE_BUSY);
>  
>  		igt_subtest("create-destroy-sync")
>  			test_create_destroy(fd, 5);
> @@ -2655,18 +2401,11 @@ igt_main_args("c:", NULL, help_str, opt_handler, NULL)
>  			}
>  		}
>  
> -		igt_describe("Invalidate pages of idle userptr with mmap-offset on top");
> -		igt_subtest_with_dynamic("mmap-offset-invalidate-idle")
> +		igt_describe("Verify mmap_offset to userptr is banned");
> +		igt_subtest_with_dynamic("mmap-offset-banned")
>  			for_each_mmap_offset_type(fd, t)
>  				igt_dynamic_f("%s", t->name)
> -					test_mmap_offset_invalidate(fd, t, 0);
> -
> -		igt_describe("Invalidate pages of active userptr with mmap-offset on top");
> -		igt_subtest_with_dynamic("mmap-offset-invalidate-active")
> -			for_each_mmap_offset_type(fd, t)
> -				igt_dynamic_f("%s", t->name)
> -					test_mmap_offset_invalidate(fd, t,
> -								   MMOI_ACTIVE);
> +					test_mmap_offset_banned(fd, t);
>  
>  		igt_subtest("coherency-sync")
>  			test_coherency(fd, count);
> @@ -2748,7 +2487,4 @@ igt_main_args("c:", NULL, help_str, opt_handler, NULL)
>  
>  	igt_subtest("access-control")
>  		test_access_control(fd);
> -
> -	igt_fixture
> -		free(can_mmap);
>  }
> -- 
> 2.25.1
> 
> _______________________________________________
> igt-dev mailing list
> igt-dev@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/igt-dev

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
