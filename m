Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF945FAE70
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 10:30:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED2C410E7DF;
	Tue, 11 Oct 2022 08:30:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC4EB10E7DD
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 08:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665477029; x=1697013029;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=4UcGWtIHNiuL0awEfIFbQayaX1U0lRFJ5IpM8/Xj93Q=;
 b=KtfYb2vYUDKlv99/zdcRRTCZwpq7mRqMJhNBIHSkvPMaqoyuWBWa/dQ1
 O7hyu6tBTmmJ0eS5dF3Hu4RGga0QjQhkpa0P4GEJ3V/ROqCTt7n5uz3J0
 ZhoAidcmRGmgIV/I6uOML2PRYEPD/NXFJFzUkDIC+T7hWczHSzRaaL4wH
 PrQWzBB2y1Fy8EZPStBt7YCHQVXVDfV70lmUTaHwhICRoIVh6/J7uDgx1
 q+XjWQJ8wgOMMFFSzwTZpXMgx1SvpD2u/mQ4noGFrmpTn8rQTzyAgynka
 WZ8dVbhlEGdReyutILmCcytTBDvi7wfBCFWXdGl0AAZm62D7X46/bloCt w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="366436055"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="366436055"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 01:30:28 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="657261482"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="657261482"
Received: from mhartiga-mobl.ger.corp.intel.com (HELO [10.213.228.219])
 ([10.213.228.219])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 01:30:27 -0700
Message-ID: <593c378f-418c-0058-925a-4ed0a2653779@linux.intel.com>
Date: Tue, 11 Oct 2022 09:30:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
References: <cover.1665458639.git.ashutosh.dixit@intel.com>
 <e59e680be0d56fdb4c116f45fac94350832752ec.1665458639.git.ashutosh.dixit@intel.com>
 <87tu4aygcl.fsf@intel.com> <87o7ui24r6.wl-ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87o7ui24r6.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Don't do display work on
 platforms without display
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


On 11/10/2022 08:34, Dixit, Ashutosh wrote:
> On Tue, 11 Oct 2022 00:22:34 -0700, Jani Nikula wrote:
>>
> 
> Hi Jani,
> 
>> On Mon, 10 Oct 2022, Ashutosh Dixit <ashutosh.dixit@intel.com> wrote:
>>> Do display work only on platforms with display. This avoids holding the
>>> runtime PM wakeref for an additional 100+ ms after GT has been parked.
>>>
>>> Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/7025
>>> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/gt/intel_gt_pm.c | 36 +++++++++++++++------------
>>>   1 file changed, 20 insertions(+), 16 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>> index f553e2173bdad..26aa2e979a148 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>> @@ -70,19 +70,21 @@ static int __gt_unpark(struct intel_wakeref *wf)
>>>
>>> 	GT_TRACE(gt, "\n");
>>>
>>> -	/*
>>> -	 * It seems that the DMC likes to transition between the DC states a lot
>>> -	 * when there are no connected displays (no active power domains) during
>>> -	 * command submission.
>>> -	 *
>>> -	 * This activity has negative impact on the performance of the chip with
>>> -	 * huge latencies observed in the interrupt handler and elsewhere.
>>> -	 *
>>> -	 * Work around it by grabbing a GT IRQ power domain whilst there is any
>>> -	 * GT activity, preventing any DC state transitions.
>>> -	 */
>>> -	gt->awake = intel_display_power_get(i915, POWER_DOMAIN_GT_IRQ);
>>> -	GEM_BUG_ON(!gt->awake);
>>> +	if (HAS_DISPLAY(i915) && INTEL_DISPLAY_ENABLED(i915)) {
>>
>> Feels like something's wrong if you need both of those.
> 
> Don't think so:
> 
> 	/* Only valid when HAS_DISPLAY() is true */
> 	#define INTEL_DISPLAY_ENABLED(dev_priv) \
> 		(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)),         \
> 	         !(dev_priv)->params.disable_display &&                         \
> 	         !intel_opregion_headless_sku(dev_priv))
> 
> Maybe inside display code INTEL_DISPLAY_ENABLED is sufficient since code
> paths have previously invoked HAS_DISPLAY, but not in non-display code.

AFAIR this workaround is only needed when DMC is loaded so I wonder if 
we could detect that instead?

Although then I am not sure why we haven't done it like that from the 
start. Maybe there was a good reason and I just can't remember it.

Looking at the history, b68763741aa2 ("drm/i915: Restore GT performance 
in headless mode with DMC loaded") which added the workaround did not 
add the 100ms delay. That was added later in 81ff52b70577 ("drm/i915/gt: 
Ratelimit display power w/a"). That part sounds like it makes sense - if 
there is cost in these transitions usual approach is too add some 
hysteresis. (And AFAIR in this particular case it was actually a matter 
or re-adding the hysteresis which was lost once GEM idle work handler 
approach was removed.)

So I guess the main question is can we guard this with (ideally 
something better than) HAS_DMC. Perhaps back then GPUs wo/ display were 
simply not in our minds? Or obtaining the "DC off" power well was 
perhaps a no-op in it's own right when there is no display? If that was 
the case and isn't any more would that be feasible to re-add?

Regards,

Tvrtko

> 
> Thanks.
> --
> Ashutosh
> 
>>> +		/*
>>> +		 * It seems that the DMC likes to transition between the DC states a lot
>>> +		 * when there are no connected displays (no active power domains) during
>>> +		 * command submission.
>>> +		 *
>>> +		 * This activity has negative impact on the performance of the chip with
>>> +		 * huge latencies observed in the interrupt handler and elsewhere.
>>> +		 *
>>> +		 * Work around it by grabbing a GT IRQ power domain whilst there is any
>>> +		 * GT activity, preventing any DC state transitions.
>>> +		 */
>>> +		gt->awake = intel_display_power_get(i915, POWER_DOMAIN_GT_IRQ);
>>> +		GEM_BUG_ON(!gt->awake);
>>> +	}
>>>
>>> 	intel_rc6_unpark(&gt->rc6);
>>> 	intel_rps_unpark(&gt->rps);
>>> @@ -115,9 +117,11 @@ static int __gt_park(struct intel_wakeref *wf)
>>> 	/* Everything switched off, flush any residual interrupt just in case */
>>> 	intel_synchronize_irq(i915);
>>>
>>> -	/* Defer dropping the display power well for 100ms, it's slow! */
>>> -	GEM_BUG_ON(!wakeref);
>>> -	intel_display_power_put_async(i915, POWER_DOMAIN_GT_IRQ, wakeref);
>>> +	if (HAS_DISPLAY(i915) && INTEL_DISPLAY_ENABLED(i915)) {
>>> +		/* Defer dropping the display power well for 100ms, it's slow! */
>>> +		GEM_BUG_ON(!wakeref);
>>> +		intel_display_power_put_async(i915, POWER_DOMAIN_GT_IRQ, wakeref);
>>> +	}
>>>
>>> 	return 0;
>>>   }
>>
>> --
>> Jani Nikula, Intel Open Source Graphics Center
