Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5C23606FE
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Apr 2021 12:23:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C574D6EA1C;
	Thu, 15 Apr 2021 10:23:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A59946EA1C
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Apr 2021 10:23:05 +0000 (UTC)
IronPort-SDR: wXlbmcGGT4DERlAo5lmBVCvAB4S71n5hUBreFe9dVIUc3jVbmHa7ooccJx1t4f4lId2aTOIjb/
 sgXucc5JPc9Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="280142335"
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="280142335"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2021 03:23:03 -0700
IronPort-SDR: vSSzKwRCm3E9ASwIOqBg4mmh3qp6RbBxbyKldA/ifgkRq1rdNkPBCtpS/Hwja3WnD1wXjsO8Bf
 EAgm3HYoKqiA==
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="425130411"
Received: from rousseau-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.33.241])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2021 03:23:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <319004ad-55cd-3058-3836-cc0bcb26e95c@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210413051002.92589-1-lucas.demarchi@intel.com>
 <20210413051002.92589-9-lucas.demarchi@intel.com>
 <2216c8a6-003d-5240-d983-8c162872fd66@linux.intel.com>
 <87v98pdn60.fsf@intel.com>
 <319004ad-55cd-3058-3836-cc0bcb26e95c@linux.intel.com>
Date: Thu, 15 Apr 2021 13:22:58 +0300
Message-ID: <87lf9jetj1.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 08/12] drm/i915: finish removal of
 gen_mask
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 14 Apr 2021, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> On 14/04/2021 14:13, Jani Nikula wrote:
>> On Wed, 14 Apr 2021, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
>>> On 13/04/2021 06:09, Lucas De Marchi wrote:
>>>> Now that it's not used anywhere, remove it from struct
>>>> intel_device_info. To allow a period in which code will be converted to
>>>> the new macro, keep IS_GEN_RANGE() around, just redefining it to use
>>>> the new fields. The size advantage from IS_GEN_RANGE() using a mask is
>>>> not that big as it has pretty limited use througout the driver:
>>>>
>>>>      text    data     bss     dec     hex filename
>>>> 2758497   95965    6496 2860958  2ba79e drivers/gpu/drm/i915/i915.ko.old
>>>> 2758586   95953    6496 2861035  2ba7eb drivers/gpu/drm/i915/i915.ko.new
>>>
>>> This delta refers to this patch - I mean this point in the series?
>>> Asking because it may not be 100% representative since some of the
>>> previous patches have already removed some gen mask usages.
>>>
>>> While I am here, I am a bit fond of the mask approach and wonder if
>>> using it for all (gt/media/whatelse) new fields would still make sense.
>>>
>>> Presence of the range check helpers suggests that it might, but I
>>> haven't looked at how prevalent their usage ends up after the series is
>>> done. So just in principle, I don't see why not still go with masks
>>> since that guarantees elegant check at each range check site. It would
>>> be all hidden in the macro implementation so easy.
>>>
>>> Also for historical reference, another reason why I went for masks
>>> everywhere approach is that at some point we had a feature request to
>>> allow compiling out platforms/gens. I *think* that was much easier to do
>>> with masking and in experiments back then I was able for instance to
>>> build just for Gen9+ and drop like 30% of the binary size.
>>>
>>> Oh I found the branch now.. The reason for IS_GEN(p, v) was also in that
>>> series. I don't know if I ever RFC-ed or trybotted it.. google suggests
>>> no and I neither can find it in my mailboxes. I could send out the old
>>> patches for reference? But to be honest I have no idea if this feature
>>> request (targeted driver builds) will ever resurface..
>> 
>> I completely agreed with the direction of using the masks way back when,
>> especially with the goal of the conditional/targeted compilation.
>> 
>> I think the question now is whether we want to keep maintaining them
>> just for the sake of the masks. Keeping them means having three masks
>> instead of one. And we wouldn't be using most of the benefits with them,
>> we'd mostly just get the downsides.
>> 
>> Having the masks per se is not such a big deal, but they're also not
>> such a big deal to add back later on if needed. It's the codebase all
>> over that's the hard part. And arguably it's not getting that much
>> different with the series at hand; the direct uses of INTEL_GEN() and
>> DISPLAY_VER() vastly outnumber IS_GEN(), IS_GEN_RANGE() and
>> IS_DISPLAY_RANGE() which could benefit from the mask.
>> 
>> We'd still be retaining the range macros as IS_GRAPHICS_VER(),
>> IS_MEDIA_VER() and IS_DISPLAY_VER(), although more for clarity than for
>> any other reason.
>
> Adding masks later would not a big deal, but another cycle of changing 
> "xxx_VER == n" to "IS_xxx_VER(n)" is a churn which could presumably be 
> avoided.

Direct xxx_VER <, >, <= and >= already exist all over the place, and
their numbers trump the == cases. Seems confusing to treat ==
differently.

> It is moot yes, but I don't see a clear case for doing the reversal as 
> part of this series. With a disclaimer that I only glanced over the 
> commit messages today for the first time.

So I wanted to keep using the range check macros for a couple of
reasons. Having (VER >= x && VER <= y) gets long, it needs braces, and
we use a bunch of negation !(VER >= x && VER <= y) vs. VER < x || VER >
y. !IS_GEN_RANGE() has more clarity.

Now, adding IS_GRAPHICS_VER_RANGE() gets long. Dropping the VER for
IS_GRAPHICS_RANGE() gets confusing ("what graphics range?"). Now, if we
use == for specific version check, we can repurpose IS_GRAPHICS_VER() to
do the ranges.

> So I think from me its neither ack or nack, at least since I don't 
> understand the attractiveness of using the "ver == n" and numerical 
> range check forms everywhere. As said, if we are churning I'd rather go 
> the other direction. But that's a soft objection only so feel free to 
> proceed.

Thanks, noted. However, unless stronger objections arise, I think we're
going to go with the patches at hand.


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
