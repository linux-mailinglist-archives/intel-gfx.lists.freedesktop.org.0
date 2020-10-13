Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E5028CB36
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 11:52:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFF176E8B5;
	Tue, 13 Oct 2020 09:52:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C14B6E105;
 Tue, 13 Oct 2020 09:52:26 +0000 (UTC)
IronPort-SDR: UYO1kSiQtg4ScTq1wGrIlwnyAKGjkmKx7SgNKvXcc975OxEhQV84JPD9Cgl/IjyD1mbmQXWGXq
 N1PjI9Z1bE9Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="165093664"
X-IronPort-AV: E=Sophos;i="5.77,369,1596524400"; d="scan'208";a="165093664"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 02:52:25 -0700
IronPort-SDR: 661i9HPVNl+z5quXFXF/FK0K3LDHWLxmmsu5/6drrmsr2SxeixSaXF+qXrZiCl/P45HnOvICTW
 nhyE2ssFhfEg==
X-IronPort-AV: E=Sophos;i="5.77,369,1596524400"; d="scan'208";a="530331243"
Received: from leanneam-mobl.ger.corp.intel.com (HELO [10.249.36.69])
 ([10.249.36.69])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 02:52:24 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
References: <20201013094612.83843-1-tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3b90ef3d-cb1a-ea50-db80-dab8fcac3653@linux.intel.com>
Date: Tue, 13 Oct 2020 10:52:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201013094612.83843-1-tvrtko.ursulin@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/perf_pmu: Fix perf fd leak
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 13/10/2020 10:46, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> As it turns out opening the perf fd in group mode still produces separate
> file descriptors for all members of the group, which in turn need to be
> closed manually to avoid leaking them.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   tests/i915/perf_pmu.c | 130 +++++++++++++++++++++++++-----------------
>   1 file changed, 78 insertions(+), 52 deletions(-)
> 
> diff --git a/tests/i915/perf_pmu.c b/tests/i915/perf_pmu.c
> index 873b275dca6b..6f8bec28d274 100644
> --- a/tests/i915/perf_pmu.c
> +++ b/tests/i915/perf_pmu.c
> @@ -475,7 +475,8 @@ busy_check_all(int gem_fd, const struct intel_execution_engine2 *e,
>   
>   	end_spin(gem_fd, spin, FLAG_SYNC);
>   	igt_spin_free(gem_fd, spin);
> -	close(fd[0]);
> +	for (i = 0; i < num_engines; i++)
> +		close(fd[i]);
>   
>   	for (i = 0; i < num_engines; i++)
>   		val[i] = tval[1][i] - tval[0][i];
> @@ -546,7 +547,8 @@ most_busy_check_all(int gem_fd, const struct intel_execution_engine2 *e,
>   
>   	end_spin(gem_fd, spin, FLAG_SYNC);
>   	igt_spin_free(gem_fd, spin);
> -	close(fd[0]);
> +	for (i = 0; i < num_engines; i++)
> +		close(fd[i]);
>   
>   	for (i = 0; i < num_engines; i++)
>   		val[i] = tval[1][i] - tval[0][i];
> @@ -600,7 +602,8 @@ all_busy_check_all(int gem_fd, const unsigned int num_engines,
>   
>   	end_spin(gem_fd, spin, FLAG_SYNC);
>   	igt_spin_free(gem_fd, spin);
> -	close(fd[0]);
> +	for (i = 0; i < num_engines; i++)
> +		close(fd[i]);
>   
>   	for (i = 0; i < num_engines; i++)
>   		val[i] = tval[1][i] - tval[0][i];
> @@ -617,22 +620,23 @@ no_sema(int gem_fd, const struct intel_execution_engine2 *e, unsigned int flags)
>   {
>   	igt_spin_t *spin;
>   	uint64_t val[2][2];
> -	int fd;
> +	int fd[2];
>   
> -	fd = open_group(gem_fd,
> -			I915_PMU_ENGINE_SEMA(e->class, e->instance), -1);
> -	open_group(gem_fd, I915_PMU_ENGINE_WAIT(e->class, e->instance), fd);
> +	fd[0] = open_group(gem_fd, I915_PMU_ENGINE_SEMA(e->class, e->instance),
> +			   -1);
> +	fd[1] = open_group(gem_fd, I915_PMU_ENGINE_WAIT(e->class, e->instance),
> +			   fd[0]);
>   
>   	if (flags & TEST_BUSY)
>   		spin = spin_sync(gem_fd, 0, e);
>   	else
>   		spin = NULL;
>   
> -	pmu_read_multi(fd, 2, val[0]);
> +	pmu_read_multi(fd[0], 2, val[0]);
>   	measured_usleep(batch_duration_ns / 1000);
>   	if (flags & TEST_TRAILING_IDLE)
>   		end_spin(gem_fd, spin, flags);
> -	pmu_read_multi(fd, 2, val[1]);
> +	pmu_read_multi(fd[0], 2, val[1]);
>   
>   	val[0][0] = val[1][0] - val[0][0];
>   	val[0][1] = val[1][1] - val[0][1];
> @@ -641,7 +645,8 @@ no_sema(int gem_fd, const struct intel_execution_engine2 *e, unsigned int flags)
>   		end_spin(gem_fd, spin, FLAG_SYNC);
>   		igt_spin_free(gem_fd, spin);
>   	}
> -	close(fd);
> +	close(fd[0]);
> +	close(fd[1]);
>   
>   	assert_within_epsilon(val[0][0], 0.0f, tolerance);
>   	assert_within_epsilon(val[0][1], 0.0f, tolerance);
> @@ -861,18 +866,21 @@ sema_busy(int gem_fd,
>   	  const struct intel_execution_engine2 *e,
>   	  unsigned int flags)
>   {
> -	int fd;
> +	int fd[2];
>   
>   	igt_require(intel_gen(intel_get_drm_devid(gem_fd)) >= 8);
>   
> -	fd = open_group(gem_fd, I915_PMU_ENGINE_SEMA(e->class, e->instance), -1);
> -	open_group(gem_fd, I915_PMU_ENGINE_BUSY(e->class, e->instance), fd);
> +	fd[0] = open_group(gem_fd, I915_PMU_ENGINE_SEMA(e->class, e->instance),
> +			   -1);
> +	fd[1] = open_group(gem_fd, I915_PMU_ENGINE_BUSY(e->class, e->instance),
> +			   fd[0]);
>   
> -	__sema_busy(gem_fd, fd, e, 50, 100);
> -	__sema_busy(gem_fd, fd, e, 25, 50);
> -	__sema_busy(gem_fd, fd, e, 75, 75);
> +	__sema_busy(gem_fd, fd[0], e, 50, 100);
> +	__sema_busy(gem_fd, fd[0], e, 25, 50);
> +	__sema_busy(gem_fd, fd[0], e, 75, 75);
>   
> -	close(fd);
> +	close(fd[0]);
> +	close(fd[1]);
>   }
>   
>   #define   MI_WAIT_FOR_PIPE_C_VBLANK (1<<21)
> @@ -1441,7 +1449,7 @@ test_frequency(int gem_fd)
>   	uint64_t val[2], start[2], slept;
>   	double min[2], max[2];
>   	igt_spin_t *spin;
> -	int fd, sysfs;
> +	int fd[2], sysfs;
>   
>   	sysfs = igt_sysfs_open(gem_fd);
>   	igt_require(sysfs >= 0);
> @@ -1455,8 +1463,8 @@ test_frequency(int gem_fd)
>   	igt_require(max_freq > min_freq);
>   	igt_require(boost_freq > min_freq);
>   
> -	fd = open_group(gem_fd, I915_PMU_REQUESTED_FREQUENCY, -1);
> -	open_group(gem_fd, I915_PMU_ACTUAL_FREQUENCY, fd);
> +	fd[0] = open_group(gem_fd, I915_PMU_REQUESTED_FREQUENCY, -1);
> +	fd[1] = open_group(gem_fd, I915_PMU_ACTUAL_FREQUENCY, fd[0]);
>   
>   	/*
>   	 * Set GPU to min frequency and read PMU counters.
> @@ -1471,9 +1479,9 @@ test_frequency(int gem_fd)
>   	gem_quiescent_gpu(gem_fd); /* Idle to be sure the change takes effect */
>   	spin = spin_sync_flags(gem_fd, 0, I915_EXEC_DEFAULT);
>   
> -	slept = pmu_read_multi(fd, 2, start);
> +	slept = pmu_read_multi(fd[0], 2, start);
>   	measured_usleep(batch_duration_ns / 1000);
> -	slept = pmu_read_multi(fd, 2, val) - slept;
> +	slept = pmu_read_multi(fd[0], 2, val) - slept;
>   
>   	min[0] = 1e9*(val[0] - start[0]) / slept;
>   	min[1] = 1e9*(val[1] - start[1]) / slept;
> @@ -1497,9 +1505,9 @@ test_frequency(int gem_fd)
>   	gem_quiescent_gpu(gem_fd);
>   	spin = spin_sync_flags(gem_fd, 0, I915_EXEC_DEFAULT);
>   
> -	slept = pmu_read_multi(fd, 2, start);
> +	slept = pmu_read_multi(fd[0], 2, start);
>   	measured_usleep(batch_duration_ns / 1000);
> -	slept = pmu_read_multi(fd, 2, val) - slept;
> +	slept = pmu_read_multi(fd[0], 2, val) - slept;
>   
>   	max[0] = 1e9*(val[0] - start[0]) / slept;
>   	max[1] = 1e9*(val[1] - start[1]) / slept;
> @@ -1514,7 +1522,8 @@ test_frequency(int gem_fd)
>   	if (igt_sysfs_get_u32(sysfs, "gt_min_freq_mhz") != min_freq)
>   		igt_warn("Unable to restore min frequency to saved value [%u MHz], now %u MHz\n",
>   			 min_freq, igt_sysfs_get_u32(sysfs, "gt_min_freq_mhz"));
> -	close(fd);
> +	close(fd[0]);
> +	close(fd[1]);
>   
>   	igt_info("Min frequency: requested %.1f, actual %.1f\n",
>   		 min[0], min[1]);
> @@ -1535,7 +1544,7 @@ test_frequency_idle(int gem_fd)
>   	uint32_t min_freq;
>   	uint64_t val[2], start[2], slept;
>   	double idle[2];
> -	int fd, sysfs;
> +	int fd[2], sysfs;
>   
>   	sysfs = igt_sysfs_open(gem_fd);
>   	igt_require(sysfs >= 0);
> @@ -1545,17 +1554,18 @@ test_frequency_idle(int gem_fd)
>   
>   	/* While parked, our convention is to report the GPU at 0Hz */
>   
> -	fd = open_group(gem_fd, I915_PMU_REQUESTED_FREQUENCY, -1);
> -	open_group(gem_fd, I915_PMU_ACTUAL_FREQUENCY, fd);
> +	fd[0] = open_group(gem_fd, I915_PMU_REQUESTED_FREQUENCY, -1);
> +	fd[1] = open_group(gem_fd, I915_PMU_ACTUAL_FREQUENCY, fd[0]);
>   
>   	gem_quiescent_gpu(gem_fd); /* Be idle! */
>   	measured_usleep(2000); /* Wait for timers to cease */
>   
> -	slept = pmu_read_multi(fd, 2, start);
> +	slept = pmu_read_multi(fd[0], 2, start);
>   	measured_usleep(batch_duration_ns / 1000);
> -	slept = pmu_read_multi(fd, 2, val) - slept;
> +	slept = pmu_read_multi(fd[0], 2, val) - slept;
>   
> -	close(fd);
> +	close(fd[0]);
> +	close(fd[1]);
>   
>   	idle[0] = 1e9*(val[0] - start[0]) / slept;
>   	idle[1] = 1e9*(val[1] - start[1]) / slept;
> @@ -1926,57 +1936,73 @@ static int unload_i915(void)
>   	return 0;
>   }
>   
> -static void test_unload(void)
> +static void test_unload(unsigned int num_engines)
>   {
>   	igt_fork(child, 1) {
>   		const struct intel_execution_engine2 *e;
> +		int fd[4 + num_engines], i;

4 + num_engines * 3

Regards,

Tvrtko

>   		uint64_t *buf;
> -		int count = 1;
> +		int count = 0;
>   		int i915;
> -		int fd;
>   
>   		i915 = __drm_open_driver(DRIVER_INTEL);
>   
>   		igt_debug("Opening perf events\n");
> -		fd = open_group(i915, I915_PMU_INTERRUPTS, -1);
> +		fd[count] = open_group(i915, I915_PMU_INTERRUPTS, -1);
> +		if (fd[count] != -1)
> +			count++;
>   
> -		if (perf_i915_open_group(i915, I915_PMU_REQUESTED_FREQUENCY,fd) != -1)
> +		fd[count] = perf_i915_open_group(i915,
> +						 I915_PMU_REQUESTED_FREQUENCY,
> +						 fd[count - 1]);
> +		if (fd[count] != -1)
>   			count++;
> -		if (perf_i915_open_group(i915, I915_PMU_ACTUAL_FREQUENCY, fd) != -1)
> +
> +		fd[count] = perf_i915_open_group(i915,
> +						 I915_PMU_ACTUAL_FREQUENCY,
> +						 fd[count - 1]);
> +		if (fd[count] != -1)
>   			count++;
>   
>   		__for_each_physical_engine(i915, e) {
> -			if (perf_i915_open_group(i915,
> -						 I915_PMU_ENGINE_BUSY(e->class, e->instance),
> -						 fd) != -1)
> +			fd[count] = perf_i915_open_group(i915,
> +							 I915_PMU_ENGINE_BUSY(e->class, e->instance),
> +							 fd[count - 1]);
> +			if (fd[count] != -1)
>   				count++;
>   
> -			if (perf_i915_open_group(i915,
> -						 I915_PMU_ENGINE_SEMA(e->class, e->instance),
> -						 fd) != -1)
> +			fd[count] = perf_i915_open_group(i915,
> +							 I915_PMU_ENGINE_SEMA(e->class, e->instance),
> +							 fd[count - 1]);
> +			if (fd[count] != -1)
>   				count++;
>   
> -			if (perf_i915_open_group(i915,
> -						 I915_PMU_ENGINE_WAIT(e->class, e->instance),
> -						 fd) != -1)
> +			fd[count] = perf_i915_open_group(i915,
> +							 I915_PMU_ENGINE_WAIT(e->class, e->instance),
> +							 fd[count - 1]);
> +			if (fd[count] != -1)
>   				count++;
>   		}
>   
> -		if (perf_i915_open_group(i915, I915_PMU_RC6_RESIDENCY,fd) != -1)
> +		fd[count] = perf_i915_open_group(i915, I915_PMU_RC6_RESIDENCY,
> +						 fd[count - 1]);
> +		if (fd[count] != -1)
>   			count++;
>   
>   		close(i915);
>   
> -		buf = calloc(count + 1, sizeof(uint64_t));
> +		buf = calloc(count, sizeof(uint64_t));
>   		igt_assert(buf);
>   
>   		igt_debug("Read %d events from perf and trial unload\n", count);
> -		pmu_read_multi(fd, count, buf);
> +		pmu_read_multi(fd[0], count, buf);
>   		igt_assert_eq(unload_i915(), -EBUSY);
> -		pmu_read_multi(fd, count, buf);
> +		pmu_read_multi(fd[0], count, buf);
>   
>   		igt_debug("Close perf\n");
> -		close(fd);
> +
> +		for (i = 0; i < count; i++)
> +			close(fd[i]);
>   
>   		free(buf);
>   	}
> @@ -2357,6 +2383,6 @@ igt_main
>   	igt_subtest("module-unload") {
>   		igt_require(unload_i915() == 0);
>   		for (int pass = 0; pass < 3; pass++)
> -			test_unload();
> +			test_unload(num_engines);
>   	}
>   }
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
