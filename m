Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E50D32977B2
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 21:23:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A5966E7D9;
	Fri, 23 Oct 2020 19:23:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C18586E7D9
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 19:23:36 +0000 (UTC)
IronPort-SDR: ngTCCp4ujZX/HaYKwNOYe7LopuFuYgjiLHWU+zRGQjWgKUKgzpMouzPMAMxpyKVxJfySx0MmkP
 q69MSZBhlosQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9783"; a="229357669"
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="229357669"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 12:23:36 -0700
IronPort-SDR: dkCNW1E53fKhxdNXq18/RkjcMC6xQUND+81VoXLscZZDjvPkBfsEwVoRaWKHQPxHayQRrWkuG5
 T53DJsBIqYzA==
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="423508128"
Received: from spoase-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.216.15])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 12:23:35 -0700
Date: Fri, 23 Oct 2020 12:23:35 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201023192335.mqvhuq6wxw36dfdu@ldmartin-desk1>
References: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
 <20201023133420.12039-14-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201023133420.12039-14-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 13/19] drm/i915: Split
 gen11_hpd_detection_setup() into tc vs. tbt variants
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

On Fri, Oct 23, 2020 at 04:34:14PM +0300, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>No reason to stuff both type-c and tbt into the same function.
>Let's split this so we may more easily handle platforms that
>lack the tbt spefific bits.
>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
>---
> drivers/gpu/drm/i915/i915_irq.c | 13 ++++++++++---
> 1 file changed, 10 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_i=
rq.c
>index 68e9d2813d32..2c8813f34a45 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -3251,7 +3251,7 @@ static void jsp_hpd_irq_setup(struct drm_i915_privat=
e *dev_priv)
> 			  TGP_DDI_HPD_ENABLE_MASK, 0);
> }
>
>-static void gen11_hpd_detection_setup(struct drm_i915_private *dev_priv)
>+static void gen11_tc_hpd_detection_setup(struct drm_i915_private *dev_pri=
v)
> {
> 	u32 hotplug;
>
>@@ -3263,6 +3263,11 @@ static void gen11_hpd_detection_setup(struct drm_i9=
15_private *dev_priv)
> 		   GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC5) |
> 		   GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC6);
> 	I915_WRITE(GEN11_TC_HOTPLUG_CTL, hotplug);
>+}
>+
>+static void gen11_tbt_hpd_detection_setup(struct drm_i915_private *dev_pr=
iv)
>+{
>+	u32 hotplug;
>
> 	hotplug =3D I915_READ(GEN11_TBT_HOTPLUG_CTL);
> 	hotplug |=3D GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC1) |
>@@ -3288,7 +3293,8 @@ static void gen11_hpd_irq_setup(struct drm_i915_priv=
ate *dev_priv)
> 	I915_WRITE(GEN11_DE_HPD_IMR, val);
> 	POSTING_READ(GEN11_DE_HPD_IMR);
>
>-	gen11_hpd_detection_setup(dev_priv);
>+	gen11_tc_hpd_detection_setup(dev_priv);
>+	gen11_tbt_hpd_detection_setup(dev_priv);
>
> 	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_TGP)
> 		icp_hpd_irq_setup(dev_priv,
>@@ -3603,7 +3609,8 @@ static void gen8_de_irq_postinstall(struct drm_i915_=
private *dev_priv)
>
> 		GEN3_IRQ_INIT(uncore, GEN11_DE_HPD_, ~de_hpd_masked,
> 			      de_hpd_enables);
>-		gen11_hpd_detection_setup(dev_priv);
>+		gen11_tc_hpd_detection_setup(dev_priv);
>+		gen11_tbt_hpd_detection_setup(dev_priv);
> 	} else if (IS_GEN9_LP(dev_priv)) {
> 		bxt_hpd_detection_setup(dev_priv);
> 	} else if (IS_BROADWELL(dev_priv)) {
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
