Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 632FE622ADC
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 12:46:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E21210E5B2;
	Wed,  9 Nov 2022 11:46:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A22CB10E5AA
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 11:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667994382; x=1699530382;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Pz3U1rUyk+ZtoxaatKTDcQByAmMRRCY4Dh/ZHz9uCQM=;
 b=NZ0SVQ2TpmVeldUe1BVF9q0bHZRFDYrbMZy8mLQKxdp/yivZFXq/qWSR
 Aid+PbSJ3Q4yyxPf47a+rIHDaRVZqpPQdLsQTtTxf8O01yW4Yf5JoLitw
 9iFLvUGcnvL/rFtlXYW+IDXpgYQrToU4NoCQIBBE7PlsYFdTTd6EP+FPN
 Ti/2ajg6e5pB57DNAq4J86qStJmiO6Ll1ts9EoFCSicfBHhKt8T0RjlYz
 E8e8SSK3D9xNo+wko6jX8sFDRqj69LVyztuKOQM/q3ZFExC7AswEoXMHY
 1ZO+hVdQep76ipMNWUfKoqbHF0rdelfOUDMCO+tYE8gt9xovPgCsoBA51 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="312755664"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="312755664"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 03:46:22 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="811607987"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="811607987"
Received: from skorobko-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.15.56])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 03:46:20 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221109111529.27476-3-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221109111529.27476-1-animesh.manna@intel.com>
 <20221109111529.27476-3-animesh.manna@intel.com>
Date: Wed, 09 Nov 2022 13:46:17 +0200
Message-ID: <87iljo73li.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/edp: Fix warning as vdd went
 down without driver knowledge
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

On Wed, 09 Nov 2022, Animesh Manna <animesh.manna@intel.com> wrote:
> Kernel warning triggered as vdd went down after certain time during
> aux transfer in connector init sequence. To solve the kernel
> warning adjust power domain and vdd wakeref count.
> Currently issue seen on ADL so add the above adjustment part of
> ADL platform check, if needed will extend for future platform.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i=
915/display/intel_pps.c
> index 5738af154bd2..ebc03c8f73c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -597,8 +597,15 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *inte=
l_dp)
>  	cancel_delayed_work(&intel_dp->pps.panel_vdd_work);
>  	intel_dp->pps.want_panel_vdd =3D true;
>=20=20
> -	if (edp_have_panel_vdd(intel_dp))
> +	if (edp_have_panel_vdd(intel_dp)) {
>  		return need_to_disable;
> +	} else {
> +		if ((IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv)) &&
> +		    intel_dp->pps.vdd_wakeref)
> +			intel_display_power_put(dev_priv,
> +						intel_aux_power_domain(dig_port),
> +						fetch_and_zero(&intel_dp->pps.vdd_wakeref));
> +	}

Already replied to patch 2, but repeating here:

We have two eDP, each with their own intel_dp->pps, but both checking
the same PPS hardware in edp_have_panel_vdd().

This is not the fix.

The fix is to ensure they both use their own PPS harware
instance. That's what the goal with patches 1&2 is, but there's still an
issue there.


BR,
Jani.


>=20=20
>  	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.vdd_wakeref);
>  	intel_dp->pps.vdd_wakeref =3D intel_display_power_get(dev_priv,

--=20
Jani Nikula, Intel Open Source Graphics Center
