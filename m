Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0505AB49C
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 17:01:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68C1C10E873;
	Fri,  2 Sep 2022 15:01:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CD9310E873
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 15:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662130869; x=1693666869;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ghpFxc0csUxETq36aMn8hpDtqUWqPmcUdvN6vOtKYEo=;
 b=TOlUT2OisX2nMw1R/KRuC0E3nUmr5Y3iOXxyhN7mR2oFWwpOQSbGOOdz
 XhngMi+DxQIRKWKTILJCUZm0ew9tg4ndUH+rVpWFLT739HywKGPPruqcX
 D2xBbh6URJzyoD1/C1jJ93k5jl1PAUF7kziWSebtUau7iXpj+fBdiTHK9
 LpHQbZQh28pvhhDJTEcikfV7yfsnD85rpWm50Po/EAbzuuB+02Pi34hBM
 HfBZ4aVDt3bD4zvf5CtrLtyo+sGg7EBeWWf+873CRf6dumMMzUMqEomp8
 1FtuIKf1O9Uj94v9GJPohYpJnR7GJtXcpRYgJfGx6sXRmaihzPQqsRx3v g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10458"; a="357713477"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="357713477"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 08:01:08 -0700
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="674381476"
Received: from svandene-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.245])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 08:01:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220715202044.11153-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
 <20220715202044.11153-3-ville.syrjala@linux.intel.com>
Date: Fri, 02 Sep 2022 18:00:55 +0300
Message-ID: <87fsh9ddnc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 02/12] drm/i915: Add some more VBT version
 number comments
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

On Fri, 15 Jul 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Document the VBT version dependency of several other fields.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 76 +++++++++----------
>  1 file changed, 38 insertions(+), 38 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index ba328d130991..e997b8bcc6b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -502,25 +502,25 @@ struct bdb_general_definitions {
>=20=20
>  struct psr_table {
>  	/* Feature bits */
> -	u8 full_link:1;
> -	u8 require_aux_to_wakeup:1;
> +	u8 full_link:1;						/* 165+ */
> +	u8 require_aux_to_wakeup:1;				/* 165+ */
>  	u8 feature_bits_rsvd:6;
>=20=20
>  	/* Wait times */
> -	u8 idle_frames:4;
> -	u8 lines_to_wait:3;
> +	u8 idle_frames:4;					/* 165+ */
> +	u8 lines_to_wait:3;					/* 165+ */
>  	u8 wait_times_rsvd:1;
>=20=20
>  	/* TP wake up time in multiple of 100 */
> -	u16 tp1_wakeup_time;
> -	u16 tp2_tp3_wakeup_time;
> +	u16 tp1_wakeup_time;					/* 165+ */
> +	u16 tp2_tp3_wakeup_time;				/* 165+ */
>  } __packed;
>=20=20
>  struct bdb_psr {
>  	struct psr_table psr_table[16];
>=20=20
>  	/* PSR2 TP2/TP3 wakeup time for 16 panels */
> -	u32 psr2_tp2_tp3_wakeup_time;
> +	u32 psr2_tp2_tp3_wakeup_time;				/* 226+ */
>  } __packed;
>=20=20
>  /*
> @@ -562,28 +562,28 @@ struct bdb_driver_features {
>  	u16 tv_hotplug:1;
>  	u16 hdmi_config:2;
>=20=20
> -	u8 static_display:1;
> +	u8 static_display:1;					/* 163+ */
>  	u8 reserved2:7;
> +
>  	u16 legacy_crt_max_x;
>  	u16 legacy_crt_max_y;
>  	u8 legacy_crt_max_refresh;
>=20=20
>  	u8 hdmi_termination;
> -	u8 custom_vbt_version;
> -	/* Driver features data block */
> -	u16 rmpm_enabled:1;
> -	u16 s2ddt_enabled:1;
> -	u16 dpst_enabled:1;
> -	u16 bltclt_enabled:1;
> -	u16 adb_enabled:1;
> -	u16 drrs_enabled:1;
> -	u16 grs_enabled:1;
> -	u16 gpmt_enabled:1;
> -	u16 tbt_enabled:1;
> -	u16 psr_enabled:1;
> -	u16 ips_enabled:1;
> +	u8 custom_vbt_version;					/* 165+ */

That's 155 in current bspec as well as some old doc I had.

Other than that,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +	u16 rmpm_enabled:1;					/* 165+ */
> +	u16 s2ddt_enabled:1;					/* 165+ */
> +	u16 dpst_enabled:1;					/* 165-227 */
> +	u16 bltclt_enabled:1;					/* 165+ */
> +	u16 adb_enabled:1;					/* 165-227 */
> +	u16 drrs_enabled:1;					/* 165-227 */
> +	u16 grs_enabled:1;					/* 165+ */
> +	u16 gpmt_enabled:1;					/* 165+ */
> +	u16 tbt_enabled:1;					/* 165+ */
> +	u16 psr_enabled:1;					/* 165-227 */
> +	u16 ips_enabled:1;					/* 165+ */
>  	u16 reserved3:1;
> -	u16 dmrrs_enabled:1;
> +	u16 dmrrs_enabled:1;					/* 174-227 */
>  	u16 reserved4:2;
>  	u16 pc_feature_valid:1;
>  } __packed;
> @@ -671,7 +671,7 @@ struct bdb_sdvo_panel_dtds {
>=20=20
>=20=20
>  struct edp_fast_link_params {
> -	u8 rate:4;
> +	u8 rate:4;						/* ???-223 */
>  	u8 lanes:4;
>  	u8 preemphasis:4;
>  	u8 vswing:4;
> @@ -731,7 +731,7 @@ struct bdb_lvds_options {
>  	u8 pfit_gfx_mode_enhanced:1;
>  	u8 pfit_ratio_auto:1;
>  	u8 pixel_dither:1;
> -	u8 lvds_edid:1;
> +	u8 lvds_edid:1;						/* ???-240 */
>  	u8 rsvd2:1;
>  	u8 rsvd4;
>  	/* LVDS Panel channel bits stored here */
> @@ -745,7 +745,7 @@ struct bdb_lvds_options {
>  	/* LVDS panel type bits stored here */
>  	u32 dps_panel_type_bits;
>  	/* LVDS backlight control type bits stored here */
> -	u32 blt_control_type_bits;
> +	u32 blt_control_type_bits;				/* ???-240 */
>=20=20
>  	u16 lcdvcc_s0_enable;					/* 200+ */
>  	u32 rotation;						/* 228+ */
> @@ -888,8 +888,8 @@ struct lfp_power_features {
>  	u8 reserved1:1;
>  	u8 power_conservation_pref:3;
>  	u8 reserved2:1;
> -	u8 lace_enabled_status:1;
> -	u8 lace_support:1;
> +	u8 lace_enabled_status:1;					/* 210+ */
> +	u8 lace_support:1;						/* 210+ */
>  	u8 als_enable:1;
>  } __packed;
>=20=20
> @@ -909,19 +909,19 @@ struct aggressiveness_profile2_entry {
>  } __packed;
>=20=20
>  struct bdb_lfp_power {
> -	struct lfp_power_features features;
> +	struct lfp_power_features features;				/* ???-227 */
>  	struct als_data_entry als[5];
> -	u8 lace_aggressiveness_profile:3;
> +	u8 lace_aggressiveness_profile:3;				/* 210-227 */
>  	u8 reserved1:5;
> -	u16 dpst;
> -	u16 psr;
> -	u16 drrs;
> -	u16 lace_support;
> -	u16 adt;
> -	u16 dmrrs;
> -	u16 adb;
> -	u16 lace_enabled_status;
> -	struct aggressiveness_profile_entry aggressiveness[16];
> +	u16 dpst;							/* 228+ */
> +	u16 psr;							/* 228+ */
> +	u16 drrs;							/* 228+ */
> +	u16 lace_support;						/* 228+ */
> +	u16 adt;							/* 228+ */
> +	u16 dmrrs;							/* 228+ */
> +	u16 adb;							/* 228+ */
> +	u16 lace_enabled_status;					/* 228+ */
> +	struct aggressiveness_profile_entry aggressiveness[16];		/* 228+ */
>  	u16 hobl;							/* 232+ */
>  	u16 vrr_feature_enabled;					/* 233+ */
>  	u16 elp;							/* 247+ */

--=20
Jani Nikula, Intel Open Source Graphics Center
