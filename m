Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B02BB29763E
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 19:57:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2F416E334;
	Fri, 23 Oct 2020 17:57:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD7C36E334
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 17:57:26 +0000 (UTC)
IronPort-SDR: Pos3KeIHY1pDbgKoF3RwJnqDfIlGx3eB/gKhbOPN4DGTm7hEXRoNOXszt+bRfRpjGAGV8MKctt
 YcHqKwq3GesQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9783"; a="147569204"
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="147569204"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 10:57:26 -0700
IronPort-SDR: v51iaRKS+w6E2gFBWNdqNGXf+a5drMiupAEK7YcXIXsudKtunPZvr8PidLux/ZAnFZMKGeiNDN
 spDb2UvCAx9g==
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="534492701"
Received: from ejshrive-mobl2.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.56.77])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 10:57:25 -0700
Date: Fri, 23 Oct 2020 10:57:24 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201023175724.jcmjndbmtr3rjhws@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
 <20201023133420.12039-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201023133420.12039-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 01/19] drm/i915: s/PORT_TC/TC_PORT_/
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

On Fri, Oct 23, 2020 at 04:34:02PM +0300, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>Make the namespacing for enum tc_port better by adding
>the TC_ to the actual enum values.
>
>v2: Drop the extra TC (Lucas)
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display.c |  2 +-
> drivers/gpu/drm/i915/display/intel_display.h | 14 ++--
> drivers/gpu/drm/i915/display/intel_tc.c      |  2 +-
> drivers/gpu/drm/i915/i915_irq.c              | 78 ++++++++++----------
> drivers/gpu/drm/i915/i915_reg.h              | 60 +++++++--------
> 5 files changed, 78 insertions(+), 78 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index f41b6f8b5618..da2a91122d44 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -7474,7 +7474,7 @@ enum phy intel_port_to_phy(struct drm_i915_private *=
i915, enum port port)
> enum tc_port intel_port_to_tc(struct drm_i915_private *dev_priv, enum por=
t port)
> {
> 	if (!intel_phy_is_tc(dev_priv, intel_port_to_phy(dev_priv, port)))
>-		return PORT_TC_NONE;
>+		return TC_PORT_NONE;
>
> 	if (INTEL_GEN(dev_priv) >=3D 12)
> 		return port - PORT_D;
>diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/dr=
m/i915/display/intel_display.h
>index 1b946209e06b..1b7ae1d507f2 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.h
>+++ b/drivers/gpu/drm/i915/display/intel_display.h
>@@ -244,14 +244,14 @@ static inline const char *port_identifier(enum port =
port)
> }
>
> enum tc_port {
>-	PORT_TC_NONE =3D -1,
>+	TC_PORT_NONE =3D -1,
>
>-	PORT_TC1 =3D 0,
>-	PORT_TC2,
>-	PORT_TC3,
>-	PORT_TC4,
>-	PORT_TC5,
>-	PORT_TC6,
>+	TC_PORT_1 =3D 0,
>+	TC_PORT_2,
>+	TC_PORT_3,
>+	TC_PORT_4,
>+	TC_PORT_5,
>+	TC_PORT_6,
>
> 	I915_MAX_TC_PORTS
> };
>diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i91=
5/display/intel_tc.c
>index 8f67aef18b2d..1cb548d757e1 100644
>--- a/drivers/gpu/drm/i915/display/intel_tc.c
>+++ b/drivers/gpu/drm/i915/display/intel_tc.c
>@@ -652,7 +652,7 @@ void intel_tc_port_init(struct intel_digital_port *dig=
_port, bool is_legacy)
> 	enum port port =3D dig_port->base.port;
> 	enum tc_port tc_port =3D intel_port_to_tc(i915, port);
>
>-	if (drm_WARN_ON(&i915->drm, tc_port =3D=3D PORT_TC_NONE))
>+	if (drm_WARN_ON(&i915->drm, tc_port =3D=3D TC_PORT_NONE))
> 		return;
>
> 	snprintf(dig_port->tc_port_name, sizeof(dig_port->tc_port_name),
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_i=
rq.c
>index 53e67c796d09..fd65d1c9a4d2 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -132,24 +132,24 @@ static const u32 hpd_bxt[HPD_NUM_PINS] =3D {
> };
>
> static const u32 hpd_gen11[HPD_NUM_PINS] =3D {
>-	[HPD_PORT_TC1] =3D GEN11_TC_HOTPLUG(PORT_TC1) | GEN11_TBT_HOTPLUG(PORT_T=
C1),
>-	[HPD_PORT_TC2] =3D GEN11_TC_HOTPLUG(PORT_TC2) | GEN11_TBT_HOTPLUG(PORT_T=
C2),
>-	[HPD_PORT_TC3] =3D GEN11_TC_HOTPLUG(PORT_TC3) | GEN11_TBT_HOTPLUG(PORT_T=
C3),
>-	[HPD_PORT_TC4] =3D GEN11_TC_HOTPLUG(PORT_TC4) | GEN11_TBT_HOTPLUG(PORT_T=
C4),
>-	[HPD_PORT_TC5] =3D GEN11_TC_HOTPLUG(PORT_TC5) | GEN11_TBT_HOTPLUG(PORT_T=
C5),
>-	[HPD_PORT_TC6] =3D GEN11_TC_HOTPLUG(PORT_TC6) | GEN11_TBT_HOTPLUG(PORT_T=
C6),
>+	[HPD_PORT_TC1] =3D GEN11_TC_HOTPLUG(TC_PORT_1) | GEN11_TBT_HOTPLUG(TC_PO=
RT_1),
>+	[HPD_PORT_TC2] =3D GEN11_TC_HOTPLUG(TC_PORT_2) | GEN11_TBT_HOTPLUG(TC_PO=
RT_2),
>+	[HPD_PORT_TC3] =3D GEN11_TC_HOTPLUG(TC_PORT_3) | GEN11_TBT_HOTPLUG(TC_PO=
RT_3),
>+	[HPD_PORT_TC4] =3D GEN11_TC_HOTPLUG(TC_PORT_4) | GEN11_TBT_HOTPLUG(TC_PO=
RT_4),
>+	[HPD_PORT_TC5] =3D GEN11_TC_HOTPLUG(TC_PORT_5) | GEN11_TBT_HOTPLUG(TC_PO=
RT_5),
>+	[HPD_PORT_TC6] =3D GEN11_TC_HOTPLUG(TC_PORT_6) | GEN11_TBT_HOTPLUG(TC_PO=
RT_6),
> };
>
> static const u32 hpd_icp[HPD_NUM_PINS] =3D {
> 	[HPD_PORT_A] =3D SDE_DDI_HOTPLUG_ICP(PORT_A),
> 	[HPD_PORT_B] =3D SDE_DDI_HOTPLUG_ICP(PORT_B),
> 	[HPD_PORT_C] =3D SDE_DDI_HOTPLUG_ICP(PORT_C),
>-	[HPD_PORT_TC1] =3D SDE_TC_HOTPLUG_ICP(PORT_TC1),
>-	[HPD_PORT_TC2] =3D SDE_TC_HOTPLUG_ICP(PORT_TC2),
>-	[HPD_PORT_TC3] =3D SDE_TC_HOTPLUG_ICP(PORT_TC3),
>-	[HPD_PORT_TC4] =3D SDE_TC_HOTPLUG_ICP(PORT_TC4),
>-	[HPD_PORT_TC5] =3D SDE_TC_HOTPLUG_ICP(PORT_TC5),
>-	[HPD_PORT_TC6] =3D SDE_TC_HOTPLUG_ICP(PORT_TC6),
>+	[HPD_PORT_TC1] =3D SDE_TC_HOTPLUG_ICP(TC_PORT_1),
>+	[HPD_PORT_TC2] =3D SDE_TC_HOTPLUG_ICP(TC_PORT_2),
>+	[HPD_PORT_TC3] =3D SDE_TC_HOTPLUG_ICP(TC_PORT_3),
>+	[HPD_PORT_TC4] =3D SDE_TC_HOTPLUG_ICP(TC_PORT_4),
>+	[HPD_PORT_TC5] =3D SDE_TC_HOTPLUG_ICP(TC_PORT_5),
>+	[HPD_PORT_TC6] =3D SDE_TC_HOTPLUG_ICP(TC_PORT_6),
> };
>
> static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
>@@ -1032,17 +1032,17 @@ static bool gen11_port_hotplug_long_detect(enum hp=
d_pin pin, u32 val)
> {
> 	switch (pin) {
> 	case HPD_PORT_TC1:
>-		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(PORT_TC1);
>+		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(TC_PORT_1);
> 	case HPD_PORT_TC2:
>-		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(PORT_TC2);
>+		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(TC_PORT_2);
> 	case HPD_PORT_TC3:
>-		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(PORT_TC3);
>+		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(TC_PORT_3);
> 	case HPD_PORT_TC4:
>-		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(PORT_TC4);
>+		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(TC_PORT_4);
> 	case HPD_PORT_TC5:
>-		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(PORT_TC5);
>+		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(TC_PORT_5);
> 	case HPD_PORT_TC6:
>-		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(PORT_TC6);
>+		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(TC_PORT_6);
> 	default:
> 		return false;
> 	}
>@@ -1080,17 +1080,17 @@ static bool icp_tc_port_hotplug_long_detect(enum h=
pd_pin pin, u32 val)
> {
> 	switch (pin) {
> 	case HPD_PORT_TC1:
>-		return val & ICP_TC_HPD_LONG_DETECT(PORT_TC1);
>+		return val & ICP_TC_HPD_LONG_DETECT(TC_PORT_1);
> 	case HPD_PORT_TC2:
>-		return val & ICP_TC_HPD_LONG_DETECT(PORT_TC2);
>+		return val & ICP_TC_HPD_LONG_DETECT(TC_PORT_2);
> 	case HPD_PORT_TC3:
>-		return val & ICP_TC_HPD_LONG_DETECT(PORT_TC3);
>+		return val & ICP_TC_HPD_LONG_DETECT(TC_PORT_3);
> 	case HPD_PORT_TC4:
>-		return val & ICP_TC_HPD_LONG_DETECT(PORT_TC4);
>+		return val & ICP_TC_HPD_LONG_DETECT(TC_PORT_4);
> 	case HPD_PORT_TC5:
>-		return val & ICP_TC_HPD_LONG_DETECT(PORT_TC5);
>+		return val & ICP_TC_HPD_LONG_DETECT(TC_PORT_5);
> 	case HPD_PORT_TC6:
>-		return val & ICP_TC_HPD_LONG_DETECT(PORT_TC6);
>+		return val & ICP_TC_HPD_LONG_DETECT(TC_PORT_6);
> 	default:
> 		return false;
> 	}
>@@ -1869,7 +1869,7 @@ static void icp_irq_handler(struct drm_i915_private =
*dev_priv, u32 pch_iir)
> 		tc_hotplug_trigger =3D 0;
> 	} else if (HAS_PCH_MCC(dev_priv)) {
> 		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_ICP;
>-		tc_hotplug_trigger =3D pch_iir & SDE_TC_HOTPLUG_ICP(PORT_TC1);
>+		tc_hotplug_trigger =3D pch_iir & SDE_TC_HOTPLUG_ICP(TC_PORT_1);
> 	} else {
> 		drm_WARN(&dev_priv->drm, !HAS_PCH_ICP(dev_priv),
> 			 "Unrecognized PCH type 0x%x\n",
>@@ -3237,7 +3237,7 @@ static void icp_hpd_irq_setup(struct drm_i915_privat=
e *dev_priv,
> static void mcc_hpd_irq_setup(struct drm_i915_private *dev_priv)
> {
> 	icp_hpd_irq_setup(dev_priv,
>-			  ICP_DDI_HPD_ENABLE_MASK, ICP_TC_HPD_ENABLE(PORT_TC1));
>+			  ICP_DDI_HPD_ENABLE_MASK, ICP_TC_HPD_ENABLE(TC_PORT_1));
> }
>
> /*
>@@ -3256,21 +3256,21 @@ static void gen11_hpd_detection_setup(struct drm_i=
915_private *dev_priv)
> 	u32 hotplug;
>
> 	hotplug =3D I915_READ(GEN11_TC_HOTPLUG_CTL);
>-	hotplug |=3D GEN11_HOTPLUG_CTL_ENABLE(PORT_TC1) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(PORT_TC2) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(PORT_TC3) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(PORT_TC4) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(PORT_TC5) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(PORT_TC6);
>+	hotplug |=3D GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_1) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_2) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_3) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_4) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_5) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_6);
> 	I915_WRITE(GEN11_TC_HOTPLUG_CTL, hotplug);
>
> 	hotplug =3D I915_READ(GEN11_TBT_HOTPLUG_CTL);
>-	hotplug |=3D GEN11_HOTPLUG_CTL_ENABLE(PORT_TC1) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(PORT_TC2) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(PORT_TC3) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(PORT_TC4) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(PORT_TC5) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(PORT_TC6);
>+	hotplug |=3D GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_1) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_2) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_3) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_4) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_5) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_6);
> 	I915_WRITE(GEN11_TBT_HOTPLUG_CTL, hotplug);
> }
>
>@@ -3643,7 +3643,7 @@ static void icp_irq_postinstall(struct drm_i915_priv=
ate *dev_priv)
> 		icp_ddi_hpd_detection_setup(dev_priv, TGP_DDI_HPD_ENABLE_MASK);
> 	} else if (HAS_PCH_MCC(dev_priv)) {
> 		icp_ddi_hpd_detection_setup(dev_priv, ICP_DDI_HPD_ENABLE_MASK);
>-		icp_tc_hpd_detection_setup(dev_priv, ICP_TC_HPD_ENABLE(PORT_TC1));
>+		icp_tc_hpd_detection_setup(dev_priv, ICP_TC_HPD_ENABLE(TC_PORT_1));
> 	} else {
> 		icp_ddi_hpd_detection_setup(dev_priv, ICP_DDI_HPD_ENABLE_MASK);
> 		icp_tc_hpd_detection_setup(dev_priv, ICP_TC_HPD_ENABLE_MASK);
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index d4952c9875fb..0d43ae262606 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -7891,19 +7891,19 @@ enum {
> #define GEN11_DE_HPD_IIR		_MMIO(0x44478)
> #define GEN11_DE_HPD_IER		_MMIO(0x4447c)
> #define  GEN11_TC_HOTPLUG(tc_port)		(1 << ((tc_port) + 16))
>-#define  GEN11_DE_TC_HOTPLUG_MASK		(GEN11_TC_HOTPLUG(PORT_TC6) | \
>-						 GEN11_TC_HOTPLUG(PORT_TC5) | \
>-						 GEN11_TC_HOTPLUG(PORT_TC4) | \
>-						 GEN11_TC_HOTPLUG(PORT_TC3) | \
>-						 GEN11_TC_HOTPLUG(PORT_TC2) | \
>-						 GEN11_TC_HOTPLUG(PORT_TC1))
>+#define  GEN11_DE_TC_HOTPLUG_MASK		(GEN11_TC_HOTPLUG(TC_PORT_6) | \
>+						 GEN11_TC_HOTPLUG(TC_PORT_5) | \
>+						 GEN11_TC_HOTPLUG(TC_PORT_4) | \
>+						 GEN11_TC_HOTPLUG(TC_PORT_3) | \
>+						 GEN11_TC_HOTPLUG(TC_PORT_2) | \
>+						 GEN11_TC_HOTPLUG(TC_PORT_1))
> #define  GEN11_TBT_HOTPLUG(tc_port)		(1 << (tc_port))
>-#define  GEN11_DE_TBT_HOTPLUG_MASK		(GEN11_TBT_HOTPLUG(PORT_TC6) | \
>-						 GEN11_TBT_HOTPLUG(PORT_TC5) | \
>-						 GEN11_TBT_HOTPLUG(PORT_TC4) | \
>-						 GEN11_TBT_HOTPLUG(PORT_TC3) | \
>-						 GEN11_TBT_HOTPLUG(PORT_TC2) | \
>-						 GEN11_TBT_HOTPLUG(PORT_TC1))
>+#define  GEN11_DE_TBT_HOTPLUG_MASK		(GEN11_TBT_HOTPLUG(TC_PORT_6) | \
>+						 GEN11_TBT_HOTPLUG(TC_PORT_5) | \
>+						 GEN11_TBT_HOTPLUG(TC_PORT_4) | \
>+						 GEN11_TBT_HOTPLUG(TC_PORT_3) | \
>+						 GEN11_TBT_HOTPLUG(TC_PORT_2) | \
>+						 GEN11_TBT_HOTPLUG(TC_PORT_1))
>
> #define GEN11_TBT_HOTPLUG_CTL				_MMIO(0x44030)
> #define GEN11_TC_HOTPLUG_CTL				_MMIO(0x44038)
>@@ -8352,19 +8352,19 @@ enum {
> #define SDE_DDI_HOTPLUG_ICP(port)	(1 << ((port) + 16))
> #define SDE_DDI_MASK_ICP		(SDE_DDI_HOTPLUG_ICP(PORT_B) | \
> 					 SDE_DDI_HOTPLUG_ICP(PORT_A))
>-#define SDE_TC_MASK_ICP			(SDE_TC_HOTPLUG_ICP(PORT_TC4) | \
>-					 SDE_TC_HOTPLUG_ICP(PORT_TC3) | \
>-					 SDE_TC_HOTPLUG_ICP(PORT_TC2) | \
>-					 SDE_TC_HOTPLUG_ICP(PORT_TC1))
>+#define SDE_TC_MASK_ICP			(SDE_TC_HOTPLUG_ICP(TC_PORT_4) | \
>+					 SDE_TC_HOTPLUG_ICP(TC_PORT_3) | \
>+					 SDE_TC_HOTPLUG_ICP(TC_PORT_2) | \
>+					 SDE_TC_HOTPLUG_ICP(TC_PORT_1))

At some point we may also want to add *HOTPLUG* to these macros to
signify what it really is.  For another day.


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

> #define SDE_DDI_MASK_TGP		(SDE_DDI_HOTPLUG_ICP(PORT_C) | \
> 					 SDE_DDI_HOTPLUG_ICP(PORT_B) | \
> 					 SDE_DDI_HOTPLUG_ICP(PORT_A))
>-#define SDE_TC_MASK_TGP			(SDE_TC_HOTPLUG_ICP(PORT_TC6) | \
>-					 SDE_TC_HOTPLUG_ICP(PORT_TC5) | \
>-					 SDE_TC_HOTPLUG_ICP(PORT_TC4) | \
>-					 SDE_TC_HOTPLUG_ICP(PORT_TC3) | \
>-					 SDE_TC_HOTPLUG_ICP(PORT_TC2) | \
>-					 SDE_TC_HOTPLUG_ICP(PORT_TC1))
>+#define SDE_TC_MASK_TGP			(SDE_TC_HOTPLUG_ICP(TC_PORT_6) | \
>+					 SDE_TC_HOTPLUG_ICP(TC_PORT_5) | \
>+					 SDE_TC_HOTPLUG_ICP(TC_PORT_4) | \
>+					 SDE_TC_HOTPLUG_ICP(TC_PORT_3) | \
>+					 SDE_TC_HOTPLUG_ICP(TC_PORT_2) | \
>+					 SDE_TC_HOTPLUG_ICP(TC_PORT_1))
>
> #define SDEISR  _MMIO(0xc4000)
> #define SDEIMR  _MMIO(0xc4004)
>@@ -8449,15 +8449,15 @@ enum {
>
> #define ICP_DDI_HPD_ENABLE_MASK		(SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_B) | \
> 					 SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_A))
>-#define ICP_TC_HPD_ENABLE_MASK		(ICP_TC_HPD_ENABLE(PORT_TC4) | \
>-					 ICP_TC_HPD_ENABLE(PORT_TC3) | \
>-					 ICP_TC_HPD_ENABLE(PORT_TC2) | \
>-					 ICP_TC_HPD_ENABLE(PORT_TC1))
>+#define ICP_TC_HPD_ENABLE_MASK		(ICP_TC_HPD_ENABLE(TC_PORT_4) | \
>+					 ICP_TC_HPD_ENABLE(TC_PORT_3) | \
>+					 ICP_TC_HPD_ENABLE(TC_PORT_2) | \
>+					 ICP_TC_HPD_ENABLE(TC_PORT_1))
> #define TGP_DDI_HPD_ENABLE_MASK		(SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_C) | \
> 					 SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_B) | \
> 					 SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_A))
>-#define TGP_TC_HPD_ENABLE_MASK		(ICP_TC_HPD_ENABLE(PORT_TC6) | \
>-					 ICP_TC_HPD_ENABLE(PORT_TC5) | \
>+#define TGP_TC_HPD_ENABLE_MASK		(ICP_TC_HPD_ENABLE(TC_PORT_6) | \
>+					 ICP_TC_HPD_ENABLE(TC_PORT_5) | \
> 					 ICP_TC_HPD_ENABLE_MASK)
>
> #define _PCH_DPLL_A              0xc6014
>@@ -10315,9 +10315,9 @@ enum skl_power_gate {
> #define ICL_DPCLKA_CFGCR0			_MMIO(0x164280)
> #define  ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)	(1 << _PICK(phy, 10, 11, 24))
> #define  RKL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)	REG_BIT((phy) + 10)
>-#define  ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port)	(1 << ((tc_port) < PORT_TC=
4 ? \
>+#define  ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port)	(1 << ((tc_port) < TC_PORT=
_4 ? \
> 						       (tc_port) + 12 : \
>-						       (tc_port) - PORT_TC4 + 21))
>+						       (tc_port) - TC_PORT_4 + 21))
> #define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy)	((phy) * 2)
> #define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)	(3 << ICL_DPCLKA_CFGCR0_=
DDI_CLK_SEL_SHIFT(phy))
> #define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy)	((pll) << ICL_DPCLKA_CFG=
CR0_DDI_CLK_SEL_SHIFT(phy))
>-- =

>2.26.2
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
