Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DD8286B01
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 00:45:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0FF86EA17;
	Wed,  7 Oct 2020 22:45:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32A846E9D4
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 22:45:41 +0000 (UTC)
IronPort-SDR: w+ffNSlGbyzrRRsC0JsPwh9lfTWx2AYlcEic2mekgRZ3pJRmCka6pZhN8iJj0bxBUXW+/Bb4w4
 ixsb+JdxDczA==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="152991677"
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="152991677"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 15:45:40 -0700
IronPort-SDR: V+LH7pIlF13sqahtYWSuMxuiaIIR4HW7JL5Uou+rN+tHDrzyL2AXmamHUWw4sSY61nU9moxpp2
 omy73hSzZt1A==
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="461550103"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 15:45:40 -0700
Date: Wed, 7 Oct 2020 15:45:39 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20201007224539.GL2863995@mdroper-desk1.amr.corp.intel.com>
References: <20200929223419.146925-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200929223419.146925-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915/vbt: Fix backlight parsing
 for VBT 234+
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 29, 2020 at 03:34:17PM -0700, Jos=E9 Roberto de Souza wrote:
> Child min_brightness is obsolete from VBT 234+, instead the new
> min_brightness field in the main structure should be used.
> =

> This new field is 16 bits wide, so backlight_precision_bits is needed
> to check if value needs to be scaled down but it is only available in
> VBT 236+ so working around it by using the also new backlight_level
> in the main struct.
> =

> v2:
> - missed that backlight_data->level is also obsolete
> =

> BSpec: 20149
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 30 +++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 12 ++++++--
>  2 files changed, 38 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 4716484af62d..58e5657a77bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -425,6 +425,7 @@ parse_lfp_backlight(struct drm_i915_private *dev_priv,
>  	const struct bdb_lfp_backlight_data *backlight_data;
>  	const struct lfp_backlight_data_entry *entry;
>  	int panel_type =3D dev_priv->vbt.panel_type;
> +	u16 level;
>  =

>  	backlight_data =3D find_section(bdb, BDB_LVDS_BACKLIGHT);
>  	if (!backlight_data)
> @@ -459,14 +460,39 @@ parse_lfp_backlight(struct drm_i915_private *dev_pr=
iv,
>  =

>  	dev_priv->vbt.backlight.pwm_freq_hz =3D entry->pwm_freq_hz;
>  	dev_priv->vbt.backlight.active_low_pwm =3D entry->active_low_pwm;
> -	dev_priv->vbt.backlight.min_brightness =3D entry->min_brightness;
> +
> +	if (bdb->version >=3D 234) {
> +		bool scale =3D false;
> +		u16 min_level;
> +
> +		level =3D backlight_data->backlight_level[panel_type].level;
> +		min_level =3D backlight_data->backlight_min_level[panel_type].level;
> +
> +		if (bdb->version >=3D 236)
> +			scale =3D backlight_data->backlight_precision_bits[panel_type] =3D=3D=
 16;
> +		else
> +			scale =3D level > 255;

I'm not sure I follow the 'else' arm here.  On version 234/235 we'd have
16-bit level values.  In the absence of any other precision information
wouldn't we assume that all the bits are used and that we have a full
16-bit precision?  If the level is < 256 (or for that matter if we have
any value where level & 0xFF is non-zero) wouldn't that definitely mean
that there are 16-bits of precision since otherwise those low bits would
have to be 0's?

> +
> +		if (scale)
> +			min_level =3D min_level / 255;
> +
> +		if (min_level > 255) {
> +			drm_warn(&dev_priv->drm, "Backlight min level > 255\n");
> +			level =3D 255;
> +		}
> +		dev_priv->vbt.backlight.min_brightness =3D min_level;
> +	} else {
> +		level =3D backlight_data->level[panel_type];
> +		dev_priv->vbt.backlight.min_brightness =3D entry->min_brightness;
> +	}
> +
>  	drm_dbg_kms(&dev_priv->drm,
>  		    "VBT backlight PWM modulation frequency %u Hz, "
>  		    "active %s, min brightness %u, level %u, controller %u\n",
>  		    dev_priv->vbt.backlight.pwm_freq_hz,
>  		    dev_priv->vbt.backlight.active_low_pwm ? "low" : "high",
>  		    dev_priv->vbt.backlight.min_brightness,
> -		    backlight_data->level[panel_type],
> +		    level,
>  		    dev_priv->vbt.backlight.controller);
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 54bcc6a6947c..b4742c4fde97 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -782,7 +782,7 @@ struct lfp_backlight_data_entry {
>  	u8 active_low_pwm:1;
>  	u8 obsolete1:5;
>  	u16 pwm_freq_hz;
> -	u8 min_brightness;
> +	u8 min_brightness; /* Obsolete from 234+ */
>  	u8 obsolete2;
>  	u8 obsolete3;
>  } __packed;
> @@ -792,11 +792,19 @@ struct lfp_backlight_control_method {
>  	u8 controller:4;
>  } __packed;
>  =

> +struct lfp_backlight_level {
> +	u32 level : 16;
> +	u32 reserved : 16;
> +} __packed;
> +
>  struct bdb_lfp_backlight_data {
>  	u8 entry_size;
>  	struct lfp_backlight_data_entry data[16];
> -	u8 level[16];
> +	u8 level[16]; /* Obsolete from 234+ */
>  	struct lfp_backlight_control_method backlight_control[16];
> +	struct lfp_backlight_level backlight_level[16];		/* 234+ */
> +	struct lfp_backlight_level backlight_min_level[16];	/* 234+ */

Technically these two are described as "brightness level" rather than
"backlight level" in the spec.  Matching the spec's terminology might
make this slightly easier to follow when people look at it in the
future, but up to you.


Matt

> +	u8 backlight_precision_bits[16];					/* 236+ */
>  } __packed;
>  =

>  /*
> -- =

> 2.28.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

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
