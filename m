Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB9867E7DA
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 15:13:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F8BB10E971;
	Fri, 27 Jan 2023 14:13:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D84F110E971
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jan 2023 14:13:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674828796; x=1706364796;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=mV3VnC3oDE0pLHcFMVFW5QfKcc7cGy70Tq+rkS9FFjo=;
 b=iAuIAn+iIet4X6QJXHcowcsyXsaTAt5DvvZDA/xIz5TlCs+07Oe5yre0
 NoDwYOCrmYirFsS9nAAhrhWkHljcPw9WK5cakn45K3rcNX6u0RqymQPUE
 HoVY3dxScx2qbdr+L3tYTDEmzs7aIGvqev06zNQRvwpu92YAkD2QnKER/
 DoPJ01DTIxW4MDCLhIBQ/rntAjRPQToiXLcMl6Q4+fYtDqrc2qqdwVcDY
 P6v2oz68u1JihO2j/5AtP0DHc+N0xDxsh38E/psZSjhpr2WqdlMqZd4eF
 9+dcqUDrkH/V7y8XxpCm30mEmNSiBn9C7G6SJuAcR9K0FihBMtJWaIn9l w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="328378238"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="328378238"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 06:13:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="656610936"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="656610936"
Received: from jgeary-mobl1.ger.corp.intel.com (HELO [10.213.233.162])
 ([10.213.233.162])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 06:13:14 -0800
Message-ID: <7e60172d-2f8c-07a5-9901-c4b1b3379c7b@linux.intel.com>
Date: Fri, 27 Jan 2023 14:13:11 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>, Luca Coelho <luca@coelho.fi>,
 =?UTF-8?Q?Jouni_H=c3=b6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230125104439.1662832-1-jouni.hogander@intel.com>
 <5a3fd9d547723c726b0f170e894cf471e7eb8ae1.camel@coelho.fi>
 <87bkml5wv4.fsf@intel.com>
 <e0fb44004a740f0bb676cde16d8cc3a247ac106b.camel@coelho.fi>
 <f90662ade27cf750704896eda0663502fd05c4c0.camel@coelho.fi>
 <87357x5lir.fsf@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87357x5lir.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Split sel fetch plane
 configuration into arm and noarm
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 26/01/2023 16:05, Jani Nikula wrote:
> On Thu, 26 Jan 2023, Luca Coelho <luca@coelho.fi> wrote:
>> On Thu, 2023-01-26 at 14:11 +0200, Luca Coelho wrote:
>>> On Thu, 2023-01-26 at 14:00 +0200, Jani Nikula wrote:
>>>> On Thu, 26 Jan 2023, Luca Coelho <luca@coelho.fi> wrote:
>>>>> On Wed, 2023-01-25 at 12:44 +0200, Jouni Högander wrote:
>>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>>>>>>> index 7d4a15a283a0..63b79c611932 100644
>>>>>>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>>>>>>> @@ -1559,7 +1559,26 @@ void intel_psr2_disable_plane_sel_fetch(struct intel_plane *plane,
>>>>>>>   	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
>>>>>>>   }
>>>>>>>   
>>>>>>> -void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
>>>>>>> +void intel_psr2_program_plane_sel_fetch_arm(struct intel_plane *plane,
>>>>>>> +					const struct intel_crtc_state *crtc_state,
>>>>>>> +					const struct intel_plane_state *plane_state,
>>>>>>> +					int color_plane)
>>>>>>> +{
>>>>>>> +	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>>>>>
>>>>> Should you use i915 instead of dev_priv? I've heard and read elsewhere
>>>>> that this is generally a desired change.  Much easier to use always the
>>>>> same local name for this kind of thing.  Though this file is already
>>>>> interspersed with both versions...
>>>>
>>>> Basically the only reason to use dev_priv for new code is to deal with
>>>> some register macros that still have implicit dev_priv in
>>>> them. Otherwise, i915 should be used, and when convenient, dev_priv
>>>> should be converted to i915 while touching the code anyway (in a
>>>> separate patch, but while you're there).
>>>
>>> Thanks for the clarification! In this case we're not using any of the
>>> macros, AFAICT, so I guess it's better to go with i915 already? And I
>>> think it should even be in this same patch, since it's a new function
>>> anyway.
>>>
>>>
>>>> The implicit dev_priv dependencies in the register macros are a bit
>>>> annoying to fix, and it's been going slow. In retrospect maybe the right
>>>> thing would have been to just sed the parameter to all of them
>>>> everywhere and be done with it for good. Not too late now, I guess, and
>>>> I'd take the patches in a heartbeat if someone were to step up and do
>>>> it.
>>>
>>> I see that there is a boatload of register macros using it... I won't
>>> promise, but I think it would be a good exercise for a n00b like me to
>>> make this patch, though I already foresee another boatload of conflicts
>>> with the internal trees and everything...
>>
>> There were actually 10 boatloads of places to change:
>>
>>   187 files changed, 12104 insertions(+), 12104 deletions(-)
>>
>> ...but it _does_ compile. 😄
>>
>> Do you think this is fine? Lots of shuffle, but if you think it's okay,
>> I can send the patch out now.
> 
> Heh, I said I'd take patchES, not everything together! ;)
> 
> Rodrigo, Tvrtko, Joonas, thoughts?

IMO if the elimination of implicit dev_priv is not included then I am 
not sure the churn is worth the effort.

I think one trap is that it is easy to assume solving those conflicts is 
easy because there is a script, somewhere, whatever, but one needs to be 
careful with assuming a random person hitting a merge conflict will 
realize there is a script, know where to find it, and know how to use it 
against a state where conflict markers are sitting in their local tree. 
That's a lot of assumed knowledge which my experience tells me is not 
universally there.

Having said all that, I looked at the occurrence histogram for the 
proposed churn and gut feel says conflicts wouldn't even be that bad 
since they seem heavily localized in a handful of files plus the display 
subdir.

Plus it is upstream.. so we are allowed not to care too much about 
backporting woes. I would still hope implicit dev_priv, albeit 
orthogonal, would be coming somewhat together with the rename. For that 
warm fuzzy feeling that the churn was really really worth it.

Regards,

Tvrtko
