Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD599846D7
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 15:37:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FFFC10E6E4;
	Tue, 24 Sep 2024 13:37:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fkcCF5Wq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C20510E2B3;
 Tue, 24 Sep 2024 13:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727185030; x=1758721030;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=7fV+iCqiE6ZBBD3NcPWw32VpBvl0FZm3N99aDbwvktk=;
 b=fkcCF5Wqw4A6TBGx7tLcnHK4ti90EfR/EMyweAZcLwn4MlnNHX5c8amH
 LVUhw1Zio6mzFaJoRa4UzsUb8SwPDAeU51YQSGdjkNIrK7GvlPPnE3pp7
 7RIZ9rGfXqdfjR33f4gOLxTg0qAuC5op5JvTvGgPGkBHky5qqKkS3Q8md
 /9BvTYsHTVcYguPENJezo0M0YtupNgDk2eTs8ZUJJBJ/Ijl1ClOzcejBv
 +VuQXS8/fYvvxbtb9B4OdTsbkRD0miH3L67XFwfV55BXKwAjwAO/BOYJ4
 zYHudNS9hAf+RAJOn15b6g0SPTnjPe175DjXaUkdvGGwMz0ooPrVfkZIU w==;
X-CSE-ConnectionGUID: B69Dxz09Rz6MXj3jaBIqmA==
X-CSE-MsgGUID: 232AyLJcQOSz0QBd2KKhDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="36765789"
X-IronPort-AV: E=Sophos;i="6.10,254,1719903600"; d="scan'208";a="36765789"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 06:37:09 -0700
X-CSE-ConnectionGUID: AVu7XODATviWSXITDRV2fw==
X-CSE-MsgGUID: evqxTUd/SYecNYpj7fqBiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,254,1719903600"; d="scan'208";a="75812188"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.183])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 06:37:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Rodrigo
 Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 0/9] drm/i915/display: platform identification with
 display->is.<PLATFORM>
In-Reply-To: <m4uj2hvgkcuingb6rqqth7jc3qpa4g77xebi2wtyyt3a6hadqg@fufb76wcea6j>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1724092799.git.jani.nikula@intel.com>
 <Zs-LdJYx_lVDt9PC@intel.com> <ZtCb5yc6KCy1S6bo@intel.com>
 <87wmj14c0q.fsf@intel.com>
 <m4uj2hvgkcuingb6rqqth7jc3qpa4g77xebi2wtyyt3a6hadqg@fufb76wcea6j>
Date: Tue, 24 Sep 2024 16:37:04 +0300
Message-ID: <87ldzh41hb.fsf@intel.com>
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

On Tue, 24 Sep 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Tue, Sep 24, 2024 at 12:49:25PM GMT, Jani Nikula wrote:
>>On Thu, 29 Aug 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.c=
om> wrote:
>>> On Wed, Aug 28, 2024 at 04:41:24PM -0400, Rodrigo Vivi wrote:
>>>> On Mon, Aug 19, 2024 at 09:44:27PM +0300, Jani Nikula wrote:
>>>> > v2 of [1]. Please read the cover letter there.
>>>> >
>>>> > This addresses review comments and adds a few more commits on top, i=
n particular
>>>> > the last one showcasing the approach.
>>>> >
>>>> > The main question remains, is this what we want?
>>>>
>>>> I don't know why, but the 'is' thing is still strange.
>>>>
>>>> I know I know... I'm bad with naming myself.
>>>>
>>>> I think about 'platform' but that get too big
>>>>
>>>> if (display->platform.BROADWELL)
>>>>
>>>> I think about 'gen' but then it is overloaded....
>>>>
>>>> then I think about 'ip' is worse...
>>>>
>>>> 'version'?
>>>>
>>>> 'name'?
>>>>
>>>> if (display->name.HASWELL)...
>>>>
>>>> ....
>>>>
>>>> But well, I like the overall simplification here in general.
>>>> Without a better name to suggest, I guess let's just move ahead...
>>>
>>> One slight concern with the is.foo is whether it complicates finding
>>> things with eg. cscope. But I suppose for platforms that doesn't matter
>>> all that much. For the has_foo stuff it'd be much more relevant.
>>
>>It does make finding things harder with cscope and gnu global, but git
>>grep for is.FOO is pretty accurate.
>>
>>> Anyways, can't think of anything particularly elegant myself either,
>>> so go ahead I guess.
>>
>>So I haven't yet. I just still have that slightly uneasy feeling about
>>whether this is a good thing or not. That doesn't usually make me shy
>>away from things, because you can fix stuff later, but getting this
>>wrong causes so much churn everywhere.
>>
>>The fact that it's not a macro makes it less flexible for future
>>changes. The display->is.FOO is somewhat legible, but could be
>>better. Would all lowercase make it better? I don't know.
>>
>>More alternatives? Not elegant for sure, but just alternatives:
>>
>>- Lowercase names:
>>
>>	if (display->is.rocketlake)
>
> what I really dislike is a struct named "is". Going full mesa-way would
> be slightly better IMO:
>
> 	if (display->is_rockelake)
>
> or
>
> 	if (display->platform_rocketlake)
>
> or
>
> 	if (display->platform.rocketlake)

Fair enough.

From implementation POV having a sub-struct is easier than not.

>>
>>  Does not help with flexibility or cscope.
>>
>>- Lowercase macros for display, e.g. is_rocketlake().
>>
>>	if (is_rocketlake(display))
>>
>>- Macros based on just the platform name, e.g. ROCKETLAKE().
>>
>>	if (ROCKETLAKE(display))
>>
>>  or change IS_ to something else e.g. PLATFORM_ROCKETLAKE().
>>
>>	if (PLATFORM_ROCKETLAKE(display))
>>
>>  But that can get a bit long in some if ladders etc.
>
> Does it matter much? I think those would be the exception, particularly
> because platform checks are kind of rare these days.

Well, they're maybe the exception for new platforms, but i915 display
does have to deal with a lot of legacy with a lot of platform checks.

> grepping for LUNARLAKE in xe reveals only 2 users (+ few workarounds),
> because wherever we can we check by graphics/display version rather than
> platform.

i915 display has only one use of IS_LUNARLAKE(), but there are 1k+ other
uses of IS_<PLATFORM>.

Incidentally, this is the reason I'm procrastinating about the change at
all.

> Then simply using something similar to what we already have in xe, would
> be great IMO:
>
> 	if (display->platform =3D=3D PLATFORM_LUNARLAKE)
>
> it may be verbose, but shouldn't be much used to matter in the end.

The downside with that is that you can't deal with subplatforms as
easily. It becomes

	if (display->platform =3D=3D PLATFORM_LUNARLAKE ||
	    (display->platform =3D=3D PLATFORM_ALDERLAKE_P &&
	     display->subplatform =3D=3D SUBPLATFORM_ALDERLAKE_P_ALDERLAKE_N))

or similar. Definitely not a fan.


BR,
Jani.


>
> Lucas De Marchi
>
>>
>>- Go through the trouble of making the existing IS_FOO() macros _Generic
>>  and accept either i915 or display pointer. This does postpone making
>>  any further changes, but fairly soon there will need to be two sets of
>>  macros, separate for i915 and display, even though named the same.
>>
>>  Also, the _Generic thing would look up the platform definitions from
>>  different places, which could be error prone.
>>
>>
>>Yeah, procrastination...
>>
>>
>>BR,
>>Jani.
>>
>>
>>
>>
>>--=20
>>Jani Nikula, Intel

--=20
Jani Nikula, Intel
