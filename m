Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE55A7D80C4
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 12:30:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94E1710E7A6;
	Thu, 26 Oct 2023 10:30:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 217F910E7A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 10:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698316211; x=1729852211;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=5I6yUYxE0a8ygtIP3G3c7dROj/apd7LIe5XTmpDbhcg=;
 b=POhHbCBxftXDDjsTT4Q6HKuuiKbxnW6+PFEaSffdOtmDjrXMWfn59yPb
 Y6CkIQmbB579Zmm8qUJ0wiTBYXj3IlqKdN9b6W8cd34tmLTuPx1m70PME
 6wbZQjjFDVIyDY8ypH+gw7CGu3IMZpUFW/fvp4NQO49CzIdzJGG6Wbk86
 bU1CeBFPQyVXxndqvcbqprBuy9EUiaFdcFAx/mtFWY3XDRILuUUJupnPH
 djoEJwyJlSUgzKvRQN5IXFLoWteTgyiTq+aLUjZOkvrCu646bA6Zq2pf9
 23Qq3hI3aDC9Cbw43qNvomQpPHnriHye8DNFSN4tESGl1gdmhz8droBZw w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="473748736"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="473748736"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 03:30:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="932683420"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="932683420"
Received: from lthwaite-mobl.ger.corp.intel.com (HELO [10.213.229.85])
 ([10.213.229.85])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 03:30:09 -0700
Message-ID: <05993162-ce64-4b34-bfe5-5f33240c519e@linux.intel.com>
Date: Thu, 26 Oct 2023 11:30:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
References: <20231023150256.438331-1-jani.nikula@intel.com>
 <20231023150256.438331-2-jani.nikula@intel.com>
 <ZTe4uzgC7sIPGzwV@ashyti-mobl2.lan> <87h6mg9op4.fsf@intel.com>
 <6b642bcd-6152-42b8-88ad-21b039d9898b@linux.intel.com>
 <ZTjuBar5FeoMPYo6@ashyti-mobl2.lan> <8734xx8yz4.fsf@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <8734xx8yz4.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 26/10/2023 11:22, Jani Nikula wrote:
> On Wed, 25 Oct 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
>> On Wed, Oct 25, 2023 at 11:20:25AM +0100, Tvrtko Ursulin wrote:
>>>
>>> On 24/10/2023 13:42, Jani Nikula wrote:
>>>> On Tue, 24 Oct 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
>>>>> Hi Jani,
>>>>>
>>>>> On Mon, Oct 23, 2023 at 06:02:55PM +0300, Jani Nikula wrote:
>>>>>> It's tedious to duplicate the container_of() everywhere. Add a helper.
>>>>>>
>>>>>> Also do the logical steps of first getting from struct perf_event to
>>>>>> struct i915_pmu, and then from struct i915_pmu to struct
>>>>>> drm_i915_private if needed, instead of perf_event->i915->pmu. Not all
>>>>>> places even need the i915 pointer.
>>>>>>
>>>>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>>>> ---
>>>>>>    drivers/gpu/drm/i915/i915_pmu.c | 45 +++++++++++++++------------------
>>>>>>    1 file changed, 20 insertions(+), 25 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>>>>>> index dcae2fcd8d36..d45b40ec6d47 100644
>>>>>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>>>>>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>>>>>> @@ -31,6 +31,11 @@
>>>>>>    static cpumask_t i915_pmu_cpumask;
>>>>>>    static unsigned int i915_pmu_target_cpu = -1;
>>>>>> +static struct i915_pmu *event_to_pmu(struct perf_event *event)
>>>>>
>>>>> I would call it perfevent (or perf_event), event is too generic.
>>>>> We have other kind of events, too.
>>>>
>>>> Fair enough.
>>>
>>> Counter argument is that i915_pmu.c consistently names this event (which is
>>> likely lifted from other PMU drivers) so is the proposal to churn it all, or
>>> create an inconsistency?
>>
>> The first that comes to my mind is that the debugger is also
>> using the term "event"... on the other hand there is no debugger
>> in i915.
> 
> Have you settled on this? I don't care either way, could apply either
> patch.

To me it is clear that preference should be to remain consistent within 
the file, that is, leave it as you originally had.

Regards,

Tvrtko
