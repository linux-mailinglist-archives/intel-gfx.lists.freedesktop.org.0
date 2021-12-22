Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECAB47CF2E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 10:25:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C08FD10F5F0;
	Wed, 22 Dec 2021 09:25:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E5EF10F5F0
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Dec 2021 09:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640165147; x=1671701147;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=i7kDcgBfmE1sXEIW8C6D4zeF+M0okDJrvkwOBl5awEc=;
 b=av+Yk+14SvX53eWRQglHLyybmfaScR/YNztclYcMTfIE1AH4ihn/hT1i
 xtnO4ZV1JycdavaGDhlnS1Zu+Gwu2uiKz0iA89HNCZCPC7wpu7p37s8xc
 G3VcBu1t6IohlWZFHdufVHN+djtQaE+gAvSYNdGVSU2Cl8IzDwY+9NlA3
 2DMqTcN47NseV00TgLp4x9kufb8VttSkfRH32MKYXt6gpIQ9k549y8gVC
 zFUUdFEIilCVxFqxOskbV7+0OyZ31BrsE4zm7349sYKwBFvjoQxXU34l7
 f+Lw8YoX3TvTCm3xRplQapWmsPP3Xkv1lgKzucN7LU1zzalZC3cJdC98o g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="303955079"
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="303955079"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 01:25:45 -0800
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="607345086"
Received: from aravind2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.9.217])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 01:25:42 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211217155403.31477-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
 <20211217155403.31477-5-ville.syrjala@linux.intel.com>
Date: Wed, 22 Dec 2021 11:25:37 +0200
Message-ID: <875yrhyory.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/bios: Throw out the
 !has_ddi_port_info() codepaths
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

On Fri, 17 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Now that we parse the DDI port info from the VBT on all g4x+ platforms
> we can throw out all the old codepaths in intel_bios_is_port_present(),
> intel_bios_is_port_edp() and intel_bios_is_port_dp_dual_mode(). None
> of these should be called on pre-g4x platforms.
>
> For good measure throw in a WARN into intel_bios_is_port_present()
> should someone get the urge to call it on older platforms. The
> other two functions are specific to HDMI and DP so should not need
> any protection as those encoder types don't even exist on older
> platforms.

This patch is one of the main reasons why I'm in favor of taking the
risks. It's just much simpler overall.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
c




>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 99 ++-----------------
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 15 ---
>  2 files changed, 9 insertions(+), 105 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index d7d64d3bf083..f5aa2c72b2fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2663,37 +2663,10 @@ bool intel_bios_is_lvds_present(struct drm_i915_p=
rivate *i915, u8 *i2c_pin)
>   */
>  bool intel_bios_is_port_present(struct drm_i915_private *i915, enum port=
 port)
>  {
> -	const struct intel_bios_encoder_data *devdata;
> -	const struct child_device_config *child;
> -	static const struct {
> -		u16 dp, hdmi;
> -	} port_mapping[] =3D {
> -		[PORT_B] =3D { DVO_PORT_DPB, DVO_PORT_HDMIB, },
> -		[PORT_C] =3D { DVO_PORT_DPC, DVO_PORT_HDMIC, },
> -		[PORT_D] =3D { DVO_PORT_DPD, DVO_PORT_HDMID, },
> -		[PORT_E] =3D { DVO_PORT_DPE, DVO_PORT_HDMIE, },
> -		[PORT_F] =3D { DVO_PORT_DPF, DVO_PORT_HDMIF, },
> -	};
> +	if (WARN_ON(!has_ddi_port_info(i915)))
> +		return true;
>=20=20
> -	if (has_ddi_port_info(i915))
> -		return i915->vbt.ports[port];
> -
> -	/* FIXME maybe deal with port A as well? */
> -	if (drm_WARN_ON(&i915->drm,
> -			port =3D=3D PORT_A) || port >=3D ARRAY_SIZE(port_mapping))
> -		return false;
> -
> -	list_for_each_entry(devdata, &i915->vbt.display_devices, node) {
> -		child =3D &devdata->child;
> -
> -		if ((child->dvo_port =3D=3D port_mapping[port].dp ||
> -		     child->dvo_port =3D=3D port_mapping[port].hdmi) &&
> -		    (child->device_type & (DEVICE_TYPE_TMDS_DVI_SIGNALING |
> -					   DEVICE_TYPE_DISPLAYPORT_OUTPUT)))
> -			return true;
> -	}
> -
> -	return false;
> +	return i915->vbt.ports[port];
>  }
>=20=20
>  /**
> @@ -2705,34 +2678,10 @@ bool intel_bios_is_port_present(struct drm_i915_p=
rivate *i915, enum port port)
>   */
>  bool intel_bios_is_port_edp(struct drm_i915_private *i915, enum port por=
t)
>  {
> -	const struct intel_bios_encoder_data *devdata;
> -	const struct child_device_config *child;
> -	static const short port_mapping[] =3D {
> -		[PORT_B] =3D DVO_PORT_DPB,
> -		[PORT_C] =3D DVO_PORT_DPC,
> -		[PORT_D] =3D DVO_PORT_DPD,
> -		[PORT_E] =3D DVO_PORT_DPE,
> -		[PORT_F] =3D DVO_PORT_DPF,
> -	};
> +	const struct intel_bios_encoder_data *devdata =3D
> +		intel_bios_encoder_data_lookup(i915, port);
>=20=20
> -	if (has_ddi_port_info(i915)) {
> -		const struct intel_bios_encoder_data *devdata;
> -
> -		devdata =3D intel_bios_encoder_data_lookup(i915, port);
> -
> -		return devdata && intel_bios_encoder_supports_edp(devdata);
> -	}
> -
> -	list_for_each_entry(devdata, &i915->vbt.display_devices, node) {
> -		child =3D &devdata->child;
> -
> -		if (child->dvo_port =3D=3D port_mapping[port] &&
> -		    (child->device_type & DEVICE_TYPE_eDP_BITS) =3D=3D
> -		    (DEVICE_TYPE_eDP & DEVICE_TYPE_eDP_BITS))
> -			return true;
> -	}
> -
> -	return false;
> +	return devdata && intel_bios_encoder_supports_edp(devdata);
>  }
>=20=20
>  static bool child_dev_is_dp_dual_mode(const struct child_device_config *=
child)
> @@ -2755,40 +2704,10 @@ static bool child_dev_is_dp_dual_mode(const struc=
t child_device_config *child)
>  bool intel_bios_is_port_dp_dual_mode(struct drm_i915_private *i915,
>  				     enum port port)
>  {
> -	static const struct {
> -		u16 dp, hdmi;
> -	} port_mapping[] =3D {
> -		/*
> -		 * Buggy VBTs may declare DP ports as having
> -		 * HDMI type dvo_port :( So let's check both.
> -		 */
> -		[PORT_B] =3D { DVO_PORT_DPB, DVO_PORT_HDMIB, },
> -		[PORT_C] =3D { DVO_PORT_DPC, DVO_PORT_HDMIC, },
> -		[PORT_D] =3D { DVO_PORT_DPD, DVO_PORT_HDMID, },
> -		[PORT_E] =3D { DVO_PORT_DPE, DVO_PORT_HDMIE, },
> -		[PORT_F] =3D { DVO_PORT_DPF, DVO_PORT_HDMIF, },
> -	};
> -	const struct intel_bios_encoder_data *devdata;
> +	const struct intel_bios_encoder_data *devdata =3D
> +		intel_bios_encoder_data_lookup(i915, port);
>=20=20
> -	if (has_ddi_port_info(i915)) {
> -		const struct intel_bios_encoder_data *devdata;
> -
> -		devdata =3D intel_bios_encoder_data_lookup(i915, port);
> -
> -		return devdata && child_dev_is_dp_dual_mode(&devdata->child);
> -	}
> -
> -	if (port =3D=3D PORT_A || port >=3D ARRAY_SIZE(port_mapping))
> -		return false;
> -
> -	list_for_each_entry(devdata, &i915->vbt.display_devices, node) {
> -		if ((devdata->child.dvo_port =3D=3D port_mapping[port].dp ||
> -		     devdata->child.dvo_port =3D=3D port_mapping[port].hdmi) &&
> -		    child_dev_is_dp_dual_mode(&devdata->child))
> -			return true;
> -	}
> -
> -	return false;
> +	return devdata && child_dev_is_dp_dual_mode(&devdata->child);
>  }
>=20=20
>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index f043d85ba64d..c23582769f34 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -226,21 +226,6 @@ struct bdb_general_features {
>  #define DEVICE_TYPE_DIGITAL_OUTPUT	(1 << 1)
>  #define DEVICE_TYPE_ANALOG_OUTPUT	(1 << 0)
>=20=20
> -/*
> - * Bits we care about when checking for DEVICE_TYPE_eDP. Depending on the
> - * system, the other bits may or may not be set for eDP outputs.
> - */
> -#define DEVICE_TYPE_eDP_BITS \
> -	(DEVICE_TYPE_INTERNAL_CONNECTOR |	\
> -	 DEVICE_TYPE_MIPI_OUTPUT |		\
> -	 DEVICE_TYPE_COMPOSITE_OUTPUT |		\
> -	 DEVICE_TYPE_DUAL_CHANNEL |		\
> -	 DEVICE_TYPE_LVDS_SIGNALING |		\
> -	 DEVICE_TYPE_TMDS_DVI_SIGNALING |	\
> -	 DEVICE_TYPE_VIDEO_SIGNALING |		\
> -	 DEVICE_TYPE_DISPLAYPORT_OUTPUT |	\
> -	 DEVICE_TYPE_ANALOG_OUTPUT)
> -
>  #define DEVICE_TYPE_DP_DUAL_MODE_BITS \
>  	(DEVICE_TYPE_INTERNAL_CONNECTOR |	\
>  	 DEVICE_TYPE_MIPI_OUTPUT |		\

--=20
Jani Nikula, Intel Open Source Graphics Center
