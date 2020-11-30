Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF8D2C8684
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 15:20:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8181B6E4CB;
	Mon, 30 Nov 2020 14:20:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AB6B6E4CB
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 14:20:09 +0000 (UTC)
IronPort-SDR: iUgDS8Tr3vW95fWnbpoPvwplGV5TwWW0wD8UKSvOXXvG4ardzXP37BIKRmTWe60CalqdnQ+sII
 nSav1IqTetgA==
X-IronPort-AV: E=McAfee;i="6000,8403,9820"; a="159694438"
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="159694438"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 06:19:57 -0800
IronPort-SDR: 8gmqPiY+gibcQu6eohkqUuH5s+y/IyhxO4aoHeDR4Yfw3RYUcy23ZZZT2m2DTVhM7hov7sZ8Sl
 WrQXg5v4Gh/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="434310714"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 30 Nov 2020 06:19:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Nov 2020 16:19:54 +0200
Date: Mon, 30 Nov 2020 16:19:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20201130141954.GS6112@intel.com>
References: <20201127145748.29491-1-chris@chris-wilson.co.uk>
 <20201128045229.kvxiqjin7k67zkod@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201128045229.kvxiqjin7k67zkod@ldmartin-desk1>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 27, 2020 at 08:52:29PM -0800, Lucas De Marchi wrote:
> On Fri, Nov 27, 2020 at 02:57:48PM +0000, Chris Wilson wrote:
> >We now use ilk_hpd_irq_setup for all GMCH platforms that do not have
> >hotplug. These are early gen3 and gen2 devices that now explode on boot
> >as they try to access non-existent registers.
> =

> humn... true, my bad. But I don't think a revert is the right fix. It
> would be much better if we would not be setting up the hpd setup
> function at all for platforms that do not have hotplug. I think a
> separate early check for I915_HAS_HOTPLUG() would be deserved.

I think it generally leads to much less convoluted logic when we keep
gmch vs. rest separate. So I'm confused as to what we're even trying
to achieve here?

> =

> Lucas De Marchi
> =

> >
> >Fixes: 794d61a19090 ("drm/i915: re-order if/else ladder for hpd_irq_setu=
p")
> >Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> >Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> >Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> >Cc: Jani Nikula <jani.nikula@linux.intel.com>
> =

> =

> >---
> > drivers/gpu/drm/i915/i915_irq.c | 27 +++++++++++++++------------
> > 1 file changed, 15 insertions(+), 12 deletions(-)
> >
> >diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915=
_irq.c
> >index dc6febc63f1c..c80eeac53952 100644
> >--- a/drivers/gpu/drm/i915/i915_irq.c
> >+++ b/drivers/gpu/drm/i915/i915_irq.c
> >@@ -4242,18 +4242,21 @@ void intel_irq_init(struct drm_i915_private *dev=
_priv)
> > 	 */
> > 	dev_priv->hotplug.hpd_short_storm_enabled =3D !HAS_DP_MST(dev_priv);
> >
> >-	if (HAS_PCH_DG1(dev_priv))
> >-		dev_priv->display.hpd_irq_setup =3D dg1_hpd_irq_setup;
> >-	else if (INTEL_GEN(dev_priv) >=3D 11)
> >-		dev_priv->display.hpd_irq_setup =3D gen11_hpd_irq_setup;
> >-	else if (IS_GEN9_LP(dev_priv))
> >-		dev_priv->display.hpd_irq_setup =3D bxt_hpd_irq_setup;
> >-	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_SPT)
> >-		dev_priv->display.hpd_irq_setup =3D spt_hpd_irq_setup;
> >-	else if (HAS_GMCH(dev_priv) && I915_HAS_HOTPLUG(dev_priv))
> >-		dev_priv->display.hpd_irq_setup =3D i915_hpd_irq_setup;
> >-	else
> >-		dev_priv->display.hpd_irq_setup =3D ilk_hpd_irq_setup;
> >+	if (HAS_GMCH(dev_priv)) {
> >+		if (I915_HAS_HOTPLUG(dev_priv))
> >+			dev_priv->display.hpd_irq_setup =3D i915_hpd_irq_setup;
> >+	} else {
> >+		if (HAS_PCH_DG1(dev_priv))
> >+			dev_priv->display.hpd_irq_setup =3D dg1_hpd_irq_setup;
> >+		else if (INTEL_GEN(dev_priv) >=3D 11)
> >+			dev_priv->display.hpd_irq_setup =3D gen11_hpd_irq_setup;
> >+		else if (IS_GEN9_LP(dev_priv))
> >+			dev_priv->display.hpd_irq_setup =3D bxt_hpd_irq_setup;
> >+		else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_SPT)
> >+			dev_priv->display.hpd_irq_setup =3D spt_hpd_irq_setup;
> >+		else
> >+			dev_priv->display.hpd_irq_setup =3D ilk_hpd_irq_setup;
> >+	}
> > }
> >
> > /**
> >-- =

> >2.20.1
> >
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
