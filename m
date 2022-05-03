Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B27EA518C36
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 20:23:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0189810E94B;
	Tue,  3 May 2022 18:23:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90A3010E94B
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 18:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651602199; x=1683138199;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NCu4rSK9SIUhKdd0X0ukYfZ+zInPH6rQ2veoyaHqt1w=;
 b=gkGec1iew7mJNUWG+GXpfz0Djta7qCnWCiVouBwaimw8r2e8HjhwEEQq
 OE7PgyUDIPY3ZVfrKVq4YUov88HQWh+VDbT4KTAIchxMqFw0wqoXbBMUQ
 HsBY6L4eZ6gpTXBfcx4J3B9hzFm9j/3Q44C/Knuod9iKJaOijpgvUGmEw
 51+i/g+KOaXeGg9BH9y6IqN2nPD0XlDku7/EttWz4JXCHIWXXJd+aV5H0
 hUU980bPJr00/IMebvCZxp4FPZjKIL/Hd7rh+BFQogLgMfZ0DELV2sQpY
 R0sFMec/igHqij5w688+/Evnczg/V2z6OoyGFQpWcQG+gGHzXIUu6KYu/ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="353991420"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="353991420"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 11:23:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="599180001"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga001.jf.intel.com with SMTP; 03 May 2022 11:23:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 21:23:16 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 21:22:27 +0300
Message-Id: <20220503182242.18797-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/26] drm/i915: Introduce struct iclkip_params
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pull the various iCLKIP parameters into a struct. Later on
we'll reuse this during the state computation to determine
the exact dotclock the hardware will be generating for us.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c      |  1 +
 .../gpu/drm/i915/display/intel_pch_refclk.c   | 91 ++++++++++++-------
 2 files changed, 57 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 6a3893c8ff22..d746c85e7e8c 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -46,6 +46,7 @@
 #include "intel_gmbus.h"
 #include "intel_hotplug.h"
 #include "intel_pch_display.h"
+#include "intel_pch_refclk.h"
 
 /* Here's the desired hotplug mode */
 #define ADPA_HOTPLUG_BITS (ADPA_CRT_HOTPLUG_PERIOD_128 |		\
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index b688fd87e3da..6610160cf825 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -122,16 +122,29 @@ void lpt_disable_iclkip(struct drm_i915_private *dev_priv)
 	mutex_unlock(&dev_priv->sb_lock);
 }
 
-/* Program iCLKIP clock to the desired frequency */
-void lpt_program_iclkip(const struct intel_crtc_state *crtc_state)
+struct iclkip_params {
+	u32 iclk_virtual_root_freq;
+	u32 iclk_pi_range;
+	u32 divsel, phaseinc, auxdiv, phasedir, desired_divisor;
+};
+
+static void iclkip_params_init(struct iclkip_params *p)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
-	u32 divsel, phaseinc, auxdiv, phasedir = 0;
-	u32 temp;
+	memset(p, 0, sizeof(*p));
+
+	p->iclk_virtual_root_freq = 172800 * 1000;
+	p->iclk_pi_range = 64;
+}
 
-	lpt_disable_iclkip(dev_priv);
+static int lpt_iclkip_freq(struct iclkip_params *p)
+{
+	return DIV_ROUND_CLOSEST(p->iclk_virtual_root_freq,
+				 p->desired_divisor << p->auxdiv);
+}
+
+static void lpt_compute_iclkip(struct iclkip_params *p, int clock)
+{
+	iclkip_params_init(p);
 
 	/* The iCLK virtual clock root frequency is in MHz,
 	 * but the adjusted_mode->crtc_clock in KHz. To get the
@@ -139,50 +152,60 @@ void lpt_program_iclkip(const struct intel_crtc_state *crtc_state)
 	 * convert the virtual clock precision to KHz here for higher
 	 * precision.
 	 */
-	for (auxdiv = 0; auxdiv < 2; auxdiv++) {
-		u32 iclk_virtual_root_freq = 172800 * 1000;
-		u32 iclk_pi_range = 64;
-		u32 desired_divisor;
-
-		desired_divisor = DIV_ROUND_CLOSEST(iclk_virtual_root_freq,
-						    clock << auxdiv);
-		divsel = (desired_divisor / iclk_pi_range) - 2;
-		phaseinc = desired_divisor % iclk_pi_range;
+	for (p->auxdiv = 0; p->auxdiv < 2; p->auxdiv++) {
+		p->desired_divisor = DIV_ROUND_CLOSEST(p->iclk_virtual_root_freq,
+						       clock << p->auxdiv);
+		p->divsel = (p->desired_divisor / p->iclk_pi_range) - 2;
 
 		/*
 		 * Near 20MHz is a corner case which is
 		 * out of range for the 7-bit divisor
 		 */
-		if (divsel <= 0x7f)
+		if (p->divsel <= 0x7f)
 			break;
 	}
+}
+
+/* Program iCLKIP clock to the desired frequency */
+void lpt_program_iclkip(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
+	struct iclkip_params p;
+	u32 temp;
+
+	lpt_disable_iclkip(dev_priv);
+
+	lpt_compute_iclkip(&p, clock);
+	drm_WARN_ON(&dev_priv->drm, lpt_iclkip_freq(&p) != clock);
 
 	/* This should not happen with any sane values */
-	drm_WARN_ON(&dev_priv->drm, SBI_SSCDIVINTPHASE_DIVSEL(divsel) &
+	drm_WARN_ON(&dev_priv->drm, SBI_SSCDIVINTPHASE_DIVSEL(p.divsel) &
 		    ~SBI_SSCDIVINTPHASE_DIVSEL_MASK);
-	drm_WARN_ON(&dev_priv->drm, SBI_SSCDIVINTPHASE_DIR(phasedir) &
+	drm_WARN_ON(&dev_priv->drm, SBI_SSCDIVINTPHASE_DIR(p.phasedir) &
 		    ~SBI_SSCDIVINTPHASE_INCVAL_MASK);
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "iCLKIP clock: found settings for %dKHz refresh rate: auxdiv=%x, divsel=%x, phasedir=%x, phaseinc=%x\n",
-		    clock, auxdiv, divsel, phasedir, phaseinc);
+		    clock, p.auxdiv, p.divsel, p.phasedir, p.phaseinc);
 
 	mutex_lock(&dev_priv->sb_lock);
 
 	/* Program SSCDIVINTPHASE6 */
 	temp = intel_sbi_read(dev_priv, SBI_SSCDIVINTPHASE6, SBI_ICLK);
 	temp &= ~SBI_SSCDIVINTPHASE_DIVSEL_MASK;
-	temp |= SBI_SSCDIVINTPHASE_DIVSEL(divsel);
+	temp |= SBI_SSCDIVINTPHASE_DIVSEL(p.divsel);
 	temp &= ~SBI_SSCDIVINTPHASE_INCVAL_MASK;
-	temp |= SBI_SSCDIVINTPHASE_INCVAL(phaseinc);
-	temp |= SBI_SSCDIVINTPHASE_DIR(phasedir);
+	temp |= SBI_SSCDIVINTPHASE_INCVAL(p.phaseinc);
+	temp |= SBI_SSCDIVINTPHASE_DIR(p.phasedir);
 	temp |= SBI_SSCDIVINTPHASE_PROPAGATE;
 	intel_sbi_write(dev_priv, SBI_SSCDIVINTPHASE6, temp, SBI_ICLK);
 
 	/* Program SSCAUXDIV */
 	temp = intel_sbi_read(dev_priv, SBI_SSCAUXDIV6, SBI_ICLK);
 	temp &= ~SBI_SSCAUXDIV_FINALDIV2SEL(1);
-	temp |= SBI_SSCAUXDIV_FINALDIV2SEL(auxdiv);
+	temp |= SBI_SSCAUXDIV_FINALDIV2SEL(p.auxdiv);
 	intel_sbi_write(dev_priv, SBI_SSCAUXDIV6, temp, SBI_ICLK);
 
 	/* Enable modulator and associated divider */
@@ -200,15 +223,14 @@ void lpt_program_iclkip(const struct intel_crtc_state *crtc_state)
 
 int lpt_get_iclkip(struct drm_i915_private *dev_priv)
 {
-	u32 divsel, phaseinc, auxdiv;
-	u32 iclk_virtual_root_freq = 172800 * 1000;
-	u32 iclk_pi_range = 64;
-	u32 desired_divisor;
+	struct iclkip_params p;
 	u32 temp;
 
 	if ((intel_de_read(dev_priv, PIXCLK_GATE) & PIXCLK_GATE_UNGATE) == 0)
 		return 0;
 
+	iclkip_params_init(&p);
+
 	mutex_lock(&dev_priv->sb_lock);
 
 	temp = intel_sbi_read(dev_priv, SBI_SSCCTL6, SBI_ICLK);
@@ -218,21 +240,20 @@ int lpt_get_iclkip(struct drm_i915_private *dev_priv)
 	}
 
 	temp = intel_sbi_read(dev_priv, SBI_SSCDIVINTPHASE6, SBI_ICLK);
-	divsel = (temp & SBI_SSCDIVINTPHASE_DIVSEL_MASK) >>
+	p.divsel = (temp & SBI_SSCDIVINTPHASE_DIVSEL_MASK) >>
 		SBI_SSCDIVINTPHASE_DIVSEL_SHIFT;
-	phaseinc = (temp & SBI_SSCDIVINTPHASE_INCVAL_MASK) >>
+	p.phaseinc = (temp & SBI_SSCDIVINTPHASE_INCVAL_MASK) >>
 		SBI_SSCDIVINTPHASE_INCVAL_SHIFT;
 
 	temp = intel_sbi_read(dev_priv, SBI_SSCAUXDIV6, SBI_ICLK);
-	auxdiv = (temp & SBI_SSCAUXDIV_FINALDIV2SEL_MASK) >>
+	p.auxdiv = (temp & SBI_SSCAUXDIV_FINALDIV2SEL_MASK) >>
 		SBI_SSCAUXDIV_FINALDIV2SEL_SHIFT;
 
 	mutex_unlock(&dev_priv->sb_lock);
 
-	desired_divisor = (divsel + 2) * iclk_pi_range + phaseinc;
+	p.desired_divisor = (p.divsel + 2) * p.iclk_pi_range + p.phaseinc;
 
-	return DIV_ROUND_CLOSEST(iclk_virtual_root_freq,
-				 desired_divisor << auxdiv);
+	return lpt_iclkip_freq(&p);
 }
 
 /* Implements 3 different sequences from BSpec chapter "Display iCLK
-- 
2.35.1

