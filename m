Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA305537AD9
	for <lists+intel-gfx@lfdr.de>; Mon, 30 May 2022 14:56:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A616510E15A;
	Mon, 30 May 2022 12:55:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26ED010E141
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 May 2022 12:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653915358; x=1685451358;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=uCHZfDxG1bMsqEvplcC0t1ZHhltHvsLF0gLTutBu5Lw=;
 b=cEAk3mIgitGnlN3yF8bsrSBLlyDwP9TwwY42g9F4sftrrPKkfjZkG3Sm
 bZXqR13LJ5bQsVzi66+Zrlydur6Ja2eQtWO+jDX+Enbjq0QM5zTBnUkEf
 zGIJdvNW+ItunOvSaAxAr97JPzEVrdCLJn7opNLf3A72+KrQFool4k+6N
 PUU680rOEn+FapKLFYI6v+hXMvUUrSYNdm6ajFHLxgfC7nGEdYO6Gc+vy
 nZB+K6/OV9clZokSwkdEpWBsA8SUa++jOP82ok4MDrAGQfMJ3j9yplKJU
 VeI/MNx7uSL1OICB0x0q9ftXCbvPrOemjIJ5ix7EPkmW2lqEpxCEkIn1/ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10362"; a="273806395"
X-IronPort-AV: E=Sophos;i="5.91,262,1647327600"; d="scan'208";a="273806395"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 05:55:57 -0700
X-IronPort-AV: E=Sophos;i="5.91,262,1647327600"; d="scan'208";a="561916235"
Received: from jkuna-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.150.228])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 05:55:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220527204949.2264-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220527204949.2264-1-ville.syrjala@linux.intel.com>
 <20220527204949.2264-6-ville.syrjala@linux.intel.com>
Date: Mon, 30 May 2022 15:55:52 +0300
Message-ID: <87fskrrxgn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/bios: Define more BDB contents
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 27 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Add a bunch of new struff we're missing in various BDB blocks.
>
> TODO: Bunch of these might actually need to be taken
> into use...

Cc: Jouni, Lyude for some HDR backlight stuff below.

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 50 ++++++++++++++++---
>  1 file changed, 43 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 39109f204c6d..be99f585b1d0 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -564,7 +564,9 @@ struct bdb_driver_features {
>  	u16 tbt_enabled:1;
>  	u16 psr_enabled:1;
>  	u16 ips_enabled:1;
> -	u16 reserved3:4;
> +	u16 reserved3:1;
> +	u16 dmrrs_enabled:1;

Should we start logging the version ranges here too, since it's obsolete
from 228. Kinda duplicating the info though. *shrug*.

> +	u16 reserved4:2;
>  	u16 pc_feature_valid:1;
>  } __packed;
>=20=20
> @@ -666,6 +668,16 @@ struct edp_full_link_params {
>  	u8 vswing:4;
>  } __packed;
>=20=20
> +struct edp_apical_params {
> +	u32 panel_oui;
> +	u32 dpcd_base_address;
> +	u32 dpcd_idridix_control_0;
> +	u32 dpcd_option_select;
> +	u32 dpcd_backlight;
> +	u32 ambient_light;
> +	u32 backlight_scale;
> +} __packed;
> +
>  struct bdb_edp {
>  	struct edp_power_seq power_seqs[16];
>  	u32 color_depth;
> @@ -681,6 +693,9 @@ struct bdb_edp {
>  	struct edp_pwm_delays pwm_delays[16];			/* 186 */
>  	u16 full_link_params_provided;				/* 199 */
>  	struct edp_full_link_params full_link_params[16];	/* 199 */
> +	u16 apical_enable;					/* 203 */
> +	struct edp_apical_params apical_params[16];		/* 203 */
> +	u16 edp_fast_link_training_rate[16];			/* 224 */

Another eDP port link rate param would go here? Could be added in
another patch.

>  } __packed;
>=20=20
>  /*
> @@ -717,6 +732,7 @@ struct bdb_lvds_options {
>=20=20
>  	u16 lcdvcc_s0_enable;					/* 200 */
>  	u32 rotation;						/* 228 */
> +	u32 position;						/* 240 */
>  } __packed;
>=20=20
>  /*
> @@ -843,13 +859,22 @@ struct bdb_lfp_backlight_data {
>  	u8 level[16]; /* Obsolete from 234+ */
>  	struct lfp_backlight_control_method backlight_control[16];
>  	struct lfp_brightness_level brightness_level[16];		/* 234+ */
> -	struct lfp_brightness_level brightness_min_level[16];	/* 234+ */
> -	u8 brightness_precision_bits[16];						/* 236+ */
> +	struct lfp_brightness_level brightness_min_level[16];		/* 234+ */
> +	u8 brightness_precision_bits[16];				/* 236+ */
> +	u16 hdr_dpcd_refresh_timeout[16];				/* 239+ */

Jouni, Lyude, this is probably interesting to you:

"""
This table of values (for 16 panels, 1 value per panel) is used to
specify the time required by the TCON (with Intel HDR Aux Interface
Support) to refresh the DPCD set with Intel HDR CAPS (DPCD offset:
340h-344h).

The value is in units of 10 us(microseconds).
"""

>  } __packed;
>=20=20
>  /*
>   * Block 44 - LFP Power Conservation Features Block
>   */
> +struct lfp_features {

Nit, maybe lfp_power_features.

Anyway,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +	u8 reserved1:1;
> +	u8 power_conservation_pref:3;
> +	u8 reserved2:1;
> +	u8 lace_enabled_status:1;
> +	u8 lace_support:1;
> +	u8 als_enable:1;
> +} __packed;
>=20=20
>  struct als_data_entry {
>  	u16 backlight_adjust;
> @@ -861,10 +886,16 @@ struct aggressiveness_profile_entry {
>  	u8 lace_aggressiveness : 4;
>  } __packed;
>=20=20
> +struct aggressiveness_profile2_entry {
> +	u8 opst_aggressiveness : 4;
> +	u8 elp_aggressiveness : 4;
> +} __packed;
> +
>  struct bdb_lfp_power {
> -	u8 lfp_feature_bits;
> +	struct lfp_features features;
>  	struct als_data_entry als[5];
> -	u8 lace_aggressiveness_profile;
> +	u8 lace_aggressiveness_profile:3;
> +	u8 reserved1:5;
>  	u16 dpst;
>  	u16 psr;
>  	u16 drrs;
> @@ -876,6 +907,9 @@ struct bdb_lfp_power {
>  	struct aggressiveness_profile_entry aggressiveness[16];
>  	u16 hobl; /* 232+ */
>  	u16 vrr_feature_enabled; /* 233+ */
> +	u16 elp; /* 247+ */
> +	u16 opst; /* 247+ */
> +	struct aggressiveness_profile2_entry aggressiveness2[16]; /* 247+ */
>  } __packed;
>=20=20
>  /*
> @@ -885,8 +919,10 @@ struct bdb_lfp_power {
>  #define MAX_MIPI_CONFIGURATIONS	6
>=20=20
>  struct bdb_mipi_config {
> -	struct mipi_config config[MAX_MIPI_CONFIGURATIONS];
> -	struct mipi_pps_data pps[MAX_MIPI_CONFIGURATIONS];
> +	struct mipi_config config[MAX_MIPI_CONFIGURATIONS]; /* 175 */
> +	struct mipi_pps_data pps[MAX_MIPI_CONFIGURATIONS]; /* 177 */
> +	struct edp_pwm_delays pwm_delays[MAX_MIPI_CONFIGURATIONS]; /* 186 */
> +	u8 pmic_i2c_bus_number[MAX_MIPI_CONFIGURATIONS]; /* 190 */
>  } __packed;
>=20=20
>  /*

--=20
Jani Nikula, Intel Open Source Graphics Center
