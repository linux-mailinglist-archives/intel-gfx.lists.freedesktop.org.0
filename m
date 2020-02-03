Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F30D1151242
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 23:15:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24FA76E44F;
	Mon,  3 Feb 2020 22:15:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52A016E44E;
 Mon,  3 Feb 2020 22:15:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 14:15:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,398,1574150400"; d="scan'208";a="278877005"
Received: from relo-linux-2.fm.intel.com (HELO [10.1.27.125]) ([10.1.27.125])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Feb 2020 14:15:26 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200203214518.723198-1-chris@chris-wilson.co.uk>
From: Antonio Argenziano <antonio.argenziano@intel.com>
Message-ID: <4b37a582-fd82-f6b8-bc0b-d0f75aafafda@intel.com>
Date: Mon, 3 Feb 2020 14:15:26 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20200203214518.723198-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_basic: Drop per-engine
 testing of *execbuf
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 03/02/20 13:45, Chris Wilson wrote:
> The gtt/readonly tests are nothing to do with execution and engines;
> they are strictly checking the copy-from-user of the ioctl arguments.
> Drop the silly per-engine tests.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Antonio Argenziano <antonio.argenziano@intel.com>
> ---
>   tests/i915/gem_exec_basic.c  | 109 +++++------------------------------
>   tests/i915/gem_exec_params.c |  61 ++++++++++++++++++++
>   2 files changed, 76 insertions(+), 94 deletions(-)
> 
> diff --git a/tests/i915/gem_exec_basic.c b/tests/i915/gem_exec_basic.c
> index 70dce34b5..0d05819ce 100644
> --- a/tests/i915/gem_exec_basic.c
> +++ b/tests/i915/gem_exec_basic.c
> @@ -36,84 +36,6 @@ static uint32_t batch_create(int fd)
>   	return handle;
>   }
>   
> -static void batch_fini(int fd, uint32_t handle)
> -{
> -	gem_sync(fd, handle); /* catch any GPU hang */
> -	gem_close(fd, handle);
> -}
> -
> -static void noop(int fd, uint64_t flags)
> -{
> -	struct drm_i915_gem_execbuffer2 execbuf;
> -	struct drm_i915_gem_exec_object2 exec;
> -
> -	gem_require_ring(fd, flags);
> -
> -	memset(&exec, 0, sizeof(exec));
> -
> -	exec.handle = batch_create(fd);
> -
> -	memset(&execbuf, 0, sizeof(execbuf));
> -	execbuf.buffers_ptr = to_user_pointer(&exec);
> -	execbuf.buffer_count = 1;
> -	execbuf.flags = flags;
> -	gem_execbuf(fd, &execbuf);
> -
> -	batch_fini(fd, exec.handle);
> -}
> -
> -static void readonly(int fd, uint64_t flags)
> -{
> -	struct drm_i915_gem_execbuffer2 *execbuf;
> -	struct drm_i915_gem_exec_object2 exec;
> -
> -	gem_require_ring(fd, flags);
> -
> -	memset(&exec, 0, sizeof(exec));
> -	exec.handle = batch_create(fd);
> -
> -	execbuf = mmap(NULL, 4096, PROT_WRITE, MAP_ANON | MAP_PRIVATE, -1, 0);
> -	igt_assert(execbuf != NULL);
> -
> -	execbuf->buffers_ptr = to_user_pointer(&exec);
> -	execbuf->buffer_count = 1;
> -	execbuf->flags = flags;
> -	igt_assert(mprotect(execbuf, 4096, PROT_READ) == 0);
> -
> -	gem_execbuf(fd, execbuf);
> -
> -	munmap(execbuf, 4096);
> -
> -	batch_fini(fd, exec.handle);
> -}
> -
> -static void gtt(int fd, uint64_t flags)
> -{
> -	struct drm_i915_gem_execbuffer2 *execbuf;
> -	struct drm_i915_gem_exec_object2 *exec;
> -	uint32_t handle;
> -
> -	gem_require_ring(fd, flags);
> -
> -	handle = gem_create(fd, 4096);
> -
> -	gem_set_domain(fd, handle, I915_GEM_DOMAIN_GTT, I915_GEM_DOMAIN_GTT);
> -	execbuf = gem_mmap__gtt(fd, handle, 4096, PROT_WRITE);
> -	exec = (struct drm_i915_gem_exec_object2 *)(execbuf + 1);
> -	gem_close(fd, handle);
> -
> -	exec->handle = batch_create(fd);
> -
> -	execbuf->buffers_ptr = to_user_pointer(exec);
> -	execbuf->buffer_count = 1;
> -	execbuf->flags = flags;
> -
> -	gem_execbuf(fd, execbuf);
> -
> -	batch_fini(fd, exec->handle);
> -	munmap(execbuf, 4096);
> -}
> -
>   igt_main
>   {
>   	const struct intel_execution_engine2 *e;
> @@ -121,30 +43,29 @@ igt_main
>   
>   	igt_fixture {
>   		fd = drm_open_driver(DRIVER_INTEL);
> -		igt_require_gem(fd);
> -
> +		/* igt_require_gem(fd); // test is mandatory */

What if that fd is bad? Assert?

>   		igt_fork_hang_detector(fd);
>   	}
>   
>   	igt_subtest_with_dynamic("basic") {
> -		__for_each_physical_engine(fd, e) {
> -			igt_dynamic_f("%s", e->name)
> -				noop(fd, e->flags);
> -		}
> -	}
> +		struct drm_i915_gem_exec_object2 exec = {
> +			.handle = batch_create(fd),
> +		};
>   
> -	igt_subtest_with_dynamic("readonly") {
>   		__for_each_physical_engine(fd, e) {
> -			igt_dynamic_f("%s", e->name)
> -				readonly(fd, e->flags);
> +			igt_dynamic_f("%s", e->name) {
> +				struct drm_i915_gem_execbuffer2 execbuf = {
> +					.buffers_ptr = to_user_pointer(&exec),
> +					.buffer_count = 1,
> +					.flags = e->flags,
> +				};
> +
> +				gem_execbuf(fd, &execbuf);
> +			}
>   		}
> -	}
>   
> -	igt_subtest_with_dynamic("gtt") {
> -		__for_each_physical_engine(fd, e) {
> -			igt_dynamic_f("%s", e->name)
> -				gtt(fd, e->flags);
> -		}
> +		gem_sync(fd, exec.handle); /* catch any GPU hang */
> +		gem_close(fd, exec.handle);
>   	}
>   
>   	igt_fixture {
> diff --git a/tests/i915/gem_exec_params.c b/tests/i915/gem_exec_params.c
> index 9c3525698..094fa904c 100644
> --- a/tests/i915/gem_exec_params.c
> +++ b/tests/i915/gem_exec_params.c
> @@ -206,6 +206,61 @@ static int has_secure_batches(const int fd)
>   	return v > 0;
>   }
>   
> +static uint32_t batch_create(int fd)
> +{
> +	const uint32_t bbe = MI_BATCH_BUFFER_END;
> +	uint32_t handle;
> +
> +	handle = gem_create(fd, 4096);
> +	gem_write(fd, handle, 0, &bbe, sizeof(bbe));
> +
> +	return handle;
> +}
> +
> +static void readonly(int i915)
> +{
> +	struct drm_i915_gem_execbuffer2 *execbuf;
> +	struct drm_i915_gem_exec_object2 exec = {
> +		batch_create(i915)
> +	};
> +
> +	execbuf = mmap(NULL, 4096, PROT_WRITE, MAP_ANON | MAP_PRIVATE, -1, 0);
> +	igt_assert(execbuf != MAP_FAILED);
> +
> +	execbuf->buffers_ptr = to_user_pointer(&exec);
> +	execbuf->buffer_count = 1;
> +	igt_assert(mprotect(execbuf, 4096, PROT_READ) == 0);
> +
> +	gem_execbuf(i915, execbuf);
> +	gem_close(i915, exec.handle);
> +
> +	munmap(execbuf, 4096);
> +}
> +
> +static void mmapped(int i915)
> +{
> +	struct drm_i915_gem_execbuffer2 *execbuf;
> +	struct drm_i915_gem_exec_object2 *exec;
> +	uint32_t handle;

gem_require_mappable_ggtt()?

Antonio

> +
> +	handle = gem_create(i915, 4096);
> +
> +	gem_set_domain(i915, handle, I915_GEM_DOMAIN_GTT, I915_GEM_DOMAIN_GTT);
> +	execbuf = gem_mmap__gtt(i915, handle, 4096, PROT_WRITE);
> +	exec = (struct drm_i915_gem_exec_object2 *)(execbuf + 1);
> +	gem_close(i915, handle);
> +
> +	exec->handle = batch_create(i915);
> +
> +	execbuf->buffers_ptr = to_user_pointer(exec);
> +	execbuf->buffer_count = 1;
> +
> +	gem_execbuf(i915, execbuf);
> +	gem_close(i915, exec->handle);
> +
> +	munmap(execbuf, 4096);
> +}
> +
>   struct drm_i915_gem_execbuffer2 execbuf;
>   struct drm_i915_gem_exec_object2 gem_exec[1];
>   uint32_t batch[2] = {MI_BATCH_BUFFER_END};
> @@ -256,6 +311,12 @@ igt_main
>   		}
>   	}
>   
> +	igt_subtest("readonly")
> +		readonly(fd);
> +
> +	igt_subtest("mmapped")
> +		mmapped(fd);
> +
>   #define RUN_FAIL(expected_errno) do { \
>   		igt_assert_eq(__gem_execbuf(fd, &execbuf), -expected_errno); \
>   	} while(0)
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
