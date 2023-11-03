Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 146E57E0830
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 19:33:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A17910E18F;
	Fri,  3 Nov 2023 18:33:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16D1710E190;
 Fri,  3 Nov 2023 18:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699036382; x=1730572382;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=xV1i4OgkC1Q6fet5qfKBOYtaWF/wDZYyRcDp33a3w1M=;
 b=iLu9XRmqkIvxnhn/SnfNBJMKCNh0RtL1T7d6Y7+/hMJ7BKxuKbobG1bd
 0sCOkMJNKuGGUYJVwebMlaPOjP4W4CrqXH+MiGDjJarZanPWXoDpIh/DK
 CbL28mBLNLHssFarK5xBvLzm0vODyEC5yX3RuI69y2nxsfX7cEZPIBctA
 XMUe6pAEGF6dJDTAiEIYgy0whuNIcC33osQ02DYFzPuNWUaVc9cenNGtZ
 +MQos5Q1qV5cpgajc/ngaRX5sdXKFlwS5sYsalogaV6wDGuLfKJ2Gqp7c
 CZpxuV5hqNhykSI/dkFV1zm/FnaT8LNJFb2XORI9WfZpd3e9TwpAqMbZJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="386170675"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="386170675"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 11:33:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="796704544"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="796704544"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by orsmga001-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Nov 2023 11:32:57 -0700
Date: Fri, 3 Nov 2023 19:32:54 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20231103183254.kl4uhqzbfw7nw6i4@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20231012081547.852052-1-tvrtko.ursulin@linux.intel.com>
 <20231012081547.852052-3-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231012081547.852052-3-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/9] tests/i915/drm_fdinfo: Stress
 test context close versus fdinfo reads
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
Cc: Intel-gfx@lists.freedesktop.org, Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,
On 2023-10-12 at 09:15:40 +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> A short smoke tests to exercise fdinfo reads in parallel to contexts
> getting created and destroyed.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  tests/intel/drm_fdinfo.c | 68 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 68 insertions(+)
> 
> diff --git a/tests/intel/drm_fdinfo.c b/tests/intel/drm_fdinfo.c
> index 344c44dce78b..c4218b0d16e6 100644
> --- a/tests/intel/drm_fdinfo.c
> +++ b/tests/intel/drm_fdinfo.c
> @@ -22,11 +22,14 @@
>   *
>   */
>  
> +#include <fcntl.h>
> +
>  #include "igt.h"
>  #include "igt_core.h"
>  #include "igt_device.h"
>  #include "igt_drm_fdinfo.h"
>  #include "i915/gem.h"
> +#include "i915/gem_create.h"
>  #include "i915/gem_vm.h"
>  #include "intel_ctx.h"
>  /**
> @@ -72,6 +75,8 @@
>   * SUBTEST: virtual-busy-idle-all
>   *
>   * SUBTEST: virtual-idle
> + *
> + * SUBTEST: context-close-stress
>   */
>  
>  IGT_TEST_DESCRIPTION("Test the i915 drm fdinfo data");
> @@ -717,6 +722,56 @@ virtual_all(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
>  	}
>  }
>  
> +static void stress_context_close(int i915)
> +{
> +	const uint32_t bbe = MI_BATCH_BUFFER_END;
> +	struct igt_helper_process reader = { };
> +	struct drm_client_fdinfo info;
> +	uint32_t batch;
> +	int dir, ret;
> +	char buf[64];
> +
> +	ret = snprintf(buf, sizeof(buf), "%u", i915);
> +	igt_assert(ret > 0 && ret < sizeof(buf));
> +
> +	dir = open("/proc/self/fdinfo", O_DIRECTORY | O_RDONLY);
> +	igt_assert_fd(dir);
> +
> +	memset(&info, 0, sizeof(info));
> +	ret = __igt_parse_drm_fdinfo(dir, buf, &info, NULL, 0, NULL, 0);
> +	igt_assert(ret > 0);

You repeat this pattern later, it can be made into
function:

igt_parse_drm_fdinfo(dir, buf, *info, p1, i1, p2, i2)
{
	memset(info, 0, sizeof(*info));
	ret = __igt_parse_drm_fdinfo(dir, buf, info, p1, i1, p2, i2);
	igt_assert(ret > 0);
}

> +	igt_require(info.num_regions);
> +
> +	batch = gem_create(i915, 4096);
> +	gem_write(i915, batch, 0, &bbe, sizeof(bbe));
> +
> +	igt_fork_helper(&reader) {
> +		for (;;) {
> +			memset(&info, 0, sizeof(info));
> +			ret = __igt_parse_drm_fdinfo(dir, buf, &info,
> +						     NULL, 0, NULL, 0);
> +			igt_assert(ret > 0);

Here you repeat this.

With or without makeing this a function,
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> +		}
> +	}
> +
> +	igt_until_timeout(10) {
> +		struct drm_i915_gem_exec_object2 obj = {
> +			.handle = batch,
> +		};
> +		struct drm_i915_gem_execbuffer2 eb = {
> +			.buffers_ptr = to_user_pointer(&obj),
> +			.buffer_count = 1,
> +		};
> +
> +		eb.rsvd1 = gem_context_create(i915);
> +		igt_assert(eb.rsvd1);
> +		gem_execbuf(i915, &eb);
> +		gem_context_destroy(i915, eb.rsvd1);
> +	}
> +
> +	igt_stop_helper(&reader);
> +}
> +
>  #define test_each_engine(T, i915, ctx, e) \
>  	igt_subtest_with_dynamic(T) for_each_ctx_engine(i915, ctx, e) \
>  		igt_dynamic_f("%s", e->name)
> @@ -848,6 +903,19 @@ igt_main
>  	test_each_engine("isolation", i915, ctx, e)
>  		single(i915, ctx, e, TEST_BUSY | TEST_ISOLATION);
>  
> +	igt_subtest_group {
> +		int newfd;
> +
> +		igt_fixture
> +			newfd = drm_reopen_driver(i915);
> +
> +		igt_subtest("context-close-stress")
> +			stress_context_close(newfd);
> +
> +		igt_fixture
> +			drm_close_driver(newfd);
> +	}
> +
>  	igt_fixture {
>  		intel_ctx_destroy(i915, ctx);
>  		drm_close_driver(i915);
> -- 
> 2.39.2
> 
