Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3138AC83E
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 11:02:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFF9E1128FE;
	Mon, 22 Apr 2024 09:02:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ky/cmw8B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 123161128FE
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 09:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713776539; x=1745312539;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=kwzHSkWNrIkeHhOF6W6mS8B3It0yPvat1GaF3T+pyZk=;
 b=Ky/cmw8B2kBawqlwmK7UVVNzlTplNr/YA9/GhbDMiegk9pKRL9EDwpiT
 oEA40Pl3IlUfypoOhQvXbMt1twa0QdWtYpeylK+N5Tr/8KKhKdIuNGipd
 Of5IZ/mc8wU57JsMpjFKMIqSPFzRb07nZ7la0gGf+qrbyeS6lkWqlBXBc
 6OWlHUiO3km6hqhm+stHVWmx48/29yoY3dENRaL2icSBvBedtnp1XIeSM
 gpSn+RTiunIeCa/tiTZ7vETCrLIqSmyC1AmjLvVGG7vbrenEc1qckMM+L
 LqVTSe74UFgNA8qzK+38LK4LHcVTVxFQQVeVR41mOl4zcoE1HRiW8F2Nf w==;
X-CSE-ConnectionGUID: UPGXVoeVST++MaId9PnSvA==
X-CSE-MsgGUID: TVfqsZO7SF67Td7XeCdzYQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="13077827"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="13077827"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 02:02:16 -0700
X-CSE-ConnectionGUID: +O6oQrgZRsCwtYdzKWsr1Q==
X-CSE-MsgGUID: 5SB68JSlSQeO7TFdJY2J3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="28415621"
Received: from ralbanes-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.63.128])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 02:01:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 02/14] drm/i915/dpio: s/VLV_REF_DW13/VLV_REF_DW11/
In-Reply-To: <20240422083457.23815-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
 <20240422083457.23815-3-ville.syrjala@linux.intel.com>
Date: Mon, 22 Apr 2024 12:01:37 +0300
Message-ID: <87il09vki6.fsf@intel.com>
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

On Mon, 22 Apr 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Our VLV_REF_DW13 is actually VLV_REF_DW11. Rename it.

I'll take your word for it. The patch does what the commit message says,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c | 8 ++++----
>  drivers/gpu/drm/i915/i915_reg.h           | 4 ++--
>  2 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index 49274d632716..6693beafe9c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1880,19 +1880,19 @@ static void vlv_pllb_recal_opamp(struct drm_i915_=
private *dev_priv,
>  	reg_val |=3D 0x00000030;
>  	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW9(1), reg_val);
>=20=20
> -	reg_val =3D vlv_dpio_read(dev_priv, phy, VLV_REF_DW13);
> +	reg_val =3D vlv_dpio_read(dev_priv, phy, VLV_REF_DW11);
>  	reg_val &=3D 0x00ffffff;
>  	reg_val |=3D 0x8c000000;
> -	vlv_dpio_write(dev_priv, phy, VLV_REF_DW13, reg_val);
> +	vlv_dpio_write(dev_priv, phy, VLV_REF_DW11, reg_val);
>=20=20
>  	reg_val =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW9(1));
>  	reg_val &=3D 0xffffff00;
>  	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW9(1), reg_val);
>=20=20
> -	reg_val =3D vlv_dpio_read(dev_priv, phy, VLV_REF_DW13);
> +	reg_val =3D vlv_dpio_read(dev_priv, phy, VLV_REF_DW11);
>  	reg_val &=3D 0x00ffffff;
>  	reg_val |=3D 0xb0000000;
> -	vlv_dpio_write(dev_priv, phy, VLV_REF_DW13, reg_val);
> +	vlv_dpio_write(dev_priv, phy, VLV_REF_DW11, reg_val);
>  }
>=20=20
>  static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 8eb6c2bf4557..a2fadcbe0932 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -246,8 +246,8 @@
>  #define _VLV_PLL_DW11_CH1		0x806c
>  #define VLV_PLL_DW11(ch) _PIPE(ch, _VLV_PLL_DW11_CH0, _VLV_PLL_DW11_CH1)
>=20=20
> -/* Spec for ref block start counts at DW10 */
> -#define VLV_REF_DW13			0x80ac
> +/* Spec for ref block start counts at DW8 */
> +#define VLV_REF_DW11			0x80ac
>=20=20
>  #define VLV_CMN_DW0			0x8100

--=20
Jani Nikula, Intel
