Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5697E3F7B9F
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 19:36:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74D3A89A35;
	Wed, 25 Aug 2021 17:36:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F56589A35
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 17:36:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="214451893"
X-IronPort-AV: E=Sophos;i="5.84,351,1620716400"; d="scan'208";a="214451893"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 10:36:39 -0700
X-IronPort-AV: E=Sophos;i="5.84,351,1620716400"; d="scan'208";a="527416396"
Received: from mburkard-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.213.64])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 10:36:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lyude Paul <lyude@redhat.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <f6a0203f9871cb91fb8da5a83bc8a608e2bb1607.camel@redhat.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1629888677.git.jani.nikula@intel.com>
 <f6a0203f9871cb91fb8da5a83bc8a608e2bb1607.camel@redhat.com>
Date: Wed, 25 Aug 2021 20:36:34 +0300
Message-ID: <875yvte89p.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 0/3] drm/i915: better backlight & panel
 abstractions
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

On Wed, 25 Aug 2021, Lyude Paul <lyude@redhat.com> wrote:
> Reviewed-by: Lyude Paul <lyude@redhat.com> (assuming this still applies)
>
> As I mentioned on IRC pretty much all of the DPCD backlight helpers alrea=
dy
> made it upstream. There are some changes I'm working on right now for VESA
> backlights that use PWM for controlling the brightness level (so we can
> hopefully fix https://gitlab.freedesktop.org/drm/intel/-/issues/3680 ,
> otherwise I've gotta do some more poking with the backlight folks from In=
tel I
> got in touch with), but I have no problem with rebasing this when the time
> comes.

Thanks!

BR,
Jani.

>
> On Wed, 2021-08-25 at 14:06 +0300, Jani Nikula wrote:
>> Extract the backlight code out of intel_panel.c, and rename the panel
>> and backlight functions according to usual conventions.
>>=20
>> Lyude, I haven't seen follow-ups on the DPCD backlight stuff you've
>> worked on. Is it okay to merge this (and inevitably cause you conflicts)
>> or shall I wait more?
>>=20
>> BR,
>> Jani.
>>=20
>>=20
>> Cc: Lyude Paul <lyude@redhat.com>
>>=20
>> Jani Nikula (3):
>> =C2=A0 drm/i915/backlight: extract backlight code to a separate file
>> =C2=A0 drm/i915/backlight: mass rename functions to have intel_backlight_
>> =C2=A0=C2=A0=C2=A0 prefix
>> =C2=A0 drm/i915/panel: mass rename functions to have intel_panel_ prefix
>>=20
>> =C2=A0drivers/gpu/drm/i915/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=
=C2=A0 1 +
>> =C2=A0drivers/gpu/drm/i915/display/g4x_dp.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 4 +-
>> =C2=A0drivers/gpu/drm/i915/display/icl_dsi.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 13 +-
>> =C2=A0.../gpu/drm/i915/display/intel_backlight.c=C2=A0=C2=A0=C2=A0 | 177=
6 ++++++++++++++++
>> =C2=A0.../gpu/drm/i915/display/intel_backlight.h=C2=A0=C2=A0=C2=A0 |=C2=
=A0=C2=A0 52 +
>> =C2=A0.../gpu/drm/i915/display/intel_connector.c=C2=A0=C2=A0=C2=A0 |=C2=
=A0=C2=A0=C2=A0 4 +-
>> =C2=A0drivers/gpu/drm/i915/display/intel_ddi.c=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 |=C2=A0=C2=A0=C2=A0 4 +-
>> =C2=A0drivers/gpu/drm/i915/display/intel_dp.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 |=C2=A0=C2=A0 16 +-
>> =C2=A0.../drm/i915/display/intel_dp_aux_backlight.c |=C2=A0=C2=A0 12 +-
>> =C2=A0drivers/gpu/drm/i915/display/intel_dvo.c=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 |=C2=A0=C2=A0=C2=A0 2 +-
>> =C2=A0drivers/gpu/drm/i915/display/intel_hdmi.c=C2=A0=C2=A0=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0 2 +-
>> =C2=A0drivers/gpu/drm/i915/display/intel_lvds.c=C2=A0=C2=A0=C2=A0=C2=A0 =
|=C2=A0=C2=A0 18 +-
>> =C2=A0drivers/gpu/drm/i915/display/intel_opregion.c |=C2=A0=C2=A0=C2=A0 =
5 +-
>> =C2=A0drivers/gpu/drm/i915/display/intel_panel.c=C2=A0=C2=A0=C2=A0 | 178=
6 +----------------
>> =C2=A0drivers/gpu/drm/i915/display/intel_panel.h=C2=A0=C2=A0=C2=A0 |=C2=
=A0=C2=A0 42 +-
>> =C2=A0drivers/gpu/drm/i915/display/vlv_dsi.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 16 +-
>> =C2=A016 files changed, 1895 insertions(+), 1858 deletions(-)
>> =C2=A0create mode 100644 drivers/gpu/drm/i915/display/intel_backlight.c
>> =C2=A0create mode 100644 drivers/gpu/drm/i915/display/intel_backlight.h
>>=20

--=20
Jani Nikula, Intel Open Source Graphics Center
