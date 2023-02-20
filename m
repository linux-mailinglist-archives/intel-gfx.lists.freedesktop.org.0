Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EE769D243
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 18:45:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0C1110E730;
	Mon, 20 Feb 2023 17:45:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4F3E10E730
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 17:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676915142; x=1708451142;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=XvsFwVuipywFvfGziFpFLn3fVMQWvTb1ycFplJiv8tk=;
 b=D911zPREqGbkZcRkbgJShJlGHp6KDcbLczDEKlgOvqH6isRaGnxmiSXa
 IE5Bmy3Wf9zNsITx6HH7StYLYgMfJI7HYPVdUr72KcmySpJcunMv2RBKq
 zXG/CU8XoTBHikWgv+VdMOQWgWB33o0+3eR54XSw2j2C51i1W1AjKMUki
 b7UYyTaIFJkrhfpl18JXCoUnJL2voPqyO2XjSgU8QMtb83c0zsPc1vPbg
 YSSpg/gnp27I37GoY/ftnUt/VQ4X5r8Htbs1J0hdgej842dSDUeaXBHZn
 bHeS8UFX7xrrRzWjsj/nm+ppkJZPNOK31WkJMk9oONNq05oaWkjlsUvBn Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="312085447"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="312085447"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 09:45:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="701745458"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="701745458"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 20 Feb 2023 09:45:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Feb 2023 19:45:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Feb 2023 19:44:48 +0200
Message-Id: <20230220174448.7611-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230220174448.7611-1-ville.syrjala@linux.intel.com>
References: <20230220174448.7611-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 17/17] drm/i915: Convert HSW/BDW to use VBT
 driven DDI probe
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

Make HSW/BDW use the new VBT child device driven output
probing as well. To achieve that the strap checks are
moved into intel_ddi_init() itself.

I have one HSW ULT laptop here which declares all the ports
A-D in the VBT, so in order to avoid assert_port_valid() tripping
on DDI D (which is not present on ULT/ULX) I kept the strap
check as the first thing we do. Thought arguably this particular
machine is an internal development device so not something any
real user should have. But I suppose it's possible that real
consumer systems also had similar VBTs in this era.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 37 +++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_display.c | 17 +--------
 2 files changed, 34 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index cd2b50b5f963..358c0cdbd550 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4277,8 +4277,29 @@ static bool port_in_use(struct drm_i915_private *i915, enum port port)
 
 	return false;
 }
 
+static bool port_strap_detected(struct drm_i915_private *i915, enum port port)
+{
+	/* straps not used on skl+ */
+	if (DISPLAY_VER(i915) >= 9)
+		return true;
+
+	switch (port) {
+	case PORT_A:
+		return intel_de_read(i915, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
+	case PORT_B:
+		return intel_de_read(i915, SFUSE_STRAP) & SFUSE_STRAP_DDIB_DETECTED;
+	case PORT_C:
+		return intel_de_read(i915, SFUSE_STRAP) & SFUSE_STRAP_DDIC_DETECTED;
+	case PORT_D:
+		return intel_de_read(i915, SFUSE_STRAP) & SFUSE_STRAP_DDID_DETECTED;
+	default:
+		MISSING_CASE(port);
+		return false;
+	}
+}
+
 void intel_ddi_init(struct drm_i915_private *dev_priv,
 		    struct intel_bios_encoder_data *devdata,
 		    enum port port)
 {
@@ -4286,8 +4307,20 @@ void intel_ddi_init(struct drm_i915_private *dev_priv,
 	struct intel_encoder *encoder;
 	bool init_hdmi, init_dp;
 	enum phy phy = intel_port_to_phy(dev_priv, port);
 
+	/*
+	 * On some HSW ULT systems the VBT has been observed
+	 * to advertise DDI D, even though it does not exist on
+	 * the platform. Check the strap first to avoid tripping
+	 * assert_port_valid().
+	 */
+	if (!port_strap_detected(dev_priv, port)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Port %c strap not detected\n", port_name(port));
+		return;
+	}
+
 	if (!assert_port_valid(dev_priv, port))
 		return;
 
 	if (port_in_use(dev_priv, port)) {
@@ -4295,12 +4328,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv,
 			    "Port %c already claimed\n", port_name(port));
 		return;
 	}
 
-	/* FIXME convert HSW/BDW */
-	if (!devdata)
-		devdata = intel_bios_encoder_data_lookup(dev_priv, port);
-
 	intel_bios_encoder_sanitize(devdata, port);
 
 	if (intel_bios_encoder_supports_dsi(devdata)) {
 		/* BXT/GLK handled elsewhere, for now at least */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bb1397381385..a68ad58f04d1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7811,31 +7811,16 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
-	if (DISPLAY_VER(dev_priv) >= 9) {
+	if (HAS_DDI(dev_priv)) {
 		intel_bios_for_each_encoder(dev_priv, intel_ddi_init);
 
 		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
 			vlv_dsi_init(dev_priv);
-	} else if (HAS_DDI(dev_priv)) {
-		u32 found;
 
 		if (intel_ddi_crt_present(dev_priv))
 			intel_crt_init(dev_priv);
-
-		/* Haswell uses DDI functions to detect digital outputs. */
-		found = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
-		if (found)
-			intel_ddi_init(dev_priv, NULL, PORT_A);
-
-		found = intel_de_read(dev_priv, SFUSE_STRAP);
-		if (found & SFUSE_STRAP_DDIB_DETECTED)
-			intel_ddi_init(dev_priv, NULL, PORT_B);
-		if (found & SFUSE_STRAP_DDIC_DETECTED)
-			intel_ddi_init(dev_priv, NULL, PORT_C);
-		if (found & SFUSE_STRAP_DDID_DETECTED)
-			intel_ddi_init(dev_priv, NULL, PORT_D);
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		int found;
 
 		/*
-- 
2.39.2

