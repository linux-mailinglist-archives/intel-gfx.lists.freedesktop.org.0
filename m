Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51961311267
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 21:26:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B35346F4CA;
	Fri,  5 Feb 2021 20:26:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8CA26F4CA
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 20:26:37 +0000 (UTC)
IronPort-SDR: rmFhgl3WZ+VGbJqbaG6Qgbj5zSj+gxEP2xd9LLDJHvSBFcocHlhKqqy0hWj39VV53tnTOLGYXG
 PkgoMc7fl7Aw==
X-IronPort-AV: E=McAfee;i="6000,8403,9886"; a="161239061"
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="161239061"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 12:26:37 -0800
IronPort-SDR: 5AX3ONGgF4y4mQ/5wh3K6655DzpLB6/JNW9h7LmVtqoDzoALtnQ8PQw3K2GbjcJs2jjDv8lPyL
 mzBFNkmbzlmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="484450587"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 05 Feb 2021 12:26:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Feb 2021 22:26:33 +0200
Date: Fri, 5 Feb 2021 22:26:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
Message-ID: <YB2p+Xa8PkFQT1L8@intel.com>
References: <20210201150228.10001-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210201150228.10001-1-shawn.c.lee@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vbt: update DP max link rate table
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

On Mon, Feb 01, 2021 at 11:02:28PM +0800, Lee Shawn C wrote:
> According to Bspec #20124, max link rate table for DP was updated
> at BDB version 230. Max link rate can support upto UHBR.
> =

> After migrate to BDB v230, the definition for LBR, HBR2 and HBR3
> were changed. For backward compatibility. If BDB version was
> from 216 to 229. Driver have to follow original rule to configure
> DP max link rate value from VBT.
> =

> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: William Tseng <william.tseng@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 24 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 14 +++++++----
>  2 files changed, 32 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 04337ac6f8c4..be1f732e6550 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1876,7 +1876,15 @@ static void parse_ddi_port(struct drm_i915_private=
 *dev_priv,
>  	/* DP max link rate for CNL+ */
>  	if (bdb_version >=3D 216) {
>  		switch (child->dp_max_link_rate) {
> -		default:
> +		case VBT_DP_MAX_LINK_RATE_UHBR20:
> +			info->dp_max_link_rate =3D 2000000;
> +			break;
> +		case VBT_DP_MAX_LINK_RATE_UHBR13P5:
> +			info->dp_max_link_rate =3D 1350000;
> +			break;
> +		case VBT_DP_MAX_LINK_RATE_UHBR10:
> +			info->dp_max_link_rate =3D 1000000;
> +			break;
>  		case VBT_DP_MAX_LINK_RATE_HBR3:
>  			info->dp_max_link_rate =3D 810000;
>  			break;
> @@ -1889,7 +1897,21 @@ static void parse_ddi_port(struct drm_i915_private=
 *dev_priv,
>  		case VBT_DP_MAX_LINK_RATE_LBR:
>  			info->dp_max_link_rate =3D 162000;
>  			break;
> +		case VBT_DP_MAX_LINK_RATE_DEFAULT:
> +		default:
> +			info->dp_max_link_rate =3D 0;
> +			break;
> +		}
> +
> +		if (bdb_version < 230) {
> +			if (child->dp_max_link_rate =3D=3D VBT_DP_MAX_LINK_RATE_DEFAULT)
> +				info->dp_max_link_rate =3D 810000;
> +			else if (child->dp_max_link_rate =3D=3D VBT_DP_MAX_LINK_RATE_LBR)
> +				info->dp_max_link_rate =3D 540000;
> +			else if (child->dp_max_link_rate =3D=3D VBT_DP_MAX_LINK_RATE_HBR2)
> +				info->dp_max_link_rate =3D 162000;
>  		}

I would split this into two separate functions, one does the new
mapping, the other the old mapping. =


> +
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "VBT DP max link rate for port %c: %d\n",
>  			    port_name(port), info->dp_max_link_rate);
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 6d10fa037751..578a54b33f32 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -343,10 +343,14 @@ enum vbt_gmbus_ddi {
>  #define DP_AUX_H 0x80
>  #define DP_AUX_I 0x90
>  =

> -#define VBT_DP_MAX_LINK_RATE_HBR3	0
> -#define VBT_DP_MAX_LINK_RATE_HBR2	1
> +#define VBT_DP_MAX_LINK_RATE_DEFAULT	0
> +#define VBT_DP_MAX_LINK_RATE_LBR	1
>  #define VBT_DP_MAX_LINK_RATE_HBR	2
> -#define VBT_DP_MAX_LINK_RATE_LBR	3
> +#define VBT_DP_MAX_LINK_RATE_HBR2	3
> +#define VBT_DP_MAX_LINK_RATE_HBR3	4
> +#define VBT_DP_MAX_LINK_RATE_UHBR10	5
> +#define VBT_DP_MAX_LINK_RATE_UHBR13P5	6
> +#define VBT_DP_MAX_LINK_RATE_UHBR20	7

And we should keep both old and new names for these.

Sadly I can't right now check the spec since it no longer has the
old stuff apparently, and the VBT section got moved around so the
history no longer shows anything either :( I'll have to pull the whole
thing down I guess so I can double check against the old version.

>  =

>  /*
>   * The child device config, aka the display device data structure, provi=
des a
> @@ -445,8 +449,8 @@ struct child_device_config {
>  	u16 dp_gpio_pin_num;					/* 195 */
>  	u8 dp_iboost_level:4;					/* 196 */
>  	u8 hdmi_iboost_level:4;					/* 196 */
> -	u8 dp_max_link_rate:2;					/* 216 CNL+ */
> -	u8 dp_max_link_rate_reserved:6;				/* 216 */
> +	u8 dp_max_link_rate:3;					/* 230 */
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
