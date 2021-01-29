Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0366308B57
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 18:23:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DB216EB94;
	Fri, 29 Jan 2021 17:23:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E109B6EB94
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 17:23:25 +0000 (UTC)
IronPort-SDR: OEg+U5Ttejvo2yOqhOZrJ72ZuX/Dyg6/i2o0vfgCFta8ztItXsds0G5Kf43X5sEvNFqo4ZuZpW
 vmwbSX+eDEEA==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="160227288"
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="160227288"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 09:23:24 -0800
IronPort-SDR: GO7Y3+5RdBjHWUBqa+nPhN8McZ8cZMRFCD6ebeUO6QrYWHfMQYUY8mG2DAlV32lpp2QyLvZA1j
 ajuMIvTDGCCw==
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="389388793"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 09:23:22 -0800
Date: Fri, 29 Jan 2021 19:23:17 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210129172317.GE183052@ideak-desk.fi.intel.com>
References: <20210128155948.13678-1-ville.syrjala@linux.intel.com>
 <20210128155948.13678-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210128155948.13678-5-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Don't check tc_mode unless
 dealing with a TC PHY
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 28, 2021 at 05:59:48PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> We shouldn't really trust tc_mode on non-TC PHYs since we never
> initialize it explicitly. So let's check for the PHY type first.
> Fortunately TC_PORT_TBT_ALT happens to be zero so I don't think
> there's an actual bug here, just a possibility for a future one
> if someone rearranges the enum values.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index efcdf5499903..5bc5033a2dea 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3463,10 +3463,12 @@ icl_program_mg_dp_mode(struct intel_digital_port =
*dig_port,
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(dig_port->base.base.dev);
>  	enum tc_port tc_port =3D intel_port_to_tc(dev_priv, dig_port->base.port=
);
> +	enum phy phy =3D intel_port_to_phy(dev_priv, dig_port->base.port);
>  	u32 ln0, ln1, pin_assignment;
>  	u8 width;
>  =

> -	if (dig_port->tc_mode =3D=3D TC_PORT_TBT_ALT)
> +	if (!intel_phy_is_tc(dev_priv, phy) ||
> +	    dig_port->tc_mode =3D=3D TC_PORT_TBT_ALT)
>  		return;
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 12) {
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
