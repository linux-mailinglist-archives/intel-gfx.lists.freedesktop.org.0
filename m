Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C13463246
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 12:23:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85B486E437;
	Tue, 30 Nov 2021 11:23:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0992F6E437
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 11:23:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="216888129"
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="216888129"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 03:23:24 -0800
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="676789778"
Received: from dmeldon-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.12.174])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 03:23:21 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, Tvrtko
 Ursulin <tvrtko.ursulin@linux.intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, Joonas
 Lahtinen <joonas.lahtinen@linux.intel.com>
In-Reply-To: <dcefb2694a0045dda5844893d401fe87@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211120002921.1939452-1-anusha.srivatsa@intel.com>
 <20211120002921.1939452-4-anusha.srivatsa@intel.com>
 <87czmso6l7.fsf@intel.com> <dcefb2694a0045dda5844893d401fe87@intel.com>
Date: Tue, 30 Nov 2021 13:23:10 +0200
Message-ID: <87y255j3a9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [v2 3/3] drm/i915/rpl-s: Enable guc submission by
 default
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

On Tue, 30 Nov 2021, "Srivatsa, Anusha" <anusha.srivatsa@intel.com> wrote:
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Monday, November 22, 2021 3:28 PM
>> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
>> gfx@lists.freedesktop.org; Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>;
>> Syrjala, Ville <ville.syrjala@intel.com>; Vivi, Rodrigo
>> <rodrigo.vivi@intel.com>; Joonas Lahtinen
>> <joonas.lahtinen@linux.intel.com>
>> Cc: Srivatsa, Anusha <anusha.srivatsa@intel.com>; Dhanavanthri, Swathi
>> <swathi.dhanavanthri@intel.com>
>> Subject: Re: [v2 3/3] drm/i915/rpl-s: Enable guc submission by default
>> 
>> On Fri, 19 Nov 2021, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
>> > Though, RPL-S is defined as subplatform of ADL-S, unlike ADL-S, it has
>> > GuC submission by default.
>> >
>> > v2: Remove extra parenthesis (Jani)
>> >
>> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> > Cc: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
>> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/gt/uc/intel_uc.c | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> > b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> > index 2fef3b0bbe95..6aa843a1c25f 100644
>> > --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> > @@ -35,7 +35,7 @@ static void uc_expand_default_options(struct intel_uc
>> *uc)
>> >  	}
>> >
>> >  	/* Intermediate platforms are HuC authentication only */
>> > -	if (IS_ALDERLAKE_S(i915)) {
>> > +	if (IS_ALDERLAKE_S(i915) && !IS_RAPTORLAKE_S(i915)) {
>> 
>> I know I looked through the previous version, but I only realized this now.
>> The above just feels wrong. Like, if it's ADL-S it obviously can't be RPL-S, so
>> why the check.
>> 
>> We've had this type of thing before when IS_VALLEYVIEW() used to mean
>> VLV || CHV, and you'd have these really confusing checks:
>> 
>> 	if (IS_VALLEYVIEW() && !IS_CHERRYVIEW())
>> 
>> We had to change that later on, and it was pretty annoying.
>> 
>> I'm really sorry I didn't spot this before, but I firmly believe adding a platform
>> check macro IS_RAPTORLAKE_S() as a subplatform check is the wrong thing
>> to do.
>> 
>> I think there are maybe three options:
>> 
>> 1) Add RPL-S as a full blown platform of its own. Convert
>>    IS_ALDERLAKE_S() checks to IS_ALDERLAKE_S() || IS_RAPTORLAKE_S(). If
>>    we think there's going to be more differences than just the guc
>>    submission, this is the way to go.
>
> No. there is nothing else different between the 2 platforms.
>
>> 2) Add RPL-S as a subplatform of ADL-S like here, but then don't add a
>>    platform macro IS_RAPTORLAKE_S(). Make the check something that
>>    conveys the subplatform idea. See all the users of IS_SUBPLATFORM()
>>    in i915_drv.h; for example IS_DG2_G10(). It's obvious it's a DG2 but
>>    subtype G10. So maybe IS_ADLS_RPLS(), I don't know.
>
> I am trying to understand what this will serve. The above check will change from 
> (IS_ALDERLAKE_S(i915) && !IS_RAPTORLAKE_S(i915) to (IS_ALDERLAKE_S(i915) && !IS_ADLS_RPLS(i915). Agreed it will make the fact that RPLS is subplatform of ADLS a lot clear. Is that what you are suggesting?

Yes, that's the whole point. It is confusing that a check that looks
like a platform check is in fact a sub-platform check.

My primary concern here is what it looks like to the reader, and let's
face it, we have so many platforms and developers that everyone isn't
going to automatically remember RPL-S is a sub-platform of ADL-S.


BR,
Jani.


>
>
> Anusha
>> 3) Add RPL-S PCI IDs as ADL-S with separate device info, but add a
>>    feature flag for the guc submission default. Then RPL-S does not
>>    exist as a platform or subplatform in code, rather as ADL-S, but the
>>    difference is recorded via flags.
>> 
>> 
>> BR,
>> Jani.
>> 
>> 
>> 
>> 
>> >  		i915->params.enable_guc = ENABLE_GUC_LOAD_HUC;
>> >  		return;
>> >  	}
>> 
>> --
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
