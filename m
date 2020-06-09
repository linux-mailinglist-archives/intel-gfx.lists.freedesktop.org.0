Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1D01F3A06
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jun 2020 13:45:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8EAF89A75;
	Tue,  9 Jun 2020 11:45:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D41E089A75
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jun 2020 11:45:33 +0000 (UTC)
IronPort-SDR: MBNyM00rUbEMaeT4XX5M4ouz0IzFO6fxwJkQBG8BsTZ6IzGs9cM2Cr3+C//GNy3UomcdwuNmVD
 Zyz9ji3QC/kA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2020 04:45:33 -0700
IronPort-SDR: LFBNxFPvHE2+cOrC5LMRLAftimj9OU/ip1NLArpQ7zg/CbGVqtriJRxFU4G0Fzw4u/7MvX06Rn
 NaBpLDTPruIQ==
X-IronPort-AV: E=Sophos;i="5.73,491,1583222400"; d="scan'208";a="447097697"
Received: from unknown (HELO [10.249.32.140]) ([10.249.32.140])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2020 04:45:32 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200607222108.14401-1-chris@chris-wilson.co.uk>
 <9f995ee6-5f93-088d-47d6-5431076de596@linux.intel.com>
 <159160880517.15126.3134918011284478228@build.alporthouse.com>
 <77acd2e3-86cc-7c78-22a0-8d8263510aa2@linux.intel.com>
 <159169855088.24308.3785883777038202508@build.alporthouse.com>
 <195aefb1-128e-cfdb-cdeb-3a4e2c0248f8@linux.intel.com>
 <159169962594.24308.17590896872287208474@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6d257ff7-5699-8a46-63fe-dc4805a876e7@linux.intel.com>
Date: Tue, 9 Jun 2020 12:45:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <159169962594.24308.17590896872287208474@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 01/28] drm/i915: Adjust the sentinel assert
 to match implementation
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


On 09/06/2020 11:47, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-06-09 11:39:11)
>>
>> On 09/06/2020 11:29, Chris Wilson wrote:
>>> Quoting Tvrtko Ursulin (2020-06-09 07:59:27)
>>>> 666
>>>> On 08/06/2020 10:33, Chris Wilson wrote:
>>>>> Quoting Tvrtko Ursulin (2020-06-08 08:44:01)
>>>>>>
>>>>>> On 07/06/2020 23:20, Chris Wilson wrote:
>>>>>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>>>>
>>>>>>> Sentinels are supposed to be last reqeusts in the elsp queue, not the
>>>>>>> only one, so adjust the assert accordingly.
>>>>>>>
>>>>>>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>>>> ---
>>>>>>>      drivers/gpu/drm/i915/gt/intel_lrc.c | 14 +++-----------
>>>>>>>      1 file changed, 3 insertions(+), 11 deletions(-)
>>>>>>>
>>>>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
>>>>>>> index d55a5e0466e5..db8a170b0e5c 100644
>>>>>>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
>>>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
>>>>>>> @@ -1635,9 +1635,9 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
>>>>>>>                  ccid = ce->lrc.ccid;
>>>>>>>      
>>>>>>>                  /*
>>>>>>> -              * Sentinels are supposed to be lonely so they flush the
>>>>>>> -              * current exection off the HW. Check that they are the
>>>>>>> -              * only request in the pending submission.
>>>>>>> +              * Sentinels are supposed to be the last request so they flush
>>>>>>> +              * the current exection off the HW. Check that they are the only
>>>>>>> +              * request in the pending submission.
>>>>>>>                   */
>>>>>>>                  if (sentinel) {
>>>>>>>                          GEM_TRACE_ERR("%s: context:%llx after sentinel in pending[%zd]\n",
>>>>>>> @@ -1646,15 +1646,7 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
>>>>>>>                                        port - execlists->pending);
>>>>>>>                          return false;
>>>>>>>                  }
>>>>>>> -
>>>>>>>                  sentinel = i915_request_has_sentinel(rq);
>>>>>>
>>>>>> FWIW I was changing it to "sentinel |= ..." so it keeps working if we
>>>>>> decide to use more than 2 elsp ports on Icelake one day.
>>>>>
>>>>> But it will always fail on the next port...
>>>>
>>>> I don't follow. Sentinel has to be last so if it fails on the next port
>>>> it is correct to do so, no?
>>>
>>> Exactly. We only check the first port after setting sentinel, if that
>>> port is occupied we fail. Hence why we don't need |=, since there is no
>>> continuation.
>>
>> But if more than two ports we also overwrite the bools so: sentinel,
>> non-sentinel, sentinel would not catch. I was just future proofing it. :)
> 
> [0] -> sentinel
> [1] != NULL -> ERROR
> 
> [0] -> not sentinel
> [1] -> sentinel
> [2] != NULL -> ERROR
> 
> We fail if anything comes after a sentinel.

:) Joke is on me.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
