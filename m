Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6F42D9B48
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 16:42:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80B0E6E2C8;
	Mon, 14 Dec 2020 15:42:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27C7D6E2C8;
 Mon, 14 Dec 2020 15:42:30 +0000 (UTC)
IronPort-SDR: TXGm2aGJ9SKco6mvgUNQ9wC3eEf2Z6J5PD9jWMaqt21Sm95/Fq0VZ1Kn53lOEvastHBGSCtbmu
 HWEOGON5xJTQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="174870524"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="174870524"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 07:42:26 -0800
IronPort-SDR: 3gLXHq6Xy6zdfI3AQU2gcv0wuDiqlpwLTBpqfWjKg/3PwBxut0+kieedbu1x/p7TTokvKeT/y4
 hsh81K4UzbnA==
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="411291003"
Received: from yhorwitz-mobl1.ger.corp.intel.com (HELO [10.214.202.117])
 ([10.214.202.117])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 07:42:23 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201214105123.542518-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <32a5b538-628b-826b-7d75-f44bd6d0f65b@linux.intel.com>
Date: Mon, 14 Dec 2020 15:42:20 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201214105123.542518-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/4] i915/perf_pmu: Verify
 RC6 measurements before/after suspend
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


On 14/12/2020 10:51, Chris Wilson wrote:
> RC6 should work before suspend, and continue to increment while idle
> after suspend. Should.
> 
> v2: Include a longer sleep after suspend; it appears we are reticent to
> idle so soon after waking up.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   tests/i915/perf_pmu.c | 28 +++++++++++++++++++++++++---
>   1 file changed, 25 insertions(+), 3 deletions(-)
> 
> diff --git a/tests/i915/perf_pmu.c b/tests/i915/perf_pmu.c
> index cb7273142..0b470c1bc 100644
> --- a/tests/i915/perf_pmu.c
> +++ b/tests/i915/perf_pmu.c
> @@ -170,6 +170,7 @@ static unsigned int measured_usleep(unsigned int usec)
>   #define TEST_RUNTIME_PM (8)
>   #define FLAG_LONG (16)
>   #define FLAG_HANG (32)
> +#define TEST_S3 (64)
>   
>   static igt_spin_t * __spin_poll(int fd, uint32_t ctx,
>   				const struct intel_execution_engine2 *e)
> @@ -1578,7 +1579,7 @@ test_frequency_idle(int gem_fd)
>   		     "Actual frequency should be 0 while parked!\n");
>   }
>   
> -static bool wait_for_rc6(int fd)
> +static bool wait_for_rc6(int fd, int timeout)
>   {
>   	struct timespec tv = {};
>   	uint64_t start, now;
> @@ -1594,7 +1595,7 @@ static bool wait_for_rc6(int fd)
>   		now = pmu_read_single(fd);
>   		if (now - start > 1e6)
>   			return true;
> -	} while (!igt_seconds_elapsed(&tv));
> +	} while (igt_seconds_elapsed(&tv) <= timeout);
>   
>   	return false;
>   }
> @@ -1636,14 +1637,32 @@ test_rc6(int gem_fd, unsigned int flags)
>   		}
>   	}
>   
> -	igt_require(wait_for_rc6(fd));
> +	igt_require(wait_for_rc6(fd, 1));
>   
>   	/* While idle check full RC6. */
>   	prev = __pmu_read_single(fd, &ts[0]);
>   	slept = measured_usleep(duration_ns / 1000);
>   	idle = __pmu_read_single(fd, &ts[1]);
> +
>   	igt_debug("slept=%lu perf=%"PRIu64"\n", slept, ts[1] - ts[0]);
> +	assert_within_epsilon(idle - prev, ts[1] - ts[0], tolerance);
> +
> +	if (flags & TEST_S3) {
> +		prev = __pmu_read_single(fd, &ts[0]);
> +		igt_system_suspend_autoresume(SUSPEND_STATE_MEM,
> +					      SUSPEND_TEST_NONE);
> +		idle = __pmu_read_single(fd, &ts[1]);
> +		igt_debug("suspend=%"PRIu64"\n", ts[1] - ts[0]);
> +		//assert_within_epsilon(idle - prev, ts[1] - ts[0], tolerance);
> +	}
> +
> +	igt_assert(wait_for_rc6(fd, 5));
>   
> +	prev = __pmu_read_single(fd, &ts[0]);
> +	slept = measured_usleep(duration_ns / 1000);
> +	idle = __pmu_read_single(fd, &ts[1]);
> +
> +	igt_debug("slept=%lu perf=%"PRIu64"\n", slept, ts[1] - ts[0]);

You plan to leave the C++ bit commented out above and just check it 
here? Doesn't seem it harms to check twice in the non-S3 case anyway, 
just asking.

Regards,

Tvrtko

>   	assert_within_epsilon(idle - prev, ts[1] - ts[0], tolerance);
>   
>   	/* Wake up device and check no RC6. */
> @@ -2245,6 +2264,9 @@ igt_main
>   	igt_subtest("rc6-runtime-pm-long")
>   		test_rc6(fd, TEST_RUNTIME_PM | FLAG_LONG);
>   
> +	igt_subtest("rc6-suspend")
> +		test_rc6(fd, TEST_S3);
> +
>   	/**
>   	 * Check render nodes are counted.
>   	 */
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
