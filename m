Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BA59C00FE
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 10:20:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0945110E7CF;
	Thu,  7 Nov 2024 09:20:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mc+wACq6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2918410E7CB
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 09:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730971216; x=1762507216;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=F5p9nuJoIKhK2OmZQBORtmb+bHNM7AqbHNuYnquPK4o=;
 b=mc+wACq6GWT2F8lIrpvbbIc0/0lS43AUqbceEowQZ49Qk2d4qgYNRLvY
 5RWV6yMkFcUFEO/V9LpNd2I7yZ4WItDyekph2FvqepeUKquyM/vTOPLqL
 VlV5a3N2723mEnJX/fFMdJG/0Y8440kpfKyW6DqHtQZZdjJB5hRCwUOaH
 LoO3UGXb3sQGF/UxyUBW5q+eAoYHkiQBQPtW1ulLIYXADlLvEzqL21Um4
 bU61UdOaHLEP2QO1zRNpNxhD0mICASDEtbxeIRYhlsPwIb+f847mk+9Wk
 kw4pkYR1p0NZPbgNfAEnsN5QJvyUVYTfSRmBcaFVH3cEjx+fJ2TKvtu0l A==;
X-CSE-ConnectionGUID: BfdHHDBmThurwC5xf8aqAA==
X-CSE-MsgGUID: fhd2bCqGSAy9m6eEEeGnRQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="41399203"
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="41399203"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 01:20:16 -0800
X-CSE-ConnectionGUID: VkOuJOS+RfqNVuSnQCnr4A==
X-CSE-MsgGUID: cZCRVbCvR3efXViUmh7YXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="89806482"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 01:20:14 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 6/8] drm/i915/pps: Extract msecs_to_pps_units()
In-Reply-To: <20241106215859.25446-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241106215859.25446-1-ville.syrjala@linux.intel.com>
 <20241106215859.25446-7-ville.syrjala@linux.intel.com>
Date: Thu, 07 Nov 2024 11:20:11 +0200
Message-ID: <875xozflis.fsf@intel.com>
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
> Replace all the hand rolled *10 stuff with something a bit
> more descriptive (msecs_to_pps_units()).
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 23 ++++++++++++++---------
>  1 file changed, 14 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i=
915/display/intel_pps.c
> index 6946ba0004eb..5be2903c6aaf 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1462,6 +1462,12 @@ static bool pps_delays_valid(struct intel_pps_dela=
ys *delays)
>  		delays->power_down || delays->power_cycle;
>  }
>=20=20
> +static int msecs_to_pps_units(int msecs)
> +{
> +	/* PPS uses 100us units */
> +	return msecs * 10;
> +}
> +
>  static void pps_init_delays_bios(struct intel_dp *intel_dp,
>  				 struct intel_pps_delays *bios)
>  {
> @@ -1494,7 +1500,7 @@ static void pps_init_delays_vbt(struct intel_dp *in=
tel_dp,
>  	 * seems sufficient to avoid this problem.
>  	 */
>  	if (intel_has_quirk(display, QUIRK_INCREASE_T12_DELAY)) {
> -		vbt->power_cycle =3D max_t(u16, vbt->power_cycle, 1300 * 10);
> +		vbt->power_cycle =3D max_t(u16, vbt->power_cycle, msecs_to_pps_units(1=
300));
>  		drm_dbg_kms(display->drm,
>  			    "Increasing T12 panel delay as per the quirk to %d\n",
>  			    vbt->power_cycle);
> @@ -1510,13 +1516,12 @@ static void pps_init_delays_spec(struct intel_dp =
*intel_dp,
>=20=20
>  	lockdep_assert_held(&display->pps.mutex);
>=20=20
> -	/* Upper limits from eDP 1.3 spec. Note that we use the clunky units of
> -	 * our hw here, which are all in 100usec. */
> -	spec->power_up =3D (10 + 200) * 10; /* T1+T3 */
> -	spec->backlight_on =3D 50 * 10; /* no limit for T8, use T7 instead */
> -	spec->backlight_off =3D 50 * 10; /* no limit for T9, make it symmetric =
with T8 */
> -	spec->power_down =3D 500 * 10; /* T10 */
> -	spec->power_cycle =3D (10 + 500) * 10; /* T11+T12 */
> +	/* Upper limits from eDP 1.3 spec */
> +	spec->power_up =3D msecs_to_pps_units(10 + 200); /* T1+T3 */
> +	spec->backlight_on =3D msecs_to_pps_units(50); /* no limit for T8, use =
T7 instead */
> +	spec->backlight_off =3D msecs_to_pps_units(50); /* no limit for T9, mak=
e it symmetric with T8 */
> +	spec->power_down =3D msecs_to_pps_units(500); /* T10 */
> +	spec->power_cycle =3D msecs_to_pps_units(10 + 500); /* T11+T12 */
>=20=20
>  	intel_pps_dump_state(intel_dp, "spec", spec);
>  }
> @@ -1582,7 +1587,7 @@ static void pps_init_delays(struct intel_dp *intel_=
dp)
>  	 * HW has only a 100msec granularity for power_cycle so round it up
>  	 * accordingly.
>  	 */
> -	final->power_cycle =3D roundup(final->power_cycle, 100 * 10);
> +	final->power_cycle =3D roundup(final->power_cycle, msecs_to_pps_units(1=
00));
>  }
>=20=20
>  static void pps_init_registers(struct intel_dp *intel_dp, bool force_dis=
able_vdd)

--=20
Jani Nikula, Intel
