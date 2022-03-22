Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 030564E42F3
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 16:26:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A6C910E126;
	Tue, 22 Mar 2022 15:26:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30A4010E126
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 15:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647962810; x=1679498810;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=iObjUcLrrk+RuLRkoQLPdyr0RC98+oOWZNfn7BM3kBg=;
 b=Rg6HRViH5nFtJqwzad87r8rilB6ag1nHV9Qa+WeHVtcnJXBiZOZwH9gS
 ouKOnnJ0bl1g37f6rbXgWg4flzz1OGK4Yln1SdfCHH1ezsap3cKmKIfuO
 hQu6wNjpdlbv1dKETw4hkskFK9y8r4qcxpgUpFJFaq5NjcZucemxKMDM2
 VBKKBDM/UybJPFvnq71xudOZTRY2q/BhcEtC+l+gbBa0cZMnxAGMkF1Y1
 QTTbCN1xDJMgGhBW6x2N+ntfUymtcNx6G0abekdvv2rpKGy+49ASVrBdG
 DbWHSIQ8JN0EDPyeCg3sCzV1UJqUDccHeD6KP3/Z8/kIgcDmin6vIb9G7 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="257796743"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="257796743"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 08:26:49 -0700
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="560426157"
Received: from sburacze-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.58.237])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 08:26:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>
In-Reply-To: <68a4e3a0-215a-27c1-0bd4-d17fd8de52c4@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220215234146.304035-1-casey.g.bowman@intel.com>
 <20220215234146.304035-2-casey.g.bowman@intel.com>
 <f971fcd0-a95e-93c5-46c2-3cd9fe753f9e@intel.com>
 <20220322020144.thmvicqtlpcmkf6l@ldmartin-desk2>
 <87r16ujni0.fsf@intel.com>
 <20220322142719.f72lpelqsw7vbnuy@ldmartin-desk2>
 <87lex2jb3i.fsf@intel.com>
 <68a4e3a0-215a-27c1-0bd4-d17fd8de52c4@linux.intel.com>
Date: Tue, 22 Mar 2022 17:26:44 +0200
Message-ID: <87ils6j9e3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 22 Mar 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> On 22/03/2022 14:49, Jani Nikula wrote:
>> On Tue, 22 Mar 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>> On Tue, Mar 22, 2022 at 12:21:59PM +0200, Jani Nikula wrote:
>>>> On Mon, 21 Mar 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>>>> On Mon, Mar 21, 2022 at 04:34:49PM -0700, Casey Bowman wrote:
>>>>>> Wanted to ping this older thread to find out where we stand with this patch,
>>>>>> Are we OK with the current state of these changes?
>>>>>>
>>>>>> With more recent information gathered from feedback on other patches, would
>>>>>> we prefer changing this to a more arch-neutral control flow?
>>>>>>
>>>>>> e.g.
>>>>>> #if IS_ENABLED(CONFIG_X86)
>>>>>> ...
>>>>>> #else
>>>>>> ...
>>>>>> #endif
>>>>>>
>>>>>> Would we also prefer this RFC series be merged or would it be preferred to
>>>>>> create a new series instead?
>>>>>
>>>>> for this specific function, that is used in only 2 places I think it's
>>>>> ok to do:
>>>>>
>>>>> 	static inline bool run_as_guest(void)
>>>>> 	{
>>>>> 	#if IS_ENABLED(CONFIG_X86)
>>>>> 		return !hypervisor_is_type(X86_HYPER_NATIVE);
>>>>> 	#else	
>>>>> 		/* Not supported yet */
>>>>> 		return false;	
>>>>> 	#endif
>>>>> 	}
>>>>>
>>>>> For PCH it doesn't really matter as we don't execute that function
>>>>> for discrete. For intel_vtd_active() I figure anything other than
>>>>> x86 would be fine with false here.
>>>>>
>>>>> Jani, that this look good to you?
>>>>
>>>> It's more important to me to get this out of i915_drv.h, which is not
>>>> supposed to be a collection of random stuff anymore. I've sent patches
>>>> to this effect but they've stalled a bit.
>>>
>>> do you have a patch moving this particular one? got a link?
>> 
>> Yeah, but it was basically shot down by Tvrtko [1], and I stalled there.
>> 
>> I'd just like to get all this cruft out of i915_drv.h. Whenever we have
>> a file where the name isn't super specific, we seem to have a tendency
>> of turning it into a dumping ground for random crap. So I'd really like
>> to move this out of there *before* expanding on it.
>
> Sounds like we had agreement on what tweaks to make and I conceded to 
> live for now with the IMO wrongly named intel_vtd_run_as_guest.
>
> (I mean I really disagree with file name being trumps, which I think 
> this example illustrates - this is i915 asking whether the kernel is 
> running as guest so intel_vtd_ prefix is just wrong. Intel VT-d is the 
> iommu thingy so it makes no sense when called from PCH detection. But I 
> have no better ideas at the moment. We can call it i915_run_as_guest, to 
> signify function belongs to i915, but then we lose the first parameter 
> names the function rule.)

I think the "first parameter names the function" rule has backfired in
gem/gt land, because it's pretty difficult to figure out *where* you'd
expect to find or place functions.

BR,
Jani.

>
> But in any case I don't see that I created any blockers in this thread. 
> AFAICS just a respin with intel_vtd_active taking struct device is 
> needed and job done.
>
> Regards,
>
> Tvrtko

-- 
Jani Nikula, Intel Open Source Graphics Center
