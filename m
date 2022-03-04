Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8AD4CD33E
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 12:20:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87D1510E54E;
	Fri,  4 Mar 2022 11:20:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24F8410E54E
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 11:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646392814; x=1677928814;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=mNlh3Y6sLlEqSyKC/lExDJqM+pP1eT2yWyyLKF6Tq8M=;
 b=ONcnVhxNUyT204HmGrf+8ijUUZfudMRDj7y7auSoV+2fhU/jVX59899Z
 jatcCwg5ttuZjIT48gwV92ZOjVGlGN180MA+GMJOm6946Q12+gD3YeP5U
 7DlZvWjkBgwRofnvIIyyzc2bdBW+vkJFTCgaUxJMJDgFhG1Y2msS/XGHh
 4gl+ACq6nhHDhW1Urli0oRCj7ug3pCmNx3maiLtCIaQlLRjVDlgphzABY
 z8HsxiMoxEe3ma5WVs76CJYONcYqXjsVZUUD+uUzc9LYe1SaFVQm9CP47
 w4PdDGM8aYUxf9azaiLURylGmb+kfXBPp+rsDMLvvbaYLXaTqPCJs3qHP A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="253887570"
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="253887570"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 03:20:13 -0800
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="494303099"
Received: from pruilobx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.28.174])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 03:20:12 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220301173128.6988-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
 <20220301173128.6988-7-ville.syrjala@linux.intel.com>
Date: Fri, 04 Mar 2022 13:20:10 +0200
Message-ID: <87v8wu2cd1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 06/11] drm/i915: Use designated initializers
 for bxt_dp_clk_val[]
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
> Use designated initializers to make it clear what is what,
> and to decouple us from the specific ordering of the members.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 8beec5ec72f8..899aa42a858f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -2094,13 +2094,13 @@ struct bxt_clk_div {
>=20=20
>  /* pre-calculated values for DP linkrates */
>  static const struct bxt_clk_div bxt_dp_clk_val[] =3D {
> -	{ 162000, 4, 2, 32, 1677722, 1 },
> -	{ 270000, 4, 1, 27,       0, 1 },
> -	{ 540000, 2, 1, 27,       0, 1 },
> -	{ 216000, 3, 2, 32, 1677722, 1 },
> -	{ 243000, 4, 1, 24, 1258291, 1 },
> -	{ 324000, 4, 1, 32, 1677722, 1 },
> -	{ 432000, 3, 1, 32, 1677722, 1 }
> +	{ .clock =3D 162000, .p1 =3D 4, .p2 =3D 2, .m2_int =3D 32, .m2_frac =3D=
 1677722, .n =3D 1, },
> +	{ .clock =3D 270000, .p1 =3D 4, .p2 =3D 1, .m2_int =3D 27, .m2_frac =3D=
       0, .n =3D 1, },
> +	{ .clock =3D 540000, .p1 =3D 2, .p2 =3D 1, .m2_int =3D 27, .m2_frac =3D=
       0, .n =3D 1, },
> +	{ .clock =3D 216000, .p1 =3D 3, .p2 =3D 2, .m2_int =3D 32, .m2_frac =3D=
 1677722, .n =3D 1, },
> +	{ .clock =3D 243000, .p1 =3D 4, .p2 =3D 1, .m2_int =3D 24, .m2_frac =3D=
 1258291, .n =3D 1, },
> +	{ .clock =3D 324000, .p1 =3D 4, .p2 =3D 1, .m2_int =3D 32, .m2_frac =3D=
 1677722, .n =3D 1, },
> +	{ .clock =3D 432000, .p1 =3D 3, .p2 =3D 1, .m2_int =3D 32, .m2_frac =3D=
 1677722, .n =3D 1, },
>  };
>=20=20
>  static bool

--=20
Jani Nikula, Intel Open Source Graphics Center
