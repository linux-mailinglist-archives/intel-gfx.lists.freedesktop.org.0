Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E8E9C0105
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 10:20:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA9C710E7D3;
	Thu,  7 Nov 2024 09:20:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HV5ncb8t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D34910E7D3
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 09:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730971242; x=1762507242;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=mObu0BgPsofeurWXGCM9lEQsKoI983wDiGBm7ihL/2g=;
 b=HV5ncb8t1SXdk/LjifbKR6vozxRKqjMKYccKciOBEfvAZdKiEBBMLSru
 p/Mwb5VM92U1CvmXFDHDsyQX8baVVXarAf1RT3GFapd+9LOnB8nckZYQ5
 L3tyTYTCxbkwXAmWFUBDPDYEgh23goUk1AHnaFX+jeDyoWKMW2hw/ssRx
 ORfBMZpacmNyvxS369XiB4eH3lAk2v08Vg5iodWY3ADb5ISvX3Mptw1o3
 xDyUWFdDR5FgB2uZlzVaNMafwudhgtlepX1xSEJVqVnEdymq82L3KK2oo
 gVjdCNnx9idG9jBxY1cK1qvqcNVLc6tiRMLQv5YRzNQxU2v7nt+QWIprv A==;
X-CSE-ConnectionGUID: IDI3IJQDQIq2NMNd07D8hA==
X-CSE-MsgGUID: jcqMdUmOQM21lv/8YeOBJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="42182417"
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="42182417"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 01:20:42 -0800
X-CSE-ConnectionGUID: 23p+GEtjRc+eXFTfFZpUFQ==
X-CSE-MsgGUID: OShgjDYMSY2CzBwFmL+A+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="85345071"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 01:20:41 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 8/8] drm/i915/pps: Eliminate pointless get_delay() macro
In-Reply-To: <20241106215859.25446-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241106215859.25446-1-ville.syrjala@linux.intel.com>
 <20241106215859.25446-9-ville.syrjala@linux.intel.com>
Date: Thu, 07 Nov 2024 11:20:37 +0200
Message-ID: <87zfmbe6xm.fsf@intel.com>
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

On Wed, 06 Nov 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Now that we have pps_units_to_msecs(), get_delay() looks
> rather pointless. Nuke it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i=
915/display/intel_pps.c
> index 378a525eec16..173bcae5f0e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1560,13 +1560,11 @@ static void pps_init_delays(struct intel_dp *inte=
l_dp)
>  	assign_final(power_cycle);
>  #undef assign_final
>=20=20
> -#define get_delay(field)	pps_units_to_msecs(final->field)
> -	intel_dp->pps.panel_power_up_delay =3D get_delay(power_up);
> -	intel_dp->pps.backlight_on_delay =3D get_delay(backlight_on);
> -	intel_dp->pps.backlight_off_delay =3D get_delay(backlight_off);
> -	intel_dp->pps.panel_power_down_delay =3D get_delay(power_down);
> -	intel_dp->pps.panel_power_cycle_delay =3D get_delay(power_cycle);
> -#undef get_delay
> +	intel_dp->pps.panel_power_up_delay =3D pps_units_to_msecs(final->power_=
up);
> +	intel_dp->pps.backlight_on_delay =3D pps_units_to_msecs(final->backligh=
t_on);
> +	intel_dp->pps.backlight_off_delay =3D pps_units_to_msecs(final->backlig=
ht_off);
> +	intel_dp->pps.panel_power_down_delay =3D pps_units_to_msecs(final->powe=
r_down);
> +	intel_dp->pps.panel_power_cycle_delay =3D pps_units_to_msecs(final->pow=
er_cycle);
>=20=20
>  	drm_dbg_kms(display->drm,
>  		    "panel power up delay %d, power down delay %d, power cycle delay %=
d\n",

--=20
Jani Nikula, Intel
