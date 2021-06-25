Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 320F33B3A61
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jun 2021 03:06:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B1956EA53;
	Fri, 25 Jun 2021 01:06:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 217086E9D3;
 Fri, 25 Jun 2021 01:06:23 +0000 (UTC)
IronPort-SDR: 5mVdEHrUCQAL+caF/vNErSk91Vp10d4nYBQBQ4u9bmmKkWkkwtMZoaUgFeHAFNWq0TW4ZFGtta
 x9/6Hcb0cvhQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10025"; a="229180385"
X-IronPort-AV: E=Sophos;i="5.83,297,1616482800"; d="scan'208";a="229180385"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 18:06:22 -0700
IronPort-SDR: +JtTuOpPAoX802D5KxWYpu8lG4xElAaD+0/X5Fx/ayXB0nkdbiEQq0c0G69R1twnti4VucNkPX
 3MisGcWDvwMA==
X-IronPort-AV: E=Sophos;i="5.83,297,1616482800"; d="scan'208";a="445493948"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 18:06:22 -0700
Date: Thu, 24 Jun 2021 17:59:41 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Message-ID: <20210625005940.GA3833@sdutt-i7>
References: <20210624070516.21893-1-matthew.brost@intel.com>
 <20210624070516.21893-44-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210624070516.21893-44-matthew.brost@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 43/47] drm/i915/guc: Hook GuC scheduling
 policies up
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 24, 2021 at 12:05:12AM -0700, Matthew Brost wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> Use the official driver default scheduling policies for configuring
> the GuC scheduler rather than a bunch of hardcoded values.
> 
> Signed-off-by: John Harrison <john.c.harrison@intel.com>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> Cc: Jose Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_types.h  |  1 +
>  drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  2 +
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    | 44 ++++++++++++++++++-
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 11 +++--
>  4 files changed, 53 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 0ceffa2be7a7..37db857bb56c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -455,6 +455,7 @@ struct intel_engine_cs {
>  #define I915_ENGINE_IS_VIRTUAL       BIT(5)
>  #define I915_ENGINE_HAS_RELATIVE_MMIO BIT(6)
>  #define I915_ENGINE_REQUIRES_CMD_PARSER BIT(7)
> +#define I915_ENGINE_WANT_FORCED_PREEMPTION BIT(8)
>  	unsigned int flags;
>  
>  	/*
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index c38365cd5fab..905ecbc7dbe3 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -270,6 +270,8 @@ int intel_guc_engine_failure_process_msg(struct intel_guc *guc,
>  
>  void intel_guc_find_hung_context(struct intel_engine_cs *engine);
>  
> +int intel_guc_global_policies_update(struct intel_guc *guc);
> +
>  void intel_guc_submission_reset_prepare(struct intel_guc *guc);
>  void intel_guc_submission_reset(struct intel_guc *guc, bool stalled);
>  void intel_guc_submission_reset_finish(struct intel_guc *guc);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> index d3e86ab7508f..2ad5fcd4e1b7 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> @@ -77,14 +77,54 @@ static u32 guc_ads_blob_size(struct intel_guc *guc)
>  	       guc_ads_private_data_size(guc);
>  }
>  
> -static void guc_policies_init(struct guc_policies *policies)
> +static void guc_policies_init(struct intel_guc *guc, struct guc_policies *policies)
>  {
> +	struct intel_gt *gt = guc_to_gt(guc);
> +	struct drm_i915_private *i915 = gt->i915;
> +
>  	policies->dpc_promote_time = GLOBAL_POLICY_DEFAULT_DPC_PROMOTE_TIME_US;
>  	policies->max_num_work_items = GLOBAL_POLICY_MAX_NUM_WI;
> +
>  	policies->global_flags = 0;
> +	if (i915->params.reset < 2)
> +		policies->global_flags |= GLOBAL_POLICY_DISABLE_ENGINE_RESET;
> +
>  	policies->is_valid = 1;
>  }
>  
> +static int guc_action_policies_update(struct intel_guc *guc, u32 policy_offset)
> +{
> +	u32 action[] = {
> +		INTEL_GUC_ACTION_GLOBAL_SCHED_POLICY_CHANGE,
> +		policy_offset
> +	};
> +
> +	return intel_guc_send(guc, action, ARRAY_SIZE(action));
> +}
> +
> +int intel_guc_global_policies_update(struct intel_guc *guc)
> +{
> +	struct __guc_ads_blob *blob = guc->ads_blob;
> +	struct intel_gt *gt = guc_to_gt(guc);
> +	intel_wakeref_t wakeref;
> +	int ret;
> +
> +	if (!blob)
> +		return -ENOTSUPP;
> +
> +	GEM_BUG_ON(!blob->ads.scheduler_policies);
> +
> +	guc_policies_init(guc, &blob->policies);
> +
> +	if (!intel_guc_is_ready(guc))
> +		return 0;
> +
> +	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
> +		ret = guc_action_policies_update(guc, blob->ads.scheduler_policies);
> +
> +	return ret;
> +}
> +
>  static void guc_mapping_table_init(struct intel_gt *gt,
>  				   struct guc_gt_system_info *system_info)
>  {
> @@ -281,7 +321,7 @@ static void __guc_ads_init(struct intel_guc *guc)
>  	u8 engine_class, guc_class;
>  
>  	/* GuC scheduling policies */
> -	guc_policies_init(&blob->policies);
> +	guc_policies_init(guc, &blob->policies);
>  
>  	/*
>  	 * GuC expects a per-engine-class context image and size
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 6188189314d5..a427336ce916 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -873,6 +873,7 @@ void intel_guc_submission_reset_finish(struct intel_guc *guc)
>  	GEM_WARN_ON(atomic_read(&guc->outstanding_submission_g2h));
>  	atomic_set(&guc->outstanding_submission_g2h, 0);
>  
> +	intel_guc_global_policies_update(guc);
>  	enable_submission(guc);
>  	intel_gt_unpark_heartbeats(guc_to_gt(guc));
>  }
> @@ -1161,8 +1162,12 @@ static void guc_context_policy_init(struct intel_engine_cs *engine,
>  {
>  	desc->policy_flags = 0;
>  
> -	desc->execution_quantum = CONTEXT_POLICY_DEFAULT_EXECUTION_QUANTUM_US;
> -	desc->preemption_timeout = CONTEXT_POLICY_DEFAULT_PREEMPTION_TIME_US;
> +	if (engine->flags & I915_ENGINE_WANT_FORCED_PREEMPTION)

I can't see where we set this in this series, although I do see a
selftest we need to fixup that sets this. Perhaps we drop this until we
fix that selftest? Or at minimum add a comment saying it will be used in
the future by selftests. What do you think John?

> +		desc->policy_flags |= CONTEXT_POLICY_FLAG_PREEMPT_TO_IDLE;
> +
> +	/* NB: For both of these, zero means disabled. */
> +	desc->execution_quantum = engine->props.timeslice_duration_ms * 1000;
> +	desc->preemption_timeout = engine->props.preempt_timeout_ms * 1000;
>  }
>  
>  static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
> @@ -1945,13 +1950,13 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
>  	engine->set_default_submission = guc_set_default_submission;
>  
>  	engine->flags |= I915_ENGINE_HAS_PREEMPTION;
> +	engine->flags |= I915_ENGINE_HAS_TIMESLICES;
>  
>  	/*
>  	 * TODO: GuC supports timeslicing and semaphores as well, but they're

Nit, we now support timeslicing. I can fix that up in next rev.

Matt

>  	 * handled by the firmware so some minor tweaks are required before
>  	 * enabling.
>  	 *
> -	 * engine->flags |= I915_ENGINE_HAS_TIMESLICES;
>  	 * engine->flags |= I915_ENGINE_HAS_SEMAPHORES;
>  	 */
>  
> -- 
> 2.28.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
