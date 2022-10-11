Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACAB45FAE82
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 10:34:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E5B510E7D7;
	Tue, 11 Oct 2022 08:34:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C87E610E7D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 08:34:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665477258; x=1697013258;
 h=message-id:date:mime-version:subject:from:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=npcVgoNifPG83VCKVqr3plnpOibnbOxMmgFGZqwg4K4=;
 b=e4WEc/I+NCgU9vbIqYADzh5xa9q1MQuhbeV9weSQAqnl8GxEL0gHB4Fl
 7s2DL1kHrr9ao1KKjvi5B125Ij1ae5O+pbW+OtqrCNEoX3PtiefMsphXE
 s36qhjRr3pWNfPLZyAgxJrKjndKlqy00dqvQAlGwNyvZU/ZqPMNRMcvFi
 OSsuX39sdBqdehiFRCJiqcx39BbiGMmSvwuXZ+T3JhoCxiLRiMWq4/grx
 X003KJdRQa6VoDr3pcrtuRRWS4+Y9UKPPiCsoD1q3kDDIAhLQUpBY7Tfe
 K6P0HbcEPvoy4dqe2iUC1gkOnoxeacW8Xbja2E2eBzAlZYLs5LfEwZWqN g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="284826751"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="284826751"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 01:34:18 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="955253285"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="955253285"
Received: from mhartiga-mobl.ger.corp.intel.com (HELO [10.213.228.219])
 ([10.213.228.219])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 01:34:17 -0700
Message-ID: <020b37c2-f00b-ac42-38a9-3a21ddd15f88@linux.intel.com>
Date: Tue, 11 Oct 2022 09:34:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
References: <cover.1665458639.git.ashutosh.dixit@intel.com>
 <e59e680be0d56fdb4c116f45fac94350832752ec.1665458639.git.ashutosh.dixit@intel.com>
 <87tu4aygcl.fsf@intel.com> <87o7ui24r6.wl-ashutosh.dixit@intel.com>
 <593c378f-418c-0058-925a-4ed0a2653779@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <593c378f-418c-0058-925a-4ed0a2653779@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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


On 11/10/2022 09:30, Tvrtko Ursulin wrote:
> 
> On 11/10/2022 08:34, Dixit, Ashutosh wrote:
>> On Tue, 11 Oct 2022 00:22:34 -0700, Jani Nikula wrote:
>>>
>>
>> Hi Jani,
>>
>>> On Mon, 10 Oct 2022, Ashutosh Dixit <ashutosh.dixit@intel.com> wrote:
>>>> Do display work only on platforms with display. This avoids holding the
>>>> runtime PM wakeref for an additional 100+ ms after GT has been parked.
>>>>
>>>> Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/7025
>>>> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>>>> ---
>>>>   drivers/gpu/drm/i915/gt/intel_gt_pm.c | 36 
>>>> +++++++++++++++------------
>>>>   1 file changed, 20 insertions(+), 16 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c 
>>>> b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>>> index f553e2173bdad..26aa2e979a148 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>>> @@ -70,19 +70,21 @@ static int __gt_unpark(struct intel_wakeref *wf)
>>>>
>>>>     GT_TRACE(gt, "\n");
>>>>
>>>> -    /*
>>>> -     * It seems that the DMC likes to transition between the DC 
>>>> states a lot
>>>> -     * when there are no connected displays (no active power 
>>>> domains) during
>>>> -     * command submission.
>>>> -     *
>>>> -     * This activity has negative impact on the performance of the 
>>>> chip with
>>>> -     * huge latencies observed in the interrupt handler and elsewhere.
>>>> -     *
>>>> -     * Work around it by grabbing a GT IRQ power domain whilst 
>>>> there is any
>>>> -     * GT activity, preventing any DC state transitions.
>>>> -     */
>>>> -    gt->awake = intel_display_power_get(i915, POWER_DOMAIN_GT_IRQ);
>>>> -    GEM_BUG_ON(!gt->awake);
>>>> +    if (HAS_DISPLAY(i915) && INTEL_DISPLAY_ENABLED(i915)) {
>>>
>>> Feels like something's wrong if you need both of those.
>>
>> Don't think so:
>>
>>     /* Only valid when HAS_DISPLAY() is true */
>>     #define INTEL_DISPLAY_ENABLED(dev_priv) \
>>         (drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)),         \
>>              !(dev_priv)->params.disable_display 
>> &&                         \
>>              !intel_opregion_headless_sku(dev_priv))
>>
>> Maybe inside display code INTEL_DISPLAY_ENABLED is sufficient since code
>> paths have previously invoked HAS_DISPLAY, but not in non-display code.
> 
> AFAIR this workaround is only needed when DMC is loaded so I wonder if 
> we could detect that instead?
> 
> Although then I am not sure why we haven't done it like that from the 
> start. Maybe there was a good reason and I just can't remember it.
> 
> Looking at the history, b68763741aa2 ("drm/i915: Restore GT performance 
> in headless mode with DMC loaded") which added the workaround did not 
> add the 100ms delay. That was added later in 81ff52b70577 ("drm/i915/gt: 
> Ratelimit display power w/a"). That part sounds like it makes sense - if 
> there is cost in these transitions usual approach is too add some 
> hysteresis. (And AFAIR in this particular case it was actually a matter 
> or re-adding the hysteresis which was lost once GEM idle work handler 
> approach was removed.)
> 
> So I guess the main question is can we guard this with (ideally 
> something better than) HAS_DMC. Perhaps back then GPUs wo/ display were 
> simply not in our minds? Or obtaining the "DC off" power well was 
> perhaps a no-op in it's own right when there is no display? If that was 
> the case and isn't any more would that be feasible to re-add?

Oops or not - we still need a rpm reference in the current scheme, 
display or no display! Back in the day that rpm was separate and 
explicit from this wa... So I guess this code stays as is and only 
possible improvements can be in the PMU area.

Regards,

Tvrtko
