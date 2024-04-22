Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B1B8AC83F
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 11:02:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EAE310F4B2;
	Mon, 22 Apr 2024 09:02:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bVacJLy/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22B5010F3DD
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 09:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713776552; x=1745312552;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ivuj5PxrLZD3Y1tZOIeXObsu0Xr7bp5DhEe5mG7Zsw0=;
 b=bVacJLy/VTzdPkxaUb7zllxzKTl653YHox+IYgZQ/oapclzepOKwMKRN
 1VBioUSupAXCAHv4uhDw9Lsgx8r4QasIE3dJiO9UUgtakxsYq8hAUoHV5
 MrMYEKG9e799+9pYNNWi/3gx0NZXMWh1ESGIGUFnWsOscedzg2NQr7ExG
 S/qV3JAYq9iYkMcT8eMHdYi2PtdG9+QRzIk8nmoNj4oeCtcmO/KyU8x2d
 I48eSWr7JvJjRQYeZMHv/HA85Lp+F87yddwo9VYA5eQDyT6zrqStvA+DJ
 /CcW7l5h18n8iKnCFec54yywfVG2Bxctmnd5LOlVHcE/RFYjqyLIOaDBl Q==;
X-CSE-ConnectionGUID: 5UvkrTm5RxC4r7TSYXjqZg==
X-CSE-MsgGUID: e/WXGwJbQYGAeuvPo8+PjQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="26823987"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="26823987"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 02:02:29 -0700
X-CSE-ConnectionGUID: 5csopr1FRryUhGFMhGem7w==
X-CSE-MsgGUID: HesGb14vQUGQpWeyQMgegw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="28725546"
Received: from ralbanes-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.63.128])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 02:02:27 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 03/14] drm/i915/dpio:
 s/VLV_PLL_DW9_BCAST/VLV_PCS_DW17_BCAST/
In-Reply-To: <20240422083457.23815-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
 <20240422083457.23815-4-ville.syrjala@linux.intel.com>
Date: Mon, 22 Apr 2024 12:02:24 +0300
Message-ID: <87frvdvkgv.fsf@intel.com>
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
> VLV_PLL_DW9_BCAST is actually VLV_PCS_DW17_BCAST. The address
> does kinda look like it goes to the PLL block on a first glance,
> but broadcast is special and doesn't even exist for the PLL
> (only PCS and TX have it).
>
> The fact that we use a broadcast write here is a bit sketchy
> IMO since we're now blasting the register to all PCS splines
> across the whole PHY. So the PCS registers in the other channel
> (ie. other pipe/port) will also be written. But I guess the
> fact that we always write the same value should make this a nop
> even if the other channel is already enabled (assuming the VBIOS/GOP
> didn't screw up and use some other value...).
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I'll take your word for it. The patch does what the commit message says,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c | 2 +-
>  drivers/gpu/drm/i915/i915_reg.h           | 3 ++-
>  2 files changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index 6693beafe9c0..7e8aca3c87ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1920,7 +1920,7 @@ static void vlv_prepare_pll(const struct intel_crtc=
_state *crtc_state)
>  		vlv_pllb_recal_opamp(dev_priv, phy);
>=20=20
>  	/* Set up Tx target for periodic Rcomp update */
> -	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW9_BCAST, 0x0100000f);
> +	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW17_BCAST, 0x0100000f);
>=20=20
>  	/* Disable target IRef on PLL */
>  	reg_val =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW8(pipe));
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index a2fadcbe0932..8f3c83d2ab8d 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -233,7 +233,6 @@
>  #define _VLV_PLL_DW8_CH1		0x8060
>  #define VLV_PLL_DW8(ch) _PIPE(ch, _VLV_PLL_DW8_CH0, _VLV_PLL_DW8_CH1)
>=20=20
> -#define VLV_PLL_DW9_BCAST		0xc044
>  #define _VLV_PLL_DW9_CH0		0x8044
>  #define _VLV_PLL_DW9_CH1		0x8064
>  #define VLV_PLL_DW9(ch) _PIPE(ch, _VLV_PLL_DW9_CH0, _VLV_PLL_DW9_CH1)
> @@ -370,6 +369,8 @@
>  #define _VLV_PCS_DW14_CH1		0x8438
>  #define	VLV_PCS_DW14(ch) _PORT(ch, _VLV_PCS_DW14_CH0, _VLV_PCS_DW14_CH1)
>=20=20
> +#define VLV_PCS_DW17_BCAST		0xc044
> +
>  #define _VLV_PCS_DW23_CH0		0x825c
>  #define _VLV_PCS_DW23_CH1		0x845c
>  #define VLV_PCS_DW23(ch) _PORT(ch, _VLV_PCS_DW23_CH0, _VLV_PCS_DW23_CH1)

--=20
Jani Nikula, Intel
