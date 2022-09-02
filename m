Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AEAD5AA9B8
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 10:15:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE11710E7B6;
	Fri,  2 Sep 2022 08:15:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FDD610E7B0
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 08:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662106530; x=1693642530;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=mF5IcOhHjCQd24oiTXqWa3MksGMHzjGvA2kcrWiL00Q=;
 b=kCNNW7yAaOn0F+q5+Wp4EsXFRHsBF5LCWiSxt0DRFuoeFRczVP6WGY/5
 6F5pnODWTkzTFUHWLAd04JK7ryMyZF5uJu/Xegpa5/iotzuF+gch0dAHm
 agcSQkxCg1Ydh4mJ47RWG/58eo9sGqzI9g9p4RKHUTedmqlhHHJ7wiKBs
 7pnL2mrS+869NM5UrWTjbolcDFxWNFvIssEfvFOFHN7VwNrm3j9fd2BTr
 dauNDEyj6A3m2XH++/nwgZXpZS1laOMVUwQfgT+uEgm68ymIEX0Y3Y/ex
 HdFb1Y+2EwHuMIOl+JQzMUTft0Ong9mqesJI7yHrVL1EtsFmLxNuLCFGr A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="278947505"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="278947505"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 01:15:29 -0700
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="674260263"
Received: from svandene-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.245])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 01:15:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220902070319.15395-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220902070319.15395-1-ville.syrjala@linux.intel.com>
 <20220902070319.15395-2-ville.syrjala@linux.intel.com>
Date: Fri, 02 Sep 2022 11:15:17 +0300
Message-ID: <87a67ifazu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/2] Revert "drm/i915/display: Re-add check
 for low voltage sku for max dp source rate"
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 02 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> This reverts commit d5929835080a60f9119d024fa42f315913942f76.
>
> With the Parade PS8461E MUX workaround (WaEdpLinkRateDataReload)
> implemented we can get finally rid of the is_low_voltage_sku()
> check that incorrectly prevents many machines from using the
> 8.1Gpbs link rate.
>
> Cc: Jason A. Donenfeld <Jason@zx2c4.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5272
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6323
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Wonder if a Fixes tag is needed here.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 32 +++----------------------
>  1 file changed, 3 insertions(+), 29 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index d4e037450ac5..dd7351c0bed1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -389,23 +389,13 @@ static int dg2_max_source_rate(struct intel_dp *int=
el_dp)
>  	return intel_dp_is_edp(intel_dp) ? 810000 : 1350000;
>  }
>=20=20
> -static bool is_low_voltage_sku(struct drm_i915_private *i915, enum phy p=
hy)
> -{
> -	u32 voltage;
> -
> -	voltage =3D intel_de_read(i915, ICL_PORT_COMP_DW3(phy)) & VOLTAGE_INFO_=
MASK;
> -
> -	return voltage =3D=3D VOLTAGE_INFO_0_85V;
> -}
> -
>  static int icl_max_source_rate(struct intel_dp *intel_dp)
>  {
>  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>  	struct drm_i915_private *dev_priv =3D to_i915(dig_port->base.base.dev);
>  	enum phy phy =3D intel_port_to_phy(dev_priv, dig_port->base.port);
>=20=20
> -	if (intel_phy_is_combo(dev_priv, phy) &&
> -	    (is_low_voltage_sku(dev_priv, phy) || !intel_dp_is_edp(intel_dp)))
> +	if (intel_phy_is_combo(dev_priv, phy) && !intel_dp_is_edp(intel_dp))
>  		return 540000;
>=20=20
>  	return 810000;
> @@ -413,23 +403,7 @@ static int icl_max_source_rate(struct intel_dp *inte=
l_dp)
>=20=20
>  static int ehl_max_source_rate(struct intel_dp *intel_dp)
>  {
> -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> -	struct drm_i915_private *dev_priv =3D to_i915(dig_port->base.base.dev);
> -	enum phy phy =3D intel_port_to_phy(dev_priv, dig_port->base.port);
> -
> -	if (intel_dp_is_edp(intel_dp) || is_low_voltage_sku(dev_priv, phy))
> -		return 540000;
> -
> -	return 810000;
> -}
> -
> -static int dg1_max_source_rate(struct intel_dp *intel_dp)
> -{
> -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> -	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> -	enum phy phy =3D intel_port_to_phy(i915, dig_port->base.port);
> -
> -	if (intel_phy_is_combo(i915, phy) && is_low_voltage_sku(i915, phy))
> +	if (intel_dp_is_edp(intel_dp))
>  		return 540000;
>=20=20
>  	return 810000;
> @@ -491,7 +465,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  			max_rate =3D dg2_max_source_rate(intel_dp);
>  		else if (IS_ALDERLAKE_P(dev_priv) || IS_ALDERLAKE_S(dev_priv) ||
>  			 IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
> -			max_rate =3D dg1_max_source_rate(intel_dp);
> +			max_rate =3D 810000;
>  		else if (IS_JSL_EHL(dev_priv))
>  			max_rate =3D ehl_max_source_rate(intel_dp);
>  		else

--=20
Jani Nikula, Intel Open Source Graphics Center
