Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2E95EBBD5
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 09:45:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF08110E04B;
	Tue, 27 Sep 2022 07:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFF8710E04B
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 07:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664264745; x=1695800745;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=nJEdFHogjLy4q72XEnNVY5oPHsUTiHaQTB+9keBtPBA=;
 b=jQ9jaMkzqPAokhxsrGi0xE9qPReFktbwdaytSUOiie+ouZdLAtlHrSI9
 /QyBm/uZ3nh//a0NZWbG+S0bPBa6JDBF9MnkVtQjyiLdYbY21X9f7YKop
 SJSzwVKtTY0ZNe90uGIJ/3Y6hM1Zn+vyS9E8NPd8N8mbuvBMdszMTK25J
 lhG0njWthlLCfUEuCzxknCJkLsM2CSWMvhNOjkfIz/cQJOHDpGqjuJvQg
 Wvl3NKcxCbdFxUrhIFz6fQS0liipYMDlCr4jHjHAiCdDG0bQrzOEndRbd
 Wy1zjJPcKwI8Ue8Yq+ffdM7G1alYOM+/ywNjLI2jLCEc4DzELyaUpz9Zk A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="327604331"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="327604331"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 00:45:45 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="725412439"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="725412439"
Received: from bvoinov-mobl1.ger.corp.intel.com (HELO [10.213.221.221])
 ([10.213.221.221])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 00:45:43 -0700
Message-ID: <c3af2831-d06b-5818-baf2-e88b4d1f6694@linux.intel.com>
Date: Tue, 27 Sep 2022 08:45:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
References: <20220926215410.2268295-1-andrzej.hajda@intel.com>
 <YzIrUG8lrEsY9XOo@ashyti-mobl2.lan>
 <7039faf9-b2a1-9400-fdc7-f5dcd7a8dd9a@intel.com>
 <f34e60c9-17ea-56a0-acb2-bb8d97363993@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <f34e60c9-17ea-56a0-acb2-bb8d97363993@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: do not capture error state on
 exiting context
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 27/09/2022 07:49, Andrzej Hajda wrote:
> 
> 
> On 27.09.2022 01:34, Ceraolo Spurio, Daniele wrote:
>>
>>
>> On 9/26/2022 3:44 PM, Andi Shyti wrote:
>>> Hi Andrzej,
>>>
>>> On Mon, Sep 26, 2022 at 11:54:09PM +0200, Andrzej Hajda wrote:
>>>> Capturing error state is time consuming (up to 350ms on DG2), so it 
>>>> should
>>>> be avoided if possible. Context reset triggered by context removal is a
>>>> good example.
>>>> With this patch multiple igt tests will not timeout and should run 
>>>> faster.
>>>>
>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1551
>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3952
>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5891
>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6268
>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6281
>>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>> fine for me:
>>>
>>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>>>
>>> Just to be on the safe side, can we also have the ack from any of
>>> the GuC folks? Daniele, John?
>>>
>>> Andi
>>>
>>>
>>>> ---
>>>>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 3 ++-
>>>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>> index 22ba66e48a9b01..cb58029208afe1 100644
>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>> @@ -4425,7 +4425,8 @@ static void guc_handle_context_reset(struct 
>>>> intel_guc *guc,
>>>>       trace_intel_context_reset(ce);
>>>>         if (likely(!intel_context_is_banned(ce))) {
>>>> -        capture_error_state(guc, ce);
>>>> +        if (!intel_context_is_exiting(ce))
>>>> +            capture_error_state(guc, ce);

I am not sure here - if we have a persistent context which caused a GPU 
hang I'd expect we'd still want error capture.

What causes the reset in the affected IGTs? Always preemption timeout?

>>>>           guc_context_replay(ce);
>>
>> You definitely don't want to replay requests of a context that is 
>> going away.
> 
> My intention was to just avoid error capture, but that's even better, 
> only condition change:
> -        if (likely(!intel_context_is_banned(ce))) {
> +       if (likely(intel_context_is_schedulable(ce)))  {

Yes that helper was intended to be used for contexts which should not be 
scheduled post exit or ban.

Daniele - you say there are some misses in the GuC backend. Should most, 
or even all in intel_guc_submission.c be converted to use 
intel_context_is_schedulable? My idea indeed was that "ban" should be a 
level up from the backends. Backend should only distinguish between 
"should I run this or not", and not the reason.

Regards,

Tvrtko

> 
>>
>> This seems at least in part due to 
>> https://patchwork.freedesktop.org/patch/487531/, where we replaced the 
>> "context_ban" with "context_exiting". There are several places where 
>> we skipped operations if the context was banned (here included) which 
>> are now not covered anymore for exiting contexts. Maybe we need a new 
>> checker function to check both flags in places where we don't care why 
>> the context is being removed (ban vs exiting), just that it is?
>>
>> Daniele
>>
>>>>       } else {
>>>>           drm_info(&guc_to_gt(guc)->i915->drm,
> 
> And maybe degrade above to drm_dbg, to avoid spamming dmesg?
> 
> Regards
> Andrzej
> 
> 
>>>> -- 
>>>> 2.34.1
>>
> 
