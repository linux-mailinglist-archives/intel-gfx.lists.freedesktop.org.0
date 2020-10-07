Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0268286B77
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 01:22:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95C2D6E96F;
	Wed,  7 Oct 2020 23:22:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 530DF6E96F
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 23:22:51 +0000 (UTC)
IronPort-SDR: Uiq4FZkYQh82gvYia0x1zs5D32gFo4IyVNHOCvKo0BMzS2Zkuq6wvAFliVR6666tZQfT4GXcnP
 vjKs2HXzpazA==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="145064681"
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="145064681"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 16:22:50 -0700
IronPort-SDR: ROymXZvu0aRQzJJmv2wdQdYVVRBm0T/NL044jpIOadRiTgpl6IOpzhgJOqtvMuuANrxp/b4xNR
 azULqHkQEC7A==
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="518050848"
Received: from lewisjos-mobl3.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.51.10])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 16:22:50 -0700
Date: Wed, 7 Oct 2020 16:22:44 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201007232244.ospnw3ls3opfuy44@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
 <20201006143349.5561-11-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201006143349.5561-11-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 10/20] drm/i915: s/port/hpd_pin/ for icp+
 ddi hpd bits
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

On Tue, Oct 06, 2020 at 05:33:39PM +0300, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>Use hpd_pin instead of port in the parametrized ICP+ DDI HPD
>macros. Makes it clear what these refer to.
>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>---
> drivers/gpu/drm/i915/i915_irq.c | 12 ++++++------
> drivers/gpu/drm/i915/i915_reg.h | 34 ++++++++++++++++-----------------
> 2 files changed, 23 insertions(+), 23 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_i=
rq.c
>index 6b824db1424a..b64f83f3d686 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -141,9 +141,9 @@ static const u32 hpd_gen11[HPD_NUM_PINS] =3D {
> };
>
> static const u32 hpd_icp[HPD_NUM_PINS] =3D {
>-	[HPD_PORT_A] =3D SDE_DDI_HOTPLUG_ICP(PORT_A),
>-	[HPD_PORT_B] =3D SDE_DDI_HOTPLUG_ICP(PORT_B),
>-	[HPD_PORT_C] =3D SDE_DDI_HOTPLUG_ICP(PORT_C),
>+	[HPD_PORT_A] =3D SDE_DDI_HOTPLUG_ICP(HPD_PORT_A),
>+	[HPD_PORT_B] =3D SDE_DDI_HOTPLUG_ICP(HPD_PORT_B),
>+	[HPD_PORT_C] =3D SDE_DDI_HOTPLUG_ICP(HPD_PORT_C),
> 	[HPD_PORT_TC1] =3D SDE_TC_HOTPLUG_ICP(TC_PORT_TC1),
> 	[HPD_PORT_TC2] =3D SDE_TC_HOTPLUG_ICP(TC_PORT_TC2),
> 	[HPD_PORT_TC3] =3D SDE_TC_HOTPLUG_ICP(TC_PORT_TC3),
>@@ -1069,11 +1069,11 @@ static bool icp_ddi_port_hotplug_long_detect(enum =
hpd_pin pin, u32 val)
> {
> 	switch (pin) {
> 	case HPD_PORT_A:
>-		return val & SHOTPLUG_CTL_DDI_HPD_LONG_DETECT(PORT_A);
>+		return val & SHOTPLUG_CTL_DDI_HPD_LONG_DETECT(HPD_PORT_A);
> 	case HPD_PORT_B:
>-		return val & SHOTPLUG_CTL_DDI_HPD_LONG_DETECT(PORT_B);
>+		return val & SHOTPLUG_CTL_DDI_HPD_LONG_DETECT(HPD_PORT_B);
> 	case HPD_PORT_C:
>-		return val & SHOTPLUG_CTL_DDI_HPD_LONG_DETECT(PORT_C);
>+		return val & SHOTPLUG_CTL_DDI_HPD_LONG_DETECT(HPD_PORT_C);
> 	default:
> 		return false;
> 	}
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 969266e59f56..206e8ab64bd4 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -8317,16 +8317,16 @@ enum {
> /* south display engine interrupt: ICP/TGP */
> #define SDE_GMBUS_ICP			(1 << 23)
> #define SDE_TC_HOTPLUG_ICP(tc_port)	(1 << ((tc_port) + 24))
>-#define SDE_DDI_HOTPLUG_ICP(port)	(1 << ((port) + 16))
>-#define SDE_DDI_MASK_ICP		(SDE_DDI_HOTPLUG_ICP(PORT_B) | \
>-					 SDE_DDI_HOTPLUG_ICP(PORT_A))
>+#define SDE_DDI_HOTPLUG_ICP(hpd_pin)	REG_BIT(16 + _HPD_PIN_DDI(hpd_pin))
>+#define SDE_DDI_MASK_ICP		(SDE_DDI_HOTPLUG_ICP(HPD_PORT_B) | \
>+					 SDE_DDI_HOTPLUG_ICP(HPD_PORT_A))
> #define SDE_TC_MASK_ICP			(SDE_TC_HOTPLUG_ICP(TC_PORT_TC4) | \
> 					 SDE_TC_HOTPLUG_ICP(TC_PORT_TC3) | \
> 					 SDE_TC_HOTPLUG_ICP(TC_PORT_TC2) | \
> 					 SDE_TC_HOTPLUG_ICP(TC_PORT_TC1))
>-#define SDE_DDI_MASK_TGP		(SDE_DDI_HOTPLUG_ICP(PORT_C) | \
>-					 SDE_DDI_HOTPLUG_ICP(PORT_B) | \
>-					 SDE_DDI_HOTPLUG_ICP(PORT_A))
>+#define SDE_DDI_MASK_TGP		(SDE_DDI_HOTPLUG_ICP(HPD_PORT_C) | \
>+					 SDE_DDI_HOTPLUG_ICP(HPD_PORT_B) | \
>+					 SDE_DDI_HOTPLUG_ICP(HPD_PORT_A))


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>


Lucas De Marchi

> #define SDE_TC_MASK_TGP			(SDE_TC_HOTPLUG_ICP(TC_PORT_TC6) | \
> 					 SDE_TC_HOTPLUG_ICP(TC_PORT_TC5) | \
> 					 SDE_TC_HOTPLUG_ICP(TC_PORT_TC4) | \
>@@ -8400,12 +8400,12 @@ enum {
>  */
>
> #define SHOTPLUG_CTL_DDI				_MMIO(0xc4030)
>-#define   SHOTPLUG_CTL_DDI_HPD_ENABLE(port)		(0x8 << (4 * (port)))
>-#define   SHOTPLUG_CTL_DDI_HPD_STATUS_MASK(port)	(0x3 << (4 * (port)))
>-#define   SHOTPLUG_CTL_DDI_HPD_NO_DETECT(port)		(0x0 << (4 * (port)))
>-#define   SHOTPLUG_CTL_DDI_HPD_SHORT_DETECT(port)	(0x1 << (4 * (port)))
>-#define   SHOTPLUG_CTL_DDI_HPD_LONG_DETECT(port)	(0x2 << (4 * (port)))
>-#define   SHOTPLUG_CTL_DDI_HPD_SHORT_LONG_DETECT(port)	(0x3 << (4 * (port=
)))
>+#define   SHOTPLUG_CTL_DDI_HPD_ENABLE(hpd_pin)			(0x8 << (_HPD_PIN_DDI(hp=
d_pin) * 4))
>+#define   SHOTPLUG_CTL_DDI_HPD_STATUS_MASK(hpd_pin)		(0x3 << (_HPD_PIN_DD=
I(hpd_pin) * 4))
>+#define   SHOTPLUG_CTL_DDI_HPD_NO_DETECT(hpd_pin)		(0x0 << (_HPD_PIN_DDI(=
hpd_pin) * 4))
>+#define   SHOTPLUG_CTL_DDI_HPD_SHORT_DETECT(hpd_pin)		(0x1 << (_HPD_PIN_D=
DI(hpd_pin) * 4))
>+#define   SHOTPLUG_CTL_DDI_HPD_LONG_DETECT(hpd_pin)		(0x2 << (_HPD_PIN_DD=
I(hpd_pin) * 4))
>+#define   SHOTPLUG_CTL_DDI_HPD_SHORT_LONG_DETECT(hpd_pin)	(0x3 << (_HPD_P=
IN_DDI(hpd_pin) * 4))
>
> #define SHOTPLUG_CTL_TC				_MMIO(0xc4034)
> #define   ICP_TC_HPD_ENABLE(tc_port)		(8 << (tc_port) * 4)
>@@ -8415,15 +8415,15 @@ enum {
> #define SHPD_FILTER_CNT				_MMIO(0xc4038)
> #define   SHPD_FILTER_CNT_500_ADJ		0x001D9
>
>-#define ICP_DDI_HPD_ENABLE_MASK		(SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_B) | \
>-					 SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_A))
>+#define ICP_DDI_HPD_ENABLE_MASK		(SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_B)=
 | \
>+					 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_A))
> #define ICP_TC_HPD_ENABLE_MASK		(ICP_TC_HPD_ENABLE(TC_PORT_TC4) | \
> 					 ICP_TC_HPD_ENABLE(TC_PORT_TC3) | \
> 					 ICP_TC_HPD_ENABLE(TC_PORT_TC2) | \
> 					 ICP_TC_HPD_ENABLE(TC_PORT_TC1))
>-#define TGP_DDI_HPD_ENABLE_MASK		(SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_C) | \
>-					 SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_B) | \
>-					 SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_A))
>+#define TGP_DDI_HPD_ENABLE_MASK		(SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_C)=
 | \
>+					 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_B) | \
>+					 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_A))
> #define TGP_TC_HPD_ENABLE_MASK		(ICP_TC_HPD_ENABLE(TC_PORT_TC6) | \
> 					 ICP_TC_HPD_ENABLE(TC_PORT_TC5) | \
> 					 ICP_TC_HPD_ENABLE_MASK)
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
