Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE644867EB
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jan 2022 17:51:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D74610EA2F;
	Thu,  6 Jan 2022 16:51:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FE7010E651;
 Thu,  6 Jan 2022 16:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641487885; x=1673023885;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=10p9OHZqgKYHNloL5U1ejKnDsVPwkCjlSJscm+rb0ZM=;
 b=NOJ3imeJVepOKq1qBRQATMw1xL3KB5Qn6ZPPs3/QxlYSde3v3XJL9Drw
 uBYOa3qdq8TORDDes0+nolav5stjxLDd4gcZ/5P4FNYA5YDHFvphUjfjM
 7giW+2YccPgL5OSSdUaHpAmFbcMBe7z2nHKJI3fV/Y/I6lzN4vL9pyf2/
 wvNm1eol7dDobvkj5Dno3VPyHhD7F9jjiGZrlXQsNNvEsmKLj45NUM3Qy
 MGSpq/wHVsuqTdnjkAY6YHoElrN8lSSwjsJ8Ljy8MIIcDOMfcJlA3Wvn+
 dP/kgF6dPFkztfEHqXLLtC354Xc74qkzAwiS9OlK1kF9QIooFcWdgcPeJ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="242894780"
X-IronPort-AV: E=Sophos;i="5.88,267,1635231600"; d="scan'208";a="242894780"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 08:51:24 -0800
X-IronPort-AV: E=Sophos;i="5.88,267,1635231600"; d="scan'208";a="472995652"
Received: from leitchrx-mobl.ger.corp.intel.com (HELO [10.213.202.197])
 ([10.213.202.197])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 08:51:23 -0800
Message-ID: <b1179113-908f-e5a8-a555-67557b8d83aa@linux.intel.com>
Date: Thu, 6 Jan 2022 16:51:21 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Matthew Brost <matthew.brost@intel.com>
References: <20220104233056.11245-1-matthew.brost@intel.com>
 <3ae7e493-4b77-9e87-ca6f-34f85cab4ecb@linux.intel.com>
 <20220105162402.GA33126@jons-linux-dev-box>
 <40920051-1aef-1e14-ec7e-03d158e02c22@linux.intel.com>
 <20220106161847.GA7452@jons-linux-dev-box>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220106161847.GA7452@jons-linux-dev-box>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Lock timeline mutex directly in
 error path of eb_pin_timeline
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 06/01/2022 16:18, Matthew Brost wrote:
> On Thu, Jan 06, 2022 at 09:56:03AM +0000, Tvrtko Ursulin wrote:
>>
>> On 05/01/2022 16:24, Matthew Brost wrote:
>>> On Wed, Jan 05, 2022 at 09:35:44AM +0000, Tvrtko Ursulin wrote:
>>>>
>>>> On 04/01/2022 23:30, Matthew Brost wrote:
>>>>> Don't use the interruptable version of the timeline mutex lock in the
>>>>
>>>> interruptible
>>>>
>>>>> error path of eb_pin_timeline as the cleanup must always happen.
>>>>>
>>>>> v2:
>>>>>     (John Harrison)
>>>>>      - Don't check for interrupt during mutex lock
>>>>>
>>>>> Fixes: 544460c33821 ("drm/i915: Multi-BB execbuf")
>>>>> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
>>>>> ---
>>>>>     drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 4 ++--
>>>>>     1 file changed, 2 insertions(+), 2 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>>>> index e9541244027a..e96e133cbb1f 100644
>>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>>>> @@ -2516,9 +2516,9 @@ static int eb_pin_timeline(struct i915_execbuffer *eb, struct intel_context *ce,
>>>>>     				      timeout) < 0) {
>>>>>     			i915_request_put(rq);
>>>>> -			tl = intel_context_timeline_lock(ce);
>>>>> +			mutex_lock(&ce->timeline->mutex);
>>>>
>>>> On the other hand it is more user friendly to handle signals (which maybe
>>>> does not matter in this case, not sure any longer how long hold time it can
>>>> have) but there is also a question of consistency within the very function
>>>> you are changing.
>>>>
>>>> Apart from consistency, what about the parent-child magic
>>>> intel_context_timeline_lock does and you wouldn't have here?
>>>>
>>>> And what about the very existence of intel_context_timeline_lock as a
>>>> component boundary separation API, if it is used inconsistently throughout
>>>> i915_gem_execbuffer.c?
>>>
>>> intel_context_timeline_lock does 2 things:
>>>
>>> 1. Handles lockdep nesting of timeline locks for parent-child contexts
>>> ensuring locks are acquired from parent to last child, then released
>>> last child to parent
>>> 2. Allows the mutex lock to be interrupted
>>>
>>> This helper should be used in setup steps where a user can signal abort
>>> (context pinning time + request creation time), by 'should be' I mean
>>> this was how it was done before I extended the execbuf IOCTL for
>>> multiple BBs. Slightly confusing but this is what was in place so I
>>> stuck with it.
>>>
>>> This code here is an error path that only hold at most 1 timeline lock
>>> (no nesting required) and is a path that must be executed as it is a
>>> cleanup step (not allowed to be interrupted by user, intel_context_exit
>>> must be called or we have dangling engine PM refs).
>>>
>>> Make sense? I probably should update the comment message to explain this
>>> a bit better as it did take me a bit to understand how this locking
>>> worked.
>>
>> The part which does not make sense is this:
>>
> 
> I'll try to explain this again...
> 
>> eb_pin_timeline()
>> {
>> ...
>> 	tl = intel_context_timeline_lock(ce);
>> 	if (IS_ERR(tl))
>> 		return PTR_ERR(tl);
> 
> This part is allowed to be aborted by the user.
> 
>>
>> ... do some throttling, and if it fail:
>> 			mutex_lock(&ce->timeline->mutex);
> 
> This part is not.

Pfft got it this time round.

I suggest a comment above the mutex to this effect. And maybe still 
consider the explicit error path which may be more readable due single 
request put, but it's up to you.

Regards,

Tvrtko
