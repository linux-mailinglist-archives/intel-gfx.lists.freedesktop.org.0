Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1251B3DE8FE
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Aug 2021 10:54:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C60216E0C4;
	Tue,  3 Aug 2021 08:54:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62DDC89F5F;
 Tue,  3 Aug 2021 08:54:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10064"; a="193914982"
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; d="scan'208";a="193914982"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 01:54:39 -0700
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; d="scan'208";a="479396141"
Received: from gmisra-mobl.ger.corp.intel.com (HELO [10.213.248.67])
 ([10.213.248.67])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 01:54:38 -0700
To: Matthew Brost <matthew.brost@intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
References: <20210727182057.78409-1-matthew.brost@intel.com>
 <20210727182057.78409-2-matthew.brost@intel.com>
 <9095b26a-975b-9180-045f-7231d63fe9ff@linux.intel.com>
 <20210730180609.GA60763@DUT151-ICLU.fm.intel.com>
 <90b87a17-43df-96ac-d491-73c73722a58f@linux.intel.com>
 <20210802201026.GA79291@DUT151-ICLU.fm.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <94deb99e-bc74-e4e7-b30b-a13f1a808679@linux.intel.com>
Date: Tue, 3 Aug 2021 09:54:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210802201026.GA79291@DUT151-ICLU.fm.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/1] i915/gem_scheduler: Ensure
 submission order in manycontexts
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


On 02/08/2021 21:10, Matthew Brost wrote:
> On Mon, Aug 02, 2021 at 09:59:01AM +0100, Tvrtko Ursulin wrote:
>>
>>
>> On 30/07/2021 19:06, Matthew Brost wrote:
>>> On Fri, Jul 30, 2021 at 10:58:38AM +0100, Tvrtko Ursulin wrote:
>>>>
>>>> On 27/07/2021 19:20, Matthew Brost wrote:
>>>>> With GuC submission contexts can get reordered (compared to submission
>>>>> order), if contexts get reordered the sequential nature of the batches
>>>>> releasing the next batch's semaphore in function timesliceN() get broken
>>>>> resulting in the test taking much longer than if should. e.g. Every
>>>>> contexts needs to be timesliced to release the next batch. Corking the
>>>>> first submission until all the batches have been submitted should ensure
>>>>> submission order.
>>>>
>>>> The explanation sounds suspect.
>>>>
>>>> Consider this comment from the test itself:
>>>>
>>>> 	/*
>>>> 	 * Create a pair of interlocking batches, that ping pong
>>>> 	 * between each other, and only advance one step at a time.
>>>> 	 * We require the kernel to preempt at each semaphore and
>>>> 	 * switch to the other batch in order to advance.
>>>> 	 */
>>>>
>>>> I'd say the test does not rely on no re-ordering at all, but relies on
>>>> context switch on an unsatisfied semaphore.
>>>>
>>>
>>> Yes, let do a simple example with 5 batches. Batch 0 releases batch's
>>> semaphore 1, batch 1 releases batch's 2 semaphore, etc... If the batches
>>> are seen in order the test should take 40 timeslices (8 semaphores in
>>> each batch have to be released).
>>>
>>> If the batches are in the below order:
>>> 0 2 1 3 4
>>>
>>> Now we have 72 timeslices. Now imagine with 67 batches completely out of
>>> order, the number timeslices can explode.
>>
>> Yes that part is clear, issue is to understand why is guc waiting for the
>> timeslice to expire..
>>
>>>> In the commit you seem to acknowledge GuC does not do that but instead ends
>>>> up waiting for the timeslice to expire, did I get that right? If so, why
>>>
>>> I think GuC waits for the timeslice to expire if a semaphore is
>>> unsatisfied, I have to double check on that. I thought that was what
>>> execlists were doing too but I now see it has a convoluted algorithm to
>>> yield the timeslice if subsequent request comes in and the ring is
>>> waiting on a timeslice. Let me check with GuC team and see if they can
>>> / are doing something similiar. I was thinking the only to switch a
>>> sempahore was clear CTX_CTRL_INHIBIT_SYN_CTX_SWITCH but that appears to
>>> be incorrect.
>>
>> .. so this will need clarifying with the firmware team.
>>
> 
> They do not use the GT_WAIT_SEMAPHORE_INTERRUPT. However, we can
> clear CTX_CTRL_INHIBIT_SYN_CTX_SWITCH will result in more or less the
> same behavior as execlists but I'm suspect if that is the right
> solution. More on that below.
> 
>> With execlists we enable and react on GT_WAIT_SEMAPHORE_INTERRUPT. If guc
> 
> Because execlists does this, doesn't mean it is the spec or is correct.
> As far as I can tell this behavior is yet another thing just shoehorned
> into the execlists scheduler without a ton of thought or input from
> architecture about what the scheduler should look like or what the UMD
> needs actually are.
> 
> If we change anything related to GuC scheduling there needs to be a clear
> need - again saying execlists does this is not an argument. There needs
> to be an agreement with architecture, the UMD teams, the i915 team,
> possibly the Windows team, and the GuC team before we make any changes.
> 
> IMO the correct solution is to use tokens. Have uAPI interface which
> distributes tokens to the UMDs, the i915 clears context switch inhibit
> bit in the LRC if the user opted into tokens, and now semaphores switch
> out automatically and get rescheduled when the token is signaled.

Tokens are Gen12+ right? Downside in that plan would be what do you do 
with earlier platforms.

>> does not, or can not, do that that could be worrying since userspace can and
>> does use semaphores legitimately so making it pay the timeslice penalty.
>> Well actually that has an effect to unrelated clients as well, not just the
>> semaphore user.
> 
> Not buying this argument. Any user can submit a long running batch that
> always uses its full time slice and this affects unrelated clients.

To an extent, but it's not the same if that batch is long running due 
some work it's doing, or long running because it sits there waiting on 
an unsatisfied semaphore wasting everyone's time. If nothing because 
that might not be what the userspace expects.

But yes, you will need to figure out if UMDs benefit from this in 
practical use cases before you can rip this out.

And it will tie back to the thing about tokens and uapi you mention. 
(Although I don't immediately see how exposing the hardware "flavour of 
the day" thing like tokens makes a good candidate to be mentioned in the 
uapi. Especially given their limited nature.)

>>> For what is worth, after this change the run times of test are pretty
>>> similar for execlists & GuC on TGL.
>>
>> Yes, but the test was useful in this case since it found a weakness in guc
>> scheduling so it may not be the best approach to hide that.
>>
> 
> Not a weakness, just a difference.

Okay not a weakness, it's just much slower when userspace uses 
semaphores. :)

Also, I worry submit fence works for you in this patch for you not by 
ABI contract but due implementation details. Probably both in case of 
execlists and GuC. Because all it is guaranteeing as part of its ABI 
contract is that request B will not enter the backend before request A. 
But backend is really free to execute them in any order. (Assuming no 
other dependencies.) So I think that's the second reason this patch as 
is is not the best choice.

Regards,

Tvrtko
