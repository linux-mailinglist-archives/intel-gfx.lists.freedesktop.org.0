Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2497A0E27
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 21:22:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2174010E2B2;
	Thu, 14 Sep 2023 19:22:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1838610E2B2
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 19:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694719350; x=1726255350;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=tHFZKlkGqZEN76xZCWieNrzAZzscdC6uDKqeGhH4RRU=;
 b=MRSCscqQ8VGfYgA05cLbyxxpZqaK/hnkPhzaiwjxSEukGquG9Vqjd+jU
 z717/C6jYsWPuRKLfx2Ym2+PP5fhXlcAzG/6KXr+COpVBXU/Dygu0B+RK
 idbj0zpE+VgQ1izRrBUv7cUbUxAY+ouG61VL5wjYp/iDFk95MHcypm2R5
 tL7hPdasLLfMz7gZbAPq9KFMX5chInZ6ip3wD2LLLXXD9pV5p4E7u3smL
 +ClTWLRFkpgi457BOHrsa0O8aTtyeis+db1N3R5GCbmGX5llXugd+HF/a
 pupEu9nmS5LVvieeJ8K8RpOlWK/g9+8zIo6Eakihkf2QteB2RBUG7UBrf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="376388927"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="376388927"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:22:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="810200165"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="810200165"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.46.50])
 ([10.249.46.50])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:22:27 -0700
Message-ID: <3958d006-677f-9922-ad86-7c660ec388db@linux.intel.com>
Date: Thu, 14 Sep 2023 21:22:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: "Zeng, Oak" <oak.zeng@intel.com>, "Das, Nirmoy" <nirmoy.das@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20230913130935.27707-1-nirmoy.das@intel.com>
 <20230913130935.27707-4-nirmoy.das@intel.com>
 <SA1PR11MB6991B337C78C5D409B35D6A892F0A@SA1PR11MB6991.namprd11.prod.outlook.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <SA1PR11MB6991B337C78C5D409B35D6A892F0A@SA1PR11MB6991.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: Create a kernel context for
 GGTT updates
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
Cc: "Shyti, Andi" <andi.shyti@intel.com>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Oak,

On 9/13/2023 6:30 PM, Zeng, Oak wrote:
>
> Thanks,
> Oak
>
>> -----Original Message-----
>> From: Das, Nirmoy <nirmoy.das@intel.com>
>> Sent: Wednesday, September 13, 2023 9:10 AM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Zeng, Oak <oak.zeng@intel.com>; chris.p.wilson@linux.intel.com; Piorkowski,
>> Piotr <piotr.piorkowski@intel.com>; Shyti, Andi <andi.shyti@intel.com>; Mun,
>> Gwan-gyeong <gwan-gyeong.mun@intel.com>; Roper, Matthew D
>> <matthew.d.roper@intel.com>; Das, Nirmoy <nirmoy.das@intel.com>
>> Subject: [PATCH 2/7] drm/i915: Create a kernel context for GGTT updates
>>
>> Create a separate kernel context if a platform requires
>> GGTT updates using MI_UPDATE_GTT blitter command.
>>
>> Subsequent patch will introduce methods to update
>> GGTT using this bind context and MI_UPDATE_GTT blitter
>> command.
>>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_engine.h       |  2 ++
>>   drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 33 +++++++++++++++++++-
>>   drivers/gpu/drm/i915/gt/intel_engine_types.h |  3 ++
>>   drivers/gpu/drm/i915/gt/intel_gt.c           | 18 +++++++++++
>>   drivers/gpu/drm/i915/gt/intel_gt.h           |  2 ++
>>   5 files changed, 57 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h
>> b/drivers/gpu/drm/i915/gt/intel_engine.h
>> index b58c30ac8ef0..40269e4c1e31 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
>> @@ -170,6 +170,8 @@ intel_write_status_page(struct intel_engine_cs *engine,
>> int reg, u32 value)
>>   #define I915_GEM_HWS_SEQNO		0x40
>>   #define I915_GEM_HWS_SEQNO_ADDR		(I915_GEM_HWS_SEQNO
>> * sizeof(u32))
>>   #define I915_GEM_HWS_MIGRATE		(0x42 * sizeof(u32))
>> +#define I915_GEM_HWS_GGTT_BIND		0x46
>> +#define I915_GEM_HWS_GGTT_BIND_ADDR	(I915_GEM_HWS_GGTT_BIND *
>> sizeof(u32))
>>   #define I915_GEM_HWS_PXP		0x60
>>   #define I915_GEM_HWS_PXP_ADDR		(I915_GEM_HWS_PXP *
>> sizeof(u32))
>>   #define I915_GEM_HWS_GSC		0x62
>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> index dfb69fc977a0..52a24f55cb57 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> @@ -1419,6 +1419,20 @@ void intel_engine_destroy_pinned_context(struct
>> intel_context *ce)
>>   	intel_context_put(ce);
>>   }
>>
>> +static struct intel_context *
>> +create_ggtt_bind_context(struct intel_engine_cs *engine)
>> +{
>> +	static struct lock_class_key kernel;
>> +
>> +	/*
>> +	 * MI_UPDATE_GTT can insert up to 512 PTE entries and there could be
>> multiple
>> +	 * bind requets at a time so get a bigger ring.
>> +	 */
>> +	return intel_engine_create_pinned_context(engine, engine->gt->vm,
>> SZ_512K,
>> +
>> I915_GEM_HWS_GGTT_BIND_ADDR,
>> +						  &kernel, "ggtt_bind_context");
>> +}
>> +
>>   static struct intel_context *
>>   create_kernel_context(struct intel_engine_cs *engine)
>>   {
>> @@ -1442,7 +1456,7 @@ create_kernel_context(struct intel_engine_cs *engine)
>>    */
>>   static int engine_init_common(struct intel_engine_cs *engine)
>>   {
>> -	struct intel_context *ce;
>> +	struct intel_context *ce, *bce = NULL;
>>   	int ret;
>>
>>   	engine->set_default_submission(engine);
>> @@ -1458,6 +1472,17 @@ static int engine_init_common(struct intel_engine_cs
>> *engine)
>>   	ce = create_kernel_context(engine);
>>   	if (IS_ERR(ce))
>>   		return PTR_ERR(ce);
>> +	/*
>> +	 * Create a separate pinned context for GGTT update with blitter engine
>> +	 * if a platform require such service. MI_UPDATE_GTT works on other
>> +	 * engines as well but BCS should be less busy engine so pick that for
>> +	 * GGTT updates.
>> +	 */
>> +	if (engine->id == BCS0) {
>> +		bce = create_ggtt_bind_context(engine);
>> +		if (IS_ERR(bce))
>> +			return PTR_ERR(bce);
>
> Do you need to destroy ce before return?

Yes , I will fix it in next rev.


Thanks,

Nirmoy

>
> Oak
>> +	}
>>
>>   	ret = measure_breadcrumb_dw(ce);
>>   	if (ret < 0)
>> @@ -1465,11 +1490,14 @@ static int engine_init_common(struct intel_engine_cs
>> *engine)
>>
>>   	engine->emit_fini_breadcrumb_dw = ret;
>>   	engine->kernel_context = ce;
>> +	engine->bind_context = bce;
>>
>>   	return 0;
>>
>>   err_context:
>>   	intel_engine_destroy_pinned_context(ce);
>> +	if (bce)
>> +		intel_engine_destroy_pinned_context(ce);
>>   	return ret;
>>   }
>>
>> @@ -1537,6 +1565,9 @@ void intel_engine_cleanup_common(struct
>> intel_engine_cs *engine)
>>
>>   	if (engine->kernel_context)
>>   		intel_engine_destroy_pinned_context(engine->kernel_context);
>> +	if (engine->bind_context)
>> +		intel_engine_destroy_pinned_context(engine->bind_context);
>> +
>>
>>   	GEM_BUG_ON(!llist_empty(&engine->barrier_tasks));
>>   	cleanup_status_page(engine);
>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h
>> b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>> index a7e677598004..a8f527fab0f0 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>> @@ -416,6 +416,9 @@ struct intel_engine_cs {
>>   	struct llist_head barrier_tasks;
>>
>>   	struct intel_context *kernel_context; /* pinned */
>> +	struct intel_context *bind_context; /* pinned, only for BCS0 */
>> +	/* mark the bind context's availability status */
>> +	bool bind_context_ready;
>>
>>   	/**
>>   	 * pinned_contexts_list: List of pinned contexts. This list is only
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c
>> b/drivers/gpu/drm/i915/gt/intel_gt.c
>> index 449f0b7fc843..cd0ff1597db9 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
>> @@ -1019,3 +1019,21 @@ enum i915_map_type
>> intel_gt_coherent_map_type(struct intel_gt *gt,
>>   	else
>>   		return I915_MAP_WC;
>>   }
>> +
>> +void intel_gt_bind_context_set_ready(struct intel_gt *gt, bool ready)
>> +{
>> +	struct intel_engine_cs *engine = gt->engine[BCS0];
>> +
>> +	if (engine && engine->bind_context)
>> +		engine->bind_context_ready = ready;
>> +}
>> +
>> +bool intel_gt_is_bind_context_ready(struct intel_gt *gt)
>> +{
>> +	struct intel_engine_cs *engine = gt->engine[BCS0];
>> +
>> +	if (engine)
>> +		return engine->bind_context_ready;
>> +
>> +	return false;
>> +}
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h
>> b/drivers/gpu/drm/i915/gt/intel_gt.h
>> index 239848bcb2a4..9e70e625cebc 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
>> @@ -180,4 +180,6 @@ enum i915_map_type
>> intel_gt_coherent_map_type(struct intel_gt *gt,
>>   					      struct drm_i915_gem_object *obj,
>>   					      bool always_coherent);
>>
>> +void intel_gt_bind_context_set_ready(struct intel_gt *gt, bool ready);
>> +bool intel_gt_is_bind_context_ready(struct intel_gt *gt);
>>   #endif /* __INTEL_GT_H__ */
>> --
>> 2.41.0
