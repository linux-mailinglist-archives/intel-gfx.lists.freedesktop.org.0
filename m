Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A0F29517E
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 19:28:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75F9B6EE33;
	Wed, 21 Oct 2020 17:28:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4AA86EE33
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 17:28:21 +0000 (UTC)
IronPort-SDR: E3MxBDHQ+PpEw1amXSI50vXrd7YlRADIzR6aOcVOjGfz3t7d6Mv9Vhu15eTGwbplgOFr7uLqvF
 T6CLpVtvEBbg==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="154358803"
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="154358803"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 10:28:21 -0700
IronPort-SDR: KOn/0KfDqvOmFjGu/jPWClnTmGlQkKSaVmMblMY72F+SKJgW2O4hyB+RvO2WId5uF4JCK/5Amr
 nn0fsNM7uNpA==
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="523970566"
Received: from jmvega-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.122.87])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 10:28:20 -0700
Date: Wed, 21 Oct 2020 10:28:19 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20201021172819.mxujeqari4j7usgc@ldmartin-desk1>
References: <20201021133213.328994-1-aditya.swarup@intel.com>
 <20201021133213.328994-5-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201021133213.328994-5-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 04/18] drm/i915/adl_s: Add Interrupt Support
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 21, 2020 at 06:31:59AM -0700, Aditya Swarup wrote:
>From: Anusha Srivatsa <anusha.srivatsa@intel.com>
>
>ADLS follows ICP/TGP like interrupts. Reuse hpd_icp and introduce
>ADLS DDI and HPD masks for setting up hpd interrupts.
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Jani Nikula <jani.nikula@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Cc: Imre Deak <imre.deak@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
>---
> drivers/gpu/drm/i915/i915_irq.c | 20 ++++++++++++++++----
> drivers/gpu/drm/i915/i915_reg.h |  3 +++
> 2 files changed, 19 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_i=
rq.c
>index b753c77c9a77..9033221995ad 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -179,8 +179,9 @@ static void intel_hpd_init_pins(struct drm_i915_privat=
e *dev_priv)

you still need to assign hpd_pin to do the mapping between port and hpd
pin. Earlier this was done in the irq handler itself, but now is done in
intel_ddi_init(). See what I did for DG1:
https://patchwork.freedesktop.org/patch/396062/?series=3D82905&rev=3D1

Lucas De Marchi

> 	if (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv))
> 		return;
>
>-	if (HAS_PCH_TGP(dev_priv) || HAS_PCH_JSP(dev_priv) ||
>-	    HAS_PCH_ICP(dev_priv) || HAS_PCH_MCC(dev_priv))
>+	if (HAS_PCH_ADP(dev_priv) || HAS_PCH_TGP(dev_priv) ||
>+	    HAS_PCH_JSP(dev_priv) || HAS_PCH_ICP(dev_priv) ||
>+	    HAS_PCH_MCC(dev_priv))
> 		hpd->pch_hpd =3D hpd_icp;
> 	else if (HAS_PCH_CNP(dev_priv) || HAS_PCH_SPT(dev_priv))
> 		hpd->pch_hpd =3D hpd_spt;
>@@ -1864,7 +1865,10 @@ static void icp_irq_handler(struct drm_i915_private=
 *dev_priv, u32 pch_iir)
> 	u32 ddi_hotplug_trigger, tc_hotplug_trigger;
> 	u32 pin_mask =3D 0, long_mask =3D 0;
>
>-	if (HAS_PCH_TGP(dev_priv)) {
>+	if (IS_ALDERLAKE_S(dev_priv)) {
>+		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_ADLS;
>+		tc_hotplug_trigger =3D pch_iir & SDE_TC_MASK_ICP;
>+	} else if (HAS_PCH_TGP(dev_priv)) {
> 		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_TGP;
> 		tc_hotplug_trigger =3D pch_iir & SDE_TC_MASK_TGP;
> 	} else if (HAS_PCH_JSP(dev_priv)) {
>@@ -3252,6 +3256,12 @@ static void jsp_hpd_irq_setup(struct drm_i915_priva=
te *dev_priv)
> 			  TGP_DDI_HPD_ENABLE_MASK, 0);
> }
>
>+static void adls_hpd_irq_setup(struct drm_i915_private *dev_priv)
>+{
>+	icp_hpd_irq_setup(dev_priv,
>+			  ADLS_DDI_HPD_ENABLE_MASK, ICP_TC_HPD_ENABLE_MASK);
>+}
>+
> static void gen11_hpd_detection_setup(struct drm_i915_private *dev_priv)
> {
> 	u32 hotplug;
>@@ -4162,7 +4172,9 @@ void intel_irq_init(struct drm_i915_private *dev_pri=
v)
> 		if (I915_HAS_HOTPLUG(dev_priv))
> 			dev_priv->display.hpd_irq_setup =3D i915_hpd_irq_setup;
> 	} else {
>-		if (HAS_PCH_JSP(dev_priv))
>+		if (IS_ALDERLAKE_S(dev_priv))
>+			dev_priv->display.hpd_irq_setup =3D adls_hpd_irq_setup;
>+		else if (HAS_PCH_JSP(dev_priv))
> 			dev_priv->display.hpd_irq_setup =3D jsp_hpd_irq_setup;
> 		else if (HAS_PCH_MCC(dev_priv))
> 			dev_priv->display.hpd_irq_setup =3D mcc_hpd_irq_setup;
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 83ddea1cd174..f6b844ca7a9f 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -8343,6 +8343,7 @@ enum {
> 					 SDE_TC_HOTPLUG_ICP(PORT_TC3) | \
> 					 SDE_TC_HOTPLUG_ICP(PORT_TC2) | \
> 					 SDE_TC_HOTPLUG_ICP(PORT_TC1))
>+#define SDE_DDI_MASK_ADLS		 SDE_DDI_HOTPLUG_ICP(PORT_A)
>
> #define SDEISR  _MMIO(0xc4000)
> #define SDEIMR  _MMIO(0xc4004)
>@@ -8438,6 +8439,8 @@ enum {
> 					 ICP_TC_HPD_ENABLE(PORT_TC5) | \
> 					 ICP_TC_HPD_ENABLE_MASK)
>
>+#define ADLS_DDI_HPD_ENABLE_MASK	 SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_A)
>+
> #define _PCH_DPLL_A              0xc6014
> #define _PCH_DPLL_B              0xc6018
> #define PCH_DPLL(pll) _MMIO((pll) =3D=3D 0 ? _PCH_DPLL_A : _PCH_DPLL_B)
>-- =

>2.27.0
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
