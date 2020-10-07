Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5952E286B70
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 01:17:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBC756E9B4;
	Wed,  7 Oct 2020 23:17:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D8B06E9B4
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 23:17:50 +0000 (UTC)
IronPort-SDR: 48IRhd4MBhowNcdMFH38CfclwBsEr1XN11f2ke41kv+AMiMiga+lqKbCnjpTw6klnPMgKSBjJM
 XZvhgqq2TAvQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="165235585"
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="165235585"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 16:17:49 -0700
IronPort-SDR: 4t+rXE/3yLaX9uuKLaxpZeXGtXJhZ53ATIIyMtPn2H36C0C02ybxKnDukRdNcw03Pyt1azbnse
 IutbpJRnNjpw==
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="519072656"
Received: from lewisjos-mobl3.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.51.10])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 16:17:48 -0700
Date: Wed, 7 Oct 2020 16:17:48 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201007231748.re3xmqjambqg4tjm@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20201006143349.5561-9-ville.syrjala@linux.intel.com>
 <20201006162522.2854-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201006162522.2854-1-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 08/20] drm/i915: Parametrize
 BXT_DE_PORT_HP_DDI with hpd_pin
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

On Tue, Oct 06, 2020 at 07:25:22PM +0300, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>Use hpd_pin to parametrize BXT_DE_PORT_HP_DDI() to make it clear
>these have nothing to do with DDI ports or PHYs as such. The only
>thing that matters is the HPD pin assignment.
>
>v2: Remember the gvt
>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/gvt/display.c | 13 +++++++------
> drivers/gpu/drm/i915/i915_irq.c    | 12 ++++++------
> drivers/gpu/drm/i915/i915_reg.h    | 12 ++++++------
> 3 files changed, 19 insertions(+), 18 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt=
/display.c
>index 7ba16ddfe75f..c124734e114c 100644
>--- a/drivers/gpu/drm/i915/gvt/display.c
>+++ b/drivers/gpu/drm/i915/gvt/display.c
>@@ -173,23 +173,24 @@ static void emulate_monitor_status_change(struct int=
el_vgpu *vgpu)
> 	int pipe;
>
> 	if (IS_BROXTON(dev_priv)) {
>-		vgpu_vreg_t(vgpu, GEN8_DE_PORT_ISR) &=3D ~(BXT_DE_PORT_HP_DDIA |
>-			BXT_DE_PORT_HP_DDIB |
>-			BXT_DE_PORT_HP_DDIC);
>+		vgpu_vreg_t(vgpu, GEN8_DE_PORT_ISR) &=3D
>+			~(BXT_DE_PORT_HP_DDI(HPD_PORT_A) |
>+			  BXT_DE_PORT_HP_DDI(HPD_PORT_B) |
>+			  BXT_DE_PORT_HP_DDI(HPD_PORT_C));
>
> 		if (intel_vgpu_has_monitor_on_port(vgpu, PORT_A)) {
> 			vgpu_vreg_t(vgpu, GEN8_DE_PORT_ISR) |=3D
>-				BXT_DE_PORT_HP_DDIA;
>+				BXT_DE_PORT_HP_DDI(HPD_PORT_A);
> 		}
>
> 		if (intel_vgpu_has_monitor_on_port(vgpu, PORT_B)) {
> 			vgpu_vreg_t(vgpu, GEN8_DE_PORT_ISR) |=3D
>-				BXT_DE_PORT_HP_DDIB;
>+				BXT_DE_PORT_HP_DDI(HPD_PORT_B);
> 		}
>
> 		if (intel_vgpu_has_monitor_on_port(vgpu, PORT_C)) {
> 			vgpu_vreg_t(vgpu, GEN8_DE_PORT_ISR) |=3D
>-				BXT_DE_PORT_HP_DDIC;
>+				BXT_DE_PORT_HP_DDI(HPD_PORT_C);
> 		}
>
> 		return;
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_i=
rq.c
>index d9438194c2f0..9b92b95f7a6f 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -126,9 +126,9 @@ static const u32 hpd_status_i915[HPD_NUM_PINS] =3D {
> };
>
> static const u32 hpd_bxt[HPD_NUM_PINS] =3D {
>-	[HPD_PORT_A] =3D BXT_DE_PORT_HP_DDIA,
>-	[HPD_PORT_B] =3D BXT_DE_PORT_HP_DDIB,
>-	[HPD_PORT_C] =3D BXT_DE_PORT_HP_DDIC,
>+	[HPD_PORT_A] =3D BXT_DE_PORT_HP_DDI(HPD_PORT_A),
>+	[HPD_PORT_B] =3D BXT_DE_PORT_HP_DDI(HPD_PORT_B),
>+	[HPD_PORT_C] =3D BXT_DE_PORT_HP_DDI(HPD_PORT_C),
> };
>
> static const u32 hpd_gen11[HPD_NUM_PINS] =3D {
>@@ -3391,13 +3391,13 @@ static void __bxt_hpd_detection_setup(struct drm_i=
915_private *dev_priv,
> 	 * For BXT invert bit has to be set based on AOB design
> 	 * for HPD detection logic, update it based on VBT fields.
> 	 */
>-	if ((enabled_irqs & BXT_DE_PORT_HP_DDIA) &&
>+	if ((enabled_irqs & BXT_DE_PORT_HP_DDI(HPD_PORT_A)) &&
> 	    intel_bios_is_port_hpd_inverted(dev_priv, PORT_A))
> 		hotplug |=3D BXT_DDIA_HPD_INVERT;
>-	if ((enabled_irqs & BXT_DE_PORT_HP_DDIB) &&
>+	if ((enabled_irqs & BXT_DE_PORT_HP_DDI(HPD_PORT_B)) &&
> 	    intel_bios_is_port_hpd_inverted(dev_priv, PORT_B))
> 		hotplug |=3D BXT_DDIB_HPD_INVERT;
>-	if ((enabled_irqs & BXT_DE_PORT_HP_DDIC) &&
>+	if ((enabled_irqs & BXT_DE_PORT_HP_DDI(HPD_PORT_C)) &&
> 	    intel_bios_is_port_hpd_inverted(dev_priv, PORT_C))
> 		hotplug |=3D BXT_DDIC_HPD_INVERT;
>
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 2e378d9b21c5..72f93ec38aea 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -7786,6 +7786,8 @@ enum {
> 	(GEN9_DE_PIPE_IRQ_FAULT_ERRORS | \
> 	 GEN11_PIPE_PLANE5_FAULT)
>
>+#define _HPD_PIN_DDI(hpd_pin)	((hpd_pin) - HPD_PORT_A)
>+
> #define GEN8_DE_PORT_ISR _MMIO(0x44440)
> #define GEN8_DE_PORT_IMR _MMIO(0x44444)
> #define GEN8_DE_PORT_IIR _MMIO(0x44448)
>@@ -7799,12 +7801,10 @@ enum {
> #define  GEN9_AUX_CHANNEL_B		(1 << 25)
> #define  DSI1_TE			(1 << 24)
> #define  DSI0_TE			(1 << 23)
>-#define  BXT_DE_PORT_HP_DDIC		(1 << 5)
>-#define  BXT_DE_PORT_HP_DDIB		(1 << 4)
>-#define  BXT_DE_PORT_HP_DDIA		(1 << 3)
>-#define  BXT_DE_PORT_HOTPLUG_MASK	(BXT_DE_PORT_HP_DDIA | \
>-					 BXT_DE_PORT_HP_DDIB | \
>-					 BXT_DE_PORT_HP_DDIC)
>+#define  BXT_DE_PORT_HP_DDI(hpd_pin)	REG_BIT(3 + _HPD_PIN_DDI(hpd_pin))
>+#define  BXT_DE_PORT_HOTPLUG_MASK	(BXT_DE_PORT_HP_DDI(HPD_PORT_A) | \
>+					 BXT_DE_PORT_HP_DDI(HPD_PORT_B) | \
>+					 BXT_DE_PORT_HP_DDI(HPD_PORT_C))
> #define  GEN8_PORT_DP_A_HOTPLUG		(1 << 3)
> #define  BXT_DE_PORT_GMBUS		(1 << 1)
> #define  GEN8_AUX_CHANNEL_A		(1 << 0)
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
