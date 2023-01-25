Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A2A67B34E
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 14:30:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C833310E00B;
	Wed, 25 Jan 2023 13:30:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC62410E00B
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 13:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674653405; x=1706189405;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=LoAv6G8qmebcw0d1X4v7zPyGp+QX0okBk/vP9q94zFw=;
 b=BxQ7isX1bwzqbCkAVGWg+yuplr9pswA+N2oUGChFLW2BFffbNDpxLsqF
 GXU0rQcdZA2K9CxFvq3LlfMNZFnyxUWC7CiPym1STmS7kR83ysTstEif9
 KNudRTERDV8xPAs28atdlzVoIA/uoF5LxD1wd071ITkNfa7B8tdm0nWwz
 SRkV0nTWAFTjlN5L8WguLEM6tcxgOQPYeW3mGwFnyb4weSITNIYhPuN9N
 qvY4p1D3puJx1janicEEpBYeJ+ADyvIIABwKedpTNVUSE0bG4HBeJL8Q8
 q86ho3k+BIMxokrCXDyi5C20YdSheVIi5Mo0cP0uvYq95w9pOE7V2tUzX Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="314455576"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="314455576"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 05:29:05 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="836343835"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="836343835"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.46.223])
 ([10.252.46.223])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 05:28:25 -0800
Message-ID: <592aad9f-fb3b-4369-4683-aef49628786a@linux.intel.com>
Date: Wed, 25 Jan 2023 14:28:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20230124110515.17017-1-nirmoy.das@intel.com>
 <d8a7783d-29fc-342d-c9ed-3f3b16455b4d@linux.intel.com>
 <Y9Aw3sCGt+s+qGIO@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <Y9Aw3sCGt+s+qGIO@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Clear wedged status upon
 suspend
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
Cc: intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Rodrigo,

On 1/24/2023 8:26 PM, Rodrigo Vivi wrote:
> On Tue, Jan 24, 2023 at 12:07:19PM +0100, Das, Nirmoy wrote:
>> Forgot to add the drm issue a reference.
>>
>> On 1/24/2023 12:05 PM, Nirmoy Das wrote:
>>> From: Chris Wilson <chris.p.wilson@linux.intel.com>
>>>
>>> Currently we use set-wedged on suspend if the workload is not responding
>>> in order to allow a fast suspend (albeit at the cost of discarding the
>>> current userspace). This may leave the device wedged during suspend,
>>> where we may require the device available in order to swapout CPU
>>> inaccessible device memory. Clear any temporary wedged-status after
>>> flushing userspace off the device so we can use the blitter ourselves
>>> inside suspend.
> This seems a very good move. But this explain they unset_wedged part,
> not the removal of the retire_requests. Why don't we need to retire them
> anymore?


Thanks for noticing that. This on me, I missed another patch which moved 
the intel_gt_retire_requests()

inside of intel_gt_set_wedged().

>
> Also, what are the chances of races here? I mean, we are marking
> the gpu as not wedged anymore. Do we have any warranty at this point
> that no further request will arrive?


The assumption was: this is  in single threaded suspend "context" so we 
should be fine but

we just realized that  this is getting called at pm prepare time. Thanks 
for raising this it seem

I need to refactor i915_gem_backup_suspend() as well which should be 
called much later on.


Regards,

Nirmoy

>
> Shouldn't we have a way to differentiate between the totally wedged
> and blocked for user submission?
>
>>> Testcase: igt/gem_eio/in-flight-suspend
>> References: https://gitlab.freedesktop.org/drm/intel/-/issues/7896
>>> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>> Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
>>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/gt/intel_gt_pm.c | 10 ++++------
>>>    1 file changed, 4 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>> index cef3d6f5c34e..74d1dd3793f9 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>> @@ -317,19 +317,17 @@ int intel_gt_resume(struct intel_gt *gt)
>>>    static void wait_for_suspend(struct intel_gt *gt)
>>>    {
>>> -	if (!intel_gt_pm_is_awake(gt))
>>> -		return;
>>> -
>>> -	if (intel_gt_wait_for_idle(gt, I915_GT_SUSPEND_IDLE_TIMEOUT) == -ETIME) {
>>> +	if (intel_gt_wait_for_idle(gt, I915_GT_SUSPEND_IDLE_TIMEOUT) == -ETIME)
>>>    		/*
>>>    		 * Forcibly cancel outstanding work and leave
>>>    		 * the gpu quiet.
>>>    		 */
>>>    		intel_gt_set_wedged(gt);
>>> -		intel_gt_retire_requests(gt);
>>> -	}
>>>    	intel_gt_pm_wait_for_idle(gt);
>>> +
>>> +	/* Make the GPU available again for swapout */
>>> +	intel_gt_unset_wedged(gt);
>>>    }
>>>    void intel_gt_suspend_prepare(struct intel_gt *gt)
