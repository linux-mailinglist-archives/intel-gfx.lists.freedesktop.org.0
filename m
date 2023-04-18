Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF2F6E5A82
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 09:33:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E625510E699;
	Tue, 18 Apr 2023 07:32:55 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D688C10E699
 for <Intel-GFX@lists.freedesktop.org>; Tue, 18 Apr 2023 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681803173; x=1713339173;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=5FMAphmQuRQHawlpyf7G7oCtWkx1fN0CPVIKn1TYx04=;
 b=DFk7ToYDq5Vux7aWtLW9YkmnAKAWqMjQplbTbEexd+PkTOLsxybznoEk
 75kmiGhnukef/nT7l1r+d+zCodIZGzrrrG0Ig5RUbcPk+E9Q9nhv2qFiP
 UDWE/q5JzTY5lSzznFjTMzjc8B65mguHMJsFyUxkxQpmgBd87ufmY5RZG
 VcGodfjabiHYn40P28+KxsmtGlYj6t4TGWJzrlqi6tBIqsp6cEB2TEVM3
 tVyjCJZu5sUImkUWrgBDWIyklsLOLtpJB78XdA4shu/4BeXLnTRH1McjH
 il8he7FmP4gAfbks2sRiu2bb5EXKGk0yl1WHddwYw7jA+6mj2xYdKszkW A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="372978214"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="372978214"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 00:32:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="690983705"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="690983705"
Received: from dilipban-mobl.ger.corp.intel.com (HELO [10.213.234.43])
 ([10.213.234.43])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 00:32:52 -0700
Message-ID: <fbc3b5c4-112f-ebf4-352b-1d2970f3a2bb@linux.intel.com>
Date: Tue, 18 Apr 2023 08:32:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: "Upadhyay, Tejas" <tejas.upadhyay@intel.com>,
 "Intel-GFX@Lists.FreeDesktop.Org" <Intel-GFX@Lists.FreeDesktop.Org>
References: <20230317055239.1313175-1-tejas.upadhyay@intel.com>
 <eeec7ffd-0e77-9360-6bd3-9054c23b77a5@linux.intel.com>
 <SJ1PR11MB620468D7F5DCD777F71D04E981909@SJ1PR11MB6204.namprd11.prod.outlook.com>
 <9cef68ec-66c8-2cf6-ed49-7a71334b42c1@linux.intel.com>
 <SJ1PR11MB620449F8CC466CEBCFDB97E9819C9@SJ1PR11MB6204.namprd11.prod.outlook.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <SJ1PR11MB620449F8CC466CEBCFDB97E9819C9@SJ1PR11MB6204.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Consider multi-gt at all places
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
Cc: "Shyti, Andi" <andi.shyti@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 17/04/2023 19:13, Upadhyay, Tejas wrote:
> 
> 
>> -----Original Message-----
>> From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> Sent: Wednesday, April 5, 2023 2:01 PM
>> To: Upadhyay, Tejas <tejas.upadhyay@intel.com>; Intel-
>> GFX@Lists.FreeDesktop.Org
>> Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Consider multi-gt at all places
>>
>>
>> On 05/04/2023 07:56, Upadhyay, Tejas wrote:
>>>>> -int igt_live_test_end(struct igt_live_test *t)
>>>>> +int igt_live_test_end(struct igt_live_test *t, struct intel_gt *gt)
>>>>>     {
>>>>> -	struct drm_i915_private *i915 = t->i915;
>>>>> +	struct drm_i915_private *i915 = gt->i915;
>>>>>     	struct intel_engine_cs *engine;
>>>>>     	enum intel_engine_id id;
>>>>>
>>>>> @@ -57,7 +57,7 @@ int igt_live_test_end(struct igt_live_test *t)
>>>>>     		return -EIO;
>>>>>     	}
>>>>>
>>>>> -	for_each_engine(engine, to_gt(i915), id) {
>>>>> +	for_each_engine(engine, gt, id) {
>>>>>     		if (t->reset_engine[id] ==
>>>>>     		    i915_reset_engine_count(&i915->gpu_error, engine))
>>>>>     			continue;
>>>>> diff --git a/drivers/gpu/drm/i915/selftests/igt_live_test.h
>>>>> b/drivers/gpu/drm/i915/selftests/igt_live_test.h
>>>>> index 36ed42736c52..209b0548c603 100644
>>>>> --- a/drivers/gpu/drm/i915/selftests/igt_live_test.h
>>>>> +++ b/drivers/gpu/drm/i915/selftests/igt_live_test.h
>>>>> @@ -27,9 +27,9 @@ struct igt_live_test {
>>>>>      * e.g. if the GPU was reset.
>>>>>      */
>>>>>     int igt_live_test_begin(struct igt_live_test *t,
>>>>> -			struct drm_i915_private *i915,
>>>>> +			struct intel_gt *gt,
>>>>>     			const char *func,
>>>>>     			const char *name);
>>>>> -int igt_live_test_end(struct igt_live_test *t);
>>>>> +int igt_live_test_end(struct igt_live_test *t, struct intel_gt
>>>>> +*gt);
>>>>
>>>> Back in the day the plan was that live selftests are device focused
>>>> and then we also have intel_gt_live_subtests, which are obviously GT
>>>> focused. So in that sense adding a single GT parameter to
>>>> igt_live_test_begin isn't something I immediately understand.
>>>>
>>>> Could you explain in one or two practical examples what is not
>>>> working properly and how is this patch fixing it?
>>>
>>> For example you are running test "live_all_engines(void *arg)",
>>>
>>> -- Below test begin, will reset counters for primary GT - Tile0 -- err
>>> = igt_live_test_begin(&t, to_gt(i915), __func__, "");
>>>           if (err)
>>>                   goto out_free;
>>>
>>> --- Now we loop for all engines, note here for MTL vcs, vecs engines are not
>> on primary GT or tile 0,
>>>        So counters did not reset on test begin does not cover them. ---
>>>
>>>         In test_begin, below will not reset count for vcs, vecs engines on MTL,
>>> 	for_each_engine(engine, gt, id)
>>>                   t->reset_engine[id] =
>>>                           i915_reset_engine_count(&i915->gpu_error,
>>> engine);
>>>
>>> --- Then below will end test, again for primary GT where above
>>> mentioned engines are not there --- err = igt_live_test_end(&t,
>>> to_gt(i915));
>>>
>>> In short to me it looks like igt_live_test for device needs attention when we
>> have different engines on different GTs like MTL.
>>
>> If you either add for_each_gt to that for_each_engine in igt_live_test_begin
>> and igt_live_test_end, or alternatively for_each_uabi_engine (maybe misses
>> some internal engines?), everything works? That would be much smaller
>> patch and wouldn't falsely associate live tests with a single gt.
>>
> 
> Below would work, if you agree I will rearrange and send patch.
> 
> --- a/drivers/gpu/drm/i915/selftests/igt_live_test.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_live_test.c
> @@ -16,28 +16,31 @@ int igt_live_test_begin(struct igt_live_test *t,
>                          const char *func,
>                          const char *name)
>   {
> -       struct intel_gt *gt = to_gt(i915);
> +       struct intel_gt *gt;
>          struct intel_engine_cs *engine;
>          enum intel_engine_id id;
>          int err;
> +       unsigned int i;
> 
> -       t->i915 = i915;
> -       t->func = func;
> -       t->name = name;
> +       for_each_gt(gt, i915, i) {
> +               t->i915 = i915;
> +               t->func = func;
> +               t->name = name;

These three assignments should stay outside the outer loop.

> 
> -       err = intel_gt_wait_for_idle(gt, MAX_SCHEDULE_TIMEOUT);
> -       if (err) {
> -               pr_err("%s(%s): failed to idle before, with err=%d!",
> -                      func, name, err);
> -               return err;
> -       }
> +               err = intel_gt_wait_for_idle(gt, MAX_SCHEDULE_TIMEOUT);
> +               if (err) {
> +                       pr_err("%s(%s): failed to idle before, with err=%d!",
> +                                       func, name, err);
> +                       return err;
> +               }
> 
> -       t->reset_global = i915_reset_count(&i915->gpu_error);
> +               t->reset_global = i915_reset_count(&i915->gpu_error);

Ditto.

Rest looks good to me.

Regards,

Tvrtko

> 
> -       for_each_engine(engine, gt, id)
> -               t->reset_engine[id] =
> +               for_each_engine(engine, gt, id)
> +                       t->reset_engine[id] =
>                          i915_reset_engine_count(&i915->gpu_error, engine);
> 
> +       }
>          return 0;
>   }
> 
> @@ -46,6 +49,7 @@ int igt_live_test_end(struct igt_live_test *t)
>          struct drm_i915_private *i915 = t->i915;
>          struct intel_engine_cs *engine;
>          enum intel_engine_id id;
> +       unsigned int i;
> 
>          if (igt_flush_test(i915))
>                  return -EIO;
> @@ -57,17 +61,18 @@ int igt_live_test_end(struct igt_live_test *t)
>                  return -EIO;
>          }
> 
> -       for_each_engine(engine, to_gt(i915), id) {
> -               if (t->reset_engine[id] ==
> -                   i915_reset_engine_count(&i915->gpu_error, engine))
> -                       continue;
> +       for_each_gt(gt, i915, i) {
> +               for_each_engine(engine, gt, id) {
> +                       if (t->reset_engine[id] ==
> +                                       i915_reset_engine_count(&i915->gpu_error, engine))
> +                               continue;
> 
> -               pr_err("%s(%s): engine '%s' was reset %d times!\n",
> -                      t->func, t->name, engine->name,
> -                      i915_reset_engine_count(&i915->gpu_error, engine) -
> -                      t->reset_engine[id]);
> -               return -EIO;
> +                       pr_err("%s(%s): engine '%s' was reset %d times!\n",
> +                                       t->func, t->name, engine->name,
> +                                       i915_reset_engine_count(&i915->gpu_error, engine) -
> +                                       t->reset_engine[id]);
> +                       return -EIO;
> +               }
>          }
>       
> Regards,
> Tejas
>> Regards,
>>
>> Tvrtko
