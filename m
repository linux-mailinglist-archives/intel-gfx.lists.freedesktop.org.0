Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65AE833C4B2
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Mar 2021 18:41:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7428789B83;
	Mon, 15 Mar 2021 17:41:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 887A889B83
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Mar 2021 17:41:24 +0000 (UTC)
IronPort-SDR: wWMX5WSG6rqmHB4PwVFQ/BCtxGNLdHRIlxTjZjbC2g3ogm2f2LoCAcOyPM5AoRNkwxZ4BQ0ogq
 Z68hGsRyZqFw==
X-IronPort-AV: E=McAfee;i="6000,8403,9924"; a="274171291"
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="274171291"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 10:41:19 -0700
IronPort-SDR: 3P/oPF2Wxu6dYl0NQmpghOb9byE/lpCZkrJeIQx4YkRzdyyOlLwnGLcqXuMNVR7k48JQ6bQGXP
 3f11eRrSkjvA==
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="590386025"
Received: from jhou13-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.152.93])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 10:41:18 -0700
Date: Mon, 15 Mar 2021 10:41:18 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210315174118.qzgfmbu4jr4ix3hy@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <cover.1613580193.git.jani.nikula@intel.com>
 <a22d2cbb7d3a960656c502a011b21b41601af9f4.1613580193.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a22d2cbb7d3a960656c502a011b21b41601af9f4.1613580193.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 10/12] drm/i915/bios: start using the
 intel_bios_encoder_data directly
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 17, 2021 at 07:03:40PM +0200, Jani Nikula wrote:
>Start using struct intel_bios_encoder_data directly. We'll start
>sanitizing the child device data directly as well, instead of the cached
>data in ddi_port_info[]. The one downside here is having to store a
>non-const pointer back to intel_bios_encoder_data.
>
>Eventually we'll be able to have a direct pointer from encoder to
>intel_bios_encoder_data, removing the need to go through the
>ddi_port_info[] array altogether. And we'll be able to remove the cached
>data in ddi_port_info[].
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_bios.c | 37 +++++++++--------------
> drivers/gpu/drm/i915/display/intel_bios.h | 10 ++++--
> drivers/gpu/drm/i915/display/intel_ddi.c  | 15 +++++++--
> drivers/gpu/drm/i915/i915_drv.h           |  4 +--
> 4 files changed, 35 insertions(+), 31 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i=
915/display/intel_bios.c
>index 47e9c609f82a..d26304ebc6b9 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>@@ -1529,6 +1529,8 @@ static void sanitize_ddc_pin(struct drm_i915_private=
 *i915,
>
> 	p =3D get_port_by_ddc_pin(i915, info->alternate_ddc_pin);
> 	if (p !=3D PORT_NONE) {
>+		struct child_device_config *child;
>+
> 		drm_dbg_kms(&i915->drm,
> 			    "port %c trying to use the same DDC pin (0x%x) as port %c, "
> 			    "disabling port %c DVI/HDMI support\n",
>@@ -1548,9 +1550,11 @@ static void sanitize_ddc_pin(struct drm_i915_privat=
e *i915,
> 		 * we must pick port E :(
> 		 */
> 		info =3D &i915->vbt.ddi_port_info[p];
>+		child =3D &info->devdata->child;
>+
>+		child->device_type &=3D ~DEVICE_TYPE_TMDS_DVI_SIGNALING;
>+		child->device_type |=3D DEVICE_TYPE_NOT_HDMI_OUTPUT;
>
>-		info->supports_dvi =3D false;
>-		info->supports_hdmi =3D false;
> 		info->alternate_ddc_pin =3D 0;
> 	}
> }
>@@ -1783,20 +1787,20 @@ static void sanitize_device_type(struct intel_bios=
_encoder_data *devdata,
> 	devdata->child.device_type |=3D DEVICE_TYPE_NOT_HDMI_OUTPUT;
> }
>
>-static bool
>+bool
> intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_data *dev=
data)
> {
> 	return devdata->child.device_type & DEVICE_TYPE_TMDS_DVI_SIGNALING;
> }
>
>-static bool
>+bool
> intel_bios_encoder_supports_hdmi(const struct intel_bios_encoder_data *de=
vdata)
> {
> 	return intel_bios_encoder_supports_dvi(devdata) &&
> 		(devdata->child.device_type & DEVICE_TYPE_NOT_HDMI_OUTPUT) =3D=3D 0;
> }
>
>-static bool
>+bool
> intel_bios_encoder_supports_dp(const struct intel_bios_encoder_data *devd=
ata)
> {
> 	return devdata->child.device_type & DEVICE_TYPE_DISPLAYPORT_OUTPUT;
>@@ -1838,8 +1842,6 @@ static void parse_ddi_port(struct drm_i915_private *=
i915,
> 	is_hdmi =3D intel_bios_encoder_supports_hdmi(devdata);
> 	is_edp =3D intel_bios_encoder_supports_edp(devdata);
>
>-	info->supports_dvi =3D is_dvi;
>-	info->supports_hdmi =3D is_hdmi;
> 	info->supports_dp =3D is_dp;
> 	info->supports_edp =3D is_edp;
>
>@@ -2901,21 +2903,6 @@ int intel_bios_alternate_ddc_pin(struct intel_encod=
er *encoder)
> 	return i915->vbt.ddi_port_info[encoder->port].alternate_ddc_pin;
> }
>
>-bool intel_bios_port_supports_dvi(struct drm_i915_private *i915, enum por=
t port)
>-{
>-	return i915->vbt.ddi_port_info[port].supports_dvi;
>-}
>-
>-bool intel_bios_port_supports_hdmi(struct drm_i915_private *i915, enum po=
rt port)
>-{
>-	return i915->vbt.ddi_port_info[port].supports_hdmi;
>-}
>-
>-bool intel_bios_port_supports_dp(struct drm_i915_private *i915, enum port=
 port)
>-{
>-	return i915->vbt.ddi_port_info[port].supports_dp;
>-}
>-
> bool intel_bios_port_supports_typec_usb(struct drm_i915_private *i915,
> 					enum port port)
> {
>@@ -2926,3 +2913,9 @@ bool intel_bios_port_supports_tbt(struct drm_i915_pr=
ivate *i915, enum port port)
> {
> 	return i915->vbt.ddi_port_info[port].supports_tbt;
> }
>+
>+const struct intel_bios_encoder_data *
>+intel_bios_encoder_data_lookup(struct drm_i915_private *i915, enum port p=
ort)
>+{
>+	return i915->vbt.ddi_port_info[port].devdata;
>+}
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i=
915/display/intel_bios.h
>index 6591cf7758f2..18b5c2976bd4 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.h
>+++ b/drivers/gpu/drm/i915/display/intel_bios.h
>@@ -254,10 +254,14 @@ int intel_bios_dp_boost_level(struct intel_encoder *=
encoder);
> int intel_bios_hdmi_boost_level(struct intel_encoder *encoder);
> int intel_bios_dp_max_link_rate(struct intel_encoder *encoder);
> int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder);
>-bool intel_bios_port_supports_dvi(struct drm_i915_private *i915, enum por=
t port);
>-bool intel_bios_port_supports_hdmi(struct drm_i915_private *i915, enum po=
rt port);
>-bool intel_bios_port_supports_dp(struct drm_i915_private *i915, enum port=
 port);
> bool intel_bios_port_supports_typec_usb(struct drm_i915_private *i915, en=
um port port);
> bool intel_bios_port_supports_tbt(struct drm_i915_private *i915, enum por=
t port);
>
>+const struct intel_bios_encoder_data *
>+intel_bios_encoder_data_lookup(struct drm_i915_private *i915, enum port p=
ort);
>+
>+bool intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_data=
 *devdata);
>+bool intel_bios_encoder_supports_hdmi(const struct intel_bios_encoder_dat=
a *devdata);
>+bool intel_bios_encoder_supports_dp(const struct intel_bios_encoder_data =
*devdata);
>+
> #endif /* _INTEL_BIOS_H_ */
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index eeae78097a20..1a2f7725f8ec 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -3973,6 +3973,7 @@ void intel_ddi_init(struct drm_i915_private *dev_pri=
v, enum port port)
> {
> 	struct intel_digital_port *dig_port;
> 	struct intel_encoder *encoder;
>+	const struct intel_bios_encoder_data *devdata;
> 	bool init_hdmi, init_dp;
> 	enum phy phy =3D intel_port_to_phy(dev_priv, port);
>
>@@ -3988,9 +3989,17 @@ void intel_ddi_init(struct drm_i915_private *dev_pr=
iv, enum port port)
> 		return;
> 	}
>
>-	init_hdmi =3D intel_bios_port_supports_dvi(dev_priv, port) ||
>-		intel_bios_port_supports_hdmi(dev_priv, port);
>-	init_dp =3D intel_bios_port_supports_dp(dev_priv, port);
>+	devdata =3D intel_bios_encoder_data_lookup(dev_priv, port);
>+	if (!devdata) {
>+		drm_dbg_kms(&dev_priv->drm,
>+			    "VBT says port %c is not present\n",
>+			    port_name(port));
>+		return;
>+	}
>+
>+	init_hdmi =3D intel_bios_encoder_supports_dvi(devdata) ||
>+		intel_bios_encoder_supports_hdmi(devdata);
>+	init_dp =3D intel_bios_encoder_supports_dp(devdata);
>
> 	if (intel_bios_is_lspcon_present(dev_priv, port)) {
> 		/*
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_d=
rv.h
>index e2c5ba61b370..57712a617839 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -584,7 +584,7 @@ i915_fence_timeout(const struct drm_i915_private *i915)
>
> struct ddi_vbt_port_info {
> 	/* Non-NULL if port present. */
>-	const struct intel_bios_encoder_data *devdata;
>+	struct intel_bios_encoder_data *devdata;
>
> 	int max_tmds_clock;
>
>@@ -592,8 +592,6 @@ struct ddi_vbt_port_info {
> 	u8 hdmi_level_shift;
> 	u8 hdmi_level_shift_set:1;
>
>-	u8 supports_dvi:1;
>-	u8 supports_hdmi:1;
> 	u8 supports_dp:1;
> 	u8 supports_edp:1;
> 	u8 supports_typec_usb:1;
>-- =

>2.20.1
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
