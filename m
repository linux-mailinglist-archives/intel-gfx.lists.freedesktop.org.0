Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 344254677A3
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 13:50:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C6DB7A500;
	Fri,  3 Dec 2021 12:50:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC86B7A500
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Dec 2021 12:50:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="224212373"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="224212373"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 04:50:00 -0800
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="460864680"
Received: from barrettd-mobl.ger.corp.intel.com (HELO [10.213.208.70])
 ([10.213.208.70])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 04:49:59 -0800
Message-ID: <9d026b5b-321c-207f-55b4-6da66ec72ca2@linux.intel.com>
Date: Fri, 3 Dec 2021 12:49:54 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20211203115239.4012057-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20211203115239.4012057-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Use hw_engine_masks as
 reset_domains
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



On 03/12/2021 11:52, Tejas Upadhyay wrote:
> We need a way to reset engines by their reset domains.
> This change sets up way to fetch reset domains of each
> engine globally.
> 
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 24 +++++++++++++++
>   drivers/gpu/drm/i915/gt/intel_engine_types.h |  1 +
>   drivers/gpu/drm/i915/gt/intel_gt_types.h     |  1 +
>   drivers/gpu/drm/i915/gt/intel_reset.c        | 31 +++-----------------
>   4 files changed, 30 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index f2ccd5b53d42..6a9046aaf04a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -325,6 +325,7 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id,
>   	engine->id = id;
>   	engine->legacy_idx = INVALID_ENGINE;
>   	engine->mask = BIT(id);
> +	engine->reset_domain = gt->engine_reset_domains[id];

Do you want to check if the reset domains table entry is not zero here 
and GEM_WARN_ON if it is? I suspect so, that would be like table being 
incomplete for the platform at hand, or wrong table used, right?

>   	engine->i915 = i915;
>   	engine->gt = gt;
>   	engine->uncore = gt->uncore;
> @@ -643,6 +644,29 @@ int intel_engines_init_mmio(struct intel_gt *gt)
>   	if (i915_inject_probe_failure(i915))
>   		return -ENODEV;
>   
> +	if (GRAPHICS_VER(gt->i915) >= 11) {
> +		gt->engine_reset_domains[RCS0] = GEN11_GRDOM_RENDER;
> +		gt->engine_reset_domains[BCS0] = GEN11_GRDOM_BLT;
> +		gt->engine_reset_domains[VCS0] = GEN11_GRDOM_MEDIA;
> +		gt->engine_reset_domains[VCS1] = GEN11_GRDOM_MEDIA2;
> +		gt->engine_reset_domains[VCS2] = GEN11_GRDOM_MEDIA3;
> +		gt->engine_reset_domains[VCS3] = GEN11_GRDOM_MEDIA4;
> +		gt->engine_reset_domains[VCS4] = GEN11_GRDOM_MEDIA5;
> +		gt->engine_reset_domains[VCS5] = GEN11_GRDOM_MEDIA6;
> +		gt->engine_reset_domains[VCS6] = GEN11_GRDOM_MEDIA7;
> +		gt->engine_reset_domains[VCS7] = GEN11_GRDOM_MEDIA8;
> +		gt->engine_reset_domains[VECS0] = GEN11_GRDOM_VECS;
> +		gt->engine_reset_domains[VECS1] = GEN11_GRDOM_VECS2;
> +		gt->engine_reset_domains[VECS2] = GEN11_GRDOM_VECS3;
> +		gt->engine_reset_domains[VECS3] = GEN11_GRDOM_VECS4;
> +	} else {
> +		gt->engine_reset_domains[RCS0] = GEN6_GRDOM_RENDER;
> +		gt->engine_reset_domains[BCS0] = GEN6_GRDOM_BLT;
> +		gt->engine_reset_domains[VCS0] = GEN6_GRDOM_MEDIA;
> +		gt->engine_reset_domains[VCS1] = GEN8_GRDOM_MEDIA2;
> +		gt->engine_reset_domains[VECS0] = GEN6_GRDOM_VECS;
> +	}

Agree with Ville - these should be static const tables.

> +
>   	for (class = 0; class < MAX_ENGINE_CLASS + 1; ++class) {
>   		setup_logical_ids(gt, logical_ids, class);
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 5732e0d71513..1faf0e02866d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -318,6 +318,7 @@ struct intel_engine_cs {
>   	unsigned int guc_id;
>   
>   	intel_engine_mask_t mask;
> +	intel_engine_mask_t reset_domain;

Type should be u32 AFAICT.

>   	/**
>   	 * @logical_mask: logical mask of engine, reported to user space via
>   	 * query IOCTL and used to communicate with the GuC in logical space.
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index 14216cc471b1..1d9b65aefb02 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -153,6 +153,7 @@ struct intel_gt {
>   	} stats;
>   
>   	struct intel_engine_cs *engine[I915_NUM_ENGINES];
> +	u32 engine_reset_domains[I915_NUM_ENGINES];
>   	struct intel_engine_cs *engine_class[MAX_ENGINE_CLASS + 1]
>   					    [MAX_ENGINE_INSTANCE + 1];
>   	enum intel_submission_method submission_method;
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 0fbd6dbadce7..e4e30f16db8e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -297,13 +297,6 @@ static int gen6_reset_engines(struct intel_gt *gt,
>   			      intel_engine_mask_t engine_mask,
>   			      unsigned int retry)
>   {
> -	static const u32 hw_engine_mask[] = {
> -		[RCS0]  = GEN6_GRDOM_RENDER,
> -		[BCS0]  = GEN6_GRDOM_BLT,
> -		[VCS0]  = GEN6_GRDOM_MEDIA,
> -		[VCS1]  = GEN8_GRDOM_MEDIA2,
> -		[VECS0] = GEN6_GRDOM_VECS,
> -	};
>   	struct intel_engine_cs *engine;
>   	u32 hw_mask;
>   
> @@ -314,8 +307,8 @@ static int gen6_reset_engines(struct intel_gt *gt,
>   
>   		hw_mask = 0;
>   		for_each_engine_masked(engine, gt, engine_mask, tmp) {
> -			GEM_BUG_ON(engine->id >= ARRAY_SIZE(hw_engine_mask));
> -			hw_mask |= hw_engine_mask[engine->id];
> +			GEM_BUG_ON(engine->id >= I915_NUM_ENGINES);

This bug on now serves no purpose.

> +			hw_mask |= engine->reset_domain;
>   		}
>   	}
>   
> @@ -492,22 +485,6 @@ static int gen11_reset_engines(struct intel_gt *gt,
>   			       intel_engine_mask_t engine_mask,
>   			       unsigned int retry)
>   {
> -	static const u32 hw_engine_mask[] = {
> -		[RCS0]  = GEN11_GRDOM_RENDER,
> -		[BCS0]  = GEN11_GRDOM_BLT,
> -		[VCS0]  = GEN11_GRDOM_MEDIA,
> -		[VCS1]  = GEN11_GRDOM_MEDIA2,
> -		[VCS2]  = GEN11_GRDOM_MEDIA3,
> -		[VCS3]  = GEN11_GRDOM_MEDIA4,
> -		[VCS4]  = GEN11_GRDOM_MEDIA5,
> -		[VCS5]  = GEN11_GRDOM_MEDIA6,
> -		[VCS6]  = GEN11_GRDOM_MEDIA7,
> -		[VCS7]  = GEN11_GRDOM_MEDIA8,
> -		[VECS0] = GEN11_GRDOM_VECS,
> -		[VECS1] = GEN11_GRDOM_VECS2,
> -		[VECS2] = GEN11_GRDOM_VECS3,
> -		[VECS3] = GEN11_GRDOM_VECS4,
> -	};
>   	struct intel_engine_cs *engine;
>   	intel_engine_mask_t tmp;
>   	u32 reset_mask, unlock_mask = 0;
> @@ -518,8 +495,8 @@ static int gen11_reset_engines(struct intel_gt *gt,
>   	} else {
>   		reset_mask = 0;
>   		for_each_engine_masked(engine, gt, engine_mask, tmp) {
> -			GEM_BUG_ON(engine->id >= ARRAY_SIZE(hw_engine_mask));
> -			reset_mask |= hw_engine_mask[engine->id];
> +			GEM_BUG_ON(engine->id >= I915_NUM_ENGINES);

Ditto.

> +			reset_mask |= engine->reset_domain;
>   			ret = gen11_lock_sfc(engine, &reset_mask, &unlock_mask);
>   			if (ret)
>   				goto sfc_unlock;
> 

Regards,

Tvrtko
