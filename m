Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 833337204B9
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 16:42:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D83F110E6A9;
	Fri,  2 Jun 2023 14:41:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D37510E6A9
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 14:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685716916; x=1717252916;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=bXEtXJjoKc2eiJrnRd/idIG3x2UgDvNdre3nxwc6Q/I=;
 b=kZ/usswkra60t8VDOMn1LTUylApABvWt9KfDt42tStDoXJEkfmWCTjUC
 ye/Ibfx6p8jgifnDWKRan9O9OYO+/eMhmMb1kQFFl7oJ3o53ewVcsPlg4
 RqLGo2vXrnNZxRLpFnNbfkLJOMu9cqhHsh2bnLTIiTlM2UcRZAf644+PA
 FXsdfzbgVopd9M9K1vqH8knE1BYFe+UW1r7Afu+6uPmMjSYq3XJzXpq74
 Ha+lHEVAqK/pdlSd/zPPj27Ls26JgyNJe/frP0yFzZkdKV3gRiaGCKJcs
 Ke4LAwt85QBrpRWpzaQeVsIF6Yo5MWm2BlGR2F50EchTzB0yXzu1sYXRH w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="353377104"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="353377104"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 07:41:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="772905206"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="772905206"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.111])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 07:41:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230531134806.23065-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
 <20230531134806.23065-7-ville.syrjala@linux.intel.com>
Date: Fri, 02 Jun 2023 17:41:50 +0300
Message-ID: <87edmudiz5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 6/7] drm/i915: Init DDI outputs based on
 port_mask on skl+
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 31 May 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Instead of listing every platform's possible DDI outputs
> in intel_setup_outputs() just loop over the new port_mask
> to achieve the same thing.

For posterity, I think I rejected a patch from Lucas generalizing the
initialization in the past. I think that used the VBT child device list
directly, and I wanted to preserve a clear way to check what the
supported ports for a platform were. I think having the ports in runtime
info now covers that concern. And with this, I'm open to using the child
device list as it can now be cross-checked against the runtime info.

>
> HSW/BDW were left as is since they still look at the straps
> as well.
>
> DSI is still a mess. For now just check for the relevant
> platforms explicitly.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 80 ++++----------------
>  1 file changed, 13 insertions(+), 67 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index d3fc498c82c1..12f2e3897595 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7387,73 +7387,19 @@ void intel_setup_outputs(struct drm_i915_private =
*dev_priv)
>  	if (!HAS_DISPLAY(dev_priv))
>  		return;
>=20=20
> -	if (IS_METEORLAKE(dev_priv)) {
> -		intel_ddi_init(dev_priv, PORT_A);
> -		intel_ddi_init(dev_priv, PORT_B);
> -		intel_ddi_init(dev_priv, PORT_TC1);
> -		intel_ddi_init(dev_priv, PORT_TC2);
> -		intel_ddi_init(dev_priv, PORT_TC3);
> -		intel_ddi_init(dev_priv, PORT_TC4);
> -	} else if (IS_DG2(dev_priv)) {
> -		intel_ddi_init(dev_priv, PORT_A);
> -		intel_ddi_init(dev_priv, PORT_B);
> -		intel_ddi_init(dev_priv, PORT_C);
> -		intel_ddi_init(dev_priv, PORT_D_XELPD);
> -		intel_ddi_init(dev_priv, PORT_TC1);
> -	} else if (IS_ALDERLAKE_P(dev_priv)) {
> -		intel_ddi_init(dev_priv, PORT_A);
> -		intel_ddi_init(dev_priv, PORT_B);
> -		intel_ddi_init(dev_priv, PORT_TC1);
> -		intel_ddi_init(dev_priv, PORT_TC2);
> -		intel_ddi_init(dev_priv, PORT_TC3);
> -		intel_ddi_init(dev_priv, PORT_TC4);
> -		icl_dsi_init(dev_priv);
> -	} else if (IS_ALDERLAKE_S(dev_priv)) {
> -		intel_ddi_init(dev_priv, PORT_A);
> -		intel_ddi_init(dev_priv, PORT_TC1);
> -		intel_ddi_init(dev_priv, PORT_TC2);
> -		intel_ddi_init(dev_priv, PORT_TC3);
> -		intel_ddi_init(dev_priv, PORT_TC4);
> -	} else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv)) {
> -		intel_ddi_init(dev_priv, PORT_A);
> -		intel_ddi_init(dev_priv, PORT_B);
> -		intel_ddi_init(dev_priv, PORT_TC1);
> -		intel_ddi_init(dev_priv, PORT_TC2);
> -	} else if (DISPLAY_VER(dev_priv) >=3D 12) {
> -		intel_ddi_init(dev_priv, PORT_A);
> -		intel_ddi_init(dev_priv, PORT_B);
> -		intel_ddi_init(dev_priv, PORT_TC1);
> -		intel_ddi_init(dev_priv, PORT_TC2);
> -		intel_ddi_init(dev_priv, PORT_TC3);
> -		intel_ddi_init(dev_priv, PORT_TC4);
> -		intel_ddi_init(dev_priv, PORT_TC5);
> -		intel_ddi_init(dev_priv, PORT_TC6);
> -		icl_dsi_init(dev_priv);
> -	} else if (IS_JSL_EHL(dev_priv)) {
> -		intel_ddi_init(dev_priv, PORT_A);
> -		intel_ddi_init(dev_priv, PORT_B);
> -		intel_ddi_init(dev_priv, PORT_C);
> -		intel_ddi_init(dev_priv, PORT_D);
> -		icl_dsi_init(dev_priv);
> -	} else if (DISPLAY_VER(dev_priv) =3D=3D 11) {
> -		intel_ddi_init(dev_priv, PORT_A);
> -		intel_ddi_init(dev_priv, PORT_B);
> -		intel_ddi_init(dev_priv, PORT_C);
> -		intel_ddi_init(dev_priv, PORT_D);
> -		intel_ddi_init(dev_priv, PORT_E);
> -		intel_ddi_init(dev_priv, PORT_F);
> -		icl_dsi_init(dev_priv);
> -	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> -		intel_ddi_init(dev_priv, PORT_A);
> -		intel_ddi_init(dev_priv, PORT_B);
> -		intel_ddi_init(dev_priv, PORT_C);
> -		vlv_dsi_init(dev_priv);
> -	} else if (DISPLAY_VER(dev_priv) >=3D 9) {
> -		intel_ddi_init(dev_priv, PORT_A);
> -		intel_ddi_init(dev_priv, PORT_B);
> -		intel_ddi_init(dev_priv, PORT_C);
> -		intel_ddi_init(dev_priv, PORT_D);
> -		intel_ddi_init(dev_priv, PORT_E);
> +	if (DISPLAY_VER(dev_priv) >=3D 9) {
> +		enum port port;
> +
> +		for_each_port_masked(port, DISPLAY_RUNTIME_INFO(dev_priv)->port_mask)
> +			intel_ddi_init(dev_priv, port);
> +
> +		/* FIXME do something about DSI */
> +		if (IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv) ||
> +		    DISPLAY_VER(dev_priv) =3D=3D 11)
> +			icl_dsi_init(dev_priv);

This reflects current code, but apparently commit e341c618acde
("drm/i915/adl_s: Initialize display for ADL-S") stopped initializing
DSI for ADL-S. It does support DSI.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +
> +		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> +			vlv_dsi_init(dev_priv);
>  	} else if (HAS_DDI(dev_priv)) {
>  		u32 found;

--=20
Jani Nikula, Intel Open Source Graphics Center
