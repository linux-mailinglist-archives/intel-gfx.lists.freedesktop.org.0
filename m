Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7838D7C6E60
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 14:40:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4080010E189;
	Thu, 12 Oct 2023 12:40:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E59C910E189
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 12:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697114438; x=1728650438;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hLfz7nErj5/iBxTGJ90Js4n6Xw6h0q2F4dqmEovVSGo=;
 b=V+Nv+dEmIepKhkvuifn0xqCNcri0UDy0hsRNIyywsl/l/f5APLb8R1b4
 +5zUuNCnxH00A92ZM3Z/LvRiW7qfivbvcgmukXmMMOB3RFIbGQnig8JG0
 cGQy/cCkBIEGsZSvSdXcsT2Wt0Ml+AgYb+jqasSBeLkPBb9CiaQIh6+rv
 wpa7ZilFuZatB0Ey0+T4025uIR9vODJy+rkN/JGbOz4ehYiRVbiU+nC8p
 GlfSxOcaYYJZj0AT530Znm0e8zsG6ulM4TT0x5yCgwAgQFPYCx3AefPDS
 yKDe8npzuWApL+19WRnUxl6P6ndnY7iCPVi16+FU2Ya6K94sYJaETMySH Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="382143559"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="382143559"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 05:40:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="844984390"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="844984390"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by FMSMGA003.fm.intel.com with SMTP; 12 Oct 2023 05:40:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Oct 2023 15:40:33 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Oct 2023 15:40:33 +0300
Message-ID: <20231012124033.26983-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Move the g45 PEG band gap HPD
 workaround to the HPD code
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

We are asked to reprogram PEG_BAND_GAP_DATA prior to enabling
hotplug detection on the g45 HDMI/DP ports. Currently we do said
reprogamming from the DP/HDMI connector initialization functions.
That code should be mostly platform agnostic so clearly not the
best place for this. Move the workaround to the place where we
actually enable HPD detection.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c          | 10 ----------
 drivers/gpu/drm/i915/display/intel_hdmi.c        | 10 ----------
 drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 16 ++++++++++++++++
 3 files changed, 16 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4f6835a7578e..f2d6c4da72ab 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6198,16 +6198,6 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 				    "HDCP init failed, skipping.\n");
 	}
 
-	/* For G4X desktop chip, PEG_BAND_GAP_DATA 3:0 must first be written
-	 * 0xd.  Failure to do so will result in spurious interrupts being
-	 * generated on the port when a cable is not attached.
-	 */
-	if (IS_G45(dev_priv)) {
-		u32 temp = intel_de_read(dev_priv, PEG_BAND_GAP_DATA);
-		intel_de_write(dev_priv, PEG_BAND_GAP_DATA,
-			       (temp & ~0xf) | 0xd);
-	}
-
 	intel_dp->frl.is_trained = false;
 	intel_dp->frl.trained_rate_gbps = 0;
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index ac315f8e7820..ab18cfc19c0a 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -3030,16 +3030,6 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 				    "HDCP init failed, skipping.\n");
 	}
 
-	/* For G4X desktop chip, PEG_BAND_GAP_DATA 3:0 must first be written
-	 * 0xd.  Failure to do so will result in spurious interrupts being
-	 * generated on the port when a cable is not attached.
-	 */
-	if (IS_G45(dev_priv)) {
-		u32 temp = intel_de_read(dev_priv, PEG_BAND_GAP_DATA);
-		intel_de_write(dev_priv, PEG_BAND_GAP_DATA,
-		               (temp & ~0xf) | 0xd);
-	}
-
 	cec_fill_conn_info_from_drm(&conn_info, connector);
 
 	intel_hdmi->cec_notifier =
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index f07047e9cb30..04f62f27ad74 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -1361,11 +1361,24 @@ static void bxt_hpd_irq_setup(struct drm_i915_private *dev_priv)
 	bxt_hpd_detection_setup(dev_priv);
 }
 
+static void g45_hpd_peg_band_gap_wa(struct drm_i915_private *i915)
+{
+	/*
+	 * For G4X desktop chip, PEG_BAND_GAP_DATA 3:0 must first be written
+	 * 0xd.  Failure to do so will result in spurious interrupts being
+	 * generated on the port when a cable is not attached.
+	 */
+	intel_de_rmw(i915, PEG_BAND_GAP_DATA, 0xf, 0xd);
+}
+
 static void i915_hpd_enable_detection(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	u32 hotplug_en = hpd_mask_i915[encoder->hpd_pin];
 
+	if (IS_G45(i915))
+		g45_hpd_peg_band_gap_wa(i915);
+
 	/* HPD sense and interrupt enable are one and the same */
 	i915_hotplug_interrupt_update(i915, hotplug_en, hotplug_en);
 }
@@ -1389,6 +1402,9 @@ static void i915_hpd_irq_setup(struct drm_i915_private *dev_priv)
 		hotplug_en |= CRT_HOTPLUG_ACTIVATION_PERIOD_64;
 	hotplug_en |= CRT_HOTPLUG_VOLTAGE_COMPARE_50;
 
+	if (IS_G45(dev_priv))
+		g45_hpd_peg_band_gap_wa(dev_priv);
+
 	/* Ignore TV since it's buggy */
 	i915_hotplug_interrupt_update_locked(dev_priv,
 					     HOTPLUG_INT_EN_MASK |
-- 
2.41.0

