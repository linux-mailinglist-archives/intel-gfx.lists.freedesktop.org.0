Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3459F6E31
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2024 20:28:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74EEC10E468;
	Wed, 18 Dec 2024 19:27:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lfemBoUp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E204510E337;
 Wed, 18 Dec 2024 19:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734550076; x=1766086076;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=OKRs8my+z79hFKuaPfPSwIDfOBUQpK0MFeakhsyCPJU=;
 b=lfemBoUpQ/AiMhIK9ZmP0+3pPeVzYu0Mx4PM5Yn4VbRN1ll7jFRR1NuO
 G+MkHxGGYV/cnz47ZUykXjNLvNMqacFDDK8Dvjbxn9+G7Ugv04mWzFa0C
 BALsho/Drr3xDPm6wJ191wiAapz8ncAIRTRiC0tZ0G7gUD/gE1H6Znbf6
 endC5vnVWDyb2T7AhrT8tot/2WEBGzOkE2wMPX91ITfYwKmIx+ASymx8X
 ZnTfR4kmIgCwI4A5GNi9Jq5V0RVtsHveDTQBbR9ji7pVpJDYFeZ6JS5jj
 GTYfUmOeTJ2OrV63XI7nqkvmhjDjb2ZgWCIYMkNBq5kkf3rKlb+DPFfVw A==;
X-CSE-ConnectionGUID: 0d+3ladYQt6PzafWFtIB/A==
X-CSE-MsgGUID: ctOR5DNfTfCDVrcmHb/Z9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="22633063"
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="22633063"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 11:27:56 -0800
X-CSE-ConnectionGUID: XR71BdL6RGKxkBNG2/WFTQ==
X-CSE-MsgGUID: OAZutW4lQuO2PITZGmm/Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="128752233"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.211.136.201])
 by orviesa002-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Dec 2024 11:27:55 -0800
Date: Wed, 18 Dec 2024 20:27:52 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH i-g-t] tools/gputop: Add GT freq and c6 stats
Message-ID: <20241218192752.6qe6osmuprxpicd4@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
References: <20241216003238.2953498-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241216003238.2953498-1-vinay.belgaumkar@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Vinay,
On 2024-12-15 at 16:32:38 -0800, Vinay Belgaumkar wrote:
> Add GT C6 and Frequency support. These will use the PMU interface
> and are displayed per GT/device in the header.
> 
> GT: 0, c6:  94.54% req_freq:  750.63 MHz act_freq:    0.00 MHz
> GT: 1, c6:   2.75% req_freq: 1200.71 MHz act_freq: 1112.66 MHz

Will it work for other drivers? Without pmu?

> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>  lib/igt_drm_clients.c |  17 +++++
>  lib/igt_drm_clients.h |  25 +++++++
>  lib/igt_perf.c        |  57 +++++++++++++-
>  lib/igt_perf.h        |   2 +

Please split lib changes into separate patches as they
could be used by xe_drm_fdinfo test.

>  tools/gputop.c        | 168 +++++++++++++++++++++++++++++++++++++++++-
>  tools/intel_gpu_top.c |  18 +----

imho here also it could be splitted into two patches each for
separate tool.

>  tools/meson.build     |   2 +-
>  7 files changed, 271 insertions(+), 18 deletions(-)
> 
> diff --git a/lib/igt_drm_clients.c b/lib/igt_drm_clients.c
> index 858cd3645..add2696fa 100644
> --- a/lib/igt_drm_clients.c
> +++ b/lib/igt_drm_clients.c
> @@ -19,6 +19,7 @@
>  
>  #include "igt_drm_clients.h"
>  #include "igt_drm_fdinfo.h"
> +#include "igt_perf.h"
>  
>  #ifndef ARRAY_SIZE
>  #define ARRAY_SIZE(array) (sizeof(array) / sizeof(array[0]))
> @@ -164,6 +165,7 @@ igt_drm_client_add(struct igt_drm_clients *clients,
>  {
>  	struct igt_drm_client *c;
>  	unsigned int i;
> +	char *path;
>  
>  	assert(!igt_drm_clients_find(clients, IGT_DRM_CLIENT_ALIVE,
>  				     drm_minor, info->id));
> @@ -190,6 +192,18 @@ igt_drm_client_add(struct igt_drm_clients *clients,
>  	c->drm_minor = drm_minor;
>  	c->clients = clients;
>  
> +	if (info->driver && info->pdev) {
> +		snprintf(c->device_events_path, sizeof(c->device_events_path) - 1,
> +			 "%s_%s", info->driver, info->pdev);
> +		path = c->device_events_path;
> +		for (; *path; ++path)
> +			if (*path == ':')
> +				*path = '_';
> +		c->pmu_fd = -1;
> +		c->num_gts = 0;
> +		c->num_pmu_counters = 0;
> +	}
> +
>  	/* Engines */
>  	c->engines = calloc(1, sizeof(*c->engines));
>  	assert(c->engines);
> @@ -262,6 +276,9 @@ void igt_drm_client_free(struct igt_drm_client *c, bool clear)
>  
>  	free(c->memory);
>  
> +	if (c->pmu_fd != -1)
> +		close(c->pmu_fd);
> +
>  	if (clear)
>  		memset(c, 0, sizeof(*c));
>  }
> diff --git a/lib/igt_drm_clients.h b/lib/igt_drm_clients.h
> index 946d709de..9d5b966ee 100644
> --- a/lib/igt_drm_clients.h
> +++ b/lib/igt_drm_clients.h
> @@ -56,6 +56,22 @@ struct igt_drm_client_regions {
>  
>  struct igt_drm_clients;
>  
> +struct pmu_pair {
> +	uint64_t cur;
> +	uint64_t prev;
> +};
> +
> +struct pmu_counter {
> +	uint64_t type;
> +	uint64_t config;
> +	unsigned int idx;
> +	struct pmu_pair val;
> +	double scale;
> +	const char *units;
> +	bool present;
> +};
> +
> +#define MAX_GTS 4
>  struct igt_drm_client {
>  	struct igt_drm_clients *clients; /* Owning list. */
>  
> @@ -86,6 +102,15 @@ struct igt_drm_client {
>  		uint64_t last_total_cycles; /* Engine total cycles data as parsed from fdinfo. */
>  	} *utilization; /* Array of engine utilization */
>  
> +	char device_events_path[300];
> +	int num_gts;
> +	int pmu_fd;
> +	int num_pmu_counters;
> +	struct pmu_counter freq_req_gt[MAX_GTS];
> +	struct pmu_counter freq_act_gt[MAX_GTS];
> +	struct pmu_counter c6_gt[MAX_GTS];
> +	uint64_t ts_cur, ts_prev;
> +
>  	struct drm_client_meminfo *memory; /* Array of region memory utilisation as parsed from fdinfo. */
>  };
>  
> diff --git a/lib/igt_perf.c b/lib/igt_perf.c
> index 3866c6d77..14c362515 100644
> --- a/lib/igt_perf.c
> +++ b/lib/igt_perf.c
> @@ -129,6 +129,61 @@ uint64_t igt_perf_type_id(const char *device)
>  	return strtoull(buf, NULL, 0);
>  }
>  

Add description to each new library function.

> +int perf_xe_format_gt_id(const char *device)
> +{
> +	char buf[150];
> +	ssize_t ret;
> +	int fd, start, end;
> +
> +	snprintf(buf, sizeof(buf),
> +		 "/sys/bus/event_source/devices/%s/format/gt_id",
> +		 device);
> +
> +	fd = open(buf, O_RDONLY);
> +	if (fd < 0)
> +		return -EINVAL;
> +
> +	ret = read(fd, buf, sizeof(buf) - 1);
> +	close(fd);
> +	if (ret < 1)
> +		return ret;
> +
> +	buf[ret] = '\0';
> +	ret = sscanf(buf, "config:%d-%d", &start, &end);
> +	if (ret != 2)
> +		return -EINVAL;
> +

Why only start?

> +	return start;
> +}
> +

Same here, add description.

> +int perf_xe_event_config(const char *device, const char *event, uint64_t *config)
> +{
> +	char buf[150];
> +	ssize_t ret;
> +	int fd;
> +
> +	snprintf(buf, sizeof(buf),
> +		 "/sys/bus/event_source/devices/%s/events/%s",
> +		 device,
> +		 event);
> +
> +	fd = open(buf, O_RDONLY);
> +	if (fd < 0)
> +		return -EINVAL;
> +
> +	ret = read(fd, buf, sizeof(buf) - 1);
> +	close(fd);
> +	if (ret < 1)
> +		return ret;
> +
> +	buf[ret] = '\0';
> +	ret = sscanf(buf, "config=0x%lx", config);
> +	if (ret != 1)
> +		return -EINVAL;
> +
> +	return ret;
> +}
> +
>  int igt_perf_events_dir(int i915)
>  {
>  	char buf[80];
> @@ -180,7 +235,7 @@ int perf_igfx_open_group(uint64_t config, int group)
>  int perf_xe_open(int xe, uint64_t config)
>  {
>  	return _perf_open(xe_perf_type_id(xe), config, -1,
> -			PERF_FORMAT_TOTAL_TIME_ENABLED);
> +			  PERF_FORMAT_TOTAL_TIME_ENABLED);

Please do not make style corrections in a bigger patch.

>  }
>  
>  int perf_i915_open(int i915, uint64_t config)
> diff --git a/lib/igt_perf.h b/lib/igt_perf.h
> index 3d9ba2917..f1c433657 100644
> --- a/lib/igt_perf.h
> +++ b/lib/igt_perf.h
> @@ -71,5 +71,7 @@ int perf_i915_open(int i915, uint64_t config);
>  int perf_i915_open_group(int i915, uint64_t config, int group);
>  
>  int perf_xe_open(int xe, uint64_t config);
> +int perf_xe_event_config(const char *device, const char *event, uint64_t *config);
> +int perf_xe_format_gt_id(const char *device);
>  
>  #endif /* I915_PERF_H */
> diff --git a/tools/gputop.c b/tools/gputop.c
> index 43b01f566..2c2f2f471 100644
> --- a/tools/gputop.c
> +++ b/tools/gputop.c
> @@ -29,6 +29,7 @@
>  #include "igt_core.h"
>  #include "igt_drm_clients.h"
>  #include "igt_drm_fdinfo.h"
> +#include "igt_perf.h"
>  #include "igt_profiling.h"
>  #include "drmtest.h"
>  
> @@ -76,6 +77,170 @@ static void print_percentage_bar(double percent, int max_len)
>  	putchar('|');
>  }
>  
> +static int
> +get_num_gts(uint64_t type, uint64_t config, int gt_shift)
> +{
> +	int fd, gt_id;
> +
> +	errno = 0;
> +	for (gt_id = 0; gt_id < MAX_GTS; gt_id++) {
> +		config |= (uint64_t)gt_id << gt_shift;
> +		fd = igt_perf_open(type, config);
> +		if (fd < 0)
> +			break;
> +		close(fd);
> +	}
> +
> +	if (!gt_id || (errno && errno != ENOENT))
> +		gt_id = -errno;
> +
> +	return gt_id;
> +}
> +
> +#define _open_pmu(type, cnt, pmu, fd) \
> +({ \
> +	int fd__; \
> +\
> +	fd__ = igt_perf_open_group((type), (pmu)->config, (fd)); \
> +	if (fd__ >= 0) { \
> +		if ((fd) == -1) \
> +			(fd) = fd__; \
> +		(pmu)->present = true; \
> +		(pmu)->idx = (cnt)++; \
> +	} \
> +\
> +	fd__; \
> +})
> +
> +static int pmu_init(struct igt_drm_client *c)
> +{
> +	unsigned int i, num_cntr = 0;
> +	int fd = -1, ret;
> +	uint64_t type = igt_perf_type_id(c->device_events_path);
> +	uint64_t config;
> +	int gt_shift;
> +	char event_str[100];
> +
> +	/* Get a sample event config which can be used to find num_gts */
> +	ret = perf_xe_event_config(c->device_events_path, "actual-frequency", &config);
> +	assert(ret >= 0);

Please do not assert in a tool, handle error gracefully.

> +	gt_shift = perf_xe_format_gt_id(c->device_events_path);
> +	assert(ret > 0);

Same here.

> +
> +	c->num_gts = get_num_gts(type, config, gt_shift);
> +
> +	for (i = 0; i < c->num_gts; i++) {
> +		snprintf(event_str, sizeof(event_str), "c6-residency");
> +		ret = perf_xe_event_config(c->device_events_path, event_str,
> +					   &c->c6_gt[i].config);
> +		assert(ret >= 0);

Same here and in this for loop.

> +		c->c6_gt[i].config |= (uint64_t)i << gt_shift;
> +		_open_pmu(type, num_cntr, &c->c6_gt[i], fd);
> +
> +		snprintf(event_str, sizeof(event_str), "actual-frequency");
> +		ret = perf_xe_event_config(c->device_events_path, event_str,
> +					   &c->freq_act_gt[i].config);
> +		assert(ret >= 0);
> +		c->freq_act_gt[i].config |= (uint64_t)i << gt_shift;
> +		_open_pmu(type, num_cntr, &c->freq_act_gt[i], fd);
> +
> +		snprintf(event_str, sizeof(event_str), "requested-frequency");
> +		ret = perf_xe_event_config(c->device_events_path, event_str,
> +					   &c->freq_req_gt[i].config);
> +		assert(ret >= 0);
> +		c->freq_req_gt[i].config |= (uint64_t)i << gt_shift;
> +		_open_pmu(type, num_cntr, &c->freq_req_gt[i], fd);
> +	}
> +
> +	/* Saved the pmu fd */
> +	assert(fd > 0);

Same here, handle errors gracefully.

> +	c->pmu_fd = fd;
> +	c->num_pmu_counters = num_cntr;
> +
> +	return fd;
> +}
> +
> +static uint64_t pmu_read_multi(int fd, unsigned int num, uint64_t *val)
> +{
> +	uint64_t buf[2 + num];
> +	unsigned int i;
> +	ssize_t len;
> +
> +	memset(buf, 0, sizeof(buf));
> +
> +	len = read(fd, buf, sizeof(buf));
> +	assert(len == sizeof(buf));

Same here.

> +
> +	for (i = 0; i < num; i++)
> +		val[i] = buf[2 + i];
> +
> +	return buf[1];
> +}
> +
> +static void __update_sample(struct pmu_counter *counter, uint64_t val)
> +{
> +	counter->val.prev = counter->val.cur;
> +	counter->val.cur = val;
> +}
> +
> +static void update_sample(struct pmu_counter *counter, uint64_t *val)
> +{
> +	if (counter->present)
> +		__update_sample(counter, val[counter->idx]);
> +}
> +
> +static void
> +calc_c6_pct(struct igt_drm_client *c, unsigned int gt, unsigned long t)
> +{
> +	unsigned long c6_diff = c->c6_gt[gt].val.cur - c->c6_gt[gt].val.prev;
> +
> +	printf("GT: %d, c6: %6.2lf%%", gt, 100 * (double)((1e6 * c6_diff) / (double)t));
> +}
> +
> +static void
> +calc_freq(struct igt_drm_client *c, uint8_t gt, uint64_t t)
> +{
> +	uint64_t req_freq_diff = 1e9 * (c->freq_req_gt[gt].val.cur - c->freq_req_gt[gt].val.prev);
> +	uint64_t act_freq_diff = 1e9 * (c->freq_act_gt[gt].val.cur - c->freq_act_gt[gt].val.prev);
> +
> +	printf(" req_freq: %7.2lf MHz", (double)req_freq_diff / (double)t);
> +	printf(" act_freq: %7.2lf MHz", (double)act_freq_diff / (double)t);
> +}
> +
> +static int
> +print_pmu_stats(struct igt_drm_client *c, int *lines)
> +{
> +	int ret = 0;
> +	int i;
> +	uint64_t *val;
> +	uint64_t ts_diff;
> +
> +	if (c->pmu_fd == -1)
> +		pmu_init(c);
> +
> +	assert(c->num_pmu_counters > 0);

Same here.

> +
> +	val = (uint64_t *)malloc(c->num_pmu_counters * sizeof(uint64_t));
> +
> +	c->ts_prev = c->ts_cur;
> +	c->ts_cur = pmu_read_multi(c->pmu_fd, c->num_pmu_counters, val);
> +	ts_diff = c->ts_cur - c->ts_prev;
> +
> +	for (i = 0; i < c->num_gts; i++) {
> +		update_sample(&c->c6_gt[i], val);
> +		update_sample(&c->freq_req_gt[i], val);
> +		update_sample(&c->freq_act_gt[i], val);
> +		calc_c6_pct(c, i, ts_diff);
> +		calc_freq(c, i, ts_diff);
> +		putchar('\n');
> +	}
> +
> +	if (val)
> +		free(val);
> +
> +	return ret;
> +}
> +
>  static int
>  print_client_header(struct igt_drm_client *c, int lines, int con_w, int con_h,
>  		    int *engine_w)
> @@ -92,6 +257,8 @@ print_client_header(struct igt_drm_client *c, int lines, int con_w, int con_h,
>  	if (lines++ >= con_h)
>  		return lines;
>  
> +	ret += print_pmu_stats(c, &lines);
> +
>  	putchar('\n');
>  	if (c->regions->num_regions)
>  		len = printf("%*s      MEM      RSS ",
> @@ -219,7 +386,6 @@ print_client(struct igt_drm_client *c, struct igt_drm_client **prevc,
>  	}
>  
>  	*prevc = c;
> -

Do not make style changes in a big patch.

Regards,
Kamil

>  	len = printf("%*s ", c->clients->max_pid_len, c->pid_str);
>  
>  	if (c->regions->num_regions) {
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index a608b894d..585e2acec 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -52,21 +52,6 @@
>  
>  #define ARRAY_SIZE(arr) (sizeof(arr)/sizeof(arr[0]))
>  
> -struct pmu_pair {
> -	uint64_t cur;
> -	uint64_t prev;
> -};
> -
> -struct pmu_counter {
> -	uint64_t type;
> -	uint64_t config;
> -	unsigned int idx;
> -	struct pmu_pair val;
> -	double scale;
> -	const char *units;
> -	bool present;
> -};
> -
>  struct engine_class {
>  	unsigned int engine_class;
>  	const char *name;
> @@ -724,6 +709,8 @@ static void pmu_sample(struct engines *engines)
>  	uint64_t val[2 + num_val];
>  	unsigned int i;
>  
> +	printf("\n num counters: %d", num_val);
> +
>  	engines->ts.prev = engines->ts.cur;
>  	engines->ts.cur = pmu_read_multi(engines->fd, num_val, val);
>  
> @@ -735,6 +722,7 @@ static void pmu_sample(struct engines *engines)
>  		update_sample(&engines->freq_req_gt[i], val);
>  		engines->freq_req.val.cur += engines->freq_req_gt[i].val.cur;
>  		engines->freq_req.val.prev += engines->freq_req_gt[i].val.prev;
> +		printf("\n GT: %d, ctr idx: %d", i, engines->freq_req_gt[i].idx);
>  
>  		update_sample(&engines->freq_act_gt[i], val);
>  		engines->freq_act.val.cur += engines->freq_act_gt[i].val.cur;
> diff --git a/tools/meson.build b/tools/meson.build
> index 38b04851c..9e6c8546a 100644
> --- a/tools/meson.build
> +++ b/tools/meson.build
> @@ -70,7 +70,7 @@ endif
>  executable('gputop', 'gputop.c',
>             install : true,
>             install_rpath : bindir_rpathdir,
> -           dependencies : [lib_igt_drm_clients,lib_igt_drm_fdinfo,lib_igt_profiling,math])
> +           dependencies : [lib_igt_perf,lib_igt_drm_clients,lib_igt_drm_fdinfo,lib_igt_profiling,math])
>  
>  intel_l3_parity_src = [ 'intel_l3_parity.c', 'intel_l3_udev_listener.c' ]
>  executable('intel_l3_parity', sources : intel_l3_parity_src,
> -- 
> 2.38.1
> 
