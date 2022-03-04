Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6875F4CD32F
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 12:14:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 952D210E478;
	Fri,  4 Mar 2022 11:14:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10D0910E478
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 11:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646392491; x=1677928491;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=FoceGbEOZSyKXXespPzOFSw2S451PxEuSEqxjFragec=;
 b=Gl3cHthIxWrJDp1QryTCJwZJIa+LphgdyapHtckCEnE010evFCpy0let
 HazHQ62Ps6iQgEMtnw9VzT1Cizss5JfTTyMksK+lROfW7zAHJqlcbjMS/
 P/4DXsNVreiQiz+Dqr2PopzcerrKd/Fo7zfwqcAUVlkp3Hjc7Y8rrXo0x
 +yr34wMDRZ9KmrLrVXdX8wFEzSJT5iCWnldokr83ZKh5NQaM2uOkGD4zM
 XAasr1Qgj+j1E7AewLQepiig/1GtVDEZQA6FD9ZSh+c6KC44wD2gt84Z2
 sv5lbox9niFrz6t42dVkpEJf6PLNwO6KYBsS2sL0CjS0gpkBSbEho/Cty A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="241377223"
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="241377223"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 03:14:50 -0800
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="710303914"
Received: from pruilobx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.28.174])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 03:14:49 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220301173128.6988-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
 <20220301173128.6988-4-ville.syrjala@linux.intel.com>
Date: Fri, 04 Mar 2022 13:14:47 +0200
Message-ID: <871qzi3r6g.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915: Clean up some struct/array
 initializers
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

On Tue, 01 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use the simple '=3D {}' form to initialize empty arrays/structs.
> Also add some missing whitespace.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 4e06c8203aca..bc26ebacae12 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -832,7 +832,7 @@ hsw_ddi_calculate_wrpll(int clock /* in Hz */,
>  {
>  	u64 freq2k;
>  	unsigned p, n2, r2;
> -	struct hsw_wrpll_rnp best =3D { 0, 0, 0 };
> +	struct hsw_wrpll_rnp best =3D {};
>  	unsigned budget;
>=20=20
>  	freq2k =3D clock / 100;
> @@ -1567,8 +1567,8 @@ skl_ddi_calculate_wrpll(int clock /* in Hz */,
>  static bool skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_stat=
e)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> +	struct skl_wrpll_params wrpll_params =3D {};
>  	u32 ctrl1, cfgcr1, cfgcr2;
> -	struct skl_wrpll_params wrpll_params =3D { 0, };
>=20=20
>  	/*
>  	 * See comment in intel_dpll_hw_state to understand why we always use 0
> @@ -2095,13 +2095,13 @@ struct bxt_clk_div {
>=20=20
>  /* pre-calculated values for DP linkrates */
>  static const struct bxt_clk_div bxt_dp_clk_val[] =3D {
> -	{162000, 4, 2, 32, 1677722, 1, 1},
> -	{270000, 4, 1, 27,       0, 0, 1},
> -	{540000, 2, 1, 27,       0, 0, 1},
> -	{216000, 3, 2, 32, 1677722, 1, 1},
> -	{243000, 4, 1, 24, 1258291, 1, 1},
> -	{324000, 4, 1, 32, 1677722, 1, 1},
> -	{432000, 3, 1, 32, 1677722, 1, 1}
> +	{ 162000, 4, 2, 32, 1677722, 1, 1 },
> +	{ 270000, 4, 1, 27,       0, 0, 1 },
> +	{ 540000, 2, 1, 27,       0, 0, 1 },
> +	{ 216000, 3, 2, 32, 1677722, 1, 1 },
> +	{ 243000, 4, 1, 24, 1258291, 1, 1 },
> +	{ 324000, 4, 1, 32, 1677722, 1, 1 },
> +	{ 432000, 3, 1, 32, 1677722, 1, 1 }
>  };
>=20=20
>  static bool

--=20
Jani Nikula, Intel Open Source Graphics Center
