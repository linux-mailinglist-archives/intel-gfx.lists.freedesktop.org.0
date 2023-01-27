Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 798DE67E865
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 15:37:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD14C10E477;
	Fri, 27 Jan 2023 14:37:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7A7010E477
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jan 2023 14:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674830256; x=1706366256;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=K7sV0gPe2NjfHfoiNzDVb5CbW7UD0DahiNmqK7s/1wE=;
 b=ZTNRFtNV6JKEFfSda2zV8f1ridavcvnGwUfHzSyxrMdVvjL8nldKrMgB
 jhz1v3xYpQUdI0SV+4EXzwZLqOVzuesqEUmS7NftRe80JL4BV5hJPDFnV
 bGPuE2dLIebGKzaBX3CQWddda6lWBsZJ666cmRuiNwjIvpkvHGEkIv3he
 9m2TflCHssT/xCkYPj5D+yAalSdDL2Qzs7HZI+nttkb/Lk8GbC7D6Y2e/
 2oYRYa/XieUf/yH6E9i6bcxUToxQgPrzBU7TtYAeF2TTLT0cK6XgGFfk6
 pWcuZqci5BEaCHRHUFAITVBQcO/xVJm0nzER7De4aw2GZYbp+CPXRoX3s g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="310717954"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="310717954"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 06:37:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="731861270"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="731861270"
Received: from kagner-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.38])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 06:37:25 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Luca Coelho
 <luca@coelho.fi>, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <7e60172d-2f8c-07a5-9901-c4b1b3379c7b@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230125104439.1662832-1-jouni.hogander@intel.com>
 <5a3fd9d547723c726b0f170e894cf471e7eb8ae1.camel@coelho.fi>
 <87bkml5wv4.fsf@intel.com>
 <e0fb44004a740f0bb676cde16d8cc3a247ac106b.camel@coelho.fi>
 <f90662ade27cf750704896eda0663502fd05c4c0.camel@coelho.fi>
 <87357x5lir.fsf@intel.com>
 <7e60172d-2f8c-07a5-9901-c4b1b3379c7b@linux.intel.com>
Date: Fri, 27 Jan 2023 16:37:22 +0200
Message-ID: <87o7qk3uxp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Split sel fetch plane
 configuration into arm and noarm
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 27 Jan 2023, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> On 26/01/2023 16:05, Jani Nikula wrote:
>> On Thu, 26 Jan 2023, Luca Coelho <luca@coelho.fi> wrote:
>>> On Thu, 2023-01-26 at 14:11 +0200, Luca Coelho wrote:
>>>> On Thu, 2023-01-26 at 14:00 +0200, Jani Nikula wrote:
>>>>> On Thu, 26 Jan 2023, Luca Coelho <luca@coelho.fi> wrote:
>>>>>> On Wed, 2023-01-25 at 12:44 +0200, Jouni H=C3=B6gander wrote:
>>>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gp=
u/drm/i915/display/intel_psr.c
>>>>>>>> index 7d4a15a283a0..63b79c611932 100644
>>>>>>>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>>>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>>>>>>>> @@ -1559,7 +1559,26 @@ void intel_psr2_disable_plane_sel_fetch(str=
uct intel_plane *plane,
>>>>>>>>   	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id=
), 0);
>>>>>>>>   }
>>>>>>>>=20=20=20
>>>>>>>> -void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
>>>>>>>> +void intel_psr2_program_plane_sel_fetch_arm(struct intel_plane *p=
lane,
>>>>>>>> +					const struct intel_crtc_state *crtc_state,
>>>>>>>> +					const struct intel_plane_state *plane_state,
>>>>>>>> +					int color_plane)
>>>>>>>> +{
>>>>>>>> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
>>>>>>
>>>>>> Should you use i915 instead of dev_priv? I've heard and read elsewhe=
re
>>>>>> that this is generally a desired change.  Much easier to use always =
the
>>>>>> same local name for this kind of thing.  Though this file is already
>>>>>> interspersed with both versions...
>>>>>
>>>>> Basically the only reason to use dev_priv for new code is to deal with
>>>>> some register macros that still have implicit dev_priv in
>>>>> them. Otherwise, i915 should be used, and when convenient, dev_priv
>>>>> should be converted to i915 while touching the code anyway (in a
>>>>> separate patch, but while you're there).
>>>>
>>>> Thanks for the clarification! In this case we're not using any of the
>>>> macros, AFAICT, so I guess it's better to go with i915 already? And I
>>>> think it should even be in this same patch, since it's a new function
>>>> anyway.
>>>>
>>>>
>>>>> The implicit dev_priv dependencies in the register macros are a bit
>>>>> annoying to fix, and it's been going slow. In retrospect maybe the ri=
ght
>>>>> thing would have been to just sed the parameter to all of them
>>>>> everywhere and be done with it for good. Not too late now, I guess, a=
nd
>>>>> I'd take the patches in a heartbeat if someone were to step up and do
>>>>> it.
>>>>
>>>> I see that there is a boatload of register macros using it... I won't
>>>> promise, but I think it would be a good exercise for a n00b like me to
>>>> make this patch, though I already foresee another boatload of conflicts
>>>> with the internal trees and everything...
>>>
>>> There were actually 10 boatloads of places to change:
>>>
>>>   187 files changed, 12104 insertions(+), 12104 deletions(-)
>>>
>>> ...but it _does_ compile. =F0=9F=98=84
>>>
>>> Do you think this is fine? Lots of shuffle, but if you think it's okay,
>>> I can send the patch out now.
>>=20
>> Heh, I said I'd take patchES, not everything together! ;)
>>=20
>> Rodrigo, Tvrtko, Joonas, thoughts?
>
> IMO if the elimination of implicit dev_priv is not included then I am=20
> not sure the churn is worth the effort.
>
> I think one trap is that it is easy to assume solving those conflicts is=
=20
> easy because there is a script, somewhere, whatever, but one needs to be=
=20
> careful with assuming a random person hitting a merge conflict will=20
> realize there is a script, know where to find it, and know how to use it=
=20
> against a state where conflict markers are sitting in their local tree.=20
> That's a lot of assumed knowledge which my experience tells me is not=20
> universally there.
>
> Having said all that, I looked at the occurrence histogram for the=20
> proposed churn and gut feel says conflicts wouldn't even be that bad=20
> since they seem heavily localized in a handful of files plus the display=
=20
> subdir.
>
> Plus it is upstream.. so we are allowed not to care too much about=20
> backporting woes. I would still hope implicit dev_priv, albeit=20
> orthogonal, would be coming somewhat together with the rename. For that=20
> warm fuzzy feeling that the churn was really really worth it.

I was mostly talking about the implicit dev_priv removal. It's somewhat
easy, because you can always assume dev_priv is around when the macros
in question are used.

The above is a dependency to any renames. I don't think the renames are
as important as removing the implicit dev_priv, and the renames are
easier to handle piecemeal, say a file at a time or something.

BR,
Jani.


--=20
Jani Nikula, Intel Open Source Graphics Center
