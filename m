Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDD3B48A31
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 12:29:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E0B510E0D7;
	Mon,  8 Sep 2025 10:29:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E9wQkjrF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76C6810E4B9;
 Mon,  8 Sep 2025 10:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757327397; x=1788863397;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=I10NCmGluFjEIszAjgIQ1el85nJaKVdhsBTJLm6LR5U=;
 b=E9wQkjrFDZMXaxKlkq2V196IwBXwp9kQaSRI/tX1NwYZe4bYSGCB2+1X
 AhVaDERjSXZYSAIW95P3CsjZP5/kvnocsocHs5UQcNWFk9zgilpJRQIzF
 6iQ5pdcGSe99quDGaONi3zR7SII/IHhQ9Gx+CxkzJOIG8kw+JdK2Wp23/
 JJPE+6/RtUAWxcySuzFo/0rHbi6BeKzYr8a7Y+zpYQRhnQpmN7Z9gvu/I
 nQwejl/QwqzamRmi3wp6aex7hSXce4kcBoCbkacaAvZg6FxYp1g8zb1mc
 kqmD+5OW/a4SxR0wykTwQapWukhx30DQ4hWdEqVCb5tt0VTqwcgpmY+rg Q==;
X-CSE-ConnectionGUID: wlk9AsdqQG6arWRn1QI9fQ==
X-CSE-MsgGUID: o/oqJg3OR4+SwRlMcUv1sg==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="70678727"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="70678727"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 03:29:56 -0700
X-CSE-ConnectionGUID: wRhDrExUTY2hCPKhyboX8A==
X-CSE-MsgGUID: X4caZJpaTzGhQcTVsp64Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="196401342"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.204])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 03:29:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Juha-Pekka =?utf-8?Q?Heikkil=C3=A4?= <juhapekka.heikkila@gmail.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: Use DISPLAY_VER over GRAPHICS_VER
In-Reply-To: <CAJ=qYWRSXQAUaYsJb1h+JADkKmcNuhZmgxwCBJAqdxRZviWUXg@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250903170821.310143-1-matthew.s.atwood@intel.com>
 <175700478100.122246.8257747418250302965@intel.com>
 <aLnEtkH2axNnG3td@msatwood-mobl>
 <CAJ=qYWRSXQAUaYsJb1h+JADkKmcNuhZmgxwCBJAqdxRZviWUXg@mail.gmail.com>
Date: Mon, 08 Sep 2025 13:29:50 +0300
Message-ID: <44f40d56b53c2aa4be7aa605247373c693b1ce4f@intel.com>
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

On Sun, 07 Sep 2025, Juha-Pekka Heikkil=C3=A4 <juhapekka.heikkila@gmail.com=
> wrote:
> On Thu, Sep 4, 2025 at 7:56=E2=80=AFPM Matt Atwood <matthew.s.atwood@inte=
l.com> wrote:
>>
>> On Thu, Sep 04, 2025 at 01:53:01PM -0300, Gustavo Sousa wrote:
>> > Quoting Matt Atwood (2025-09-03 14:08:21-03:00)
>> > >The checks in plane_has_modifier() should check against display versi=
on
>> > >instead of graphics version.
>> > >
>> > >Bspec: 67165, 70815
>> > >
>> > >Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>> > >---
>> > > drivers/gpu/drm/i915/display/intel_fb.c | 4 ++--
>> > > 1 file changed, 2 insertions(+), 2 deletions(-)
>> > >
>> > >diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/dr=
m/i915/display/intel_fb.c
>> > >index b210c3250501..1e4cee857d7b 100644
>> > >--- a/drivers/gpu/drm/i915/display/intel_fb.c
>> > >+++ b/drivers/gpu/drm/i915/display/intel_fb.c
>> > >@@ -563,11 +563,11 @@ static bool plane_has_modifier(struct intel_dis=
play *display,
>> > >                 return false;
>> > >
>> > >         if (md->modifier =3D=3D I915_FORMAT_MOD_4_TILED_BMG_CCS &&
>> > >-            (GRAPHICS_VER(i915) < 20 || !display->platform.dgfx))
>> > >+            (DISPLAY_VER(display) < 14 || !display->platform.dgfx))
>> > >                 return false;
>> > >
>> > >         if (md->modifier =3D=3D I915_FORMAT_MOD_4_TILED_LNL_CCS &&
>> > >-            (GRAPHICS_VER(i915) < 20 || display->platform.dgfx))
>> > >+            (DISPLAY_VER(display) < 20 || display->platform.dgfx))
>> > >                 return false;
>> >
>> > Hm... Maybe using GRAPHICS_VER() here was intentional? The checks on
>> > display version are already covered by the entries in intel_modifiers.
>> >
>> > If we look at commit fca0abb23447 ("drm/i915/display: allow creation of
>> > Xe2 ccs framebuffers"), we'll see that the respective entries were add=
ed
>> > to intel_modifiers *and* the checks on GRAPHICS_VER() were added as
>> > well. Perhaps there are indeed restrictions on the graphics side to be
>> > able to use the format?
>> >
>> > --
>> > Gustavo Sousa
>> Honestly, I tried looking for reasons. I couldn't find anything in the
>> documentation to support. I decided to send upstream to see if it broke
>> stuff to not do the checks that way. CI seems very clean. Hoping Jani or
>> Juha-Pekka will chime in if it is indeed an issue.
>
> Using GRAPHICS_VER here was intentional. Jani didn't like it but these
> xe2 ccs don't follow display versioning but gt versioning.
>
> Proposed change look ok but I'll need to dig in to documentation
> before I can say for sure. I remember we had discussion about this
> with Jani but can't remember what convinced Jani I needed to use
> GRAPHICS_VER at that time.

I think I just took your word for it.

In the long run, we can't have GRAPHICS_VER() checks in display
code. Either this needs to be converted to DISPLAY_VER(), or, if that's
not right, we need to add a way to ask for the *feature* support from
i915/xe core. That means higher level semantics than just checking for
graphics version.

BR,
Jani.





>
> /Juha-Pekka
>
>> >
>> > >
>> > >         return true;
>> > >--
>> > >2.50.1
>> > >

--=20
Jani Nikula, Intel
