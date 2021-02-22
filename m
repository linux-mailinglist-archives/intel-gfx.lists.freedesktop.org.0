Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEE1321EE8
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 19:15:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCE3389F4F;
	Mon, 22 Feb 2021 18:15:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6946489F4F
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Feb 2021 18:15:00 +0000 (UTC)
IronPort-SDR: VNYyAB8dWT7PJqNVY6WBxvsHdb6qL+wvh12gpOzqZiHNEnwsb00DmQDJZ6Lz6oDyFvLOfEmEBe
 t6NQmrrm4g4g==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="164379561"
X-IronPort-AV: E=Sophos;i="5.81,197,1610438400"; d="scan'208";a="164379561"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 10:14:59 -0800
IronPort-SDR: Qcjy9uzWWa9hX/nhjaDbkc7ngcIPyfiHUF/DQJWxeoJ+VpjrxXiARi17whPH4MfJQmItEuP9+a
 PO3tQePd1F8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,197,1610438400"; d="scan'208";a="366269155"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 22 Feb 2021 10:14:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Feb 2021 20:14:56 +0200
Date: Mon, 22 Feb 2021 20:14:56 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YDP0oBIih4IXBrTh@intel.com>
References: <cover.1613580193.git.jani.nikula@intel.com>
 <a94ca37acde900ce211f446a697e20531dfa72c2.1613580193.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a94ca37acde900ce211f446a697e20531dfa72c2.1613580193.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 02/12] drm/i915/bios: store bdb version in
 i915
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

On Wed, Feb 17, 2021 at 07:03:32PM +0200, Jani Nikula wrote:
> We'll be needing the version in more places in the future, so avoid the
> need to pass it around. No functional changes.
> =

> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 28 +++++++++++------------
>  drivers/gpu/drm/i915/i915_drv.h           |  3 +++
>  2 files changed, 17 insertions(+), 14 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 802c228b2940..a8712fe8bf3e 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -597,7 +597,7 @@ child_device_ptr(const struct bdb_general_definitions=
 *defs, int i)
>  }
>  =

>  static void
> -parse_sdvo_device_mapping(struct drm_i915_private *i915, u8 bdb_version)
> +parse_sdvo_device_mapping(struct drm_i915_private *i915)
>  {
>  	struct sdvo_device_mapping *mapping;
>  	const struct display_device_data *devdata;
> @@ -1760,8 +1760,7 @@ static enum port dvo_port_to_port(struct drm_i915_p=
rivate *i915,
>  }
>  =

>  static void parse_ddi_port(struct drm_i915_private *i915,
> -			   struct display_device_data *devdata,
> -			   u8 bdb_version)
> +			   struct display_device_data *devdata)
>  {
>  	const struct child_device_config *child =3D &devdata->child;
>  	struct ddi_vbt_port_info *info;
> @@ -1800,10 +1799,10 @@ static void parse_ddi_port(struct drm_i915_privat=
e *i915,
>  	info->supports_dp =3D is_dp;
>  	info->supports_edp =3D is_edp;
>  =

> -	if (bdb_version >=3D 195)
> +	if (i915->vbt.version >=3D 195)
>  		info->supports_typec_usb =3D child->dp_usb_type_c;
>  =

> -	if (bdb_version >=3D 209)
> +	if (i915->vbt.version >=3D 209)
>  		info->supports_tbt =3D child->tbt;
>  =

>  	drm_dbg_kms(&i915->drm,
> @@ -1834,7 +1833,7 @@ static void parse_ddi_port(struct drm_i915_private =
*i915,
>  		sanitize_aux_ch(i915, port);
>  	}
>  =

> -	if (bdb_version >=3D 158) {
> +	if (i915->vbt.version >=3D 158) {
>  		/* The VBT HDMI level shift values match the table we have. */
>  		u8 hdmi_level_shift =3D child->hdmi_level_shifter_value;
>  		drm_dbg_kms(&i915->drm,
> @@ -1845,7 +1844,7 @@ static void parse_ddi_port(struct drm_i915_private =
*i915,
>  		info->hdmi_level_shift_set =3D true;
>  	}
>  =

> -	if (bdb_version >=3D 204) {
> +	if (i915->vbt.version >=3D 204) {
>  		int max_tmds_clock;
>  =

>  		switch (child->hdmi_max_data_rate) {
> @@ -1871,7 +1870,7 @@ static void parse_ddi_port(struct drm_i915_private =
*i915,
>  	}
>  =

>  	/* Parse the I_boost config for SKL and above */
> -	if (bdb_version >=3D 196 && child->iboost) {
> +	if (i915->vbt.version >=3D 196 && child->iboost) {
>  		info->dp_boost_level =3D translate_iboost(child->dp_iboost_level);
>  		drm_dbg_kms(&i915->drm,
>  			    "Port %c VBT (e)DP boost level: %d\n",
> @@ -1883,7 +1882,7 @@ static void parse_ddi_port(struct drm_i915_private =
*i915,
>  	}
>  =

>  	/* DP max link rate for CNL+ */
> -	if (bdb_version >=3D 216) {
> +	if (i915->vbt.version >=3D 216) {
>  		switch (child->dp_max_link_rate) {
>  		default:
>  		case VBT_DP_MAX_LINK_RATE_HBR3:
> @@ -1907,18 +1906,18 @@ static void parse_ddi_port(struct drm_i915_privat=
e *i915,
>  	info->child =3D child;
>  }
>  =

> -static void parse_ddi_ports(struct drm_i915_private *i915, u8 bdb_versio=
n)
> +static void parse_ddi_ports(struct drm_i915_private *i915)
>  {
>  	struct display_device_data *devdata;
>  =

>  	if (!HAS_DDI(i915) && !IS_CHERRYVIEW(i915))
>  		return;
>  =

> -	if (bdb_version < 155)
> +	if (i915->vbt.version < 155)
>  		return;
>  =

>  	list_for_each_entry(devdata, &i915->vbt.display_devices, node)
> -		parse_ddi_port(i915, devdata, bdb_version);
> +		parse_ddi_port(i915, devdata);
>  }
>  =

>  static void
> @@ -2229,6 +2228,7 @@ void intel_bios_init(struct drm_i915_private *i915)
>  	}
>  =

>  	bdb =3D get_bdb_header(vbt);
> +	i915->vbt.version =3D bdb->version;
>  =

>  	drm_dbg_kms(&i915->drm,
>  		    "VBT signature \"%.*s\", BDB version %d\n",
> @@ -2252,8 +2252,8 @@ void intel_bios_init(struct drm_i915_private *i915)
>  	parse_compression_parameters(i915, bdb);
>  =

>  	/* Further processing on pre-parsed data */
> -	parse_sdvo_device_mapping(i915, bdb->version);
> -	parse_ddi_ports(i915, bdb->version);
> +	parse_sdvo_device_mapping(i915);
> +	parse_ddi_ports(i915);
>  =

>  out:
>  	if (!vbt) {
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index f8413b3b9da8..62be1465f52b 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -615,6 +615,9 @@ enum psr_lines_to_wait {
>  };
>  =

>  struct intel_vbt_data {
> +	/* bdb version */
> +	u16 version;
> +
>  	struct drm_display_mode *lfp_lvds_vbt_mode; /* if any */
>  	struct drm_display_mode *sdvo_lvds_vbt_mode; /* if any */
>  =

> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
