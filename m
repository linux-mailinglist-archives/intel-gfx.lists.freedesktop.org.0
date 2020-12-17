Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 972FF2DCFC4
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Dec 2020 11:51:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E82516E24D;
	Thu, 17 Dec 2020 10:51:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C45B6E24D;
 Thu, 17 Dec 2020 10:51:43 +0000 (UTC)
IronPort-SDR: QxroTeyHDPxyck/9Sqk0gec6kcFRFXQmCGuwf3X9jLJTH4rhNjiH9CHr7b/1pdE2GJJhE4dWx9
 vdsVpOsXl6Ug==
X-IronPort-AV: E=McAfee;i="6000,8403,9837"; a="193622256"
X-IronPort-AV: E=Sophos;i="5.78,426,1599548400"; d="scan'208";a="193622256"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 02:51:42 -0800
IronPort-SDR: dawserwVbfdRqlsYAlYBxqyrCmU6DHqLdy/32VJzb17zI4lcfE+JOWfn8632LVjnZMm69Cp1Ol
 xT6MDQS3ktiw==
X-IronPort-AV: E=Sophos;i="5.78,426,1599548400"; d="scan'208";a="452951116"
Received: from acherneg-mobl.ger.corp.intel.com (HELO [10.214.210.48])
 ([10.214.210.48])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 02:51:41 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201216165457.1361781-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a88fc05e-fec3-6a4d-6631-37bb70d8efa3@linux.intel.com>
Date: Thu, 17 Dec 2020 10:51:38 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201216165457.1361781-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/perf_pmu: Replace
 init/read-other with a plea
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


On 16/12/2020 16:54, Chris Wilson wrote:
> We cannot assume we know how many PMU there are exactly, so pick -1ULL
> to represent all invalid metrics. Similarly, we have to rely on explicit
> testing for each PMU to prove their existence and correct functioning.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   tests/i915/perf_pmu.c | 56 ++++++++++++-------------------------------
>   1 file changed, 15 insertions(+), 41 deletions(-)
> 
> diff --git a/tests/i915/perf_pmu.c b/tests/i915/perf_pmu.c
> index e2f975a1a..db375341c 100644
> --- a/tests/i915/perf_pmu.c
> +++ b/tests/i915/perf_pmu.c
> @@ -1165,38 +1165,12 @@ do { \
>   	igt_assert_eq(errno, EINVAL);
>   }
>   
> -static void init_other(int i915, unsigned int i, bool valid)
> +static void open_invalid(int i915)
>   {
>   	int fd;
>   
> -	fd = perf_i915_open(i915, __I915_PMU_OTHER(i));
> -	igt_require(!(fd < 0 && errno == ENODEV));
> -	if (valid) {
> -		igt_assert(fd >= 0);
> -	} else {
> -		igt_assert(fd < 0);
> -		return;
> -	}
> -
> -	close(fd);
> -}
> -
> -static void read_other(int i915, unsigned int i, bool valid)
> -{
> -	int fd;
> -
> -	fd = perf_i915_open(i915, __I915_PMU_OTHER(i));
> -	igt_require(!(fd < 0 && errno == ENODEV));
> -	if (valid) {
> -		igt_assert(fd >= 0);
> -	} else {
> -		igt_assert(fd < 0);
> -		return;
> -	}
> -
> -	(void)pmu_read_single(fd);
> -
> -	close(fd);
> +	fd = perf_i915_open(i915, -1ULL);
> +	igt_assert(fd < 0);
>   }
>   
>   static bool cpu0_hotplug_support(void)
> @@ -2058,6 +2032,12 @@ igt_main
>   	unsigned int num_engines = 0;
>   	int fd = -1;
>   
> +	/**
> +	 * All PMU should be accompanied by a test.
> +	 *
> +	 * Including all the I915_PMU_OTHER(x).
> +	 */
> +
>   	igt_fixture {
>   		fd = __drm_open_driver(DRIVER_INTEL);
>   
> @@ -2075,6 +2055,12 @@ igt_main
>   	igt_subtest("invalid-init")
>   		invalid_init(fd);
>   
> +	/**
> +	 * Double check the invalid metric does fail.
> +	 */
> +	igt_subtest("invalid-open")
> +		open_invalid(fd);
> +
>   	igt_subtest_with_dynamic("faulting-read") {
>   		for_each_mmap_offset_type(fd, t) {
>   			igt_dynamic_f("%s", t->name)
> @@ -2228,18 +2214,6 @@ igt_main
>   		all_busy_check_all(fd, num_engines,
>   				   TEST_BUSY | TEST_TRAILING_IDLE);
>   
> -	/**
> -	 * Test that non-engine counters can be initialized and read. Apart
> -	 * from the invalid metric which should fail.
> -	 */
> -	for (unsigned int i = 0; i < num_other_metrics + 1; i++) {
> -		igt_subtest_f("other-init-%u", i)
> -			init_other(fd, i, i < num_other_metrics);
> -
> -		igt_subtest_f("other-read-%u", i)
> -			read_other(fd, i, i < num_other_metrics);
> -	}
> -
>   	/**
>   	 * Test counters are not affected by CPU offline/online events.
>   	 */
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
