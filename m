Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 464C5A7BDA3
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 15:21:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA57F10EBA8;
	Fri,  4 Apr 2025 13:21:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EDjTNvfq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5231810EBA8
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Apr 2025 13:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743772868; x=1775308868;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=4WNsJMuQHc5UUsW7KUn16fmcLC4KlQhoWQcgmE6OlBc=;
 b=EDjTNvfq4U8b4mEmYOgBLhQ3YDkow/w4KhtdFzRUaho3fFSPVvOQIGZj
 72sJ7eE6TKoG8x/QY+hubiTkE7rPGYdJi8+PtW6aeVJQH1VsoQoelyhpb
 TXkmGJUMpW5tazQBJLnRc10vQLnBrJqgz1W6nvjkucZlBMbebn1q80E0h
 XBry1fNTav9i2ZZfSFUpESSShoGq2EYyaM4YpaOB4ej5w5yTHTi0JpolQ
 +7TdvnBSsmHqB9KqLl6lBRDVLZnFY88r9jwqTwF1x/LC2ps0Ox5jsCv3o
 scFvxvHDrWpod8y2iyPNcN3sYEvArnBAKcuq4d9kBioMjk9ttNvKu+CRd g==;
X-CSE-ConnectionGUID: zGWMMjmUQFiQzKO0cbmRnw==
X-CSE-MsgGUID: suzAH9ZbRUCt8E3BIvtcgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11394"; a="56581922"
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="56581922"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 06:21:08 -0700
X-CSE-ConnectionGUID: mtBWIspzTcW0MKfMAGbMWA==
X-CSE-MsgGUID: w+jp9qnFSDCEMhM1IuoCDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="132017404"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.234])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 06:21:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/3] drm/i915/dsi: Don't set/read the DSI C clock
 divider on GLK
In-Reply-To: <20250314150136.22564-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250314150136.22564-1-ville.syrjala@linux.intel.com>
 <20250314150136.22564-2-ville.syrjala@linux.intel.com>
Date: Fri, 04 Apr 2025 16:21:03 +0300
Message-ID: <87cydsyse8.fsf@intel.com>
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

On Fri, 14 Mar 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> GLK doesn't use the DSI C clock at all, no need to program
> the divider for it. Bspec even says: "Do not program this field".
>
> However looks like some firmware versions program this and
> some do not. In order to avoid bogus fastset mismatches
> we should also filter it out during readout.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/vlv_dsi_pll.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm=
/i915/display/vlv_dsi_pll.c
> index 2ed47e7d1051..0c88924bc2cd 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> @@ -356,6 +356,8 @@ u32 bxt_dsi_get_pclk(struct intel_encoder *encoder,
>  	u32 pclk;
>=20=20
>  	config->dsi_pll.ctrl =3D intel_de_read(dev_priv, BXT_DSI_PLL_CTL);
> +	if (IS_GEMINILAKE(dev_priv))
> +		config->dsi_pll.ctrl &=3D ~BXT_DSIC_16X_BY2;

~BXT_DSIC_16X_MASK ?

Other than that,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Also needs a rebase on struct intel_display changes...


>=20=20
>  	pclk =3D bxt_dsi_pclk(encoder, config);
>=20=20
> @@ -514,7 +516,9 @@ int bxt_dsi_pll_compute(struct intel_encoder *encoder,
>  	 * Spec says both have to be programmed, even if one is not getting
>  	 * used. Configure MIPI_CLOCK_CTL dividers in modeset
>  	 */
> -	config->dsi_pll.ctrl =3D dsi_ratio | BXT_DSIA_16X_BY2 | BXT_DSIC_16X_BY=
2;
> +	config->dsi_pll.ctrl =3D dsi_ratio | BXT_DSIA_16X_BY2;
> +	if (!IS_GEMINILAKE(dev_priv))
> +		config->dsi_pll.ctrl |=3D BXT_DSIC_16X_BY2;
>=20=20
>  	/* As per recommendation from hardware team,
>  	 * Prog PVD ratio =3D1 if dsi ratio <=3D 50

--=20
Jani Nikula, Intel
