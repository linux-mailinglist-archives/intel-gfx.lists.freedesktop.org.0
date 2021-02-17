Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A5A31DA42
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 14:22:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23C366E0F2;
	Wed, 17 Feb 2021 13:22:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B9F16E0F2
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 13:22:37 +0000 (UTC)
IronPort-SDR: 7vs5gmwHvaOkAhg7GhY2kdBvVEBrkj8Nz4gbatGU5u9OOjfdb+bVbXDPsfeG8uWqyTqm3gY88I
 xkC5bsvf9Lmw==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="170848558"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="170848558"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 05:22:37 -0800
IronPort-SDR: h29+hOlJ/r74Vfj0jyrHCzYi13t6vdrpZCy+/Nrq+cvJ7rr6utQbeHTQtF5NBIxqjMqhQPL6qq
 Rt2aNW4/7GkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="377995353"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 17 Feb 2021 05:22:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 17 Feb 2021 15:22:33 +0200
Date: Wed, 17 Feb 2021 15:22:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
Message-ID: <YC0YmV6mYWZUf+DJ@intel.com>
References: <20210201150228.10001-1-shawn.c.lee@intel.com>
 <20210217065519.31081-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210217065519.31081-1-shawn.c.lee@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/vbt: update DP max link rate
 table
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
Cc: Cooper Chiou <cooper.chiou@intel.com>, intel-gfx@lists.freedesktop.org,
 William Tseng <william.tseng@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 17, 2021 at 02:55:19PM +0800, Lee Shawn C wrote:
> According to Bspec #20124, max link rate table for DP was updated
> at BDB version 230. Max link rate can support upto UHBR.
> =

> After migrate to BDB v230, the definition for LBR, HBR2 and HBR3
> were changed. For backward compatibility. If BDB version was
> from 216 to 229. Driver have to follow original rule to configure
> DP max link rate value from VBT.
> =

> v2: split the mapping table to two for old and new BDB definition.
> =

> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: William Tseng <william.tseng@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 72 +++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 23 ++++--
>  2 files changed, 74 insertions(+), 21 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 7902d4c2673e..a094c966f37f 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1759,6 +1759,58 @@ static enum port dvo_port_to_port(struct drm_i915_=
private *dev_priv,
>  					  dvo_port);
>  }
>  =

> +static void parse_bdb_230_dp_max_link_rate(const struct child_device_con=
fig *child,
> +					   struct ddi_vbt_port_info *info)
> +{
> +	switch (child->dp_max_link_rate) {
> +	case BDB_230_VBT_DP_MAX_LINK_RATE_UHBR20:
> +		info->dp_max_link_rate =3D 2000000;
> +		break;
> +	case BDB_230_VBT_DP_MAX_LINK_RATE_UHBR13P5:
> +		info->dp_max_link_rate =3D 1350000;
> +		break;
> +	case BDB_230_VBT_DP_MAX_LINK_RATE_UHBR10:
> +		info->dp_max_link_rate =3D 1000000;
> +		break;
> +	case BDB_230_VBT_DP_MAX_LINK_RATE_HBR3:
> +		info->dp_max_link_rate =3D 810000;
> +		break;
> +	case BDB_230_VBT_DP_MAX_LINK_RATE_HBR2:
> +		info->dp_max_link_rate =3D 540000;
> +		break;
> +	case BDB_230_VBT_DP_MAX_LINK_RATE_HBR:
> +		info->dp_max_link_rate =3D 270000;
> +		break;
> +	case BDB_230_VBT_DP_MAX_LINK_RATE_LBR:
> +		info->dp_max_link_rate =3D 162000;
> +		break;
> +	case BDB_230_VBT_DP_MAX_LINK_RATE_DEF:
> +	default:
> +		info->dp_max_link_rate =3D 0;
> +		break;
> +	}
> +}
> +
> +static void parse_bdb_216_dp_max_link_rate(const struct child_device_con=
fig *child,
> +					   struct ddi_vbt_port_info *info)
> +{
> +	switch (child->dp_max_link_rate) {
> +	default:
> +	case BDB_216_VBT_DP_MAX_LINK_RATE_HBR3:
> +		info->dp_max_link_rate =3D 810000;
> +		break;
> +	case BDB_216_VBT_DP_MAX_LINK_RATE_HBR2:
> +		info->dp_max_link_rate =3D 540000;
> +		break;
> +	case BDB_216_VBT_DP_MAX_LINK_RATE_HBR:
> +		info->dp_max_link_rate =3D 270000;
> +		break;
> +	case BDB_216_VBT_DP_MAX_LINK_RATE_LBR:
> +		info->dp_max_link_rate =3D 162000;
> +		break;
> +	}
> +}

Looks pretty good. One minor nit is that I would prefer these
to be pure functions. Ie. they should just directly return
the link rate instead of assigning it anywhere.

Then we can just do:
if (bdb_version >=3D 230)
	info->dp_max_link_rate =3D parse_bdb_230_dp_max_link_rate(child)
else
	info->dp_max_link_rate =3D parse_bdb_216_dp_max_link_rate(child)

> +
>  static void parse_ddi_port(struct drm_i915_private *dev_priv,
>  			   struct display_device_data *devdata,
>  			   u8 bdb_version)
> @@ -1884,21 +1936,11 @@ static void parse_ddi_port(struct drm_i915_privat=
e *dev_priv,
>  =

>  	/* DP max link rate for CNL+ */
>  	if (bdb_version >=3D 216) {
> -		switch (child->dp_max_link_rate) {
> -		default:
> -		case VBT_DP_MAX_LINK_RATE_HBR3:
> -			info->dp_max_link_rate =3D 810000;
> -			break;
> -		case VBT_DP_MAX_LINK_RATE_HBR2:
> -			info->dp_max_link_rate =3D 540000;
> -			break;
> -		case VBT_DP_MAX_LINK_RATE_HBR:
> -			info->dp_max_link_rate =3D 270000;
> -			break;
> -		case VBT_DP_MAX_LINK_RATE_LBR:
> -			info->dp_max_link_rate =3D 162000;
> -			break;
> -		}
> +		if (bdb_version >=3D 230)
> +			parse_bdb_230_dp_max_link_rate(child, info);
> +		else
> +			parse_bdb_216_dp_max_link_rate(child, info);
> +
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Port %c VBT DP max link rate: %d\n",
>  			    port_name(port), info->dp_max_link_rate);
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 6d10fa037751..0d80b04b34be 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -343,10 +343,21 @@ enum vbt_gmbus_ddi {
>  #define DP_AUX_H 0x80
>  #define DP_AUX_I 0x90
>  =

> -#define VBT_DP_MAX_LINK_RATE_HBR3	0
> -#define VBT_DP_MAX_LINK_RATE_HBR2	1
> -#define VBT_DP_MAX_LINK_RATE_HBR	2
> -#define VBT_DP_MAX_LINK_RATE_LBR	3
> +/* DP max link rate 216+ */
> +#define BDB_216_VBT_DP_MAX_LINK_RATE_HBR3	0
> +#define BDB_216_VBT_DP_MAX_LINK_RATE_HBR2	1
> +#define BDB_216_VBT_DP_MAX_LINK_RATE_HBR	2
> +#define BDB_216_VBT_DP_MAX_LINK_RATE_LBR	3
> +
> +/* DP max link rate 230+ */
> +#define BDB_230_VBT_DP_MAX_LINK_RATE_DEF	0
> +#define BDB_230_VBT_DP_MAX_LINK_RATE_LBR	1
> +#define BDB_230_VBT_DP_MAX_LINK_RATE_HBR	2
> +#define BDB_230_VBT_DP_MAX_LINK_RATE_HBR2	3
> +#define BDB_230_VBT_DP_MAX_LINK_RATE_HBR3	4
> +#define BDB_230_VBT_DP_MAX_LINK_RATE_UHBR10	5
> +#define BDB_230_VBT_DP_MAX_LINK_RATE_UHBR13P5	6
> +#define BDB_230_VBT_DP_MAX_LINK_RATE_UHBR20	7
>  =

>  /*
>   * The child device config, aka the display device data structure, provi=
des a
> @@ -445,8 +456,8 @@ struct child_device_config {
>  	u16 dp_gpio_pin_num;					/* 195 */
>  	u8 dp_iboost_level:4;					/* 196 */
>  	u8 hdmi_iboost_level:4;					/* 196 */
> -	u8 dp_max_link_rate:2;					/* 216 CNL+ */
> -	u8 dp_max_link_rate_reserved:6;				/* 216 */
> +	u8 dp_max_link_rate:3;					/* 230 CNL+ */
> +	u8 dp_max_link_rate_reserved:5;				/* 230 */
>  } __packed;
>  =

>  struct bdb_general_definitions {
> -- =

> 2.17.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
