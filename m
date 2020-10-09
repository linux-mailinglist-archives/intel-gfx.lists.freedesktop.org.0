Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80526288F04
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Oct 2020 18:36:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D1576ED41;
	Fri,  9 Oct 2020 16:36:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 214B06ED41;
 Fri,  9 Oct 2020 16:36:48 +0000 (UTC)
IronPort-SDR: q5EAJYFHXXoMh1vpFY+iiNWnu9l51JEUug8c2gPDBHRSIns2UWV/1xNjG++lYoa4XSyV16icKU
 aF2brUsQVrZw==
X-IronPort-AV: E=McAfee;i="6000,8403,9769"; a="162045847"
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="162045847"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 09:36:44 -0700
IronPort-SDR: avoNK9jhB78f16OLvR+czCfGQpVqSypAcvrnIIqPOv1qhXiEIxrYb/Ai9WNW7PKtmJlGO90v65
 LZZkCGNeLQaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="317086702"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga006.jf.intel.com with ESMTP; 09 Oct 2020 09:36:42 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id C30F55C1E61; Fri,  9 Oct 2020 19:35:13 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201009162206.1661402-1-chris@chris-wilson.co.uk>
References: <20201009162206.1661402-1-chris@chris-wilson.co.uk>
Date: Fri, 09 Oct 2020 19:35:13 +0300
Message-ID: <877drzfjcu.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/3] lib: Launch spinners
 from inside userptr
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

Needs a commit message like:

Add support for dummyload to be userptr.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  lib/igt_dummyload.c         | 87 ++++++++++++++++++++++++-------------
>  lib/igt_dummyload.h         | 13 ++++--
>  tests/i915/gem_spin_batch.c | 23 ++++++----
>  3 files changed, 80 insertions(+), 43 deletions(-)
>
> diff --git a/lib/igt_dummyload.c b/lib/igt_dummyload.c
> index 26ea154ac..d58f73108 100644
> --- a/lib/igt_dummyload.c
> +++ b/lib/igt_dummyload.c
> @@ -68,6 +68,24 @@ static const int LOOP_START_OFFSET = 64;
>  static IGT_LIST_HEAD(spin_list);
>  static pthread_mutex_t list_lock = PTHREAD_MUTEX_INITIALIZER;
>  
> +static uint32_t
> +handle_create(int fd, size_t sz, unsigned long flags, uint32_t **mem)
> +{
> +	*mem = NULL;
> +
> +	if (flags & IGT_SPIN_USERPTR) {
> +		uint32_t handle;
> +
> +		*mem = mmap(NULL, sz, PROT_WRITE, MAP_SHARED | MAP_ANON, -1, 0);
> +		igt_assert(*mem != (uint32_t *)-1);
> +		gem_userptr(fd, *mem, sz, 0, 0, &handle);
> +
> +		return handle;
> +	}
> +
> +	return gem_create(fd, sz);
> +}
> +
>  static int
>  emit_recursive_batch(igt_spin_t *spin,
>  		     int fd, const struct igt_spin_factory *opts)
> @@ -81,8 +99,8 @@ emit_recursive_batch(igt_spin_t *spin,
>  	unsigned int flags[GEM_MAX_ENGINES];
>  	unsigned int nengine;
>  	int fence_fd = -1;
> -	uint32_t *cs, *batch;
>  	uint64_t addr;
> +	uint32_t *cs;
>  	int i;
>  
>  	/*
> @@ -126,13 +144,16 @@ emit_recursive_batch(igt_spin_t *spin,
>  	execbuf->flags = I915_EXEC_NO_RELOC;
>  	obj = memset(spin->obj, 0, sizeof(spin->obj));
>  
> -	obj[BATCH].handle = gem_create(fd, BATCH_SIZE);
> -	batch = gem_mmap__device_coherent(fd, obj[BATCH].handle,
> -					  0, BATCH_SIZE, PROT_WRITE);
> -	gem_set_domain(fd, obj[BATCH].handle,
> -		       I915_GEM_DOMAIN_GTT, I915_GEM_DOMAIN_GTT);
> +	obj[BATCH].handle =
> +		handle_create(fd, BATCH_SIZE, opts->flags, &spin->batch);
> +	if (!spin->batch) {
> +		spin->batch = gem_mmap__device_coherent(fd, obj[BATCH].handle,
> +						  0, BATCH_SIZE, PROT_WRITE);
> +		gem_set_domain(fd, obj[BATCH].handle,
> +			       I915_GEM_DOMAIN_GTT, I915_GEM_DOMAIN_GTT);
> +	}
>  	execbuf->buffer_count++;
> -	cs = batch;
> +	cs = spin->batch;
>  
>  	obj[BATCH].offset = addr;
>  	addr += BATCH_SIZE;
> @@ -165,19 +186,22 @@ emit_recursive_batch(igt_spin_t *spin,
>  			igt_require(__igt_device_set_master(fd) == 0);
>  		}
>  
> -		spin->poll_handle = gem_create(fd, 4096);
> +		spin->poll_handle =
> +			handle_create(fd, 4096, opts->flags, &spin->poll);
>  		obj[SCRATCH].handle = spin->poll_handle;
>  
> -		if (__gem_set_caching(fd, spin->poll_handle,
> -				      I915_CACHING_CACHED) == 0)
> -			spin->poll = gem_mmap__cpu(fd, spin->poll_handle,
> -						   0, 4096,
> -						   PROT_READ | PROT_WRITE);
> -		else
> -			spin->poll = gem_mmap__device_coherent(fd,
> -							       spin->poll_handle,
> -							       0, 4096,
> -							       PROT_READ | PROT_WRITE);
> +		if (!spin->poll) {
> +			if (__gem_set_caching(fd, spin->poll_handle,
> +					      I915_CACHING_CACHED) == 0)
> +				spin->poll = gem_mmap__cpu(fd, spin->poll_handle,
> +							   0, 4096,
> +							   PROT_READ | PROT_WRITE);
> +			else
> +				spin->poll = gem_mmap__device_coherent(fd,
> +								       spin->poll_handle,
> +								       0, 4096,
> +								       PROT_READ | PROT_WRITE);
> +		}
>  		addr += 4096; /* guard page */
>  		obj[SCRATCH].offset = addr;
>  		addr += 4096;
> @@ -210,8 +234,8 @@ emit_recursive_batch(igt_spin_t *spin,
>  
>  	spin->handle = obj[BATCH].handle;
>  
> -	igt_assert_lt(cs - batch, LOOP_START_OFFSET / sizeof(*cs));
> -	spin->condition = batch + LOOP_START_OFFSET / sizeof(*cs);
> +	igt_assert_lt(cs - spin->batch, LOOP_START_OFFSET / sizeof(*cs));
> +	spin->condition = spin->batch + LOOP_START_OFFSET / sizeof(*cs);
>  	cs = spin->condition;
>  
>  	/* Allow ourselves to be preempted */
> @@ -255,15 +279,15 @@ emit_recursive_batch(igt_spin_t *spin,
>  		 * (using 5 << 12).
>  		 * For simplicity, we try to stick to a one-size fits all.
>  		 */
> -		spin->condition = batch + BATCH_SIZE / sizeof(*batch) - 2;
> +		spin->condition = spin->batch + BATCH_SIZE / sizeof(*spin->batch) - 2;
>  		spin->condition[0] = 0xffffffff;
>  		spin->condition[1] = 0xffffffff;
>  
>  		r->presumed_offset = obj[BATCH].offset;
>  		r->target_handle = obj[BATCH].handle;
> -		r->offset = (cs + 2 - batch) * sizeof(*cs);
> +		r->offset = (cs + 2 - spin->batch) * sizeof(*cs);
>  		r->read_domains = I915_GEM_DOMAIN_COMMAND;
> -		r->delta = (spin->condition - batch) * sizeof(*cs);
> +		r->delta = (spin->condition - spin->batch) * sizeof(*cs);
>  
>  		*cs++ = MI_COND_BATCH_BUFFER_END | MI_DO_COMPARE | 2;
>  		*cs++ = MI_BATCH_BUFFER_END;
> @@ -275,7 +299,7 @@ emit_recursive_batch(igt_spin_t *spin,
>  	r = &relocs[obj[BATCH].relocation_count++];
>  	r->target_handle = obj[BATCH].handle;
>  	r->presumed_offset = obj[BATCH].offset;
> -	r->offset = (cs + 1 - batch) * sizeof(*cs);
> +	r->offset = (cs + 1 - spin->batch) * sizeof(*cs);
>  	r->read_domains = I915_GEM_DOMAIN_COMMAND;
>  	r->delta = LOOP_START_OFFSET;
>  	if (gen >= 8) {
> @@ -294,8 +318,8 @@ emit_recursive_batch(igt_spin_t *spin,
>  	}
>  	obj[BATCH].relocs_ptr = to_user_pointer(relocs);
>  
> -	execbuf->buffers_ptr = to_user_pointer(obj +
> -					       (2 - execbuf->buffer_count));
> +	execbuf->buffers_ptr =
> +	       	to_user_pointer(obj + (2 - execbuf->buffer_count));
>  	execbuf->rsvd1 = opts->ctx;
>  
>  	if (opts->flags & IGT_SPIN_FENCE_OUT)
> @@ -329,7 +353,7 @@ emit_recursive_batch(igt_spin_t *spin,
>  		}
>  	}
>  
> -	igt_assert_lt(cs - batch, BATCH_SIZE / sizeof(*cs));
> +	igt_assert_lt(cs - spin->batch, BATCH_SIZE / sizeof(*cs));
>  
>  	/* Make it easier for callers to resubmit. */
>  	for (i = 0; i < ARRAY_SIZE(spin->obj); i++) {
> @@ -532,13 +556,14 @@ void igt_spin_free(int fd, igt_spin_t *spin)
>  	}
>  
>  	igt_spin_end(spin);
> -	gem_munmap((void *)((unsigned long)spin->condition & (~4095UL)),
> -		   BATCH_SIZE);
>  
> -	if (spin->poll) {
> +	if (spin->poll)
>  		gem_munmap(spin->poll, 4096);
> +	if (spin->batch)
> +		gem_munmap(spin->batch, BATCH_SIZE);
> +
> +	if (spin->poll_handle)
>  		gem_close(fd, spin->poll_handle);
> -	}
>  
>  	if (spin->handle)
>  		gem_close(fd, spin->handle);
> diff --git a/lib/igt_dummyload.h b/lib/igt_dummyload.h
> index aac0c83a9..6d3e65ce2 100644
> --- a/lib/igt_dummyload.h
> +++ b/lib/igt_dummyload.h
> @@ -33,12 +33,19 @@
>  #include "i915_drm.h"
>  
>  typedef struct igt_spin {
> -	unsigned int handle;
>  	struct igt_list_head link;
>  
> +	uint32_t handle;
> +	uint32_t poll_handle;
> +
> +	uint32_t *batch;
> +
>  	uint32_t *condition;
>  	uint32_t cmd_precondition;
>  
> +	uint32_t *poll;
> +#define SPIN_POLL_START_IDX 0
> +
>  	struct timespec last_signal;
>  	pthread_t timer_thread;
>  	int timerfd;
> @@ -47,9 +54,6 @@ typedef struct igt_spin {
>  	struct drm_i915_gem_exec_object2 obj[2];
>  #define IGT_SPIN_BATCH   1
>  	struct drm_i915_gem_execbuffer2 execbuf;
> -	uint32_t poll_handle;
> -	uint32_t *poll;
> -#define SPIN_POLL_START_IDX 0
>  } igt_spin_t;
>  
>  struct igt_spin_factory {
> @@ -66,6 +70,7 @@ struct igt_spin_factory {
>  #define IGT_SPIN_FAST          (1 << 3)
>  #define IGT_SPIN_NO_PREEMPTION (1 << 4)
>  #define IGT_SPIN_INVALID_CS    (1 << 5)
> +#define IGT_SPIN_USERPTR       (1 << 6)
>  
>  igt_spin_t *
>  __igt_spin_factory(int fd, const struct igt_spin_factory *opts);
> diff --git a/tests/i915/gem_spin_batch.c b/tests/i915/gem_spin_batch.c
> index e7dd58ec2..19bc4638d 100644
> --- a/tests/i915/gem_spin_batch.c
> +++ b/tests/i915/gem_spin_batch.c
> @@ -33,7 +33,9 @@
>  		     "'%s' != '%s' (%lld not within %d%% tolerance of %lld)\n",\
>  		     #x, #ref, (long long)x, tolerance, (long long)ref)
>  
> -static void spin(int fd, const struct intel_execution_engine2 *e2,
> +static void spin(int fd,
> +		 const struct intel_execution_engine2 *e2,
> +		 unsigned int flags,
>  		 unsigned int timeout_sec)
>  {
>  	const uint64_t timeout_100ms = 100000000LL;
> @@ -43,9 +45,10 @@ static void spin(int fd, const struct intel_execution_engine2 *e2,
>  	struct timespec itv = { };
>  	uint64_t elapsed;
>  
> -	spin = __igt_spin_new(fd, .engine = e2->flags);
> +	spin = __igt_spin_new(fd, .engine = e2->flags, .flags = flags);
>  	while ((elapsed = igt_nsec_elapsed(&tv)) >> 30 < timeout_sec) {
> -		igt_spin_t *next = __igt_spin_new(fd, .engine = e2->flags);
> +		igt_spin_t *next =
> +			__igt_spin_new(fd, .engine = e2->flags, .flags = flags);
>  
>  		igt_spin_set_timeout(spin,
>  				     timeout_100ms - igt_nsec_elapsed(&itv));
> @@ -120,14 +123,15 @@ static void spin_exit_handler(int sig)
>  	igt_terminate_spins();
>  }
>  
> -static void spin_on_all_engines(int fd, unsigned int timeout_sec)
> +static void
> +spin_on_all_engines(int fd, unsigned long flags, unsigned int timeout_sec)
>  {
>  	const struct intel_execution_engine2 *e2;
>  
>  	__for_each_physical_engine(fd, e2) {
>  		igt_fork(child, 1) {
>  			igt_install_exit_handler(spin_exit_handler);
> -			spin(fd, e2, timeout_sec);
> +			spin(fd, e2, flags, timeout_sec);
>  		}
>  	}
>  
> @@ -186,7 +190,7 @@ igt_main
>  		e2 = &e2__;
>  
>  		igt_subtest_f("legacy-%s", e->name)
> -			spin(fd, e2, 3);
> +			spin(fd, e2, 0, 3);
>  
>  		igt_subtest_f("legacy-resubmit-%s", e->name)
>  			spin_resubmit(fd, e2, 0);
> @@ -202,7 +206,7 @@ igt_main
>  
>  	__for_each_physical_engine(fd, e2) {
>  		igt_subtest_f("%s", e2->name)
> -			spin(fd, e2, 3);
> +			spin(fd, e2, 0, 3);
>  
>  		igt_subtest_f("resubmit-%s", e2->name)
>  			spin_resubmit(fd, e2, 0);
> @@ -220,7 +224,10 @@ igt_main
>  	}
>  
>  	igt_subtest("spin-each")
> -		spin_on_all_engines(fd, 3);
> +		spin_on_all_engines(fd, 0, 3);
> +
> +	igt_subtest("user-each")
> +		spin_on_all_engines(fd, IGT_SPIN_USERPTR, 3);
>  
>  	igt_fixture {
>  		igt_stop_hang_detector();
> -- 
> 2.28.0
>
> _______________________________________________
> igt-dev mailing list
> igt-dev@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/igt-dev
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
