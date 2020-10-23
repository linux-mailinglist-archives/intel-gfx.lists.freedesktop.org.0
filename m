Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14ADF2977B8
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 21:25:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64AE06E7D1;
	Fri, 23 Oct 2020 19:25:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 752396E7D1
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 19:25:14 +0000 (UTC)
IronPort-SDR: ZYVbGxYDQWAIvzma1zRn1fz9BlExTQDJwEEtU2ArxSGlf/mcjKlBcedi3pzhExZSy7os3Yy14b
 TRp3E3NHYcXA==
X-IronPort-AV: E=McAfee;i="6000,8403,9783"; a="147579213"
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="147579213"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 12:25:13 -0700
IronPort-SDR: KqDmXSoCj8qnvjfrOi9XL5apzYpiVF8Zt1W3Auu56Uih6QPIj5mQpIoH0YIdYAJVYMqarvGE0i
 ZW7cSXRw1/Vw==
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="467179026"
Received: from spoase-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.216.15])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 12:25:13 -0700
Date: Fri, 23 Oct 2020 12:25:13 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201023192513.zr45eo5x4hitjfwf@ldmartin-desk1>
References: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
 <20201023133420.12039-16-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201023133420.12039-16-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 15/19] drm/i915: Rename 'tmp_mask'
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

On Fri, Oct 23, 2020 at 04:34:16PM +0300, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>Replace this silly tmp_mask with hotplug_trigger/te_trigger
>where appropriate.
>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
>---
> drivers/gpu/drm/i915/i915_irq.c | 22 ++++++++++++----------
> 1 file changed, 12 insertions(+), 10 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_i=
rq.c
>index b1f21502b78b..be69c129dd5a 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -2371,7 +2371,6 @@ gen8_de_irq_handler(struct drm_i915_private *dev_pri=
v, u32 master_ctl)
> 	if (master_ctl & GEN8_DE_PORT_IRQ) {
> 		iir =3D I915_READ(GEN8_DE_PORT_IIR);
> 		if (iir) {
>-			u32 tmp_mask;
> 			bool found =3D false;
>
> 			I915_WRITE(GEN8_DE_PORT_IIR, iir);
>@@ -2383,15 +2382,17 @@ gen8_de_irq_handler(struct drm_i915_private *dev_p=
riv, u32 master_ctl)
> 			}
>
> 			if (IS_GEN9_LP(dev_priv)) {
>-				tmp_mask =3D iir & BXT_DE_PORT_HOTPLUG_MASK;
>-				if (tmp_mask) {
>-					bxt_hpd_irq_handler(dev_priv, tmp_mask);
>+				u32 hotplug_trigger =3D iir & BXT_DE_PORT_HOTPLUG_MASK;
>+
>+				if (hotplug_trigger) {
>+					bxt_hpd_irq_handler(dev_priv, hotplug_trigger);
> 					found =3D true;
> 				}
> 			} else if (IS_BROADWELL(dev_priv)) {
>-				tmp_mask =3D iir & BDW_DE_PORT_HOTPLUG_MASK;
>-				if (tmp_mask) {
>-					ilk_hpd_irq_handler(dev_priv, tmp_mask);
>+				u32 hotplug_trigger =3D iir & BDW_DE_PORT_HOTPLUG_MASK;
>+
>+				if (hotplug_trigger) {
>+					ilk_hpd_irq_handler(dev_priv, hotplug_trigger);
> 					found =3D true;
> 				}
> 			}
>@@ -2402,9 +2403,10 @@ gen8_de_irq_handler(struct drm_i915_private *dev_pr=
iv, u32 master_ctl)
> 			}
>
> 			if (INTEL_GEN(dev_priv) >=3D 11) {
>-				tmp_mask =3D iir & (DSI0_TE | DSI1_TE);
>-				if (tmp_mask) {
>-					gen11_dsi_te_interrupt_handler(dev_priv, tmp_mask);
>+				u32 te_trigger =3D iir & (DSI0_TE | DSI1_TE);
>+
>+				if (te_trigger) {
>+					gen11_dsi_te_interrupt_handler(dev_priv, te_trigger);
> 					found =3D true;
> 				}
> 			}
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
