Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 331C82C6ED7
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Nov 2020 05:52:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E0266EC48;
	Sat, 28 Nov 2020 04:52:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 640876EC48
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Nov 2020 04:52:34 +0000 (UTC)
IronPort-SDR: 9oIaaqCxJmXJqxVlxCmSoXQrYQA+MZjanOkqbo7Bv/ebOUGmsi5SYxRG0ehX7C5/YyzpeaNRjy
 DyKOWr6bf0ZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9818"; a="236585595"
X-IronPort-AV: E=Sophos;i="5.78,376,1599548400"; d="scan'208";a="236585595"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 20:52:30 -0800
IronPort-SDR: 4fAaEjqfEdBISvZRDnFYkcGc+xjQVujywvh3+N8sp75A+gzH2OsHn+ZEP3jgK2JjWP7r0+iDUD
 rz1fu/h8Acdw==
X-IronPort-AV: E=Sophos;i="5.78,376,1599548400"; d="scan'208";a="536238385"
Received: from pgooneti-mobl2.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.121.133])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 20:52:30 -0800
Date: Fri, 27 Nov 2020 20:52:29 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201128045229.kvxiqjin7k67zkod@ldmartin-desk1>
References: <20201127145748.29491-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201127145748.29491-1-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915: re-order if/else ladder
 for hpd_irq_setup"
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

On Fri, Nov 27, 2020 at 02:57:48PM +0000, Chris Wilson wrote:
>We now use ilk_hpd_irq_setup for all GMCH platforms that do not have
>hotplug. These are early gen3 and gen2 devices that now explode on boot
>as they try to access non-existent registers.

humn... true, my bad. But I don't think a revert is the right fix. It
would be much better if we would not be setting up the hpd setup
function at all for platforms that do not have hotplug. I think a
separate early check for I915_HAS_HOTPLUG() would be deserved.

Lucas De Marchi

>
>Fixes: 794d61a19090 ("drm/i915: re-order if/else ladder for hpd_irq_setup")
>Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>Cc: Jani Nikula <jani.nikula@linux.intel.com>


>---
> drivers/gpu/drm/i915/i915_irq.c | 27 +++++++++++++++------------
> 1 file changed, 15 insertions(+), 12 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_i=
rq.c
>index dc6febc63f1c..c80eeac53952 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -4242,18 +4242,21 @@ void intel_irq_init(struct drm_i915_private *dev_p=
riv)
> 	 */
> 	dev_priv->hotplug.hpd_short_storm_enabled =3D !HAS_DP_MST(dev_priv);
>
>-	if (HAS_PCH_DG1(dev_priv))
>-		dev_priv->display.hpd_irq_setup =3D dg1_hpd_irq_setup;
>-	else if (INTEL_GEN(dev_priv) >=3D 11)
>-		dev_priv->display.hpd_irq_setup =3D gen11_hpd_irq_setup;
>-	else if (IS_GEN9_LP(dev_priv))
>-		dev_priv->display.hpd_irq_setup =3D bxt_hpd_irq_setup;
>-	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_SPT)
>-		dev_priv->display.hpd_irq_setup =3D spt_hpd_irq_setup;
>-	else if (HAS_GMCH(dev_priv) && I915_HAS_HOTPLUG(dev_priv))
>-		dev_priv->display.hpd_irq_setup =3D i915_hpd_irq_setup;
>-	else
>-		dev_priv->display.hpd_irq_setup =3D ilk_hpd_irq_setup;
>+	if (HAS_GMCH(dev_priv)) {
>+		if (I915_HAS_HOTPLUG(dev_priv))
>+			dev_priv->display.hpd_irq_setup =3D i915_hpd_irq_setup;
>+	} else {
>+		if (HAS_PCH_DG1(dev_priv))
>+			dev_priv->display.hpd_irq_setup =3D dg1_hpd_irq_setup;
>+		else if (INTEL_GEN(dev_priv) >=3D 11)
>+			dev_priv->display.hpd_irq_setup =3D gen11_hpd_irq_setup;
>+		else if (IS_GEN9_LP(dev_priv))
>+			dev_priv->display.hpd_irq_setup =3D bxt_hpd_irq_setup;
>+		else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_SPT)
>+			dev_priv->display.hpd_irq_setup =3D spt_hpd_irq_setup;
>+		else
>+			dev_priv->display.hpd_irq_setup =3D ilk_hpd_irq_setup;
>+	}
> }
>
> /**
>-- =

>2.20.1
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
