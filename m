Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D60984295
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 11:49:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F28710E6A3;
	Tue, 24 Sep 2024 09:49:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LFu9KuVE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52AC410E6A2;
 Tue, 24 Sep 2024 09:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727171371; x=1758707371;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=LJ8RNq+CLAtdQwJ++qHkszvnF+GnOy64HBmVoy1UqS4=;
 b=LFu9KuVE1oKTb+EoENUu/0sEpoKI6wNlSHXKqXtfaot3gQgcJUUlicfe
 5V0rw6H2VWcKbWMvrkVmCyqburCSIiA4L9bOlNQ11dUuBqSwl4kTZrfr+
 LfIvvF10XQ5SL5Nkivksab8wv52Oh1LbCNu8amNwZNRsYlFq+Si1qDrhd
 xI/ABWwEupbCM+GSv5VnGSF+5E4Jt4m+Niu1PdmziITN0IqrTLKG3ttPF
 z4omR3mfShf2kIOcCGx8nOl3aeH2unmJfyixw8AbLNkMcaAAOEUiExXEe
 Nq7ui41d7QSGBcYvN4hJ58bCPEcTnP2nzk9y2MyiDxKQBkt8Ua1v4SCT0 Q==;
X-CSE-ConnectionGUID: M05HZBpvQ0+8urkTU70QWw==
X-CSE-MsgGUID: c3G7dZJnS6+R83QGc0zNow==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="43623650"
X-IronPort-AV: E=Sophos;i="6.10,254,1719903600"; d="scan'208";a="43623650"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 02:49:31 -0700
X-CSE-ConnectionGUID: p8292GPXRzWS185VfFs0Nw==
X-CSE-MsgGUID: NLmh/fFKQUy+kBrc4lMzMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,254,1719903600"; d="scan'208";a="102187220"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.183])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 02:49:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Rodrigo
 Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 lucas.demarchi@intel.com
Subject: Re: [PATCH v2 0/9] drm/i915/display: platform identification with
 display->is.<PLATFORM>
In-Reply-To: <ZtCb5yc6KCy1S6bo@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1724092799.git.jani.nikula@intel.com>
 <Zs-LdJYx_lVDt9PC@intel.com> <ZtCb5yc6KCy1S6bo@intel.com>
Date: Tue, 24 Sep 2024 12:49:25 +0300
Message-ID: <87wmj14c0q.fsf@intel.com>
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

On Thu, 29 Aug 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Aug 28, 2024 at 04:41:24PM -0400, Rodrigo Vivi wrote:
>> On Mon, Aug 19, 2024 at 09:44:27PM +0300, Jani Nikula wrote:
>> > v2 of [1]. Please read the cover letter there.
>> >=20
>> > This addresses review comments and adds a few more commits on top, in =
particular
>> > the last one showcasing the approach.
>> >=20
>> > The main question remains, is this what we want?
>>=20
>> I don't know why, but the 'is' thing is still strange.
>>=20
>> I know I know... I'm bad with naming myself.
>>=20
>> I think about 'platform' but that get too big
>>=20
>> if (display->platform.BROADWELL)
>>=20
>> I think about 'gen' but then it is overloaded....
>>=20
>> then I think about 'ip' is worse...
>>=20
>> 'version'?
>>=20
>> 'name'?
>>=20
>> if (display->name.HASWELL)...
>>=20
>> ....
>>=20
>> But well, I like the overall simplification here in general.
>> Without a better name to suggest, I guess let's just move ahead...
>
> One slight concern with the is.foo is whether it complicates finding
> things with eg. cscope. But I suppose for platforms that doesn't matter
> all that much. For the has_foo stuff it'd be much more relevant.

It does make finding things harder with cscope and gnu global, but git
grep for is.FOO is pretty accurate.

> Anyways, can't think of anything particularly elegant myself either,
> so go ahead I guess.

So I haven't yet. I just still have that slightly uneasy feeling about
whether this is a good thing or not. That doesn't usually make me shy
away from things, because you can fix stuff later, but getting this
wrong causes so much churn everywhere.

The fact that it's not a macro makes it less flexible for future
changes. The display->is.FOO is somewhat legible, but could be
better. Would all lowercase make it better? I don't know.

More alternatives? Not elegant for sure, but just alternatives:

- Lowercase names:

	if (display->is.rocketlake)

  Does not help with flexibility or cscope.

- Lowercase macros for display, e.g. is_rocketlake().

	if (is_rocketlake(display))

- Macros based on just the platform name, e.g. ROCKETLAKE().

	if (ROCKETLAKE(display))

  or change IS_ to something else e.g. PLATFORM_ROCKETLAKE().

	if (PLATFORM_ROCKETLAKE(display))

  But that can get a bit long in some if ladders etc.

- Go through the trouble of making the existing IS_FOO() macros _Generic
  and accept either i915 or display pointer. This does postpone making
  any further changes, but fairly soon there will need to be two sets of
  macros, separate for i915 and display, even though named the same.

  Also, the _Generic thing would look up the platform definitions from
  different places, which could be error prone.


Yeah, procrastination...


BR,
Jani.




--=20
Jani Nikula, Intel
