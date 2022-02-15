Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBA04B63D2
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 07:59:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 231A010E29A;
	Tue, 15 Feb 2022 06:59:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F84810E29A
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 06:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644908351; x=1676444351;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=CALal7OWwC5WfUKwQNV2Nnj7rixxUuloBV80vIS8u6g=;
 b=ahYS+QNcQi4oXeAh7RKNXyMXyxajzL0kIp+opy2TyacKEXZ3ZnmkC/7N
 slnWZWmN8geZSeZjf/LbdovsUTKWLTGH4Cqq0r7ctuLZqN598dg+M2p6z
 lE4jNbUv9PLwQWLL6ecJLYSRmhRZ85Xl5O/CC95+l7gPnxFvzuTMCFXns
 Nrd6tb50mnd01H7NT5yLxnQQVq9Cg/MflZEPD44tdGjhpZc7SetX4+Hae
 IgDuR2MNvfmTnmmgwn+HIKxmuufQY/oRXQHRwe3+g431FyiftA8zX3StU
 oIuKwSTKlYazdRqj7vGe2S6ESlGLjrKJzmfGAz16gAHFjno8950YVgPDl A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="336692234"
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="336692234"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 22:59:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="485999554"
Received: from rmfenste-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.125.181])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 22:58:59 -0800
Date: Mon, 14 Feb 2022 22:58:56 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Casey Bowman <casey.g.bowman@intel.com>
Message-ID: <20220215065838.qulpdctnuw5ekocy@ldmartin-desk2>
References: <20220211021510.202602-1-casey.g.bowman@intel.com>
 <87sfsp7h49.fsf@intel.com>
 <ee934ff3-c17b-6766-f6ab-d0440080e46e@linux.intel.com>
 <1189984b-46de-7bfd-1da7-2a7cbafaf8c8@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <1189984b-46de-7bfd-1da7-2a7cbafaf8c8@intel.com>
Subject: Re: [Intel-gfx] [RFC PATCH v2 0/1] Splitting up platform-specific
 calls
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 michael.cheng@intel.com, daniel.vetter@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 14, 2022 at 10:05:56PM -0800, Casey Bowman wrote:
>
>On 2/11/22 05:51, Tvrtko Ursulin wrote:
>>
>>On 11/02/2022 11:55, Jani Nikula wrote:
>>>On Thu, 10 Feb 2022, Casey Bowman <casey.g.bowman@intel.com> wrote:
>>>>In this RFC I would like to ask the community their thoughts
>>>>on how we can best handle splitting architecture-specific
>>>>calls.
>>>>
>>>>I would like to address the following:
>>>>
>>>>1. How do we want to split architecture calls? Different object files
>>>>per platform? Separate function calls within the same object file?
>>>>
>>>>2. How do we address dummy functions? If we have a function call 
>>>>that is
>>>>used for one or more platforms, but is not used in another, what should
>>>>we do for this case?
>>>>
>>>>I've given an example of splitting an architecture call
>>>>in my patch with run_as_guest() being split into different
>>>>implementations for x86 and arm64 in separate object files, sharing
>>>>a single header.
>>>>
>>>>Another suggestion from Michael (michael.cheng@intel.com) involved
>>>>using a single object file, a single header, and splitting various
>>>>functions calls via ifdefs in the header file.
>>>>
>>>>I would appreciate any input on how we can avoid scaling issues when
>>>>including multiple architectures and multiple functions (as the number
>>>>of function calls will inevitably increase with more architectures).
>>>>
>>>>v2: Revised to use kernel's platform-splitting scheme.
>>>
>>>I think this is overengineering.
>>>
>>>Just add different implementations of the functions per architecture
>>>next to where they are now, like I suggested before.
>>>
>>>If we need to split them better later, it'll be a trivial undertaking,
>>>and we'll be in a better position to do it because we'll know how many
>>>functions there'll be and where they are and what they do.
>>>
>>>Adding a bunch of overhead from the start seems like the wrong thing to
>>>do.
>>
>>I don't see it adds real complexity, which would normally be 
>>associated with over-engineering. As a benefit I see it helping with 
>>driving the clean re-design (during the porting effort) in a way 
>>that it will be easy to spot is something is overly hacky, split on 
>>the wrong level, or incorrectly placed.
>>
>>And it moves run_as_guest outside of intel_vtd.[hc] which IMO shows 
>>immediate benefit, since it has nothing to do with intel_vtd.
>>
>>I suggested to add clflush as well, since I think going for 
>>drm_flush_virt_range everywhere is a bit lazy given how it is a 
>>clear regression for older platforms.
>>
>>But after that I indeed don't have a crystal ball to show me how 
>>many more appropriate low-level primitives would be to use the 
>>pattern.
>>
>>So my vote would be to go with it, although the main thing is 
>>probably to solve the conflicting asks and let guys focus on the 
>>port. Put it to voting then? :)
>>
>If we can get someone else to weigh in here to break the tie, that'd 
>be helpful :)

I don't like much the split with platforms because a) I don't think we
have too many users to deserve that, b) if we do have something that is
common and should be abstracted in that way, it should probably be
outside of i915: find somewhere in the kernel that is the proper place
to add that and c) usually we will have "do one thing for x86, do
another for all the rest" - and the split per platform forces us to add
an implementation for each platform (or add a generic/ to account for
the absence of something). There will usually be one (x86) that will
be very different than the rest.

So my vote is to go with Jani's proposal.

Lucas De Marchi

>
>Regards,
>Casey
>
