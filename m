Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5EF31DE91
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 18:46:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9C936E9A6;
	Wed, 17 Feb 2021 17:46:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0D706E9A6
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 17:46:47 +0000 (UTC)
IronPort-SDR: 4XodwHJc1N0B4yiE7+GwU+hCQoC2NW3339O7vxR0XnqgpVk54IeXiPVkIMffUen5I1GbEy16DY
 ALrzGQ941B4w==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="183339200"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="183339200"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 09:46:46 -0800
IronPort-SDR: MDkCPJWxQ2rKxg13qKWHc49jp/uLZ/WCnXH4JPyCM6ifm/OLXwb7EAk5mXbuzMCCWMuVc2jctR
 UJntS/EDzj8A==
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="439445558"
Received: from dsdani-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.4.37])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 09:46:45 -0800
Date: Wed, 17 Feb 2021 09:46:44 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210217174644.jq2fu57zzjdelpmc@ldmartin-desk1>
References: <cover.1613580193.git.jani.nikula@intel.com>
 <f4d0ce154544e1798b6b0fdcc156a90b40abd09b.1613580193.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f4d0ce154544e1798b6b0fdcc156a90b40abd09b.1613580193.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 08/12] drm/i915/vbt: add helper functions to
 check output support
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

On Wed, Feb 17, 2021 at 07:03:38PM +0200, Jani Nikula wrote:
>These will be exposed to the rest of the driver and replace other
>functions. Everything will operate on the child devices.
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_bios.c | 66 ++++++++++++++++++-----
> 1 file changed, 54 insertions(+), 12 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i=
915/display/intel_bios.c
>index 193772f42582..739ef5d91907 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>@@ -64,6 +64,7 @@ struct intel_bios_encoder_data {
>
> 	struct child_device_config child;
> 	struct dsc_compression_parameters_entry *dsc;
>+
> 	struct list_head node;
> };
>
>@@ -1761,6 +1762,53 @@ static enum port dvo_port_to_port(struct drm_i915_p=
rivate *i915,
> 					  dvo_port);
> }
>
>+static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
>+				 enum port port)
>+{
>+	struct drm_i915_private *i915 =3D devdata->i915;
>+	bool is_hdmi;
>+
>+	if (port !=3D PORT_A || INTEL_GEN(i915) >=3D 12)
>+		return;
>+
>+	if (!(devdata->child.device_type & DEVICE_TYPE_TMDS_DVI_SIGNALING))
>+		return;
>+
>+	is_hdmi =3D !(devdata->child.device_type & DEVICE_TYPE_NOT_HDMI_OUTPUT);
>+
>+	drm_dbg_kms(&i915->drm, "VBT claims port A supports DVI%s, ignoring\n",
>+		    is_hdmi ? "/HDMI" : "");
>+
>+	devdata->child.device_type &=3D ~DEVICE_TYPE_TMDS_DVI_SIGNALING;
>+	devdata->child.device_type |=3D DEVICE_TYPE_NOT_HDMI_OUTPUT;
>+}
>+
>+static bool
>+intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_data *dev=
data)
>+{
>+	return devdata->child.device_type & DEVICE_TYPE_TMDS_DVI_SIGNALING;
>+}
>+
>+static bool
>+intel_bios_encoder_supports_hdmi(const struct intel_bios_encoder_data *de=
vdata)
>+{
>+	return intel_bios_encoder_supports_dvi(devdata) &&
>+		(devdata->child.device_type & DEVICE_TYPE_NOT_HDMI_OUTPUT) =3D=3D 0;
>+}
>+
>+static bool
>+intel_bios_encoder_supports_dp(const struct intel_bios_encoder_data *devd=
ata)
>+{
>+	return devdata->child.device_type & DEVICE_TYPE_DISPLAYPORT_OUTPUT;
>+}
>+
>+static bool
>+intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *dev=
data)
>+{
>+	return intel_bios_encoder_supports_dp(devdata) &&
>+		devdata->child.device_type & DEVICE_TYPE_INTERNAL_CONNECTOR;
>+}
>+
> static void parse_ddi_port(struct drm_i915_private *i915,
> 			   struct intel_bios_encoder_data *devdata)
> {
>@@ -1782,19 +1830,13 @@ static void parse_ddi_port(struct drm_i915_private=
 *i915,
> 		return;
> 	}
>
>-	is_dvi =3D child->device_type & DEVICE_TYPE_TMDS_DVI_SIGNALING;
>-	is_dp =3D child->device_type & DEVICE_TYPE_DISPLAYPORT_OUTPUT;
>-	is_crt =3D child->device_type & DEVICE_TYPE_ANALOG_OUTPUT;
>-	is_hdmi =3D is_dvi && (child->device_type & DEVICE_TYPE_NOT_HDMI_OUTPUT)=
 =3D=3D 0;
>-	is_edp =3D is_dp && (child->device_type & DEVICE_TYPE_INTERNAL_CONNECTOR=
);
>+	sanitize_device_type(devdata, port);
>
>-	if (port =3D=3D PORT_A && is_dvi && INTEL_GEN(i915) < 12) {
>-		drm_dbg_kms(&i915->drm,
>-			    "VBT claims port A supports DVI%s, ignoring\n",
>-			    is_hdmi ? "/HDMI" : "");
>-		is_dvi =3D false;
>-		is_hdmi =3D false;
>-	}
>+	is_dvi =3D intel_bios_encoder_supports_dvi(devdata);
>+	is_dp =3D intel_bios_encoder_supports_dp(devdata);
>+	is_crt =3D child->device_type & DEVICE_TYPE_ANALOG_OUTPUT;

any reason to leave this behind?

Lucas De Marchi

>+	is_hdmi =3D intel_bios_encoder_supports_hdmi(devdata);
>+	is_edp =3D intel_bios_encoder_supports_edp(devdata);
>
> 	info->supports_dvi =3D is_dvi;
> 	info->supports_hdmi =3D is_hdmi;
>-- =

>2.20.1
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
