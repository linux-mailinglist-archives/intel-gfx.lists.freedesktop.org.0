Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F088A8A8812
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 17:50:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58CA011364C;
	Wed, 17 Apr 2024 15:50:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CEiQmI6T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4245711364C
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Apr 2024 15:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713369032; x=1744905032;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=+hyvcL9QcRL0ceooYaZ5yFnfm33XtAHLEtsZsMFJ7mk=;
 b=CEiQmI6Tk/k9Rj+pCu6hcQmAusZDZAR9kXgvVTVJD6BzVAkRTXDqIx4E
 Rd1OnS2m3nOfbsNOoNYWluHRmaS23ynEwvKWR62/L14u0DTKLQmBaH8ZH
 LuNtWRSsMIPIJL/v+x4nK1jG+Fa3dK7Tt9Op1lQasVCEBCu7daKqahcj6
 hb4aVcjMXShJerRHMngaj4bXANH3AVoqFPIzSuuTGB73Gr2T5Mhl9Gz2j
 E5lFR/t8Xd6itXQUJOPXaKkvVhudi0QXz+X3iLqA0uZJ39r+jaUN2kYh5
 063h18i4Vf/UOq7FKmEFmAlxyIUZHN/tSN9lWvAyUJEmQ8Qg17xdlJAzC A==;
X-CSE-ConnectionGUID: lfaXhWQERzSS0BTLIT5f9A==
X-CSE-MsgGUID: mm1LzRWlT4CG0aQqZe2wWg==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="12651592"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="12651592"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 08:50:31 -0700
X-CSE-ConnectionGUID: 9zqMP7pER5iB54SzyfNoAg==
X-CSE-MsgGUID: IGgQ/NuZQ82FwLjoSEY7og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="53883089"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.94.250.221])
 ([10.94.250.221])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 08:50:30 -0700
Message-ID: <a31b5bfb-1896-43a2-adcc-48ec2284a163@linux.intel.com>
Date: Wed, 17 Apr 2024 17:50:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH] drm/i915: Don't reset GuC before engine reset on full
 GT reset
To: John Harrison <john.c.harrison@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20240415164441.5684-1-nirmoy.das@intel.com>
 <5dc00c2d-a819-4298-bdbf-f76da925f801@intel.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <5dc00c2d-a819-4298-bdbf-f76da925f801@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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

Hi John,

On 4/17/2024 2:37 AM, John Harrison wrote:
> On 4/15/2024 09:44, Nirmoy Das wrote:
>> Currently intel_gt_reset() happens as follows:
>>
>> reset_prepare() ---> Sends GDRST to GuC, GuC is in GS_MIA_IN_RESET
>> do_reset()
>>     __intel_gt_reset()
>>         *_engine_reset_prepare() -->RESET_CTL expects running
>>         GuC
>>         *_reset_engines()
>> intel_gt_init_hw() --> GuC FW loading happens, GuC comes out of
>> GS_MIA_IN_RESET.
>>
>> Fix the above flow so that GuC reset happens after all the
>> engines reset is done.
>>
>> Cc: John Harrison <John.C.Harrison@Intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_reset.c |  9 ++++--
>>   drivers/gpu/drm/i915/gt/uc/intel_uc.c | 42 +++++++++++++++++++++------
>>   drivers/gpu/drm/i915/gt/uc/intel_uc.h |  1 +
>>   3 files changed, 41 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c 
>> b/drivers/gpu/drm/i915/gt/intel_reset.c
>> index c8e9aa41fdea..9ebd68ce0c22 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
>> @@ -879,8 +879,11 @@ static intel_engine_mask_t reset_prepare(struct 
>> intel_gt *gt)
>>       intel_engine_mask_t awake = 0;
>>       enum intel_engine_id id;
>>   -    /* For GuC mode, ensure submission is disabled before stopping 
>> ring */
>> -    intel_uc_reset_prepare(&gt->uc);
>> +    /*
>> +     * For GuC mode, ensure submission is disabled before stopping 
>> ring.
>> +     * Don't reset the GuC a engine reset requires GuC to be running.
> These two lines appear to be mutually exclusive unless there is a test 
> for GuC submission being enabled, which I am not seeing. Note that 
> "ensure submission is disabled" means "reset the GuC".
>
>> +     */
>> +    intel_uc_reset_prepare_without_guc_reset(&gt->uc);
>>         for_each_engine(engine, gt, id) {
>>           if (intel_engine_pm_get_if_awake(engine))
>> @@ -1227,6 +1230,8 @@ void intel_gt_reset(struct intel_gt *gt,
>>         intel_overlay_reset(gt->i915);
>>   +    /* Now that all engines are clean, Reset the GuC */
>> +    intel_uc_reset_prepare(&gt->uc);
>>       /*
>>        * Next we need to restore the context, but we don't use those
>>        * yet either...
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c 
>> b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> index 7a63abf8f644..5feee4db2ccc 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> @@ -345,7 +345,7 @@ static void __uc_fini(struct intel_uc *uc)
>>       intel_guc_fini(&uc->guc);
>>   }
>>   -static int __uc_sanitize(struct intel_uc *uc)
>> +static void __uc_sanitize_without_guc_reset(struct intel_uc *uc)
>>   {
>>       struct intel_guc *guc = &uc->guc;
>>       struct intel_huc *huc = &uc->huc;
>> @@ -354,7 +354,11 @@ static int __uc_sanitize(struct intel_uc *uc)
>>         intel_huc_sanitize(huc);
>>       intel_guc_sanitize(guc);
>> +}
> This seems like an extremely bad idea. You are wiping out all the GuC 
> communication structures on the host side while the GuC itself is 
> still executing and using those same structures.
>
> Is the failure when doing individual engine resets or when doing a 
> full GT reset?

The failed test is doing "intel_gt_reset(gt, ALL_ENGINES, NULL)" so a 
full GT reset.


>
> If the former, I think a better approach would be to just not reset 
> GuC at all (or indeed any UC) if not using GuC submission. Although, 
> looking at the code, I'm not seeing an engine only reset path that 
> does nuke the UC layers?


Yes, intel_engine_reset() doesn't touch UC layer.

>
> If it is the latter, 

This is the case here.


> then how/why are individual engine resets happening in the middle of a 
> full GT reset? Don't we just splat everything all at once? 

It seems we use __intel_gt_reset(engine->gt, engine_mask) to reset all 
or some engines.

> Either way, it would be safer to split at the GT reset code layer 
> rather than inside the UC layer. That is, when not using GuC 
> submission, do the entire prepare/reset/init sequence of the UC layers 
> as one 'atomic' operation either before the GT/engine reset or after 
> it (or potentially both before and after?).

I think this should work. Let me try it out


Thanks,

Nirmoy


>
> John.
>
>
>>   +static int __uc_sanitize(struct intel_uc *uc)
>> +{
>> +    __uc_sanitize_without_guc_reset(uc);
>>       return __intel_uc_reset_hw(uc);
>>   }
>>   @@ -593,13 +597,7 @@ static void __uc_fini_hw(struct intel_uc *uc)
>>       __uc_sanitize(uc);
>>   }
>>   -/**
>> - * intel_uc_reset_prepare - Prepare for reset
>> - * @uc: the intel_uc structure
>> - *
>> - * Preparing for full gpu reset.
>> - */
>> -void intel_uc_reset_prepare(struct intel_uc *uc)
>> +static void __intel_uc_reset_prepare(struct intel_uc *uc, bool 
>> reset_guc)
>>   {
>>       struct intel_guc *guc = &uc->guc;
>>   @@ -617,9 +615,35 @@ void intel_uc_reset_prepare(struct intel_uc *uc)
>>           intel_guc_submission_reset_prepare(guc);
>>     sanitize:
>> -    __uc_sanitize(uc);
>> +    if (reset_guc)
>> +        __uc_sanitize(uc);
>> +    else
>> +        __uc_sanitize_without_guc_reset(uc);
>>   }
>>   +/**
>> + * intel_uc_reset_prepare - Prepare for reset
>> + * @uc: the intel_uc structure
>> + *
>> + * Preparing for full gpu reset.
>> + */
>> +void intel_uc_reset_prepare(struct intel_uc *uc)
>> +{
>> +    __intel_uc_reset_prepare(uc, true);
>> +}
>> +/**
>> + * intel_uc_reset_prepare_without_guc_reset - Prepare for reset but 
>> don't reset
>> + * the GuC
>> + * @uc: the intel_uc structure
>> + *
>> + * Preparing for full gpu reset.
>> + */
>> +void intel_uc_reset_prepare_without_guc_reset(struct intel_uc *uc)
>> +{
>> +    __intel_uc_reset_prepare(uc, false);
>> +}
>> +
>> +
>>   void intel_uc_reset(struct intel_uc *uc, intel_engine_mask_t stalled)
>>   {
>>       struct intel_guc *guc = &uc->guc;
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h 
>> b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
>> index 014bb7d83689..9d6191ece498 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
>> @@ -46,6 +46,7 @@ void intel_uc_driver_late_release(struct intel_uc 
>> *uc);
>>   void intel_uc_driver_remove(struct intel_uc *uc);
>>   void intel_uc_init_mmio(struct intel_uc *uc);
>>   void intel_uc_reset_prepare(struct intel_uc *uc);
>> +void intel_uc_reset_prepare_without_guc_reset(struct intel_uc *uc);
>>   void intel_uc_reset(struct intel_uc *uc, intel_engine_mask_t stalled);
>>   void intel_uc_reset_finish(struct intel_uc *uc);
>>   void intel_uc_cancel_requests(struct intel_uc *uc);
>
