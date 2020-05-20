Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D8A1DB260
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 13:54:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3B576E144;
	Wed, 20 May 2020 11:54:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 663C06E144;
 Wed, 20 May 2020 11:54:25 +0000 (UTC)
IronPort-SDR: r0gG71Z+4/jrtYAztOXkpdM18MEpK/e4a5Luo6Si2uKivQdT7HN+zQgfvldoU6vgT/jy5Bg6Qb
 a3unnSaz5JOQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 04:54:24 -0700
IronPort-SDR: 548hAoLLqFaimhpa4RNIPHFro/nXwBWsiz9VedL8E2ZllwHA41jaski1d2GZw5rbgcVNKj2bJC
 1LJ4S7PoO9dw==
X-IronPort-AV: E=Sophos;i="5.73,413,1583222400"; d="scan'208";a="264659300"
Received: from dmiller1-mobl.ger.corp.intel.com (HELO [10.214.251.106])
 ([10.214.251.106])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 04:54:22 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20200520103853.2484519-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <0b2857c3-25aa-775c-b559-3de68b9ec032@linux.intel.com>
Date: Wed, 20 May 2020 12:54:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200520103853.2484519-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tools/intel_gpu_top:
 Include total package power
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 20/05/2020 11:38, Chris Wilson wrote:
> With integrated graphics the TDP is shared between the gpu and the cpu,
> knowing the total energy consumed by the package is relevant to
> understanding throttling.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   tools/intel_gpu_top.c | 195 ++++++++++++++++++++++++++++--------------
>   1 file changed, 133 insertions(+), 62 deletions(-)
> 
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index 8197482dd..e64cec338 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -69,6 +69,12 @@ struct engine {
>   	struct pmu_counter sema;
>   };
>   
> +struct rapl {
> +	uint64_t power, type;
> +	double scale;
> +	int fd;
> +};
> +
>   struct engines {
>   	unsigned int num_engines;
>   	unsigned int num_counters;
> @@ -76,9 +82,7 @@ struct engines {
>   	int fd;
>   	struct pmu_pair ts;
>   
> -	int rapl_fd;
> -	double rapl_scale;
> -	const char *rapl_unit;
> +	struct rapl r_gpu, r_pkg;
>   
>   	int imc_fd;
>   	double imc_reads_scale;
> @@ -90,13 +94,124 @@ struct engines {
>   	struct pmu_counter freq_act;
>   	struct pmu_counter irq;
>   	struct pmu_counter rc6;
> -	struct pmu_counter rapl;
> +	struct pmu_counter s_gpu, s_pkg;
>   	struct pmu_counter imc_reads;
>   	struct pmu_counter imc_writes;
>   
>   	struct engine engine;
>   };
>   
> +__attribute__((format(scanf,3,4)))
> +static int igt_sysfs_scanf(int dir, const char *attr, const char *fmt, ...)
> +{
> +	FILE *file;
> +	int fd;
> +	int ret = -1;
> +
> +	fd = openat(dir, attr, O_RDONLY);
> +	if (fd < 0)
> +		return -1;
> +
> +	file = fdopen(fd, "r");
> +	if (file) {
> +		va_list ap;
> +
> +		va_start(ap, fmt);
> +		ret = vfscanf(file, fmt, ap);
> +		va_end(ap);
> +
> +		fclose(file);
> +	} else {
> +		close(fd);
> +	}
> +
> +	return ret;
> +}

It's a bit naughty to add this helper only to be used from RAPL. We 
should either consolidate to use this one or have this patch use 
existing filenamd_to_* helpers.

> +
> +static int rapl_parse(struct rapl *r, const char *str)
> +{
> +	locale_t locale, oldlocale;
> +	bool result = true;
> +	char buf[128];
> +	int dir;
> +
> +	memset(r, 0, sizeof(*r));
> +
> +	dir = open("/sys/devices/power", O_RDONLY);
> +	if (dir < 0)
> +		return -errno;
> +
> +	/* Replace user environment with plain C to match kernel format */
> +	locale = newlocale(LC_ALL, "C", 0);
> +	oldlocale = uselocale(locale);
> +
> +	result &= igt_sysfs_scanf(dir, "type", "%"PRIu64, &r->type) == 1;
> +
> +	snprintf(buf, sizeof(buf), "events/energy-%s", str);
> +	result &= igt_sysfs_scanf(dir, buf, "event=%"PRIx64, &r->power) == 1;
> +
> +	snprintf(buf, sizeof(buf), "events/energy-%s.scale", str);
> +	result &= igt_sysfs_scanf(dir, buf, "%lf", &r->scale) == 1;
> +
> +	uselocale(oldlocale);
> +	freelocale(locale);
> +
> +	close(dir);
> +
> +	if (!result)
> +		return -EINVAL;
> +
> +	if (isnan(r->scale) || !r->scale)
> +		return -ERANGE;
> +
> +	return 0;
> +}
> +
> +static int rapl_open(struct rapl *r, const char *domain)
> +{
> +	r->fd = rapl_parse(r, domain);
> +	if (r->fd < 0)
> +		goto err;
> +
> +	r->fd = igt_perf_open(r->type, r->power);
> +	if (r->fd < 0) {
> +		r->fd = -errno;
> +		goto err;
> +	}
> +
> +	return 0;
> +
> +err:
> +	errno = 0;
> +	return r->fd;
> +}
> +
> +static int gpu_power_open(struct rapl *r)
> +{
> +	return rapl_open(r, "gpu");
> +}
> +
> +static int pkg_power_open(struct rapl *r)
> +{
> +	return rapl_open(r, "pkg");
> +}
> +
> +static inline bool rapl_valid(struct rapl *r)
> +{
> +	return r->fd >= 0;
> +}
> +
> +static inline int ram_power_open(struct rapl *r)
> +{
> +	return rapl_open(r, "ram");
> +}
> +
> +static inline void rapl_close(struct rapl *r)
> +{
> +	close(r->fd);
> +	r->fd = -1;
> +}
> +
>   static uint64_t
>   get_pmu_config(int dirfd, const char *name, const char *counter)
>   {
> @@ -338,38 +453,6 @@ static double filename_to_double(const char *filename)
>   	return v;
>   }
>   
> -#define RAPL_ROOT "/sys/devices/power/"
> -#define RAPL_EVENT "/sys/devices/power/events/"
> -
> -static uint64_t rapl_type_id(void)
> -{
> -	return filename_to_u64(RAPL_ROOT "type", 10);
> -}
> -
> -static uint64_t rapl_gpu_power(void)
> -{
> -	return filename_to_u64(RAPL_EVENT "energy-gpu", 0);
> -}
> -
> -static double rapl_gpu_power_scale(void)
> -{
> -	return filename_to_double(RAPL_EVENT "energy-gpu.scale");
> -}
> -
> -static const char *rapl_gpu_power_unit(void)
> -{
> -	char buf[32];
> -
> -	if (filename_to_buf(RAPL_EVENT "energy-gpu.unit",
> -			    buf, sizeof(buf)) == 0)
> -		if (!strcmp(buf, "Joules"))
> -			return strdup("Watts");
> -		else
> -			return strdup(buf);
> -	else
> -		return NULL;
> -}
> -
>   #define IMC_ROOT "/sys/devices/uncore_imc/"
>   #define IMC_EVENT "/sys/devices/uncore_imc/events/"
>   
> @@ -496,24 +579,8 @@ static int pmu_init(struct engines *engines)
>   		}
>   	}
>   
> -	engines->rapl_fd = -1;
> -	if (rapl_type_id()) {
> -		engines->rapl_scale = rapl_gpu_power_scale();
> -		engines->rapl_unit = rapl_gpu_power_unit();
> -		if (!engines->rapl_unit)
> -			return -1;
> -
> -		engines->rapl.config = rapl_gpu_power();
> -		if (!engines->rapl.config)
> -			return -1;
> -
> -		engines->rapl_fd = igt_perf_open(rapl_type_id(),
> -						 engines->rapl.config);
> -		if (engines->rapl_fd < 0)
> -			return -1;
> -
> -		engines->rapl.present = true;
> -	}
> +	engines->s_gpu.present = gpu_power_open(&engines->r_gpu) >= 0;
> +	engines->s_pkg.present = pkg_power_open(&engines->r_pkg) >= 0;
>   
>   	engines->imc_fd = -1;
>   	if (imc_type_id()) {
> @@ -633,9 +700,13 @@ static void pmu_sample(struct engines *engines)
>   
>   	engines->ts.prev = engines->ts.cur;
>   
> -	if (engines->rapl_fd >= 0)
> -		__update_sample(&engines->rapl,
> -				pmu_read_single(engines->rapl_fd));
> +	if (engines->s_gpu.present)
> +		__update_sample(&engines->s_gpu,
> +				pmu_read_single(engines->r_gpu.fd));
> +
> +	if (engines->s_pkg.present)
> +		__update_sample(&engines->s_pkg,
> +				pmu_read_single(engines->r_pkg.fd));
>   
>   	if (engines->imc_fd >= 0) {
>   		pmu_read_multi(engines->imc_fd, 2, val);
> @@ -1052,8 +1123,8 @@ print_header(struct engines *engines, double t,
>   		.items = rc6_items,
>   	};
>   	struct cnt_item power_items[] = {
> -		{ &engines->rapl, 4, 2, 1.0, t, engines->rapl_scale, "value",
> -		  "W" },
> +		{ &engines->s_gpu, 4, 2, 1.0, t, engines->r_gpu.scale, "gpu", "W" },
> +		{ &engines->s_pkg, 4, 2, 1.0, t, engines->r_pkg.scale, "pkg", "W" },
>   		{ NULL, 0, 0, 0.0, 0.0, 0.0, "unit", "W" },
>   		{ },
>   	};
> @@ -1083,10 +1154,10 @@ print_header(struct engines *engines, double t,
>   		printf("\033[H\033[J");
>   
>   		if (lines++ < con_h)
> -			printf("intel-gpu-top - %s/%s MHz;  %s%% RC6; %s %s; %s irqs/s\n",
> +			printf("intel-gpu-top - %s/%s MHz;  %s%% RC6; %s/%s W; %s irqs/s\n",

Detecting the unit was also a good thing to have so why drop it?

Regards,

Tvrtko

>   			       freq_items[1].buf, freq_items[0].buf,
> -			       rc6_items[0].buf, power_items[0].buf,
> -			       engines->rapl_unit,
> +			       rc6_items[0].buf,
> +			       power_items[0].buf, power_items[1].buf,
>   			       irq_items[0].buf);
>   
>   		if (lines++ < con_h)
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
