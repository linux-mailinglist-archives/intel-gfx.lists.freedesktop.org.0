Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0282B7D812E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 12:51:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D070910E7AB;
	Thu, 26 Oct 2023 10:51:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FB8010E7B8
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 10:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698317465; x=1729853465;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=gJS5lWnPd+MFfo7fbEUNVYKBiEl4VAnMtPvaCTLhAu8=;
 b=MGYvG24eRnG3nNDMcE0l9GQYEpmVFcLYjTuepkEMbaothh2ZDiLhdW1H
 ws7YserzFjG4QYEvyHGUr6DYoD4WO+hevW/K7NmT1qvfGtmiyPZ2Gbzwo
 SQxQHhIDF3u16fdO8NayhFgp7sJyBSqFNV/b8U2a/ev8ao3902dIQ8iFi
 1m4TDTE/fffhvS1bLDlmxyzo35oQQDZ6orGe0n+UpB/EjCJ6/yFOZUTK3
 zfq5xDHSPHzB0oAUORpTLgCYm/iEcnm3pEQw1A+i+9Uz8ZFykIsfYyycU
 ja3oEdw8vZQ7Ps1Ses3bbgxaV3YMbaGvKy364s3w6gyR+/S0sYmg6vI3I w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="418635525"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="418635525"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 03:51:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="1006341501"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="1006341501"
Received: from lthwaite-mobl.ger.corp.intel.com (HELO [10.213.229.85])
 ([10.213.229.85])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 03:51:04 -0700
Message-ID: <a752d570-132b-46b6-b7c3-a45cab34f29c@linux.intel.com>
Date: Thu, 26 Oct 2023 11:51:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <20231023150256.438331-1-jani.nikula@intel.com>
 <20231023150256.438331-2-jani.nikula@intel.com>
 <ZTe4uzgC7sIPGzwV@ashyti-mobl2.lan> <87h6mg9op4.fsf@intel.com>
 <6b642bcd-6152-42b8-88ad-21b039d9898b@linux.intel.com>
 <ZTjuBar5FeoMPYo6@ashyti-mobl2.lan> <8734xx8yz4.fsf@intel.com>
 <05993162-ce64-4b34-bfe5-5f33240c519e@linux.intel.com>
 <ZTpBG_cqdVfBb2uE@ashyti-mobl2.lan>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ZTpBG_cqdVfBb2uE@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/pmu: add event_to_pmu() helper
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 26/10/2023 11:36, Andi Shyti wrote:
> Hi,
> 
>> On 26/10/2023 11:22, Jani Nikula wrote:
>>> On Wed, 25 Oct 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
>>>> On Wed, Oct 25, 2023 at 11:20:25AM +0100, Tvrtko Ursulin wrote:
>>>>>
>>>>> On 24/10/2023 13:42, Jani Nikula wrote:
>>>>>> On Tue, 24 Oct 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
>>>>>>> Hi Jani,
>>>>>>>
>>>>>>> On Mon, Oct 23, 2023 at 06:02:55PM +0300, Jani Nikula wrote:
>>>>>>>> It's tedious to duplicate the container_of() everywhere. Add a helper.
>>>>>>>>
>>>>>>>> Also do the logical steps of first getting from struct perf_event to
>>>>>>>> struct i915_pmu, and then from struct i915_pmu to struct
>>>>>>>> drm_i915_private if needed, instead of perf_event->i915->pmu. Not all
>>>>>>>> places even need the i915 pointer.
>>>>>>>>
>>>>>>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>>>>>> ---
>>>>>>>>     drivers/gpu/drm/i915/i915_pmu.c | 45 +++++++++++++++------------------
>>>>>>>>     1 file changed, 20 insertions(+), 25 deletions(-)
>>>>>>>>
>>>>>>>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>>>>>>>> index dcae2fcd8d36..d45b40ec6d47 100644
>>>>>>>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>>>>>>>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>>>>>>>> @@ -31,6 +31,11 @@
>>>>>>>>     static cpumask_t i915_pmu_cpumask;
>>>>>>>>     static unsigned int i915_pmu_target_cpu = -1;
>>>>>>>> +static struct i915_pmu *event_to_pmu(struct perf_event *event)
>>>>>>>
>>>>>>> I would call it perfevent (or perf_event), event is too generic.
>>>>>>> We have other kind of events, too.
>>>>>>
>>>>>> Fair enough.
>>>>>
>>>>> Counter argument is that i915_pmu.c consistently names this event (which is
>>>>> likely lifted from other PMU drivers) so is the proposal to churn it all, or
>>>>> create an inconsistency?
>>>>
>>>> The first that comes to my mind is that the debugger is also
>>>> using the term "event"... on the other hand there is no debugger
>>>> in i915.
>>>
>>> Have you settled on this? I don't care either way, could apply either
>>> patch.
> 
> no... unfortunately not...

:(

$ grep "struct perf_event \*event" . -r | wc -l
1912
$ grep "struct perf_event \*perf_event" . -r | wc -l
5

;)

Now seriously, I don't mind perf_event, as long as _whole_ i915_pmu.c is 
switched over. At which point I questioned would the churn be worth it.

Regards,

Tvrtko

>> To me it is clear that preference should be to remain consistent within the
>> file, that is, leave it as you originally had.
> 
> ... so I'm not going to be strong on this... please feel free to
> ignore my comment, then.
> 
> Thanks!
> Andi
