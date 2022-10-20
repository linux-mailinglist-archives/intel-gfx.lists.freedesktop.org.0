Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 485806063C9
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 17:05:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6C2F10E1DD;
	Thu, 20 Oct 2022 15:05:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82BFF10E1DD
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 15:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666278334; x=1697814334;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=i4S0oRcNW3dC2PABfbQ7j0NZaXk+F+WT+XITGDrJfRc=;
 b=h89NrrTFlI91lgHlDkqbFMUWvt++nhIaJjikK/jpifGar4CFL2tbXHCI
 NZYdGf5dgnUGgliE6He1buty4HinoOjHfqQGhYzXhU0QXwG4qDhQa+pAp
 mDq/VI7/rNu+LuwXkxAhGQDSEpC8iIPplqR6McraFUumogRLCBfyDuxjy
 YHoj1i8hpfyfztC1UCyeSt8WuPP47pUFP1fzcX85piHD7Pe7927r2CK7W
 D5g6vOfwCIhdiS/3BPTRRORd7hwiLCR3RIaEzzQHRE5JT3J9uaM67K7SE
 1IQgNxua9arb5ZA9C5tPHnSsmcNDIM4WGFsZ3oMLLsOSAM7WiiJDgOoet g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="306726864"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="306726864"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 08:02:10 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="755186674"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="755186674"
Received: from xhallade-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.45.249])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 08:02:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y1FYeDF7XEcYXTUe@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221020120457.19528-1-ville.syrjala@linux.intel.com>
 <877d0uhalo.fsf@intel.com> <Y1FYeDF7XEcYXTUe@intel.com>
Date: Thu, 20 Oct 2022 18:02:06 +0300
Message-ID: <874jvyh72p.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/i915: Clean up crtc state flag
 checks
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 20 Oct 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Oct 20, 2022 at 04:45:55PM +0300, Jani Nikula wrote:
>> On Thu, 20 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > Some cleanups for checking whether the crtc was flagged for
>> > modesets/fastsets/color update.
>>=20
>> I wish we could avoid piling more static inlines in
>> intel_display_types.h, but the clarity added here is great.
>
> I mainly put them there since the first one was already there.
> Dunno if the function call overhead would really be measurable,
> even though we do use these a lot. Should measure it on some
> real slouch of a machine I guess.

Well, I think some things can be static inlines just fine. In
particular, static inlines that don't require pulling in *extra* headers
are largely just fine. But as soon as you need to look at e.g. struct
drm_i915_private, you're toast. The ones added here only need the
definition of struct intel_crtc_state which is right there.

In this case, I'm more worried about the general bloating of
intel_display_types.h. And it's not even all that bad with these
patches, just piling more stuff little by little.

So I wonder if we could have intel_crtc_state.h defining just struct
intel_crtc_state and maybe some things only contained within it.

I've found one of the biggest obstacles to splitting more stuff is
actually the enums. A lot of places need the last _MAX and _NUM
enumerators for defining member array sizes. Ditto with
intel_crtc_state.

I've toyed with having intel_display_limits.h with just the limits as
#defines and separate build checks to match the enum max. I've also
toyed with having intel_display_enums.h with just the enums, so we keep
single point of truth but avoid including a lot of unnecessary stuff
from intel_display.h and intel_display_types.h. Got some patches, but
didn't get too far.

A lot of random rambling here, but does not impact the patches at hand.


BR,
Jani.




>
>>=20
>> On the series,
>>=20
>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>
> Thanks.
>
>>=20
>> >
>> > Ville Syrj=C3=A4l=C3=A4 (4):
>> >   drm/i915: Introduce intel_crtc_needs_fastset()
>> >   drm/i915: Remove some local 'mode_changed' bools
>> >   drm/i915: Don't flag both full modeset and fastset at the same time
>> >   drm/i915: Introduce intel_crtc_needs_color_update()
>> >
>> >  drivers/gpu/drm/i915/display/hsw_ips.c        |  8 ++--
>> >  drivers/gpu/drm/i915/display/intel_crtc.c     |  3 +-
>> >  drivers/gpu/drm/i915/display/intel_cursor.c   |  6 ++-
>> >  drivers/gpu/drm/i915/display/intel_display.c  | 46 +++++++++----------
>> >  .../drm/i915/display/intel_display_types.h    | 14 ++++++
>> >  .../drm/i915/display/intel_modeset_verify.c   |  3 +-
>> >  6 files changed, 46 insertions(+), 34 deletions(-)
>>=20
>> --=20
>> Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
