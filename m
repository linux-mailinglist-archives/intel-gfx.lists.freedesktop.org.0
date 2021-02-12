Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1405231A53A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 20:20:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 025D96E7D3;
	Fri, 12 Feb 2021 19:20:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD8F56E7D3
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 19:20:14 +0000 (UTC)
IronPort-SDR: kxvj0PqXNBfbTD1j3HQ8oIJ1E4HmL05Zvl0U6ROIJNHKel2Lxu6z9YTl8Tx8H8qM3ecOcc7s5E
 kSh1wdCC9JuA==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="161606740"
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="161606740"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 11:20:14 -0800
IronPort-SDR: H/tyJlbc7IWTaCzXJ4gIVAc7rchighHu3DOp+EOsUavXqRwjwcwC9rwceA7XgdMlfD2DflopFf
 9/Z+aZ4eRFmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="381833208"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 12 Feb 2021 11:20:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Feb 2021 21:20:11 +0200
Date: Fri, 12 Feb 2021 21:20:11 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YCbU65VC/YP4MRHf@intel.com>
References: <20210212182201.155043-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210212182201.155043-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/display/adl_s: Fix
 dpclka_cfgcr0_clk_off mapping
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 12, 2021 at 10:21:59AM -0800, Jos=E9 Roberto de Souza wrote:
> The cfgcr0/1_clk_off mapping is wrong for adl-s what could cause
> the wrong clock being disabled and leaving a not needed clock
> running consuming more power than needed.
> =

> Bspec: 50287
> Bspec: 53812
> Bspec: 53723
> Fixes: d6d2bc996e45 ("drm/i915/adl_s: Configure Port clock registers for =
ADL-S")
> Cc: Aditya Swarup <aditya.swarup@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c |  4 +++-
>  drivers/gpu/drm/i915/i915_reg.h          | 12 ++++++++++++
>  2 files changed, 15 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 2d6906f6995f..7631e080349d 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1585,7 +1585,9 @@ hsw_set_signal_levels(struct intel_dp *intel_dp,
>  static u32 icl_dpclka_cfgcr0_clk_off(struct drm_i915_private *dev_priv,
>  				     enum phy phy)
>  {
> -	if (IS_ROCKETLAKE(dev_priv)) {
> +	if (IS_ALDERLAKE_S(dev_priv)) {
> +		return ADLS_DPCLKA_CFGCR_DDI_CLK_OFF(phy);
> +	} else if (IS_ROCKETLAKE(dev_priv)) {
>  		return RKL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
>  	} else if (intel_phy_is_combo(dev_priv, phy)) {
>  		return ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 224ad897af34..7c69b50ccc5c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -10416,6 +10416,18 @@ enum skl_power_gate {
>  							ADLS_DPCLKA_DDIJ_SEL_MASK, \
>  							ADLS_DPCLKA_DDIK_SEL_MASK)
>  =

> +#define _ADLS_DPCLKA_DDIA_CLK_OFF			REG_BIT(10)
> +#define _ADLS_DPCLKA_DDIB_CLK_OFF			REG_BIT(11)
> +#define _ADLS_DPCLKA_DDII_CLK_OFF			REG_BIT(24)
> +#define _ADLS_DPCLKA_DDIJ_CLK_OFF			REG_BIT(4)
> +#define _ADLS_DPCLKA_DDIK_CLK_OFF			REG_BIT(5)

So shose are apparently split between the two registers. Why aren't
we defining these so that it would be obvious which register they
live in? This stuff is confusing enough with the hw folks churning
the bits around randomly on every platform, so I don't think we
should add to the confusion by obfuscating the bit defines. I do
like that you named the bits, which isn't case for the other
platforms. Would be nice to fix it all up actually.

Hmm. However, this new defintion seem to match =

ICL_DPCLKA_CFGCR0_DDI_CLK_OFF() 100%. So how can this be fixing
something? Also ICL for sure can't have that many combo PHYs can
it? We should nuke the extra stuff from the ICL defintion if it's
no longer used.

> +#define ADLS_DPCLKA_CFGCR_DDI_CLK_OFF(phy)		_PICK((phy), \
> +							      _ADLS_DPCLKA_DDIA_CLK_OFF, \
> +							      _ADLS_DPCLKA_DDIB_CLK_OFF, \
> +							      _ADLS_DPCLKA_DDII_CLK_OFF, \
> +							      _ADLS_DPCLKA_DDIJ_CLK_OFF, \
> +							      _ADLS_DPCLKA_DDIK_CLK_OFF)
> +
>  /* CNL PLL */
>  #define DPLL0_ENABLE		0x46010
>  #define DPLL1_ENABLE		0x46014
> -- =

> 2.30.1
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
