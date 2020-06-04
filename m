Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1001EE927
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 19:09:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 933D46E520;
	Thu,  4 Jun 2020 17:09:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31A9B6E520
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 17:09:18 +0000 (UTC)
IronPort-SDR: 4CPF2yjjN/e5er5rlFyO7xpdWCP8e4V5rp/852EN/TrOH0qBpT6Cn8Qe9Oi65968znWvZ5+m+C
 NMTW9p9Kc/LA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 10:09:17 -0700
IronPort-SDR: iSyoWaHT8mhWbpWSrBWA7mkXpk9NPTcQ0wyQSRuotUFvFvOPrabFss5M2p65IvkISqemfBd0Rv
 ck1qYk1n8RgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="312953541"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 04 Jun 2020 10:09:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Jun 2020 20:09:14 +0300
Date: Thu, 4 Jun 2020 20:09:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200604170914.GA6112@intel.com>
References: <20200603211529.3005059-1-matthew.d.roper@intel.com>
 <20200603211529.3005059-6-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603211529.3005059-6-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 05/15] drm/i915/rkl: Setup ports/phys
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

On Wed, Jun 03, 2020 at 02:15:19PM -0700, Matt Roper wrote:
> RKL uses DDI's A, B, TC1, and TC2 which need to map to combo PHY's A-D.
> =

> Bspec: 49181
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Aditya Swarup <aditya.swarup@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 34 ++++++++++++--------
>  drivers/gpu/drm/i915/i915_reg.h              |  4 ++-
>  2 files changed, 24 insertions(+), 14 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index b4f8c88c779f..019fef8023ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7218,30 +7218,33 @@ bool intel_phy_is_combo(struct drm_i915_private *=
dev_priv, enum phy phy)
>  {
>  	if (phy =3D=3D PHY_NONE)
>  		return false;
> -
> -	if (IS_ELKHARTLAKE(dev_priv))
> +	else if (IS_ROCKETLAKE(dev_priv))
> +		return phy <=3D PHY_D;

Or just 'return true' since combo PHYs is all we have.

/me weeps when looking at these functions.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +	else if (IS_ELKHARTLAKE(dev_priv))
>  		return phy <=3D PHY_C;
> -
> -	if (INTEL_GEN(dev_priv) >=3D 11)
> +	else if (INTEL_GEN(dev_priv) >=3D 11)
>  		return phy <=3D PHY_B;
> -
> -	return false;
> +	else
> +		return false;
>  }
>  =

>  bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
>  {
> -	if (INTEL_GEN(dev_priv) >=3D 12)
> +	if (IS_ROCKETLAKE(dev_priv))
> +		return false;
> +	else if (INTEL_GEN(dev_priv) >=3D 12)
>  		return phy >=3D PHY_D && phy <=3D PHY_I;
> -
> -	if (INTEL_GEN(dev_priv) >=3D 11 && !IS_ELKHARTLAKE(dev_priv))
> +	else if (INTEL_GEN(dev_priv) >=3D 11 && !IS_ELKHARTLAKE(dev_priv))
>  		return phy >=3D PHY_C && phy <=3D PHY_F;
> -
> -	return false;
> +	else
> +		return false;
>  }
>  =

>  enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)
>  {
> -	if (IS_ELKHARTLAKE(i915) && port =3D=3D PORT_D)
> +	if (IS_ROCKETLAKE(i915) && port >=3D PORT_D)
> +		return (enum phy)port - 1;
> +	else if (IS_ELKHARTLAKE(i915) && port =3D=3D PORT_D)
>  		return PHY_A;
>  =

>  	return (enum phy)port;
> @@ -16829,7 +16832,12 @@ static void intel_setup_outputs(struct drm_i915_=
private *dev_priv)
>  	if (!HAS_DISPLAY(dev_priv) || !INTEL_DISPLAY_ENABLED(dev_priv))
>  		return;
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 12) {
> +	if (IS_ROCKETLAKE(dev_priv)) {
> +		intel_ddi_init(dev_priv, PORT_A);
> +		intel_ddi_init(dev_priv, PORT_B);
> +		intel_ddi_init(dev_priv, PORT_D);	/* DDI TC1 */
> +		intel_ddi_init(dev_priv, PORT_E);	/* DDI TC2 */
> +	} else if (INTEL_GEN(dev_priv) >=3D 12) {
>  		intel_ddi_init(dev_priv, PORT_A);
>  		intel_ddi_init(dev_priv, PORT_B);
>  		intel_ddi_init(dev_priv, PORT_D);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index db031269a05a..85137d268c4a 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1869,9 +1869,11 @@ static inline bool i915_mmio_reg_valid(i915_reg_t =
reg)
>  #define _ICL_COMBOPHY_A			0x162000
>  #define _ICL_COMBOPHY_B			0x6C000
>  #define _EHL_COMBOPHY_C			0x160000
> +#define _RKL_COMBOPHY_D			0x161000
>  #define _ICL_COMBOPHY(phy)		_PICK(phy, _ICL_COMBOPHY_A, \
>  					      _ICL_COMBOPHY_B, \
> -					      _EHL_COMBOPHY_C)
> +					      _EHL_COMBOPHY_C, \
> +					      _RKL_COMBOPHY_D)
>  =

>  /* CNL/ICL Port CL_DW registers */
>  #define _ICL_PORT_CL_DW(dw, phy)	(_ICL_COMBOPHY(phy) + \
> -- =

> 2.24.1
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
