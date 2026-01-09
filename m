Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 531F5D0A2DA
	for <lists+intel-gfx@lfdr.de>; Fri, 09 Jan 2026 14:05:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8103A10E8B4;
	Fri,  9 Jan 2026 13:05:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dH3rZDTi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C56E10E8B4
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jan 2026 13:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767963916; x=1799499916;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=jJfGRNJEH6KPz8gbJaczmczh206qdQruLA1pjxVNEco=;
 b=dH3rZDTiSwx5jgTYCHCRePZQMNVsOm7G+EDurUOjnlrNTgfR7LtDdtIn
 LGKqoX6UgC8r5bjuqxK40nrD0Xx9ww+f/ZoBO4LItgtfUL82ijl2qQ63x
 24veQlHAF0+XSkXCPwVOt72UDxbXlcWfl+EVHDyiYNsrDFyRrUCbrup5N
 oj6S+DXTXNLHbLW7g/+GhX1Dcm8y2yh48IA+i3Xc0mOUShrw5ua1qYBBn
 40FPgudTXBAPsV+tkkfK1X1k+zIGIEvHGhQaXqYasfvrYHXHdn5Jq57A5
 N/yleWWLPrEOzm8lV9UEt6J0r7TtNwCwP1LyACTdPdkaSKtuHyRwkywrf Q==;
X-CSE-ConnectionGUID: R4Y9WnqBRKSe9LsqBSxI8A==
X-CSE-MsgGUID: xE9FbBoqRMmc3BsTqeGXqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11666"; a="86931659"
X-IronPort-AV: E=Sophos;i="6.21,212,1763452800"; d="scan'208";a="86931659"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2026 05:05:15 -0800
X-CSE-ConnectionGUID: cUuZ7HYERfOUDQBLyDqwEw==
X-CSE-MsgGUID: UYJYEOISSx29KVK4ytF81g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,212,1763452800"; d="scan'208";a="208521099"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.143])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2026 05:05:12 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 paulo.r.zanoni@intel.com, ville.syrjala@linux.intel.com,
 daniel.vetter@ffwll.ch
Subject: Re: [PATCH v2] drm/i915/display: Prevent u64 underflow in
 intel_fbc_stolen_end
In-Reply-To: <20260107162935.8123-2-jonathan.cavitt@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260107162935.8123-2-jonathan.cavitt@intel.com>
Date: Fri, 09 Jan 2026 15:05:08 +0200
Message-ID: <87eaa8a11bfb87a656489125a19af8a0bde0ce01@intel.com>
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

On Wed, 07 Jan 2026, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
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
> While we're here, fix the other comments here and modify the execution
> path for readability.
>
> v2: (Jani)
> - Fix the comments in intel_fbc_stolen_end
> - Use check_sub_overflow
> - Remove macro that mirrors SZ_8M, as it is now only referenced once
> - Misc. formatting fixes
>
> Fixes: a9da512b3ed7 ("drm/i915: avoid the last 8mb of stolen on BDW/SKL")
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 29 +++++++++++++++++-------
>  1 file changed, 21 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index fef2f35ff1e9..1f3f5237a1c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -809,19 +809,32 @@ static u64 intel_fbc_cfb_base_max(struct intel_disp=
lay *display)
>=20=20
>  static u64 intel_fbc_stolen_end(struct intel_display *display)
>  {
> -	u64 end;
> +	u64 end =3D intel_fbc_cfb_base_max(display);
>=20=20
> -	/* The FBC hardware for BDW/SKL doesn't have access to the stolen
> +	/*
> +	 * The FBC hardware for BDW/SKL doesn't have access to the stolen
>  	 * reserved range size, so it always assumes the maximum (8mb) is used.
>  	 * If we enable FBC using a CFB on that memory range we'll get FIFO
> -	 * underruns, even if that range is not reserved by the BIOS. */
> +	 * underruns, even if that range is not reserved by the BIOS.
> +	 */
>  	if (display->platform.broadwell ||
> -	    (DISPLAY_VER(display) =3D=3D 9 && !display->platform.broxton))
> -		end =3D intel_parent_stolen_area_size(display) - 8 * 1024 * 1024;
> -	else
> -		end =3D U64_MAX;
> +	    (DISPLAY_VER(display) =3D=3D 9 && !display->platform.broxton)) {
> +		u64 stolen_area_size =3D intel_parent_stolen_area_size(display);
> +
> +		/*
> +		 * If stolen_area_size is less than SZ_8M, use
> +		 * intel_fbc_cfb_base_max instead.  This should not happen,
> +		 * so warn if it does.
> +		 */
> +		if (drm_WARN_ON(display->drm,
> +				check_sub_overflow(stolen_area_size,
> +						   SZ_8M, &stolen_area_size)))
> +			return end;
> +
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
