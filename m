Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A30C297798
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 21:21:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3F416E5C8;
	Fri, 23 Oct 2020 19:21:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A9786E5C8
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 19:21:43 +0000 (UTC)
IronPort-SDR: 6S9HexyOKka7LIMu156F3VPODU2DuibBkznuTMK43njvf2THxXVQ85gAX5ZvsB2jbYzDLgf4mQ
 NlZRahoc6y9g==
X-IronPort-AV: E=McAfee;i="6000,8403,9783"; a="167843155"
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="167843155"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 12:21:42 -0700
IronPort-SDR: VvS2Ur9zBXWINRzUl/uoPzBwJAD8tAiVv94SU4HjikgvIEkUUHHty26Fu8KfWFkhGVOwO4P0dH
 ybJ/GxwpDWEA==
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="360320561"
Received: from spoase-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.216.15])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 12:21:42 -0700
Date: Fri, 23 Oct 2020 12:21:41 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201023192141.q2kg4voqhcgvo4d6@ldmartin-desk1>
References: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
 <20201023133420.12039-13-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201023133420.12039-13-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 12/19] drm/i915: Relocate
 intel_hpd_{enabled, hotplug}_irqs()
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

On Fri, Oct 23, 2020 at 04:34:13PM +0300, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>Move intel_hpd_{enabled,hotplug}_irqs() closes to the beginning of
>the file so we can use them in more places. No functional changes.
>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/i915_irq.c | 50 ++++++++++++++++-----------------
> 1 file changed, 25 insertions(+), 25 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_i=
rq.c
>index ff695ff23ce5..68e9d2813d32 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -1193,6 +1193,31 @@ static void intel_get_hpd_pins(struct drm_i915_priv=
ate *dev_priv,
>
> }
>
>+static u32 intel_hpd_enabled_irqs(struct drm_i915_private *dev_priv,
>+				  const u32 hpd[HPD_NUM_PINS])
>+{
>+	struct intel_encoder *encoder;
>+	u32 enabled_irqs =3D 0;
>+
>+	for_each_intel_encoder(&dev_priv->drm, encoder)
>+		if (dev_priv->hotplug.stats[encoder->hpd_pin].state =3D=3D HPD_ENABLED)
>+			enabled_irqs |=3D hpd[encoder->hpd_pin];
>+
>+	return enabled_irqs;
>+}
>+
>+static u32 intel_hpd_hotplug_irqs(struct drm_i915_private *dev_priv,
>+				  const u32 hpd[HPD_NUM_PINS])
>+{
>+	struct intel_encoder *encoder;
>+	u32 hotplug_irqs =3D 0;
>+
>+	for_each_intel_encoder(&dev_priv->drm, encoder)
>+		hotplug_irqs |=3D hpd[encoder->hpd_pin];
>+
>+	return hotplug_irqs;
>+}
>+
> static void gmbus_irq_handler(struct drm_i915_private *dev_priv)
> {
> 	wake_up_all(&dev_priv->gmbus_wait_queue);
>@@ -3130,31 +3155,6 @@ static void cherryview_irq_reset(struct drm_i915_pr=
ivate *dev_priv)
> 	spin_unlock_irq(&dev_priv->irq_lock);
> }
>
>-static u32 intel_hpd_enabled_irqs(struct drm_i915_private *dev_priv,
>-				  const u32 hpd[HPD_NUM_PINS])
>-{
>-	struct intel_encoder *encoder;
>-	u32 enabled_irqs =3D 0;
>-
>-	for_each_intel_encoder(&dev_priv->drm, encoder)
>-		if (dev_priv->hotplug.stats[encoder->hpd_pin].state =3D=3D HPD_ENABLED)
>-			enabled_irqs |=3D hpd[encoder->hpd_pin];
>-
>-	return enabled_irqs;
>-}
>-
>-static u32 intel_hpd_hotplug_irqs(struct drm_i915_private *dev_priv,
>-				  const u32 hpd[HPD_NUM_PINS])
>-{
>-	struct intel_encoder *encoder;
>-	u32 hotplug_irqs =3D 0;
>-
>-	for_each_intel_encoder(&dev_priv->drm, encoder)
>-		hotplug_irqs |=3D hpd[encoder->hpd_pin];
>-
>-	return hotplug_irqs;
>-}
>-
> static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)
> {
> 	u32 hotplug;
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
