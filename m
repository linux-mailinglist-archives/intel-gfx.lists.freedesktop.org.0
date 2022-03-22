Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC784E424B
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 15:50:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FC3310E552;
	Tue, 22 Mar 2022 14:50:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FD1510E552
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 14:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647960598; x=1679496598;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=WPlPPHdRbLbAwLeyUg7mgRXTJR89JGu7Zgw9RKEMD3Q=;
 b=C9GdUcAwsuLTb5WVTUlTUUZVoZIlYsA1YK8ngTkHEoJnyhjTN8zh7UGB
 QqiTBmcUBNqlJP0OqwgSu4OWxC6DV1ES+/9Jpx6jqIg69g/P1XizmjkDv
 1eO+OgI1b6/1o9vbjOa4mOwa/OMyufZQb4zoT+VCZyGuGy41PAGRKwRMr
 MLn1NDjf4q3AH5WAd9B3B5NrhQ7EF9xx3ZyQAbOLruszBLGT341B/b+Ia
 4yDNG5oF7CBzlukDc4KPPLw1YaZbD0OXrAD0rdODti6WHYi8SPWIBh1Bv
 DhtXe711rDFfucfHpjQNrQAyE+ZwK3j6wqSWnYOz9mF1SM1sDjzxC728Y w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="258026047"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="258026047"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 07:49:58 -0700
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="560411239"
Received: from sburacze-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.58.237])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 07:49:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20220322142719.f72lpelqsw7vbnuy@ldmartin-desk2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220215234146.304035-1-casey.g.bowman@intel.com>
 <20220215234146.304035-2-casey.g.bowman@intel.com>
 <f971fcd0-a95e-93c5-46c2-3cd9fe753f9e@intel.com>
 <20220322020144.thmvicqtlpcmkf6l@ldmartin-desk2>
 <87r16ujni0.fsf@intel.com>
 <20220322142719.f72lpelqsw7vbnuy@ldmartin-desk2>
Date: Tue, 22 Mar 2022 16:49:53 +0200
Message-ID: <87lex2jb3i.fsf@intel.com>
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

On Tue, 22 Mar 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Tue, Mar 22, 2022 at 12:21:59PM +0200, Jani Nikula wrote:
>>On Mon, 21 Mar 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>> On Mon, Mar 21, 2022 at 04:34:49PM -0700, Casey Bowman wrote:
>>>>Wanted to ping this older thread to find out where we stand with this patch,
>>>>Are we OK with the current state of these changes?
>>>>
>>>>With more recent information gathered from feedback on other patches, would
>>>>we prefer changing this to a more arch-neutral control flow?
>>>>
>>>>e.g.
>>>>#if IS_ENABLED(CONFIG_X86)
>>>>...
>>>>#else
>>>>...
>>>>#endif
>>>>
>>>>Would we also prefer this RFC series be merged or would it be preferred to
>>>>create a new series instead?
>>>
>>> for this specific function, that is used in only 2 places I think it's
>>> ok to do:
>>>
>>> 	static inline bool run_as_guest(void)
>>> 	{
>>> 	#if IS_ENABLED(CONFIG_X86)
>>> 		return !hypervisor_is_type(X86_HYPER_NATIVE);
>>> 	#else	
>>> 		/* Not supported yet */
>>> 		return false;	
>>> 	#endif
>>> 	}
>>>
>>> For PCH it doesn't really matter as we don't execute that function
>>> for discrete. For intel_vtd_active() I figure anything other than
>>> x86 would be fine with false here.
>>>
>>> Jani, that this look good to you?
>>
>>It's more important to me to get this out of i915_drv.h, which is not
>>supposed to be a collection of random stuff anymore. I've sent patches
>>to this effect but they've stalled a bit.
>
> do you have a patch moving this particular one? got a link?

Yeah, but it was basically shot down by Tvrtko [1], and I stalled there.

I'd just like to get all this cruft out of i915_drv.h. Whenever we have
a file where the name isn't super specific, we seem to have a tendency
of turning it into a dumping ground for random crap. So I'd really like
to move this out of there *before* expanding on it. 

BR,
Jani.


[1] https://patchwork.freedesktop.org/series/99852/


-- 
Jani Nikula, Intel Open Source Graphics Center
