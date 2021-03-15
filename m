Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D69DF33C459
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Mar 2021 18:36:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 192B689FA9;
	Mon, 15 Mar 2021 17:36:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89FAA89FA9
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Mar 2021 17:36:18 +0000 (UTC)
IronPort-SDR: C9SqX6uY6oFpsKA1GIK/gohXkJfZDJ/ZwAnr4xjddBg4+PaRxhCr6ykXrNi1KT6GSEAdXfX/tj
 xBrQKkBN2rQw==
X-IronPort-AV: E=McAfee;i="6000,8403,9924"; a="176724167"
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="176724167"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 10:36:09 -0700
IronPort-SDR: I3PpSIFvx5ROpxQinqHnEzZRnPro5qHevABDdb69WWCdXJpYI/N0Vbs7/4RhjgSWuw3EiV3911
 zWaYF7735nLw==
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="438960885"
Received: from jhou13-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.152.93])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 10:36:09 -0700
Date: Mon, 15 Mar 2021 10:36:09 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210315173609.7mrgfzgmjlm5i62d@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <cover.1613580193.git.jani.nikula@intel.com>
 <1a460aa95d1a03af1f368b209feb5c2ea7a29bbe.1613580193.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1a460aa95d1a03af1f368b209feb5c2ea7a29bbe.1613580193.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 09/12] drm/i915/bios: save a higher level
 pointer in ddi_vbt_port_info[]
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

On Wed, Feb 17, 2021 at 07:03:39PM +0200, Jani Nikula wrote:
>We'll be needing the intel_bios_encoder_data pointer going forward, and
>it's just easier to store the higher level pointer in the
>ddi_vbt_port_info[] array.
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_bios.c | 28 +++++++++++------------
> drivers/gpu/drm/i915/display/intel_bios.h |  1 +
> drivers/gpu/drm/i915/i915_drv.h           |  2 +-
> 3 files changed, 16 insertions(+), 15 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i=
915/display/intel_bios.c
>index 739ef5d91907..47e9c609f82a 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>@@ -1511,7 +1511,7 @@ static enum port get_port_by_ddc_pin(struct drm_i915=
_private *i915, u8 ddc_pin)
> 	for_each_port(port) {
> 		info =3D &i915->vbt.ddi_port_info[port];
>
>-		if (info->child && ddc_pin =3D=3D info->alternate_ddc_pin)
>+		if (info->devdata && ddc_pin =3D=3D info->alternate_ddc_pin)
> 			return port;
> 	}
>
>@@ -1563,7 +1563,7 @@ static enum port get_port_by_aux_ch(struct drm_i915_=
private *i915, u8 aux_ch)
> 	for_each_port(port) {
> 		info =3D &i915->vbt.ddi_port_info[port];
>
>-		if (info->child && aux_ch =3D=3D info->alternate_aux_channel)
>+		if (info->devdata && aux_ch =3D=3D info->alternate_aux_channel)
> 			return port;
> 	}
>
>@@ -1823,7 +1823,7 @@ static void parse_ddi_port(struct drm_i915_private *=
i915,
>
> 	info =3D &i915->vbt.ddi_port_info[port];
>
>-	if (info->child) {
>+	if (info->devdata) {
> 		drm_dbg_kms(&i915->drm,
> 			    "More than one child device for port %c in VBT, using the first.\n=
",
> 			    port_name(port));
>@@ -1947,7 +1947,7 @@ static void parse_ddi_port(struct drm_i915_private *=
i915,
> 			    port_name(port), info->dp_max_link_rate);
> 	}
>
>-	info->child =3D child;
>+	info->devdata =3D devdata;
> }
>
> static void parse_ddi_ports(struct drm_i915_private *i915)
>@@ -2488,7 +2488,7 @@ bool intel_bios_is_port_present(struct drm_i915_priv=
ate *i915, enum port port)
> 		const struct ddi_vbt_port_info *port_info =3D
> 			&i915->vbt.ddi_port_info[port];
>
>-		return port_info->child;
>+		return port_info->devdata;
> 	}
>
> 	/* FIXME maybe deal with port A as well? */
>@@ -2735,13 +2735,13 @@ bool
> intel_bios_is_port_hpd_inverted(const struct drm_i915_private *i915,
> 				enum port port)
> {
>-	const struct child_device_config *child =3D
>-		i915->vbt.ddi_port_info[port].child;
>+	const struct intel_bios_encoder_data *devdata =3D
>+		i915->vbt.ddi_port_info[port].devdata;
>
> 	if (drm_WARN_ON_ONCE(&i915->drm, !IS_GEN9_LP(i915)))
> 		return false;
>
>-	return child && child->hpd_invert;
>+	return devdata && devdata->child.hpd_invert;
> }
>
> /**
>@@ -2755,10 +2755,10 @@ bool
> intel_bios_is_lspcon_present(const struct drm_i915_private *i915,
> 			     enum port port)
> {
>-	const struct child_device_config *child =3D
>-		i915->vbt.ddi_port_info[port].child;
>+	const struct intel_bios_encoder_data *devdata =3D
>+		i915->vbt.ddi_port_info[port].devdata;
>
>-	return HAS_LSPCON(i915) && child && child->lspcon;
>+	return HAS_LSPCON(i915) && devdata && devdata->child.lspcon;
> }
>
> /**
>@@ -2772,10 +2772,10 @@ bool
> intel_bios_is_lane_reversal_needed(const struct drm_i915_private *i915,
> 				   enum port port)
> {
>-	const struct child_device_config *child =3D
>-		i915->vbt.ddi_port_info[port].child;
>+	const struct intel_bios_encoder_data *devdata =3D
>+		i915->vbt.ddi_port_info[port].devdata;
>
>-	return child && child->lane_reversal;
>+	return devdata && devdata->child.lane_reversal;
> }
>
> enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i=
915/display/intel_bios.h
>index f25190ecfe97..6591cf7758f2 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.h
>+++ b/drivers/gpu/drm/i915/display/intel_bios.h
>@@ -33,6 +33,7 @@
> #include <linux/types.h>
>
> struct drm_i915_private;
>+struct intel_bios_encoder_data;
> struct intel_crtc_state;
> struct intel_encoder;
> enum port;
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_d=
rv.h
>index 62be1465f52b..e2c5ba61b370 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -584,7 +584,7 @@ i915_fence_timeout(const struct drm_i915_private *i915)
>
> struct ddi_vbt_port_info {
> 	/* Non-NULL if port present. */
>-	const struct child_device_config *child;
>+	const struct intel_bios_encoder_data *devdata;
>
> 	int max_tmds_clock;
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
