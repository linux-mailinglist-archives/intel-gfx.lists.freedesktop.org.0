Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A5B2B9F2D
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 01:20:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2C846E837;
	Fri, 20 Nov 2020 00:20:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F11CF6E837
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 00:20:14 +0000 (UTC)
IronPort-SDR: 8bzBhBhjSj0YgjPiK9fKUNFYtPDaeWRwTIwWuCkgZ4GPEGAIyGDTgDIBZTf5i41RQe6eUGEghV
 YoAYTRRRKgZg==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="159158880"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="159158880"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 16:20:14 -0800
IronPort-SDR: FyrfKt+SdMZzIpX2+X09md2fA2TpdRqLgQQc6ch2HeZ80Kq0NfTQJSlNwMbmuUf5aGDR2CPtav
 10L5uoypLnWw==
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="311259980"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 16:20:13 -0800
Date: Thu, 19 Nov 2020 16:20:12 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20201120002012.GB2099117@mdroper-desk1.amr.corp.intel.com>
References: <20201117185029.22078-1-aditya.swarup@intel.com>
 <20201117185029.22078-8-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201117185029.22078-8-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 07/21] drm/i915/adl_s: Add PHYs for
 Alderlake S
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 17, 2020 at 10:50:15AM -0800, Aditya Swarup wrote:
> From: Anusha Srivatsa <anusha.srivatsa@intel.com>
> =

> Alderlake-S has 5 combo phys, add reg definitions for
> combo phys and update the port to phy helper for ADL-S.
> =

> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 9 +++++++--
>  drivers/gpu/drm/i915/i915_reg.h              | 5 ++++-
>  2 files changed, 11 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index e8874cd22abf..848bcd83b15f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7343,6 +7343,8 @@ bool intel_phy_is_combo(struct drm_i915_private *de=
v_priv, enum phy phy)
>  {
>  	if (phy =3D=3D PHY_NONE)
>  		return false;
> +	else if (IS_ALDERLAKE_S(dev_priv))
> +		return phy <=3D PHY_E;
>  	else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
>  		return phy <=3D PHY_D;
>  	else if (IS_JSL_EHL(dev_priv))
> @@ -7355,7 +7357,8 @@ bool intel_phy_is_combo(struct drm_i915_private *de=
v_priv, enum phy phy)
>  =

>  bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
>  {
> -	if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
> +	if (IS_ALDERLAKE_S(dev_priv) || IS_DG1(dev_priv) ||
> +	    IS_ROCKETLAKE(dev_priv))
>  		return false;
>  	else if (INTEL_GEN(dev_priv) >=3D 12)
>  		return phy >=3D PHY_D && phy <=3D PHY_I;

Since ICL/TGL are the exception rather than the rule for actually having
Type-C ports, it might make more sense to just flip this around and have

        if (TGL)
                ...
        else if (ICL)
                ...
        else
                return false;


Matt

> @@ -7367,7 +7370,9 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_p=
riv, enum phy phy)
>  =

>  enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)
>  {
> -	if ((IS_DG1(i915) || IS_ROCKETLAKE(i915)) && port >=3D PORT_TC1)
> +	if (IS_ALDERLAKE_S(i915) && port >=3D PORT_TC1)
> +		return PHY_B + port - PORT_TC1;
> +	else if ((IS_DG1(i915) || IS_ROCKETLAKE(i915)) && port >=3D PORT_TC1)
>  		return PHY_C + port - PORT_TC1;
>  	else if (IS_JSL_EHL(i915) && port =3D=3D PORT_D)
>  		return PHY_A;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 7ea70b7ffcc6..402ea8cd602b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1872,10 +1872,13 @@ static inline bool i915_mmio_reg_valid(i915_reg_t=
 reg)
>  #define _ICL_COMBOPHY_B			0x6C000
>  #define _EHL_COMBOPHY_C			0x160000
>  #define _RKL_COMBOPHY_D			0x161000
> +#define _ADL_COMBOPHY_E			0x16B000
> +
>  #define _ICL_COMBOPHY(phy)		_PICK(phy, _ICL_COMBOPHY_A, \
>  					      _ICL_COMBOPHY_B, \
>  					      _EHL_COMBOPHY_C, \
> -					      _RKL_COMBOPHY_D)
> +					      _RKL_COMBOPHY_D, \
> +					      _ADL_COMBOPHY_E)
>  =

>  /* CNL/ICL Port CL_DW registers */
>  #define _ICL_PORT_CL_DW(dw, phy)	(_ICL_COMBOPHY(phy) + \
> -- =

> 2.27.0
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
