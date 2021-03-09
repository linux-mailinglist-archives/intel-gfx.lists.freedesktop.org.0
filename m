Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B106331BF0
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Mar 2021 01:52:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E61D889854;
	Tue,  9 Mar 2021 00:51:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6F4489854
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Mar 2021 00:51:55 +0000 (UTC)
IronPort-SDR: G1xQbZ5CO2M6xpZnxcxHMIdDF0Y6k5DzKEJTdoqI8f9zgr4dQbkS1IhGaStq1WPr6fTf8wC4v2
 ZVnLmlmaEnhA==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="252160306"
X-IronPort-AV: E=Sophos;i="5.81,233,1610438400"; d="scan'208";a="252160306"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 16:51:53 -0800
IronPort-SDR: 0xG/kfVBuD4/1OmskSfbFQkv+ZcQ9S3KtZUhK4mcrvbhKXljEDGImDIQOznZIXxPe7GaNp49Mb
 IAyvo80D4iHA==
X-IronPort-AV: E=Sophos;i="5.81,233,1610438400"; d="scan'208";a="602385196"
Received: from sbalasub-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.97.66])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 16:51:53 -0800
Date: Mon, 8 Mar 2021 16:51:52 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210309005152.ohqj3zm6xb5u77ps@ldmartin-desk1>
References: <cover.1613580193.git.jani.nikula@intel.com>
 <23911ee2dee946211f180ac92512ccbb87bbfcfe.1613580193.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <23911ee2dee946211f180ac92512ccbb87bbfcfe.1613580193.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 05/12] drm/i915/bios: create fake child
 devices on missing VBT
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

On Wed, Feb 17, 2021 at 07:03:35PM +0200, Jani Nikula wrote:
>Instead of initialing data directly in ddi_port_info array, create fake
>child devices for default outputs when the VBT is missing. This makes
>further unification of output handling easier.
>
>This will make intel_bios_is_port_present() return true for the fake
>child devices. This may cause subtle changes in a handful of places.
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_bios.c | 47 ++++++++++++++++++-----
> 1 file changed, 37 insertions(+), 10 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i=
915/display/intel_bios.c
>index b9d99324d66d..59d315b395c2 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>@@ -2063,8 +2063,8 @@ init_vbt_missing_defaults(struct drm_i915_private *i=
915)
> 		return;
>
> 	for_each_port_masked(port, ports) {
>-		struct ddi_vbt_port_info *info =3D
>-			&i915->vbt.ddi_port_info[port];
>+		struct display_device_data *devdata;
>+		struct child_device_config *child;
> 		enum phy phy =3D intel_port_to_phy(i915, port);
>
> 		/*
>@@ -2074,11 +2074,38 @@ init_vbt_missing_defaults(struct drm_i915_private =
*i915)
> 		if (intel_phy_is_tc(i915, phy))
> 			continue;
>
>-		info->supports_dvi =3D (port !=3D PORT_A && port !=3D PORT_E);
>-		info->supports_hdmi =3D info->supports_dvi;
>-		info->supports_dp =3D (port !=3D PORT_E);
>-		info->supports_edp =3D (port =3D=3D PORT_A);
>+		/* Create fake child device config */
>+		devdata =3D kzalloc(sizeof(*devdata), GFP_KERNEL);
>+		if (!devdata)
>+			break;
>+
>+		child =3D &devdata->child;
>+
>+		if (port =3D=3D PORT_F)
>+			child->dvo_port =3D DVO_PORT_HDMIF;
>+		else if (port =3D=3D PORT_E)
>+			child->dvo_port =3D DVO_PORT_HDMIE;
>+		else
>+			child->dvo_port =3D DVO_PORT_HDMIA + port;

initially I was confused here, but after checking I understoo why you're
doing this, since DVO_PORT_HDMIE/DVO_PORT_HDMIF doesn't follow
DVO_PORT_HDMID


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>+
>+		if (port !=3D PORT_A && port !=3D PORT_E)
>+			child->device_type |=3D DEVICE_TYPE_TMDS_DVI_SIGNALING;
>+
>+		if (port !=3D PORT_E)
>+			child->device_type |=3D DEVICE_TYPE_DISPLAYPORT_OUTPUT;
>+
>+		if (port =3D=3D PORT_A)
>+			child->device_type |=3D DEVICE_TYPE_INTERNAL_CONNECTOR;
>+
>+		list_add_tail(&devdata->node, &i915->vbt.display_devices);
>+
>+		drm_dbg_kms(&i915->drm,
>+			    "Generating default VBT child device with type 0x04%x on port %c\n=
",
>+			    child->device_type, port_name(port));
> 	}
>+
>+	/* Bypass some minimum baseline VBT version checks */
>+	i915->vbt.version =3D 155;
> }
>
> static const struct bdb_header *get_bdb_header(const struct vbt_header *v=
bt)
>@@ -2255,10 +2282,6 @@ void intel_bios_init(struct drm_i915_private *i915)
> 	/* Depends on child device list */
> 	parse_compression_parameters(i915, bdb);
>
>-	/* Further processing on pre-parsed data */
>-	parse_sdvo_device_mapping(i915);
>-	parse_ddi_ports(i915);
>-
> out:
> 	if (!vbt) {
> 		drm_info(&i915->drm,
>@@ -2266,6 +2289,10 @@ void intel_bios_init(struct drm_i915_private *i915)
> 		init_vbt_missing_defaults(i915);
> 	}
>
>+	/* Further processing on pre-parsed or generated child device data */
>+	parse_sdvo_device_mapping(i915);
>+	parse_ddi_ports(i915);
>+
> 	kfree(oprom_vbt);
> }
>
>-- =

>2.20.1
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
