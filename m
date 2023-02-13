Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D2B694040
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 10:01:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACD1010E4F9;
	Mon, 13 Feb 2023 09:01:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7267C10E4ED;
 Mon, 13 Feb 2023 09:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676278862; x=1707814862;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TVPbPsbhLVBBVEFIvz+vs2mLB3S73FKVZ2oK0CfB5hI=;
 b=cN1goxKmSL5UTXEv7gd1gxIxt8er2jLNsU80ZCbIrk4EQUDSiJme6sPt
 p2E8Du+Sws/p3bTu6hpten+vMq5fadOAvFFYRj7fvmc/8F6QDq9bn8fii
 rLvFF0MazxsVJ77bRqjLy+d19C8Dp8Edcmvy2O+kEBkLpj6HWnrGbImoj
 xotkseCvjhsYI/UdYT8dBbQmdpzL+AHUCBdFwqHtZp8TzJouoM3hxPbuO
 3xVQRS3pYDXEPQmnw7LyAcZbLA2HTnXkWEtsRm9ji3Loi4os1Hr1YGghg
 dlcf0XljGcMPpMEmjyfb5kKsifKsDjsJ0M6YoHTL19ecKYwU1dN1trJV2 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="310477953"
X-IronPort-AV: E=Sophos;i="5.97,293,1669104000"; d="scan'208";a="310477953"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 01:00:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="662106751"
X-IronPort-AV: E=Sophos;i="5.97,293,1669104000"; d="scan'208";a="662106751"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.19.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 01:00:52 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Date: Mon, 13 Feb 2023 10:00:49 +0100
Message-ID: <4806417.31r3eYUQgx@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <Y+Z95YFARrUijh1r@orsosgc001.jf.intel.com>
References: <20230209115039.34441-1-janusz.krzysztofik@linux.intel.com>
 <Y+Z82anLvt6+l/5Z@orsosgc001.jf.intel.com>
 <Y+Z95YFARrUijh1r@orsosgc001.jf.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2 1/1] tests/gem_ctx_exec:
 Exercise barrier race
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Umesh,

On Friday, 10 February 2023 18:24:53 CET Umesh Nerlige Ramappa wrote:
> On Fri, Feb 10, 2023 at 09:20:25AM -0800, Umesh Nerlige Ramappa wrote:
> >On Thu, Feb 09, 2023 at 12:50:39PM +0100, Janusz Krzysztofik wrote:
> >>Users reported oopses on list corruptions when using i915 perf with a
> >>number of concurrently running graphics applications.  That indicates we
> >>are currently missing some important tests for such scenarios.  Cover
> >>that gap.
> >>
> >>Since root cause analysis pointed out to an issue in barrier processing
> >>code, add a new subtest focused on exercising interaction between perf
> >>open / close operations, which replace active barriers with perf requests
> >>on kernel contexts, and concurrent barrier preallocate / acquire
> >>operations performed during context first pin / last unpin.
> >>
> >>v2: convert to a separate subtest, not a variant of another one (that has
> >>   been dropped from the series),
> >> - move the subtest out of tests/i915/perf.c (Ashutosh), add it to
> >>   tests/i915/gem_ctx_exec.c,
> >> - don't touch lib/i915/perf.c (Umesh, Ashutosh), duplicate reused code
> >>   from tests/i915/perf.c in tests/i915/gem_ctx_exec.c.
> >>
> >>References: https://gitlab.freedesktop.org/drm/intel/-/issues/6333
> >>Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> >>---
> >>tests/i915/gem_ctx_exec.c | 123 ++++++++++++++++++++++++++++++++++++++
> >>tests/meson.build         |   9 ++-
> >>2 files changed, 131 insertions(+), 1 deletion(-)
> >>
> >>diff --git a/tests/i915/gem_ctx_exec.c b/tests/i915/gem_ctx_exec.c
> >>index 3d94f01db9..97fbc50e97 100644
> >>--- a/tests/i915/gem_ctx_exec.c
> >>+++ b/tests/i915/gem_ctx_exec.c
> >>@@ -42,6 +42,7 @@
> >>
> >>#include "i915/gem.h"
> >>#include "i915/gem_create.h"
> >>+#include "i915/perf.h"
> >>#include "igt.h"
> >>#include "igt_dummyload.h"
> >>#include "igt_rand.h"
> >>@@ -448,6 +449,115 @@ static void close_race(int i915)
> >>	munmap(ctx_id, 4096);
> >>}
> >>
> >>+static uint64_t timebase_scale(struct intel_perf *intel_perf, uint32_t u32_delta)
> >>+{
> >>+	return ((uint64_t)u32_delta * NSEC_PER_SEC) / intel_perf->devinfo.timestamp_frequency;
> >>+}
> >>+
> >>+/* Returns: the largest OA exponent that will still result in a sampling period
> >>+ * less than or equal to the given @period.
> >>+ */
> >>+static int max_oa_exponent_for_period_lte(struct intel_perf *intel_perf, uint64_t period)
> >>+{
> >>+	/* NB: timebase_scale() takes a uint32_t and an exponent of 30
> >>+	 * would already represent a period of ~3 minutes so there's
> >>+	 * really no need to consider higher exponents.
> >>+	 */
> >>+	for (int i = 0; i < 30; i++) {
> >>+		uint64_t oa_period = timebase_scale(intel_perf, 2 << i);
> >>+
> >>+		if (oa_period > period)
> >>+			return max(0, i - 1);
> >>+	}
> >>+
> >>+	igt_assert(!"reached");
> >>+	return -1;
> >>+}
> >>+
> >>+static void perf_open_close_loop(int fd, int *done)
> >>+{
> >>+	struct intel_perf_metric_set *metric_set = NULL, *metric_set_iter;
> >>+	struct intel_perf *intel_perf = intel_perf_for_fd(fd);
> >>+	uint64_t properties[] = {
> >>+		DRM_I915_PERF_PROP_SAMPLE_OA, true,
> >>+		DRM_I915_PERF_PROP_OA_METRICS_SET, 0,
> >>+		DRM_I915_PERF_PROP_OA_FORMAT, 0,
> >>+		DRM_I915_PERF_PROP_OA_EXPONENT, 0,
> >>+	};
> >>+	struct drm_i915_perf_open_param param = {
> >>+		.flags = I915_PERF_FLAG_FD_CLOEXEC,
> >
> >nit: If you also add I915_PERF_FLAG_DISABLED here, then OA buffer 
> >reports will be disabled. This will make sure that the perf API does 
> >not enable the OA unit. It will still run the code that you are 
> >targeting.

OK

> >
> >>+		.num_properties = sizeof(properties) / 16,
> >>+		.properties_ptr = to_user_pointer(properties),
> >>+	};
> >>+	uint32_t devid = intel_get_drm_devid(fd);
> >>+
> >>+	igt_require(intel_perf);
> >>+	intel_perf_load_perf_configs(intel_perf, fd);
> >>+
> >>+	igt_require(devid);
> >>+	igt_list_for_each_entry(metric_set_iter, &intel_perf->metric_sets, link) {
> >>+		if (!strcmp(metric_set_iter->symbol_name,
> >>+			    IS_HASWELL(devid) ? "RenderBasic" : "TestOa")) {
> >>+			metric_set = metric_set_iter;
> >>+			break;
> >>+		}
> >>+	}
> >>+	igt_require(metric_set);
> >>+	igt_require(metric_set->perf_oa_metrics_set);
> >>+	properties[3] = metric_set->perf_oa_metrics_set;
> >>+	properties[5] = metric_set->perf_oa_format;
> >>+
> >>+	igt_require(intel_perf->devinfo.timestamp_frequency);
> >>+	properties[7] = max_oa_exponent_for_period_lte(intel_perf, 1000);
> >
> >nit: The result of max_oa_exponent_for_period_lte() can be hard coded 
> >here (likely 1 << 5) and you could remove the additional code added 
> >for max_oa_exponent_for_period_lte(). This parameter only controls the 
> >frequency at which the OA reports are captured into the OA buffer and 
> >it has no relation to the barrier related code in perf.
> 
> My bad. The value would likely be 5. Anyways, it's just a nit.

Thanks for your constructive comments, I'll follow your suggestions.

Thanks,
Janusz

> 
> >
> >Thanks,
> >Umesh
> >
> >>+
> >>+	intel_perf_free(intel_perf);
> >...
> 




