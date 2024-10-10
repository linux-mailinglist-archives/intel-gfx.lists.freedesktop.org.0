Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E11D998782
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 15:22:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C600510E8EC;
	Thu, 10 Oct 2024 13:22:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ixXJa3i2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 407B610E8EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2024 13:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728566525; x=1760102525;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=aAiL7OYKzntRi5Y5mC6ZwRw+0mZXxlTRcppGZXf29xM=;
 b=ixXJa3i2pMW1zT0fRo5mz53WScUJ7lrXCFXvjrgDeb/nMZ/gKldxSoSN
 Qhi4v63gdY15nHv6aQdCSmIwvhLiZbtaSEPwPPfO00kMkGJT33FY0z0O/
 1v3+EVWaaevgSqx+D/7Q7uNV/XMArfJ+gtG0D8JPmdANZwnG56Jgg7tdX
 4KZj3R+6mEyuIxi+65D/tvObKxNlg5iKYYmeUlaLfwub6F/6+JxqmSn3/
 nc5JPs4vxrMBcZDchSVKXW7t57lAgFA4ZJc3ditshotIdJN4toHZweaPq
 nYWG3W78bXtPv0eUFC0qfY+Uwq7zmj+L7rHL2BPcEhPD+MAsk/z3yfb+H A==;
X-CSE-ConnectionGUID: LcbU2xMxSAueza/XbuyMgw==
X-CSE-MsgGUID: X8lfKKitSPuXGMaK5KN0TA==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="15547093"
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="15547093"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 06:22:05 -0700
X-CSE-ConnectionGUID: atOppbWUSdmLTkZ30yWRVg==
X-CSE-MsgGUID: FUuRa3WaTemW+pPv7ZP3kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="76902748"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 06:22:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/display: Add own counter for Panel
 Replay vblank workaround
In-Reply-To: <68bae7f78e000411bf89b5a7dfb1233735451148.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241009134225.1322820-1-jouni.hogander@intel.com>
 <87ttdl8irr.fsf@intel.com>
 <68bae7f78e000411bf89b5a7dfb1233735451148.camel@intel.com>
Date: Thu, 10 Oct 2024 16:22:01 +0300
Message-ID: <87cyk86qkm.fsf@intel.com>
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

On Thu, 10 Oct 2024, "Hogander, Jouni" <jouni.hogander@intel.com> wrote:
> On Wed, 2024-10-09 at 17:15 +0300, Jani Nikula wrote:
>> On Wed, 09 Oct 2024, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrot=
e:
>> > We are about to change meaning of vblank_enabled to fix Panel
>> > Replay vblank
>> > workaround. For sake of clarity we need to rename it.
>> > Vblank_enabled is
>> > used for i915gm/i945gm vblank irq workaround as well -> instead of
>> > rename
>> > add new counter named as vblank_wa_pipes.
>> >=20
>> > v2:
>> > =C2=A0 - s/vblank_wa_pipes/vblank_wa_num_pipes/
>> > =C2=A0 - use int as a type for the counter
>> >=20
>> > Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>> > ---
>> > =C2=A0drivers/gpu/drm/i915/display/intel_display_core.h | 2 ++
>> > =C2=A0drivers/gpu/drm/i915/display/intel_display_irq.c=C2=A0 | 8 ++++-=
---
>> > =C2=A02 files changed, 6 insertions(+), 4 deletions(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
>> > b/drivers/gpu/drm/i915/display/intel_display_core.h
>> > index 982dd9469195..45697af25fa9 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> > @@ -455,6 +455,8 @@ struct intel_display {
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0/* For i915gm/i945gm vblank irq workaround */
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 vblank_enabled;
>>=20
>> Maybe we want to rename this one too?
>
> I tried to explain it in commit message. Seems I didn't succeed in it.
>
> vblank_enabled is currently used by two workarounds:
>
> 1. i915gm/i945gm vblank irq workaround
> 2. LNL Panel Replay vblank workaround
>
> 1. and 2. are currently using vblank_enabled in a way they are
> respecting it's meaning: is vblank enabled/disabled.

Crucially, they're both using the same member, but never on the same
platform. The member is "overloaded" for two different things. (See the
otherwise unrelated series [1], it's the same thing with sb_lock.)

> It was found out that 2. as it is implemented currently doesn't work
> properly. Instead of information on vblank enabled/disabled we need to
> know if there are pipes that need the workaround.
>
> Renaming vblank_enabled wouldn't reflect how it's used in 1. This is
> why I decided to add own variable for 2. and this is what this patch is
> about: Keep vblank_enabled as it is for 1. and add own variable for 2.

My point is more generic, and it was not intended as a comment on *this*
patch. Having a "vblank_enabled" member is misleading, when it's really
just used for a very narrow case on a few platforms.

Does that make more sense?


BR,
Jani.


[1] https://lore.kernel.org/r/cover.1727890136.git.jani.nikula@intel.com

>
> BR,
>
> Jouni H=C3=B6gander
>=20=20
>>=20
>> BR,
>> Jani.
>>=20
>> > =C2=A0
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0int vblank_wa_num_pipes;
>> > +
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0struct work_struct vblank_dc_work;
>> > =C2=A0
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 de_irq_mask[I915_MAX_PIPES];
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
>> > b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> > index a4367ddc7a44..8226ea218d77 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> > @@ -1424,7 +1424,7 @@ static void
>> > intel_display_vblank_dc_work(struct work_struct *work)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct intel_display *=
display =3D
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0container_of(work, typeof(*display),
>> > irq.vblank_dc_work);
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct drm_i915_privat=
e *i915 =3D to_i915(display->drm);
>> > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 vblank_enabled =3D READ_=
ONCE(display->irq.vblank_enabled);
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int vblank_wa_num_pipes =3D=
 READ_ONCE(display-
>> > >irq.vblank_wa_num_pipes);
>> > =C2=A0
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * NOTE: intel_display=
_power_set_target_dc_state is used
>> > only by PSR
>> > @@ -1432,7 +1432,7 @@ static void
>> > intel_display_vblank_dc_work(struct work_struct *work)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * PSR code. If DC3CO =
is taken into use we need take that
>> > into account
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * here as well.
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
>> > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0intel_display_power_set_tar=
get_dc_state(i915,
>> > vblank_enabled ? DC_STATE_DISABLE :
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0intel_display_power_set_tar=
get_dc_state(i915,
>> > vblank_wa_num_pipes ? DC_STATE_DISABLE :
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DC_STA=
TE_EN_UPTO_DC
>> > 6);
>> > =C2=A0}
>> > =C2=A0
>> > @@ -1447,7 +1447,7 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (gen11_dsi_configur=
e_te(crtc, true))
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
>> > =C2=A0
>> > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (display->irq.vblank_ena=
bled++ =3D=3D 0 && crtc-
>> > >block_dc_for_vblank)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (display->irq.vblank_wa_=
num_pipes++ =3D=3D 0 && crtc-
>> > >block_dc_for_vblank)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0schedule_work(&display->irq.vblank_dc_work);
>> > =C2=A0
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0spin_lock_irqsave(&dev=
_priv->irq_lock, irqflags);
>> > @@ -1478,7 +1478,7 @@ void bdw_disable_vblank(struct drm_crtc
>> > *_crtc)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bdw_disable_pipe_irq(d=
ev_priv, pipe, GEN8_PIPE_VBLANK);
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0spin_unlock_irqrestore=
(&dev_priv->irq_lock, irqflags);
>> > =C2=A0
>> > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (--display->irq.vblank_e=
nabled =3D=3D 0 && crtc-
>> > >block_dc_for_vblank)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (--display->irq.vblank_w=
a_num_pipes =3D=3D 0 && crtc-
>> > >block_dc_for_vblank)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0schedule_work(&display->irq.vblank_dc_work);
>> > =C2=A0}
>>=20
>

--=20
Jani Nikula, Intel
