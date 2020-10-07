Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7F5286ACC
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 00:22:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42A486E9BD;
	Wed,  7 Oct 2020 22:22:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D42D6E9BD
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 22:22:43 +0000 (UTC)
IronPort-SDR: hh6U2Dm+H4sW5pDDLDu+IVt5QsXxcvcWvLGlm6SQou4sOpGvrXhd+cZWhG/MYPzosGBnG+PHI2
 5seBB5IgVQUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="165222639"
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="165222639"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 15:22:42 -0700
IronPort-SDR: XZsVqdBolxn/T5nnI5QG6EFvaQtMshNYRxTrHhH7eToXWbOK9K85f471e0jAhZaNODZoad/cCe
 5LwzBanKYQ0A==
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="528195604"
Received: from lewisjos-mobl3.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.51.10])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 15:22:42 -0700
Date: Wed, 7 Oct 2020 15:22:41 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201007222241.q4w3mal7xju3sfil@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
 <20201006143349.5561-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201006143349.5561-3-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 02/20] drm/i915: s/PORT_TC/TC_PORT_TC/
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

On Tue, Oct 06, 2020 at 05:33:31PM +0300, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>Make the namespacing for enum tc_port better by adding
>the TC_ to the actual enum values.

I like having the constants with the same name as the enum but with
capital letters, but then we have TC_PORT_TC<n> which doesn't sound great.

Maybe TC_PORT_1, TC_PORT_2, TC_PORT_3, ...?

When we added enum tc_port we didn't have enum phy. Maybe now we can
actually remove tc_port.

Lucas De Marchi

>
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
>index 907e1d155443..32d24c60ff96 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -7367,7 +7367,7 @@ enum phy intel_port_to_phy(struct drm_i915_private *=
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
>index d10b7c8cde3f..8c93253cbd95 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.h
>+++ b/drivers/gpu/drm/i915/display/intel_display.h
>@@ -243,14 +243,14 @@ static inline const char *port_identifier(enum port =
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
>+	TC_PORT_TC1 =3D 0,
>+	TC_PORT_TC2,
>+	TC_PORT_TC3,
>+	TC_PORT_TC4,
>+	TC_PORT_TC5,
>+	TC_PORT_TC6,
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
>index b753c77c9a77..d9438194c2f0 100644
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
>+	[HPD_PORT_TC1] =3D GEN11_TC_HOTPLUG(TC_PORT_TC1) | GEN11_TBT_HOTPLUG(TC_=
PORT_TC1),
>+	[HPD_PORT_TC2] =3D GEN11_TC_HOTPLUG(TC_PORT_TC2) | GEN11_TBT_HOTPLUG(TC_=
PORT_TC2),
>+	[HPD_PORT_TC3] =3D GEN11_TC_HOTPLUG(TC_PORT_TC3) | GEN11_TBT_HOTPLUG(TC_=
PORT_TC3),
>+	[HPD_PORT_TC4] =3D GEN11_TC_HOTPLUG(TC_PORT_TC4) | GEN11_TBT_HOTPLUG(TC_=
PORT_TC4),
>+	[HPD_PORT_TC5] =3D GEN11_TC_HOTPLUG(TC_PORT_TC5) | GEN11_TBT_HOTPLUG(TC_=
PORT_TC5),
>+	[HPD_PORT_TC6] =3D GEN11_TC_HOTPLUG(TC_PORT_TC6) | GEN11_TBT_HOTPLUG(TC_=
PORT_TC6),
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
>+	[HPD_PORT_TC1] =3D SDE_TC_HOTPLUG_ICP(TC_PORT_TC1),
>+	[HPD_PORT_TC2] =3D SDE_TC_HOTPLUG_ICP(TC_PORT_TC2),
>+	[HPD_PORT_TC3] =3D SDE_TC_HOTPLUG_ICP(TC_PORT_TC3),
>+	[HPD_PORT_TC4] =3D SDE_TC_HOTPLUG_ICP(TC_PORT_TC4),
>+	[HPD_PORT_TC5] =3D SDE_TC_HOTPLUG_ICP(TC_PORT_TC5),
>+	[HPD_PORT_TC6] =3D SDE_TC_HOTPLUG_ICP(TC_PORT_TC6),
> };
>
> static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
>@@ -1035,17 +1035,17 @@ static bool gen11_port_hotplug_long_detect(enum hp=
d_pin pin, u32 val)
> {
> 	switch (pin) {
> 	case HPD_PORT_TC1:
>-		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(PORT_TC1);
>+		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(TC_PORT_TC1);
> 	case HPD_PORT_TC2:
>-		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(PORT_TC2);
>+		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(TC_PORT_TC2);
> 	case HPD_PORT_TC3:
>-		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(PORT_TC3);
>+		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(TC_PORT_TC3);
> 	case HPD_PORT_TC4:
>-		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(PORT_TC4);
>+		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(TC_PORT_TC4);
> 	case HPD_PORT_TC5:
>-		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(PORT_TC5);
>+		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(TC_PORT_TC5);
> 	case HPD_PORT_TC6:
>-		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(PORT_TC6);
>+		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(TC_PORT_TC6);
> 	default:
> 		return false;
> 	}
>@@ -1083,17 +1083,17 @@ static bool icp_tc_port_hotplug_long_detect(enum h=
pd_pin pin, u32 val)
> {
> 	switch (pin) {
> 	case HPD_PORT_TC1:
>-		return val & ICP_TC_HPD_LONG_DETECT(PORT_TC1);
>+		return val & ICP_TC_HPD_LONG_DETECT(TC_PORT_TC1);
> 	case HPD_PORT_TC2:
>-		return val & ICP_TC_HPD_LONG_DETECT(PORT_TC2);
>+		return val & ICP_TC_HPD_LONG_DETECT(TC_PORT_TC2);
> 	case HPD_PORT_TC3:
>-		return val & ICP_TC_HPD_LONG_DETECT(PORT_TC3);
>+		return val & ICP_TC_HPD_LONG_DETECT(TC_PORT_TC3);
> 	case HPD_PORT_TC4:
>-		return val & ICP_TC_HPD_LONG_DETECT(PORT_TC4);
>+		return val & ICP_TC_HPD_LONG_DETECT(TC_PORT_TC4);
> 	case HPD_PORT_TC5:
>-		return val & ICP_TC_HPD_LONG_DETECT(PORT_TC5);
>+		return val & ICP_TC_HPD_LONG_DETECT(TC_PORT_TC5);
> 	case HPD_PORT_TC6:
>-		return val & ICP_TC_HPD_LONG_DETECT(PORT_TC6);
>+		return val & ICP_TC_HPD_LONG_DETECT(TC_PORT_TC6);
> 	default:
> 		return false;
> 	}
>@@ -1872,7 +1872,7 @@ static void icp_irq_handler(struct drm_i915_private =
*dev_priv, u32 pch_iir)
> 		tc_hotplug_trigger =3D 0;
> 	} else if (HAS_PCH_MCC(dev_priv)) {
> 		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_ICP;
>-		tc_hotplug_trigger =3D pch_iir & SDE_TC_HOTPLUG_ICP(PORT_TC1);
>+		tc_hotplug_trigger =3D pch_iir & SDE_TC_HOTPLUG_ICP(TC_PORT_TC1);
> 	} else {
> 		drm_WARN(&dev_priv->drm, !HAS_PCH_ICP(dev_priv),
> 			 "Unrecognized PCH type 0x%x\n",
>@@ -3238,7 +3238,7 @@ static void icp_hpd_irq_setup(struct drm_i915_privat=
e *dev_priv,
> static void mcc_hpd_irq_setup(struct drm_i915_private *dev_priv)
> {
> 	icp_hpd_irq_setup(dev_priv,
>-			  ICP_DDI_HPD_ENABLE_MASK, ICP_TC_HPD_ENABLE(PORT_TC1));
>+			  ICP_DDI_HPD_ENABLE_MASK, ICP_TC_HPD_ENABLE(TC_PORT_TC1));
> }
>
> /*
>@@ -3257,21 +3257,21 @@ static void gen11_hpd_detection_setup(struct drm_i=
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
>+	hotplug |=3D GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_TC1) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_TC2) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_TC3) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_TC4) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_TC5) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_TC6);
> 	I915_WRITE(GEN11_TC_HOTPLUG_CTL, hotplug);
>
> 	hotplug =3D I915_READ(GEN11_TBT_HOTPLUG_CTL);
>-	hotplug |=3D GEN11_HOTPLUG_CTL_ENABLE(PORT_TC1) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(PORT_TC2) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(PORT_TC3) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(PORT_TC4) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(PORT_TC5) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(PORT_TC6);
>+	hotplug |=3D GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_TC1) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_TC2) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_TC3) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_TC4) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_TC5) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_TC6);
> 	I915_WRITE(GEN11_TBT_HOTPLUG_CTL, hotplug);
> }
>
>@@ -3652,7 +3652,7 @@ static void icp_irq_postinstall(struct drm_i915_priv=
ate *dev_priv)
> 		icp_ddi_hpd_detection_setup(dev_priv, TGP_DDI_HPD_ENABLE_MASK);
> 	} else if (HAS_PCH_MCC(dev_priv)) {
> 		icp_ddi_hpd_detection_setup(dev_priv, ICP_DDI_HPD_ENABLE_MASK);
>-		icp_tc_hpd_detection_setup(dev_priv, ICP_TC_HPD_ENABLE(PORT_TC1));
>+		icp_tc_hpd_detection_setup(dev_priv, ICP_TC_HPD_ENABLE(TC_PORT_TC1));
> 	} else {
> 		icp_ddi_hpd_detection_setup(dev_priv, ICP_DDI_HPD_ENABLE_MASK);
> 		icp_tc_hpd_detection_setup(dev_priv, ICP_TC_HPD_ENABLE_MASK);
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index efe51a4ef719..2e378d9b21c5 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -7865,19 +7865,19 @@ enum {
> #define GEN11_DE_HPD_IIR		_MMIO(0x44478)
> #define GEN11_DE_HPD_IER		_MMIO(0x4447c)
> #define  GEN11_TC_HOTPLUG(tc_port)		(1 << ((tc_port) + 16))
>-#define  GEN11_DE_TC_HOTPLUG_MASK		(GEN11_TC_HOTPLUG(PORT_TC6) | \
>-						 GEN11_TC_HOTPLUG(PORT_TC5) | \
>-						 GEN11_TC_HOTPLUG(PORT_TC4) | \
>-						 GEN11_TC_HOTPLUG(PORT_TC3) | \
>-						 GEN11_TC_HOTPLUG(PORT_TC2) | \
>-						 GEN11_TC_HOTPLUG(PORT_TC1))
>+#define  GEN11_DE_TC_HOTPLUG_MASK		(GEN11_TC_HOTPLUG(TC_PORT_TC6) | \
>+						 GEN11_TC_HOTPLUG(TC_PORT_TC5) | \
>+						 GEN11_TC_HOTPLUG(TC_PORT_TC4) | \
>+						 GEN11_TC_HOTPLUG(TC_PORT_TC3) | \
>+						 GEN11_TC_HOTPLUG(TC_PORT_TC2) | \
>+						 GEN11_TC_HOTPLUG(TC_PORT_TC1))
> #define  GEN11_TBT_HOTPLUG(tc_port)		(1 << (tc_port))
>-#define  GEN11_DE_TBT_HOTPLUG_MASK		(GEN11_TBT_HOTPLUG(PORT_TC6) | \
>-						 GEN11_TBT_HOTPLUG(PORT_TC5) | \
>-						 GEN11_TBT_HOTPLUG(PORT_TC4) | \
>-						 GEN11_TBT_HOTPLUG(PORT_TC3) | \
>-						 GEN11_TBT_HOTPLUG(PORT_TC2) | \
>-						 GEN11_TBT_HOTPLUG(PORT_TC1))
>+#define  GEN11_DE_TBT_HOTPLUG_MASK		(GEN11_TBT_HOTPLUG(TC_PORT_TC6) | \
>+						 GEN11_TBT_HOTPLUG(TC_PORT_TC5) | \
>+						 GEN11_TBT_HOTPLUG(TC_PORT_TC4) | \
>+						 GEN11_TBT_HOTPLUG(TC_PORT_TC3) | \
>+						 GEN11_TBT_HOTPLUG(TC_PORT_TC2) | \
>+						 GEN11_TBT_HOTPLUG(TC_PORT_TC1))
>
> #define GEN11_TBT_HOTPLUG_CTL				_MMIO(0x44030)
> #define GEN11_TC_HOTPLUG_CTL				_MMIO(0x44038)
>@@ -8320,19 +8320,19 @@ enum {
> #define SDE_DDI_HOTPLUG_ICP(port)	(1 << ((port) + 16))
> #define SDE_DDI_MASK_ICP		(SDE_DDI_HOTPLUG_ICP(PORT_B) | \
> 					 SDE_DDI_HOTPLUG_ICP(PORT_A))
>-#define SDE_TC_MASK_ICP			(SDE_TC_HOTPLUG_ICP(PORT_TC4) | \
>-					 SDE_TC_HOTPLUG_ICP(PORT_TC3) | \
>-					 SDE_TC_HOTPLUG_ICP(PORT_TC2) | \
>-					 SDE_TC_HOTPLUG_ICP(PORT_TC1))
>+#define SDE_TC_MASK_ICP			(SDE_TC_HOTPLUG_ICP(TC_PORT_TC4) | \
>+					 SDE_TC_HOTPLUG_ICP(TC_PORT_TC3) | \
>+					 SDE_TC_HOTPLUG_ICP(TC_PORT_TC2) | \
>+					 SDE_TC_HOTPLUG_ICP(TC_PORT_TC1))
> #define SDE_DDI_MASK_TGP		(SDE_DDI_HOTPLUG_ICP(PORT_C) | \
> 					 SDE_DDI_HOTPLUG_ICP(PORT_B) | \
> 					 SDE_DDI_HOTPLUG_ICP(PORT_A))
>-#define SDE_TC_MASK_TGP			(SDE_TC_HOTPLUG_ICP(PORT_TC6) | \
>-					 SDE_TC_HOTPLUG_ICP(PORT_TC5) | \
>-					 SDE_TC_HOTPLUG_ICP(PORT_TC4) | \
>-					 SDE_TC_HOTPLUG_ICP(PORT_TC3) | \
>-					 SDE_TC_HOTPLUG_ICP(PORT_TC2) | \
>-					 SDE_TC_HOTPLUG_ICP(PORT_TC1))
>+#define SDE_TC_MASK_TGP			(SDE_TC_HOTPLUG_ICP(TC_PORT_TC6) | \
>+					 SDE_TC_HOTPLUG_ICP(TC_PORT_TC5) | \
>+					 SDE_TC_HOTPLUG_ICP(TC_PORT_TC4) | \
>+					 SDE_TC_HOTPLUG_ICP(TC_PORT_TC3) | \
>+					 SDE_TC_HOTPLUG_ICP(TC_PORT_TC2) | \
>+					 SDE_TC_HOTPLUG_ICP(TC_PORT_TC1))
>
> #define SDEISR  _MMIO(0xc4000)
> #define SDEIMR  _MMIO(0xc4004)
>@@ -8417,15 +8417,15 @@ enum {
>
> #define ICP_DDI_HPD_ENABLE_MASK		(SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_B) | \
> 					 SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_A))
>-#define ICP_TC_HPD_ENABLE_MASK		(ICP_TC_HPD_ENABLE(PORT_TC4) | \
>-					 ICP_TC_HPD_ENABLE(PORT_TC3) | \
>-					 ICP_TC_HPD_ENABLE(PORT_TC2) | \
>-					 ICP_TC_HPD_ENABLE(PORT_TC1))
>+#define ICP_TC_HPD_ENABLE_MASK		(ICP_TC_HPD_ENABLE(TC_PORT_TC4) | \
>+					 ICP_TC_HPD_ENABLE(TC_PORT_TC3) | \
>+					 ICP_TC_HPD_ENABLE(TC_PORT_TC2) | \
>+					 ICP_TC_HPD_ENABLE(TC_PORT_TC1))
> #define TGP_DDI_HPD_ENABLE_MASK		(SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_C) | \
> 					 SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_B) | \
> 					 SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_A))
>-#define TGP_TC_HPD_ENABLE_MASK		(ICP_TC_HPD_ENABLE(PORT_TC6) | \
>-					 ICP_TC_HPD_ENABLE(PORT_TC5) | \
>+#define TGP_TC_HPD_ENABLE_MASK		(ICP_TC_HPD_ENABLE(TC_PORT_TC6) | \
>+					 ICP_TC_HPD_ENABLE(TC_PORT_TC5) | \
> 					 ICP_TC_HPD_ENABLE_MASK)
>
> #define _PCH_DPLL_A              0xc6014
>@@ -10283,9 +10283,9 @@ enum skl_power_gate {
> #define ICL_DPCLKA_CFGCR0			_MMIO(0x164280)
> #define  ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)	(1 << _PICK(phy, 10, 11, 24))
> #define  RKL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)	REG_BIT((phy) + 10)
>-#define  ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port)	(1 << ((tc_port) < PORT_TC=
4 ? \
>+#define  ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port)	(1 << ((tc_port) < TC_PORT=
_TC4 ? \
> 						       (tc_port) + 12 : \
>-						       (tc_port) - PORT_TC4 + 21))
>+						       (tc_port) - TC_PORT_TC4 + 21))
> #define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy)	((phy) * 2)
> #define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)	(3 << ICL_DPCLKA_CFGCR0_=
DDI_CLK_SEL_SHIFT(phy))
> #define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy)	((pll) << ICL_DPCLKA_CFG=
CR0_DDI_CLK_SEL_SHIFT(phy))
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
