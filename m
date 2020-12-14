Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A77A02D9B74
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 16:51:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D260B6E2DC;
	Mon, 14 Dec 2020 15:51:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D2106E221;
 Mon, 14 Dec 2020 15:51:31 +0000 (UTC)
IronPort-SDR: s28W4l9uEuQM1FEedo0qwq1QOy4sjuPlJExxSTqLZyadHRDSWdgqGTCUrVbYaHd+JpSuMT4eED
 lNR4ZOa6lyDg==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="162476861"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="162476861"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 07:51:28 -0800
IronPort-SDR: /Zmx+4Yfy3p0WC5+IcLmmnxXJtOBP9hQMnriM0SmAFTGlu3N5DjWd13bNT2QGFYwFq4M0oJm7S
 YTf8HMtEustg==
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="411294074"
Received: from yhorwitz-mobl1.ger.corp.intel.com (HELO [10.214.202.117])
 ([10.214.202.117])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 07:51:27 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201214105123.542518-1-chris@chris-wilson.co.uk>
 <20201214105123.542518-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8a85eb50-1591-583d-30ae-18264774ae2a@linux.intel.com>
Date: Mon, 14 Dec 2020 15:51:24 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201214105123.542518-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/4] i915/gem_exec_balancer:
 Measure timeslicing fairness
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
> Oversaturate the virtual engines on the system and check that each
> workload receives a fair share of the available GPU time.

A simpler one to start with, I support that.

> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   tests/i915/gem_exec_balancer.c | 154 +++++++++++++++++++++++++++++++++
>   1 file changed, 154 insertions(+)
> 
> diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
> index 35a032ccb..5efd586ad 100644
> --- a/tests/i915/gem_exec_balancer.c
> +++ b/tests/i915/gem_exec_balancer.c
> @@ -2763,6 +2763,157 @@ static void smoketest(int i915, int timeout)
>   	gem_close(i915, batch[0].handle);
>   }
>   
> +static uint32_t read_ctx_timestamp(int i915, uint32_t ctx)
> +{
> +	struct drm_i915_gem_relocation_entry reloc;
> +	struct drm_i915_gem_exec_object2 obj = {
> +		.handle = gem_create(i915, 4096),
> +		.offset = 32 << 20,
> +		.relocs_ptr = to_user_pointer(&reloc),
> +		.relocation_count = 1,
> +	};
> +	struct drm_i915_gem_execbuffer2 execbuf = {
> +		.buffers_ptr = to_user_pointer(&obj),
> +		.buffer_count = 1,
> +		.rsvd1 = ctx,
> +	};
> +	uint32_t *map, *cs;
> +	uint32_t ts;
> +
> +	cs = map = gem_mmap__device_coherent(i915, obj.handle,
> +					     0, 4096, PROT_WRITE);
> +
> +	*cs++ = 0x24 << 23 | 1 << 19 | 2; /* relative SRM */
> +	*cs++ = 0x3a8; /* CTX_TIMESTAMP */
> +	memset(&reloc, 0, sizeof(reloc));
> +	reloc.target_handle = obj.handle;
> +	reloc.presumed_offset = obj.offset;
> +	reloc.offset = offset_in_page(cs);
> +	reloc.delta = 4000;
> +	*cs++ = obj.offset + 4000;
> +	*cs++ = obj.offset >> 32;
> +
> +	*cs++ = MI_BATCH_BUFFER_END;
> +
> +	gem_execbuf(i915, &execbuf);
> +	gem_sync(i915, obj.handle);
> +	gem_close(i915, obj.handle);
> +
> +	ts = map[1000];
> +	munmap(map, 4096);
> +
> +	return ts;
> +}
> +
> +static int cmp_u32(const void *A, const void *B)
> +{
> +	const uint32_t *a = A, *b = B;
> +
> +	if (*a < *b)
> +		return -1;
> +	else if (*a > *b)
> +		return 1;
> +	else
> +		return 0;
> +}
> +
> +static int read_ctx_timestamp_frequency(int i915)
> +{
> +	int value = 12500000; /* icl!!! are you feeling alright? CTX vs CS */
> +	drm_i915_getparam_t gp = {
> +		.value = &value,
> +		.param = I915_PARAM_CS_TIMESTAMP_FREQUENCY,
> +	};
> +	if (intel_gen(intel_get_drm_devid(i915)) != 11)
> +		ioctl(i915, DRM_IOCTL_I915_GETPARAM, &gp);
> +	return value;
> +}
> +
> +static uint64_t div64_u64_round_up(uint64_t x, uint64_t y)
> +{
> +	return (x + y - 1) / y;
> +}
> +
> +static uint64_t ticks_to_ns(int i915, uint64_t ticks)
> +{
> +	return div64_u64_round_up(ticks * NSEC_PER_SEC,
> +				  read_ctx_timestamp_frequency(i915));
> +}
> +
> +static void __fairslice(int i915,
> +			const struct i915_engine_class_instance *ci,
> +			unsigned int count)
> +{
> +	igt_spin_t *spin = NULL;
> +	uint32_t ctx[count + 1];
> +	uint32_t ts[count + 1];
> +
> +	igt_debug("Launching %zd spinners on %s\n",
> +		  ARRAY_SIZE(ctx), class_to_str(ci->engine_class));
> +	igt_assert(ARRAY_SIZE(ctx) >= 3);
> +
> +	for (int i = 0; i < ARRAY_SIZE(ctx); i++) {
> +		ctx[i] = load_balancer_create(i915, ci, count);
> +		if (spin == NULL) {
> +			spin = __igt_spin_new(i915, .ctx = ctx[i]);
> +		} else {
> +			struct drm_i915_gem_execbuffer2 eb = {
> +				.buffer_count = 1,
> +				.buffers_ptr = to_user_pointer(&spin->obj[IGT_SPIN_BATCH]),
> +				.rsvd1 = ctx[i],
> +			};
> +			gem_execbuf(i915, &eb);
> +		}
> +	}
> +
> +	sleep(2); /* over the course of many timeslices */
> +
> +	igt_assert(gem_bo_busy(i915, spin->handle));
> +	igt_spin_end(spin);
> +	igt_debug("Cancelled spinners\n");
> +
> +	for (int i = 0; i < ARRAY_SIZE(ctx); i++)
> +		ts[i] = read_ctx_timestamp(i915, ctx[i]);

Now if we had context stats ioctl. :)

> +
> +	for (int i = 0; i < ARRAY_SIZE(ctx); i++)
> +		gem_context_destroy(i915, ctx[i]);
> +	igt_spin_free(i915, spin);
> +
> +	qsort(ts, ARRAY_SIZE(ctx), sizeof(*ts), cmp_u32);
> +	igt_info("%s: [%.1f, %.1f, %.1f] ms, expect %1.fms\n",
> +		 class_to_str(ci->engine_class),
> +		 1e-6 * ticks_to_ns(i915, ts[0]),
> +		 1e-6 * ticks_to_ns(i915, ts[(count + 1) / 2]),
> +		 1e-6 * ticks_to_ns(i915, ts[count]),
> +		 2e3 * count / ARRAY_SIZE(ctx));
> +
> +	igt_assert_f(ts[count], "CTX_TIMESTAMP not reported!\n");
> +	igt_assert_f((ts[count] - ts[0]) * 6 < ts[(count + 1) / 2],
> +		     "Range of timeslices greater than tolerable: %.2fms > %.2fms; unfair!\n",
> +		     1e-6 * ticks_to_ns(i915, ts[count] - ts[0]),
> +		     1e-6 * ticks_to_ns(i915, ts[(count  + 1) / 2]) / 6);

Just put a comment saying what is the criteria please. Six ranges vs 
median, must be some statistical thing but that's not my forte.

> +}
> +
> +static void fairslice(int i915)
> +{
> +	/* Relative CS mmio */
> +	igt_require(intel_gen(intel_get_drm_devid(i915)) >= 11);
> +
> +	for (int class = 0; class < 32; class++) {
> +		struct i915_engine_class_instance *ci;
> +		unsigned int count = 0;
> +
> +		ci = list_engines(i915, 1u << class, &count);
> +		if (!ci || count < 2) {
> +			free(ci);
> +			continue;
> +		}
> +
> +		__fairslice(i915, ci, count);
> +		free(ci);
> +	}
> +}
> +
>   static bool has_context_engines(int i915)
>   {
>   	struct drm_i915_gem_context_param p = {
> @@ -2848,6 +2999,9 @@ igt_main
>   				full(i915, p->flags);
>   	}
>   
> +	igt_subtest("fairslice")
> +		fairslice(i915);
> +
>   	igt_subtest("nop")
>   		nop(i915);
>   
> 

Otherwise LGTM.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
