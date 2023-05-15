Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F9D70298F
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 11:52:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25E7610E18E;
	Mon, 15 May 2023 09:52:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C205C10E18E
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 09:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684144359; x=1715680359;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=JCpBQnBi22xdiwyvDqgErH/dqXiPIhKjQvy7VbStd9U=;
 b=Sw2yQuO6l6vt9fqJaO/Ln9CanY0LGUpM6HDiLKwVAhtxIIZGYuqz3Sx0
 /WY0s9YXx4sEB7624Nn6ghoQRHOP931torv4c/LG3XabuDSPShZM9wgLZ
 wekuRl56RhE65T7TOLKuNCvnLoHIrhipFgfWkNAAsv7zS7upmW9Y8m4Pf
 XDB7zLp5rR1wMPuYM3BuPSqKcQyEF3QoPR8x2dJaYo47l3CWwsyoSm0gF
 d9C+fnQGLyf7yZ7A/1i73u3tsQusruz5OVuR6zIk/7CNuMfTpndSyCGz8
 q70BlPLlSUTLXT5J7tezLKwXJpZSq7HvnMiqxhCFdd1VIenPa746++7qA g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="340511428"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="340511428"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 02:52:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="651346190"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="651346190"
Received: from zolayode-mobl.ger.corp.intel.com (HELO [10.213.214.133])
 ([10.213.214.133])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 02:52:37 -0700
Message-ID: <1aabf497-81e8-d3b6-1547-251324562494@linux.intel.com>
Date: Mon, 15 May 2023 10:52:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
 <20230506005816.1891043-5-umesh.nerlige.ramappa@intel.com>
 <87ilcxdw0g.wl-ashutosh.dixit@intel.com>
 <ZF7BMH5W/lzS2tq0@orsosgc001.jf.intel.com>
 <87h6shdtn0.wl-ashutosh.dixit@intel.com>
 <ZF7PXazccbkufp1X@orsosgc001.jf.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ZF7PXazccbkufp1X@orsosgc001.jf.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/pmu: Add reference counting to
 the sampling timer
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


On 13/05/2023 00:44, Umesh Nerlige Ramappa wrote:
> On Fri, May 12, 2023 at 04:20:19PM -0700, Dixit, Ashutosh wrote:
>> On Fri, 12 May 2023 15:44:00 -0700, Umesh Nerlige Ramappa wrote:
>>>
>>> On Fri, May 12, 2023 at 03:29:03PM -0700, Dixit, Ashutosh wrote:
>>> > On Fri, 05 May 2023 17:58:14 -0700, Umesh Nerlige Ramappa wrote:
>>> >>
>>> >
>>> > Hi Umesh/Tvrtko,
>>> >
>>> >> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>> >>
>>> >> We do not want to have timers per tile and waste CPU cycles and 
>>> energy via
>>> >> multiple wake-up sources, for a relatively un-important task of PMU
>>> >> sampling, so keeping a single timer works well. But we also do not 
>>> want
>>> >> the first GT which goes idle to turn off the timer.
>>> >>
>>> >> Add some reference counting, via a mask of unparked GTs, to solve 
>>> this.
>>> >>
>>> >> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>> >> Signed-off-by: Umesh Nerlige Ramappa 
>>> <umesh.nerlige.ramappa@intel.com>
>>> >> ---
>>> >>  drivers/gpu/drm/i915/i915_pmu.c | 12 ++++++++++--
>>> >>  drivers/gpu/drm/i915/i915_pmu.h |  4 ++++
>>> >>  2 files changed, 14 insertions(+), 2 deletions(-)
>>> >>
>>> >> diff --git a/drivers/gpu/drm/i915/i915_pmu.c 
>>> b/drivers/gpu/drm/i915/i915_pmu.c
>>> >> index 2b63ee31e1b3..669a42e44082 100644
>>> >> --- a/drivers/gpu/drm/i915/i915_pmu.c
>>> >> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>>> >> @@ -251,7 +251,9 @@ void i915_pmu_gt_parked(struct intel_gt *gt)
>>> >>     * Signal sampling timer to stop if only engine events are 
>>> enabled and
>>> >>     * GPU went idle.
>>> >>     */
>>> >> -    pmu->timer_enabled = pmu_needs_timer(pmu, false);
>>> >> +    pmu->unparked &= ~BIT(gt->info.id);
>>> >> +    if (pmu->unparked == 0)
>>> >> +        pmu->timer_enabled = pmu_needs_timer(pmu, false);
>>> >>
>>> >>    spin_unlock_irq(&pmu->lock);
>>> >>  }
>>> >> @@ -268,7 +270,10 @@ void i915_pmu_gt_unparked(struct intel_gt *gt)
>>> >>    /*
>>> >>     * Re-enable sampling timer when GPU goes active.
>>> >>     */
>>> >> -    __i915_pmu_maybe_start_timer(pmu);
>>> >> +    if (pmu->unparked == 0)
>>> >> +        __i915_pmu_maybe_start_timer(pmu);
>>> >> +
>>> >> +    pmu->unparked |= BIT(gt->info.id);
>>> >>
>>> >>    spin_unlock_irq(&pmu->lock);
>>> >>  }
>>> >> @@ -438,6 +443,9 @@ static enum hrtimer_restart i915_sample(struct 
>>> hrtimer *hrtimer)
>>> >>     */
>>> >>
>>> >>    for_each_gt(gt, i915, i) {
>>> >> +        if (!(pmu->unparked & BIT(i)))
>>> >> +            continue;
>>> >> +
>>> >
>>> > This is not correct. In this series we are at least sampling 
>>> frequencies
>>> > (calling frequency_sample) even when GT is parked. So these 3 lines 
>>> should be
>>> > deleted. engines_sample will get called and will return without doing
>>> > anything if engine events are disabled.
>>>
>>> Not sure I understand. This is checking pmu->'un'parked bits.
>>
>> Sorry, my bad. Not "engines_sample will get called and will return 
>> without
>> doing anything if engine events are disabled" but "engines_sample will 
>> get
>> called and will return without doing anything if GT is not awake". 
>> This is
>> the same as the previous behavior before this series.
>>
>> Umesh and I discussed this but writing this out in case Tvrtko takes a
>> look.
> 
> Sounds good, Dropping the check here in the new revision.

I think it is safe to not have the check, but I didn't quite understand 
the "this is not correct" part. I can only see the argument that it 
could be redundant, not that it is incorrect.

In which case I think it should better stay since it is way more 
efficient, given this gets called at 200Hz, than the *atomic* 
atomic_inc_not_zero (from intel_wakeref_get_if_active).

Regards,

Tvrtko
