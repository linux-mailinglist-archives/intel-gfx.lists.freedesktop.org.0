Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75BAF2EB81C
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 03:39:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1D8B89CF6;
	Wed,  6 Jan 2021 02:39:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21FB589CF6
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 02:39:38 +0000 (UTC)
IronPort-SDR: iPj6GeSo4fuRJsSV5dwNLI74zy9NsTlAl2zPuMiHY2BMv44cXS3gmbLyYp6kAOUxIcGnAO5W3Z
 ZREMv3ZDT/pQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9855"; a="261981067"
X-IronPort-AV: E=Sophos;i="5.78,478,1599548400"; d="scan'208";a="261981067"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 18:39:37 -0800
IronPort-SDR: gSGSz9a+MbzpzVauIOER8FpIGZK4vqkAHFKauhdj8C67OWtm3EhV0sCDes6zgu/IRb2lx05Bsk
 CrVKXo9q4tlA==
X-IronPort-AV: E=Sophos;i="5.78,478,1599548400"; d="scan'208";a="462528741"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.251.17.148])
 ([10.251.17.148])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 18:39:37 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210105231947.31235-1-daniele.ceraolospurio@intel.com>
 <20210105231947.31235-6-daniele.ceraolospurio@intel.com>
 <160988988224.14894.10188123155348129183@build.alporthouse.com>
 <e5c91501-e164-0bb6-a92d-f38f2a618d20@intel.com>
 <160989210594.14894.9421268000220341017@build.alporthouse.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <a27e4059-622a-e61c-bf97-0e24cdef6ca8@intel.com>
Date: Tue, 5 Jan 2021 18:39:36 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <160989210594.14894.9421268000220341017@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/guc: enable only the user
 interrupt when using GuC submission
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



On 1/5/2021 4:15 PM, Chris Wilson wrote:
> Quoting Daniele Ceraolo Spurio (2021-01-05 23:56:52)
>>
>> On 1/5/2021 3:38 PM, Chris Wilson wrote:
>>> Quoting Daniele Ceraolo Spurio (2021-01-05 23:19:47)
>>>> In GuC submission mode the CS is owned by the GuC FW, so all CS status
>>>> interrupts are handled by it. We only need the user interrupt as that
>>>> signals request completion.
>>>>
>>>> Since we're now starting the engines directly in GuC submission mode
>>>> when selected, we can stop switching back and forth between the
>>>> execlists and the GuC programming and select directly the correct
>>>> interrupt mask.
>>>>
>>>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>>> Cc: Matthew Brost <matthew.brost@intel.com>
>>>> Cc: John Harrison <john.c.harrison@intel.com>
>>>> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/gt/intel_gt_irq.c        | 18 ++++++-----
>>>>    .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 31 -------------------
>>>>    2 files changed, 11 insertions(+), 38 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
>>>> index 9830342aa6f4..7b2b8cb2d2be 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
>>>> @@ -237,14 +237,18 @@ void gen11_gt_irq_reset(struct intel_gt *gt)
>>>>    
>>>>    void gen11_gt_irq_postinstall(struct intel_gt *gt)
>>>>    {
>>>> -       const u32 irqs =
>>>> -               GT_CS_MASTER_ERROR_INTERRUPT |
>>>> -               GT_RENDER_USER_INTERRUPT |
>>>> -               GT_CONTEXT_SWITCH_INTERRUPT |
>>>> -               GT_WAIT_SEMAPHORE_INTERRUPT;
>>>>           struct intel_uncore *uncore = gt->uncore;
>>>> -       const u32 dmask = irqs << 16 | irqs;
>>>> -       const u32 smask = irqs << 16;
>>>> +       u32 irqs = GT_RENDER_USER_INTERRUPT;
>>>> +       u32 dmask;
>>>> +       u32 smask;
>>>> +
>>>> +       if (!intel_uc_wants_guc_submission(&gt->uc))
>>>> +               irqs |= GT_CS_MASTER_ERROR_INTERRUPT |
>>>> +                       GT_CONTEXT_SWITCH_INTERRUPT |
>>>> +                       GT_WAIT_SEMAPHORE_INTERRUPT;
>>> Hmm, we should stop performing this by default then, and make the
>>> execlists setup request the interrupt vector it desires.
>>>
>>> That's certainly a bit more fiddly to untangle the packed iir across
>>> multiple gen. :|
>> I had considered that, but this is a gt-level setup while the execlists
>> submission code is currently all engine-based, so I couldn't find a good
>> place to move this to and I didn't want to add a new function just for
>> it. Any preference?
> I think we should definitely strive to avoid having too many backend-
> conditional paths in the common routines, and we can certainly adjust
> the interrupts as we enable each engine (it certainly would help when
> debugging by removing engines by removing spurious iir).
>
> I guess we may end up with something like
> gen8_gt_unmask_engine_irq(struct intel_gt *gt,
> 			  struct intel_engine_cs *engine,
> 			  u16 iir)
> {
> 	if (INTEL_GEN(gt->i915) >= 11)
> 		__gen11...
> 	else
> 		__gen8...
> }
> [Not sure if gen8_gt or intel_gt; I chose gen8_gt for the iir definition]
>
> Then that would fit reasonably into logical_ring_default_irqs().
> Hindsight says that if we had done that earlier, we could have avoided
> maintaining the same engine-iir in two different sites. So maybe worth
> a bit of effort.
> -Chris

Looks reasonable, I'll give it a try.

Daniele

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
