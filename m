Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B497A2C8B0D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 18:31:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E50C6E5A9;
	Mon, 30 Nov 2020 17:31:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BF386E5A9
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 17:31:19 +0000 (UTC)
IronPort-SDR: oKlL0ywHQ19toQ+sWQUUQ7a1ogRjMu3BOvJRWCbDgR6xR7p5lqViiamamOipJOQQdVrLX/wdVB
 OJ41ly8wxILw==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="160447775"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="160447775"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 09:31:05 -0800
IronPort-SDR: PHZhTMeQnxTTx5vnhCYjyjURl1KALy0owsRAAp3uZrTW159kf/VIhNDN78vnRN9N1Vn46bV8zF
 IjaLpShbMlRg==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="334737072"
Received: from mehronek-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.213.169.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 09:31:04 -0800
Date: Mon, 30 Nov 2020 09:31:04 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <20201130173104.xw5gzrs3t6rmpby6@ldmartin-desk1>
References: <20201127145748.29491-1-chris@chris-wilson.co.uk>
 <20201128045229.kvxiqjin7k67zkod@ldmartin-desk1>
 <20201130141954.GS6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201130141954.GS6112@intel.com>
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 30, 2020 at 04:19:54PM +0200, Ville Syrj=E4l=E4 wrote:
>On Fri, Nov 27, 2020 at 08:52:29PM -0800, Lucas De Marchi wrote:
>> On Fri, Nov 27, 2020 at 02:57:48PM +0000, Chris Wilson wrote:
>> >We now use ilk_hpd_irq_setup for all GMCH platforms that do not have
>> >hotplug. These are early gen3 and gen2 devices that now explode on boot
>> >as they try to access non-existent registers.
>>
>> humn... true, my bad. But I don't think a revert is the right fix. It
>> would be much better if we would not be setting up the hpd setup
>> function at all for platforms that do not have hotplug. I think a
>> separate early check for I915_HAS_HOTPLUG() would be deserved.
>
>I think it generally leads to much less convoluted logic when we keep
>gmch vs. rest separate. So I'm confused as to what we're even trying
>to achieve here?

1) Stop trying to setup hotplug in a platform that doesn't have hotplug
was the main focus. Later it would be better to move some of these
hotplug to display/  as they are clearly display related and account for
a great portion of i915_irq.c.

I left the I915_HAS_HOTPLUG() in the middle by
mistake, it should had been an earlier call.

2) semi-related is the move of GMCH to the middle and I guess this is
what you're complaining here. I find it's cumbersome to have it
separate as we go and extend these checks for newer platforms. Almost
everywhere we settled on having last platform first in the if/else
ladders - this makes it much more clear on how/where to add a new
platform.

Lucas De Marchi

>
>>
>> Lucas De Marchi
>>
>> >
>> >Fixes: 794d61a19090 ("drm/i915: re-order if/else ladder for hpd_irq_set=
up")
>> >Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> >Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> >Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>> >Cc: Jani Nikula <jani.nikula@linux.intel.com>
>>
>>
>> >---
>> > drivers/gpu/drm/i915/i915_irq.c | 27 +++++++++++++++------------
>> > 1 file changed, 15 insertions(+), 12 deletions(-)
>> >
>> >diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i91=
5_irq.c
>> >index dc6febc63f1c..c80eeac53952 100644
>> >--- a/drivers/gpu/drm/i915/i915_irq.c
>> >+++ b/drivers/gpu/drm/i915/i915_irq.c
>> >@@ -4242,18 +4242,21 @@ void intel_irq_init(struct drm_i915_private *de=
v_priv)
>> > 	 */
>> > 	dev_priv->hotplug.hpd_short_storm_enabled =3D !HAS_DP_MST(dev_priv);
>> >
>> >-	if (HAS_PCH_DG1(dev_priv))
>> >-		dev_priv->display.hpd_irq_setup =3D dg1_hpd_irq_setup;
>> >-	else if (INTEL_GEN(dev_priv) >=3D 11)
>> >-		dev_priv->display.hpd_irq_setup =3D gen11_hpd_irq_setup;
>> >-	else if (IS_GEN9_LP(dev_priv))
>> >-		dev_priv->display.hpd_irq_setup =3D bxt_hpd_irq_setup;
>> >-	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_SPT)
>> >-		dev_priv->display.hpd_irq_setup =3D spt_hpd_irq_setup;
>> >-	else if (HAS_GMCH(dev_priv) && I915_HAS_HOTPLUG(dev_priv))
>> >-		dev_priv->display.hpd_irq_setup =3D i915_hpd_irq_setup;
>> >-	else
>> >-		dev_priv->display.hpd_irq_setup =3D ilk_hpd_irq_setup;
>> >+	if (HAS_GMCH(dev_priv)) {
>> >+		if (I915_HAS_HOTPLUG(dev_priv))
>> >+			dev_priv->display.hpd_irq_setup =3D i915_hpd_irq_setup;
>> >+	} else {
>> >+		if (HAS_PCH_DG1(dev_priv))
>> >+			dev_priv->display.hpd_irq_setup =3D dg1_hpd_irq_setup;
>> >+		else if (INTEL_GEN(dev_priv) >=3D 11)
>> >+			dev_priv->display.hpd_irq_setup =3D gen11_hpd_irq_setup;
>> >+		else if (IS_GEN9_LP(dev_priv))
>> >+			dev_priv->display.hpd_irq_setup =3D bxt_hpd_irq_setup;
>> >+		else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_SPT)
>> >+			dev_priv->display.hpd_irq_setup =3D spt_hpd_irq_setup;
>> >+		else
>> >+			dev_priv->display.hpd_irq_setup =3D ilk_hpd_irq_setup;
>> >+	}
>> > }
>> >
>> > /**
>> >--
>> >2.20.1
>> >
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
>-- =

>Ville Syrj=E4l=E4
>Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
