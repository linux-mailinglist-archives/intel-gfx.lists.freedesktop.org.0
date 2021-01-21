Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 597602FE888
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 12:17:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC17B89838;
	Thu, 21 Jan 2021 11:17:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52A5F89838
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 11:17:27 +0000 (UTC)
IronPort-SDR: gVajYdzuuKJz56+ftIDdBE9ZehjT8Y/oaYk1jq0fmT0RVBQAIoYbqu311aXaL5rk1m5P/YwzRg
 BbqDwRGbimXQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="166351590"
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; d="scan'208";a="166351590"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 03:17:25 -0800
IronPort-SDR: MkbfxMWVgtUVRVxanM2XEIEnbLbwaDlOPXOSavYcifhz86EcPr8uJe5wd6QphfZCjR6j5W4J6/
 +MlIz0515P3g==
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; d="scan'208";a="356428139"
Received: from pscheper-mobl1.ger.corp.intel.com (HELO [10.252.50.106])
 ([10.252.50.106])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 03:17:24 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210121003253.27225-1-chris@chris-wilson.co.uk>
 <4c24b53a-2db5-39c5-c735-a0f732b7245d@linux.intel.com>
 <161122668704.32666.8919805149951431595@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ebccb376-1985-1a69-fd5f-0ba51f005427@linux.intel.com>
Date: Thu, 21 Jan 2021 11:17:22 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <161122668704.32666.8919805149951431595@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Move execlists_reset() out of
 line
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


On 21/01/2021 10:58, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2021-01-21 10:55:49)
>>
>> On 21/01/2021 00:32, Chris Wilson wrote:
>>> Reduce the bulk of execlists_submission_tasklet by moving the unlikely
>>> reset function out of line.
>>>
>>> add/remove: 1/0 grow/shrink: 0/1 up/down: 960/-935 (25)
>>> Function                                     old     new   delta
>>> execlists_reset                                -     960    +960
>>> execlists_submission_tasklet                6629    5694    -935
>>>
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> ---
>>>    .../drm/i915/gt/intel_execlists_submission.c  | 36 +++++++++----------
>>>    1 file changed, 17 insertions(+), 19 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>> index 740ff05fd692..43cc85241886 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>> @@ -2299,10 +2299,13 @@ static void execlists_capture(struct intel_engine_cs *engine)
>>>        kfree(cap);
>>>    }
>>>    
>>> -static void execlists_reset(struct intel_engine_cs *engine, const char *msg)
>>> +static noinline void execlists_reset(struct intel_engine_cs *engine)
>>>    {
>>> +     struct intel_engine_execlists *el = &engine->execlists;
>>>        const unsigned int bit = I915_RESET_ENGINE + engine->id;
>>>        unsigned long *lock = &engine->gt->reset.flags;
>>> +     unsigned long eir = fetch_and_zero(&el->error_interrupt);
>>
>> We got the locking wrong for this one. Irq handler side is under
>> gt->irq_lock, but there are unlocked rmw cycles in the tasklet. Not
>> counting this fetch_and_zero which is also unlocked.
> 
> It doesn't require locking.

		/* Disable the error interrupt until after the reset */
		if (likely(eir)) {
			ENGINE_WRITE(engine, RING_EMR, ~0u);
			ENGINE_WRITE(engine, RING_EIR, eir);
			WRITE_ONCE(engine->execlists.error_interrupt, eir);
			tasklet = true;
		}

Okay I did not grep with enough context.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
