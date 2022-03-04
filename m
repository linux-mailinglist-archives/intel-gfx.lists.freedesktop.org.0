Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 123CB4CD315
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 12:10:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2272D10EAB7;
	Fri,  4 Mar 2022 11:10:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB58A10EAB7
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 11:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646392211; x=1677928211;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=icfKUC+C6vxEZOP9BHMV1VhHxl5H6fyGOOEFwWViBWA=;
 b=iLdZXl0VcupN+YsVcJ7/MqrsD36/+tM0NV1upmRvv8PVIg1g3JUbFvOW
 1kdh+3GKNF2MgO93BuZAy4mU0xynHRfOvA0gto+KzrNE064WAn6a1oVH/
 i/cbH7k1BkuR7b9wjljqrB1mPLBmRAXYDrQque9tFS96I3LPiHy76EqYj
 8haYV+TgW8wd/Fhar3YVEOZdjV3fF+oL+UKnHxvQqrFaSupR5WUO019La
 aTQvBI6r+0uO/Fun84Lw9I/H7aX0zPHRUk66ZcARen+FkuUkRWGGsPKNG
 Pr7zDuz777EAedAH1I264+o2sjps7j0qZ8g0oc3nxNSlQ1f28p3hjGCY0 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="314669144"
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="314669144"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 03:10:11 -0800
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="642478126"
Received: from pruilobx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.28.174])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 03:10:09 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220301173128.6988-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
 <20220301173128.6988-2-ville.syrjala@linux.intel.com>
Date: Fri, 04 Mar 2022 13:10:07 +0200
Message-ID: <878rtq3re8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/11] drm/i915: Nuke
 skl_wrpll_context_init()
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
> We can trivially replace skl_wrpll_context_init() with a single
> designated initializer.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 13 +++----------
>  1 file changed, 3 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 569903d47aea..1b1b70f0ff93 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -1330,13 +1330,6 @@ struct skl_wrpll_context {
>  	unsigned int p;			/* chosen divider */
>  };
>=20=20
> -static void skl_wrpll_context_init(struct skl_wrpll_context *ctx)
> -{
> -	memset(ctx, 0, sizeof(*ctx));
> -
> -	ctx->min_deviation =3D U64_MAX;
> -}
> -
>  /* DCO freq must be within +1%/-6%  of the DCO central freq */
>  #define SKL_DCO_MAX_PDEVIATION	100
>  #define SKL_DCO_MAX_NDEVIATION	600
> @@ -1519,12 +1512,12 @@ skl_ddi_calculate_wrpll(int clock /* in Hz */,
>  		{ even_dividers, ARRAY_SIZE(even_dividers) },
>  		{ odd_dividers, ARRAY_SIZE(odd_dividers) },
>  	};
> -	struct skl_wrpll_context ctx;
> +	struct skl_wrpll_context ctx =3D {
> +		.min_deviation =3D U64_MAX,
> +	};
>  	unsigned int dco, d, i;
>  	unsigned int p0, p1, p2;
>=20=20
> -	skl_wrpll_context_init(&ctx);
> -
>  	for (d =3D 0; d < ARRAY_SIZE(dividers); d++) {
>  		for (dco =3D 0; dco < ARRAY_SIZE(dco_central_freq); dco++) {
>  			for (i =3D 0; i < dividers[d].n_dividers; i++) {

--=20
Jani Nikula, Intel Open Source Graphics Center
