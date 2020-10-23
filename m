Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5013C29776E
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 21:02:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 402926E40A;
	Fri, 23 Oct 2020 19:02:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0793E6E40A
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 19:02:47 +0000 (UTC)
IronPort-SDR: iFixqxVwj6D3Y+TmrebbHETVg2AwMGyJRKyGYDN1f/ZQC0SXvkBpuRVImw5qhvC3R9f5SU4mD7
 OT2QDdVv6JPw==
X-IronPort-AV: E=McAfee;i="6000,8403,9783"; a="154679161"
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="154679161"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 12:02:47 -0700
IronPort-SDR: w53KOwAS5PG8A66lw27Oa68wbuulw4UNDpUCpV1UTKoDzXtcjIiZIxzjGnZMWF7v/y7EvrjPQK
 2/C8+lStdfWw==
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="354537740"
Received: from spoase-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.216.15])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 12:02:46 -0700
Date: Fri, 23 Oct 2020 12:02:45 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201023190245.t5wnsvlffssqpqpa@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
 <20201023133420.12039-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201023133420.12039-3-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 02/19] drm/i915: Add PORT_TCn aliases to
 enum port
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

On Fri, Oct 23, 2020 at 04:34:03PM +0300, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>Since tgl the DDIs have been named A,B,C,TC1,TC2,TC3...
>Add the appropriate enum values for the TC DDIs to enum port.
>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_bios.c    | 10 +++----
> drivers/gpu/drm/i915/display/intel_ddi.c     |  4 +--
> drivers/gpu/drm/i915/display/intel_display.c | 28 ++++++++++----------
> drivers/gpu/drm/i915/display/intel_display.h |  8 ++++++
> 4 files changed, 28 insertions(+), 22 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i=
915/display/intel_bios.c
>index 0a309645fe06..ff825be0ac88 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>@@ -1688,17 +1688,15 @@ static enum port dvo_port_to_port(struct drm_i915_=
private *dev_priv,
> 		[PORT_I] =3D { DVO_PORT_HDMII, DVO_PORT_DPI, -1 },
> 	};
> 	/*
>-	 * Bspec lists the ports as A, B, C, D - however internally in our
>-	 * driver we keep them as PORT_A, PORT_B, PORT_D and PORT_E so the
>-	 * registers in Display Engine match the right offsets. Apply the
>-	 * mapping here to translate from VBT to internal convention.
>+	 * RKL VBT uses PHY based mapping. Combo PHYs A,B,C,D
>+	 * map to DDI A,B,TC1,TC2 respectively.
> 	 */
> 	static const int rkl_port_mapping[][3] =3D {
> 		[PORT_A] =3D { DVO_PORT_HDMIA, DVO_PORT_DPA, -1 },
> 		[PORT_B] =3D { DVO_PORT_HDMIB, DVO_PORT_DPB, -1 },
> 		[PORT_C] =3D { -1 },
>-		[PORT_D] =3D { DVO_PORT_HDMIC, DVO_PORT_DPC, -1 },
>-		[PORT_E] =3D { DVO_PORT_HDMID, DVO_PORT_DPD, -1 },
>+		[PORT_TC1] =3D { DVO_PORT_HDMIC, DVO_PORT_DPC, -1 },
>+		[PORT_TC2] =3D { DVO_PORT_HDMID, DVO_PORT_DPD, -1 },
> 	};
>
> 	if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index 09811be08cfe..cf157e8f68cb 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -5069,8 +5069,8 @@ static bool hti_uses_phy(struct drm_i915_private *i9=
15, enum phy phy)
> static enum hpd_pin tgl_hpd_pin(struct drm_i915_private *dev_priv,
> 				enum port port)
> {
>-	if (port >=3D PORT_D)
>-		return HPD_PORT_TC1 + port - PORT_D;
>+	if (port >=3D PORT_TC1)
>+		return HPD_PORT_TC1 + port - PORT_TC1;
> 	else
> 		return HPD_PORT_A + port - PORT_A;
> }
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index da2a91122d44..cddbda5303ff 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -7463,12 +7463,12 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_=
priv, enum phy phy)
>
> enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)
> {
>-	if (IS_ROCKETLAKE(i915) && port >=3D PORT_D)
>-		return (enum phy)port - 1;
>+	if (IS_ROCKETLAKE(i915) && port >=3D PORT_TC1)
>+		return PHY_C + port - PORT_TC1;
> 	else if (IS_JSL_EHL(i915) && port =3D=3D PORT_D)
> 		return PHY_A;
>
>-	return (enum phy)port;
>+	return PHY_A + port - PORT_A;
> }
>
> enum tc_port intel_port_to_tc(struct drm_i915_private *dev_priv, enum por=
t port)
>@@ -7477,9 +7477,9 @@ enum tc_port intel_port_to_tc(struct drm_i915_privat=
e *dev_priv, enum port port)
> 		return TC_PORT_NONE;
>
> 	if (INTEL_GEN(dev_priv) >=3D 12)
>-		return port - PORT_D;
>-
>-	return port - PORT_C;
>+		return TC_PORT_1 + port - PORT_TC1;
>+	else
>+		return TC_PORT_1 + port - PORT_C;
> }
>
> enum intel_display_power_domain intel_port_to_power_domain(enum port port)
>@@ -17216,17 +17216,17 @@ static void intel_setup_outputs(struct drm_i915_=
private *dev_priv)
> 	if (IS_ROCKETLAKE(dev_priv)) {
> 		intel_ddi_init(dev_priv, PORT_A);
> 		intel_ddi_init(dev_priv, PORT_B);
>-		intel_ddi_init(dev_priv, PORT_D);	/* DDI TC1 */
>-		intel_ddi_init(dev_priv, PORT_E);	/* DDI TC2 */
>+		intel_ddi_init(dev_priv, PORT_TC1);
>+		intel_ddi_init(dev_priv, PORT_TC2);
> 	} else if (INTEL_GEN(dev_priv) >=3D 12) {
> 		intel_ddi_init(dev_priv, PORT_A);
> 		intel_ddi_init(dev_priv, PORT_B);
>-		intel_ddi_init(dev_priv, PORT_D);
>-		intel_ddi_init(dev_priv, PORT_E);
>-		intel_ddi_init(dev_priv, PORT_F);
>-		intel_ddi_init(dev_priv, PORT_G);
>-		intel_ddi_init(dev_priv, PORT_H);
>-		intel_ddi_init(dev_priv, PORT_I);
>+		intel_ddi_init(dev_priv, PORT_TC1);
>+		intel_ddi_init(dev_priv, PORT_TC2);
>+		intel_ddi_init(dev_priv, PORT_TC2);
>+		intel_ddi_init(dev_priv, PORT_TC4);
>+		intel_ddi_init(dev_priv, PORT_TC5);
>+		intel_ddi_init(dev_priv, PORT_TC6);
> 		icl_dsi_init(dev_priv);
> 	} else if (IS_JSL_EHL(dev_priv)) {
> 		intel_ddi_init(dev_priv, PORT_A);
>diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/dr=
m/i915/display/intel_display.h
>index 1b7ae1d507f2..747aec8e8580 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.h
>+++ b/drivers/gpu/drm/i915/display/intel_display.h
>@@ -208,6 +208,14 @@ enum port {
> 	PORT_H,
> 	PORT_I,
>
>+	/* tgl+ */
>+	PORT_TC1 =3D PORT_D,
>+	PORT_TC2,
>+	PORT_TC3,
>+	PORT_TC4,
>+	PORT_TC5,
>+	PORT_TC6,
>+
> 	I915_MAX_PORTS
> };
>
>-- =

>2.26.2
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
