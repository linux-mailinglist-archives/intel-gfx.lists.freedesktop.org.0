Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0EC835E319
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 17:45:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5C296E7E6;
	Tue, 13 Apr 2021 15:45:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DACC6E7E6
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 15:45:36 +0000 (UTC)
IronPort-SDR: qKGSVVEAeAhjeIrZt7cjrOH0aWnPQZrNP3rDRhmSHkiC4jL2dzNDQRXkhV+gulDVE51XwcCuiA
 k3vxhD8nLPTg==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="181955381"
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="181955381"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 08:45:20 -0700
IronPort-SDR: Ta/lCTRO4uQZoaPyMM3js45t/5TR9mGSLBDSCaWKDdPLsg6KtrzJVG95GS2Jq4grZ1OA5L/2EX
 hdS2j136FSQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="417903379"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 13 Apr 2021 08:45:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 13 Apr 2021 18:45:16 +0300
Date: Tue, 13 Apr 2021 18:45:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <YHW8jE1Z3DLPxlXs@intel.com>
References: <20210413060927.114342-1-lucas.demarchi@intel.com>
 <20210413060927.114342-4-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210413060927.114342-4-lucas.demarchi@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/display: remove strap checks
 from gen 9
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 12, 2021 at 11:09:27PM -0700, Lucas De Marchi wrote:
> Direction on gen9+ was to stop reading the straps and only rely on the
> VBT for marking the port presence. This happened while dealing with
> WaIgnoreDDIAStrap and instead of using it as a WA, it should now be the
> normal flow. See commit 885d3e5b6f08 ("drm/i915/display: fix comment on
> skl straps").
> =

> For gen 10 it's hard to say if this will work or not since I can't test
> it, so leave it with the same behavior as before.
> =

> For PCH_TGP we should still rely on the VBT to make ports E and F not
> available.
> =

> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 36 ++++++--------------
>  1 file changed, 11 insertions(+), 25 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index d62ce9c87748..5a03cbba0280 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -10883,34 +10883,25 @@ static void intel_setup_outputs(struct drm_i915=
_private *dev_priv)
>  		intel_ddi_init(dev_priv, PORT_B);
>  		intel_ddi_init(dev_priv, PORT_C);
>  		vlv_dsi_init(dev_priv);
> +	} else if (DISPLAY_VER(dev_priv) =3D=3D 9) {

Should be >=3D10 I presume? Or did we want ot handle cnl along with
icl perhaps? Doesn't really matter I suppose, but it's surely
going to consfuse the me the next time I read this.

> +		intel_ddi_init(dev_priv, PORT_A);
> +		intel_ddi_init(dev_priv, PORT_B);
> +		intel_ddi_init(dev_priv, PORT_C);
> +		intel_ddi_init(dev_priv, PORT_D);
> +		intel_ddi_init(dev_priv, PORT_E);
> +		intel_ddi_init(dev_priv, PORT_F);

DDI F isn't a thing on skl/derivatives, so I'd probably skip it on
those. Could just use IS_CNL_WITH_PORT_F() to match the looks of
the icl stuff.

>  	} else if (HAS_DDI(dev_priv)) {
> -		int found;
> +		u32 found;
>  =

>  		if (intel_ddi_crt_present(dev_priv))
>  			intel_crt_init(dev_priv);
>  =

> -		/*
> -		 * Haswell uses DDI functions to detect digital outputs.
> -		 * On SKL pre-D0 the strap isn't connected. Later SKUs may or
> -		 * may not have it - it was supposed to be fixed by the same
> -		 * time we stopped using straps. Assume it's there.
> -		 */
> +		/* Haswell uses DDI functions to detect digital outputs. */
>  		found =3D intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISP=
LAY_DETECTED;
> -		/* WaIgnoreDDIAStrap: skl */
> -		if (found || IS_DISPLAY_VER(dev_priv, 9))
> +		if (found)
>  			intel_ddi_init(dev_priv, PORT_A);
>  =

> -		/* DDI B, C, D, and F detection is indicated by the SFUSE_STRAP
> -		 * register */
> -		if (HAS_PCH_TGP(dev_priv)) {
> -			/* W/A due to lack of STRAP config on TGP PCH*/
> -			found =3D (SFUSE_STRAP_DDIB_DETECTED |
> -				 SFUSE_STRAP_DDIC_DETECTED |
> -				 SFUSE_STRAP_DDID_DETECTED);
> -		} else {
> -			found =3D intel_de_read(dev_priv, SFUSE_STRAP);
> -		}
> -
> +		found =3D intel_de_read(dev_priv, SFUSE_STRAP);
>  		if (found & SFUSE_STRAP_DDIB_DETECTED)
>  			intel_ddi_init(dev_priv, PORT_B);
>  		if (found & SFUSE_STRAP_DDIC_DETECTED)
> @@ -10919,11 +10910,6 @@ static void intel_setup_outputs(struct drm_i915_=
private *dev_priv)
>  			intel_ddi_init(dev_priv, PORT_D);
>  		if (found & SFUSE_STRAP_DDIF_DETECTED)
>  			intel_ddi_init(dev_priv, PORT_F);
> -		/*
> -		 * On SKL we don't have a way to detect DDI-E so we rely on VBT.
> -		 */
> -		if (IS_DISPLAY_VER(dev_priv, 9)
> -			intel_ddi_init(dev_priv, PORT_E);
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
>  		int found;
>  =

> -- =

> 2.31.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
