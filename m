Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D27F35F9FD
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 19:41:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8F256E4C4;
	Wed, 14 Apr 2021 17:41:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E0476E4CB
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 17:41:48 +0000 (UTC)
IronPort-SDR: Fin/h1DTo0IyL55FU4fuPTFwsKh8bACY1S80erkZuPW9WyayyI3VSG3sGepSm7aLOJRojnrByC
 juJLaKiZpfUg==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="194260066"
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="194260066"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 10:41:46 -0700
IronPort-SDR: 1JGIMTetIMZHY46Ww+C4220iYp7bmAp9ZRpW7nqv1eMIJHRsntw7px7HkCt8xdiNDisVFEcs7K
 SJsD4VzCPGnA==
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="452557686"
Received: from akng-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.106.143])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 10:41:45 -0700
Date: Wed, 14 Apr 2021 10:41:45 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20210414174145.v45vrgt3qsv7amiv@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210413051002.92589-1-lucas.demarchi@intel.com>
 <20210413051002.92589-9-lucas.demarchi@intel.com>
 <2216c8a6-003d-5240-d983-8c162872fd66@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2216c8a6-003d-5240-d983-8c162872fd66@linux.intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 14, 2021 at 12:38:44PM +0100, Tvrtko Ursulin wrote:
>
>On 13/04/2021 06:09, Lucas De Marchi wrote:
>>Now that it's not used anywhere, remove it from struct
>>intel_device_info. To allow a period in which code will be converted to
>>the new macro, keep IS_GEN_RANGE() around, just redefining it to use
>>the new fields. The size advantage from IS_GEN_RANGE() using a mask is
>>not that big as it has pretty limited use througout the driver:
>>
>>    text    data     bss     dec     hex filename
>>2758497   95965    6496 2860958  2ba79e drivers/gpu/drm/i915/i915.ko.old
>>2758586   95953    6496 2861035  2ba7eb drivers/gpu/drm/i915/i915.ko.new
>
>This delta refers to this patch - I mean this point in the series? 
>Asking because it may not be 100% representative since some of the 
>previous patches have already removed some gen mask usages.


yes, it doesn't consider the other patches. These numbers are also for
v1, not v2, as I didn't update the commit mesage.

I don't think the numbers will be too different though.


>
>While I am here, I am a bit fond of the mask approach and wonder if 
>using it for all (gt/media/whatelse) new fields would still make 
>sense.
>
>Presence of the range check helpers suggests that it might, but I 
>haven't looked at how prevalent their usage ends up after the series 
>is done. So just in principle, I don't see why not still go with masks 
>since that guarantees elegant check at each range check site. It would 
>be all hidden in the macro implementation so easy.
>
>Also for historical reference, another reason why I went for masks 
>everywhere approach is that at some point we had a feature request to 
>allow compiling out platforms/gens. I *think* that was much easier to 
>do with masking and in experiments back then I was able for instance 
>to build just for Gen9+ and drop like 30% of the binary size.
>
>Oh I found the branch now.. The reason for IS_GEN(p, v) was also in 
>that series. I don't know if I ever RFC-ed or trybotted it.. google 
>suggests no and I neither can find it in my mailboxes. I could send 
>out the old patches for reference? But to be honest I have no idea if 
>this feature request (targeted driver builds) will ever resurface..

At the time I also liked having the macros. Looking back and checking if
we really took advantage of it, I lean towards a "no". Even when and if
we are interested in compiling out some platforms, I think a better
code split would be deserved rather relying on this.

Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
