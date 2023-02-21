Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A9869EAEA
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 00:03:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7A8A10E900;
	Tue, 21 Feb 2023 23:03:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ACE510E3A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 23:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677020603; x=1708556603;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Z0fsU/QQHxHgZO1mVpkFiuqXefFc55L9nFY138sfPJw=;
 b=lOrXEKigaBGAckFfAGVSx2fuLK6OeUpMbDBmqjSCl5aozXjTnbFYfABn
 5NggZMmDXyPg0VucMo8X6Ei3CtxJP1+s3FBv34h/9a5ev0/+t26Wes5VH
 nq58544QySE44/vmqXWl7lssrTZaIw7mzP8IYwM3TQYZOf9y/V38cbjuj
 Vsa6hCb/o6SAZD7pvuNiCmTNUkySuiXLj71xR3CG/0K6OfXc2yCH1kJ24
 z+7c/uAPCTsj+XMMG1pRjA64OKoTMJ6RTez9IEReWha20tjGlRcikJFll
 Phukqn8QtflETvueLr7G+WZEAhu4YadPkM+lsy8j6NvHuRQ7iajoF1+RZ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="330501908"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="330501908"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 15:03:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="814690188"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="814690188"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 21 Feb 2023 15:03:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Feb 2023 01:03:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Feb 2023 01:02:23 +0200
Message-Id: <20230221230227.6244-19-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
References: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 18/22] drm/i915: Convert HSW/BDW to use VBT
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
index e94eb7bb6e53..6deaa3433958 100644
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
index 7325edb3ca65..0598ac14db05 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7834,31 +7834,16 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
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

