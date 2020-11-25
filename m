Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E512C3B7B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 09:59:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98B976E872;
	Wed, 25 Nov 2020 08:59:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0904E6E872
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 08:59:55 +0000 (UTC)
IronPort-SDR: rOhoMR7Tgy9GE62BF1dHqcFduCqRq8+LlL5IGMcjy2+7eNibm8dwTOxkZaZ16lJF67mnzJg2PL
 M/36n7gzQ6ug==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="159138662"
X-IronPort-AV: E=Sophos;i="5.78,368,1599548400"; d="scan'208";a="159138662"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 00:59:55 -0800
IronPort-SDR: 90PIu9bIyjMBi9JkIZxsikaxjPqA08zZuunosdfM3t/Rlkkv55Du5cNdx1sj0byLXx+52s1zr9
 FfYBTzktxyKQ==
X-IronPort-AV: E=Sophos;i="5.78,368,1599548400"; d="scan'208";a="547190330"
Received: from jhaitov-mobl.ger.corp.intel.com (HELO [10.214.246.84])
 ([10.214.246.84])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 00:59:53 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201124114219.29020-1-chris@chris-wilson.co.uk>
 <20201124114219.29020-7-chris@chris-wilson.co.uk>
 <fce64eec-7910-85c8-7300-6736552eafc4@linux.intel.com>
 <160623952536.28476.8865484942445187968@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <7c50999c-2285-326e-c8d2-54a210f991da@linux.intel.com>
Date: Wed, 25 Nov 2020 08:59:51 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <160623952536.28476.8865484942445187968@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 07/16] drm/i915/gt: Check for a completed
 last request once
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


On 24/11/2020 17:38, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-11-24 17:19:23)
>>
>> On 24/11/2020 11:42, Chris Wilson wrote:
>>> Pull the repeated check for the last active request being completed to a
>>> single spot, when deciding whether or not execlist preemption is
>>> required.
>>>
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> ---
>>>    drivers/gpu/drm/i915/gt/intel_lrc.c | 15 ++++-----------
>>>    1 file changed, 4 insertions(+), 11 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
>>> index cf11cbac241b..43703efb36d1 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
>>> @@ -2141,12 +2141,9 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>>>         */
>>>    
>>>        if ((last = *active)) {
>>> -             if (need_preempt(engine, last, rb)) {
>>> -                     if (i915_request_completed(last)) {
>>> -                             tasklet_hi_schedule(&execlists->tasklet);
>>> -                             return;
>>> -                     }
>>> -
>>> +             if (i915_request_completed(last)) {
>>> +                     goto check_secondary;
>>> +             } else if (need_preempt(engine, last, rb)) {
>>>                        ENGINE_TRACE(engine,
>>>                                     "preempting last=%llx:%lld, prio=%d, hint=%d\n",
>>>                                     last->fence.context,
>>> @@ -2174,11 +2171,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>>>                        last = NULL;
>>>                } else if (need_timeslice(engine, last, rb) &&
>>>                           timeslice_expired(execlists, last)) {
>>> -                     if (i915_request_completed(last)) {
>>> -                             tasklet_hi_schedule(&execlists->tasklet);
>>> -                             return;
>>> -                     }
>>> -
>>>                        ENGINE_TRACE(engine,
>>>                                     "expired last=%llx:%lld, prio=%d, hint=%d, yield?=%s\n",
>>>                                     last->fence.context,
>>> @@ -2214,6 +2206,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>>>                         * we hopefully coalesce several updates into a single
>>>                         * submission.
>>>                         */
>>> +check_secondary:
>>>                        if (!list_is_last(&last->sched.link,
>>>                                          &engine->active.requests)) {
>>
>> Is there a tasklet_hi_schedule in here? I see set_timeslice in my checkout.
> 
> That tasklet_hi_schedule() was a mistake. It just devolves into a
> busy-spinner as we wait for HW to send the next event, which turns out
> not to be as instantaneous as hoped.
> 
> I recall leaving the imprint of my palm on my face when I figured out
> what was causing the spike in the profile.

Okay, if you mention that in the commit message you can add my rb.

Regards,

Tvrtko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
