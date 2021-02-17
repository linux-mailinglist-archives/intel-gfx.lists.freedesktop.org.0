Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C50D231DC99
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 16:45:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ED9389E69;
	Wed, 17 Feb 2021 15:45:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C997489E69
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 15:45:31 +0000 (UTC)
IronPort-SDR: qavm9HnQA7geayTrVI8tg+675w/WM9WB0Tbd+p2tOEDtUwGJynoHj00UPDcgsRnFaNuwrCTX1j
 0QqbbUki0gdQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="162358805"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="162358805"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 07:45:30 -0800
IronPort-SDR: D7DmogVIOLOfI9cMsdPt/5pDeJKTlW2jeAek5JhLupI0fXbisxmoZ5uWWhu0i6smMGYe7m5nCd
 A8pLITfodJfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="364493180"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 17 Feb 2021 07:45:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 17 Feb 2021 17:45:25 +0200
Date: Wed, 17 Feb 2021 17:45:25 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
Message-ID: <YC06FU1sEIAgeaYo@intel.com>
References: <20210201150228.10001-1-shawn.c.lee@intel.com>
 <20210217153935.8528-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210217153935.8528-1-shawn.c.lee@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/vbt: update DP max link rate
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

On Wed, Feb 17, 2021 at 11:39:35PM +0800, Lee Shawn C wrote:
> According to Bspec #20124, max link rate table for DP was updated
> at BDB version 230. Max link rate can support upto UHBR.
> =

> After migrate to BDB v230, the definition for LBR, HBR2 and HBR3
> were changed. For backward compatibility. If BDB version was
> from 216 to 229. Driver have to follow original rule to configure
> DP max link rate value from VBT.
> =

> v2: split the mapping table to two for old and new BDB definition.
> v3: return link rate instead of assigning it.
> =

> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: William Tseng <william.tseng@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 78 +++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 23 ++++--
>  2 files changed, 80 insertions(+), 21 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 7902d4c2673e..d8305c351b77 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1759,6 +1759,64 @@ static enum port dvo_port_to_port(struct drm_i915_=
private *dev_priv,
>  					  dvo_port);
>  }
>  =

> +static int parse_bdb_230_dp_max_link_rate(const int vbt_max_link_rate)
> +{
> +	int link_rate;

That variable is rather pointless...

> +
> +	switch (vbt_max_link_rate) {
> +	case BDB_230_VBT_DP_MAX_LINK_RATE_UHBR20:
> +		link_rate =3D 2000000;
> +		break;

... when you can just 'return <rate>' here directly.
Would reduce the noise a bit as well since the break
statements would vanish.

> +	case BDB_230_VBT_DP_MAX_LINK_RATE_UHBR13P5:
> +		link_rate =3D 1350000;
> +		break;
> +	case BDB_230_VBT_DP_MAX_LINK_RATE_UHBR10:
> +		link_rate =3D 1000000;
> +		break;
> +	case BDB_230_VBT_DP_MAX_LINK_RATE_HBR3:
> +		link_rate =3D 810000;
> +		break;
> +	case BDB_230_VBT_DP_MAX_LINK_RATE_HBR2:
> +		link_rate =3D 540000;
> +		break;
> +	case BDB_230_VBT_DP_MAX_LINK_RATE_HBR:
> +		link_rate =3D 270000;
> +		break;
> +	case BDB_230_VBT_DP_MAX_LINK_RATE_LBR:
> +		link_rate =3D 162000;
> +		break;
> +	case BDB_230_VBT_DP_MAX_LINK_RATE_DEF:
> +	default:
> +		link_rate =3D 0;
> +		break;
> +	}
> +
> +	return link_rate;
> +}
> +
> +static int parse_bdb_216_dp_max_link_rate(const int vbt_max_link_rate)
> +{
> +	int link_rate;

Same here.

With that changed this is
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +
> +	switch (vbt_max_link_rate) {
> +	default:
> +	case BDB_216_VBT_DP_MAX_LINK_RATE_HBR3:
> +		link_rate =3D 810000;
> +		break;
> +	case BDB_216_VBT_DP_MAX_LINK_RATE_HBR2:
> +		link_rate =3D 540000;
> +		break;
> +	case BDB_216_VBT_DP_MAX_LINK_RATE_HBR:
> +		link_rate =3D 270000;
> +		break;
> +	case BDB_216_VBT_DP_MAX_LINK_RATE_LBR:
> +		link_rate =3D 162000;
> +		break;
> +	}
> +
> +	return link_rate;
> +}
> +
>  static void parse_ddi_port(struct drm_i915_private *dev_priv,
>  			   struct display_device_data *devdata,
>  			   u8 bdb_version)
> @@ -1884,21 +1942,11 @@ static void parse_ddi_port(struct drm_i915_privat=
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
> +			info->dp_max_link_rate =3D parse_bdb_230_dp_max_link_rate(child->dp_m=
ax_link_rate);
> +		else
> +			info->dp_max_link_rate =3D parse_bdb_216_dp_max_link_rate(child->dp_m=
ax_link_rate);
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
