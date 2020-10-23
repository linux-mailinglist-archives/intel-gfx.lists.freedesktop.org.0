Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96123297796
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 21:20:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F22386E5B9;
	Fri, 23 Oct 2020 19:20:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 626A66E5B9
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 19:20:46 +0000 (UTC)
IronPort-SDR: zqT9SYqdnnEjzL1gj7HXuubOVyuZQ11zp2fnObmxub7cFeBmSCG43PCsM+WbLq+Y81SQAolr8K
 /R7mXgnPwhnA==
X-IronPort-AV: E=McAfee;i="6000,8403,9783"; a="252419082"
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="252419082"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 12:20:46 -0700
IronPort-SDR: YIk6HrEMKFLWsdL2fefETjf1VOG3IoDcGnAvG9YIwQ1JwJVaJV9LMu8E9+ncdsQuzolRLH2Wpi
 lFWt1qK8s13w==
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="524776585"
Received: from spoase-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.216.15])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 12:20:45 -0700
Date: Fri, 23 Oct 2020 12:20:45 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201023192045.22kzgq2fqtojrwor@ldmartin-desk1>
References: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
 <20201023133420.12039-12-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201023133420.12039-12-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 11/19] drm/i915: s/tc_port/hpd_pin/ in
 icp+ TC hotplug bits
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

On Fri, Oct 23, 2020 at 04:34:12PM +0300, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>Parametrize the icp+ TC HPD bits using hpd_pin rather than
>tc_port so it's clear what kind of an animal we're dealing
>with.
>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/i915_irq.c | 30 ++++++++++++-------------
> drivers/gpu/drm/i915/i915_reg.h | 40 ++++++++++++++++-----------------
> 2 files changed, 35 insertions(+), 35 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_i=
rq.c
>index 9c0b029cad07..ff695ff23ce5 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -144,12 +144,12 @@ static const u32 hpd_icp[HPD_NUM_PINS] =3D {
> 	[HPD_PORT_A] =3D SDE_DDI_HOTPLUG_ICP(HPD_PORT_A),
> 	[HPD_PORT_B] =3D SDE_DDI_HOTPLUG_ICP(HPD_PORT_B),
> 	[HPD_PORT_C] =3D SDE_DDI_HOTPLUG_ICP(HPD_PORT_C),
>-	[HPD_PORT_TC1] =3D SDE_TC_HOTPLUG_ICP(TC_PORT_1),
>-	[HPD_PORT_TC2] =3D SDE_TC_HOTPLUG_ICP(TC_PORT_2),
>-	[HPD_PORT_TC3] =3D SDE_TC_HOTPLUG_ICP(TC_PORT_3),
>-	[HPD_PORT_TC4] =3D SDE_TC_HOTPLUG_ICP(TC_PORT_4),
>-	[HPD_PORT_TC5] =3D SDE_TC_HOTPLUG_ICP(TC_PORT_5),
>-	[HPD_PORT_TC6] =3D SDE_TC_HOTPLUG_ICP(TC_PORT_6),
>+	[HPD_PORT_TC1] =3D SDE_TC_HOTPLUG_ICP(HPD_PORT_TC1),
>+	[HPD_PORT_TC2] =3D SDE_TC_HOTPLUG_ICP(HPD_PORT_TC2),
>+	[HPD_PORT_TC3] =3D SDE_TC_HOTPLUG_ICP(HPD_PORT_TC3),
>+	[HPD_PORT_TC4] =3D SDE_TC_HOTPLUG_ICP(HPD_PORT_TC4),
>+	[HPD_PORT_TC5] =3D SDE_TC_HOTPLUG_ICP(HPD_PORT_TC5),
>+	[HPD_PORT_TC6] =3D SDE_TC_HOTPLUG_ICP(HPD_PORT_TC6),
> };
>
> static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
>@@ -1080,17 +1080,17 @@ static bool icp_tc_port_hotplug_long_detect(enum h=
pd_pin pin, u32 val)
> {
> 	switch (pin) {
> 	case HPD_PORT_TC1:
>-		return val & ICP_TC_HPD_LONG_DETECT(TC_PORT_1);
>+		return val & ICP_TC_HPD_LONG_DETECT(HPD_PORT_TC1);
> 	case HPD_PORT_TC2:
>-		return val & ICP_TC_HPD_LONG_DETECT(TC_PORT_2);
>+		return val & ICP_TC_HPD_LONG_DETECT(HPD_PORT_TC2);
> 	case HPD_PORT_TC3:
>-		return val & ICP_TC_HPD_LONG_DETECT(TC_PORT_3);
>+		return val & ICP_TC_HPD_LONG_DETECT(HPD_PORT_TC3);
> 	case HPD_PORT_TC4:
>-		return val & ICP_TC_HPD_LONG_DETECT(TC_PORT_4);
>+		return val & ICP_TC_HPD_LONG_DETECT(HPD_PORT_TC4);
> 	case HPD_PORT_TC5:
>-		return val & ICP_TC_HPD_LONG_DETECT(TC_PORT_5);
>+		return val & ICP_TC_HPD_LONG_DETECT(HPD_PORT_TC5);
> 	case HPD_PORT_TC6:
>-		return val & ICP_TC_HPD_LONG_DETECT(TC_PORT_6);
>+		return val & ICP_TC_HPD_LONG_DETECT(HPD_PORT_TC6);
> 	default:
> 		return false;
> 	}
>@@ -1869,7 +1869,7 @@ static void icp_irq_handler(struct drm_i915_private =
*dev_priv, u32 pch_iir)
> 		tc_hotplug_trigger =3D 0;
> 	} else if (HAS_PCH_MCC(dev_priv)) {
> 		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_ICP;
>-		tc_hotplug_trigger =3D pch_iir & SDE_TC_HOTPLUG_ICP(TC_PORT_1);
>+		tc_hotplug_trigger =3D pch_iir & SDE_TC_HOTPLUG_ICP(HPD_PORT_TC1);
> 	} else {
> 		drm_WARN(&dev_priv->drm, !HAS_PCH_ICP(dev_priv),
> 			 "Unrecognized PCH type 0x%x\n",
>@@ -3237,7 +3237,7 @@ static void icp_hpd_irq_setup(struct drm_i915_privat=
e *dev_priv,
> static void mcc_hpd_irq_setup(struct drm_i915_private *dev_priv)
> {
> 	icp_hpd_irq_setup(dev_priv,
>-			  ICP_DDI_HPD_ENABLE_MASK, ICP_TC_HPD_ENABLE(TC_PORT_1));
>+			  ICP_DDI_HPD_ENABLE_MASK, ICP_TC_HPD_ENABLE(HPD_PORT_TC1));
> }
>
> /*
>@@ -3643,7 +3643,7 @@ static void icp_irq_postinstall(struct drm_i915_priv=
ate *dev_priv)
> 		icp_ddi_hpd_detection_setup(dev_priv, TGP_DDI_HPD_ENABLE_MASK);
> 	} else if (HAS_PCH_MCC(dev_priv)) {
> 		icp_ddi_hpd_detection_setup(dev_priv, ICP_DDI_HPD_ENABLE_MASK);
>-		icp_tc_hpd_detection_setup(dev_priv, ICP_TC_HPD_ENABLE(TC_PORT_1));
>+		icp_tc_hpd_detection_setup(dev_priv, ICP_TC_HPD_ENABLE(HPD_PORT_TC1));
> 	} else {
> 		icp_ddi_hpd_detection_setup(dev_priv, ICP_DDI_HPD_ENABLE_MASK);
> 		icp_tc_hpd_detection_setup(dev_priv, ICP_TC_HPD_ENABLE_MASK);
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index ae3c1710a438..8f26ab69b366 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -8349,23 +8349,23 @@ enum {
>
> /* south display engine interrupt: ICP/TGP */
> #define SDE_GMBUS_ICP			(1 << 23)
>-#define SDE_TC_HOTPLUG_ICP(tc_port)	(1 << ((tc_port) + 24))
>+#define SDE_TC_HOTPLUG_ICP(hpd_pin)	REG_BIT(24 + _HPD_PIN_TC(hpd_pin))
> #define SDE_DDI_HOTPLUG_ICP(hpd_pin)	REG_BIT(16 + _HPD_PIN_DDI(hpd_pin))
> #define SDE_DDI_MASK_ICP		(SDE_DDI_HOTPLUG_ICP(HPD_PORT_B) | \
> 					 SDE_DDI_HOTPLUG_ICP(HPD_PORT_A))
>-#define SDE_TC_MASK_ICP			(SDE_TC_HOTPLUG_ICP(TC_PORT_4) | \
>-					 SDE_TC_HOTPLUG_ICP(TC_PORT_3) | \
>-					 SDE_TC_HOTPLUG_ICP(TC_PORT_2) | \
>-					 SDE_TC_HOTPLUG_ICP(TC_PORT_1))
>+#define SDE_TC_MASK_ICP			(SDE_TC_HOTPLUG_ICP(HPD_PORT_TC4) | \
>+					 SDE_TC_HOTPLUG_ICP(HPD_PORT_TC3) | \
>+					 SDE_TC_HOTPLUG_ICP(HPD_PORT_TC2) | \
>+					 SDE_TC_HOTPLUG_ICP(HPD_PORT_TC1))
> #define SDE_DDI_MASK_TGP		(SDE_DDI_HOTPLUG_ICP(HPD_PORT_C) | \
> 					 SDE_DDI_HOTPLUG_ICP(HPD_PORT_B) | \
> 					 SDE_DDI_HOTPLUG_ICP(HPD_PORT_A))
>-#define SDE_TC_MASK_TGP			(SDE_TC_HOTPLUG_ICP(TC_PORT_6) | \
>-					 SDE_TC_HOTPLUG_ICP(TC_PORT_5) | \
>-					 SDE_TC_HOTPLUG_ICP(TC_PORT_4) | \
>-					 SDE_TC_HOTPLUG_ICP(TC_PORT_3) | \
>-					 SDE_TC_HOTPLUG_ICP(TC_PORT_2) | \
>-					 SDE_TC_HOTPLUG_ICP(TC_PORT_1))
>+#define SDE_TC_MASK_TGP			(SDE_TC_HOTPLUG_ICP(HPD_PORT_TC6) | \
>+					 SDE_TC_HOTPLUG_ICP(HPD_PORT_TC5) | \
>+					 SDE_TC_HOTPLUG_ICP(HPD_PORT_TC4) | \
>+					 SDE_TC_HOTPLUG_ICP(HPD_PORT_TC3) | \
>+					 SDE_TC_HOTPLUG_ICP(HPD_PORT_TC2) | \
>+					 SDE_TC_HOTPLUG_ICP(HPD_PORT_TC1))
>
> #define SDEISR  _MMIO(0xc4000)
> #define SDEIMR  _MMIO(0xc4004)
>@@ -8441,24 +8441,24 @@ enum {
> #define   SHOTPLUG_CTL_DDI_HPD_SHORT_LONG_DETECT(hpd_pin)	(0x3 << (_HPD_P=
IN_DDI(hpd_pin) * 4))
>
> #define SHOTPLUG_CTL_TC				_MMIO(0xc4034)
>-#define   ICP_TC_HPD_ENABLE(tc_port)		(8 << (tc_port) * 4)
>-#define   ICP_TC_HPD_LONG_DETECT(tc_port)	(2 << (tc_port) * 4)
>-#define   ICP_TC_HPD_SHORT_DETECT(tc_port)	(1 << (tc_port) * 4)
>+#define   ICP_TC_HPD_ENABLE(hpd_pin)		(8 << (_HPD_PIN_TC(hpd_pin) * 4))
>+#define   ICP_TC_HPD_LONG_DETECT(hpd_pin)	(2 << (_HPD_PIN_TC(hpd_pin) * 4=
))
>+#define   ICP_TC_HPD_SHORT_DETECT(hpd_pin)	(1 << (_HPD_PIN_TC(hpd_pin) * =
4))
>
> #define SHPD_FILTER_CNT				_MMIO(0xc4038)
> #define   SHPD_FILTER_CNT_500_ADJ		0x001D9
>
> #define ICP_DDI_HPD_ENABLE_MASK		(SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_B)=
 | \
> 					 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_A))
>-#define ICP_TC_HPD_ENABLE_MASK		(ICP_TC_HPD_ENABLE(TC_PORT_4) | \
>-					 ICP_TC_HPD_ENABLE(TC_PORT_3) | \
>-					 ICP_TC_HPD_ENABLE(TC_PORT_2) | \
>-					 ICP_TC_HPD_ENABLE(TC_PORT_1))
>+#define ICP_TC_HPD_ENABLE_MASK		(ICP_TC_HPD_ENABLE(HPD_PORT_TC4) | \
>+					 ICP_TC_HPD_ENABLE(HPD_PORT_TC3) | \
>+					 ICP_TC_HPD_ENABLE(HPD_PORT_TC2) | \
>+					 ICP_TC_HPD_ENABLE(HPD_PORT_TC1))
> #define TGP_DDI_HPD_ENABLE_MASK		(SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_C)=
 | \
> 					 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_B) | \
> 					 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_A))
>-#define TGP_TC_HPD_ENABLE_MASK		(ICP_TC_HPD_ENABLE(TC_PORT_6) | \
>-					 ICP_TC_HPD_ENABLE(TC_PORT_5) | \
>+#define TGP_TC_HPD_ENABLE_MASK		(ICP_TC_HPD_ENABLE(HPD_PORT_TC6) | \
>+					 ICP_TC_HPD_ENABLE(HPD_PORT_TC5) | \
> 					 ICP_TC_HPD_ENABLE_MASK)
>
> #define _PCH_DPLL_A              0xc6014
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
