Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DACBC686DD5
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 19:24:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A194D10E43C;
	Wed,  1 Feb 2023 18:24:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD70010E440;
 Wed,  1 Feb 2023 18:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675275878; x=1706811878;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lmQb7iPTzN5o4xEYAz8KlqU+1+zzF9nZ7GXBRaXTBCU=;
 b=Ps8mhmI+n+prJsjB/Y+4FXP3HUV+nmkZMoeTje/VudkqGD5Gw1xLZg9H
 g6LaWjgCeUZ0qf5aRXG1qDMDJvhq75EIH7Xi8bKD/hFRgkyZfugCHzYya
 zQ2mMY5w9JCgkHXnHrPTyU6sclnYD+a/oR2/j9qbg3/KbazSI3ccImkj8
 3hcqP7i5PA67M9btgw3TkRHwo7FLgl2g6Oql0Yi7reeRYJWs9+8ynmXSR
 cQ6leKqyYEedYmhsBKtvQ9ASKoR/n9lIdbKlDE6Hl+nW98qLNvOr0rnri
 XSVbel/tzXRLcFA5/QGGIAt9AH2gKx3MxArFEjU/ZdDFHHjoGvrrqoWER A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="392810613"
X-IronPort-AV: E=Sophos;i="5.97,265,1669104000"; d="scan'208";a="392810613"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 10:22:02 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="788980971"
X-IronPort-AV: E=Sophos;i="5.97,265,1669104000"; d="scan'208";a="788980971"
Received: from mariuszw-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.5.136])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 10:21:59 -0800
Date: Wed, 1 Feb 2023 19:21:57 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230201182157.qpu6fyobvwwxdwwt@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>,
 Petri Latvala <adrinael@adrinael.net>,
 Arkadiusz Hiler <arek@hiler.eu>, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 John Harrison <john.c.harrison@intel.com>,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
References: <20230131091731.5892-1-janusz.krzysztofik@linux.intel.com>
 <20230131091731.5892-3-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230131091731.5892-3-janusz.krzysztofik@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/2] tests/i915/perf: Exercise barrier
 race
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
 Petri Latvala <adrinael@adrinael.net>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Janusz,

please send patches to igt ML and add other addresses to cc:
I have one nit, see below.

On 2023-01-31 at 10:17:31 +0100, Janusz Krzysztofik wrote:
> Add a new subtest focused on exercising interaction between perf open /
> close operations, which replace active barriers with perf requests, and
> concurrent barrier preallocate / acquire operations performed during
> context first pin / last unpin.
> 
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/6333
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
> ---
>  tests/i915/perf.c | 41 +++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 39 insertions(+), 2 deletions(-)
> 
> diff --git a/tests/i915/perf.c b/tests/i915/perf.c
> index e33cacc443..11a3ec21ab 100644
> --- a/tests/i915/perf.c
> +++ b/tests/i915/perf.c
> @@ -39,6 +39,7 @@
>  #include <math.h>
>  
>  #include "i915/gem.h"
> +#include "i915/gem_create.h"
>  #include "i915/perf.h"
>  #include "igt.h"
>  #include "igt_perf.h"
> @@ -4885,7 +4886,27 @@ test_whitelisted_registers_userspace_config(void)
>  	i915_perf_remove_config(drm_fd, config_id);
>  }
>  
> -static void test_open_race(const struct intel_execution_engine2 *e, int timeout)
> +static void gem_exec_nop(int i915, const struct intel_execution_engine2 *e)
> +{
> +	const uint32_t bbe = MI_BATCH_BUFFER_END;
> +	struct drm_i915_gem_exec_object2 obj = { };
> +	struct drm_i915_gem_execbuffer2 execbuf = {
> +		.buffers_ptr = to_user_pointer(&obj),
> +		.buffer_count = 1,
> +	};
> +
> +	obj.handle = gem_create(i915, 4096);
> +	gem_write(i915, obj.handle, 0, &bbe, sizeof(bbe));
> +
> +	execbuf.flags = e->flags;
> +	gem_execbuf(i915, &execbuf);
> +
> +	gem_sync(i915, obj.handle);
> +	gem_close(i915, obj.handle);
> +}
> +
> +static void test_open_race(const struct intel_execution_engine2 *e, int timeout,
> +			   bool use_spin)
-------------------------- ^
This is not the best way to develop new code, it may be good
for fast development but imho it is better to refactor existing
code and avoiding to add bool logic into function.
It can be done later as this is revealing the bug.

>  {
>  	int *done;
>  
> @@ -4926,6 +4947,12 @@ static void test_open_race(const struct intel_execution_engine2 *e, int timeout)
>  				ctx = gem_context_create_for_engine(i915, e->class, e->instance);
>  				gem_context_set_persistence(i915, ctx, persistence);
>  
> +				if (!use_spin) {
> +					gem_exec_nop(i915, e);
> +					gem_context_destroy(i915, ctx);
> +					continue;
> +				}
> +
>  				spin = __igt_spin_new(i915, ctx, .ahnd = ahnd);
>  				for (int i = random() % 7; i--; ) {
>  					if (random() & 1) {
> @@ -5330,7 +5357,17 @@ igt_main
>  		for_each_physical_engine(drm_fd, e)
>  			if (e->class == I915_ENGINE_CLASS_RENDER)
>  				igt_dynamic_f("%s", e->name)
> -					test_open_race(e, 5);
> +					test_open_race(e, 5, true);
> +	}
> +

Please add here some TODO comments from discussions and a note
which will help bug filling team to classify that.

Regards,
Kamil

> +	igt_describe("Exercise perf open/close against intensive barrier preallocate/acquire");
> +	igt_subtest_with_dynamic("barrier-race") {
> +		const struct intel_execution_engine2 *e;
> +
> +		for_each_physical_engine(drm_fd, e)
> +			if (e->class == I915_ENGINE_CLASS_RENDER)
> +				igt_dynamic_f("%s", e->name)
> +					test_open_race(e, 5, false);
>  	}
>  
>  	igt_fixture {
> -- 
> 2.25.1
> 
