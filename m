Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83589600DED
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 13:40:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C9D410E3E7;
	Mon, 17 Oct 2022 11:40:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A242B10E3E7
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 11:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666006841; x=1697542841;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=IdGO6IfyT+ocAbiU/wKF72a1Ut/HAZwIM/FP+c6ddn0=;
 b=f5ISCTvwIHi5vZx32oQnnlW+jTp6XhSZMNbDP7Q6Gh+KNDAgejkEqIW/
 rkc06bsO55hI9iRcoU+c6FZ0kuZ3JsKArDx+7lCCR9t7G8jbbNHzRqMGR
 ianhTy8YCy/BkHuo4tw1XxTDcftNcuUaA6qZPEZjCszmotVRCqz1WJNPP
 2GF1466/SMUT8t653lUu2QmQ1ON+L2o/zZIIJhcLVKsSxtjfqjrTDqWSK
 L2vh8+Ip1D3YWLySEeg5QQ3LIqa2qN8fVY6TPJYyhx4w1JjsdhbZM6Jej
 p7qGUxVBa7UyrTvgoCR9m6rWLqi9PgxAmVzdsdsqZXD52G2knadHIIIMC A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="306852756"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="306852756"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 04:40:22 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="606095234"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="606095234"
Received: from mikkelan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.11])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 04:40:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Hans de Goede <hdegoede@redhat.com>, intel-gfx
 <intel-gfx@lists.freedesktop.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, "Thorsten Leemhuis (regressions address)"
 <regressions@leemhuis.info>
In-Reply-To: <717fb4ab-5225-884f-37f9-2032c265824e@redhat.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <355dde1c-91e3-13b5-c8e8-75c9b9779b4f@redhat.com>
 <87a65usvgq.fsf@intel.com> <877d0ysv1e.fsf@intel.com>
 <717fb4ab-5225-884f-37f9-2032c265824e@redhat.com>
Date: Mon, 17 Oct 2022 14:40:17 +0300
Message-ID: <877d0yk7a6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] alderlake crashes (random memory corruption?) with
 6.0 i915 / ucode related
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 17 Oct 2022, Hans de Goede <hdegoede@redhat.com> wrote:
> Hi,
>
> On 10/17/22 10:39, Jani Nikula wrote:
>> On Mon, 17 Oct 2022, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>>> On Thu, 13 Oct 2022, Hans de Goede <hdegoede@redhat.com> wrote:
>>>> With 6.0 the following WARN triggers:
>>>> drivers/gpu/drm/i915/display/intel_bios.c:477:
>>>>
>>>>         drm_WARN(&i915->drm, min_size == 0,
>>>>                  "Block %d min_size is zero\n", section_id);
>>>
>>> What's the value of section_id that gets printed?
>> 
>> I'm guessing this is [1] fixed by commit d3a7051841f0 ("drm/i915/bios:
>> Use hardcoded fp_timing size for generating LFP data pointers") in
>> v6.1-rc1.
>> 
>> I don't think this is the root cause for your issues, but I wonder if
>> you could try v6.1-rc1 or drm-tip and see if we've fixed the other stuff
>> already too?
>
> 6.1-rc1 indeed does not trigger the drm_WARN and for now (couple of
> reboots, running for 5 minutes now) it seems stable. 6.0.0 usually
> crashed during boot (but not always).
>
> Do you think it would be worthwhile to try 6.0.0 with d3a7051841f0 ?

My guess is that d3a7051841f0 is a red herring. Sure, it's a warning
splat that would be nice to get fixed in v6.0, but I doubt it has
relevance to the problems you're seeing.

Cc: Ville, your thoughts?

> Any other commits which I can try before I go down the bisect route ?

Seems pretty vague I'm afraid. I know it's painful, but likely bisect is
the fastest way to pinpoint the issue and get at the root cause.

Also, filing a bug at [1] would help us get more attention.


BR,
Jani.


[1] https://gitlab.freedesktop.org/drm/intel/issues/new


>
> (I'm assuming this will also affect other users, so we really need
> to fix this for 6.0.x before it starts hitting Arch + Fedora users)
>
> Regards,
>
> Hans
>
>
>
>> [1] https://gitlab.freedesktop.org/drm/intel/-/issues/6592
>

-- 
Jani Nikula, Intel Open Source Graphics Center
