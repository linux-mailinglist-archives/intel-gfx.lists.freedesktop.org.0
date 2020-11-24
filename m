Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7486C2C2718
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 14:28:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F0D66E364;
	Tue, 24 Nov 2020 13:28:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 406BB6E334;
 Tue, 24 Nov 2020 13:28:21 +0000 (UTC)
IronPort-SDR: ZTtvB6ONI05kudgSYVDCkzs+CCqiXmbWZpDLg5GMHBmJFpk7kVKsiSWB0QbrlJo4nwJrNkWrwe
 zaRQzfYe21iw==
X-IronPort-AV: E=McAfee;i="6000,8403,9814"; a="159709954"
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="159709954"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 05:28:20 -0800
IronPort-SDR: ouRaiOgnua6TV0gfOSvCPvzede0aeyVzYBEvbO8gSzcDnGN8097BTxVfolj8sgJ/+5ckuQHsYb
 10W87BQFJQ5A==
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="546831023"
Received: from ipilchin-mobl1.ger.corp.intel.com (HELO [10.254.159.60])
 ([10.254.159.60])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 05:28:18 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201124123251.4147819-1-chris@chris-wilson.co.uk>
 <20201124123450.4188664-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <4ab1f514-83cb-c9e2-1feb-a1c054023e4a@linux.intel.com>
Date: Tue, 24 Nov 2020 13:28:15 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201124123450.4188664-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] Cast negative debugfs values to u64
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


On 24/11/2020 12:34, Chris Wilson wrote:
> Since
> 
> commit 488dac0c9237647e9b8f788b6a342595bfa40bda
> Author: Yicong Yang <yangyicong@hisilicon.com>
> Date:   Sat Nov 21 22:17:19 2020 -0800
> 
>      libfs: fix error cast of negative value in simple_attr_write()
> 
> the kernel now rejects any negative values written to debugfs, rather
> than casting them to u64. Since we are accustomed to having the -1 mean
> U64_MAX, perform that conversion ourselves.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> ---
>   lib/i915/gem.c                        | 2 +-
>   lib/igt_gt.c                          | 2 +-
>   tests/i915/gem_eio.c                  | 4 ++--
>   tests/i915/gem_mmap_gtt.c             | 2 +-
>   tests/i915/sysfs_heartbeat_interval.c | 4 ++--
>   tests/i915/sysfs_preempt_timeout.c    | 4 ++--
>   tests/i915/sysfs_timeslice_duration.c | 4 ++--
>   7 files changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/lib/i915/gem.c b/lib/i915/gem.c
> index 45db8a0fd..93ef4073b 100644
> --- a/lib/i915/gem.c
> +++ b/lib/i915/gem.c
> @@ -123,7 +123,7 @@ static void reset_device(int i915)
>   
>   	if (ioctl(i915, DRM_IOCTL_I915_GEM_THROTTLE)) {
>   		igt_info("Found wedged device, trying to reset and continue\n");
> -		igt_sysfs_set(dir, "i915_wedged", "-1");
> +		igt_sysfs_printf(dir, "i915_wedged", "%llu", -1ull);
>   	}
>   	igt_sysfs_set(dir, "i915_next_seqno", "1");
>   
> diff --git a/lib/igt_gt.c b/lib/igt_gt.c
> index 8213526fc..453446da6 100644
> --- a/lib/igt_gt.c
> +++ b/lib/igt_gt.c
> @@ -369,7 +369,7 @@ void igt_force_gpu_reset(int drm_fd)
>   	dir = igt_debugfs_dir(drm_fd);
>   
>   	wedged = 0;
> -	igt_sysfs_set(dir, "i915_wedged", "-1");
> +	igt_sysfs_printf(dir, "i915_wedged", "%llu", -1ull);
>   	igt_sysfs_scanf(dir, "i915_wedged", "%d", &wedged);
>   
>   	close(dir);
> diff --git a/tests/i915/gem_eio.c b/tests/i915/gem_eio.c
> index cc5ab2b83..ae53227c6 100644
> --- a/tests/i915/gem_eio.c
> +++ b/tests/i915/gem_eio.c
> @@ -88,7 +88,7 @@ static void manual_hang(int drm_fd)
>   {
>   	int dir = igt_debugfs_dir(drm_fd);
>   
> -	igt_sysfs_set(dir, "i915_wedged", "-1");
> +	igt_sysfs_printf(dir, "i915_wedged", "%llu", -1ull);
>   
>   	close(dir);
>   }
> @@ -236,7 +236,7 @@ static void hang_handler(union sigval arg)
>   				    "%d", DROP_RCU));
>   
>   	igt_nsec_elapsed(ts);
> -	igt_assert(igt_sysfs_set(dir, "i915_wedged", "-1"));
> +	igt_assert(igt_sysfs_printf(dir, "i915_wedged", "%llu", -1ull));
>   	/* -> wake up gem_sync() in check_wait() */
>   
>   	sched_yield();
> diff --git a/tests/i915/gem_mmap_gtt.c b/tests/i915/gem_mmap_gtt.c
> index 0b1d5ce99..6ecff12b9 100644
> --- a/tests/i915/gem_mmap_gtt.c
> +++ b/tests/i915/gem_mmap_gtt.c
> @@ -713,7 +713,7 @@ test_hang(int fd)
>   	count = 0;
>   	dir = igt_debugfs_dir(fd);
>   	igt_until_timeout(5) {
> -		igt_sysfs_set(dir, "i915_wedged", "-1");
> +		igt_sysfs_printf(dir, "i915_wedged", "%llu", -1ull);

Set to printf conversion is okay. Maybe we could later add 
igt_sysfs_setu32 for simplicity but maybe it would also be too much api.

>   		if (READ_ONCE(control->error))
>   			break;
>   		count++;
> diff --git a/tests/i915/sysfs_heartbeat_interval.c b/tests/i915/sysfs_heartbeat_interval.c
> index fe0cc046c..8270ee7ea 100644
> --- a/tests/i915/sysfs_heartbeat_interval.c
> +++ b/tests/i915/sysfs_heartbeat_interval.c
> @@ -113,11 +113,11 @@ static void test_invalid(int i915, int engine)
>   	igt_assert(igt_sysfs_scanf(engine, ATTR, "%u", &saved) == 1);
>   	igt_debug("Initial %s:%u\n", ATTR, saved);
>   
> -	igt_sysfs_printf(engine, ATTR, PRIu64, -1);
> +	igt_sysfs_printf(engine, ATTR, "%llu", -1ull);
>   	igt_sysfs_scanf(engine, ATTR, "%u", &delay);
>   	igt_assert_eq(delay, saved);
>   
> -	igt_sysfs_printf(engine, ATTR, PRIu64, 10ull << 32);
> +	igt_sysfs_printf(engine, ATTR, "%llu", 10ull << 32);
>   	igt_sysfs_scanf(engine, ATTR, "%u", &delay);
>   	igt_assert_eq(delay, saved);
>   }
> diff --git a/tests/i915/sysfs_preempt_timeout.c b/tests/i915/sysfs_preempt_timeout.c
> index 3f4939eed..74afed831 100644
> --- a/tests/i915/sysfs_preempt_timeout.c
> +++ b/tests/i915/sysfs_preempt_timeout.c
> @@ -103,7 +103,7 @@ static void test_invalid(int i915, int engine)
>   	igt_assert(igt_sysfs_scanf(engine, ATTR, "%u", &saved) == 1);
>   	igt_debug("Initial %s:%u\n", ATTR, saved);
>   
> -	igt_sysfs_printf(engine, ATTR, PRIu64, -1);
> +	igt_sysfs_printf(engine, ATTR, "%llu", -1ull);
>   	igt_sysfs_scanf(engine, ATTR, "%u", &delay);
>   	igt_assert_eq(delay, saved);
>   
> @@ -111,7 +111,7 @@ static void test_invalid(int i915, int engine)
>   	igt_sysfs_scanf(engine, ATTR, "%u", &delay);
>   	igt_assert_eq(delay, saved);
>   
> -	igt_sysfs_printf(engine, ATTR, PRIu64, 40ull << 32);
> +	igt_sysfs_printf(engine, ATTR, "%llu", 40ull << 32);
>   	igt_sysfs_scanf(engine, ATTR, "%u", &delay);
>   	igt_assert_eq(delay, saved);
>   }
> diff --git a/tests/i915/sysfs_timeslice_duration.c b/tests/i915/sysfs_timeslice_duration.c
> index b5b6ded78..99e3f907e 100644
> --- a/tests/i915/sysfs_timeslice_duration.c
> +++ b/tests/i915/sysfs_timeslice_duration.c
> @@ -114,7 +114,7 @@ static void test_invalid(int i915, int engine)
>   	igt_assert(igt_sysfs_scanf(engine, ATTR, "%u", &saved) == 1);
>   	igt_debug("Initial %s:%u\n", ATTR, saved);
>   
> -	igt_sysfs_printf(engine, ATTR, PRIu64, -1);
> +	igt_sysfs_printf(engine, ATTR, "%llu", -1ull);
>   	igt_sysfs_scanf(engine, ATTR, "%u", &delay);
>   	igt_assert_eq(delay, saved);
>   
> @@ -122,7 +122,7 @@ static void test_invalid(int i915, int engine)
>   	igt_sysfs_scanf(engine, ATTR, "%u", &delay);
>   	igt_assert_eq(delay, saved);
>   
> -	igt_sysfs_printf(engine, ATTR, PRIu64, 123ull << 32);
> +	igt_sysfs_printf(engine, ATTR, "%llu", 123ull << 32);
>   	igt_sysfs_scanf(engine, ATTR, "%u", &delay);
>   	igt_assert_eq(delay, saved);
>   }
> 

The second part is also correct.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
