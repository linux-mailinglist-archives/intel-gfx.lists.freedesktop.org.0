Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 696A5B8FD62
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 11:47:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E63BF10E3FD;
	Mon, 22 Sep 2025 09:47:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BtgBDal8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D1B510E3DC;
 Mon, 22 Sep 2025 09:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758534468; x=1790070468;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=tSKNnnQSqL59peTPDk//6r1E9Vw74F5xcBvUuq/SHn0=;
 b=BtgBDal84jCi6P6LSWDrqbaXQT7DPLrroIIguGitqxd0y0zPCpQTTcym
 ODi4g3nfIMsLpKn+i/tF0bBntH8kxk2k83gdyP6oglzmTZDSEWdRUHEGu
 Ec9zSZ37dVYEng5EV+ZcdDz9p4I0a4MvXvj3+HejcYnRMHCutulV1VORB
 AIr6a6L+N+1ygBwxVs1z1pMh9wWys4DeYgnX0l3N7qx4zzuRdvpEDQKvQ
 YhPDPfIA60NMVsMAbKeflYLdM0IqFSBO7BN3Iy9rQH0TTd56Yd2cjt89q
 oEobiOlCB0/v3XdQ4lCHPiRgu9Ze7m/ZNoOYMKa56N50ewVJNW7yWvPo7 Q==;
X-CSE-ConnectionGUID: JTsSsi7mS7iWQZTnPfBfng==
X-CSE-MsgGUID: N/U89gUPTmCqBxtwGke2nA==
X-IronPort-AV: E=McAfee;i="6800,10657,11560"; a="59831802"
X-IronPort-AV: E=Sophos;i="6.18,284,1751266800"; d="scan'208";a="59831802"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 02:47:48 -0700
X-CSE-ConnectionGUID: 5DNseOgTTSeSfW24th1Xgg==
X-CSE-MsgGUID: 6wnu6owXQm+mKB3ZAYO6iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,284,1751266800"; d="scan'208";a="213579277"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.61])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 02:47:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
Subject: Re: [PATCH] drm/i915: rename vlv_get_cck_clock() to
 vlv_clock_get_cck()
In-Reply-To: <20250919215413.1006296-1-michal.grzelak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250919215413.1006296-1-michal.grzelak@intel.com>
Date: Mon, 22 Sep 2025 12:47:42 +0300
Message-ID: <c30c4bac7fa5b3f9126a90d887c0563149673703@intel.com>
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

On Fri, 19 Sep 2025, Micha=C5=82 Grzelak <michal.grzelak@intel.com> wrote:
> Keep the convention of naming vlv_clock* instead of vlv_*_clock.
>
> Signed-off-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>

Thanks for the patch, pushed to drm-intel-next.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/vlv_clock.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/vlv_clock.c b/drivers/gpu/drm/i=
915/display/vlv_clock.c
> index 42c2837b32c1..1abdae453514 100644
> --- a/drivers/gpu/drm/i915/display/vlv_clock.c
> +++ b/drivers/gpu/drm/i915/display/vlv_clock.c
> @@ -36,7 +36,7 @@ int vlv_clock_get_hpll_vco(struct drm_device *drm)
>  	return display->vlv_clock.hpll_freq;
>  }
>=20=20
> -static int vlv_get_cck_clock(struct drm_device *drm,
> +static int vlv_clock_get_cck(struct drm_device *drm,
>  			     const char *name, u32 reg, int ref_freq)
>  {
>  	u32 val;
> @@ -58,7 +58,7 @@ static int vlv_get_cck_clock(struct drm_device *drm,
>  int vlv_clock_get_hrawclk(struct drm_device *drm)
>  {
>  	/* RAWCLK_FREQ_VLV register updated from power well code */
> -	return vlv_get_cck_clock(drm, "hrawclk", CCK_DISPLAY_REF_CLOCK_CONTROL,
> +	return vlv_clock_get_cck(drm, "hrawclk", CCK_DISPLAY_REF_CLOCK_CONTROL,
>  				 vlv_clock_get_hpll_vco(drm));
>  }
>=20=20
> @@ -67,7 +67,7 @@ int vlv_clock_get_czclk(struct drm_device *drm)
>  	struct intel_display *display =3D to_intel_display(drm);
>=20=20
>  	if (!display->vlv_clock.czclk_freq) {
> -		display->vlv_clock.czclk_freq =3D vlv_get_cck_clock(drm, "czclk", CCK_=
CZ_CLOCK_CONTROL,
> +		display->vlv_clock.czclk_freq =3D vlv_clock_get_cck(drm, "czclk", CCK_=
CZ_CLOCK_CONTROL,
>  								  vlv_clock_get_hpll_vco(drm));
>  		drm_dbg_kms(drm, "CZ clock rate: %d kHz\n", display->vlv_clock.czclk_f=
req);
>  	}
> @@ -77,12 +77,12 @@ int vlv_clock_get_czclk(struct drm_device *drm)
>=20=20
>  int vlv_clock_get_cdclk(struct drm_device *drm)
>  {
> -	return vlv_get_cck_clock(drm, "cdclk", CCK_DISPLAY_CLOCK_CONTROL,
> +	return vlv_clock_get_cck(drm, "cdclk", CCK_DISPLAY_CLOCK_CONTROL,
>  				 vlv_clock_get_hpll_vco(drm));
>  }
>=20=20
>  int vlv_clock_get_gpll(struct drm_device *drm)
>  {
> -	return vlv_get_cck_clock(drm, "GPLL ref", CCK_GPLL_CLOCK_CONTROL,
> +	return vlv_clock_get_cck(drm, "GPLL ref", CCK_GPLL_CLOCK_CONTROL,
>  				 vlv_clock_get_czclk(drm));
>  }

--=20
Jani Nikula, Intel
