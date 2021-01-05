Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9359B2EB68E
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 00:56:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64D936E1EE;
	Tue,  5 Jan 2021 23:56:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22D436E19A
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 23:56:56 +0000 (UTC)
IronPort-SDR: 1xNwONr3EGcO2cXeqJCD4GxITvgBtP0LW/Sdj85RzEvatpGkrd7CFCvUKNGquQlh/7lYIDqGMj
 4W6UpCri8ALQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9855"; a="156983962"
X-IronPort-AV: E=Sophos;i="5.78,478,1599548400"; d="scan'208";a="156983962"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 15:56:55 -0800
IronPort-SDR: B5VeLxd1mLGfgLYanPlqdfshAw0wrTZKOMDiUdpoI3R5c+Pz6dCNuXgVONI0HzBjVKZgKsBXec
 3p8HtMrWuJtQ==
X-IronPort-AV: E=Sophos;i="5.78,478,1599548400"; d="scan'208";a="462485606"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.251.17.148])
 ([10.251.17.148])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 15:56:55 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210105231947.31235-1-daniele.ceraolospurio@intel.com>
 <20210105231947.31235-6-daniele.ceraolospurio@intel.com>
 <160988988224.14894.10188123155348129183@build.alporthouse.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <e5c91501-e164-0bb6-a92d-f38f2a618d20@intel.com>
Date: Tue, 5 Jan 2021 15:56:52 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <160988988224.14894.10188123155348129183@build.alporthouse.com>
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



On 1/5/2021 3:38 PM, Chris Wilson wrote:
> Quoting Daniele Ceraolo Spurio (2021-01-05 23:19:47)
>> In GuC submission mode the CS is owned by the GuC FW, so all CS status
>> interrupts are handled by it. We only need the user interrupt as that
>> signals request completion.
>>
>> Since we're now starting the engines directly in GuC submission mode
>> when selected, we can stop switching back and forth between the
>> execlists and the GuC programming and select directly the correct
>> interrupt mask.
>>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Matthew Brost <matthew.brost@intel.com>
>> Cc: John Harrison <john.c.harrison@intel.com>
>> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_gt_irq.c        | 18 ++++++-----
>>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 31 -------------------
>>   2 files changed, 11 insertions(+), 38 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
>> index 9830342aa6f4..7b2b8cb2d2be 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
>> @@ -237,14 +237,18 @@ void gen11_gt_irq_reset(struct intel_gt *gt)
>>   
>>   void gen11_gt_irq_postinstall(struct intel_gt *gt)
>>   {
>> -       const u32 irqs =
>> -               GT_CS_MASTER_ERROR_INTERRUPT |
>> -               GT_RENDER_USER_INTERRUPT |
>> -               GT_CONTEXT_SWITCH_INTERRUPT |
>> -               GT_WAIT_SEMAPHORE_INTERRUPT;
>>          struct intel_uncore *uncore = gt->uncore;
>> -       const u32 dmask = irqs << 16 | irqs;
>> -       const u32 smask = irqs << 16;
>> +       u32 irqs = GT_RENDER_USER_INTERRUPT;
>> +       u32 dmask;
>> +       u32 smask;
>> +
>> +       if (!intel_uc_wants_guc_submission(&gt->uc))
>> +               irqs |= GT_CS_MASTER_ERROR_INTERRUPT |
>> +                       GT_CONTEXT_SWITCH_INTERRUPT |
>> +                       GT_WAIT_SEMAPHORE_INTERRUPT;
> Hmm, we should stop performing this by default then, and make the
> execlists setup request the interrupt vector it desires.
>
> That's certainly a bit more fiddly to untangle the packed iir across
> multiple gen. :|

I had considered that, but this is a gt-level setup while the execlists 
submission code is currently all engine-based, so I couldn't find a good 
place to move this to and I didn't want to add a new function just for 
it. Any preference?

Daniele

> -Chris

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
