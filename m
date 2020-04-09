Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 268061A37D9
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 18:13:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 907436E255;
	Thu,  9 Apr 2020 16:13:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 071986E255
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2020 16:13:54 +0000 (UTC)
IronPort-SDR: xLGV7FIyZ5g0M1+w8LYOKvxgyq50oJggXVrBAWLMPx18DYuhZ3IZX2TvGYbfyM50BpS+M1G0fs
 UamCTbdt9o2A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2020 09:13:54 -0700
IronPort-SDR: Hy/gbMyzq6dq/ep0UuGM8mOYgsYc+io156DuEPGNIN2lZwHhU+Yk/6GsDaZ0J5BSnSI8msqQ26
 Xm9UlbOwRp8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,363,1580803200"; d="scan'208";a="242692259"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga007.fm.intel.com with ESMTP; 09 Apr 2020 09:13:53 -0700
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200409005658.12262-1-daniele.ceraolospurio@intel.com>
 <20200409005658.12262-2-daniele.ceraolospurio@intel.com>
 <446d2f1d-9940-730e-905a-e6b815be767d@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <c63359d9-14a9-ff6b-69c2-418f20d64489@intel.com>
Date: Thu, 9 Apr 2020 09:13:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <446d2f1d-9940-730e-905a-e6b815be767d@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/guc: drop guc parameter from
 guc_ggtt_offset
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 4/9/20 7:03 AM, Michal Wajdeczko wrote:
> 
> 
> On 09.04.2020 02:56, Daniele Ceraolo Spurio wrote:
>> We stopped using the parameter in commit dd18cedfa36f
>> ("drm/i915/guc: Move the pin bias value from GuC to GGTT"),
>> so we can safely remove it.
>>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Matthew Brost <matthew.brost@intel.com>
>> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>> Cc: John Harrison <john.c.harrison@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/uc/intel_guc.c            | 6 +++---
>>   drivers/gpu/drm/i915/gt/uc/intel_guc.h            | 4 +---
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c        | 2 +-
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c         | 5 ++---
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 4 ++--
>>   drivers/gpu/drm/i915/gt/uc/intel_huc.c            | 3 +--
>>   6 files changed, 10 insertions(+), 14 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> index 861657897c0f..5134d544bf4c 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> @@ -220,7 +220,7 @@ static u32 guc_ctl_ctxinfo_flags(struct intel_guc *guc)
>>   	if (intel_guc_submission_is_used(guc)) {
>>   		u32 ctxnum, base;
>>   
>> -		base = intel_guc_ggtt_offset(guc, guc->stage_desc_pool);
>> +		base = intel_guc_ggtt_offset(guc->stage_desc_pool);
>>   		ctxnum = GUC_MAX_STAGE_DESCRIPTORS / 16;
>>   
>>   		base >>= PAGE_SHIFT;
>> @@ -232,7 +232,7 @@ static u32 guc_ctl_ctxinfo_flags(struct intel_guc *guc)
>>   
>>   static u32 guc_ctl_log_params_flags(struct intel_guc *guc)
>>   {
>> -	u32 offset = intel_guc_ggtt_offset(guc, guc->log.vma) >> PAGE_SHIFT;
>> +	u32 offset = intel_guc_ggtt_offset(guc->log.vma) >> PAGE_SHIFT;
>>   	u32 flags;
>>   
>>   	#if (((CRASH_BUFFER_SIZE) % SZ_1M) == 0)
>> @@ -273,7 +273,7 @@ static u32 guc_ctl_log_params_flags(struct intel_guc *guc)
>>   
>>   static u32 guc_ctl_ads_flags(struct intel_guc *guc)
>>   {
>> -	u32 ads = intel_guc_ggtt_offset(guc, guc->ads_vma) >> PAGE_SHIFT;
>> +	u32 ads = intel_guc_ggtt_offset(guc->ads_vma) >> PAGE_SHIFT;
>>   	u32 flags = ads << GUC_ADS_ADDR_SHIFT;
>>   
>>   	return flags;
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> index e84ab67b317d..366191204a7d 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> @@ -103,7 +103,6 @@ static inline void intel_guc_to_host_event_handler(struct intel_guc *guc)
>>   
>>   /**
>>    * intel_guc_ggtt_offset() - Get and validate the GGTT offset of @vma
>> - * @guc: intel_guc structure.
>>    * @vma: i915 graphics virtual memory area.
>>    *
>>    * GuC does not allow any gfx GGTT address that falls into range
>> @@ -114,8 +113,7 @@ static inline void intel_guc_to_host_event_handler(struct intel_guc *guc)
>>    *
>>    * Return: GGTT offset of the @vma.
>>    */
>> -static inline u32 intel_guc_ggtt_offset(struct intel_guc *guc,
>> -					struct i915_vma *vma)
>> +static inline u32 intel_guc_ggtt_offset(struct i915_vma *vma)
> 
> leaving this function with 'intel_guc' prefix without param guc would
> break our naming schema, maybe we should rename it to:
> 
> 	static inline u32 i915_ggtt_offset_guc(struct i915_vma *vma)
> 

I'm not convinced this is a good idea, the guc code still owns this 
function, so IMO it should still be called intel_guc_* to make that 
clear. We do have plenty of examples where the prefix and the param 
don't match, e.g. i915_ggtt_pin_bias just below accepts a vma and not 
the GGTT structure. With this I don't want to say that we should not try 
to match the prefix and param as much as possible, just that we should 
avoid enforcing that rule too strictly.

> as code inside init_ggtt() already understands guc specifics ...
> 
>>   {
>>   	u32 offset = i915_ggtt_offset(vma);
> 
> btw, we have here (not shown) in diff:
> 
> 	GEM_BUG_ON(offset < i915_ggtt_pin_bias(vma));
> 
> that I would move to i915_ggtt_offset() as it quite generic

Not all objects are pinned using the bias so can't do that.

> and replace it with something more GuC specific, like:
> 
> 	GEM_BUG_ON(offset < intel_wopcm_guc_size(wopcm))

I have a patch later in the series to move the wopcm under uc, so 
getting it from the vma would be troublesome (vma->vm->gt.uc). Since we 
use this for HuC as well maybe we can change to:

intel_uc_ggtt_offset(struct intel_uc *uc, struct i915_vma *vma)
{
	GEM_BUG_ON(offset < intel_uc_wopcm_guc_size(uc));
	...
}

but not sure if passing in the uc just to get to the wopcm is overkill 
when we have the bias value easily accessible via i915_ggtt_pin_bias. 
Thoughts?

Daniele

> 
> Michal
> 
>>   
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
>> index 101728006ae9..9237d798f7f4 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
>> @@ -107,7 +107,7 @@ static void __guc_ads_init(struct intel_guc *guc)
>>   	blob->system_info.vebox_enable_mask = VEBOX_MASK(dev_priv);
>>   	blob->system_info.vdbox_sfc_support_mask = RUNTIME_INFO(dev_priv)->vdbox_sfc_access;
>>   
>> -	base = intel_guc_ggtt_offset(guc, guc->ads_vma);
>> +	base = intel_guc_ggtt_offset(guc->ads_vma);
>>   
>>   	/* Clients info  */
>>   	guc_ct_pool_entries_init(blob->ct_pool, ARRAY_SIZE(blob->ct_pool));
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> index 11742fca0e9e..aad5ac54c1ba 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> @@ -187,7 +187,7 @@ int intel_guc_ct_init(struct intel_guc_ct *ct)
>>   		return err;
>>   	}
>>   
>> -	CT_DEBUG(ct, "vma base=%#x\n", intel_guc_ggtt_offset(guc, ct->vma));
>> +	CT_DEBUG(ct, "vma base=%#x\n", intel_guc_ggtt_offset(ct->vma));
>>   
>>   	/* store pointers to desc and cmds */
>>   	for (i = 0; i < ARRAY_SIZE(ct->ctbs); i++) {
>> @@ -220,7 +220,6 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct)
>>    */
>>   int intel_guc_ct_enable(struct intel_guc_ct *ct)
>>   {
>> -	struct intel_guc *guc = ct_to_guc(ct);
>>   	u32 base, cmds, size;
>>   	int err;
>>   	int i;
>> @@ -229,7 +228,7 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
>>   
>>   	/* vma should be already allocated and map'ed */
>>   	GEM_BUG_ON(!ct->vma);
>> -	base = intel_guc_ggtt_offset(guc, ct->vma);
>> +	base = intel_guc_ggtt_offset(ct->vma);
>>   
>>   	/* (re)initialize descriptors
>>   	 * cmds buffers are in the second half of the blob page
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index fe7778c28d2d..7eaf173dd588 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -153,8 +153,8 @@ static void guc_stage_desc_init(struct intel_guc *guc)
>>   	desc->stage_id = 0;
>>   	desc->priority = GUC_CLIENT_PRIORITY_KMD_NORMAL;
>>   
>> -	desc->process_desc = intel_guc_ggtt_offset(guc, guc->proc_desc);
>> -	desc->wq_addr = intel_guc_ggtt_offset(guc, guc->workqueue);
>> +	desc->process_desc = intel_guc_ggtt_offset(guc->proc_desc);
>> +	desc->wq_addr = intel_guc_ggtt_offset(guc->workqueue);
>>   	desc->wq_size = GUC_WQ_SIZE;
>>   }
>>   
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
>> index 65eeb44b397d..534f4d9f6591 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
>> @@ -166,8 +166,7 @@ int intel_huc_auth(struct intel_huc *huc)
>>   	if (ret)
>>   		goto fail;
>>   
>> -	ret = intel_guc_auth_huc(guc,
>> -				 intel_guc_ggtt_offset(guc, huc->rsa_data));
>> +	ret = intel_guc_auth_huc(guc, intel_guc_ggtt_offset(huc->rsa_data));
>>   	if (ret) {
>>   		DRM_ERROR("HuC: GuC did not ack Auth request %d\n", ret);
>>   		goto fail;
>>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
