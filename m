Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 553B933C434
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Mar 2021 18:32:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD8E28970E;
	Mon, 15 Mar 2021 17:32:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BCF9899AB
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Mar 2021 17:32:41 +0000 (UTC)
IronPort-SDR: f8Gfye1i7pvFPGtmbFz2nOF0vZ63qJw5myXrnJkqM6tSSqPZeVqiSN/33jEw4KLgDMYK5Cp0Wk
 pPwaAJ9JhhYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9924"; a="189218270"
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="189218270"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 10:32:38 -0700
IronPort-SDR: vdU9HZ0Z1Quktj/YJgzoE+uVpuGvoGblk6ZxDe+0/wjw5ILPDV6eRDR2+8QVUgesj5rzxc36u9
 CLD/ngHKT26Q==
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="438960264"
Received: from jhou13-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.152.93])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 10:32:38 -0700
Date: Mon, 15 Mar 2021 10:32:38 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210315173238.4bsxk5mwmrnqw6er@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <cover.1613580193.git.jani.nikula@intel.com>
 <f4d0ce154544e1798b6b0fdcc156a90b40abd09b.1613580193.git.jani.nikula@intel.com>
 <20210217174644.jq2fu57zzjdelpmc@ldmartin-desk1>
 <87tuqaa2pi.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87tuqaa2pi.fsf@intel.com>
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

On Wed, Feb 17, 2021 at 09:55:53PM +0200, Jani Nikula wrote:
>On Wed, 17 Feb 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Wed, Feb 17, 2021 at 07:03:38PM +0200, Jani Nikula wrote:
>>>These will be exposed to the rest of the driver and replace other
>>>functions. Everything will operate on the child devices.
>>>
>>>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>---
>>> drivers/gpu/drm/i915/display/intel_bios.c | 66 ++++++++++++++++++-----
>>> 1 file changed, 54 insertions(+), 12 deletions(-)
>>>
>>>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm=
/i915/display/intel_bios.c
>>>index 193772f42582..739ef5d91907 100644
>>>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>>>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>>>@@ -64,6 +64,7 @@ struct intel_bios_encoder_data {
>>>
>>> 	struct child_device_config child;
>>> 	struct dsc_compression_parameters_entry *dsc;
>>>+
>>> 	struct list_head node;
>>> };
>>>
>>>@@ -1761,6 +1762,53 @@ static enum port dvo_port_to_port(struct drm_i915=
_private *i915,
>>> 					  dvo_port);
>>> }
>>>
>>>+static void sanitize_device_type(struct intel_bios_encoder_data *devdat=
a,
>>>+				 enum port port)
>>>+{
>>>+	struct drm_i915_private *i915 =3D devdata->i915;
>>>+	bool is_hdmi;
>>>+
>>>+	if (port !=3D PORT_A || INTEL_GEN(i915) >=3D 12)
>>>+		return;
>>>+
>>>+	if (!(devdata->child.device_type & DEVICE_TYPE_TMDS_DVI_SIGNALING))
>>>+		return;
>>>+
>>>+	is_hdmi =3D !(devdata->child.device_type & DEVICE_TYPE_NOT_HDMI_OUTPUT=
);
>>>+
>>>+	drm_dbg_kms(&i915->drm, "VBT claims port A supports DVI%s, ignoring\n",
>>>+		    is_hdmi ? "/HDMI" : "");
>>>+
>>>+	devdata->child.device_type &=3D ~DEVICE_TYPE_TMDS_DVI_SIGNALING;
>>>+	devdata->child.device_type |=3D DEVICE_TYPE_NOT_HDMI_OUTPUT;
>>>+}
>>>+
>>>+static bool
>>>+intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_data *d=
evdata)
>>>+{
>>>+	return devdata->child.device_type & DEVICE_TYPE_TMDS_DVI_SIGNALING;
>>>+}
>>>+
>>>+static bool
>>>+intel_bios_encoder_supports_hdmi(const struct intel_bios_encoder_data *=
devdata)
>>>+{
>>>+	return intel_bios_encoder_supports_dvi(devdata) &&
>>>+		(devdata->child.device_type & DEVICE_TYPE_NOT_HDMI_OUTPUT) =3D=3D 0;
>>>+}
>>>+
>>>+static bool
>>>+intel_bios_encoder_supports_dp(const struct intel_bios_encoder_data *de=
vdata)
>>>+{
>>>+	return devdata->child.device_type & DEVICE_TYPE_DISPLAYPORT_OUTPUT;
>>>+}
>>>+
>>>+static bool
>>>+intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *d=
evdata)
>>>+{
>>>+	return intel_bios_encoder_supports_dp(devdata) &&
>>>+		devdata->child.device_type & DEVICE_TYPE_INTERNAL_CONNECTOR;
>>>+}
>>>+
>>> static void parse_ddi_port(struct drm_i915_private *i915,
>>> 			   struct intel_bios_encoder_data *devdata)
>>> {
>>>@@ -1782,19 +1830,13 @@ static void parse_ddi_port(struct drm_i915_priva=
te *i915,
>>> 		return;
>>> 	}
>>>
>>>-	is_dvi =3D child->device_type & DEVICE_TYPE_TMDS_DVI_SIGNALING;
>>>-	is_dp =3D child->device_type & DEVICE_TYPE_DISPLAYPORT_OUTPUT;
>>>-	is_crt =3D child->device_type & DEVICE_TYPE_ANALOG_OUTPUT;
>>>-	is_hdmi =3D is_dvi && (child->device_type & DEVICE_TYPE_NOT_HDMI_OUTPU=
T) =3D=3D 0;
>>>-	is_edp =3D is_dp && (child->device_type & DEVICE_TYPE_INTERNAL_CONNECT=
OR);
>>>+	sanitize_device_type(devdata, port);
>>>
>>>-	if (port =3D=3D PORT_A && is_dvi && INTEL_GEN(i915) < 12) {
>>>-		drm_dbg_kms(&i915->drm,
>>>-			    "VBT claims port A supports DVI%s, ignoring\n",
>>>-			    is_hdmi ? "/HDMI" : "");
>>>-		is_dvi =3D false;
>>>-		is_hdmi =3D false;
>>>-	}
>>>+	is_dvi =3D intel_bios_encoder_supports_dvi(devdata);
>>>+	is_dp =3D intel_bios_encoder_supports_dp(devdata);
>>>+	is_crt =3D child->device_type & DEVICE_TYPE_ANALOG_OUTPUT;
>>
>> any reason to leave this behind?
>
>Just logging, even though that doesn't match what we actually do in
>intel_ddi_crt_present(). I expect there to be further cleanup
>afterwards.

I mean: you added a intel_bios_encoder_supports_*() for everything else.
Why not for crt?

Lucas De Marchi

>
>BR,
>Jani.
>
>>
>> Lucas De Marchi
>>
>>>+	is_hdmi =3D intel_bios_encoder_supports_hdmi(devdata);
>>>+	is_edp =3D intel_bios_encoder_supports_edp(devdata);
>>>
>>> 	info->supports_dvi =3D is_dvi;
>>> 	info->supports_hdmi =3D is_hdmi;
>>>--
>>>2.20.1
>>>
>
>-- =

>Jani Nikula, Intel Open Source Graphics Center
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
