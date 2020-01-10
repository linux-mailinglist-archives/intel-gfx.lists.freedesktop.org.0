Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF9A136C19
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 12:40:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1DBF89935;
	Fri, 10 Jan 2020 11:40:25 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D3AD898FD
 for <Intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 11:40:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 03:40:21 -0800
X-IronPort-AV: E=Sophos;i="5.69,416,1571727600"; d="scan'208";a="216639492"
Received: from kumarjai-mobl1.ger.corp.intel.com (HELO [10.251.83.12])
 ([10.251.83.12])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 10 Jan 2020 03:40:20 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200110111126.28241-1-tvrtko.ursulin@linux.intel.com>
 <157865526248.10140.12428349216538334237@skylake-alporthouse-com>
 <6a11283e-63f3-1bf8-1cb6-79b122b1aaa6@linux.intel.com>
 <157865595274.10140.3399720497399838866@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e429a043-de1a-8931-b39b-b32bf1589f18@linux.intel.com>
Date: Fri, 10 Jan 2020 11:40:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157865595274.10140.3399720497399838866@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Do not use colon characters
 in PMU names
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
Cc: Andi Kleen <ak@linux.intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/01/2020 11:32, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-01-10 11:27:55)
>>
>> On 10/01/2020 11:21, Chris Wilson wrote:
>>> Quoting Tvrtko Ursulin (2020-01-10 11:11:26)
>>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>
>>>> We use PCI device path in the registered PMU name in order to distinguish
>>>> between multiple GPUs. But since tools/perf reserves a special meaning to
>>>> the colon character we need to transliterate them to something else. We
>>>> choose a dash.
>>>>
>>>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>> Reported-by: Dmitry Rogozhkin <dmitry.v.rogozhkin@intel.com>
>>>> Fixes: 05488673a4d4 ("drm/i915/pmu: Support multiple GPUs")
>>>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>>>> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>>>> Cc: Andi Kleen <ak@linux.intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/i915_pmu.c | 14 ++++++++++++--
>>>>    1 file changed, 12 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>>>> index f3ef6700a5f2..ecbd0e1f1a90 100644
>>>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>>>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>>>> @@ -1117,12 +1117,22 @@ void i915_pmu_register(struct drm_i915_private *i915)
>>>>           hrtimer_init(&pmu->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
>>>>           pmu->timer.function = i915_sample;
>>>>    
>>>> -       if (!is_igp(i915))
>>>> +       if (!is_igp(i915)) {
>>>>                   pmu->name = kasprintf(GFP_KERNEL,
>>>>                                         "i915-%s",
>>>>                                         dev_name(i915->drm.dev));
>>>> -       else
>>>> +               if (pmu->name) {
>>>
>>> /* tools/perf reserves colons as special. */
>>> strreplace(pmu->name, ':', '-');
>>
>> I didn't know this exists, thanks.
>>
>>> I worry because the err_idx pointed to the '-'. We may have to use _
>>
>> What is err_idx? But yes.. it would had served me well to test before
>> sending. :) I just find identifiers with a mix of underscores and dashes
>> so visually unappealing. :(
> 
> event syntax error: 'i915-0000:00:02.0/bcs0-busy/'
>                           \___ parser error
> 
> The parser sets err_idx on the character it failed at, and the error
> message includes it. So unless we lost whitespace in all the cutting and
> pasting, that says it barfed at '-'

Oh right, interesting that it has no problem with a dash in event name. 
In v2 full event string is:

   i915_0000_00_02.0/vcs0-busy/

A bit ugly but seems to work.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
