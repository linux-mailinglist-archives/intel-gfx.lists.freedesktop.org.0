Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6FBB7D6833
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 12:20:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2664610E591;
	Wed, 25 Oct 2023 10:20:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D44C10E591
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 10:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698229229; x=1729765229;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=DX7+zdhBdKC8WmmrOWRzDlypTUd8X+CzphMid1anCew=;
 b=YYw4zmRamxxJCle31WU/wVeMyJr+of16JK9qkYK25HibVs+5sj4i+Jcx
 vuRQHUkuRfk2gPRTa9ksTmmUo+29HBd2iB4anr/A7Tp48fcmyONha7V3e
 Z85BrcLkTuiorlr+GI0SWYClfOPwaUAyrjF3yKwz5Ze9WfTzJuRJXpy5y
 N4d5JskpcRFhKA4m1I6vShUCJpRoWM7lyG10Z7wzGqEZsjr+khbVtyVAp
 rjDNhQfcJRrkHbJtpp8Ey25OAjqogWmqQLpl2oOSAHlerhEJ/5ywVyWTk
 80PMDtsYz2S4hhVnQSzPIVA6ZTpLQG8b2IV/HIRU2nTZDp6U7ZP5fx5VE Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="386162372"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="386162372"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 03:20:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="875449739"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="875449739"
Received: from lababeix-mobl1.ger.corp.intel.com (HELO [10.249.41.109])
 ([10.249.41.109])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 03:20:27 -0700
Message-ID: <6b642bcd-6152-42b8-88ad-21b039d9898b@linux.intel.com>
Date: Wed, 25 Oct 2023 11:20:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
References: <20231023150256.438331-1-jani.nikula@intel.com>
 <20231023150256.438331-2-jani.nikula@intel.com>
 <ZTe4uzgC7sIPGzwV@ashyti-mobl2.lan> <87h6mg9op4.fsf@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87h6mg9op4.fsf@intel.com>
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


On 24/10/2023 13:42, Jani Nikula wrote:
> On Tue, 24 Oct 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
>> Hi Jani,
>>
>> On Mon, Oct 23, 2023 at 06:02:55PM +0300, Jani Nikula wrote:
>>> It's tedious to duplicate the container_of() everywhere. Add a helper.
>>>
>>> Also do the logical steps of first getting from struct perf_event to
>>> struct i915_pmu, and then from struct i915_pmu to struct
>>> drm_i915_private if needed, instead of perf_event->i915->pmu. Not all
>>> places even need the i915 pointer.
>>>
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/i915_pmu.c | 45 +++++++++++++++------------------
>>>   1 file changed, 20 insertions(+), 25 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>>> index dcae2fcd8d36..d45b40ec6d47 100644
>>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>>> @@ -31,6 +31,11 @@
>>>   static cpumask_t i915_pmu_cpumask;
>>>   static unsigned int i915_pmu_target_cpu = -1;
>>>   
>>> +static struct i915_pmu *event_to_pmu(struct perf_event *event)
>>
>> I would call it perfevent (or perf_event), event is too generic.
>> We have other kind of events, too.
> 
> Fair enough.

Counter argument is that i915_pmu.c consistently names this event (which 
is likely lifted from other PMU drivers) so is the proposal to churn it 
all, or create an inconsistency?

Regards,

Tvrtko

> 
>>
>>> +{
>>> +	return container_of(event->pmu, struct i915_pmu, base);
>>> +}
>>> +
>>>   static struct drm_i915_private *pmu_to_i915(struct i915_pmu *pmu)
>>>   {
>>>   	return container_of(pmu, struct drm_i915_private, pmu);
>>> @@ -510,8 +515,8 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
>>>   
>>>   static void i915_pmu_event_destroy(struct perf_event *event)
>>>   {
>>> -	struct drm_i915_private *i915 =
>>> -		container_of(event->pmu, typeof(*i915), pmu.base);
>>> +	struct i915_pmu *pmu = event_to_pmu(event);
>>> +	struct drm_i915_private *i915 = pmu_to_i915(pmu);
>>
>> perf_event_to_i915() ?
> 
> Nah. Most places that need i915 also need pmu. Feels a bit much to add a
> helper to combine two helpers.
> 
> Thanks for the review.
> 
> BR,
> Jani.
> 
>>
>> Andi
> 
