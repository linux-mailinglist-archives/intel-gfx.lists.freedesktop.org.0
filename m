Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A4735F498
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 15:13:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 045586E7E6;
	Wed, 14 Apr 2021 13:13:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAC096E7E6
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 13:13:35 +0000 (UTC)
IronPort-SDR: ZG9NV0tum1XDSjRsZ7SnQ/fmafDQgI2l1T3cCHJKtWiVPYWtux6bANUrgTVihO+6FXvOFTDOnR
 7kIHX1gAH2+w==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="255953571"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="255953571"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 06:13:32 -0700
IronPort-SDR: l2Q5PSG87W6Go1StuojL7Xo2W/KbYevpJnCXaqsELNLyVXt4wXJOAHUn4rYeqgnBqN+RjszbpO
 KIxocdyaQBMg==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="424735195"
Received: from dgeiger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.90])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 06:13:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <2216c8a6-003d-5240-d983-8c162872fd66@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210413051002.92589-1-lucas.demarchi@intel.com>
 <20210413051002.92589-9-lucas.demarchi@intel.com>
 <2216c8a6-003d-5240-d983-8c162872fd66@linux.intel.com>
Date: Wed, 14 Apr 2021 16:13:27 +0300
Message-ID: <87v98pdn60.fsf@intel.com>
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
> On 13/04/2021 06:09, Lucas De Marchi wrote:
>> Now that it's not used anywhere, remove it from struct
>> intel_device_info. To allow a period in which code will be converted to
>> the new macro, keep IS_GEN_RANGE() around, just redefining it to use
>> the new fields. The size advantage from IS_GEN_RANGE() using a mask is
>> not that big as it has pretty limited use througout the driver:
>> 
>>     text    data     bss     dec     hex filename
>> 2758497   95965    6496 2860958  2ba79e drivers/gpu/drm/i915/i915.ko.old
>> 2758586   95953    6496 2861035  2ba7eb drivers/gpu/drm/i915/i915.ko.new
>
> This delta refers to this patch - I mean this point in the series? 
> Asking because it may not be 100% representative since some of the 
> previous patches have already removed some gen mask usages.
>
> While I am here, I am a bit fond of the mask approach and wonder if 
> using it for all (gt/media/whatelse) new fields would still make sense.
>
> Presence of the range check helpers suggests that it might, but I 
> haven't looked at how prevalent their usage ends up after the series is 
> done. So just in principle, I don't see why not still go with masks 
> since that guarantees elegant check at each range check site. It would 
> be all hidden in the macro implementation so easy.
>
> Also for historical reference, another reason why I went for masks 
> everywhere approach is that at some point we had a feature request to 
> allow compiling out platforms/gens. I *think* that was much easier to do 
> with masking and in experiments back then I was able for instance to 
> build just for Gen9+ and drop like 30% of the binary size.
>
> Oh I found the branch now.. The reason for IS_GEN(p, v) was also in that 
> series. I don't know if I ever RFC-ed or trybotted it.. google suggests 
> no and I neither can find it in my mailboxes. I could send out the old 
> patches for reference? But to be honest I have no idea if this feature 
> request (targeted driver builds) will ever resurface..

I completely agreed with the direction of using the masks way back when,
especially with the goal of the conditional/targeted compilation.

I think the question now is whether we want to keep maintaining them
just for the sake of the masks. Keeping them means having three masks
instead of one. And we wouldn't be using most of the benefits with them,
we'd mostly just get the downsides.

Having the masks per se is not such a big deal, but they're also not
such a big deal to add back later on if needed. It's the codebase all
over that's the hard part. And arguably it's not getting that much
different with the series at hand; the direct uses of INTEL_GEN() and
DISPLAY_VER() vastly outnumber IS_GEN(), IS_GEN_RANGE() and
IS_DISPLAY_RANGE() which could benefit from the mask.

We'd still be retaining the range macros as IS_GRAPHICS_VER(),
IS_MEDIA_VER() and IS_DISPLAY_VER(), although more for clarity than for
any other reason.


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
