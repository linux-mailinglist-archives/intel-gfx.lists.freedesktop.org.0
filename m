Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B028333C4D6
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Mar 2021 18:52:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8917189C84;
	Mon, 15 Mar 2021 17:52:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DF6489760
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Mar 2021 17:52:49 +0000 (UTC)
IronPort-SDR: O0hS3QGZPeCkp1VOzrhmpaVceUbwTd8SzMoporNf2y9R9LQzyr3R6adcIqQbAIq+D6arsFFAOb
 vLjyGygObXvA==
X-IronPort-AV: E=McAfee;i="6000,8403,9924"; a="185771668"
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="185771668"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 10:52:42 -0700
IronPort-SDR: Sy1YVgJ5aF50swhDT6g1w7x/5EQHCCDWd+8VIH0X4oPCM5N0RiNwYj9lZ8oYTac6Sa6BSobthi
 iqweQDVWnSDg==
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="511114805"
Received: from jhou13-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.152.93])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 10:52:41 -0700
Date: Mon, 15 Mar 2021 10:52:39 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210315175239.asdekqpz3nf26bmd@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <cover.1613580193.git.jani.nikula@intel.com>
 <4f788f6b6c9ba88839fd3a44ba16783f0c11b2fb.1613580193.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4f788f6b6c9ba88839fd3a44ba16783f0c11b2fb.1613580193.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 12/12] drm/i915/bios: add
 intel_bios_encoder_data to encoder, use for iboost
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

On Wed, Feb 17, 2021 at 07:03:42PM +0200, Jani Nikula wrote:
>Add intel_bios_encoder_data pointer to encoder, and use it for hdmi and
>dp iboost. For starters, we only set the encoder->devdata for DDI
>encoders, i.e. we can only use it for data that is used by DDI encoders.
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_bios.c     | 30 +++++++++++--------
> drivers/gpu/drm/i915/display/intel_bios.h     |  4 +--
> drivers/gpu/drm/i915/display/intel_ddi.c      |  9 +++---
> .../drm/i915/display/intel_display_types.h    |  3 ++
> drivers/gpu/drm/i915/i915_drv.h               |  2 --
> 5 files changed, 27 insertions(+), 21 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i=
915/display/intel_bios.c
>index 13a38cd01692..e1fcaf567222 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>@@ -1819,6 +1819,7 @@ static void parse_ddi_port(struct drm_i915_private *=
i915,
> 	const struct child_device_config *child =3D &devdata->child;
> 	struct ddi_vbt_port_info *info;
> 	bool is_dvi, is_hdmi, is_dp, is_edp, is_crt, supports_typec_usb, support=
s_tbt;
>+	int dp_boost_level, hdmi_boost_level;
> 	enum port port;
>
> 	port =3D dvo_port_to_port(i915, child->dvo_port);
>@@ -1912,17 +1913,18 @@ static void parse_ddi_port(struct drm_i915_private=
 *i915,
> 		info->max_tmds_clock =3D max_tmds_clock;
> 	}
>
>-	/* Parse the I_boost config for SKL and above */
>-	if (i915->vbt.version >=3D 196 && child->iboost) {
>-		info->dp_boost_level =3D translate_iboost(child->dp_iboost_level);
>+	/* I_boost config for SKL and above */
>+	dp_boost_level =3D intel_bios_encoder_dp_boost_level(devdata);
>+	if (dp_boost_level)
> 		drm_dbg_kms(&i915->drm,
> 			    "Port %c VBT (e)DP boost level: %d\n",
>-			    port_name(port), info->dp_boost_level);
>-		info->hdmi_boost_level =3D translate_iboost(child->hdmi_iboost_level);
>+			    port_name(port), dp_boost_level);
>+
>+	hdmi_boost_level =3D intel_bios_encoder_hdmi_boost_level(devdata);
>+	if (hdmi_boost_level)
> 		drm_dbg_kms(&i915->drm,
> 			    "Port %c VBT HDMI boost level: %d\n",
>-			    port_name(port), info->hdmi_boost_level);
>-	}
>+			    port_name(port), hdmi_boost_level);
>
> 	/* DP max link rate for CNL+ */
> 	if (i915->vbt.version >=3D 216) {
>@@ -2872,18 +2874,20 @@ int intel_bios_hdmi_level_shift(struct intel_encod=
er *encoder)
> 	return info->hdmi_level_shift_set ? info->hdmi_level_shift : -1;
> }
>
>-int intel_bios_dp_boost_level(struct intel_encoder *encoder)
>+int intel_bios_encoder_dp_boost_level(const struct intel_bios_encoder_dat=
a *devdata)
> {
>-	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>+	if (!devdata || devdata->i915->vbt.version < 196 || !devdata->child.iboo=
st)
>+		return 0;
>
>-	return i915->vbt.ddi_port_info[encoder->port].dp_boost_level;
>+	return translate_iboost(devdata->child.dp_iboost_level);
> }
>
>-int intel_bios_hdmi_boost_level(struct intel_encoder *encoder)
>+int intel_bios_encoder_hdmi_boost_level(const struct intel_bios_encoder_d=
ata *devdata)
> {
>-	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>+	if (!devdata || devdata->i915->vbt.version < 196 || !devdata->child.iboo=
st)
>+		return 0;
>
>-	return i915->vbt.ddi_port_info[encoder->port].hdmi_boost_level;
>+	return translate_iboost(devdata->child.hdmi_iboost_level);
> }
>
> int intel_bios_dp_max_link_rate(struct intel_encoder *encoder)
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i=
915/display/intel_bios.h
>index f82cef29ab5a..4709c4d29805 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.h
>+++ b/drivers/gpu/drm/i915/display/intel_bios.h
>@@ -250,8 +250,6 @@ bool intel_bios_get_dsc_params(struct intel_encoder *e=
ncoder,
> 			       int dsc_max_bpc);
> int intel_bios_max_tmds_clock(struct intel_encoder *encoder);
> int intel_bios_hdmi_level_shift(struct intel_encoder *encoder);
>-int intel_bios_dp_boost_level(struct intel_encoder *encoder);
>-int intel_bios_hdmi_boost_level(struct intel_encoder *encoder);
> int intel_bios_dp_max_link_rate(struct intel_encoder *encoder);
> int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder);
> bool intel_bios_port_supports_typec_usb(struct drm_i915_private *i915, en=
um port port);
>@@ -265,5 +263,7 @@ bool intel_bios_encoder_supports_hdmi(const struct int=
el_bios_encoder_data *devd
> bool intel_bios_encoder_supports_dp(const struct intel_bios_encoder_data =
*devdata);
> bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encode=
r_data *devdata);
> bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data=
 *devdata);
>+int intel_bios_encoder_dp_boost_level(const struct intel_bios_encoder_dat=
a *devdata);
>+int intel_bios_encoder_hdmi_boost_level(const struct intel_bios_encoder_d=
ata *devdata);
>
> #endif /* _INTEL_BIOS_H_ */
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index 0bf783f67a59..92aad11cc0e7 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -114,7 +114,7 @@ void intel_prepare_dp_ddi_buffers(struct intel_encoder=
 *encoder,
> 							      &n_entries);
>
> 	/* If we're boosting the current, set bit 31 of trans1 */
>-	if (IS_GEN9_BC(dev_priv) && intel_bios_dp_boost_level(encoder))
>+	if (IS_GEN9_BC(dev_priv) && intel_bios_encoder_dp_boost_level(encoder->d=
evdata))
> 		iboost_bit =3D DDI_BUF_BALANCE_LEG_ENABLE;
>
> 	for (i =3D 0; i < n_entries; i++) {
>@@ -147,7 +147,7 @@ static void intel_prepare_hdmi_ddi_buffers(struct inte=
l_encoder *encoder,
> 		level =3D n_entries - 1;
>
> 	/* If we're boosting the current, set bit 31 of trans1 */
>-	if (IS_GEN9_BC(dev_priv) && intel_bios_hdmi_boost_level(encoder))
>+	if (IS_GEN9_BC(dev_priv) && intel_bios_encoder_hdmi_boost_level(encoder-=
>devdata))
> 		iboost_bit =3D DDI_BUF_BALANCE_LEG_ENABLE;
>
> 	/* Entry 9 is for HDMI: */
>@@ -925,9 +925,9 @@ static void skl_ddi_set_iboost(struct intel_encoder *e=
ncoder,
> 	u8 iboost;
>
> 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
>-		iboost =3D intel_bios_hdmi_boost_level(encoder);
>+		iboost =3D intel_bios_encoder_hdmi_boost_level(encoder->devdata);
> 	else
>-		iboost =3D intel_bios_dp_boost_level(encoder);
>+		iboost =3D intel_bios_encoder_dp_boost_level(encoder->devdata);
>
> 	if (iboost =3D=3D 0) {
> 		const struct ddi_buf_trans *ddi_translations;
>@@ -4025,6 +4025,7 @@ void intel_ddi_init(struct drm_i915_private *dev_pri=
v, enum port port)
> 		return;
>
> 	encoder =3D &dig_port->base;
>+	encoder->devdata =3D devdata;
>
> 	if (INTEL_GEN(dev_priv) >=3D 12) {
> 		enum tc_port tc_port =3D intel_port_to_tc(dev_priv, port);
>diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/=
gpu/drm/i915/display/intel_display_types.h
>index 07b7f5eae587..91642b25ebcc 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_types.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>@@ -230,6 +230,9 @@ struct intel_encoder {
> 	enum intel_display_power_domain power_domain;
> 	/* for communication with audio component; protected by av_mutex */
> 	const struct drm_connector *audio_connector;
>+
>+	/* VBT information for this encoder (may be NULL for older platforms) */
>+	const struct intel_bios_encoder_data *devdata;
> };
>
> struct intel_panel_bl_funcs {
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_d=
rv.h
>index 57712a617839..03a6d9738fee 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -600,8 +600,6 @@ struct ddi_vbt_port_info {
> 	u8 alternate_aux_channel;
> 	u8 alternate_ddc_pin;
>
>-	u8 dp_boost_level;
>-	u8 hdmi_boost_level;
> 	int dp_max_link_rate;		/* 0 for not limited by VBT */
> };
>
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
