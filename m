Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FDD2848E5
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 10:59:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0767689C3F;
	Tue,  6 Oct 2020 08:59:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAF368913B
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 08:59:44 +0000 (UTC)
IronPort-SDR: 67SSCfcfLFbyifVMHPxYdAJ2Tw/lRB/9CGYAtv6wyGlFM11fi5mkiBHwL/z1bLQyBAGi8pBq93
 K3yoUAg+nkNA==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="164557798"
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="164557798"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 01:59:44 -0700
IronPort-SDR: 5uKiJbA9iRcoYS0vovxWKDTwRqX5qhU+757O82hVsxc8eiH+7urDiUI2iSqM153Mj6F6H4jMCO
 B6DTLH0EqdDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="387800066"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 06 Oct 2020 01:59:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Oct 2020 11:59:41 +0300
Date: Tue, 6 Oct 2020 11:59:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20201006085941.GS6112@intel.com>
References: <20201003001846.1271151-2-imre.deak@intel.com>
 <20201006013555.1488262-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201006013555.1488262-1-imre.deak@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 1/5] drm/i915/skl: Work around incorrect
 BIOS WRPLL PDIV programming
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

On Tue, Oct 06, 2020 at 04:35:55AM +0300, Imre Deak wrote:
> The BIOS of at least one ASUS-Z170M system with an SKL I have programs
> the 101b WRPLL PDIV divider value, which is the encoding for PDIV=3D7 with
> bit#0 incorrectly set.
> =

> This happens with the
> =

> "3840x2160": 30 262750 3840 3888 3920 4000 2160 2163 2168 2191 0x48 0x9
> =

> HDMI mode (scaled from a 1024x768 src fb) set by BIOS and the
> =

> ref_clock=3D24000, dco_integer=3D383, dco_fraction=3D5802, pdiv=3D7, qdiv=
=3D1, kdiv=3D1
> =

> WRPLL parameters (assuming PDIV=3D7 was the intended setting). This
> corresponds to 262749 PLL frequency/port clock.
> =

> Later the driver sets the same mode for which it calculates the same
> dco_int/dco_frac/div WRPLL parameters (with the correct PDIV=3D7 encoding=
).
> =

> Based on the above, let's assume that PDIV=3D7 was intended and the HW
> just ignores bit#0 in the PDIV register field for this setting, treating
> 100b and 101b encodings the same way.
> =

> While at it add the MISSING_CASE() for the p0,p2 divider decodings.
> =

> v2: (Ville)
> - Add a define for the incorrect divider value.
> - Emit only a debug message when detecting the incorrect divider value.
> - Use fallthrough from the incorrect divider value case.
> - Add the MISSING_CASE()s.
> =

> v3: Return 0 freq for incorrect divider values. (Ville)
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 13 +++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h               |  1 +
>  2 files changed, 14 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index e08684e34078..fff4e154b391 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -1602,9 +1602,19 @@ static int skl_ddi_wrpll_get_freq(struct drm_i915_=
private *i915,
>  	case DPLL_CFGCR2_PDIV_3:
>  		p0 =3D 3;
>  		break;
> +	case DPLL_CFGCR2_PDIV_7_INVALID:
> +		/*
> +		 * Incorrect ASUS-Z170M BIOS setting, the HW seems to ignore bit#0,
> +		 * handling it the same way as PDIV_7.
> +		 */
> +		drm_dbg_kms(&i915->drm, "Invalid WRPLL PDIV divider value, fixing it.\=
n");
> +		fallthrough;
>  	case DPLL_CFGCR2_PDIV_7:
>  		p0 =3D 7;
>  		break;
> +	default:
> +		MISSING_CASE(p0);
> +		return 0;
>  	}
>  =

>  	switch (p2) {
> @@ -1620,6 +1630,9 @@ static int skl_ddi_wrpll_get_freq(struct drm_i915_p=
rivate *i915,
>  	case DPLL_CFGCR2_KDIV_1:
>  		p2 =3D 1;
>  		break;
> +	default:
> +		MISSING_CASE(p2);
> +		return 0;
>  	}
>  =

>  	dco_freq =3D (pll_state->cfgcr1 & DPLL_CFGCR1_DCO_INTEGER_MASK) *
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 88c215cf97d4..d911583526db 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -10261,6 +10261,7 @@ enum skl_power_gate {
>  #define  DPLL_CFGCR2_PDIV_2 (1 << 2)
>  #define  DPLL_CFGCR2_PDIV_3 (2 << 2)
>  #define  DPLL_CFGCR2_PDIV_7 (4 << 2)
> +#define  DPLL_CFGCR2_PDIV_7_INVALID	(5 << 2)
>  #define  DPLL_CFGCR2_CENTRAL_FREQ_MASK	(3)
>  =

>  #define DPLL_CFGCR1(id)	_MMIO_PIPE((id) - SKL_DPLL1, _DPLL1_CFGCR1, _DPL=
L2_CFGCR1)
> -- =

> 2.25.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
