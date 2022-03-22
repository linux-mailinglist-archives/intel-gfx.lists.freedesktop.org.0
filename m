Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 220804E435B
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 16:52:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEC1310E575;
	Tue, 22 Mar 2022 15:52:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C31B10E056
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 15:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647964327; x=1679500327;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=X/+VzZYEZJASHW3WJey9P9dPzCnAMwRgzQKkNBNJnhU=;
 b=OGGRCDBJsPbJ3ViPUM4Id8eko/95oyR5k/FrNJrrQqyHqBrsZ81hsWv4
 FNmxwj31T9RACW9LMpzP+ycABJ7sHqD2D4EG+AhVb0FLZ+yUan+ewaUJ7
 ArfI9AAdP2YihgWr7S5okoaTIVyAST2kZ2fvs62TcwkwPm47dUr79Flo+
 8AXBN269DhDKHGkyzegK3AyZI+q1bkigw56UgPcuZA3nVmHc8RaaQ9SY9
 KiZCGneber35jA96L9XCoTk6ztsb2/R//x2dgeAEHGeVM2dgO58Z4VkAn
 17vcskELKw28g0am9U5fe/7O1VbMFwgoJZbAyvrwBiwAH2dp6htZ3LXWL A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="238459501"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="238459501"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 08:52:06 -0700
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="543743611"
Received: from sburacze-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.58.237])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 08:52:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>
In-Reply-To: <f60359ab-9aa9-9718-b72a-e05a469a33fa@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220215234146.304035-1-casey.g.bowman@intel.com>
 <20220215234146.304035-2-casey.g.bowman@intel.com>
 <f971fcd0-a95e-93c5-46c2-3cd9fe753f9e@intel.com>
 <20220322020144.thmvicqtlpcmkf6l@ldmartin-desk2>
 <87r16ujni0.fsf@intel.com>
 <20220322142719.f72lpelqsw7vbnuy@ldmartin-desk2>
 <87lex2jb3i.fsf@intel.com>
 <68a4e3a0-215a-27c1-0bd4-d17fd8de52c4@linux.intel.com>
 <87ils6j9e3.fsf@intel.com>
 <f60359ab-9aa9-9718-b72a-e05a469a33fa@linux.intel.com>
Date: Tue, 22 Mar 2022 17:52:01 +0200
Message-ID: <87fsnaj87y.fsf@intel.com>
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
> On 22/03/2022 15:26, Jani Nikula wrote:
>> On Tue, 22 Mar 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
>>> On 22/03/2022 14:49, Jani Nikula wrote:
>>>> On Tue, 22 Mar 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>>>> On Tue, Mar 22, 2022 at 12:21:59PM +0200, Jani Nikula wrote:
>>>>>> On Mon, 21 Mar 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>>>>>> On Mon, Mar 21, 2022 at 04:34:49PM -0700, Casey Bowman wrote:
>>>>>>>> Wanted to ping this older thread to find out where we stand with this patch,
>>>>>>>> Are we OK with the current state of these changes?
>>>>>>>>
>>>>>>>> With more recent information gathered from feedback on other patches, would
>>>>>>>> we prefer changing this to a more arch-neutral control flow?
>>>>>>>>
>>>>>>>> e.g.
>>>>>>>> #if IS_ENABLED(CONFIG_X86)
>>>>>>>> ...
>>>>>>>> #else
>>>>>>>> ...
>>>>>>>> #endif
>>>>>>>>
>>>>>>>> Would we also prefer this RFC series be merged or would it be preferred to
>>>>>>>> create a new series instead?
>>>>>>>
>>>>>>> for this specific function, that is used in only 2 places I think it's
>>>>>>> ok to do:
>>>>>>>
>>>>>>> 	static inline bool run_as_guest(void)
>>>>>>> 	{
>>>>>>> 	#if IS_ENABLED(CONFIG_X86)
>>>>>>> 		return !hypervisor_is_type(X86_HYPER_NATIVE);
>>>>>>> 	#else	
>>>>>>> 		/* Not supported yet */
>>>>>>> 		return false;	
>>>>>>> 	#endif
>>>>>>> 	}
>>>>>>>
>>>>>>> For PCH it doesn't really matter as we don't execute that function
>>>>>>> for discrete. For intel_vtd_active() I figure anything other than
>>>>>>> x86 would be fine with false here.
>>>>>>>
>>>>>>> Jani, that this look good to you?
>>>>>>
>>>>>> It's more important to me to get this out of i915_drv.h, which is not
>>>>>> supposed to be a collection of random stuff anymore. I've sent patches
>>>>>> to this effect but they've stalled a bit.
>>>>>
>>>>> do you have a patch moving this particular one? got a link?
>>>>
>>>> Yeah, but it was basically shot down by Tvrtko [1], and I stalled there.
>>>>
>>>> I'd just like to get all this cruft out of i915_drv.h. Whenever we have
>>>> a file where the name isn't super specific, we seem to have a tendency
>>>> of turning it into a dumping ground for random crap. So I'd really like
>>>> to move this out of there *before* expanding on it.
>>>
>>> Sounds like we had agreement on what tweaks to make and I conceded to
>>> live for now with the IMO wrongly named intel_vtd_run_as_guest.
>>>
>>> (I mean I really disagree with file name being trumps, which I think
>>> this example illustrates - this is i915 asking whether the kernel is
>>> running as guest so intel_vtd_ prefix is just wrong. Intel VT-d is the
>>> iommu thingy so it makes no sense when called from PCH detection. But I
>>> have no better ideas at the moment. We can call it i915_run_as_guest, to
>>> signify function belongs to i915, but then we lose the first parameter
>>> names the function rule.)
>> 
>> I think the "first parameter names the function" rule has backfired in
>> gem/gt land, because it's pretty difficult to figure out *where* you'd
>> expect to find or place functions.
>
> Hey surely is not that bad. And I am sure if I tried to add some display 
> feature that there's a chance I'd manage to misplace something. :))
>
> No scheme is perfect and there are always edge cases, ambiguities and 
> always work to cleanup further because it all evolved rather than 
> started from scratch. If you know what the function you wrote is about, 
> surely you can place it into a file whose name suggests it is the right 
> area. If you want the example of GT, there is a nice collection of files 
> per functional area.. intel_gt_<suffix>.. interrupts, power management, 
> requests, debugfs, etc.
>
> And if you look for functions you did not write, I certainly suggest 
> using ctags rather than try opening random files. I think driver is just 
> too big for the latter approach.

Obviously I use code tagging and search. The point was more about the
surprise in expecting to find a function in some place, and finding it
in a totally different place. And obviously for finding the right place
for new functions.

BR,
Jani.



>
> Regards,
>
> Tvrtko
>
>
>> BR,
>> Jani.
>> 
>>>
>>> But in any case I don't see that I created any blockers in this thread.
>>> AFAICS just a respin with intel_vtd_active taking struct device is
>>> needed and job done.
>>>
>>> Regards,
>>>
>>> Tvrtko
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
