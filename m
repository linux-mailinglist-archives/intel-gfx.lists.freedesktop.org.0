Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6B0297795
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 21:19:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A42ED6E595;
	Fri, 23 Oct 2020 19:19:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73B0E6E595
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 19:19:35 +0000 (UTC)
IronPort-SDR: IJ6WGcKHloPGTs3rM4g7yGlkuNWynMD7s4SR0z0qemNVJmy81tQrshEJj3fGNEZzp+fmMmMork
 s0N/FAXwfMPw==
X-IronPort-AV: E=McAfee;i="6000,8403,9783"; a="252418983"
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="252418983"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 12:19:35 -0700
IronPort-SDR: PjE6zjgIOltTSyKq96dkQ5wHRx7olraUfIiab0+820LgJlcamAemKTUfa7JcXGN2wL88GAtK0g
 n01cGvL7VZow==
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="467178010"
Received: from spoase-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.216.15])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 12:19:34 -0700
Date: Fri, 23 Oct 2020 12:19:34 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201023191934.ax47m4v65bzsi24x@ldmartin-desk1>
References: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
 <20201023133420.12039-11-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201023133420.12039-11-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 10/19] drm/i915: s/tc_port/hpd_pin/ in
 GEN11_{TC, TBT}_HOTPLUG()
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

On Fri, Oct 23, 2020 at 04:34:11PM +0300, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>Use hpd_pin instead of tc_port in the GEN11_{TC,TBT}_HOTPLUG()
>to make it clear what they refer to.
>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/i915_irq.c | 48 ++++++++++++++++-----------------
> drivers/gpu/drm/i915/i915_reg.h | 37 ++++++++++++-------------
> 2 files changed, 43 insertions(+), 42 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_i=
rq.c
>index d7dc2f5ed2b0..9c0b029cad07 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -132,12 +132,12 @@ static const u32 hpd_bxt[HPD_NUM_PINS] =3D {
> };
>
> static const u32 hpd_gen11[HPD_NUM_PINS] =3D {
>-	[HPD_PORT_TC1] =3D GEN11_TC_HOTPLUG(TC_PORT_1) | GEN11_TBT_HOTPLUG(TC_PO=
RT_1),
>-	[HPD_PORT_TC2] =3D GEN11_TC_HOTPLUG(TC_PORT_2) | GEN11_TBT_HOTPLUG(TC_PO=
RT_2),
>-	[HPD_PORT_TC3] =3D GEN11_TC_HOTPLUG(TC_PORT_3) | GEN11_TBT_HOTPLUG(TC_PO=
RT_3),
>-	[HPD_PORT_TC4] =3D GEN11_TC_HOTPLUG(TC_PORT_4) | GEN11_TBT_HOTPLUG(TC_PO=
RT_4),
>-	[HPD_PORT_TC5] =3D GEN11_TC_HOTPLUG(TC_PORT_5) | GEN11_TBT_HOTPLUG(TC_PO=
RT_5),
>-	[HPD_PORT_TC6] =3D GEN11_TC_HOTPLUG(TC_PORT_6) | GEN11_TBT_HOTPLUG(TC_PO=
RT_6),
>+	[HPD_PORT_TC1] =3D GEN11_TC_HOTPLUG(HPD_PORT_TC1) | GEN11_TBT_HOTPLUG(HP=
D_PORT_TC1),
>+	[HPD_PORT_TC2] =3D GEN11_TC_HOTPLUG(HPD_PORT_TC2) | GEN11_TBT_HOTPLUG(HP=
D_PORT_TC2),
>+	[HPD_PORT_TC3] =3D GEN11_TC_HOTPLUG(HPD_PORT_TC3) | GEN11_TBT_HOTPLUG(HP=
D_PORT_TC3),
>+	[HPD_PORT_TC4] =3D GEN11_TC_HOTPLUG(HPD_PORT_TC4) | GEN11_TBT_HOTPLUG(HP=
D_PORT_TC4),
>+	[HPD_PORT_TC5] =3D GEN11_TC_HOTPLUG(HPD_PORT_TC5) | GEN11_TBT_HOTPLUG(HP=
D_PORT_TC5),
>+	[HPD_PORT_TC6] =3D GEN11_TC_HOTPLUG(HPD_PORT_TC6) | GEN11_TBT_HOTPLUG(HP=
D_PORT_TC6),
> };
>
> static const u32 hpd_icp[HPD_NUM_PINS] =3D {
>@@ -1032,17 +1032,17 @@ static bool gen11_port_hotplug_long_detect(enum hp=
d_pin pin, u32 val)
> {
> 	switch (pin) {
> 	case HPD_PORT_TC1:
>-		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(TC_PORT_1);
>+		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(HPD_PORT_TC1);
> 	case HPD_PORT_TC2:
>-		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(TC_PORT_2);
>+		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(HPD_PORT_TC2);
> 	case HPD_PORT_TC3:
>-		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(TC_PORT_3);
>+		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(HPD_PORT_TC3);
> 	case HPD_PORT_TC4:
>-		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(TC_PORT_4);
>+		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(HPD_PORT_TC4);
> 	case HPD_PORT_TC5:
>-		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(TC_PORT_5);
>+		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(HPD_PORT_TC5);
> 	case HPD_PORT_TC6:
>-		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(TC_PORT_6);
>+		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(HPD_PORT_TC6);
> 	default:
> 		return false;
> 	}
>@@ -3256,21 +3256,21 @@ static void gen11_hpd_detection_setup(struct drm_i=
915_private *dev_priv)
> 	u32 hotplug;
>
> 	hotplug =3D I915_READ(GEN11_TC_HOTPLUG_CTL);
>-	hotplug |=3D GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_1) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_2) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_3) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_4) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_5) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_6);
>+	hotplug |=3D GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC1) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC2) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC3) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC4) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC5) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC6);
> 	I915_WRITE(GEN11_TC_HOTPLUG_CTL, hotplug);
>
> 	hotplug =3D I915_READ(GEN11_TBT_HOTPLUG_CTL);
>-	hotplug |=3D GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_1) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_2) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_3) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_4) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_5) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(TC_PORT_6);
>+	hotplug |=3D GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC1) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC2) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC3) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC4) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC5) |
>+		   GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC6);
> 	I915_WRITE(GEN11_TBT_HOTPLUG_CTL, hotplug);
> }
>
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index d7f027400c95..ae3c1710a438 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -7813,6 +7813,7 @@ enum {
> 	 GEN11_PIPE_PLANE5_FAULT)
>
> #define _HPD_PIN_DDI(hpd_pin)	((hpd_pin) - HPD_PORT_A)
>+#define _HPD_PIN_TC(hpd_pin)	((hpd_pin) - HPD_PORT_TC1)
>
> #define GEN8_DE_PORT_ISR _MMIO(0x44440)
> #define GEN8_DE_PORT_IMR _MMIO(0x44444)
>@@ -7890,27 +7891,27 @@ enum {
> #define GEN11_DE_HPD_IMR		_MMIO(0x44474)
> #define GEN11_DE_HPD_IIR		_MMIO(0x44478)
> #define GEN11_DE_HPD_IER		_MMIO(0x4447c)
>-#define  GEN11_TC_HOTPLUG(tc_port)		(1 << ((tc_port) + 16))
>-#define  GEN11_DE_TC_HOTPLUG_MASK		(GEN11_TC_HOTPLUG(TC_PORT_6) | \
>-						 GEN11_TC_HOTPLUG(TC_PORT_5) | \
>-						 GEN11_TC_HOTPLUG(TC_PORT_4) | \
>-						 GEN11_TC_HOTPLUG(TC_PORT_3) | \
>-						 GEN11_TC_HOTPLUG(TC_PORT_2) | \
>-						 GEN11_TC_HOTPLUG(TC_PORT_1))
>-#define  GEN11_TBT_HOTPLUG(tc_port)		(1 << (tc_port))
>-#define  GEN11_DE_TBT_HOTPLUG_MASK		(GEN11_TBT_HOTPLUG(TC_PORT_6) | \
>-						 GEN11_TBT_HOTPLUG(TC_PORT_5) | \
>-						 GEN11_TBT_HOTPLUG(TC_PORT_4) | \
>-						 GEN11_TBT_HOTPLUG(TC_PORT_3) | \
>-						 GEN11_TBT_HOTPLUG(TC_PORT_2) | \
>-						 GEN11_TBT_HOTPLUG(TC_PORT_1))
>+#define  GEN11_TC_HOTPLUG(hpd_pin)		REG_BIT(16 + _HPD_PIN_TC(hpd_pin))
>+#define  GEN11_DE_TC_HOTPLUG_MASK		(GEN11_TC_HOTPLUG(HPD_PORT_TC6) | \
>+						 GEN11_TC_HOTPLUG(HPD_PORT_TC5) | \
>+						 GEN11_TC_HOTPLUG(HPD_PORT_TC4) | \
>+						 GEN11_TC_HOTPLUG(HPD_PORT_TC3) | \
>+						 GEN11_TC_HOTPLUG(HPD_PORT_TC2) | \
>+						 GEN11_TC_HOTPLUG(HPD_PORT_TC1))
>+#define  GEN11_TBT_HOTPLUG(hpd_pin)		REG_BIT(_HPD_PIN_TC(hpd_pin))
>+#define  GEN11_DE_TBT_HOTPLUG_MASK		(GEN11_TBT_HOTPLUG(HPD_PORT_TC6) | \
>+						 GEN11_TBT_HOTPLUG(HPD_PORT_TC5) | \
>+						 GEN11_TBT_HOTPLUG(HPD_PORT_TC4) | \
>+						 GEN11_TBT_HOTPLUG(HPD_PORT_TC3) | \
>+						 GEN11_TBT_HOTPLUG(HPD_PORT_TC2) | \
>+						 GEN11_TBT_HOTPLUG(HPD_PORT_TC1))
>
> #define GEN11_TBT_HOTPLUG_CTL				_MMIO(0x44030)
> #define GEN11_TC_HOTPLUG_CTL				_MMIO(0x44038)
>-#define  GEN11_HOTPLUG_CTL_ENABLE(tc_port)		(8 << (tc_port) * 4)
>-#define  GEN11_HOTPLUG_CTL_LONG_DETECT(tc_port)		(2 << (tc_port) * 4)
>-#define  GEN11_HOTPLUG_CTL_SHORT_DETECT(tc_port)	(1 << (tc_port) * 4)
>-#define  GEN11_HOTPLUG_CTL_NO_DETECT(tc_port)		(0 << (tc_port) * 4)
>+#define  GEN11_HOTPLUG_CTL_ENABLE(hpd_pin)		(8 << (_HPD_PIN_TC(hpd_pin) *=
 4))
>+#define  GEN11_HOTPLUG_CTL_LONG_DETECT(hpd_pin)		(2 << (_HPD_PIN_TC(hpd_p=
in) * 4))
>+#define  GEN11_HOTPLUG_CTL_SHORT_DETECT(hpd_pin)	(1 << (_HPD_PIN_TC(hpd_p=
in) * 4))
>+#define  GEN11_HOTPLUG_CTL_NO_DETECT(hpd_pin)		(0 << (_HPD_PIN_TC(hpd_pin=
) * 4))
>
> #define GEN11_GT_INTR_DW0		_MMIO(0x190018)
> #define  GEN11_CSME			(31)
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
