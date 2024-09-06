Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F3D96F816
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 17:19:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A70910EA95;
	Fri,  6 Sep 2024 15:19:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HKQR4MC3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF97C10EA95;
 Fri,  6 Sep 2024 15:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725635959; x=1757171959;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=EWzfAsuyAkoeuzeDlKyvlgvn1F99d7bx2AIIk1jClvE=;
 b=HKQR4MC3FFlY436+BogQ2VCF/KYGxTiaPXKuMXF5NGZbxePCtH9nib+j
 6vK9cNr2Vsg1ocyyEsvhs7cV9pk/f/1h8Wlt5VVB6PQcyT9niiNQMLr5/
 nlpLJSGKUJhfAvB0y8p9Aa1mJFcYngNSF36KK4KcUh3PMLxHSVrLkvNf6
 mgiTg8Mruf0g/oAZedvlg24lsLKrDwSKetZ9X7H1JTcIqizOMPDgzDjHs
 C7uVHusha+NFlwdvPBM6haNXe+L3dsShcg8AeWieGjbniHUBKZoXR1ubM
 PKjTHpDrmK22hgkPfRe3nASsN8V0gLPzmFRUEKpcFftaAFACzhEpSA82Y Q==;
X-CSE-ConnectionGUID: +GLMtTRwSmCdQGVcX2F8Sg==
X-CSE-MsgGUID: gH8BFFr0QS+n8jDI9BcHgA==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="34973651"
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="34973651"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 08:19:19 -0700
X-CSE-ConnectionGUID: SieKVZzCTjCmAxASt9tc1A==
X-CSE-MsgGUID: pDnqPkKPSJ6ejss6nY4HhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="65625219"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.62])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 08:19:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/6] drm/i915/cdclk: Add missing braces
In-Reply-To: <20240906143306.15937-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240906143306.15937-1-ville.syrjala@linux.intel.com>
 <20240906143306.15937-2-ville.syrjala@linux.intel.com>
Date: Fri, 06 Sep 2024 18:19:11 +0300
Message-ID: <87jzfon72o.fsf@intel.com>
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

On Fri, 06 Sep 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> CodingStyle says when one branch of an if ladder is braced
> then all of them should be. Make it so.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 66964c7d2a2c..9d870d15d888 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2053,8 +2053,9 @@ static void _bxt_set_cdclk(struct drm_i915_private =
*dev_priv,
>  			dg2_cdclk_squash_program(dev_priv, 0);
>=20=20
>  		icl_cdclk_pll_update(dev_priv, vco);
> -	} else
> +	} else {
>  		bxt_cdclk_pll_update(dev_priv, vco);
> +	}
>=20=20
>  	if (HAS_CDCLK_SQUASH(dev_priv)) {
>  		u16 waveform =3D cdclk_squash_waveform(dev_priv, cdclk);

--=20
Jani Nikula, Intel
