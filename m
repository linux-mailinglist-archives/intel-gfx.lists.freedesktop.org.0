Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F175E34AC8B
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 17:31:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D1DE6F40B;
	Fri, 26 Mar 2021 16:31:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DC826F40B
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Mar 2021 16:31:54 +0000 (UTC)
IronPort-SDR: 4X+mwzZUrmUZHEw7OO1Z6WzJPtHGXFV5H459Q6slKyQkfv6mehV/hsIKA4snfnwLlETmjjgDwT
 PKwmhAHL01og==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="171171442"
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="171171442"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 09:31:53 -0700
IronPort-SDR: bTC7LcO2tG387Sp2W4nMDYAvx/RliogUJlvrkQlxu3up+8n7D19oWyH1Rl7FiWzPSGmvl6/7lS
 iwMYwdo6DtqA==
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="416602556"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 09:31:51 -0700
Date: Fri, 26 Mar 2021 18:31:48 +0200
From: Imre Deak <imre.deak@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210326163148.GO2237616@ideak-desk.fi.intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
 <20210325180720.401410-27-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210325180720.401410-27-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 26/50] drm/i915/display/tc: Rename
 safe_mode functions ownership
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
Cc: intel-gfx@lists.freedesktop.org, me@freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 25, 2021 at 11:06:56AM -0700, Matt Roper wrote:
> From: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> =

> When DP_PHY_MODE_STATUS_NOT_SAFE is set, it means that display
> has the control over the TC phy.
> The "not safe" naming is confusing using ownership make it easier
> to read also future platforms will have a new register that does the
> same job as DP_PHY_MODE_STATUS_NOT_SAFE but with the onwership name.
> =

> BSpec: 49294
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 35 ++++++++++++-------------
>  1 file changed, 17 insertions(+), 18 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i9=
15/display/intel_tc.c
> index 71b8edafb1c3..c007803cfd30 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -256,8 +256,8 @@ static bool icl_tc_phy_status_complete(struct intel_d=
igital_port *dig_port)
>  	return val & DP_PHY_MODE_STATUS_COMPLETED(dig_port->tc_phy_fia_idx);
>  }
>  =

> -static bool icl_tc_phy_set_safe_mode(struct intel_digital_port *dig_port,
> -				     bool enable)
> +static bool icl_tc_phy_take_ownership(struct intel_digital_port *dig_por=
t,
> +				      bool take)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
>  	struct intel_uncore *uncore =3D &i915->uncore;
> @@ -267,20 +267,20 @@ static bool icl_tc_phy_set_safe_mode(struct intel_d=
igital_port *dig_port,
>  				PORT_TX_DFLEXDPCSSS(dig_port->tc_phy_fia));
>  	if (val =3D=3D 0xffffffff) {
>  		drm_dbg_kms(&i915->drm,
> -			    "Port %s: PHY in TCCOLD, can't set safe-mode to %s\n",
> -			    dig_port->tc_port_name, enableddisabled(enable));
> +			    "Port %s: PHY in TCCOLD, can't %s ownership\n",
> +			    dig_port->tc_port_name, take ? "take" : "release");
>  =

>  		return false;
>  	}
>  =

>  	val &=3D ~DP_PHY_MODE_STATUS_NOT_SAFE(dig_port->tc_phy_fia_idx);
> -	if (!enable)
> +	if (take)
>  		val |=3D DP_PHY_MODE_STATUS_NOT_SAFE(dig_port->tc_phy_fia_idx);
>  =

>  	intel_uncore_write(uncore,
>  			   PORT_TX_DFLEXDPCSSS(dig_port->tc_phy_fia), val);
>  =

> -	if (enable && wait_for(!icl_tc_phy_status_complete(dig_port), 10))
> +	if (!take && wait_for(!icl_tc_phy_status_complete(dig_port), 10))
>  		drm_dbg_kms(&i915->drm,
>  			    "Port %s: PHY complete clear timed out\n",
>  			    dig_port->tc_port_name);
> @@ -288,7 +288,7 @@ static bool icl_tc_phy_set_safe_mode(struct intel_dig=
ital_port *dig_port,
>  	return true;
>  }
>  =

> -static bool icl_tc_phy_is_in_safe_mode(struct intel_digital_port *dig_po=
rt)
> +static bool icl_tc_phy_is_owned(struct intel_digital_port *dig_port)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
>  	struct intel_uncore *uncore =3D &i915->uncore;
> @@ -303,7 +303,7 @@ static bool icl_tc_phy_is_in_safe_mode(struct intel_d=
igital_port *dig_port)
>  		return true;
>  	}
>  =

> -	return !(val & DP_PHY_MODE_STATUS_NOT_SAFE(dig_port->tc_phy_fia_idx));
> +	return val & DP_PHY_MODE_STATUS_NOT_SAFE(dig_port->tc_phy_fia_idx);
>  }
>  =

>  /*
> @@ -329,7 +329,7 @@ static void icl_tc_phy_connect(struct intel_digital_p=
ort *dig_port,
>  		goto out_set_tbt_alt_mode;
>  	}
>  =

> -	if (!icl_tc_phy_set_safe_mode(dig_port, false) &&
> +	if (!icl_tc_phy_take_ownership(dig_port, true) &&
>  	    !drm_WARN_ON(&i915->drm, dig_port->tc_legacy_port))
>  		goto out_set_tbt_alt_mode;
>  =

> @@ -348,7 +348,7 @@ static void icl_tc_phy_connect(struct intel_digital_p=
ort *dig_port,
>  	if (!(tc_port_live_status_mask(dig_port) & BIT(TC_PORT_DP_ALT))) {
>  		drm_dbg_kms(&i915->drm, "Port %s: PHY sudden disconnect\n",
>  			    dig_port->tc_port_name);
> -		goto out_set_safe_mode;
> +		goto out_release_phy;
>  	}
>  =

>  	if (max_lanes < required_lanes) {
> @@ -356,15 +356,15 @@ static void icl_tc_phy_connect(struct intel_digital=
_port *dig_port,
>  			    "Port %s: PHY max lanes %d < required lanes %d\n",
>  			    dig_port->tc_port_name,
>  			    max_lanes, required_lanes);
> -		goto out_set_safe_mode;
> +		goto out_release_phy;
>  	}
>  =

>  	dig_port->tc_mode =3D TC_PORT_DP_ALT;
>  =

>  	return;
>  =

> -out_set_safe_mode:
> -	icl_tc_phy_set_safe_mode(dig_port, true);
> +out_release_phy:
> +	icl_tc_phy_take_ownership(dig_port, false);
>  out_set_tbt_alt_mode:
>  	dig_port->tc_mode =3D TC_PORT_TBT_ALT;
>  }
> @@ -380,7 +380,7 @@ static void icl_tc_phy_disconnect(struct intel_digita=
l_port *dig_port)
>  		/* Nothing to do, we never disconnect from legacy mode */
>  		break;
>  	case TC_PORT_DP_ALT:
> -		icl_tc_phy_set_safe_mode(dig_port, true);
> +		icl_tc_phy_take_ownership(dig_port, false);
>  		dig_port->tc_mode =3D TC_PORT_TBT_ALT;
>  		break;
>  	case TC_PORT_TBT_ALT:
> @@ -401,8 +401,8 @@ static bool icl_tc_phy_is_connected(struct intel_digi=
tal_port *dig_port)
>  		return dig_port->tc_mode =3D=3D TC_PORT_TBT_ALT;
>  	}
>  =

> -	if (icl_tc_phy_is_in_safe_mode(dig_port)) {
> -		drm_dbg_kms(&i915->drm, "Port %s: PHY still in safe mode\n",
> +	if (!icl_tc_phy_is_owned(dig_port)) {
> +		drm_dbg_kms(&i915->drm, "Port %s: PHY not owned\n",
>  			    dig_port->tc_port_name);
>  =

>  		return false;
> @@ -417,10 +417,9 @@ intel_tc_port_get_current_mode(struct intel_digital_=
port *dig_port)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
>  	u32 live_status_mask =3D tc_port_live_status_mask(dig_port);
> -	bool in_safe_mode =3D icl_tc_phy_is_in_safe_mode(dig_port);
>  	enum tc_port_mode mode;
>  =

> -	if (in_safe_mode ||
> +	if (!icl_tc_phy_is_owned(dig_port) ||
>  	    drm_WARN_ON(&i915->drm, !icl_tc_phy_status_complete(dig_port)))
>  		return TC_PORT_TBT_ALT;
>  =

> -- =

> 2.25.4
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
