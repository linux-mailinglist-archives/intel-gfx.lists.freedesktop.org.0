Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AA24439E6
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 00:39:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F7E37369C;
	Tue,  2 Nov 2021 23:39:48 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3262F7344E;
 Tue,  2 Nov 2021 23:39:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="231646685"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="231646685"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 16:39:15 -0700
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="467918843"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 16:39:15 -0700
Date: Tue, 2 Nov 2021 16:34:42 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: John.C.Harrison@Intel.com
Message-ID: <20211102233442.GA16356@jons-linux-dev-box>
References: <20211021234044.3071069-1-John.C.Harrison@Intel.com>
 <20211021234044.3071069-5-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211021234044.3071069-5-John.C.Harrison@Intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH i-g-t 4/8] tests/i915/gem_exec_capture: Use
 contexts and engines properly
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
Cc: IGT-Dev@Lists.FreeDesktop.Org, Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 21, 2021 at 04:40:40PM -0700, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> Some of the capture tests were using explicit contexts, some not. Some
> were poking the per engine pre-emption timeout, some not. This would
> lead to sporadic failures due to random timeouts, contexts being
> banned depending upon how many subtests were run and/or how many
> engines a given platform has, and other such failures.
> 
> So, update all tests to be conistent.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> ---
>  tests/i915/gem_exec_capture.c | 80 +++++++++++++++++++++++++----------
>  1 file changed, 58 insertions(+), 22 deletions(-)
> 
> diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
> index c85c198f7..e373d24ed 100644
> --- a/tests/i915/gem_exec_capture.c
> +++ b/tests/i915/gem_exec_capture.c
> @@ -204,8 +204,19 @@ static int check_error_state(int dir, struct offset *obj_offsets, int obj_count,
>  	return blobs;
>  }
>  
> +static void configure_hangs(int fd, const struct intel_execution_engine2 *e, int ctxt_id)
> +{
> +	/* Ensure fast hang detection */
> +	gem_engine_property_printf(fd, e->name, "preempt_timeout_ms", "%d", 250);
> +	gem_engine_property_printf(fd, e->name, "heartbeat_interval_ms", "%d", 500);

#define for 250, 500?

> +
> +	/* Allow engine based resets and disable banning */
> +	igt_allow_hang(fd, ctxt_id, HANG_ALLOW_CAPTURE);
> +}
> +
>  static void __capture1(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
> -		       unsigned ring, uint32_t target, uint64_t target_size)
> +		       const struct intel_execution_engine2 *e,
> +		       uint32_t target, uint64_t target_size)
>  {
>  	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
>  	struct drm_i915_gem_exec_object2 obj[4];
> @@ -219,6 +230,8 @@ static void __capture1(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
>  	struct offset offset;
>  	int i;
>  
> +	configure_hangs(fd, e, ctx->id);
> +
>  	memset(obj, 0, sizeof(obj));
>  	obj[SCRATCH].handle = gem_create(fd, 4096);
>  	obj[SCRATCH].flags = EXEC_OBJECT_WRITE;
> @@ -297,7 +310,7 @@ static void __capture1(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
>  	memset(&execbuf, 0, sizeof(execbuf));
>  	execbuf.buffers_ptr = (uintptr_t)obj;
>  	execbuf.buffer_count = ARRAY_SIZE(obj);
> -	execbuf.flags = ring;
> +	execbuf.flags = e->flags;
>  	if (gen > 3 && gen < 6)
>  		execbuf.flags |= I915_EXEC_SECURE;
>  	execbuf.rsvd1 = ctx->id;
> @@ -326,7 +339,8 @@ static void __capture1(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
>  	gem_close(fd, obj[SCRATCH].handle);
>  }
>  
> -static void capture(int fd, int dir, const intel_ctx_t *ctx, unsigned ring)
> +static void capture(int fd, int dir, const intel_ctx_t *ctx,
> +		    const struct intel_execution_engine2 *e)
>  {
>  	uint32_t handle;
>  	uint64_t ahnd;
> @@ -335,7 +349,7 @@ static void capture(int fd, int dir, const intel_ctx_t *ctx, unsigned ring)
>  	handle = gem_create(fd, obj_size);
>  	ahnd = get_reloc_ahnd(fd, ctx->id);
>  
> -	__capture1(fd, dir, ahnd, ctx, ring, handle, obj_size);
> +	__capture1(fd, dir, ahnd, ctx, e, handle, obj_size);
>  
>  	gem_close(fd, handle);
>  	put_ahnd(ahnd);
> @@ -355,9 +369,9 @@ static int cmp(const void *A, const void *B)
>  }
>  
>  static struct offset *
> -__captureN(int fd, int dir, uint64_t ahnd, unsigned ring,
> -	      unsigned int size, int count,
> -	      unsigned int flags)
> +__captureN(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
> +	   const struct intel_execution_engine2 *e,
> +	   unsigned int size, int count, unsigned int flags)
>  #define INCREMENTAL 0x1
>  #define ASYNC 0x2
>  {
> @@ -369,6 +383,8 @@ __captureN(int fd, int dir, uint64_t ahnd, unsigned ring,
>  	struct offset *offsets;
>  	int i;
>  
> +	configure_hangs(fd, e, ctx->id);
> +
>  	offsets = calloc(count, sizeof(*offsets));
>  	igt_assert(offsets);
>  
> @@ -470,9 +486,10 @@ __captureN(int fd, int dir, uint64_t ahnd, unsigned ring,
>  	memset(&execbuf, 0, sizeof(execbuf));
>  	execbuf.buffers_ptr = (uintptr_t)obj;
>  	execbuf.buffer_count = count + 2;
> -	execbuf.flags = ring;
> +	execbuf.flags = e->flags;
>  	if (gen > 3 && gen < 6)
>  		execbuf.flags |= I915_EXEC_SECURE;
> +	execbuf.rsvd1 = ctx->id;
>  
>  	igt_assert(!READ_ONCE(*seqno));
>  	gem_execbuf(fd, &execbuf);
> @@ -505,10 +522,20 @@ __captureN(int fd, int dir, uint64_t ahnd, unsigned ring,
>  
>  static void many(int fd, int dir, uint64_t size, unsigned int flags)
>  {
> +	const struct intel_execution_engine2 *e;
> +	const intel_ctx_t *ctx;
>  	uint64_t ram, gtt, ahnd;
>  	unsigned long count, blobs;
>  	struct offset *offsets;
>  
> +	/* Find the first available engine: */
> +	ctx = intel_ctx_create_all_physical(fd);
> +	igt_assert(ctx);
> +	for_each_ctx_engine(fd, ctx, e)
> +		for_each_if(gem_class_can_store_dword(fd, e->class))
> +			break;
> +	igt_assert(e);

Duplicated below. Helper for this?

Matt

> +
>  	gtt = gem_aperture_size(fd) / size;
>  	ram = (intel_get_avail_ram_mb() << 20) / size;
>  	igt_debug("Available objects in GTT:%"PRIu64", RAM:%"PRIu64"\n",
> @@ -518,9 +545,9 @@ static void many(int fd, int dir, uint64_t size, unsigned int flags)
>  	igt_require(count > 1);
>  
>  	intel_require_memory(count, size, CHECK_RAM);
> -	ahnd = get_reloc_ahnd(fd, 0);
> +	ahnd = get_reloc_ahnd(fd, ctx->id);
>  
> -	offsets = __captureN(fd, dir, ahnd, 0, size, count, flags);
> +	offsets = __captureN(fd, dir, ahnd, ctx, e, size, count, flags);
>  
>  	blobs = check_error_state(dir, offsets, count, size, !!(flags & INCREMENTAL));
>  	igt_info("Captured %lu %"PRId64"-blobs out of a total of %lu\n",
> @@ -531,7 +558,7 @@ static void many(int fd, int dir, uint64_t size, unsigned int flags)
>  }
>  
>  static void prioinv(int fd, int dir, const intel_ctx_t *ctx,
> -		    unsigned ring, const char *name)
> +		    const struct intel_execution_engine2 *e)
>  {
>  	const uint32_t bbe = MI_BATCH_BUFFER_END;
>  	struct drm_i915_gem_exec_object2 obj = {
> @@ -540,7 +567,7 @@ static void prioinv(int fd, int dir, const intel_ctx_t *ctx,
>  	struct drm_i915_gem_execbuffer2 execbuf = {
>  		.buffers_ptr = to_user_pointer(&obj),
>  		.buffer_count = 1,
> -		.flags = ring,
> +		.flags = e->flags,
>  		.rsvd1 = ctx->id,
>  	};
>  	int64_t timeout = NSEC_PER_SEC; /* 1s, feeling generous, blame debug */
> @@ -555,10 +582,6 @@ static void prioinv(int fd, int dir, const intel_ctx_t *ctx,
>  	igt_require(igt_params_set(fd, "reset", "%u", -1)); /* engine resets! */
>  	igt_require(gem_gpu_reset_type(fd) > 1);
>  
> -	/* Needs to be fast enough for the hangcheck to return within 1s */
> -	igt_require(gem_engine_property_printf(fd, name, "preempt_timeout_ms", "%d", 0) > 0);
> -	gem_engine_property_printf(fd, name, "preempt_timeout_ms", "%d", 500);
> -
>  	gtt = gem_aperture_size(fd) / size;
>  	ram = (intel_get_avail_ram_mb() << 20) / size;
>  	igt_debug("Available objects in GTT:%"PRIu64", RAM:%"PRIu64"\n",
> @@ -576,15 +599,19 @@ static void prioinv(int fd, int dir, const intel_ctx_t *ctx,
>  
>  	igt_assert(pipe(link) == 0);
>  	igt_fork(child, 1) {
> +		const intel_ctx_t *ctx2;
>  		fd = gem_reopen_driver(fd);
>  		igt_debug("Submitting large capture [%ld x %dMiB objects]\n",
>  			  count, (int)(size >> 20));
>  
> +		ctx2 = intel_ctx_create_all_physical(fd);
> +		igt_assert(ctx2);
> +
>  		intel_allocator_init();
>  		/* Reopen the allocator in the new process. */
> -		ahnd = get_reloc_ahnd(fd, 0);
> +		ahnd = get_reloc_ahnd(fd, ctx2->id);
>  
> -		free(__captureN(fd, dir, ahnd, ring, size, count, ASYNC));
> +		free(__captureN(fd, dir, ahnd, ctx2, e, size, count, ASYNC));
>  		put_ahnd(ahnd);
>  
>  		write(link[1], &fd, sizeof(fd)); /* wake the parent up */
> @@ -615,18 +642,27 @@ static void prioinv(int fd, int dir, const intel_ctx_t *ctx,
>  
>  static void userptr(int fd, int dir)
>  {
> -	const intel_ctx_t *ctx = intel_ctx_0(fd);
> +	const struct intel_execution_engine2 *e;
> +	const intel_ctx_t *ctx;
>  	uint32_t handle;
>  	uint64_t ahnd;
>  	void *ptr;
>  	int obj_size = 4096;
>  
> +	/* Find the first available engine: */
> +	ctx = intel_ctx_create_all_physical(fd);
> +	igt_assert(ctx);
> +	for_each_ctx_engine(fd, ctx, e)
> +		for_each_if(gem_class_can_store_dword(fd, e->class))
> +			break;
> +	igt_assert(e);
> +
>  	igt_assert(posix_memalign(&ptr, obj_size, obj_size) == 0);
>  	memset(ptr, 0, obj_size);
>  	igt_require(__gem_userptr(fd, ptr, obj_size, 0, 0, &handle) == 0);
>  	ahnd = get_reloc_ahnd(fd, ctx->id);
>  
> -	__capture1(fd, dir, ahnd, intel_ctx_0(fd), 0, handle, obj_size);
> +	__capture1(fd, dir, ahnd, ctx, e, handle, obj_size);
>  
>  	gem_close(fd, handle);
>  	put_ahnd(ahnd);
> @@ -684,7 +720,7 @@ igt_main
>  	}
>  
>  	test_each_engine("capture", fd, ctx, e)
> -		capture(fd, dir, ctx, e->flags);
> +		capture(fd, dir, ctx, e);
>  
>  	igt_subtest_f("many-4K-zero") {
>  		igt_require(gem_can_store_dword(fd, 0));
> @@ -719,7 +755,7 @@ igt_main
>  	}
>  
>  	test_each_engine("pi", fd, ctx, e)
> -		prioinv(fd, dir, ctx, e->flags, e->name);
> +		prioinv(fd, dir, ctx, e);
>  
>  	igt_fixture {
>  		close(dir);
> -- 
> 2.25.1
> 
