Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE60CFEB78
	for <lists+intel-gfx@lfdr.de>; Wed, 07 Jan 2026 16:56:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B437610E1A9;
	Wed,  7 Jan 2026 15:56:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HUQplUvL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7080810E623
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jan 2026 15:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767801362; x=1799337362;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=/oL4UGvZXpU5bRBTEq2Kc3e+zADii/c6zjAgXO7tcRc=;
 b=HUQplUvLCYNefwGN2G4EFjccBdTAEODil34xhulH6YGtXH3TJKzBsQgy
 dlBK0DcNowQxrnHjpAQF6MHCOQHo6HzfYW3lBPtcVJMGhHe79AwGwj9nD
 8PHG5D/OZ8OuWlGBDunIe6TfuKLVqW4yObWeO2sl2Bfbn+xkmIelIirET
 dP5Jrxs3Pb2e3/4X5ZTEp/U8omhuVJFbY1Zq9R7F/iQX3SKTf2KT2Ar6z
 mdz1bNb/6ZRlPMSj30kfCd5mhllhNNrmFNl5c47Pu1pfi6ySsy41EmLzu
 XkMinqX4DZf4rfc1acJdc1zhXk5EqVC95KxvZJFvG/tj1iHSXDqzSHcyJ A==;
X-CSE-ConnectionGUID: wI1iUQeRT3CP+blA70gIww==
X-CSE-MsgGUID: 1nZLtuSwT0mwZ7w0YBP6fA==
X-IronPort-AV: E=McAfee;i="6800,10657,11664"; a="79477124"
X-IronPort-AV: E=Sophos;i="6.21,208,1763452800"; d="scan'208";a="79477124"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 07:56:02 -0800
X-CSE-ConnectionGUID: AtTveOOjTAekUrzETxIjsg==
X-CSE-MsgGUID: LLj6DIzrQrmOdQkmFGaT6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,208,1763452800"; d="scan'208";a="202161981"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.60])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 07:55:58 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Gupta, Saurabhg" <saurabhg.gupta@intel.com>, "Zuo, Alex"
 <alex.zuo@intel.com>, "Zanoni, Paulo R" <paulo.r.zanoni@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/display: Prevent u64 underflow in
 intel_fbc_stolen_end
In-Reply-To: <CH0PR11MB544499F13BF3FF457345EEB2E584A@CH0PR11MB5444.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251219210335.133830-2-jonathan.cavitt@intel.com>
 <38d11ac18820022abbc7bd58f7b50e719aa4bf61@intel.com>
 <CH0PR11MB544499F13BF3FF457345EEB2E584A@CH0PR11MB5444.namprd11.prod.outlook.com>
Date: Wed, 07 Jan 2026 17:55:54 +0200
Message-ID: <4f5fb36bc0dfef8e0bcd584226cf3c2e442f063e@intel.com>
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

On Wed, 07 Jan 2026, "Cavitt, Jonathan" <jonathan.cavitt@intel.com> wrote:
> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>=20
> Sent: Wednesday, January 7, 2026 3:39 AM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedes=
ktop.org
> Cc: Gupta, Saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel=
.com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>; Zanoni, Paulo R <paulo=
.r.zanoni@intel.com>; ville.syrjala@linux.intel.com; daniel.vetter@ffwll.ch
> Subject: Re: [PATCH] drm/i915/display: Prevent u64 underflow in intel_fbc=
_stolen_end
>>=20
>> On Fri, 19 Dec 2025, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
>> > Static analysis reveals a potential integer underflow in
>> > intel_fbc_stolen_end.  This can apparently occur if
>> > intel_parent_stolen_area_size returns zero (or, theoretically, any val=
ue
>> > less than 2^23), as 2^23 is subtracted from the return value and stored
>> > in a u64.  While this doesn't appear to cause any issues due to the use
>> > of the min() function to clamp the return values from the
>> > intel_fbc_stolen_end function, it would be best practice to avoid
>> > undeflowing values like this on principle.  So, rework the function to
>> > prevent the underflow from occurring.  Note that the underflow at
>> > present would result in the value of intel_fbc_cfb_base_max being
>> > returned at the end of intel_fbc_stolen_end, so just return that if the
>> > value of intel_parent_stolen_area_size is too small.
>> >
>> > While we're here, create a macro for the 2^23 value and modify the
>> > execution path for readability.
>> >
>> > Fixes: a9da512b3ed7 ("drm/i915: avoid the last 8mb of stolen on BDW/SK=
L")
>> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>> > Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
>> > Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_fbc.c | 20 ++++++++++++++------
>> >  1 file changed, 14 insertions(+), 6 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/dr=
m/i915/display/intel_fbc.c
>> > index fef2f35ff1e9..00c32df50933 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> > @@ -807,21 +807,29 @@ static u64 intel_fbc_cfb_base_max(struct intel_d=
isplay *display)
>> >  		return BIT_ULL(32);
>> >  }
>> >=20=20
>> > +#define STOLEN_RESERVE_MAX	SZ_8M
>> >  static u64 intel_fbc_stolen_end(struct intel_display *display)
>> >  {
>> > -	u64 end;
>> > +	u64 end =3D intel_fbc_cfb_base_max(display);
>> >=20=20
>> >  	/* The FBC hardware for BDW/SKL doesn't have access to the stolen
>> >  	 * reserved range size, so it always assumes the maximum (8mb) is us=
ed.
>> >  	 * If we enable FBC using a CFB on that memory range we'll get FIFO
>> >  	 * underruns, even if that range is not reserved by the BIOS. */
>> >  	if (display->platform.broadwell ||
>> > -	    (DISPLAY_VER(display) =3D=3D 9 && !display->platform.broxton))
>> > -		end =3D intel_parent_stolen_area_size(display) - 8 * 1024 * 1024;
>> > -	else
>> > -		end =3D U64_MAX;
>> > +	    (DISPLAY_VER(display) =3D=3D 9 && !display->platform.broxton)) {
>> > +		u64 stolen_area_size =3D intel_parent_stolen_area_size(display);
>> > +
>> > +		/* If stolen_area_size is less than STOLEN_RESERVE_MAX,
>> > +		 * use intel_fbc_cfb_base_max instead. */
>>=20
>> Please use the proper multi-line comment style.
>
> Should I also fix the comment about FBC hardware while I'm here?

I wouldn't mind.

>
>>=20
>> > +		if (stolen_area_size < STOLEN_RESERVE_MAX)
>> > +			return end;
>>=20
>> check_sub_overflow(), perhaps with a drm_WARN_ON(), would be the way to
>> go I think. You can get rid of the extra macro too.
>
> So, instead of STOLEN_RESERVE_MAX, just directly reference SZ_8M here?

Yeah, since using check_sub_overflow() means you don't have to reference
the value twice, so you don't need the macro for it.

> -Jonathan Cavitt
>
>>=20
>> > +
>> > +		stolen_area_size -=3D STOLEN_RESERVE_MAX;
>>=20
>> A blank line is preferred before return.
>>=20
>> > +		return min(end, stolen_area_size);
>> > +	}
>> >=20=20
>> > -	return min(end, intel_fbc_cfb_base_max(display));
>> > +	return end;
>> >  }
>> >=20=20
>> >  static int intel_fbc_min_limit(const struct intel_plane_state *plane_=
state)
>>=20
>> --=20
>> Jani Nikula, Intel
>>=20

--=20
Jani Nikula, Intel
