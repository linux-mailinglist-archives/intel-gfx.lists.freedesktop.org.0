Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 132CE4E42A8
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 16:18:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF99010E02B;
	Tue, 22 Mar 2022 15:18:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 804FE10E02B
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 15:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647962293; x=1679498293;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=/A6/3BijKG4GUAX1WfSG+0Emmy74BnyDZVKa2i06aA4=;
 b=jNpcMYNhKNe5QgeGavYgF+NmbE4VkwQRmbMV3j/RDjXXieSk1OqQafhZ
 mP2n47h5nkN26GOfOMW4oLTkGLan8cOq5rUli+S0x7z4b5BppcPiajTMR
 g1gnL0iizIq+v0+d1hrYzKCQS67LABXTMK7nSu20SUuDJpWfc1UiD7Q36
 zQ4as6nstOvg1Z0SXZoTF9FDDdOsIl/ybue0pmUl9XNKwXNwSWq75GIP9
 8yd2/lw2WRPlgz31eOLhJRS4aADkie/juWXJ+MIBe9eEL8cQywCD3r4qh
 MDHvyImuxu6RChdrt7p26klh4IdAW+b57w6JkpfyT+yF0WVOpTslmyy2h Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="255407866"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="255407866"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 08:18:10 -0700
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="560422647"
Received: from srobinso-mobl.ger.corp.intel.com (HELO [10.213.230.39])
 ([10.213.230.39])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 08:18:09 -0700
Message-ID: <68a4e3a0-215a-27c1-0bd4-d17fd8de52c4@linux.intel.com>
Date: Tue, 22 Mar 2022 15:18:05 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
References: <20220215234146.304035-1-casey.g.bowman@intel.com>
 <20220215234146.304035-2-casey.g.bowman@intel.com>
 <f971fcd0-a95e-93c5-46c2-3cd9fe753f9e@intel.com>
 <20220322020144.thmvicqtlpcmkf6l@ldmartin-desk2> <87r16ujni0.fsf@intel.com>
 <20220322142719.f72lpelqsw7vbnuy@ldmartin-desk2> <87lex2jb3i.fsf@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87lex2jb3i.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [RFC PATCH v3 1/1] i915/drm: Split out x86/arm64
 for run_as_guest
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
Cc: daniel.vetter@intel.com, intel-gfx@lists.freedesktop.org,
 michael.cheng@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 22/03/2022 14:49, Jani Nikula wrote:
> On Tue, 22 Mar 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Tue, Mar 22, 2022 at 12:21:59PM +0200, Jani Nikula wrote:
>>> On Mon, 21 Mar 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>>> On Mon, Mar 21, 2022 at 04:34:49PM -0700, Casey Bowman wrote:
>>>>> Wanted to ping this older thread to find out where we stand with this patch,
>>>>> Are we OK with the current state of these changes?
>>>>>
>>>>> With more recent information gathered from feedback on other patches, would
>>>>> we prefer changing this to a more arch-neutral control flow?
>>>>>
>>>>> e.g.
>>>>> #if IS_ENABLED(CONFIG_X86)
>>>>> ...
>>>>> #else
>>>>> ...
>>>>> #endif
>>>>>
>>>>> Would we also prefer this RFC series be merged or would it be preferred to
>>>>> create a new series instead?
>>>>
>>>> for this specific function, that is used in only 2 places I think it's
>>>> ok to do:
>>>>
>>>> 	static inline bool run_as_guest(void)
>>>> 	{
>>>> 	#if IS_ENABLED(CONFIG_X86)
>>>> 		return !hypervisor_is_type(X86_HYPER_NATIVE);
>>>> 	#else	
>>>> 		/* Not supported yet */
>>>> 		return false;	
>>>> 	#endif
>>>> 	}
>>>>
>>>> For PCH it doesn't really matter as we don't execute that function
>>>> for discrete. For intel_vtd_active() I figure anything other than
>>>> x86 would be fine with false here.
>>>>
>>>> Jani, that this look good to you?
>>>
>>> It's more important to me to get this out of i915_drv.h, which is not
>>> supposed to be a collection of random stuff anymore. I've sent patches
>>> to this effect but they've stalled a bit.
>>
>> do you have a patch moving this particular one? got a link?
> 
> Yeah, but it was basically shot down by Tvrtko [1], and I stalled there.
> 
> I'd just like to get all this cruft out of i915_drv.h. Whenever we have
> a file where the name isn't super specific, we seem to have a tendency
> of turning it into a dumping ground for random crap. So I'd really like
> to move this out of there *before* expanding on it.

Sounds like we had agreement on what tweaks to make and I conceded to 
live for now with the IMO wrongly named intel_vtd_run_as_guest.

(I mean I really disagree with file name being trumps, which I think 
this example illustrates - this is i915 asking whether the kernel is 
running as guest so intel_vtd_ prefix is just wrong. Intel VT-d is the 
iommu thingy so it makes no sense when called from PCH detection. But I 
have no better ideas at the moment. We can call it i915_run_as_guest, to 
signify function belongs to i915, but then we lose the first parameter 
names the function rule.)

But in any case I don't see that I created any blockers in this thread. 
AFAICS just a respin with intel_vtd_active taking struct device is 
needed and job done.

Regards,

Tvrtko
