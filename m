Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C20C229767E
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 20:11:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33B876E3D2;
	Fri, 23 Oct 2020 18:11:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F90B6E3D2
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 18:11:44 +0000 (UTC)
IronPort-SDR: 3AHNSVL3cis8cco2b2HkMQoV2pE1cdpZSgJI38GiIZMhs3sn121cbLNcEcG6R3IW74YYdc9ePV
 hzy9luL+DA3A==
X-IronPort-AV: E=McAfee;i="6000,8403,9783"; a="167807552"
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="167807552"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 11:11:44 -0700
IronPort-SDR: kajaq2Dima1qv74gPbs99OpIO97CvzHAocOgzfpex7LqtE/YV0MhM4lnnlHQ1gTlE1roelZJxi
 vXPwN9xXB2DA==
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="349295766"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 11:11:44 -0700
Date: Fri, 23 Oct 2020 11:11:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20201023181142.GZ627052@mdroper-desk1.amr.corp.intel.com>
References: <20201021133213.328994-1-aditya.swarup@intel.com>
 <20201021133213.328994-6-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201021133213.328994-6-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 05/18] drm/i915/adl_s: Add PHYs for
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

On Wed, Oct 21, 2020 at 06:32:00AM -0700, Aditya Swarup wrote:
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
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++--
>  drivers/gpu/drm/i915/i915_reg.h              | 5 ++++-
>  2 files changed, 10 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 60bacdbe7f92..70ca5d2e5b0a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7333,6 +7333,8 @@ bool intel_phy_is_combo(struct drm_i915_private *de=
v_priv, enum phy phy)
>  {
>  	if (phy =3D=3D PHY_NONE)
>  		return false;
> +	else if (IS_ALDERLAKE_S(dev_priv))
> +		return phy <=3D PHY_E;
>  	else if (IS_ROCKETLAKE(dev_priv))
>  		return phy <=3D PHY_D;
>  	else if (IS_JSL_EHL(dev_priv))
> @@ -7345,7 +7347,7 @@ bool intel_phy_is_combo(struct drm_i915_private *de=
v_priv, enum phy phy)
>  =

>  bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
>  {
> -	if (IS_ROCKETLAKE(dev_priv))
> +	if (IS_ROCKETLAKE(dev_priv) || IS_ALDERLAKE_S(dev_priv))

Minor nitpick:  we're trying to be more consistent about placing the new
platforms first in conditions like this.

Aside from that,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


>  		return false;
>  	else if (INTEL_GEN(dev_priv) >=3D 12)
>  		return phy >=3D PHY_D && phy <=3D PHY_I;
> @@ -7357,7 +7359,9 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_p=
riv, enum phy phy)
>  =

>  enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)
>  {
> -	if (IS_ROCKETLAKE(i915) && port >=3D PORT_D)
> +	if (IS_ALDERLAKE_S(i915) && port >=3D PORT_D)
> +		return (enum phy)port - 2;
> +	else if (IS_ROCKETLAKE(i915) && port >=3D PORT_D)
>  		return (enum phy)port - 1;
>  	else if (IS_JSL_EHL(i915) && port =3D=3D PORT_D)
>  		return PHY_A;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index f6b844ca7a9f..85c5e4fb3e7c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1870,10 +1870,13 @@ static inline bool i915_mmio_reg_valid(i915_reg_t=
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
