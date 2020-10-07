Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA05D286B6F
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 01:17:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 854116E9DA;
	Wed,  7 Oct 2020 23:17:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D113D6E9E0
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 23:17:25 +0000 (UTC)
IronPort-SDR: iUyjVxwCpW5UuAC6GgrVoj+SgOl8uRH6ya//APSZybd9yppUlq3FZ43LrqyK5OVtCFjfLKYQEU
 hoNDrq1C7dlQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="144518479"
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="144518479"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 16:17:25 -0700
IronPort-SDR: sWdHOKO91c2KoiG4G2tIsKAnGNMgvzcCM+70lps/xBkV2D1hUE3DVd0wSILvvz3SzgqRv4KXXv
 HP+TZp9D/DRA==
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="461559416"
Received: from lewisjos-mobl3.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.51.10])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 16:17:24 -0700
Date: Wed, 7 Oct 2020 16:17:24 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201007231724.ig4mezeuwr5bzetu@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20201006143349.5561-10-ville.syrjala@linux.intel.com>
 <20201006162543.2969-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201006162543.2969-1-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 09/20] drm/i915: Introduce
 GEN8_DE_PORT_HOTPLUG()
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

On Tue, Oct 06, 2020 at 07:25:43PM +0300, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>Unify the BDW/BXT hotplug bits. BDW only has port A, but that
>matches BXT port A so we can shar the same macro for both.
>
>v2: Remember the gvt
>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/gvt/display.c | 14 +++++++-------
> drivers/gpu/drm/i915/i915_irq.c    | 18 +++++++++---------
> drivers/gpu/drm/i915/i915_reg.h    | 10 +++++-----
> 3 files changed, 21 insertions(+), 21 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt=
/display.c
>index c124734e114c..5b5c71a0b4af 100644
>--- a/drivers/gpu/drm/i915/gvt/display.c
>+++ b/drivers/gpu/drm/i915/gvt/display.c
>@@ -174,23 +174,23 @@ static void emulate_monitor_status_change(struct int=
el_vgpu *vgpu)
>
> 	if (IS_BROXTON(dev_priv)) {
> 		vgpu_vreg_t(vgpu, GEN8_DE_PORT_ISR) &=3D
>-			~(BXT_DE_PORT_HP_DDI(HPD_PORT_A) |
>-			  BXT_DE_PORT_HP_DDI(HPD_PORT_B) |
>-			  BXT_DE_PORT_HP_DDI(HPD_PORT_C));
>+			~(GEN8_DE_PORT_HOTPLUG(HPD_PORT_A) |
>+			  GEN8_DE_PORT_HOTPLUG(HPD_PORT_B) |
>+			  GEN8_DE_PORT_HOTPLUG(HPD_PORT_C));
>
> 		if (intel_vgpu_has_monitor_on_port(vgpu, PORT_A)) {
> 			vgpu_vreg_t(vgpu, GEN8_DE_PORT_ISR) |=3D
>-				BXT_DE_PORT_HP_DDI(HPD_PORT_A);
>+				GEN8_DE_PORT_HOTPLUG(HPD_PORT_A);
> 		}
>
> 		if (intel_vgpu_has_monitor_on_port(vgpu, PORT_B)) {
> 			vgpu_vreg_t(vgpu, GEN8_DE_PORT_ISR) |=3D
>-				BXT_DE_PORT_HP_DDI(HPD_PORT_B);
>+				GEN8_DE_PORT_HOTPLUG(HPD_PORT_B);
> 		}
>
> 		if (intel_vgpu_has_monitor_on_port(vgpu, PORT_C)) {
> 			vgpu_vreg_t(vgpu, GEN8_DE_PORT_ISR) |=3D
>-				BXT_DE_PORT_HP_DDI(HPD_PORT_C);
>+				GEN8_DE_PORT_HOTPLUG(HPD_PORT_C);
> 		}
>
> 		return;
>@@ -328,7 +328,7 @@ static void emulate_monitor_status_change(struct intel=
_vgpu *vgpu)
> 	if (intel_vgpu_has_monitor_on_port(vgpu, PORT_A)) {
> 		if (IS_BROADWELL(dev_priv))
> 			vgpu_vreg_t(vgpu, GEN8_DE_PORT_ISR) |=3D
>-				GEN8_PORT_DP_A_HOTPLUG;
>+				GEN8_DE_PORT_HOTPLUG(HPD_PORT_A);
> 		else
> 			vgpu_vreg_t(vgpu, SDEISR) |=3D SDE_PORTA_HOTPLUG_SPT;
>
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_i=
rq.c
>index 9b92b95f7a6f..6b824db1424a 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -71,7 +71,7 @@ static const u32 hpd_ivb[HPD_NUM_PINS] =3D {
> };
>
> static const u32 hpd_bdw[HPD_NUM_PINS] =3D {
>-	[HPD_PORT_A] =3D GEN8_PORT_DP_A_HOTPLUG,
>+	[HPD_PORT_A] =3D GEN8_DE_PORT_HOTPLUG(HPD_PORT_A),
> };
>
> static const u32 hpd_ibx[HPD_NUM_PINS] =3D {
>@@ -126,9 +126,9 @@ static const u32 hpd_status_i915[HPD_NUM_PINS] =3D {
> };
>
> static const u32 hpd_bxt[HPD_NUM_PINS] =3D {
>-	[HPD_PORT_A] =3D BXT_DE_PORT_HP_DDI(HPD_PORT_A),
>-	[HPD_PORT_B] =3D BXT_DE_PORT_HP_DDI(HPD_PORT_B),
>-	[HPD_PORT_C] =3D BXT_DE_PORT_HP_DDI(HPD_PORT_C),
>+	[HPD_PORT_A] =3D GEN8_DE_PORT_HOTPLUG(HPD_PORT_A),
>+	[HPD_PORT_B] =3D GEN8_DE_PORT_HOTPLUG(HPD_PORT_B),
>+	[HPD_PORT_C] =3D GEN8_DE_PORT_HOTPLUG(HPD_PORT_C),
> };
>
> static const u32 hpd_gen11[HPD_NUM_PINS] =3D {
>@@ -2367,7 +2367,7 @@ gen8_de_irq_handler(struct drm_i915_private *dev_pri=
v, u32 master_ctl)
> 					found =3D true;
> 				}
> 			} else if (IS_BROADWELL(dev_priv)) {
>-				tmp_mask =3D iir & GEN8_PORT_DP_A_HOTPLUG;
>+				tmp_mask =3D iir & BDW_DE_PORT_HOTPLUG_MASK;
> 				if (tmp_mask) {
> 					ilk_hpd_irq_handler(dev_priv, tmp_mask);
> 					found =3D true;
>@@ -3391,13 +3391,13 @@ static void __bxt_hpd_detection_setup(struct drm_i=
915_private *dev_priv,
> 	 * For BXT invert bit has to be set based on AOB design
> 	 * for HPD detection logic, update it based on VBT fields.
> 	 */
>-	if ((enabled_irqs & BXT_DE_PORT_HP_DDI(HPD_PORT_A)) &&
>+	if ((enabled_irqs & GEN8_DE_PORT_HOTPLUG(HPD_PORT_A)) &&
> 	    intel_bios_is_port_hpd_inverted(dev_priv, PORT_A))
> 		hotplug |=3D BXT_DDIA_HPD_INVERT;
>-	if ((enabled_irqs & BXT_DE_PORT_HP_DDI(HPD_PORT_B)) &&
>+	if ((enabled_irqs & GEN8_DE_PORT_HOTPLUG(HPD_PORT_B)) &&
> 	    intel_bios_is_port_hpd_inverted(dev_priv, PORT_B))
> 		hotplug |=3D BXT_DDIB_HPD_INVERT;
>-	if ((enabled_irqs & BXT_DE_PORT_HP_DDI(HPD_PORT_C)) &&
>+	if ((enabled_irqs & GEN8_DE_PORT_HOTPLUG(HPD_PORT_C)) &&
> 	    intel_bios_is_port_hpd_inverted(dev_priv, PORT_C))
> 		hotplug |=3D BXT_DDIC_HPD_INVERT;
>
>@@ -3574,7 +3574,7 @@ static void gen8_de_irq_postinstall(struct drm_i915_=
private *dev_priv)
> 	if (IS_GEN9_LP(dev_priv))
> 		de_port_enables |=3D BXT_DE_PORT_HOTPLUG_MASK;
> 	else if (IS_BROADWELL(dev_priv))
>-		de_port_enables |=3D GEN8_PORT_DP_A_HOTPLUG;
>+		de_port_enables |=3D BDW_DE_PORT_HOTPLUG_MASK;
>
> 	if (INTEL_GEN(dev_priv) >=3D 12) {
> 		enum transcoder trans;
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 72f93ec38aea..969266e59f56 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -7801,11 +7801,11 @@ enum {
> #define  GEN9_AUX_CHANNEL_B		(1 << 25)
> #define  DSI1_TE			(1 << 24)
> #define  DSI0_TE			(1 << 23)
>-#define  BXT_DE_PORT_HP_DDI(hpd_pin)	REG_BIT(3 + _HPD_PIN_DDI(hpd_pin))
>-#define  BXT_DE_PORT_HOTPLUG_MASK	(BXT_DE_PORT_HP_DDI(HPD_PORT_A) | \
>-					 BXT_DE_PORT_HP_DDI(HPD_PORT_B) | \
>-					 BXT_DE_PORT_HP_DDI(HPD_PORT_C))
>-#define  GEN8_PORT_DP_A_HOTPLUG		(1 << 3)
>+#define  GEN8_DE_PORT_HOTPLUG(hpd_pin)	REG_BIT(3 + _HPD_PIN_DDI(hpd_pin))
>+#define  BXT_DE_PORT_HOTPLUG_MASK	(GEN8_DE_PORT_HOTPLUG(HPD_PORT_A) | \
>+					 GEN8_DE_PORT_HOTPLUG(HPD_PORT_B) | \
>+					 GEN8_DE_PORT_HOTPLUG(HPD_PORT_C))
>+#define  BDW_DE_PORT_HOTPLUG_MASK	GEN8_DE_PORT_HOTPLUG(HPD_PORT_A)
> #define  BXT_DE_PORT_GMBUS		(1 << 1)
> #define  GEN8_AUX_CHANNEL_A		(1 << 0)
> #define  TGL_DE_PORT_AUX_USBC6		(1 << 13)
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
