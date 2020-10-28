Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7782829CCD6
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 02:00:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 576AA6E06E;
	Wed, 28 Oct 2020 01:00:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60EC26E06E
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 01:00:14 +0000 (UTC)
IronPort-SDR: mkBkEik6NSHuynNSISutzFBjG06lppQ1XQaL5e8bMkyWFdb2OFK/8qkAZeSSHEDU622QEsqnlq
 HD4JOEcE9gnA==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="229826578"
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="229826578"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 18:00:13 -0700
IronPort-SDR: AP1Lt7oyGb2xA6gRFcaA7yFSyPrLMnQS01S5AnNiMafaqjrqwDQ6UvYBTrU5c/sz6iYofCtQqL
 X5qJ/1eWme1w==
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="318419702"
Received: from hharder-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.251.53])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 18:00:12 -0700
Date: Tue, 27 Oct 2020 18:00:10 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <20201028010010.3wyfsm5ygyvpbncb@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
 <20201023133420.12039-17-ville.syrjala@linux.intel.com>
 <20201023192937.ikyg7w6rnr3xssvp@ldmartin-desk1>
 <20201023194429.GE6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201023194429.GE6112@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 16/19] drm/i915: Remove the per-plaform
 IIR HPD masking
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

On Fri, Oct 23, 2020 at 10:44:29PM +0300, Ville Syrj=E4l=E4 wrote:
>On Fri, Oct 23, 2020 at 12:29:37PM -0700, Lucas De Marchi wrote:
>> On Fri, Oct 23, 2020 at 04:34:17PM +0300, Ville Syrj=E4l=E4 wrote:
>> >From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>> >
>> >We no longer unmask all HPD irqs, so we can drop the ugly per-platform
>> >HPD IIR masking. IMR will prevent unsupported bits from appearing in
>> >IIR.
>> >
>> >Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>>
>> this patch should come after
>> "drm/i915: Enable hpd logic only for ports that are present"
>
>The order should not matter. We already mask out all unwanted bits
>from IIR via IMR, so whether or not the HPD level is visible in ISR
>for some unused pin is irrelevant.

indeed. My R-B stands even more now.

Lucas De Marchi

>
>>
>> >---
>> > drivers/gpu/drm/i915/i915_irq.c | 21 ++-------------------
>> > drivers/gpu/drm/i915/i915_reg.h | 10 ++--------
>> > 2 files changed, 4 insertions(+), 27 deletions(-)
>> >
>> >diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i91=
5_irq.c
>> >index be69c129dd5a..447a52f7701d 100644
>> >--- a/drivers/gpu/drm/i915/i915_irq.c
>> >+++ b/drivers/gpu/drm/i915/i915_irq.c
>> >@@ -1883,27 +1883,10 @@ static void cpt_irq_handler(struct drm_i915_pri=
vate *dev_priv, u32 pch_iir)
>> >
>> > static void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch=
_iir)
>> > {
>> >-	u32 ddi_hotplug_trigger, tc_hotplug_trigger;
>> >+	u32 ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_ICP;
>> >+	u32 tc_hotplug_trigger =3D pch_iir & SDE_TC_MASK_ICP;
>> > 	u32 pin_mask =3D 0, long_mask =3D 0;
>> >
>> >-	if (HAS_PCH_TGP(dev_priv)) {
>> >-		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_TGP;
>> >-		tc_hotplug_trigger =3D pch_iir & SDE_TC_MASK_TGP;
>> >-	} else if (HAS_PCH_JSP(dev_priv)) {
>> >-		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_TGP;
>> >-		tc_hotplug_trigger =3D 0;
>> >-	} else if (HAS_PCH_MCC(dev_priv)) {
>> >-		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_ICP;
>> >-		tc_hotplug_trigger =3D pch_iir & SDE_TC_HOTPLUG_ICP(HPD_PORT_TC1);
>> >-	} else {
>> >-		drm_WARN(&dev_priv->drm, !HAS_PCH_ICP(dev_priv),
>> >-			 "Unrecognized PCH type 0x%x\n",
>> >-			 INTEL_PCH_TYPE(dev_priv));
>> >-
>> >-		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_ICP;
>> >-		tc_hotplug_trigger =3D pch_iir & SDE_TC_MASK_ICP;
>> >-	}
>> >-
>> > 	if (ddi_hotplug_trigger) {
>> > 		u32 dig_hotplug_reg;
>> >
>> >diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i91=
5_reg.h
>> >index 8f26ab69b366..f15914fbe7c3 100644
>> >--- a/drivers/gpu/drm/i915/i915_reg.h
>> >+++ b/drivers/gpu/drm/i915/i915_reg.h
>> >@@ -8351,16 +8351,10 @@ enum {
>> > #define SDE_GMBUS_ICP			(1 << 23)
>> > #define SDE_TC_HOTPLUG_ICP(hpd_pin)	REG_BIT(24 + _HPD_PIN_TC(hpd_pin))
>> > #define SDE_DDI_HOTPLUG_ICP(hpd_pin)	REG_BIT(16 + _HPD_PIN_DDI(hpd_pin=
))
>> >-#define SDE_DDI_MASK_ICP		(SDE_DDI_HOTPLUG_ICP(HPD_PORT_B) | \
>> >-					 SDE_DDI_HOTPLUG_ICP(HPD_PORT_A))
>> >-#define SDE_TC_MASK_ICP			(SDE_TC_HOTPLUG_ICP(HPD_PORT_TC4) | \
>> >-					 SDE_TC_HOTPLUG_ICP(HPD_PORT_TC3) | \
>> >-					 SDE_TC_HOTPLUG_ICP(HPD_PORT_TC2) | \
>> >-					 SDE_TC_HOTPLUG_ICP(HPD_PORT_TC1))
>> >-#define SDE_DDI_MASK_TGP		(SDE_DDI_HOTPLUG_ICP(HPD_PORT_C) | \
>> >+#define SDE_DDI_MASK_ICP		(SDE_DDI_HOTPLUG_ICP(HPD_PORT_C) | \
>> > 					 SDE_DDI_HOTPLUG_ICP(HPD_PORT_B) | \
>> > 					 SDE_DDI_HOTPLUG_ICP(HPD_PORT_A))
>>
>> and here is the opportunity to rename this to SDE_DDI_HOTPLUG_MASK_ICP
>> or in a separate patch.
>>
>> with the patch reorder,
>>
>>
>> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>
>> Lucas De Marchi
>>
>> >-#define SDE_TC_MASK_TGP			(SDE_TC_HOTPLUG_ICP(HPD_PORT_TC6) | \
>> >+#define SDE_TC_MASK_ICP			(SDE_TC_HOTPLUG_ICP(HPD_PORT_TC6) | \
>> > 					 SDE_TC_HOTPLUG_ICP(HPD_PORT_TC5) | \
>> > 					 SDE_TC_HOTPLUG_ICP(HPD_PORT_TC4) | \
>> > 					 SDE_TC_HOTPLUG_ICP(HPD_PORT_TC3) | \
>> >--
>> >2.26.2
>> >
>> >_______________________________________________
>> >Intel-gfx mailing list
>> >Intel-gfx@lists.freedesktop.org
>> >https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
>-- =

>Ville Syrj=E4l=E4
>Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
