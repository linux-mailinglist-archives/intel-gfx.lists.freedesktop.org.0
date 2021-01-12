Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA1F2F26BB
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 04:33:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E823289F2A;
	Tue, 12 Jan 2021 03:33:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9109D89F2A
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 03:33:13 +0000 (UTC)
IronPort-SDR: 9pDYjmwWGkPlXH3w6X947xulYCZIK5ClEF25X43YahU9Np3l5bKNXEjrwKVuGfvKGbjhxuj9dF
 4pN2hTO167Iw==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="174465556"
X-IronPort-AV: E=Sophos;i="5.79,340,1602572400"; d="scan'208";a="174465556"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 19:33:12 -0800
IronPort-SDR: ZnF0nzlfCNlKeU58qzgVzke20rXb6ac0f0brjeijpQSNeo1RmBm9oQp6HG6EIzNJumQON9Z/RI
 5jMudIPFoTHw==
X-IronPort-AV: E=Sophos;i="5.79,340,1602572400"; d="scan'208";a="352855421"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 19:33:12 -0800
Date: Mon, 11 Jan 2021 19:33:09 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20210112033309.GB21197@mdroper-desk1.amr.corp.intel.com>
References: <20201205010844.361880-1-aditya.swarup@intel.com>
 <20201205010844.361880-8-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201205010844.361880-8-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 07/22] drm/i915/adl_s: Add PHYs for
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

On Fri, Dec 04, 2020 at 05:08:29PM -0800, Aditya Swarup wrote:
> From: Anusha Srivatsa <anusha.srivatsa@intel.com>
> =

> Alderlake-S has 5 combo phys, add reg definitions for
> combo phys and update the port to phy helper for ADL-S.
> =

> v2:
> - Change IS_GEN() >=3D 12 to IS_TIGERLAKE() in intel_phy_is_tc()
> and return false for platforms RKL,DG1 and ADLS.(mdroper)
> =

> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++----
>  drivers/gpu/drm/i915/i915_reg.h              |  5 ++++-
>  2 files changed, 10 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 9187a20a8aca..2d1c5bfe4032 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7397,6 +7397,8 @@ bool intel_phy_is_combo(struct drm_i915_private *de=
v_priv, enum phy phy)
>  {
>  	if (phy =3D=3D PHY_NONE)
>  		return false;
> +	else if (IS_ALDERLAKE_S(dev_priv))
> +		return phy <=3D PHY_E;
>  	else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
>  		return phy <=3D PHY_D;
>  	else if (IS_JSL_EHL(dev_priv))
> @@ -7409,9 +7411,7 @@ bool intel_phy_is_combo(struct drm_i915_private *de=
v_priv, enum phy phy)
>  =

>  bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
>  {
> -	if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
> -		return false;
> -	else if (INTEL_GEN(dev_priv) >=3D 12)
> +	if (IS_TIGERLAKE(dev_priv))
>  		return phy >=3D PHY_D && phy <=3D PHY_I;
>  	else if (INTEL_GEN(dev_priv) >=3D 11 && !IS_JSL_EHL(dev_priv))
>  		return phy >=3D PHY_C && phy <=3D PHY_F;
> @@ -7421,7 +7421,9 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_p=
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
> index cdc67f583a9c..60a0d4c35cae 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1874,10 +1874,13 @@ static inline bool i915_mmio_reg_valid(i915_reg_t=
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
