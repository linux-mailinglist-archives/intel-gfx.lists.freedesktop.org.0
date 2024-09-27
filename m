Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CED4B988402
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 14:16:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1C2710E066;
	Fri, 27 Sep 2024 12:16:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mao6Bi5x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F08810E066;
 Fri, 27 Sep 2024 12:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727439403; x=1758975403;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=w3A1BjWhcSfirgEzQiAdug/W08sfPw9gZE3Lpnawva8=;
 b=Mao6Bi5xKEWLZpGkeSN+kmChHX1LbE0qO3X+Z+bRB5HdV8R28tkXgB+c
 NuJUBVyk2BE6dNSW7v5n+63Ob5T6ZQafy7JoqJn2kMn1MJYcwIT5IoWVB
 Fe9F9sDK+VxFlodHeMdz+P1FTPc0QLNPqLtrGDgKMM3KWRBkoeTewkf9m
 o6KPhQDZv0/8dV2ijQ6F7f3J6uYii8o7EovCtkNBt8g9q50RIteqbycEY
 L7N3Vjq4TuTqCr5NvNtecIvukroPqzEdkRGUPcZp9D6axbFMC2/5Y4bQp
 Zu598UQMn9SwDmdeb9FCglE89UILSvAHPtdFSgp80siEexdKhDJKqmNko w==;
X-CSE-ConnectionGUID: +ExTj6e4RACvvV/u2gZwIw==
X-CSE-MsgGUID: 3nli4du+Rm6pzJVccMp87Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="26090137"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="26090137"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 05:16:32 -0700
X-CSE-ConnectionGUID: Y/3u0UFxQUygtsQKWF7wTA==
X-CSE-MsgGUID: c5UPGoKsQ+CalMbh3mx8ZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="72690451"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.211])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 05:16:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, Ville
 =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 0/9] drm/i915/display: platform identification with
 display->is.<PLATFORM>
In-Reply-To: <ZvV2ssfgHA8jvTro@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1724092799.git.jani.nikula@intel.com>
 <Zs-LdJYx_lVDt9PC@intel.com> <ZtCb5yc6KCy1S6bo@intel.com>
 <87wmj14c0q.fsf@intel.com>
 <m4uj2hvgkcuingb6rqqth7jc3qpa4g77xebi2wtyyt3a6hadqg@fufb76wcea6j>
 <87ldzh41hb.fsf@intel.com> <ZvV2ssfgHA8jvTro@intel.com>
Date: Fri, 27 Sep 2024 15:16:23 +0300
Message-ID: <87zfntxpew.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 26 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Tue, Sep 24, 2024 at 04:37:04PM +0300, Jani Nikula wrote:
>> On Tue, 24 Sep 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> > On Tue, Sep 24, 2024 at 12:49:25PM GMT, Jani Nikula wrote:
>> >>On Thu, 29 Aug 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.inte=
l.com> wrote:
>> >>> On Wed, Aug 28, 2024 at 04:41:24PM -0400, Rodrigo Vivi wrote:
>> >>>> On Mon, Aug 19, 2024 at 09:44:27PM +0300, Jani Nikula wrote:
>> >>>> > v2 of [1]. Please read the cover letter there.
>> >>>> >
>> >>>> > This addresses review comments and adds a few more commits on top=
, in particular
>> >>>> > the last one showcasing the approach.
>> >>>> >
>> >>>> > The main question remains, is this what we want?
>> >>>>
>> >>>> I don't know why, but the 'is' thing is still strange.
>> >>>>
>> >>>> I know I know... I'm bad with naming myself.
>> >>>>
>> >>>> I think about 'platform' but that get too big
>> >>>>
>> >>>> if (display->platform.BROADWELL)
>> >>>>
>> >>>> I think about 'gen' but then it is overloaded....
>> >>>>
>> >>>> then I think about 'ip' is worse...
>> >>>>
>> >>>> 'version'?
>> >>>>
>> >>>> 'name'?
>> >>>>
>> >>>> if (display->name.HASWELL)...
>> >>>>
>> >>>> ....
>> >>>>
>> >>>> But well, I like the overall simplification here in general.
>> >>>> Without a better name to suggest, I guess let's just move ahead...
>> >>>
>> >>> One slight concern with the is.foo is whether it complicates finding
>> >>> things with eg. cscope. But I suppose for platforms that doesn't mat=
ter
>> >>> all that much. For the has_foo stuff it'd be much more relevant.
>> >>
>> >>It does make finding things harder with cscope and gnu global, but git
>> >>grep for is.FOO is pretty accurate.
>> >>
>> >>> Anyways, can't think of anything particularly elegant myself either,
>> >>> so go ahead I guess.
>> >>
>> >>So I haven't yet. I just still have that slightly uneasy feeling about
>> >>whether this is a good thing or not. That doesn't usually make me shy
>> >>away from things, because you can fix stuff later, but getting this
>> >>wrong causes so much churn everywhere.
>> >>
>> >>The fact that it's not a macro makes it less flexible for future
>> >>changes. The display->is.FOO is somewhat legible, but could be
>> >>better. Would all lowercase make it better? I don't know.
>> >>
>> >>More alternatives? Not elegant for sure, but just alternatives:
>> >>
>> >>- Lowercase names:
>> >>
>> >>	if (display->is.rocketlake)
>> >
>> > what I really dislike is a struct named "is". Going full mesa-way would
>> > be slightly better IMO:
>> >
>> > 	if (display->is_rockelake)
>> >
>> > or
>> >
>> > 	if (display->platform_rocketlake)
>> >
>> > or
>> >
>> > 	if (display->platform.rocketlake)
>>=20
>> Fair enough.
>>=20
>> >From implementation POV having a sub-struct is easier than not.
>
> how the subplatform would appear in this case?

For example, RPL-S:


	if (display->platform.alderlake_s_raptorlake_s)

But the main platform also matches its subplatforms:

	if (display->platform.alderlake_s)

This is the same as with the patches at hand. Except for the
uppercase/lowercase difference, and s/is/platform/.

>> >>  Does not help with flexibility or cscope.
>> >>
>> >>- Lowercase macros for display, e.g. is_rocketlake().
>> >>
>> >>	if (is_rocketlake(display))
>> >>
>> >>- Macros based on just the platform name, e.g. ROCKETLAKE().
>> >>
>> >>	if (ROCKETLAKE(display))
>> >>
>> >>  or change IS_ to something else e.g. PLATFORM_ROCKETLAKE().
>> >>
>> >>	if (PLATFORM_ROCKETLAKE(display))
>> >>
>> >>  But that can get a bit long in some if ladders etc.
>> >
>> > Does it matter much? I think those would be the exception, particularly
>> > because platform checks are kind of rare these days.
>>=20
>> Well, they're maybe the exception for new platforms, but i915 display
>> does have to deal with a lot of legacy with a lot of platform checks.
>>=20
>> > grepping for LUNARLAKE in xe reveals only 2 users (+ few workarounds),
>> > because wherever we can we check by graphics/display version rather th=
an
>> > platform.
>>=20
>> i915 display has only one use of IS_LUNARLAKE(), but there are 1k+ other
>> uses of IS_<PLATFORM>.
>>=20
>> Incidentally, this is the reason I'm procrastinating about the change at
>> all.
>>=20
>> > Then simply using something similar to what we already have in xe, wou=
ld
>> > be great IMO:
>> >
>> > 	if (display->platform =3D=3D PLATFORM_LUNARLAKE)
>> >
>> > it may be verbose, but shouldn't be much used to matter in the end.
>>=20
>> The downside with that is that you can't deal with subplatforms as
>> easily. It becomes
>>=20
>> 	if (display->platform =3D=3D PLATFORM_LUNARLAKE ||
>> 	    (display->platform =3D=3D PLATFORM_ALDERLAKE_P &&
>> 	     display->subplatform =3D=3D SUBPLATFORM_ALDERLAKE_P_ALDERLAKE_N))
>>=20
>> or similar. Definitely not a fan.
>
> unless the subplatform already includes the platform?

Oh, yeah, it would.

> But well, I also don't have a good suggestion here.
> The '.is' struct is strange indeed, but at least covers all the past
> and future strange cases.
>
> But I also wouldn't mind if we decide to get the verbose path,
> but try to at least making the subplatform already infering the
> platform in a way that this case could only be:
>
>        if (display->platform =3D=3D PLATFORM_LUNARLAKE ||
>             display->subplatform =3D=3D SUBPLATFORM_ALDERLAKE_P_ALDERLAKE=
_N)
>
>
> or perhaps do in a way that we don't even need the subplatform struct?
>
>        if (display->platform =3D=3D PLATFORM_LUNARLAKE ||
>             display->platform =3D=3D SUBPLATFORM_ALDERLAKE_P_ALDERLAKE_N)

How would that even be possible? display->platform can't be multiple
things at the same time, unless it's a bitmask. If it's a bitmask, you
need a way to nicely check for it instead of having it everywhere.

The alternatives are using a macro, or using bitfields - which is
exactly what the patch at hand does. We've come full circle.


BR,
Jani.


>
>>=20
>>=20
>> BR,
>> Jani.
>>=20
>>=20
>> >
>> > Lucas De Marchi
>> >
>> >>
>> >>- Go through the trouble of making the existing IS_FOO() macros _Gener=
ic
>> >>  and accept either i915 or display pointer. This does postpone making
>> >>  any further changes, but fairly soon there will need to be two sets =
of
>> >>  macros, separate for i915 and display, even though named the same.
>> >>
>> >>  Also, the _Generic thing would look up the platform definitions from
>> >>  different places, which could be error prone.
>> >>
>> >>
>> >>Yeah, procrastination...
>> >>
>> >>
>> >>BR,
>> >>Jani.
>> >>
>> >>
>> >>
>> >>
>> >>--=20
>> >>Jani Nikula, Intel
>>=20
>> --=20
>> Jani Nikula, Intel

--=20
Jani Nikula, Intel
