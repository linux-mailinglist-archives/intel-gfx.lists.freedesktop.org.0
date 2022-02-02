Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A884A70F2
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 13:41:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7029E10E491;
	Wed,  2 Feb 2022 12:41:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F121510E491
 for <Intel-gfx@lists.freedesktop.org>; Wed,  2 Feb 2022 12:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643805677; x=1675341677;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=uesvn6c40crYdgec2kOZtqW4Yns30EN2Jw22+hyk2m0=;
 b=CvQNZ/QmtlqMM7ikmDPH26fyKYnfjfpvQChsdHBGdYD/2qA3Dc942Xaq
 C0n2hUaWbs9f02HVDP0GY2ZC1irQ5akfVw8vt7cwVnSRFNncTnYCNBaVC
 7E0bf+Vm25Q0iWYQexpleA5PoG9WrrR4OWdiHB+UhvrhUtjuB+Q2c7BWZ
 Mv4qSYcRVlAdrrPxmvbWCMsZ2KFoUmvi+CX1hHjlmc13LKZSTVmCCUQOj
 Yo5WTISS5nRpdcu2tU+AlHebnY4CWFeIqOiETdSfk8+XdT1ey8pqUsvW9
 nFzVSoEzcjJxpfrKpNUuZ0Ca2QnjSEad6DO9DCmptcQdqOXw4faHJdbtY Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="334265130"
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="334265130"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 04:41:17 -0800
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="538234905"
Received: from markeyp-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.6.210])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 04:41:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>
In-Reply-To: <332c5305-9810-0b82-a95b-86b5940b8a55@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220201111533.250242-1-tvrtko.ursulin@linux.intel.com>
 <20220201165515.xntdympc4n3pdhif@ldmartin-desk2>
 <87o83qtsxx.fsf@intel.com>
 <20220201172820.ckcxkt5g5xstfi5s@ldmartin-desk2>
 <0ef577a8-578e-22dd-c287-5223c21edcb7@linux.intel.com>
 <87a6f9tszl.fsf@intel.com>
 <332c5305-9810-0b82-a95b-86b5940b8a55@linux.intel.com>
Date: Wed, 02 Feb 2022 14:41:12 +0200
Message-ID: <874k5htp93.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [RFC 0/2] Compile out integrated
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
Cc: Intel-gfx@lists.freedesktop.org, Michael Cheng <michael.cheng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 02 Feb 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> On 02/02/2022 11:20, Jani Nikula wrote:
>> On Wed, 02 Feb 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wro=
te:
>>> On 01/02/2022 17:28, Lucas De Marchi wrote:
>>>> On Tue, Feb 01, 2022 at 07:09:14PM +0200, Jani Nikula wrote:
>>>>> On Tue, 01 Feb 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>>>>> On Tue, Feb 01, 2022 at 11:15:31AM +0000, Tvrtko Ursulin wrote:
>>>>>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>>>>
>>>>>>> Quicky and dirty hack based on some old ideas. Thought maybe the
>>>>>>> approach might
>>>>>>> interest the Arm port guys. But with IS_GEN_RANGE removed easy gains
>>>>>>> are not so
>>>>>>> big so meh.. Maybe some more easy wins with IS_DISPLAY_VER but I
>>>>>>> haven't looked
>>>>>>> into that side.
>>>>>>>
>>>>>>> 3884664=C2=A0 449681=C2=A0=C2=A0=C2=A0 6720 4341065=C2=A0 423d49 i9=
15.ko.tip
>>>>>>> 3599989=C2=A0 429034=C2=A0=C2=A0=C2=A0 6688 4035711=C2=A0 3d947f i9=
15.ko.noigp
>>>>>>
>>>>>> By these numbers probably it's hard to justify. Another thing to
>>>>>> consider
>>>>>> is that it's very common to have on the same system both
>>>>>> integrated and discrete - doing this would remove at compile time any
>>>>>> chance of driving the integrated one.
>>>>>
>>>>> I guess the point was, the arm systems won't have integrated, and it's
>>>>> anyway going to be a separate build.
>>>>
>>>> so probably the focus and argument here should not be about size
>>>> reduction. From patch 1 I see:
>>>>
>>>> +config DRM_I915_INTEGRATED_GPU_SUPPORT
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bool "Support integrated GPUs"
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default y
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 depends on DRM_I915
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 help
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Include support for =
integrated GPUs.
>>>>
>>>> If it's something that depends on arch rather than providing an
>>>> option in menuconfig, then I think it could be some interesting
>>>> investigation. However, I can't see how it would help with removing
>>>> some code paths in the driver (e.g. the clflush() calls we were talking
>>>> about in another patch series) since the code elimination would all
>>>> happen at link time.
>>>
>>> Clflush class of problems is yet another orthogonal set of problems.
>>>
>>> Yes, idea was that the Kconfig option would be selected by Arm, or
>>> deselected by x86, whatever. But there is also a case for letting it be
>>> user visible.
>>>
>>> In general, I thought at least, we should look into not
>>> building/deploying binary code for irrelevant hardware on Arm builds. If
>>> that is clear and agreeable then I think the approach how to get there
>>> is really multi-pronged.
>>>
>>> 1)
>>> What you are partly doing with "clflush" type series. Make Arm relevant
>>> code paths actually compile on Arm.
>>>
>>> 2a)
>>> What I sent in this series - it's simple/easy dead code elimination from
>>> a single compilation unit.
>>>
>>> 2b)
>>> *If* we resurrected GRAPHICS_VER check where "ver" is part of the macro,
>>> eg. not doing "if (GRAPHICS_VER <=3D> N)" but "if (GRAPHICS_VERN)", or =
"if
>>> IS_GRAPHICS_VER(N, FOREVER)", then the same approach would be more
>>> effective.
>>>
>>> Because if N or range is the macro parameter, we can make it dead code
>>> based on Kconfig.
>>>
>>> This is what I demonstrated few years ago by being able to compile out
>>> ~3rd of a driver when selecting only execlists platforms, AFAIR.
>>>
>>> And which is why I was a bit unhappy this was getting removed not so
>>> long ago.
>>=20
>> The main problem with that, as well as the Kconfig here, is maintenance.
>>=20
>> If it's fancy but unused, it's just added complexity for no benefit,
>> just the drawbacks. Every change needs to take the complexity into
>> account. If it's unused and untested, it's just going to bitrot anyway.
>>=20
>> For example, I think a config option for disabling igfx should have both
>> build and runtime testing in place before we should consider taking on
>> the burden of maintaining it. Otherwise it's just haphazard struggle,
>> and the burden falls on a handful of interested people working on it on
>> the side, occasionally fixing things as they break. And they'll break
>> because nobody else cares.
>>=20
>> If someone shows up and says i915.ko is too big, they need to be serious
>> enough to invest in maintaining the configurable size reductions, per
>> target platform.
>
> Yeah no disagreement for the most part.
>
> Whether there is a cheap way (as in maintenance/intrusiveness) which=20
> brings gains large enough.
>
> In my view it is also not a question of "too big" per se, but a question=
=20
> of professional pride of doing things properly, even if it is hard,=20
> instead of padding the binaries with dead code and sending them on=20
> rounds over the world, to "use electrons" unreachable on uncountable=20
> hypothetical customer machines and travel as updates over undersea=20
> cables for no use. :D Just because we, sitting on the source/upstream,=20
> decided it's too hard.

Well, not because it's too hard, but mostly because of picking the
battles? Also a matter of taste in what constitutes as professional
pride. If it's worth doing, it's worth doing properly?

But I guess we are, mostly, on the same page here.

BR,
Jani.


>
> Not pressuring anything though, we are not quite there yet to worry=20
> about scale deployments of Intel discrete on !x86. There is time. :)=20
> I've thrown some seeds out there, if they don't take, they don't. It is=20
> fine to tackle the "make it build and work" steps first.
>
> Regards,
>
> Tvrtko

--=20
Jani Nikula, Intel Open Source Graphics Center
