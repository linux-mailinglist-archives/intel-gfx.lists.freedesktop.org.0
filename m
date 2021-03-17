Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9251133F97C
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Mar 2021 20:42:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 859BC6E029;
	Wed, 17 Mar 2021 19:42:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 921096E029
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Mar 2021 19:42:53 +0000 (UTC)
IronPort-SDR: iwvvQBC28WzoqpAn6WMRnONvOvS3L58NJ74yGMWEw+QwFRhLUt4Ae8qeKFlbKwXKeEfiiwCJ+Y
 7FEapFBgmNQw==
X-IronPort-AV: E=McAfee;i="6000,8403,9926"; a="169450792"
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="169450792"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 12:42:52 -0700
IronPort-SDR: MeEOOapicVifG8FedhYG9gFP3XQCs0ejBrLbyG23Mr/Ghiuo/5ELxms/NWpVezW4DkRA2ikWPY
 GzZsT7qY0E8g==
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="522982278"
Received: from jksalasr-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.42.17])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 12:42:51 -0700
Date: Wed, 17 Mar 2021 12:42:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210317194250.z3brrb32l6ffzqhx@ldmartin-desk2>
References: <cover.1615998927.git.jani.nikula@intel.com>
 <2bd40ccc093796d16300742d1789d78ffac3c450.1615998927.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2bd40ccc093796d16300742d1789d78ffac3c450.1615998927.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 10/14] drm/i915/bios: add helper
 functions to check output support
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

On Wed, Mar 17, 2021 at 06:36:49PM +0200, Jani Nikula wrote:
>These will be exposed to the rest of the driver and replace other
>functions. Everything will operate on the child devices.
>
>v2:
>- Rebased, removed stray blank line
>- Also abstracted intel_bios_encoder_supports_crt (Lucas)
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_bios.c | 71 +++++++++++++++++++----
> 1 file changed, 59 insertions(+), 12 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i=
915/display/intel_bios.c
>index 40fd60acd548..43cb5048ab9a 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>@@ -1795,6 +1795,59 @@ static int parse_bdb_216_dp_max_link_rate(const int=
 vbt_max_link_rate)
> 	}
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

nit: a little more readable if this function uses the helpers you just
defined:


	if (!intel_bios_encoder_supports_dvi(devdata))
		return;

	drm_dbg_kms(&i915->drm, "VBT claims port A supports DVI%s, ignoring\n",
		    intel_bios_encoder_supports_hdmi(devdata) ? "/HDMI" : "");


although the  lines below are manipulating the device_type and may be
good to let the constants here, too. Up to you.

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi


>+
>+	devdata->child.device_type &=3D ~DEVICE_TYPE_TMDS_DVI_SIGNALING;
>+	devdata->child.device_type |=3D DEVICE_TYPE_NOT_HDMI_OUTPUT;
>+}
>+
>+static bool
>+intel_bios_encoder_supports_crt(const struct intel_bios_encoder_data *dev=
data)
>+{
>+	return devdata->child.device_type & DEVICE_TYPE_ANALOG_OUTPUT;
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
>@@ -1816,19 +1869,13 @@ static void parse_ddi_port(struct drm_i915_private=
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
>+	is_crt =3D intel_bios_encoder_supports_crt(devdata);
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
