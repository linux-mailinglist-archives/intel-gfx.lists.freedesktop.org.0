Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 071C2699A84
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 17:52:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6425B10E16A;
	Thu, 16 Feb 2023 16:52:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06DC110E16A
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Feb 2023 16:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676566345; x=1708102345;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=3gyeeOR2yucYV9eCzz1g40Bu3a+siHdntq0KEGGnYUw=;
 b=mSZwEdRaeq3miuU2HNSbUXVAzYaWCu571Ixra5TxTBPr8Xab9LZRPssP
 Od9OpztxYfdRlD9oL9/o6IT4wAecoDO7HJ317nru8B+Qjay6ubJPX7wfG
 SQai7XDAMfPNUiwoOSw1XospTtyz46eegwyfZBd82xXvXj1oVT2coIcNR
 1+C8BlsAl+YZv1CpxA6usym2zQLyeGI4ywItwjoehV8HGB16RH3wVOh9b
 /wPn+Wh6Olan347tELDz1G1dLsTQzYBTEvZUY2So9GOBYPSGqxswVBVzh
 sFEyKiVPZ3NcHJ/f98r1W2zwMXRjHNu1IcvOjTkWt2Iv0Lo4YJmtCs0pR g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="329487279"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="329487279"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 08:52:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="620055271"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="620055271"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.155])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 08:52:23 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mavroudis Chatzilaridis <mavchatz@protonmail.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <87v8kl19es.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230201184947.8835-1-mavchatz@protonmail.com>
 <87v8kl19es.fsf@intel.com>
Date: Thu, 16 Feb 2023 18:52:20 +0200
Message-ID: <87pma9zh6j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/quirks: Add inverted backlight
 quirk for HP 14-r206nv
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

On Wed, 01 Feb 2023, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Wed, 01 Feb 2023, Mavroudis Chatzilaridis <mavchatz@protonmail.com> wrote:
>> This laptop uses inverted backlight PWM. Thus, without this quirk,
>> backlight brightness decreases as the brightness value increases and
>> vice versa.
>>
>> Signed-off-by: Mavroudis Chatzilaridis <mavchatz@protonmail.com>
>
> Thanks for the patch, but this really needs a bug filed at fdo gitlab
> with dmesg, VBT, etc. [1]
>
> I don't doubt you, but the fix may need to be different. All the
> previous quirks were on ancient GM45, and I was pretty sure the problems
> were limited to that platform. I'm hesitant to add the quirk to other
> platforms without more info.
>
> Thanks,
> Jani.
>
>
> [1] https://gitlab.freedesktop.org/drm/intel/wikis/How-to-file-i915-bugs

So we pretty much exhausted all the possibilities at [2], and we're left
with the quirk. I've pushed this to drm-intel-next with cc: stable,
thanks for the patch.

BR,
Jani.


PS. For posterity, this did pass BAT and IGT despite the CI reply in
this thread [3].


[2] https://gitlab.freedesktop.org/drm/intel/-/issues/8013
[3] https://patchwork.freedesktop.org/series/113568/

>
>
>> ---
>>  drivers/gpu/drm/i915/display/intel_quirks.c | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
>> index 6e48d3bcdfec..a280448df771 100644
>> --- a/drivers/gpu/drm/i915/display/intel_quirks.c
>> +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
>> @@ -199,6 +199,8 @@ static struct intel_quirk intel_quirks[] = {
>>  	/* ECS Liva Q2 */
>>  	{ 0x3185, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
>>  	{ 0x3184, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
>> +	/* HP Notebook - 14-r206nv */
>> +	{ 0x0f31, 0x103c, 0x220f, quirk_invert_brightness },
>>  };
>>
>>  void intel_init_quirks(struct drm_i915_private *i915)
>> --
>> 2.34.1
>>
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
