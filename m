Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DD2132301
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 10:53:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4B926E819;
	Tue,  7 Jan 2020 09:53:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 528B26E819;
 Tue,  7 Jan 2020 09:53:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jan 2020 01:53:42 -0800
X-IronPort-AV: E=Sophos;i="5.69,405,1571727600"; d="scan'208";a="215496233"
Received: from kumarjai-mobl1.ger.corp.intel.com (HELO [10.251.83.12])
 ([10.251.83.12])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 07 Jan 2020 01:53:40 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200104153746.2175482-1-chris@chris-wilson.co.uk>
 <20200105010643.2207837-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <65f5226b-9f8d-9442-1131-4c4768cfa41c@linux.intel.com>
Date: Tue, 7 Jan 2020 09:53:39 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200105010643.2207837-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/perf: Find the
 associated perf-type for a particular device
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
Cc: igt-dev@lists.freedesktop.org, saurabhg.gupta@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


+Arek, Saurabhg

On 05/01/2020 01:06, Chris Wilson wrote:
> Since with multiple devices, we may have multiple different perf_pmu
> each with their own type, we want to find the right one for the job.
> 
> The tests are run with a specific fd, from which we can extract the
> appropriate bus-id and find the associated perf-type. The performance
> monitoring tools are a little more general and not yet ready to probe
> all device or bind to one in particular, so we just assume the default
> igfx for the time being.
> 
> v2: Extract the bus address from out of sysfs
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: "Robert M. Fosha" <robert.m.fosha@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> ---
>   benchmarks/gem_wsim.c          |  4 +-
>   lib/igt_perf.c                 | 84 +++++++++++++++++++++++++++++++---
>   lib/igt_perf.h                 | 13 ++++--
>   overlay/gem-interrupts.c       |  2 +-
>   overlay/gpu-freq.c             |  4 +-
>   overlay/gpu-top.c              | 12 ++---
>   overlay/rc6.c                  |  2 +-
>   tests/i915/gem_ctx_freq.c      |  2 +-
>   tests/i915/gem_ctx_sseu.c      |  2 +-
>   tests/i915/gem_exec_balancer.c | 18 +++++---
>   tests/perf_pmu.c               | 84 ++++++++++++++++++----------------
>   tools/intel_gpu_top.c          |  2 +-
>   12 files changed, 159 insertions(+), 70 deletions(-)
> 
> diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
> index 6305e0d7a..9156fdc90 100644
> --- a/benchmarks/gem_wsim.c
> +++ b/benchmarks/gem_wsim.c
> @@ -2268,8 +2268,8 @@ busy_init(const struct workload_balancer *balancer, struct workload *wrk)
>   	for (d = &engines[0]; d->id != VCS; d++) {
>   		int pfd;
>   
> -		pfd = perf_i915_open_group(I915_PMU_ENGINE_BUSY(d->class,
> -							        d->inst),
> +		pfd = perf_igfx_open_group(I915_PMU_ENGINE_BUSY(d->class,
> +								d->inst),
>   					   bb->fd);
>   		if (pfd < 0) {
>   			if (d->id != VCS2)
> diff --git a/lib/igt_perf.c b/lib/igt_perf.c
> index e3dec2cc2..840add043 100644
> --- a/lib/igt_perf.c
> +++ b/lib/igt_perf.c
> @@ -4,17 +4,77 @@
>   #include <stdlib.h>
>   #include <string.h>
>   #include <errno.h>
> +#include <sys/stat.h>
>   #include <sys/sysinfo.h>
> +#include <sys/sysmacros.h>
>   
>   #include "igt_perf.h"
>   
> -uint64_t i915_type_id(void)
> +static char *bus_address(int i915, char *path, int pathlen)
> +{
> +	struct stat st;
> +	int len = -1;
> +	int dir;
> +	char *s;
> +
> +	if (fstat(i915, &st) || !S_ISCHR(st.st_mode))
> +		return NULL;
> +
> +	snprintf(path, pathlen, "/sys/dev/char/%d:%d",
> +		 major(st.st_rdev), minor(st.st_rdev));
> +
> +	dir = open(path, O_RDONLY);
> +	if (dir != -1) {
> +		len = readlinkat(dir, "device", path, pathlen - 1);
> +		close(dir);
> +	}
> +	if (len < 0)
> +		return NULL;
> +
> +	path[len] = '\0';
> +
> +	/* strip off the relative path */
> +	s = strrchr(path, '/');
> +	if (s)
> +		memmove(path, s + 1, len - (s - path) + 1);
> +
> +	return path;
> +}
> +
> +const char *i915_perf_device(int i915, char *buf, int buflen)
> +{
> +#define prefix "i915-"
> +#define plen strlen(prefix)
> +
> +	if (!buf || buflen < plen)
> +		return "i915";
> +
> +	memcpy(buf, prefix, plen);
> +
> +	if (!bus_address(i915, buf + plen, buflen - plen) ||
> +	    strcmp(buf + plen, "0000:00:02.0") == 0) /* legacy name for igfx */
> +		buf[plen - 1] = '\0';
> +
> +	return buf;
> +}

So DRM fd -> PCI string conversion, yes? On a glance it looks okay. 
However Arek probably has this data as part of "[PATCH i-g-t 0/4] device 
selection && lsgpu" (https://patchwork.freedesktop.org/series/70285/).

Also:

https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/52
https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/51

And VLK-5588.

This patch is overlap with #52 and then #51/VLK-5588 is about allowing 
card selection for tools.

How to meld the two with minimum effort? We could put this in and then 
later replace the PCI name resolve with a library routine and re-adjust 
tools to allow card selection via some mechanism.

Regards,

Tvrtko

> +
> +uint64_t i915_perf_type_id(int i915)
> +{
> +	char buf[80];
> +
> +	return igt_perf_type_id(i915_perf_device(i915, buf, sizeof(buf)));
> +}
> +
> +uint64_t igt_perf_type_id(const char *device)
>   {
>   	char buf[64];
>   	ssize_t ret;
>   	int fd;
>   
> -	fd = open("/sys/bus/event_source/devices/i915/type", O_RDONLY);
> +	snprintf(buf, sizeof(buf),
> +		 "/sys/bus/event_source/devices/%s/type", device);
> +
> +	fd = open(buf, O_RDONLY);
>   	if (fd < 0)
>   		return 0;
>   
> @@ -52,15 +112,27 @@ _perf_open(uint64_t type, uint64_t config, int group, uint64_t format)
>   	return ret;
>   }
>   
> -int perf_i915_open(uint64_t config)
> +int perf_igfx_open(uint64_t config)
> +{
> +	return _perf_open(igt_perf_type_id("i915"), config, -1,
> +			  PERF_FORMAT_TOTAL_TIME_ENABLED);
> +}
> +
> +int perf_igfx_open_group(uint64_t config, int group)
> +{
> +	return _perf_open(igt_perf_type_id("i915"), config, group,
> +			  PERF_FORMAT_TOTAL_TIME_ENABLED | PERF_FORMAT_GROUP);
> +}
> +
> +int perf_i915_open(int i915, uint64_t config)
>   {
> -	return _perf_open(i915_type_id(), config, -1,
> +	return _perf_open(i915_perf_type_id(i915), config, -1,
>   			  PERF_FORMAT_TOTAL_TIME_ENABLED);
>   }
>   
> -int perf_i915_open_group(uint64_t config, int group)
> +int perf_i915_open_group(int i915, uint64_t config, int group)
>   {
> -	return _perf_open(i915_type_id(), config, group,
> +	return _perf_open(i915_perf_type_id(i915), config, group,
>   			  PERF_FORMAT_TOTAL_TIME_ENABLED | PERF_FORMAT_GROUP);
>   }
>   
> diff --git a/lib/igt_perf.h b/lib/igt_perf.h
> index e00718f47..a8328c70c 100644
> --- a/lib/igt_perf.h
> +++ b/lib/igt_perf.h
> @@ -51,10 +51,17 @@ perf_event_open(struct perf_event_attr *attr,
>       return syscall(__NR_perf_event_open, attr, pid, cpu, group_fd, flags);
>   }
>   
> -uint64_t i915_type_id(void);
> -int perf_i915_open(uint64_t config);
> -int perf_i915_open_group(uint64_t config, int group);
> +uint64_t igt_perf_type_id(const char *device);
>   int igt_perf_open(uint64_t type, uint64_t config);
>   int igt_perf_open_group(uint64_t type, uint64_t config, int group);
>   
> +const char *i915_perf_device(int i915, char *buf, int buflen);
> +uint64_t i915_perf_type_id(int i915);
> +
> +int perf_igfx_open(uint64_t config);
> +int perf_igfx_open_group(uint64_t config, int group);
> +
> +int perf_i915_open(int i915, uint64_t config);
> +int perf_i915_open_group(int i915, uint64_t config, int group);
> +
>   #endif /* I915_PERF_H */
> diff --git a/overlay/gem-interrupts.c b/overlay/gem-interrupts.c
> index 0233fbb05..be73b6931 100644
> --- a/overlay/gem-interrupts.c
> +++ b/overlay/gem-interrupts.c
> @@ -113,7 +113,7 @@ int gem_interrupts_init(struct gem_interrupts *irqs)
>   {
>   	memset(irqs, 0, sizeof(*irqs));
>   
> -	irqs->fd = perf_i915_open(I915_PMU_INTERRUPTS);
> +	irqs->fd = perf_igfx_open(I915_PMU_INTERRUPTS);
>   	if (irqs->fd < 0 && interrupts_read() < 0)
>   		irqs->error = ENODEV;
>   
> diff --git a/overlay/gpu-freq.c b/overlay/gpu-freq.c
> index 0d8032592..b73157d39 100644
> --- a/overlay/gpu-freq.c
> +++ b/overlay/gpu-freq.c
> @@ -37,8 +37,8 @@ static int perf_open(void)
>   {
>   	int fd;
>   
> -	fd = perf_i915_open_group(I915_PMU_ACTUAL_FREQUENCY, -1);
> -	if (perf_i915_open_group(I915_PMU_REQUESTED_FREQUENCY, fd) < 0) {
> +	fd = perf_igfx_open_group(I915_PMU_ACTUAL_FREQUENCY, -1);
> +	if (perf_igfx_open_group(I915_PMU_REQUESTED_FREQUENCY, fd) < 0) {
>   		close(fd);
>   		fd = -1;
>   	}
> diff --git a/overlay/gpu-top.c b/overlay/gpu-top.c
> index 6cec2e943..32123abdd 100644
> --- a/overlay/gpu-top.c
> +++ b/overlay/gpu-top.c
> @@ -58,16 +58,16 @@ static int perf_init(struct gpu_top *gt)
>   
>   	d = &engines[0];
>   
> -	gt->fd = perf_i915_open_group(I915_PMU_ENGINE_BUSY(d->class, d->inst),
> +	gt->fd = perf_igfx_open_group(I915_PMU_ENGINE_BUSY(d->class, d->inst),
>   				      -1);
>   	if (gt->fd < 0)
>   		return -1;
>   
> -	if (perf_i915_open_group(I915_PMU_ENGINE_WAIT(d->class, d->inst),
> +	if (perf_igfx_open_group(I915_PMU_ENGINE_WAIT(d->class, d->inst),
>   				 gt->fd) >= 0)
>   		gt->have_wait = 1;
>   
> -	if (perf_i915_open_group(I915_PMU_ENGINE_SEMA(d->class, d->inst),
> +	if (perf_igfx_open_group(I915_PMU_ENGINE_SEMA(d->class, d->inst),
>   				 gt->fd) >= 0)
>   		gt->have_sema = 1;
>   
> @@ -75,19 +75,19 @@ static int perf_init(struct gpu_top *gt)
>   	gt->num_rings = 1;
>   
>   	for (d++; d->name; d++) {
> -		if (perf_i915_open_group(I915_PMU_ENGINE_BUSY(d->class,
> +		if (perf_igfx_open_group(I915_PMU_ENGINE_BUSY(d->class,
>   							      d->inst),
>   					gt->fd) < 0)
>   			continue;
>   
>   		if (gt->have_wait &&
> -		    perf_i915_open_group(I915_PMU_ENGINE_WAIT(d->class,
> +		    perf_igfx_open_group(I915_PMU_ENGINE_WAIT(d->class,
>   							      d->inst),
>   					 gt->fd) < 0)
>   			return -1;
>   
>   		if (gt->have_sema &&
> -		    perf_i915_open_group(I915_PMU_ENGINE_SEMA(d->class,
> +		    perf_igfx_open_group(I915_PMU_ENGINE_SEMA(d->class,
>   							      d->inst),
>   				   gt->fd) < 0)
>   			return -1;
> diff --git a/overlay/rc6.c b/overlay/rc6.c
> index b5286f0cf..69f95f288 100644
> --- a/overlay/rc6.c
> +++ b/overlay/rc6.c
> @@ -39,7 +39,7 @@ int rc6_init(struct rc6 *rc6)
>   {
>   	memset(rc6, 0, sizeof(*rc6));
>   
> -	rc6->fd = perf_i915_open(I915_PMU_RC6_RESIDENCY);
> +	rc6->fd = perf_igfx_open(I915_PMU_RC6_RESIDENCY);
>   	if (rc6->fd < 0) {
>   		struct stat st;
>   		if (stat("/sys/class/drm/card0/power", &st) < 0)
> diff --git a/tests/i915/gem_ctx_freq.c b/tests/i915/gem_ctx_freq.c
> index 89f3d11ef..5d2d3ec31 100644
> --- a/tests/i915/gem_ctx_freq.c
> +++ b/tests/i915/gem_ctx_freq.c
> @@ -136,7 +136,7 @@ static void sysfs_range(int i915)
>   
>   	triangle_fill(frequencies, N_STEPS, sys_min, sys_max);
>   
> -	pmu = perf_i915_open(I915_PMU_REQUESTED_FREQUENCY);
> +	pmu = perf_i915_open(i915, I915_PMU_REQUESTED_FREQUENCY);
>   	igt_require(pmu >= 0);
>   
>   	for (int outer = 0; outer <= 2*N_STEPS; outer++) {
> diff --git a/tests/i915/gem_ctx_sseu.c b/tests/i915/gem_ctx_sseu.c
> index 48e4411c8..38dc584bc 100644
> --- a/tests/i915/gem_ctx_sseu.c
> +++ b/tests/i915/gem_ctx_sseu.c
> @@ -119,7 +119,7 @@ kernel_has_per_context_sseu_support(int fd)
>   
>   static bool has_engine(int fd, unsigned int class, unsigned int instance)
>   {
> -	int pmu = perf_i915_open(I915_PMU_ENGINE_BUSY(class, instance));
> +	int pmu = perf_i915_open(fd, I915_PMU_ENGINE_BUSY(class, instance));
>   
>   	if (pmu >= 0)
>   		close(pmu);
> diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
> index f4909a978..cebcc39c7 100644
> --- a/tests/i915/gem_exec_balancer.c
> +++ b/tests/i915/gem_exec_balancer.c
> @@ -60,7 +60,7 @@ static bool has_class_instance(int i915, uint16_t class, uint16_t instance)
>   {
>   	int fd;
>   
> -	fd = perf_i915_open(I915_PMU_ENGINE_BUSY(class, instance));
> +	fd = perf_i915_open(i915, I915_PMU_ENGINE_BUSY(class, instance));
>   	if (fd != -1) {
>   		close(fd);
>   		return true;
> @@ -483,9 +483,11 @@ static void measure_all_load(int pmu, double *v, unsigned int num, int period_us
>   	}
>   }
>   
> -static int add_pmu(int pmu, const struct i915_engine_class_instance *ci)
> +static int
> +add_pmu(int i915, int pmu, const struct i915_engine_class_instance *ci)
>   {
> -	return perf_i915_open_group(I915_PMU_ENGINE_BUSY(ci->engine_class,
> +	return perf_i915_open_group(i915,
> +				    I915_PMU_ENGINE_BUSY(ci->engine_class,
>   							 ci->engine_instance),
>   				    pmu);
>   }
> @@ -514,7 +516,8 @@ static void check_individual_engine(int i915,
>   	double load;
>   	int pmu;
>   
> -	pmu = perf_i915_open(I915_PMU_ENGINE_BUSY(ci[idx].engine_class,
> +	pmu = perf_i915_open(i915,
> +			     I915_PMU_ENGINE_BUSY(ci[idx].engine_class,
>   						  ci[idx].engine_instance));
>   
>   	spin = igt_spin_new(i915, .ctx = ctx, .engine = idx + 1);
> @@ -636,8 +639,9 @@ static void bonded(int i915, unsigned int flags)
>   
>   			pmu[0] = -1;
>   			for (int i = 0; i < limit; i++)
> -				pmu[i] = add_pmu(pmu[0], &siblings[i]);
> -			pmu[limit] = add_pmu(pmu[0], &master_engines[bond]);
> +				pmu[i] = add_pmu(i915, pmu[0], &siblings[i]);
> +			pmu[limit] = add_pmu(i915,
> +					     pmu[0], &master_engines[bond]);
>   
>   			igt_assert(siblings[bond].engine_class !=
>   				   master_engines[bond].engine_class);
> @@ -1346,7 +1350,7 @@ static void full(int i915, unsigned int flags)
>   		for (unsigned int n = 0; n < count; n++) {
>   			uint32_t ctx;
>   
> -			pmu[n] = add_pmu(pmu[0], &ci[n]);
> +			pmu[n] = add_pmu(i915, pmu[0], &ci[n]);
>   
>   			if (flags & PULSE) {
>   				struct drm_i915_gem_execbuffer2 eb = {
> diff --git a/tests/perf_pmu.c b/tests/perf_pmu.c
> index e1bbf2410..3e179daef 100644
> --- a/tests/perf_pmu.c
> +++ b/tests/perf_pmu.c
> @@ -50,22 +50,22 @@ IGT_TEST_DESCRIPTION("Test the i915 pmu perf interface");
>   const double tolerance = 0.05f;
>   const unsigned long batch_duration_ns = 500e6;
>   
> -static int open_pmu(uint64_t config)
> +static int open_pmu(int i915, uint64_t config)
>   {
>   	int fd;
>   
> -	fd = perf_i915_open(config);
> +	fd = perf_i915_open(i915, config);
>   	igt_skip_on(fd < 0 && errno == ENODEV);
>   	igt_assert(fd >= 0);
>   
>   	return fd;
>   }
>   
> -static int open_group(uint64_t config, int group)
> +static int open_group(int i915, uint64_t config, int group)
>   {
>   	int fd;
>   
> -	fd = perf_i915_open_group(config, group);
> +	fd = perf_i915_open_group(i915, config, group);
>   	igt_skip_on(fd < 0 && errno == ENODEV);
>   	igt_assert(fd >= 0);
>   
> @@ -79,7 +79,8 @@ init(int gem_fd, const struct intel_execution_engine2 *e, uint8_t sample)
>   	bool exists;
>   
>   	errno = 0;
> -	fd = perf_i915_open(__I915_PMU_ENGINE(e->class, e->instance, sample));
> +	fd = perf_i915_open(gem_fd,
> +			    __I915_PMU_ENGINE(e->class, e->instance, sample));
>   	if (fd < 0)
>   		err = errno;
>   
> @@ -278,7 +279,7 @@ single(int gem_fd, const struct intel_execution_engine2 *e, unsigned int flags)
>   	uint64_t val;
>   	int fd;
>   
> -	fd = open_pmu(I915_PMU_ENGINE_BUSY(e->class, e->instance));
> +	fd = open_pmu(gem_fd, I915_PMU_ENGINE_BUSY(e->class, e->instance));
>   
>   	if (flags & TEST_BUSY)
>   		spin = spin_sync(gem_fd, 0, e);
> @@ -332,7 +333,7 @@ busy_start(int gem_fd, const struct intel_execution_engine2 *e)
>   
>   	spin = __spin_sync(gem_fd, 0, e);
>   
> -	fd = open_pmu(I915_PMU_ENGINE_BUSY(e->class, e->instance));
> +	fd = open_pmu(gem_fd, I915_PMU_ENGINE_BUSY(e->class, e->instance));
>   
>   	val = __pmu_read_single(fd, &ts[0]);
>   	slept = measured_usleep(batch_duration_ns / 1000);
> @@ -384,7 +385,7 @@ busy_double_start(int gem_fd, const struct intel_execution_engine2 *e)
>   	 * Open PMU as fast as possible after the second spin batch in attempt
>   	 * to be faster than the driver handling lite-restore.
>   	 */
> -	fd = open_pmu(I915_PMU_ENGINE_BUSY(e->class, e->instance));
> +	fd = open_pmu(gem_fd, I915_PMU_ENGINE_BUSY(e->class, e->instance));
>   
>   	val = __pmu_read_single(fd, &ts[0]);
>   	slept = measured_usleep(batch_duration_ns / 1000);
> @@ -453,7 +454,8 @@ busy_check_all(int gem_fd, const struct intel_execution_engine2 *e,
>   		if (e->class == e_->class && e->instance == e_->instance)
>   			busy_idx = i;
>   
> -		fd[i++] = open_group(I915_PMU_ENGINE_BUSY(e_->class,
> +		fd[i++] = open_group(gem_fd,
> +				     I915_PMU_ENGINE_BUSY(e_->class,
>   							  e_->instance),
>   				     fd[0]);
>   	}
> @@ -527,7 +529,7 @@ most_busy_check_all(int gem_fd, const struct intel_execution_engine2 *e,
>   
>   	fd[0] = -1;
>   	for (i = 0; i < num_engines; i++)
> -		fd[i] = open_group(val[i], fd[0]);
> +		fd[i] = open_group(gem_fd, val[i], fd[0]);
>   
>   	/* Small delay to allow engines to start. */
>   	usleep(__spin_wait(gem_fd, spin) * num_engines / 1e3);
> @@ -581,7 +583,7 @@ all_busy_check_all(int gem_fd, const unsigned int num_engines,
>   
>   	fd[0] = -1;
>   	for (i = 0; i < num_engines; i++)
> -		fd[i] = open_group(val[i], fd[0]);
> +		fd[i] = open_group(gem_fd, val[i], fd[0]);
>   
>   	/* Small delay to allow engines to start. */
>   	usleep(__spin_wait(gem_fd, spin) * num_engines / 1e3);
> @@ -613,8 +615,9 @@ no_sema(int gem_fd, const struct intel_execution_engine2 *e, unsigned int flags)
>   	uint64_t val[2][2];
>   	int fd;
>   
> -	fd = open_group(I915_PMU_ENGINE_SEMA(e->class, e->instance), -1);
> -	open_group(I915_PMU_ENGINE_WAIT(e->class, e->instance), fd);
> +	fd = open_group(gem_fd,
> +			I915_PMU_ENGINE_SEMA(e->class, e->instance), -1);
> +	open_group(gem_fd, I915_PMU_ENGINE_WAIT(e->class, e->instance), fd);
>   
>   	if (flags & TEST_BUSY)
>   		spin = spin_sync(gem_fd, 0, e);
> @@ -712,7 +715,7 @@ sema_wait(int gem_fd, const struct intel_execution_engine2 *e,
>   	 * to expected time spent in semaphore wait state.
>   	 */
>   
> -	fd = open_pmu(I915_PMU_ENGINE_SEMA(e->class, e->instance));
> +	fd = open_pmu(gem_fd, I915_PMU_ENGINE_SEMA(e->class, e->instance));
>   
>   	val[0] = pmu_read_single(fd);
>   
> @@ -817,8 +820,9 @@ sema_busy(int gem_fd,
>   
>   	igt_require(gem_scheduler_has_semaphores(gem_fd));
>   
> -	fd = open_group(I915_PMU_ENGINE_SEMA(e->class, e->instance), -1);
> -	open_group(I915_PMU_ENGINE_BUSY(e->class, e->instance), fd);
> +	fd = open_group(gem_fd,
> +			I915_PMU_ENGINE_SEMA(e->class, e->instance), -1);
> +	open_group(gem_fd, I915_PMU_ENGINE_BUSY(e->class, e->instance), fd);
>   
>   	__for_each_physical_engine(gem_fd, signal) {
>   		if (e->class == signal->class &&
> @@ -992,7 +996,8 @@ event_wait(int gem_fd, const struct intel_execution_engine2 *e)
>   		data.pipe = p;
>   		prepare_crtc(&data, gem_fd, output);
>   
> -		fd = open_pmu(I915_PMU_ENGINE_WAIT(e->class, e->instance));
> +		fd = open_pmu(gem_fd,
> +			      I915_PMU_ENGINE_WAIT(e->class, e->instance));
>   
>   		val[0] = pmu_read_single(fd);
>   
> @@ -1044,14 +1049,14 @@ multi_client(int gem_fd, const struct intel_execution_engine2 *e)
>   
>   	gem_quiescent_gpu(gem_fd);
>   
> -	fd[0] = open_pmu(config);
> +	fd[0] = open_pmu(gem_fd, config);
>   
>   	/*
>   	 * Second PMU client which is initialized after the first one,
>   	 * and exists before it, should not affect accounting as reported
>   	 * in the first client.
>   	 */
> -	fd[1] = open_pmu(config);
> +	fd[1] = open_pmu(gem_fd, config);
>   
>   	spin = spin_sync(gem_fd, 0, e);
>   
> @@ -1085,7 +1090,7 @@ multi_client(int gem_fd, const struct intel_execution_engine2 *e)
>    *  - cpu != 0 is not supported since i915 PMU only allows running on one cpu
>    *    and that is normally CPU0.
>    */
> -static void invalid_init(void)
> +static void invalid_init(int i915)
>   {
>   	struct perf_event_attr attr;
>   
> @@ -1093,7 +1098,7 @@ static void invalid_init(void)
>   do { \
>   	memset(&attr, 0, sizeof (attr)); \
>   	attr.config = I915_PMU_ENGINE_BUSY(I915_ENGINE_CLASS_RENDER, 0); \
> -	attr.type = i915_type_id(); \
> +	attr.type = i915_perf_type_id(i915); \
>   	igt_assert(attr.type != 0); \
>   	errno = 0; \
>   } while(0)
> @@ -1112,11 +1117,11 @@ do { \
>   	igt_assert_eq(errno, EINVAL);
>   }
>   
> -static void init_other(unsigned int i, bool valid)
> +static void init_other(int i915, unsigned int i, bool valid)
>   {
>   	int fd;
>   
> -	fd = perf_i915_open(__I915_PMU_OTHER(i));
> +	fd = perf_i915_open(i915, __I915_PMU_OTHER(i));
>   	igt_require(!(fd < 0 && errno == ENODEV));
>   	if (valid) {
>   		igt_assert(fd >= 0);
> @@ -1128,11 +1133,11 @@ static void init_other(unsigned int i, bool valid)
>   	close(fd);
>   }
>   
> -static void read_other(unsigned int i, bool valid)
> +static void read_other(int i915, unsigned int i, bool valid)
>   {
>   	int fd;
>   
> -	fd = perf_i915_open(__I915_PMU_OTHER(i));
> +	fd = perf_i915_open(i915, __I915_PMU_OTHER(i));
>   	igt_require(!(fd < 0 && errno == ENODEV));
>   	if (valid) {
>   		igt_assert(fd >= 0);
> @@ -1163,7 +1168,8 @@ static void cpu_hotplug(int gem_fd)
>   
>   	igt_require(cpu0_hotplug_support());
>   
> -	fd = open_pmu(I915_PMU_ENGINE_BUSY(I915_ENGINE_CLASS_RENDER, 0));
> +	fd = open_pmu(gem_fd,
> +		      I915_PMU_ENGINE_BUSY(I915_ENGINE_CLASS_RENDER, 0));
>   
>   	/*
>   	 * Create two spinners so test can ensure shorter gaps in engine
> @@ -1292,7 +1298,7 @@ test_interrupts(int gem_fd)
>   
>   	gem_quiescent_gpu(gem_fd);
>   
> -	fd = open_pmu(I915_PMU_INTERRUPTS);
> +	fd = open_pmu(gem_fd, I915_PMU_INTERRUPTS);
>   
>   	/* Queue spinning batches. */
>   	for (int i = 0; i < target; i++) {
> @@ -1355,7 +1361,7 @@ test_interrupts_sync(int gem_fd)
>   
>   	gem_quiescent_gpu(gem_fd);
>   
> -	fd = open_pmu(I915_PMU_INTERRUPTS);
> +	fd = open_pmu(gem_fd, I915_PMU_INTERRUPTS);
>   
>   	/* Queue spinning batches. */
>   	for (int i = 0; i < target; i++)
> @@ -1409,8 +1415,8 @@ test_frequency(int gem_fd)
>   	igt_require(max_freq > min_freq);
>   	igt_require(boost_freq > min_freq);
>   
> -	fd = open_group(I915_PMU_REQUESTED_FREQUENCY, -1);
> -	open_group(I915_PMU_ACTUAL_FREQUENCY, fd);
> +	fd = open_group(gem_fd, I915_PMU_REQUESTED_FREQUENCY, -1);
> +	open_group(gem_fd, I915_PMU_ACTUAL_FREQUENCY, fd);
>   
>   	/*
>   	 * Set GPU to min frequency and read PMU counters.
> @@ -1499,8 +1505,8 @@ test_frequency_idle(int gem_fd)
>   
>   	/* While parked, our convention is to report the GPU at 0Hz */
>   
> -	fd = open_group(I915_PMU_REQUESTED_FREQUENCY, -1);
> -	open_group(I915_PMU_ACTUAL_FREQUENCY, fd);
> +	fd = open_group(gem_fd, I915_PMU_REQUESTED_FREQUENCY, -1);
> +	open_group(gem_fd, I915_PMU_ACTUAL_FREQUENCY, fd);
>   
>   	gem_quiescent_gpu(gem_fd); /* Be idle! */
>   	measured_usleep(2000); /* Wait for timers to cease */
> @@ -1554,7 +1560,7 @@ test_rc6(int gem_fd, unsigned int flags)
>   
>   	gem_quiescent_gpu(gem_fd);
>   
> -	fd = open_pmu(I915_PMU_RC6_RESIDENCY);
> +	fd = open_pmu(gem_fd, I915_PMU_RC6_RESIDENCY);
>   
>   	if (flags & TEST_RUNTIME_PM) {
>   		drmModeRes *res;
> @@ -1651,7 +1657,7 @@ test_enable_race(int gem_fd, const struct intel_execution_engine2 *e)
>   		usleep(500e3);
>   
>   		/* Enable the PMU. */
> -		fd = open_pmu(config);
> +		fd = open_pmu(gem_fd, config);
>   
>   		/* Stop load and close the PMU. */
>   		igt_stop_helper(&engine_load);
> @@ -1797,7 +1803,7 @@ accuracy(int gem_fd, const struct intel_execution_engine2 *e,
>   		igt_spin_free(gem_fd, spin);
>   	}
>   
> -	fd = open_pmu(I915_PMU_ENGINE_BUSY(e->class, e->instance));
> +	fd = open_pmu(gem_fd, I915_PMU_ENGINE_BUSY(e->class, e->instance));
>   
>   	/* Let the child run. */
>   	read(link[0], &expected, sizeof(expected));
> @@ -1835,7 +1841,7 @@ igt_main
>   		fd = drm_open_driver_master(DRIVER_INTEL);
>   
>   		igt_require_gem(fd);
> -		igt_require(i915_type_id() > 0);
> +		igt_require(i915_perf_type_id(fd) > 0);
>   
>   		__for_each_physical_engine(fd, e)
>   			num_engines++;
> @@ -1845,7 +1851,7 @@ igt_main
>   	 * Test invalid access via perf API is rejected.
>   	 */
>   	igt_subtest("invalid-init")
> -		invalid_init();
> +		invalid_init(fd);
>   
>   	__for_each_physical_engine(fd, e) {
>   		const unsigned int pct[] = { 2, 50, 98 };
> @@ -1996,10 +2002,10 @@ igt_main
>   	 */
>   	for (i = 0; i < num_other_metrics + 1; i++) {
>   		igt_subtest_f("other-init-%u", i)
> -			init_other(i, i < num_other_metrics);
> +			init_other(fd, i, i < num_other_metrics);
>   
>   		igt_subtest_f("other-read-%u", i)
> -			read_other(i, i < num_other_metrics);
> +			read_other(fd, i, i < num_other_metrics);
>   	}
>   
>   	/**
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index cc8db7c53..8197482dd 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -423,7 +423,7 @@ static const char *imc_data_writes_unit(void)
>   ({ \
>   	int fd__; \
>   \
> -	fd__ = perf_i915_open_group((pmu)->config, (fd)); \
> +	fd__ = perf_igfx_open_group((pmu)->config, (fd)); \
>   	if (fd__ >= 0) { \
>   		if ((fd) == -1) \
>   			(fd) = fd__; \
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
