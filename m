Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B208747CF57
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 10:34:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2E471129FC;
	Wed, 22 Dec 2021 09:34:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60D8A1129FC
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Dec 2021 09:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640165692; x=1671701692;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=hUQjHf4ArlnQhemTyOQN1I3xBNiNF4m2VKg5bjMSh1w=;
 b=SrHfMGsfcJQL+O5DPTcH64SNHhlk28MCJB8pY6YfgiucNw1ycVKP80wN
 FxiIX2BdCKbiQjjqFj3UHMqscLMmCY6IWsu9f8RgEOIWnvT8RuTVGLk5J
 Q6yY5XxSsymlz9+iRIcrsMYAKFjesYRDzRVHXfDGXM1sPM7xdIg+0RtM+
 lnINj9pc3Pb/rSEfZBuQLAi6tWfWjVeSKOr+fM9kypypZVQuAfPLcNOzx
 PwbgmZHzfYQPFMFbV5nppL1zBsrIZ5Zi3Ng44BFdhAO+OVB1S2gRtJYQ4
 ZcPJdS4jB3J0TA8Ud3gj5b0wPdMTj1w7LDt3Oxs7qgZObaQSYqFB5aZmJ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="238122266"
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="238122266"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 01:34:51 -0800
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="508409701"
Received: from aravind2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.9.217])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 01:34:50 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211217155403.31477-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
 <20211217155403.31477-6-ville.syrjala@linux.intel.com>
Date: Wed, 22 Dec 2021 11:34:47 +0200
Message-ID: <8735mlyoco.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/bios: Nuke
 DEVICE_TYPE_DP_DUAL_MODE_BITS
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
> Replace the DEVICE_TYPE_DP_DUAL_MODE_BITS stuff with just
> a DP+HDMI check. The rest of the bits shouldn't really
> matter anyway.
>
> The slight change in behaviour here is that now we do look at
> the DEVICE_TYPE_NOT_HDMI_OUTPUT bit (via
> intel_bios_encoder_supports_hdmi()) when we previously ignored it.
> The one platform we know that has problems with that bit is VLV.
> But IIRC the problem was always that buggy VBTs basically never
> set that bit. So that should be OK since all it would do is make
> all DVI ports look like HDMI ports instead. Also can't imagine
> there are many VLV machines with actual DVI ports in existence.

One other thing is dropping the requirement for
DEVICE_TYPE_DIGITAL_OUTPUT. I don't know if that should be part of
intel_bios_encoder_supports_{hdmi,dp}(). *shrug*

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> We still keep the rest of the dvo_port/aux_ch checks as we
> can't trust that DP+HDMI device type equals DP++ due to
> buggy VBTs.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 10 ++++++----
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 11 -----------
>  2 files changed, 6 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index f5aa2c72b2fe..d1909ad28306 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2684,10 +2684,12 @@ bool intel_bios_is_port_edp(struct drm_i915_priva=
te *i915, enum port port)
>  	return devdata && intel_bios_encoder_supports_edp(devdata);
>  }
>=20=20
> -static bool child_dev_is_dp_dual_mode(const struct child_device_config *=
child)
> +static bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_=
bios_encoder_data *devdata)
>  {
> -	if ((child->device_type & DEVICE_TYPE_DP_DUAL_MODE_BITS) !=3D
> -	    (DEVICE_TYPE_DP_DUAL_MODE & DEVICE_TYPE_DP_DUAL_MODE_BITS))
> +	const struct child_device_config *child =3D &devdata->child;
> +
> +	if (!intel_bios_encoder_supports_dp(devdata) ||
> +	    !intel_bios_encoder_supports_hdmi(devdata))
>  		return false;
>=20=20
>  	if (dvo_port_type(child->dvo_port) =3D=3D DVO_PORT_DPA)
> @@ -2707,7 +2709,7 @@ bool intel_bios_is_port_dp_dual_mode(struct drm_i91=
5_private *i915,
>  	const struct intel_bios_encoder_data *devdata =3D
>  		intel_bios_encoder_data_lookup(i915, port);
>=20=20
> -	return devdata && child_dev_is_dp_dual_mode(&devdata->child);
> +	return devdata && intel_bios_encoder_supports_dp_dual_mode(devdata);
>  }
>=20=20
>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index c23582769f34..a39d6cfea87a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -226,17 +226,6 @@ struct bdb_general_features {
>  #define DEVICE_TYPE_DIGITAL_OUTPUT	(1 << 1)
>  #define DEVICE_TYPE_ANALOG_OUTPUT	(1 << 0)
>=20=20
> -#define DEVICE_TYPE_DP_DUAL_MODE_BITS \
> -	(DEVICE_TYPE_INTERNAL_CONNECTOR |	\
> -	 DEVICE_TYPE_MIPI_OUTPUT |		\
> -	 DEVICE_TYPE_COMPOSITE_OUTPUT |		\
> -	 DEVICE_TYPE_LVDS_SIGNALING |		\
> -	 DEVICE_TYPE_TMDS_DVI_SIGNALING |	\
> -	 DEVICE_TYPE_VIDEO_SIGNALING |		\
> -	 DEVICE_TYPE_DISPLAYPORT_OUTPUT |	\
> -	 DEVICE_TYPE_DIGITAL_OUTPUT |		\
> -	 DEVICE_TYPE_ANALOG_OUTPUT)
> -
>  #define DEVICE_CFG_NONE		0x00
>  #define DEVICE_CFG_12BIT_DVOB	0x01
>  #define DEVICE_CFG_12BIT_DVOC	0x02

--=20
Jani Nikula, Intel Open Source Graphics Center
