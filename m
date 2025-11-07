Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C82C3FA62
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 12:08:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B3C310EA8B;
	Fri,  7 Nov 2025 11:08:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GsVxtlZ+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 082CB10EA87;
 Fri,  7 Nov 2025 11:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762513700; x=1794049700;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=45lxTcY9PQ9pFAjvQEjBvM3JJ/clJUHRayGsjdjymkY=;
 b=GsVxtlZ+2cbps9RCkdC42rzXQltNjssVfe3AeKeECpATTtjxUutPmZL2
 qzcavR+5gDHTDaCTYyKnBMUauNNWloadN1BafkXXgstNHeTzGifhkxFFe
 msgs9DRanfCuPhiTC/c2jJu7hYViFzXu6R+MRzNrnPfFFvlM3ktRu8pJE
 qxntsNNJm1oDGfktlPqhxz7O9sAeTZQwz8ree42DVnnc0HI9Pf8mCxqLB
 fhfCUfsr7opn6Wc30gVipZDIl7L0RPUK0d9tcw1o45S8/z/GKRvj0QEpd
 IoDU8ChFHRW5e4MUTPg7LmvRWrJMt9bgMFPWje70dbb6ENMR9Gn5Yrz0t A==;
X-CSE-ConnectionGUID: qeu9yAItTbKnrLfMipG9Ug==
X-CSE-MsgGUID: EabWX3EiSVmTFFyvPOzzAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11605"; a="64817213"
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="64817213"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 03:08:20 -0800
X-CSE-ConnectionGUID: wqKfMF0cTOWjluCnsHPkbw==
X-CSE-MsgGUID: mmdFLngnS3+xovx1v6/AkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="187959045"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.124])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 03:08:18 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Shankar, Uma" <uma.shankar@intel.com>, "Joshi, Kunal1"
 <kunal1.joshi@intel.com>
Subject: Re: [PATCH] drm/i915/fbc: Apply wa_15018326506
In-Reply-To: <ea443f4c5bf41ff20f65bef1ee4e74313d76f62f.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251107100734.67236-1-vinod.govindapillai@intel.com>
 <fb7031734a4c6b9cc0f26ff287fdf9fb23d07e65@intel.com>
 <ea443f4c5bf41ff20f65bef1ee4e74313d76f62f.camel@intel.com>
Date: Fri, 07 Nov 2025 13:08:15 +0200
Message-ID: <917da7d1e8e3a33d5724023f3275c51e36c3f834@intel.com>
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

On Fri, 07 Nov 2025, "Govindapillai, Vinod" <vinod.govindapillai@intel.com>=
 wrote:
> On Fri, 2025-11-07 at 12:16 +0200, Jani Nikula wrote:
>> On Fri, 07 Nov 2025, Vinod Govindapillai
>> <vinod.govindapillai@intel.com> wrote:
>> > Disable FBC as part for the wa for the bmg variant
>> >=20
>> > Bspec: 74212
>> > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>> > ---
>> > =C2=A0drivers/gpu/drm/i915/display/intel_display_wa.c |=C2=A0 4 ++++
>> > =C2=A0drivers/gpu/drm/i915/display/intel_display_wa.h |=C2=A0 1 +
>> > =C2=A0drivers/gpu/drm/i915/display/intel_fbc.c=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 | 10 ++++++++++
>> > =C2=A03 files changed, 15 insertions(+)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
>> > b/drivers/gpu/drm/i915/display/intel_display_wa.c
>> > index c528aaa679ca..ba2272d85a04 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>> > @@ -10,6 +10,7 @@
>> > =C2=A0#include "intel_display_core.h"
>> > =C2=A0#include "intel_display_regs.h"
>> > =C2=A0#include "intel_display_wa.h"
>> > +#include "intel_step.h"
>> > =C2=A0
>> > =C2=A0static void gen11_display_wa_apply(struct intel_display *display)
>> > =C2=A0{
>> > @@ -69,6 +70,9 @@ bool __intel_display_wa(struct intel_display
>> > *display, enum intel_display_wa wa,
>> > =C2=A0		return DISPLAY_VER(display) =3D=3D 13;
>> > =C2=A0	case INTEL_DISPLAY_WA_22014263786:
>> > =C2=A0		return IS_DISPLAY_VERx100(display, 1100, 1400);
>> > +	case INTEL_DISPLAY_WA_15018326506:
>> > +		return DISPLAY_VERx100(display) =3D=3D 1401 &&
>> > +		=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 INTEL_DISPLAY_STEP(display) =
=3D=3D STEP_C0;
>>=20
>> IS_DISPLAY_VERx100_STEP().
>
> I was looking into the comments for that macro! This wa apply only for
> step c0 (as of now)! I wasn't sure what the "until" part could be in
> that macro! So what do you suggest for the "until"  STEP_D0 or
> STEP_FOREVER in such cases!

If it's C0 only, then C1 is the next step, not D0.

Basically there's only one user of INTEL_DISPLAY_STEP() outside of the
macros themselves, and we should avoid adding more users.

BR,
Jani.



>
> BR
> Vinod
>
>
>>=20
>> > =C2=A0	default:
>> > =C2=A0		drm_WARN(display->drm, 1, "Missing Wa number:
>> > %s\n", name);
>> > =C2=A0		break;
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
>> > b/drivers/gpu/drm/i915/display/intel_display_wa.h
>> > index 3644e8e2b724..f648b00cb97d 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>> > @@ -26,6 +26,7 @@ enum intel_display_wa {
>> > =C2=A0	INTEL_DISPLAY_WA_16025573575,
>> > =C2=A0	INTEL_DISPLAY_WA_14011503117,
>> > =C2=A0	INTEL_DISPLAY_WA_22014263786,
>> > +	INTEL_DISPLAY_WA_15018326506,
>> > =C2=A0};
>> > =C2=A0
>> > =C2=A0bool __intel_display_wa(struct intel_display *display, enum
>> > intel_display_wa wa, const char *name);
>> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
>> > b/drivers/gpu/drm/i915/display/intel_fbc.c
>> > index a1e3083022ee..16cd99db2978 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> > @@ -1521,6 +1521,16 @@ static int intel_fbc_check_plane(struct
>> > intel_atomic_state *state,
>> > =C2=A0		return 0;
>> > =C2=A0	}
>> > =C2=A0
>> > +	/*
>> > +	 * wa_15018326506:
>> > +	 * Fixes: Underrun during media decode
>> > +	 * Workaround: Do not enable FBC
>> > +	 */
>> > +	if (intel_display_wa(display, 15018326506)) {
>> > +		plane_state->no_fbc_reason =3D "Wa_15018326506";
>> > +		return 0;
>> > +	}
>> > +
>> > =C2=A0	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
>> > =C2=A0	if (intel_display_vtd_active(display) &&
>> > =C2=A0	=C2=A0=C2=A0=C2=A0 (display->platform.skylake || display-
>> > >platform.broxton)) {
>>=20
>

--=20
Jani Nikula, Intel
