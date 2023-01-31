Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F13B5682C13
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 12:59:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52E4110E322;
	Tue, 31 Jan 2023 11:59:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B081410E322;
 Tue, 31 Jan 2023 11:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675166355; x=1706702355;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=r9FsbObbEX6ChOr5MPpXD+b87hmiNuduKAJjZNe/GPs=;
 b=UfGUYNoOY5OQxyewH7vL8jganU9qilZ9GUDB2khwav6BbP0H3XaNvXK+
 E0kcBVnYEvHd8SVPuaY5SnwgzA5ERh3nOLgkcK5GV/YGy6jqSgLO7FN+Q
 oNdmg9qvKoWF8yHMSbpZzGYodJdSuHezGLi0JysSH1gbo9Wszp3eUQHhQ
 8D6AkwgtUBXyVy6Y7n97mrdYp/8zu+w6cFC/O9TNf83JZPp9K97/dVc67
 NGZgxKdSE6H+BZl28NTIyE/8pb7ly9MHhh4VGa3QJYTuCYnjHAZdp4SbR
 QVUKpWVuy2oNphl4Kvg1e65snZzl+bghLpRwPWfmwwUem7a2nmKgf1WoH g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="326482291"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="326482291"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 03:59:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="807089145"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="807089145"
Received: from janpieni-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.18.173])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 03:59:13 -0800
Date: Tue, 31 Jan 2023 12:59:10 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20230131115910.rk4yyli7i7rbvqee@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Petri Latvala <adrinael@adrinael.net>,
 Arkadiusz Hiler <arek@hiler.eu>, igt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
References: <20230131091731.5892-1-janusz.krzysztofik@linux.intel.com>
 <20230131091731.5892-2-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230131091731.5892-2-janusz.krzysztofik@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/2] i915/perf: Stress opening of new
 perf streams against existing contexts
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
Cc: Arkadiusz Hiler <arek@hiler.eu>, intel-gfx@lists.freedesktop.org,
 igt-dev@lists.freedesktop.org, Petri Latvala <adrinael@adrinael.net>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 2023-01-31 at 10:17:30 +0100, Janusz Krzysztofik wrote:
> From: Chris Wilson <chris.p.wilson@linux.intel.com>
> 
> Try opening the perf stream while there is a flurry of activity on the
> system, both new and old contexts. This will exercise the ability of the
> driver to modify those contexts to work with perf.
> 
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/6333
> Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> ---
>  tests/i915/perf.c | 74 +++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 74 insertions(+)
> 
> diff --git a/tests/i915/perf.c b/tests/i915/perf.c
> index dd1f1ac399..e33cacc443 100644
> --- a/tests/i915/perf.c
> +++ b/tests/i915/perf.c
> @@ -4885,6 +4885,71 @@ test_whitelisted_registers_userspace_config(void)
>  	i915_perf_remove_config(drm_fd, config_id);
>  }
>  
> +static void test_open_race(const struct intel_execution_engine2 *e, int timeout)
> +{
> +	int *done;
> +
> +	done = mmap(0, 4096, PROT_WRITE, MAP_SHARED | MAP_ANON, -1, 0);
> +	igt_assert(done != MAP_FAILED);
> +
> +	igt_fork(child, 1) {
> +		uint64_t properties[] = {
> +			DRM_I915_PERF_PROP_SAMPLE_OA, true,
> +			DRM_I915_PERF_PROP_OA_METRICS_SET, test_set->perf_oa_metrics_set,
> +			DRM_I915_PERF_PROP_OA_FORMAT, test_set->perf_oa_format,
> +			DRM_I915_PERF_PROP_OA_EXPONENT, oa_exp_1_millisec,
> +		};
> +		struct drm_i915_perf_open_param param = {
> +			.flags = I915_PERF_FLAG_FD_CLOEXEC,
> +			.num_properties = sizeof(properties) / 16,
> +			.properties_ptr = to_user_pointer(properties),
> +		};
> +		unsigned long count = 0;
> +
> +		do {
> +			__perf_close(__perf_open(drm_fd, &param, false));
> +			count++;
> +		} while (!READ_ONCE(*done));
> +
> +		igt_info("Completed %lu cycles\n", count);
> +	}
> +
> +	for (int persistence = 0; persistence <= 1; persistence++) {
> +		igt_fork(child, sysconf(_SC_NPROCESSORS_ONLN)) {
> +			int i915 = gem_reopen_driver(drm_fd);
> +
> +			do {
> +				igt_spin_t *spin;
> +				uint64_t ahnd;
> +				uint32_t ctx;
> +
> +				ctx = gem_context_create_for_engine(i915, e->class, e->instance);
> +				gem_context_set_persistence(i915, ctx, persistence);
> +
> +				spin = __igt_spin_new(i915, ctx, .ahnd = ahnd);
> +				for (int i = random() % 7; i--; ) {
> +					if (random() & 1) {
> +						igt_spin_end(spin);
> +						gem_sync(i915, spin->handle);
> +						igt_spin_reset(spin);
> +					}
> +					gem_execbuf(i915, &spin->execbuf);
> +				}
> +
> +				gem_context_destroy(i915, ctx);
> +				igt_spin_free(i915, spin);
> +				put_ahnd(ahnd);
> +			} while (!READ_ONCE(*done));
> +		}
> +	}
> +
> +	sleep(timeout);
> +	*done = 1;
> +	igt_waitchildren();
> +
> +	munmap(done, 4096);
> +}
> +
>  static unsigned
>  read_i915_module_ref(void)
>  {
> @@ -5259,6 +5324,15 @@ igt_main
>  	igt_subtest("whitelisted-registers-userspace-config")
>  		test_whitelisted_registers_userspace_config();
>  

Please add description to new test.

Regards,
Kamil

> +	igt_subtest_with_dynamic("open-race") {
> +		const struct intel_execution_engine2 *e;
> +
> +		for_each_physical_engine(drm_fd, e)
> +			if (e->class == I915_ENGINE_CLASS_RENDER)
> +				igt_dynamic_f("%s", e->name)
> +					test_open_race(e, 5);
> +	}
> +
>  	igt_fixture {
>  		/* leave sysctl options in their default state... */
>  		write_u64_file("/proc/sys/dev/i915/oa_max_sample_rate", 100000);
> -- 
> 2.25.1
> 
