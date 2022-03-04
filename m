Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A85294CD325
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 12:14:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30AC510EE34;
	Fri,  4 Mar 2022 11:13:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BF3210EE34
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 11:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646392436; x=1677928436;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=epi9eDOsLWWxOtHwQ/RNPVQuIwVtsAV7BgTO4wSGy98=;
 b=e88iidockGJoKLVuOmz3Zfu/8CqfhnYUvxNSFSX9wR2Z8yeB03qX///h
 IXFvFvVDXhHU2yIypcXgd8RTzG3Eq8Gm468XyWmGfrh5x0orSXtG/xRHw
 M/knbIkwzso7VXssabX9XK+dM9kBbDAq4LuoLb24sLSwdk+6MewiF1vB8
 aG/v5WlPX1AWBetvY39o7HNZxM9tCE/3r1SruJRsOE3DXfzRx5PYZBOHQ
 rMOW1AoMbF4lDdwb1Pg+EvIT1w3WkkLLwoZNMRebZQXJjIeYywjWXUcTW
 qm+JgNG+lyZTTbB2vfAHgI0v64feOXXApbmu1f8NJnnrL2zNxXrsza4AM g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="252781288"
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="252781288"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 03:13:55 -0800
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="536243622"
Received: from pruilobx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.28.174])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 03:13:54 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220301173128.6988-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
 <20220301173128.6988-3-ville.syrjala@linux.intel.com>
Date: Fri, 04 Mar 2022 13:13:52 +0200
Message-ID: <874k4e3r7z.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 02/11] drm/i915: Move a bunch of stuff into
 rodata from the stack
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
> Toss a bunch if constants into .rodata drom the stack. Also
> shrink the types of some of the arrays to reduce the size.
>
> bloat-o-meter -c intel_dpll_mgr.o:
> add/remove: 0/0 grow/shrink: 0/2 up/down: 0/-86 (-86)
> Function                                     old     new   delta
> icl_get_dplls                               3393    3372     -21
> skl_get_dpll                                2069    2004     -65
> Total: Before=3D28029, After=3D27943, chg -0.31%
> add/remove: 0/0 grow/shrink: 0/0 up/down: 0/0 (0)
> Data                                         old     new   delta
> Total: Before=3D17, After=3D17, chg +0.00%
> add/remove: 2/0 grow/shrink: 0/2 up/down: 28/-129 (-101)
> RO Data                                      old     new   delta
> dco_central_freq                               -      24     +24
> div1_vals                                      -       4      +4
> odd_dividers                                  28       7     -21
> even_dividers                                144      36    -108
> Total: Before=3D3600, After=3D3499, chg -2.81%
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 24 +++++++++----------
>  1 file changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 1b1b70f0ff93..4e06c8203aca 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -1495,18 +1495,17 @@ skl_ddi_calculate_wrpll(int clock /* in Hz */,
>  			int ref_clock,
>  			struct skl_wrpll_params *wrpll_params)
>  {
> -	u64 afe_clock =3D clock * 5; /* AFE Clock is 5x Pixel clock */
> -	u64 dco_central_freq[3] =3D { 8400000000ULL,
> -				    9000000000ULL,
> -				    9600000000ULL };
> -	static const int even_dividers[] =3D {  4,  6,  8, 10, 12, 14, 16, 18, =
20,
> -					     24, 28, 30, 32, 36, 40, 42, 44,
> -					     48, 52, 54, 56, 60, 64, 66, 68,
> -					     70, 72, 76, 78, 80, 84, 88, 90,
> -					     92, 96, 98 };
> -	static const int odd_dividers[] =3D { 3, 5, 7, 9, 15, 21, 35 };
> +	static const u64 dco_central_freq[3] =3D { 8400000000ULL,
> +						 9000000000ULL,
> +						 9600000000ULL };
> +	static const u8 even_dividers[] =3D {  4,  6,  8, 10, 12, 14, 16, 18, 2=
0,
> +					    24, 28, 30, 32, 36, 40, 42, 44,
> +					    48, 52, 54, 56, 60, 64, 66, 68,
> +					    70, 72, 76, 78, 80, 84, 88, 90,
> +					    92, 96, 98 };
> +	static const u8 odd_dividers[] =3D { 3, 5, 7, 9, 15, 21, 35 };
>  	static const struct {
> -		const int *list;
> +		const u8 *list;
>  		int n_dividers;
>  	} dividers[] =3D {
>  		{ even_dividers, ARRAY_SIZE(even_dividers) },
> @@ -1517,6 +1516,7 @@ skl_ddi_calculate_wrpll(int clock /* in Hz */,
>  	};
>  	unsigned int dco, d, i;
>  	unsigned int p0, p1, p2;
> +	u64 afe_clock =3D clock * 5; /* AFE Clock is 5x Pixel clock */
>=20=20
>  	for (d =3D 0; d < ARRAY_SIZE(dividers); d++) {
>  		for (dco =3D 0; dco < ARRAY_SIZE(dco_central_freq); dco++) {
> @@ -2751,8 +2751,8 @@ static bool icl_mg_pll_find_divisors(int clock_khz,=
 bool is_dp, bool use_ssc,
>  				     struct intel_dpll_hw_state *state,
>  				     bool is_dkl)
>  {
> +	static const u8 div1_vals[] =3D { 7, 5, 3, 2 };
>  	u32 dco_min_freq, dco_max_freq;
> -	int div1_vals[] =3D {7, 5, 3, 2};
>  	unsigned int i;
>  	int div2;

--=20
Jani Nikula, Intel Open Source Graphics Center
