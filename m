Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3AC4267B5
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 12:23:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 918E16F41C;
	Fri,  8 Oct 2021 10:23:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CA186F41E
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 10:23:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="213620219"
X-IronPort-AV: E=Sophos;i="5.85,357,1624345200"; d="scan'208";a="213620219"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 03:23:35 -0700
X-IronPort-AV: E=Sophos;i="5.85,357,1624345200"; d="scan'208";a="489409312"
Received: from ssedpiaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.40.186])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 03:23:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211006204937.30774-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
 <20211006204937.30774-6-ville.syrjala@linux.intel.com>
Date: Fri, 08 Oct 2021 13:23:30 +0300
Message-ID: <87v927x1b1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 05/16] drm/i915: Remove dead
 DKL_TX_LOADGEN_SHARING_PMD_DISABLE stuff
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

On Wed, 06 Oct 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> DKL_TX_LOADGEN_SHARING_PMD_DISABLE doesn't even seem to exist,
> also the spec says to skip all loadgen stuff.
>
> The code was dead anyway since it wasn't actually writing the value
> anywhere.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I admit not looking this up in spec, but this is dead code removal
anyway...

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 8 --------
>  drivers/gpu/drm/i915/i915_reg.h          | 1 -
>  2 files changed, 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 0c9ed705af47..b8ec53d9e3b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1309,14 +1309,6 @@ static void tgl_dkl_phy_set_signal_levels(struct i=
ntel_encoder *encoder,
>  		val =3D intel_de_read(dev_priv, DKL_TX_DPCNTL2(tc_port));
>  		val &=3D ~DKL_TX_DP20BITMODE;
>  		intel_de_write(dev_priv, DKL_TX_DPCNTL2(tc_port), val);
> -
> -		if ((intel_crtc_has_dp_encoder(crtc_state) &&
> -		     crtc_state->port_clock =3D=3D 162000) ||
> -		    (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
> -		     crtc_state->port_clock =3D=3D 594000))
> -			val |=3D DKL_TX_LOADGEN_SHARING_PMD_DISABLE;
> -		else
> -			val &=3D ~DKL_TX_LOADGEN_SHARING_PMD_DISABLE;
>  	}
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 5e7a55e6ef50..8c8152de643f 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -11022,7 +11022,6 @@ enum skl_power_gate {
>  						     _DKL_TX_DPCNTL1)
>=20=20
>  #define _DKL_TX_DPCNTL2				0x2C8
> -#define  DKL_TX_LOADGEN_SHARING_PMD_DISABLE            REG_BIT(12)
>  #define  DKL_TX_DP20BITMODE				(1 << 2)
>  #define DKL_TX_DPCNTL2(tc_port) _MMIO(_PORT(tc_port, \
>  						     _DKL_PHY1_BASE, \

--=20
Jani Nikula, Intel Open Source Graphics Center
