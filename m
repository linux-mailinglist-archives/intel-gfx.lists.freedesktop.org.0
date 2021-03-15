Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B0933C4C5
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Mar 2021 18:49:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF4D289FA9;
	Mon, 15 Mar 2021 17:49:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 519F589FA0
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Mar 2021 17:49:23 +0000 (UTC)
IronPort-SDR: BScj42QMNcO53883DwwekFCI4jCnmNhnjZve+Ge6xSfHSLJK/U4iF9xL29x4UfO8dyLLqeOtXS
 pQ4VDWVoswGg==
X-IronPort-AV: E=McAfee;i="6000,8403,9924"; a="189179870"
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="189179870"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 10:49:16 -0700
IronPort-SDR: U5CdZn2oF3+d2LNHc8sOoTX6N2CKergGgQkedkvLXEP15ae7NCCgXwmGoKLnk+GPpVsrl6YpL2
 Gjc7QehAUYBw==
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="601514273"
Received: from jhou13-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.152.93])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 10:49:15 -0700
Date: Mon, 15 Mar 2021 10:49:14 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210315174914.cxnnxfnsrbb2fej5@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <cover.1613580193.git.jani.nikula@intel.com>
 <9a3ee9995b361f253fd297dc59c3242eee8ed5d3.1613580193.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9a3ee9995b361f253fd297dc59c3242eee8ed5d3.1613580193.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 11/12] drm/i915/bios: start using
 intel_bios_encoder_data for Type-C USB and TBT
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

On Wed, Feb 17, 2021 at 07:03:41PM +0200, Jani Nikula wrote:
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

minor: the commit message could add something saying we are phasing out
ddi_port_info and everyone should use the helper functions that are
using the raw data from vbt, replaced with a fake one when that is
missing.



This is missing the removal of supports_typec_usb and supports_tbt from
ddi_vbt_port_info.

with that,


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_bios.c | 20 ++++++++------------
> drivers/gpu/drm/i915/display/intel_bios.h |  2 ++
> drivers/gpu/drm/i915/display/intel_ddi.c  |  4 ++--
> 3 files changed, 12 insertions(+), 14 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i=
915/display/intel_bios.c
>index d26304ebc6b9..13a38cd01692 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>@@ -1818,7 +1818,7 @@ static void parse_ddi_port(struct drm_i915_private *=
i915,
> {
> 	const struct child_device_config *child =3D &devdata->child;
> 	struct ddi_vbt_port_info *info;
>-	bool is_dvi, is_hdmi, is_dp, is_edp, is_crt;
>+	bool is_dvi, is_hdmi, is_dp, is_edp, is_crt, supports_typec_usb, support=
s_tbt;
> 	enum port port;
>
> 	port =3D dvo_port_to_port(i915, child->dvo_port);
>@@ -1845,17 +1845,14 @@ static void parse_ddi_port(struct drm_i915_private=
 *i915,
> 	info->supports_dp =3D is_dp;
> 	info->supports_edp =3D is_edp;
>
>-	if (i915->vbt.version >=3D 195)
>-		info->supports_typec_usb =3D child->dp_usb_type_c;
>-
>-	if (i915->vbt.version >=3D 209)
>-		info->supports_tbt =3D child->tbt;
>+	supports_typec_usb =3D intel_bios_encoder_supports_typec_usb(devdata);
>+	supports_tbt =3D intel_bios_encoder_supports_tbt(devdata);
>
> 	drm_dbg_kms(&i915->drm,
> 		    "Port %c VBT info: CRT:%d DVI:%d HDMI:%d DP:%d eDP:%d LSPCON:%d USB=
-Type-C:%d TBT:%d DSC:%d\n",
> 		    port_name(port), is_crt, is_dvi, is_hdmi, is_dp, is_edp,
> 		    HAS_LSPCON(i915) && child->lspcon,
>-		    info->supports_typec_usb, info->supports_tbt,
>+		    supports_typec_usb, supports_tbt,
> 		    devdata->dsc !=3D NULL);
>
> 	if (is_dvi) {
>@@ -2903,15 +2900,14 @@ int intel_bios_alternate_ddc_pin(struct intel_enco=
der *encoder)
> 	return i915->vbt.ddi_port_info[encoder->port].alternate_ddc_pin;
> }
>
>-bool intel_bios_port_supports_typec_usb(struct drm_i915_private *i915,
>-					enum port port)
>+bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encode=
r_data *devdata)
> {
>-	return i915->vbt.ddi_port_info[port].supports_typec_usb;
>+	return devdata->i915->vbt.version >=3D 195 && devdata->child.dp_usb_type=
_c;
> }
>
>-bool intel_bios_port_supports_tbt(struct drm_i915_private *i915, enum por=
t port)
>+bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data=
 *devdata)
> {
>-	return i915->vbt.ddi_port_info[port].supports_tbt;
>+	return devdata->i915->vbt.version >=3D 209 && devdata->child.tbt;
> }
>
> const struct intel_bios_encoder_data *
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i=
915/display/intel_bios.h
>index 18b5c2976bd4..f82cef29ab5a 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.h
>+++ b/drivers/gpu/drm/i915/display/intel_bios.h
>@@ -263,5 +263,7 @@ intel_bios_encoder_data_lookup(struct drm_i915_private=
 *i915, enum port port);
> bool intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_data=
 *devdata);
> bool intel_bios_encoder_supports_hdmi(const struct intel_bios_encoder_dat=
a *devdata);
> bool intel_bios_encoder_supports_dp(const struct intel_bios_encoder_data =
*devdata);
>+bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encode=
r_data *devdata);
>+bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data=
 *devdata);
>
> #endif /* _INTEL_BIOS_H_ */
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index 1a2f7725f8ec..0bf783f67a59 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -4150,8 +4150,8 @@ void intel_ddi_init(struct drm_i915_private *dev_pri=
v, enum port port)
>
> 	if (intel_phy_is_tc(dev_priv, phy)) {
> 		bool is_legacy =3D
>-			!intel_bios_port_supports_typec_usb(dev_priv, port) &&
>-			!intel_bios_port_supports_tbt(dev_priv, port);
>+			!intel_bios_encoder_supports_typec_usb(devdata) &&
>+			!intel_bios_encoder_supports_tbt(devdata);
>
> 		intel_tc_port_init(dig_port, is_legacy);
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
