Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8062C4E4487
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 17:50:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCBE810E06B;
	Tue, 22 Mar 2022 16:50:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31D7210E06B
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 16:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647967840; x=1679503840;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=UsXev+5o8dAg8O14hSZJ+H54hldQDMf1fcGgVNQdWk8=;
 b=FXpgzhlaXy+08PIK1xwsqLFouwgl8eGvi+3TR/wpCtpKI0IJvSTQMLUa
 zGvv6cGmvHtYHEuk3K90ivYeXm+qrsB/fV/Jq2aiWDMKZladjEMb5W7VD
 Z+8HcnJsecdaKSM3acCOmbHa5rud8JHH2/hRctzldfNFJ6L5FF+diBP/j
 9mzF7oACQg90sQOA0zJZwpDqOEAfJyyVrrmRitWEGzI1n3+rq2rJ+aeuD
 EjiAeFK/AI1yCTK0LM66GlfnWtbtP4aDdl/q+C/4xUZoSW2HrbewQXTrD
 svYvod5QTcsPNNlIKtNXJoF03bZNuPhWnpDwNRGwdTJo38pJFsfQfwaNm Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="245344962"
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="245344962"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 09:50:39 -0700
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="543771462"
Received: from rtsao-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.252.134.54])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 09:50:39 -0700
Date: Tue, 22 Mar 2022 09:50:39 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220322165039.yfnujdppaqlbllzr@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220215234146.304035-1-casey.g.bowman@intel.com>
 <20220215234146.304035-2-casey.g.bowman@intel.com>
 <f971fcd0-a95e-93c5-46c2-3cd9fe753f9e@intel.com>
 <20220322020144.thmvicqtlpcmkf6l@ldmartin-desk2>
 <87r16ujni0.fsf@intel.com>
 <20220322142719.f72lpelqsw7vbnuy@ldmartin-desk2>
 <87lex2jb3i.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <87lex2jb3i.fsf@intel.com>
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

On Tue, Mar 22, 2022 at 04:49:53PM +0200, Jani Nikula wrote:
>On Tue, 22 Mar 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Tue, Mar 22, 2022 at 12:21:59PM +0200, Jani Nikula wrote:
>>>On Mon, 21 Mar 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>>> On Mon, Mar 21, 2022 at 04:34:49PM -0700, Casey Bowman wrote:
>>>>>Wanted to ping this older thread to find out where we stand with this patch,
>>>>>Are we OK with the current state of these changes?
>>>>>
>>>>>With more recent information gathered from feedback on other patches, would
>>>>>we prefer changing this to a more arch-neutral control flow?
>>>>>
>>>>>e.g.
>>>>>#if IS_ENABLED(CONFIG_X86)
>>>>>...
>>>>>#else
>>>>>...
>>>>>#endif
>>>>>
>>>>>Would we also prefer this RFC series be merged or would it be preferred to
>>>>>create a new series instead?
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
>>>It's more important to me to get this out of i915_drv.h, which is not
>>>supposed to be a collection of random stuff anymore. I've sent patches
>>>to this effect but they've stalled a bit.
>>
>> do you have a patch moving this particular one? got a link?
>
>Yeah, but it was basically shot down by Tvrtko [1], and I stalled there.
>
>I'd just like to get all this cruft out of i915_drv.h. Whenever we have
>a file where the name isn't super specific, we seem to have a tendency
>of turning it into a dumping ground for random crap. So I'd really like
>to move this out of there *before* expanding on it.

ok, I took a look there and it seems there is still some discussion on
where to move it. The place you moved it to is not ideal as
`run_as_guest()` has nothing to do with vt-d, even if it's used by one
of those functions. It's also used by the PCH detection/fallback code.

So, I think this is very much orthogonal to moving it and we are not
really extending: this just doesn't make much sense for other archs.
So my proposal is that we continue with this as is and move it when
we have a rough agreement on where to move it to.

As much as I hate the i915_utils.[ch] and I've been trying to reduce it,
I can't think of a best place. Other than of course come up with an
arch-neutral API to add to the kernel

 From some quick grep, include/linux/hypervisor.h might be a good place.
But again, I think it should be orthogonal to what this is doing.

thanks
Lucas De Marchi

>
>BR,
>Jani.
>
>
>[1] https://patchwork.freedesktop.org/series/99852/
>
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center
