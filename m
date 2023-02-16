Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 611D4699236
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 11:51:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5261D10ED19;
	Thu, 16 Feb 2023 10:51:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50E3010ED19
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Feb 2023 10:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676544699; x=1708080699;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=b/ohphesIaicb1rIUBFuhT+Erie6+WZWgghFZ/9zdWo=;
 b=RJQnKuSFNUPg59eCZmVLsOk/AfKHvYLxClh42bKxvaGo9jyTBTNtYnWH
 GA5H0gEfNuza/hT0C3y846kBQ9df3dq+3BWWovQhhn8YyUNLfqRqX6qF1
 l1ZR1S+XXKaEEZn2oqAqCFvLWjkEVorbVgUVu6OrHP7IxEW5/RZP3lppd
 xX87pSaWNN8jguIyhPKD4IxXGgOxZ0z60neDqca8XL5sx/9KJ55FP+Z1t
 Pv1Ki48wWkOH6DWEc/ZMEivmGcCJUFcLbw4CgcweLTZKKQIY/FWjQlGWu
 z9Ln0FxAtqqG2ijnmhicqeu2uftd3Re4Lq0w0nmcpjDj+sInt/kZG02DB Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="311316420"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="311316420"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 02:51:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="738791074"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="738791074"
Received: from aaronov-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.37.86])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 02:51:37 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230215005419.2100887-6-umesh.nerlige.ramappa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230215005419.2100887-1-umesh.nerlige.ramappa@intel.com>
 <20230215005419.2100887-6-umesh.nerlige.ramappa@intel.com>
Date: Thu, 16 Feb 2023 12:51:34 +0200
Message-ID: <87lekx2895.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915/perf: Group engines into
 respective OA groups
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
Cc: Lionel G Landwerlin <lionel.g.landwerlin@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 14 Feb 2023, Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com> wrote:
> Now that we may have multiple OA units in a single GT as well as on
> separate GTs, create an engine group that maps to a single OA unit.
>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_types.h |   4 +
>  drivers/gpu/drm/i915/gt/intel_sseu.c         |   3 +-
>  drivers/gpu/drm/i915/i915_perf.c             | 126 +++++++++++++++++--
>  drivers/gpu/drm/i915/i915_perf_types.h       |  51 +++++++-
>  4 files changed, 171 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 4fd54fb8810f..8a8b0dce241b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -53,6 +53,8 @@ struct intel_gt;
>  struct intel_ring;
>  struct intel_uncore;
>  struct intel_breadcrumbs;
> +struct intel_engine_cs;
> +struct i915_perf_group;
>  
>  typedef u32 intel_engine_mask_t;
>  #define ALL_ENGINES ((intel_engine_mask_t)~0ul)
> @@ -603,6 +605,8 @@ struct intel_engine_cs {
>  	} props, defaults;
>  
>  	I915_SELFTEST_DECLARE(struct fault_attr reset_timeout);
> +
> +	struct i915_perf_group *oa_group;
>  };
>  
>  static inline bool
> diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
> index 6c6198a257ac..1141f875f5bd 100644
> --- a/drivers/gpu/drm/i915/gt/intel_sseu.c
> +++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
> @@ -6,6 +6,7 @@
>  #include <linux/string_helpers.h>
>  
>  #include "i915_drv.h"
> +#include "i915_perf_types.h"
>  #include "intel_engine_regs.h"
>  #include "intel_gt_regs.h"
>  #include "intel_sseu.h"
> @@ -677,7 +678,7 @@ u32 intel_sseu_make_rpcs(struct intel_gt *gt,
>  	 * If i915/perf is active, we want a stable powergating configuration
>  	 * on the system. Use the configuration pinned by i915/perf.
>  	 */
> -	if (gt->perf.exclusive_stream)
> +	if (gt->perf.group && gt->perf.group[PERF_GROUP_OAG].exclusive_stream)
>  		req_sseu = &gt->perf.sseu;
>  
>  	slices = hweight8(req_sseu->slice_mask);
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index e134523576f8..fda779b2c16f 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -1587,8 +1587,9 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
>  {
>  	struct i915_perf *perf = stream->perf;
>  	struct intel_gt *gt = stream->engine->gt;
> +	struct i915_perf_group *g = stream->engine->oa_group;
>  
> -	if (WARN_ON(stream != gt->perf.exclusive_stream))
> +	if (WARN_ON(stream != g->exclusive_stream))
>  		return;
>  
>  	/*
> @@ -1597,7 +1598,7 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
>  	 *
>  	 * See i915_oa_init_reg_state() and lrc_configure_all_contexts()
>  	 */
> -	WRITE_ONCE(gt->perf.exclusive_stream, NULL);
> +	WRITE_ONCE(g->exclusive_stream, NULL);
>  	perf->ops.disable_metric_set(stream);
>  
>  	free_oa_buffer(stream);
> @@ -3195,6 +3196,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>  {
>  	struct drm_i915_private *i915 = stream->perf->i915;
>  	struct i915_perf *perf = stream->perf;
> +	struct i915_perf_group *g;
>  	struct intel_gt *gt;
>  	int ret;
>  
> @@ -3205,6 +3207,12 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>  	}
>  	gt = props->engine->gt;
>  
> +	g = props->engine->oa_group;
> +	if (!g) {
> +		DRM_DEBUG("Perf group invalid\n");
> +		return -EINVAL;
> +	}
> +
>  	/*
>  	 * If the sysfs metrics/ directory wasn't registered for some
>  	 * reason then don't let userspace try their luck with config
> @@ -3234,7 +3242,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>  	 * counter reports and marshal to the appropriate client
>  	 * we currently only allow exclusive access
>  	 */
> -	if (gt->perf.exclusive_stream) {
> +	if (g->exclusive_stream) {
>  		drm_dbg(&stream->perf->i915->drm,
>  			"OA unit already in use\n");
>  		return -EBUSY;
> @@ -3329,7 +3337,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>  	stream->ops = &i915_oa_stream_ops;
>  
>  	stream->engine->gt->perf.sseu = props->sseu;
> -	WRITE_ONCE(gt->perf.exclusive_stream, stream);
> +	WRITE_ONCE(g->exclusive_stream, stream);
>  
>  	ret = i915_perf_stream_enable_sync(stream);
>  	if (ret) {
> @@ -3352,7 +3360,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>  	return 0;
>  
>  err_enable:
> -	WRITE_ONCE(gt->perf.exclusive_stream, NULL);
> +	WRITE_ONCE(g->exclusive_stream, NULL);
>  	perf->ops.disable_metric_set(stream);
>  
>  	free_oa_buffer(stream);
> @@ -3381,12 +3389,13 @@ void i915_oa_init_reg_state(const struct intel_context *ce,
>  			    const struct intel_engine_cs *engine)
>  {
>  	struct i915_perf_stream *stream;
> +	struct i915_perf_group *g = engine->oa_group;
>  
> -	if (!engine_supports_oa(engine))
> +	if (!g)
>  		return;
>  
>  	/* perf.exclusive_stream serialised by lrc_configure_all_contexts() */
> -	stream = READ_ONCE(engine->gt->perf.exclusive_stream);
> +	stream = READ_ONCE(g->exclusive_stream);
>  	if (stream && GRAPHICS_VER(stream->perf->i915) < 12)
>  		gen8_update_reg_state_unlocked(ce, stream);
>  }
> @@ -4755,6 +4764,95 @@ static struct ctl_table oa_table[] = {
>  	{}
>  };
>  
> +static u32 __num_perf_groups_per_gt(struct intel_gt *gt)
> +{
> +	enum intel_platform platform = INTEL_INFO(gt->i915)->platform;
> +
> +	switch (platform) {
> +	default:
> +		return 1;
> +	}
> +}
> +
> +static u32 __oa_engine_group(struct intel_engine_cs *engine)
> +{
> +	if (!engine_supports_oa(engine))
> +		return PERF_GROUP_INVALID;
> +
> +	switch (engine->class) {
> +	case RENDER_CLASS:
> +		return PERF_GROUP_OAG;
> +
> +	default:
> +		return PERF_GROUP_INVALID;
> +	}
> +}
> +
> +static void oa_init_groups(struct intel_gt *gt)
> +{
> +	int i, num_groups = gt->perf.num_perf_groups;
> +	struct i915_perf *perf = &gt->i915->perf;
> +
> +	for (i = 0; i < num_groups; i++) {
> +		struct i915_perf_group *g = &gt->perf.group[i];
> +
> +		/* Fused off engines can result in a group with num_engines == 0 */
> +		if (g->num_engines == 0)
> +			continue;
> +
> +		/* Set oa_unit_ids now to ensure ids remain contiguous. */
> +		g->oa_unit_id = perf->oa_unit_ids++;
> +
> +		g->gt = gt;
> +	}
> +}
> +
> +static int oa_init_gt(struct intel_gt *gt)
> +{
> +	u32 num_groups = __num_perf_groups_per_gt(gt);
> +	struct intel_engine_cs *engine;
> +	struct i915_perf_group *g;
> +	intel_engine_mask_t tmp;
> +
> +	g = kcalloc(num_groups, sizeof(*g), GFP_KERNEL);
> +	if (drm_WARN_ON(&gt->i915->drm, !g))
> +		return -ENOMEM;

No warnings or messages on -ENOMEM is standard policy.

> +
> +	for_each_engine_masked(engine, gt, ALL_ENGINES, tmp) {
> +		u32 index;
> +
> +		index = __oa_engine_group(engine);
> +		if (index < num_groups) {
> +			g[index].engine_mask |= BIT(engine->id);
> +			g[index].num_engines++;
> +			engine->oa_group = &g[index];
> +		} else {
> +			engine->oa_group = NULL;
> +		}
> +	}
> +
> +	gt->perf.num_perf_groups = num_groups;
> +	gt->perf.group = g;
> +
> +	oa_init_groups(gt);
> +
> +	return 0;
> +}
> +
> +static int oa_init_engine_groups(struct i915_perf *perf)
> +{
> +	struct intel_gt *gt;
> +	int i, ret;
> +
> +	for_each_gt(gt, perf->i915, i) {
> +		ret = oa_init_gt(gt);
> +		if (ret)
> +			return ret;

If this fails in the middle, you'll leave things in half-initialized
state when returning, and expect the caller to clean it up. But that's a
surprising interface design. If i915_perf_init() returns an error, it's
*not* customary to have to call the corresponding cleanup function. On
the contrary, you only call it on success. Any init failures need to be
cleaned up internally before returning.

> +	}
> +
> +	return 0;
> +}
> +
>  static void oa_init_supported_formats(struct i915_perf *perf)
>  {
>  	struct drm_i915_private *i915 = perf->i915;
> @@ -4921,7 +5019,7 @@ int i915_perf_init(struct drm_i915_private *i915)
>  
>  	if (perf->ops.enable_metric_set) {
>  		struct intel_gt *gt;
> -		int i;
> +		int i, ret;
>  
>  		for_each_gt(gt, i915, i)
>  			mutex_init(&gt->perf.lock);
> @@ -4960,6 +5058,13 @@ int i915_perf_init(struct drm_i915_private *i915)
>  
>  		perf->i915 = i915;
>  
> +		ret = oa_init_engine_groups(perf);
> +		if (ret) {
> +			drm_err(&i915->drm,
> +				"OA initialization failed %d\n", ret);
> +			return ret;
> +		}
> +
>  		oa_init_supported_formats(perf);
>  	}
>  
> @@ -4990,10 +5095,15 @@ void i915_perf_sysctl_unregister(void)
>  void i915_perf_fini(struct drm_i915_private *i915)
>  {
>  	struct i915_perf *perf = &i915->perf;
> +	struct intel_gt *gt;
> +	int i;
>  
>  	if (!perf->i915)
>  		return;
>  
> +	for_each_gt(gt, perf->i915, i)
> +		kfree(gt->perf.group);
> +
>  	idr_for_each(&perf->metrics_idr, destroy_config, perf);
>  	idr_destroy(&perf->metrics_idr);
>  
> diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
> index e36f046fe2b6..ce99551ad0fd 100644
> --- a/drivers/gpu/drm/i915/i915_perf_types.h
> +++ b/drivers/gpu/drm/i915/i915_perf_types.h
> @@ -17,6 +17,7 @@
>  #include <linux/wait.h>
>  #include <uapi/drm/i915_drm.h>
>  
> +#include "gt/intel_engine_types.h"
>  #include "gt/intel_sseu.h"
>  #include "i915_reg_defs.h"
>  #include "intel_wakeref.h"
> @@ -30,6 +31,13 @@ struct i915_vma;
>  struct intel_context;
>  struct intel_engine_cs;
>  
> +enum {
> +	PERF_GROUP_OAG = 0,
> +
> +	PERF_GROUP_MAX,
> +	PERF_GROUP_INVALID = U32_MAX,
> +};
> +
>  struct i915_oa_format {
>  	u32 format;
>  	int size;
> @@ -390,6 +398,35 @@ struct i915_oa_ops {
>  	u32 (*oa_hw_tail_read)(struct i915_perf_stream *stream);
>  };
>  
> +struct i915_perf_group {
> +	/*
> +	 * @type: Identifier for the OA unit.
> +	 */
> +	u32 oa_unit_id;
> +
> +	/*
> +	 * @gt: gt that this group belongs to
> +	 */
> +	struct intel_gt *gt;
> +
> +	/*
> +	 * @exclusive_stream: The stream currently using the OA unit. This is
> +	 * sometimes accessed outside a syscall associated to its file
> +	 * descriptor.
> +	 */
> +	struct i915_perf_stream *exclusive_stream;
> +
> +	/*
> +	 * @num_engines: The number of engines using this OA buffer.
> +	 */
> +	u32 num_engines;
> +
> +	/*
> +	 * @engine_mask: A mask of engines using a single OA buffer.
> +	 */
> +	intel_engine_mask_t engine_mask;
> +};
> +
>  struct i915_perf_gt {
>  	/*
>  	 * Lock associated with anything below within this structure.
> @@ -402,12 +439,15 @@ struct i915_perf_gt {
>  	 */
>  	struct intel_sseu sseu;
>  
> +	/**
> +	 * @num_perf_groups: number of perf groups per gt.
> +	 */
> +	u32 num_perf_groups;
> +
>  	/*
> -	 * @exclusive_stream: The stream currently using the OA unit. This is
> -	 * sometimes accessed outside a syscall associated to its file
> -	 * descriptor.
> +	 * @group: list of OA groups - one for each OA buffer.
>  	 */
> -	struct i915_perf_stream *exclusive_stream;
> +	struct i915_perf_group *group;
>  };
>  
>  struct i915_perf {
> @@ -461,6 +501,9 @@ struct i915_perf {
>  	unsigned long format_mask[FORMAT_MASK_SIZE];
>  
>  	atomic64_t noa_programming_delay;
> +
> +	/* oa unit ids */
> +	u32 oa_unit_ids;
>  };
>  
>  #endif /* _I915_PERF_TYPES_H_ */

-- 
Jani Nikula, Intel Open Source Graphics Center
