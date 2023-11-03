Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A62497DFFC1
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 09:30:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1A1C10E493;
	Fri,  3 Nov 2023 08:30:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5214510E493
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 08:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699000232; x=1730536232;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=9hervN+BPlel7bvqq1OGObHcl0Zfm8FHJHym/Sc6PZ0=;
 b=KQevdAcoB4eVNQ4GIrsHdtTUoFAq5KMmwuvBFfwSpYVihAHPK81DAuaQ
 0s3738Iq5eUBCg2AZ0ZXHiS0RK+m8IT8s2bG5EM8Pye9sDc6sAh1mezYO
 MWpzeDHOy/2Ziqi0h2KDca+P0iS9RLg5b/blbvFePT1rWE+q3NhdESFDl
 VlJ9EiaJn7tKRIxkYJ0owsS+br4kJ62FCVZtqeqb1DS8FO8EKfb/glWD9
 K6GAUV1MVwOrDHEs3b4dZV1oSP0Gj4LFrO9nu38xNzlg4VtB2qZU3zOCM
 e8qPB838Ir1V+V22jgOZKeiExD0g5y7ELguG3nyNE8WP22qCZ5/G0CtRQ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="392783494"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="392783494"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 01:30:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="738017755"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="738017755"
Received: from sdobbela-mobl.ger.corp.intel.com (HELO [10.213.223.51])
 ([10.213.223.51])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 01:30:30 -0700
Message-ID: <aee78f9c-1ca4-48ed-aa18-da03a50ebb14@linux.intel.com>
Date: Fri, 3 Nov 2023 08:30:28 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>,
 "Hajda, Andrzej" <andrzej.hajda@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20231102160644.1279801-1-radhakrishna.sripada@intel.com>
 <495ea80c-06e5-4557-8c82-badb9c1be7ac@intel.com>
 <a96ab630-e430-447b-864f-5f1aacc9af75@linux.intel.com>
 <DM4PR11MB59717CE2FEF0F4DA5380992187A6A@DM4PR11MB5971.namprd11.prod.outlook.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <DM4PR11MB59717CE2FEF0F4DA5380992187A6A@DM4PR11MB5971.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Increase guard pages when
 vt-d is enabled
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 02/11/2023 22:14, Sripada, Radhakrishna wrote:
> Hi Tvrtko,
> 
>> -----Original Message-----
>> From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> Sent: Thursday, November 2, 2023 10:41 AM
>> To: Hajda, Andrzej <andrzej.hajda@intel.com>; Sripada, Radhakrishna
>> <radhakrishna.sripada@intel.com>; intel-gfx@lists.freedesktop.org
>> Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
>> Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Increase guard pages when vt-d is
>> enabled
>>
>>
>> On 02/11/2023 16:58, Andrzej Hajda wrote:
>>> On 02.11.2023 17:06, Radhakrishna Sripada wrote:
>>>> Experiments were conducted with different multipliers to VTD_GUARD macro
>>>> with multiplier of 185 we were observing occasional pipe faults when
>>>> running kms_cursor_legacy --run-subtest single-bo
>>>>
>>>> There could possibly be an underlying issue that is being
>>>> investigated, for
>>>> now bump the guard pages for MTL.
>>>>
>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2017
>>>> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>>>> Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
>>>> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/gem/i915_gem_domain.c | 3 +++
>>>>    1 file changed, 3 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>>>> b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>>>> index 3770828f2eaf..b65f84c6bb3f 100644
>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>>>> @@ -456,6 +456,9 @@ i915_gem_object_pin_to_display_plane(struct
>>>> drm_i915_gem_object *obj,
>>>>        if (intel_scanout_needs_vtd_wa(i915)) {
>>>>            unsigned int guard = VTD_GUARD;
>>>> +        if (IS_METEORLAKE(i915))
>>>> +            guard *= 200;
>>>> +
>>>
>>> 200 * VTD_GUARD = 200 * 168 * 4K = 131MB
>>>
>>> Looks insanely high, 131MB for padding, if this is before and after it
>>> becomes even 262MB of wasted address per plane. Just signalling, I do
>>> not know if this actually hurts.
>>
>> Yeah this feels crazy. There must be some other explanation which is
>> getting hidden by the crazy amount of padding so I'd rather we figured
>> it out.
>>
>> With 262MiB per fb how many fit in GGTT before eviction hits? N screens
>> with double/triple buffering?
> 
> I believe with this method we will have to limit the no of frame buffers in the system. One alternative
> that worked is to do a proper clear range for the ggtt instead of doing a nop. Although it adds marginal
> time during suspend/resume/boot it does not add restrictions to the no of fb's that can be used.

And if we remember the guard pages replaced clearing to scratch, to 
improve suspend resume times, exactly for improving user experience. :(

Luckily there is time to fix this properly on MTL one way or the other. 
Is it just kms_cursor_legacy --run-subtest single-bo that is affected?

Regards,

Tvrtko


>>
>> Regards,
>>
>> Tvrtko
>>
>> P.S. Where did the 185 from the commit message come from?
> 185 came from experiment to increase the guard size. It is not a standard number.
> 
> Regards,
> Radhakrishna(RK) Sripada
