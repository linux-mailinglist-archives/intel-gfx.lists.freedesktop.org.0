Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C3B7C70BE
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 16:52:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6994F10E4F3;
	Thu, 12 Oct 2023 14:52:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07A5110E4F3
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 14:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697122333; x=1728658333;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Vm29Y2so0LXl5koDLkBzw3kugIqUJIKT4VKxJAVI/Uw=;
 b=VR+sD6fXOQ5RpDK/vNpr+6lUzZLMVtbtb/mebVdEcMVWgPaq4f2B0Nv0
 OngcCNEPyVRoEpnGj+mKt5qlj2pwfB7OLqTsKbxq+8pNIjWoS6Umf+edG
 Jq1QQAB/6r2h2BgSO8G6/ZqVA0KHg8BRme1VkCzvVNP1fcx1NAWdK7yVG
 vwAoMphS2aq3Sze9HWtr07SA2dhN1uVgzkH8izybvznEIfjBWuOt/NW4a
 tKLrZMonGDC65vBGi6joJFPTAYHvcxD3cO5zyuVBIUVXvDWloyFIgCgFF
 xFMRjEaaLiUsvCv2kzMAKor8/zD6tH9MpMOQ5YbfI19HD3qJgNjie0+/+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="384785347"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="384785347"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 07:52:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="820171191"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="820171191"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 07:52:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231012123522.26045-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231012123522.26045-1-ville.syrjala@linux.intel.com>
 <20231012123522.26045-2-ville.syrjala@linux.intel.com>
Date: Thu, 12 Oct 2023 17:52:09 +0300
Message-ID: <87il7b28rq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Use named initializers for
 DPLL info
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

On Thu, 12 Oct 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use named initializers when populating the DPLL info. This
> is just more convenient and less error prone as we no longer
> have to keep the initializers in a specific order.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Nitpick, it's designated initializer. ;)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 130 +++++++++---------
>  1 file changed, 67 insertions(+), 63 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 399653a20f98..b7997b096796 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -631,9 +631,9 @@ static const struct intel_shared_dpll_funcs ibx_pch_d=
pll_funcs =3D {
>  };
>=20=20
>  static const struct dpll_info pch_plls[] =3D {
> -	{ "PCH DPLL A", &ibx_pch_dpll_funcs, DPLL_ID_PCH_PLL_A, 0 },
> -	{ "PCH DPLL B", &ibx_pch_dpll_funcs, DPLL_ID_PCH_PLL_B, 0 },
> -	{ },
> +	{ .name =3D "PCH DPLL A", .funcs =3D &ibx_pch_dpll_funcs, .id =3D DPLL_=
ID_PCH_PLL_A, },
> +	{ .name =3D "PCH DPLL B", .funcs =3D &ibx_pch_dpll_funcs, .id =3D DPLL_=
ID_PCH_PLL_B, },
> +	{}
>  };
>=20=20
>  static const struct intel_dpll_mgr pch_pll_mgr =3D {
> @@ -1239,13 +1239,16 @@ static const struct intel_shared_dpll_funcs hsw_d=
di_lcpll_funcs =3D {
>  };
>=20=20
>  static const struct dpll_info hsw_plls[] =3D {
> -	{ "WRPLL 1",    &hsw_ddi_wrpll_funcs, DPLL_ID_WRPLL1,     0 },
> -	{ "WRPLL 2",    &hsw_ddi_wrpll_funcs, DPLL_ID_WRPLL2,     0 },
> -	{ "SPLL",       &hsw_ddi_spll_funcs,  DPLL_ID_SPLL,       0 },
> -	{ "LCPLL 810",  &hsw_ddi_lcpll_funcs, DPLL_ID_LCPLL_810,  INTEL_DPLL_AL=
WAYS_ON },
> -	{ "LCPLL 1350", &hsw_ddi_lcpll_funcs, DPLL_ID_LCPLL_1350, INTEL_DPLL_AL=
WAYS_ON },
> -	{ "LCPLL 2700", &hsw_ddi_lcpll_funcs, DPLL_ID_LCPLL_2700, INTEL_DPLL_AL=
WAYS_ON },
> -	{ },
> +	{ .name =3D "WRPLL 1", .funcs =3D &hsw_ddi_wrpll_funcs, .id =3D DPLL_ID=
_WRPLL1, },
> +	{ .name =3D "WRPLL 2", .funcs =3D &hsw_ddi_wrpll_funcs, .id =3D DPLL_ID=
_WRPLL2, },
> +	{ .name =3D "SPLL", .funcs =3D &hsw_ddi_spll_funcs, .id =3D DPLL_ID_SPL=
L, },
> +	{ .name =3D "LCPLL 810", .funcs =3D &hsw_ddi_lcpll_funcs, .id =3D DPLL_=
ID_LCPLL_810,
> +	  .flags =3D INTEL_DPLL_ALWAYS_ON, },
> +	{ .name =3D "LCPLL 1350", .funcs =3D &hsw_ddi_lcpll_funcs, .id =3D DPLL=
_ID_LCPLL_1350,
> +	  .flags =3D INTEL_DPLL_ALWAYS_ON, },
> +	{ .name =3D "LCPLL 2700", .funcs =3D &hsw_ddi_lcpll_funcs, .id =3D DPLL=
_ID_LCPLL_2700,
> +	  .flags =3D INTEL_DPLL_ALWAYS_ON, },
> +	{}
>  };
>=20=20
>  static const struct intel_dpll_mgr hsw_pll_mgr =3D {
> @@ -1921,11 +1924,12 @@ static const struct intel_shared_dpll_funcs skl_d=
di_dpll0_funcs =3D {
>  };
>=20=20
>  static const struct dpll_info skl_plls[] =3D {
> -	{ "DPLL 0", &skl_ddi_dpll0_funcs, DPLL_ID_SKL_DPLL0, INTEL_DPLL_ALWAYS_=
ON },
> -	{ "DPLL 1", &skl_ddi_pll_funcs,   DPLL_ID_SKL_DPLL1, 0 },
> -	{ "DPLL 2", &skl_ddi_pll_funcs,   DPLL_ID_SKL_DPLL2, 0 },
> -	{ "DPLL 3", &skl_ddi_pll_funcs,   DPLL_ID_SKL_DPLL3, 0 },
> -	{ },
> +	{ .name =3D "DPLL 0", .funcs =3D &skl_ddi_dpll0_funcs, .id =3D DPLL_ID_=
SKL_DPLL0,
> +	  .flags =3D INTEL_DPLL_ALWAYS_ON, },
> +	{ .name =3D "DPLL 1", .funcs =3D &skl_ddi_pll_funcs, .id =3D DPLL_ID_SK=
L_DPLL1, },
> +	{ .name =3D "DPLL 2", .funcs =3D &skl_ddi_pll_funcs, .id =3D DPLL_ID_SK=
L_DPLL2, },
> +	{ .name =3D "DPLL 3", .funcs =3D &skl_ddi_pll_funcs, .id =3D DPLL_ID_SK=
L_DPLL3, },
> +	{}
>  };
>=20=20
>  static const struct intel_dpll_mgr skl_pll_mgr =3D {
> @@ -2376,10 +2380,10 @@ static const struct intel_shared_dpll_funcs bxt_d=
di_pll_funcs =3D {
>  };
>=20=20
>  static const struct dpll_info bxt_plls[] =3D {
> -	{ "PORT PLL A", &bxt_ddi_pll_funcs, DPLL_ID_SKL_DPLL0, 0 },
> -	{ "PORT PLL B", &bxt_ddi_pll_funcs, DPLL_ID_SKL_DPLL1, 0 },
> -	{ "PORT PLL C", &bxt_ddi_pll_funcs, DPLL_ID_SKL_DPLL2, 0 },
> -	{ },
> +	{ .name =3D "PORT PLL A", .funcs =3D &bxt_ddi_pll_funcs, .id =3D DPLL_I=
D_SKL_DPLL0, },
> +	{ .name =3D "PORT PLL B", .funcs =3D &bxt_ddi_pll_funcs, .id =3D DPLL_I=
D_SKL_DPLL1, },
> +	{ .name =3D "PORT PLL C", .funcs =3D &bxt_ddi_pll_funcs, .id =3D DPLL_I=
D_SKL_DPLL2, },
> +	{}
>  };
>=20=20
>  static const struct intel_dpll_mgr bxt_pll_mgr =3D {
> @@ -4014,14 +4018,14 @@ static const struct intel_shared_dpll_funcs mg_pl=
l_funcs =3D {
>  };
>=20=20
>  static const struct dpll_info icl_plls[] =3D {
> -	{ "DPLL 0",   &combo_pll_funcs, DPLL_ID_ICL_DPLL0,  0 },
> -	{ "DPLL 1",   &combo_pll_funcs, DPLL_ID_ICL_DPLL1,  0 },
> -	{ "TBT PLL",  &tbt_pll_funcs, DPLL_ID_ICL_TBTPLL, 0 },
> -	{ "MG PLL 1", &mg_pll_funcs, DPLL_ID_ICL_MGPLL1, 0 },
> -	{ "MG PLL 2", &mg_pll_funcs, DPLL_ID_ICL_MGPLL2, 0 },
> -	{ "MG PLL 3", &mg_pll_funcs, DPLL_ID_ICL_MGPLL3, 0 },
> -	{ "MG PLL 4", &mg_pll_funcs, DPLL_ID_ICL_MGPLL4, 0 },
> -	{ },
> +	{ .name =3D "DPLL 0", .funcs =3D &combo_pll_funcs, .id =3D DPLL_ID_ICL_=
DPLL0, },
> +	{ .name =3D "DPLL 1", .funcs =3D &combo_pll_funcs, .id =3D DPLL_ID_ICL_=
DPLL1, },
> +	{ .name =3D "TBT PLL", .funcs =3D &tbt_pll_funcs, .id =3D DPLL_ID_ICL_T=
BTPLL, },
> +	{ .name =3D "MG PLL 1", .funcs =3D &mg_pll_funcs, .id =3D DPLL_ID_ICL_M=
GPLL1, },
> +	{ .name =3D "MG PLL 2", .funcs =3D &mg_pll_funcs, .id =3D DPLL_ID_ICL_M=
GPLL2, },
> +	{ .name =3D "MG PLL 3", .funcs =3D &mg_pll_funcs, .id =3D DPLL_ID_ICL_M=
GPLL3, },
> +	{ .name =3D "MG PLL 4", .funcs =3D &mg_pll_funcs, .id =3D DPLL_ID_ICL_M=
GPLL4, },
> +	{}
>  };
>=20=20
>  static const struct intel_dpll_mgr icl_pll_mgr =3D {
> @@ -4035,10 +4039,10 @@ static const struct intel_dpll_mgr icl_pll_mgr =
=3D {
>  };
>=20=20
>  static const struct dpll_info ehl_plls[] =3D {
> -	{ "DPLL 0", &combo_pll_funcs, DPLL_ID_ICL_DPLL0, 0 },
> -	{ "DPLL 1", &combo_pll_funcs, DPLL_ID_ICL_DPLL1, 0 },
> -	{ "DPLL 4", &combo_pll_funcs, DPLL_ID_EHL_DPLL4, 0 },
> -	{ },
> +	{ .name =3D "DPLL 0", .funcs =3D &combo_pll_funcs, .id =3D DPLL_ID_ICL_=
DPLL0, },
> +	{ .name =3D "DPLL 1", .funcs =3D &combo_pll_funcs, .id =3D DPLL_ID_ICL_=
DPLL1, },
> +	{ .name =3D "DPLL 4", .funcs =3D &combo_pll_funcs, .id =3D DPLL_ID_EHL_=
DPLL4, },
> +	{}
>  };
>=20=20
>  static const struct intel_dpll_mgr ehl_pll_mgr =3D {
> @@ -4058,16 +4062,16 @@ static const struct intel_shared_dpll_funcs dkl_p=
ll_funcs =3D {
>  };
>=20=20
>  static const struct dpll_info tgl_plls[] =3D {
> -	{ "DPLL 0", &combo_pll_funcs, DPLL_ID_ICL_DPLL0,  0 },
> -	{ "DPLL 1", &combo_pll_funcs, DPLL_ID_ICL_DPLL1,  0 },
> -	{ "TBT PLL",  &tbt_pll_funcs, DPLL_ID_ICL_TBTPLL, 0 },
> -	{ "TC PLL 1", &dkl_pll_funcs, DPLL_ID_ICL_MGPLL1, 0 },
> -	{ "TC PLL 2", &dkl_pll_funcs, DPLL_ID_ICL_MGPLL2, 0 },
> -	{ "TC PLL 3", &dkl_pll_funcs, DPLL_ID_ICL_MGPLL3, 0 },
> -	{ "TC PLL 4", &dkl_pll_funcs, DPLL_ID_ICL_MGPLL4, 0 },
> -	{ "TC PLL 5", &dkl_pll_funcs, DPLL_ID_TGL_MGPLL5, 0 },
> -	{ "TC PLL 6", &dkl_pll_funcs, DPLL_ID_TGL_MGPLL6, 0 },
> -	{ },
> +	{ .name =3D "DPLL 0", .funcs =3D &combo_pll_funcs, .id =3D DPLL_ID_ICL_=
DPLL0, },
> +	{ .name =3D "DPLL 1", .funcs =3D &combo_pll_funcs, .id =3D DPLL_ID_ICL_=
DPLL1, },
> +	{ .name =3D "TBT PLL", .funcs =3D &tbt_pll_funcs, .id =3D DPLL_ID_ICL_T=
BTPLL, },
> +	{ .name =3D "TC PLL 1", .funcs =3D &dkl_pll_funcs, .id =3D DPLL_ID_ICL_=
MGPLL1, },
> +	{ .name =3D "TC PLL 2", .funcs =3D &dkl_pll_funcs, .id =3D DPLL_ID_ICL_=
MGPLL2, },
> +	{ .name =3D "TC PLL 3", .funcs =3D &dkl_pll_funcs, .id =3D DPLL_ID_ICL_=
MGPLL3, },
> +	{ .name =3D "TC PLL 4", .funcs =3D &dkl_pll_funcs, .id =3D DPLL_ID_ICL_=
MGPLL4, },
> +	{ .name =3D "TC PLL 5", .funcs =3D &dkl_pll_funcs, .id =3D DPLL_ID_TGL_=
MGPLL5, },
> +	{ .name =3D "TC PLL 6", .funcs =3D &dkl_pll_funcs, .id =3D DPLL_ID_TGL_=
MGPLL6, },
> +	{}
>  };
>=20=20
>  static const struct intel_dpll_mgr tgl_pll_mgr =3D {
> @@ -4081,10 +4085,10 @@ static const struct intel_dpll_mgr tgl_pll_mgr =
=3D {
>  };
>=20=20
>  static const struct dpll_info rkl_plls[] =3D {
> -	{ "DPLL 0", &combo_pll_funcs, DPLL_ID_ICL_DPLL0, 0 },
> -	{ "DPLL 1", &combo_pll_funcs, DPLL_ID_ICL_DPLL1, 0 },
> -	{ "DPLL 4", &combo_pll_funcs, DPLL_ID_EHL_DPLL4, 0 },
> -	{ },
> +	{ .name =3D "DPLL 0", .funcs =3D &combo_pll_funcs, .id =3D DPLL_ID_ICL_=
DPLL0, },
> +	{ .name =3D "DPLL 1", .funcs =3D &combo_pll_funcs, .id =3D DPLL_ID_ICL_=
DPLL1, },
> +	{ .name =3D "DPLL 4", .funcs =3D &combo_pll_funcs, .id =3D DPLL_ID_EHL_=
DPLL4, },
> +	{}
>  };
>=20=20
>  static const struct intel_dpll_mgr rkl_pll_mgr =3D {
> @@ -4097,11 +4101,11 @@ static const struct intel_dpll_mgr rkl_pll_mgr =
=3D {
>  };
>=20=20
>  static const struct dpll_info dg1_plls[] =3D {
> -	{ "DPLL 0", &combo_pll_funcs, DPLL_ID_DG1_DPLL0, 0 },
> -	{ "DPLL 1", &combo_pll_funcs, DPLL_ID_DG1_DPLL1, 0 },
> -	{ "DPLL 2", &combo_pll_funcs, DPLL_ID_DG1_DPLL2, 0 },
> -	{ "DPLL 3", &combo_pll_funcs, DPLL_ID_DG1_DPLL3, 0 },
> -	{ },
> +	{ .name =3D "DPLL 0", .funcs =3D &combo_pll_funcs, .id =3D DPLL_ID_DG1_=
DPLL0, },
> +	{ .name =3D "DPLL 1", .funcs =3D &combo_pll_funcs, .id =3D DPLL_ID_DG1_=
DPLL1, },
> +	{ .name =3D "DPLL 2", .funcs =3D &combo_pll_funcs, .id =3D DPLL_ID_DG1_=
DPLL2, },
> +	{ .name =3D "DPLL 3", .funcs =3D &combo_pll_funcs, .id =3D DPLL_ID_DG1_=
DPLL3, },
> +	{}
>  };
>=20=20
>  static const struct intel_dpll_mgr dg1_pll_mgr =3D {
> @@ -4114,11 +4118,11 @@ static const struct intel_dpll_mgr dg1_pll_mgr =
=3D {
>  };
>=20=20
>  static const struct dpll_info adls_plls[] =3D {
> -	{ "DPLL 0", &combo_pll_funcs, DPLL_ID_ICL_DPLL0, 0 },
> -	{ "DPLL 1", &combo_pll_funcs, DPLL_ID_ICL_DPLL1, 0 },
> -	{ "DPLL 2", &combo_pll_funcs, DPLL_ID_DG1_DPLL2, 0 },
> -	{ "DPLL 3", &combo_pll_funcs, DPLL_ID_DG1_DPLL3, 0 },
> -	{ },
> +	{ .name =3D "DPLL 0", .funcs =3D &combo_pll_funcs, .id =3D DPLL_ID_ICL_=
DPLL0, },
> +	{ .name =3D "DPLL 1", .funcs =3D &combo_pll_funcs, .id =3D DPLL_ID_ICL_=
DPLL1, },
> +	{ .name =3D "DPLL 2", .funcs =3D &combo_pll_funcs, .id =3D DPLL_ID_DG1_=
DPLL2, },
> +	{ .name =3D "DPLL 3", .funcs =3D &combo_pll_funcs, .id =3D DPLL_ID_DG1_=
DPLL3, },
> +	{}
>  };
>=20=20
>  static const struct intel_dpll_mgr adls_pll_mgr =3D {
> @@ -4131,14 +4135,14 @@ static const struct intel_dpll_mgr adls_pll_mgr =
=3D {
>  };
>=20=20
>  static const struct dpll_info adlp_plls[] =3D {
> -	{ "DPLL 0", &combo_pll_funcs, DPLL_ID_ICL_DPLL0,  0 },
> -	{ "DPLL 1", &combo_pll_funcs, DPLL_ID_ICL_DPLL1,  0 },
> -	{ "TBT PLL",  &tbt_pll_funcs, DPLL_ID_ICL_TBTPLL, 0 },
> -	{ "TC PLL 1", &dkl_pll_funcs, DPLL_ID_ICL_MGPLL1, 0 },
> -	{ "TC PLL 2", &dkl_pll_funcs, DPLL_ID_ICL_MGPLL2, 0 },
> -	{ "TC PLL 3", &dkl_pll_funcs, DPLL_ID_ICL_MGPLL3, 0 },
> -	{ "TC PLL 4", &dkl_pll_funcs, DPLL_ID_ICL_MGPLL4, 0 },
> -	{ },
> +	{ .name =3D "DPLL 0", .funcs =3D &combo_pll_funcs, .id =3D DPLL_ID_ICL_=
DPLL0, },
> +	{ .name =3D "DPLL 1", .funcs =3D &combo_pll_funcs, .id =3D DPLL_ID_ICL_=
DPLL1, },
> +	{ .name =3D "TBT PLL", .funcs =3D &tbt_pll_funcs, .id =3D DPLL_ID_ICL_T=
BTPLL, },
> +	{ .name =3D "TC PLL 1", .funcs =3D &dkl_pll_funcs, .id =3D DPLL_ID_ICL_=
MGPLL1, },
> +	{ .name =3D "TC PLL 2", .funcs =3D &dkl_pll_funcs, .id =3D DPLL_ID_ICL_=
MGPLL2, },
> +	{ .name =3D "TC PLL 3", .funcs =3D &dkl_pll_funcs, .id =3D DPLL_ID_ICL_=
MGPLL3, },
> +	{ .name =3D "TC PLL 4", .funcs =3D &dkl_pll_funcs, .id =3D DPLL_ID_ICL_=
MGPLL4, },
> +	{}
>  };
>=20=20
>  static const struct intel_dpll_mgr adlp_pll_mgr =3D {

--=20
Jani Nikula, Intel
