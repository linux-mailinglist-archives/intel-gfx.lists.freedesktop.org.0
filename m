Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A174A6FD3
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 12:20:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BB0610E268;
	Wed,  2 Feb 2022 11:20:38 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A254810E354
 for <Intel-gfx@lists.freedesktop.org>; Wed,  2 Feb 2022 11:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643800836; x=1675336836;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=JZ955unP5NbUEkoapnOAkYF3EUftQVmfctw/9lVVbk4=;
 b=OLbXk0dqWUsNSBPzwjCjaP2NxugoSX4CNZHGVE11lyaIi2NDNg1++jgQ
 dxNSB9euB4iCVjj03fgiaL0UYUYrghgkARW2Lydi3vTiDuS3A5JXPrEJ2
 9aErCg5ZFTcKl9i561snKGY0V5CrOCGWNONAGIlcId4rTDXLchZzVX+oX
 RqSrsDbbTeZMTVjYSuwP95Iprd1rVSkQvvz4wKn/95/Ye9KXbgooWN9AZ
 epdux7CSRoXG8q5u6DSEZA+0oGHuKNL8U37zY1mRH4TKXjyEiHGAVtNoK
 HaOerYjI69lEW95S1c66HYJrVe944TCsjVMqN1fJSZRlstqnQopwrt3PJ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="228549720"
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="228549720"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 03:20:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="482793407"
Received: from markeyp-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.6.210])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 03:20:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>
In-Reply-To: <0ef577a8-578e-22dd-c287-5223c21edcb7@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220201111533.250242-1-tvrtko.ursulin@linux.intel.com>
 <20220201165515.xntdympc4n3pdhif@ldmartin-desk2>
 <87o83qtsxx.fsf@intel.com>
 <20220201172820.ckcxkt5g5xstfi5s@ldmartin-desk2>
 <0ef577a8-578e-22dd-c287-5223c21edcb7@linux.intel.com>
Date: Wed, 02 Feb 2022 13:20:30 +0200
Message-ID: <87a6f9tszl.fsf@intel.com>
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
> On 01/02/2022 17:28, Lucas De Marchi wrote:
>> On Tue, Feb 01, 2022 at 07:09:14PM +0200, Jani Nikula wrote:
>>> On Tue, 01 Feb 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>>> On Tue, Feb 01, 2022 at 11:15:31AM +0000, Tvrtko Ursulin wrote:
>>>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>>
>>>>> Quicky and dirty hack based on some old ideas. Thought maybe the=20
>>>>> approach might
>>>>> interest the Arm port guys. But with IS_GEN_RANGE removed easy gains=
=20
>>>>> are not so
>>>>> big so meh.. Maybe some more easy wins with IS_DISPLAY_VER but I=20
>>>>> haven't looked
>>>>> into that side.
>>>>>
>>>>> 3884664=C2=A0 449681=C2=A0=C2=A0=C2=A0 6720 4341065=C2=A0 423d49 i915=
.ko.tip
>>>>> 3599989=C2=A0 429034=C2=A0=C2=A0=C2=A0 6688 4035711=C2=A0 3d947f i915=
.ko.noigp
>>>>
>>>> By these numbers probably it's hard to justify. Another thing to=20
>>>> consider
>>>> is that it's very common to have on the same system both
>>>> integrated and discrete - doing this would remove at compile time any
>>>> chance of driving the integrated one.
>>>
>>> I guess the point was, the arm systems won't have integrated, and it's
>>> anyway going to be a separate build.
>>=20
>> so probably the focus and argument here should not be about size
>> reduction. From patch 1 I see:
>>=20
>> +config DRM_I915_INTEGRATED_GPU_SUPPORT
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bool "Support integrated GPUs"
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default y
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 depends on DRM_I915
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 help
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Include support for in=
tegrated GPUs.
>>=20
>> If it's something that depends on arch rather than providing an
>> option in menuconfig, then I think it could be some interesting
>> investigation. However, I can't see how it would help with removing
>> some code paths in the driver (e.g. the clflush() calls we were talking
>> about in another patch series) since the code elimination would all
>> happen at link time.
>
> Clflush class of problems is yet another orthogonal set of problems.
>
> Yes, idea was that the Kconfig option would be selected by Arm, or=20
> deselected by x86, whatever. But there is also a case for letting it be=20
> user visible.
>
> In general, I thought at least, we should look into not=20
> building/deploying binary code for irrelevant hardware on Arm builds. If=
=20
> that is clear and agreeable then I think the approach how to get there=20
> is really multi-pronged.
>
> 1)
> What you are partly doing with "clflush" type series. Make Arm relevant=20
> code paths actually compile on Arm.
>
> 2a)
> What I sent in this series - it's simple/easy dead code elimination from=
=20
> a single compilation unit.
>
> 2b)
> *If* we resurrected GRAPHICS_VER check where "ver" is part of the macro,=
=20
> eg. not doing "if (GRAPHICS_VER <=3D> N)" but "if (GRAPHICS_VERN)", or "i=
f=20
> IS_GRAPHICS_VER(N, FOREVER)", then the same approach would be more=20
> effective.
>
> Because if N or range is the macro parameter, we can make it dead code=20
> based on Kconfig.
>
> This is what I demonstrated few years ago by being able to compile out=20
> ~3rd of a driver when selecting only execlists platforms, AFAIR.
>
> And which is why I was a bit unhappy this was getting removed not so=20
> long ago.

The main problem with that, as well as the Kconfig here, is maintenance.

If it's fancy but unused, it's just added complexity for no benefit,
just the drawbacks. Every change needs to take the complexity into
account. If it's unused and untested, it's just going to bitrot anyway.

For example, I think a config option for disabling igfx should have both
build and runtime testing in place before we should consider taking on
the burden of maintaining it. Otherwise it's just haphazard struggle,
and the burden falls on a handful of interested people working on it on
the side, occasionally fixing things as they break. And they'll break
because nobody else cares.

If someone shows up and says i915.ko is too big, they need to be serious
enough to invest in maintaining the configurable size reductions, per
target platform.


BR,
Jani.


>
> 3)
> Complex step is putting LTO into use to allow dead code elimination=20
> between compilation units. Think:
>
> file1.c:
> RUNTIME_INFO->needs_blah =3D IS_PLATFORM && blah
>
> file2.c
> if (RUNTIME_INFO->needs_blah)
>     ..dead code eliminated by LTO only..
>
> Few years ago Andi Kleen had a proof of concept of KBuild LTO but I=20
> don't know what is the status of that. If LTO can be enabled then work=20
> from steps 2a&b automatically works much much better.
>
> 4)
> If LTO is not there yet maybe see how to slightly refactor the code so=20
> that we can completely drop compilation units from the Makefile. Drop=20
> files like gt/intel_ring_submission.c, or similar if we have or can=20
> create candidates.
>
> Regards,
>
> Tvrtko

--=20
Jani Nikula, Intel Open Source Graphics Center
