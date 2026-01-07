Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7012DCFD6FF
	for <lists+intel-gfx@lfdr.de>; Wed, 07 Jan 2026 12:39:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 853B410E031;
	Wed,  7 Jan 2026 11:39:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GbKvTDTg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8449F10E031
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jan 2026 11:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767785978; x=1799321978;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=d3Upx3IsBbPE+c/CB92ty3vGnM1sFC/4VU7AjOlGngE=;
 b=GbKvTDTgw20WgR5QwUK5eCcJ2gxqV26VuuqM0/nJ6OiFmH7x0fIXRX8k
 8QBpTpBweHPE54q7M2yJaEFTisiNZgVQ9ejb6IQ2frS8AhdBZsaY8wWTr
 gS5DFwkhZrnhVFcM5efgaeRe9N9ukINST7+bgUL/qNEQ+AvvbdivTjPEu
 GbGkF8WhMbl6wTG6To5QZMCNiqAz+z7tQ6NHL44tNrBveP/UeiVESwqQm
 fKcchKRWiynwmFmizu6APJfx9LpabEGs3lFbs6fCxGppmVfDjgcFVivbQ
 ON7AdGpsIAXw60VHM5XtAh9YPwzdlWYYYm+F+cAYYW1msGrRDM2k97QW/ g==;
X-CSE-ConnectionGUID: 6qdQvl3HS1GEAJtMHPu0vw==
X-CSE-MsgGUID: 3ongNhlGQkW/KhEFqFAsSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11663"; a="69203375"
X-IronPort-AV: E=Sophos;i="6.21,207,1763452800"; d="scan'208";a="69203375"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 03:39:33 -0800
X-CSE-ConnectionGUID: KOTiwI4KT8aZ8sxmjCTRHQ==
X-CSE-MsgGUID: /xEUhsDXRumTDX47xGwA3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,207,1763452800"; d="scan'208";a="234047456"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.60])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 03:39:30 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 paulo.r.zanoni@intel.com, ville.syrjala@linux.intel.com,
 daniel.vetter@ffwll.ch
Subject: Re: [PATCH] drm/i915/display: Prevent u64 underflow in
 intel_fbc_stolen_end
In-Reply-To: <20251219210335.133830-2-jonathan.cavitt@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251219210335.133830-2-jonathan.cavitt@intel.com>
Date: Wed, 07 Jan 2026 13:39:27 +0200
Message-ID: <38d11ac18820022abbc7bd58f7b50e719aa4bf61@intel.com>
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

On Fri, 19 Dec 2025, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
> Static analysis reveals a potential integer underflow in
> intel_fbc_stolen_end.  This can apparently occur if
> intel_parent_stolen_area_size returns zero (or, theoretically, any value
> less than 2^23), as 2^23 is subtracted from the return value and stored
> in a u64.  While this doesn't appear to cause any issues due to the use
> of the min() function to clamp the return values from the
> intel_fbc_stolen_end function, it would be best practice to avoid
> undeflowing values like this on principle.  So, rework the function to
> prevent the underflow from occurring.  Note that the underflow at
> present would result in the value of intel_fbc_cfb_base_max being
> returned at the end of intel_fbc_stolen_end, so just return that if the
> value of intel_parent_stolen_area_size is too small.
>
> While we're here, create a macro for the 2^23 value and modify the
> execution path for readability.
>
> Fixes: a9da512b3ed7 ("drm/i915: avoid the last 8mb of stolen on BDW/SKL")
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 20 ++++++++++++++------
>  1 file changed, 14 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index fef2f35ff1e9..00c32df50933 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -807,21 +807,29 @@ static u64 intel_fbc_cfb_base_max(struct intel_disp=
lay *display)
>  		return BIT_ULL(32);
>  }
>=20=20
> +#define STOLEN_RESERVE_MAX	SZ_8M
>  static u64 intel_fbc_stolen_end(struct intel_display *display)
>  {
> -	u64 end;
> +	u64 end =3D intel_fbc_cfb_base_max(display);
>=20=20
>  	/* The FBC hardware for BDW/SKL doesn't have access to the stolen
>  	 * reserved range size, so it always assumes the maximum (8mb) is used.
>  	 * If we enable FBC using a CFB on that memory range we'll get FIFO
>  	 * underruns, even if that range is not reserved by the BIOS. */
>  	if (display->platform.broadwell ||
> -	    (DISPLAY_VER(display) =3D=3D 9 && !display->platform.broxton))
> -		end =3D intel_parent_stolen_area_size(display) - 8 * 1024 * 1024;
> -	else
> -		end =3D U64_MAX;
> +	    (DISPLAY_VER(display) =3D=3D 9 && !display->platform.broxton)) {
> +		u64 stolen_area_size =3D intel_parent_stolen_area_size(display);
> +
> +		/* If stolen_area_size is less than STOLEN_RESERVE_MAX,
> +		 * use intel_fbc_cfb_base_max instead. */

Please use the proper multi-line comment style.

> +		if (stolen_area_size < STOLEN_RESERVE_MAX)
> +			return end;

check_sub_overflow(), perhaps with a drm_WARN_ON(), would be the way to
go I think. You can get rid of the extra macro too.

> +
> +		stolen_area_size -=3D STOLEN_RESERVE_MAX;

A blank line is preferred before return.

> +		return min(end, stolen_area_size);
> +	}
>=20=20
> -	return min(end, intel_fbc_cfb_base_max(display));
> +	return end;
>  }
>=20=20
>  static int intel_fbc_min_limit(const struct intel_plane_state *plane_sta=
te)

--=20
Jani Nikula, Intel
