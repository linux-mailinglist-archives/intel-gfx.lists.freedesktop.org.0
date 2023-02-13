Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 556F9694C16
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 17:13:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D120210E602;
	Mon, 13 Feb 2023 16:13:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DF0D10E610
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 16:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676304785; x=1707840785;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=69T+px1bqc23NTwlKDS/dtQbJH7OjXibKWN3EulZgYE=;
 b=BahERQk/JgbKIMgnGO8aNxdR5jeqnldo+JnV0bR1zHd3WDBkAaquwY5g
 R0S2dbIHCaYuIN7MOhuo/GGxb45mzuW7xdwCuZ4WvNQKU/zR7f2VOxOWs
 elh2mVSGcXmVhu2HeF8xINQW/A5ZDQkRYHjldMbY//3ev3cD8WZCAOEwq
 pml+EdaGmqrtodjWsWdi4z6bln3eoLgWuIBKB0ij7kAsrVrP7C7Iq6rvg
 HRfwbatb2a9uswwBwrcH4dGirsa/JknJlgnHt7OX6xXOQYjUKnHpIjDDd
 pMQm2pOpR3ua8kl6jaGynuPZQ4JCK1LOSMERzUjSmOepDaWq4PSX0CfQN w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="358330485"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="358330485"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 08:12:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="757635929"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="757635929"
Received: from tkatila-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.147])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 08:12:57 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230208015508.24824-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
 <20230208015508.24824-8-ville.syrjala@linux.intel.com>
Date: Mon, 13 Feb 2023 18:12:50 +0200
Message-ID: <87edqtv919.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 07/10] drm/i915: Populate encoder->devdata
 for g4x+ DP/HDMI ports
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

On Wed, 08 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Let's make encoder->devdata (the VBT informaiton for the port)

*information

> available on g4x+ platforms as well. Much easier when you can
> just grab it there instead of trying to find it from some global
> list array based on the port.
>
> Note that (unlike DDI platforms) we don't currently require
> that each DP/HDMI port is actually declared in VBT. Perhaps
> in the future we may want to rethink that, but for now just
> stick in a debug+FIXME as a reminder.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c   | 10 ++++++++++
>  drivers/gpu/drm/i915/display/g4x_hdmi.c | 10 ++++++++++
>  2 files changed, 20 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915=
/display/g4x_dp.c
> index fa754038d669..0cc1531a03a3 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -1279,11 +1279,19 @@ static const struct drm_encoder_funcs intel_dp_en=
c_funcs =3D {
>  bool g4x_dp_init(struct drm_i915_private *dev_priv,
>  		 i915_reg_t output_reg, enum port port)
>  {
> +	const struct intel_bios_encoder_data *devdata;
>  	struct intel_digital_port *dig_port;
>  	struct intel_encoder *intel_encoder;
>  	struct drm_encoder *encoder;
>  	struct intel_connector *intel_connector;
>=20=20
> +	devdata =3D intel_bios_encoder_data_lookup(dev_priv, port);
> +
> +	/* FIXME bail? */
> +	if (!devdata)
> +		drm_dbg_kms(&dev_priv->drm, "No VBT child device for DP-%c\n",
> +			    port_name(port));
> +
>  	dig_port =3D kzalloc(sizeof(*dig_port), GFP_KERNEL);
>  	if (!dig_port)
>  		return false;
> @@ -1295,6 +1303,8 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
>  	intel_encoder =3D &dig_port->base;
>  	encoder =3D &intel_encoder->base;
>=20=20
> +	intel_encoder->devdata =3D devdata;
> +
>  	mutex_init(&dig_port->hdcp_mutex);
>=20=20
>  	if (drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i9=
15/display/g4x_hdmi.c
> index 64c3b3990702..e9ae4c67b8a4 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -548,10 +548,18 @@ intel_hdmi_hotplug(struct intel_encoder *encoder,
>  void g4x_hdmi_init(struct drm_i915_private *dev_priv,
>  		   i915_reg_t hdmi_reg, enum port port)
>  {
> +	const struct intel_bios_encoder_data *devdata;
>  	struct intel_digital_port *dig_port;
>  	struct intel_encoder *intel_encoder;
>  	struct intel_connector *intel_connector;
>=20=20
> +	devdata =3D intel_bios_encoder_data_lookup(dev_priv, port);
> +
> +	/* FIXME bail? */
> +	if (!devdata)
> +		drm_dbg_kms(&dev_priv->drm, "No VBT child device for HDMI-%c\n",
> +			    port_name(port));
> +
>  	dig_port =3D kzalloc(sizeof(*dig_port), GFP_KERNEL);
>  	if (!dig_port)
>  		return;
> @@ -564,6 +572,8 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
>=20=20
>  	intel_encoder =3D &dig_port->base;
>=20=20
> +	intel_encoder->devdata =3D devdata;
> +
>  	mutex_init(&dig_port->hdcp_mutex);
>=20=20
>  	drm_encoder_init(&dev_priv->drm, &intel_encoder->base,

--=20
Jani Nikula, Intel Open Source Graphics Center
