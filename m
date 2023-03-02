Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B78A16A85E6
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 17:11:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF64E10E131;
	Thu,  2 Mar 2023 16:11:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC26110E131
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 16:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677773497; x=1709309497;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r8MpCOQjyJfnVNcgLFnejQV+e4R/McKEexTKYuMhV08=;
 b=fk9AjiGAnoVkWYIofzvwuQDix3okPDdrEHA2kFUMffIS8gyQsUvp0ZZI
 s2XQzD258UYGn3TQ3O1weBoNQeel6LRwJYIWXmEmttOQ1hpgxyeTRmtea
 4lwwHj2sg+BS8gePk+qOTdcJ2u9fC2mwQxk5DsyEV9cATfdNKIIGDCBdZ
 Ny0gEkUNC93H78M6mjvc7YatpDWQuV9iIXl8FjukWoysQDX+z031S7/w4
 tTfGUfYqsdNcrgS4bAW8Ri3uQMOqY1NS//2vNw3pcOyBv+qdm/wZOEbjh
 U38Xb5OiabzIyJvE7yTg2GH09feNzZnPe8aB91Y32m18W85TwCOY8kWQn g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="323057892"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="323057892"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 08:10:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="784889039"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="784889039"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 02 Mar 2023 08:10:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Mar 2023 18:10:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Mar 2023 18:10:09 +0200
Message-Id: <20230302161013.29213-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230302161013.29213-1-ville.syrjala@linux.intel.com>
References: <20230302161013.29213-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/7] drm/i915: Get rid of the gm45 HPD live
 state nonsense
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The idea that ctg uses different HPD live state bits is
total nonsense, at least on my machine (Dell Latitude
E5400).

The only reason DP-B even works on my ctg is that DP-D
live state is stuck high, even though there is no physical
DP-D port. So when the detect checks DP-B live state it
sees the stuck live state of DP-D instead. If I hack
the driver to not register DP-D at all, and thus we never
enabe DP-D HPD, DP-B stops working as well.

Just to put some conclusive evidence into this mess,
here are the actual hotplug register values for each port:
 Everything disconnected:
                    PORT_HOTPLUG_EN (0x00061110): 0x00000000
                  PORT_HOTPLUG_STAT (0x00061114): 0x00000000
                    PORT_HOTPLUG_EN (0x00061110): 0x08000000
                  PORT_HOTPLUG_STAT (0x00061114): 0x08000000
                    PORT_HOTPLUG_EN (0x00061110): 0x10000000
                  PORT_HOTPLUG_STAT (0x00061114): 0x00000000
                    PORT_HOTPLUG_EN (0x00061110): 0x20000000
                  PORT_HOTPLUG_STAT (0x00061114): 0x00000000
 Only port B connected:
                    PORT_HOTPLUG_EN (0x00061110): 0x00000000
                  PORT_HOTPLUG_STAT (0x00061114): 0x00000000
                    PORT_HOTPLUG_EN (0x00061110): 0x08000000
                  PORT_HOTPLUG_STAT (0x00061114): 0x08000000
                    PORT_HOTPLUG_EN (0x00061110): 0x10000000
                  PORT_HOTPLUG_STAT (0x00061114): 0x00000000
                    PORT_HOTPLUG_EN (0x00061110): 0x20000000
                  PORT_HOTPLUG_STAT (0x00061114): 0x20000000
 Only port C connected:
                    PORT_HOTPLUG_EN (0x00061110): 0x00000000
                  PORT_HOTPLUG_STAT (0x00061114): 0x00000000
                    PORT_HOTPLUG_EN (0x00061110): 0x08000000
                  PORT_HOTPLUG_STAT (0x00061114): 0x08000000
                    PORT_HOTPLUG_EN (0x00061110): 0x10000000
                  PORT_HOTPLUG_STAT (0x00061114): 0x10000000
                    PORT_HOTPLUG_EN (0x00061110): 0x20000000
                  PORT_HOTPLUG_STAT (0x00061114): 0x00000000

So the enable bit and live state bit always match 1:1.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c | 28 +--------------------------
 drivers/gpu/drm/i915/i915_reg.h       | 13 +------------
 2 files changed, 2 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index a50ad0fff57c..920d570f7594 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1197,29 +1197,6 @@ static bool g4x_digital_port_connected(struct intel_encoder *encoder)
 	return intel_de_read(dev_priv, PORT_HOTPLUG_STAT) & bit;
 }
 
-static bool gm45_digital_port_connected(struct intel_encoder *encoder)
-{
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 bit;
-
-	switch (encoder->hpd_pin) {
-	case HPD_PORT_B:
-		bit = PORTB_HOTPLUG_LIVE_STATUS_GM45;
-		break;
-	case HPD_PORT_C:
-		bit = PORTC_HOTPLUG_LIVE_STATUS_GM45;
-		break;
-	case HPD_PORT_D:
-		bit = PORTD_HOTPLUG_LIVE_STATUS_GM45;
-		break;
-	default:
-		MISSING_CASE(encoder->hpd_pin);
-		return false;
-	}
-
-	return intel_de_read(dev_priv, PORT_HOTPLUG_STAT) & bit;
-}
-
 static bool ilk_digital_port_connected(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
@@ -1384,10 +1361,7 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 	dig_port->hpd_pulse = intel_dp_hpd_pulse;
 
 	if (HAS_GMCH(dev_priv)) {
-		if (IS_GM45(dev_priv))
-			dig_port->connected = gm45_digital_port_connected;
-		else
-			dig_port->connected = g4x_digital_port_connected;
+		dig_port->connected = g4x_digital_port_connected;
 	} else {
 		if (port == PORT_A)
 			dig_port->connected = ilk_digital_port_connected;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c1efa655fb68..de58695ad1c0 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2483,18 +2483,7 @@
 #define CRT_HOTPLUG_DETECT_VOLTAGE_475MV	(1 << 2)
 
 #define PORT_HOTPLUG_STAT	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61114)
-/*
- * HDMI/DP bits are g4x+
- *
- * WARNING: Bspec for hpd status bits on gen4 seems to be completely confused.
- * Please check the detailed lore in the commit message for for experimental
- * evidence.
- */
-/* Bspec says GM45 should match G4X/VLV/CHV, but reality disagrees */
-#define   PORTD_HOTPLUG_LIVE_STATUS_GM45	(1 << 29)
-#define   PORTC_HOTPLUG_LIVE_STATUS_GM45	(1 << 28)
-#define   PORTB_HOTPLUG_LIVE_STATUS_GM45	(1 << 27)
-/* G4X/VLV/CHV DP/HDMI bits again match Bspec */
+/* HDMI/DP bits are g4x+ */
 #define   PORTD_HOTPLUG_LIVE_STATUS_G4X		(1 << 27)
 #define   PORTC_HOTPLUG_LIVE_STATUS_G4X		(1 << 28)
 #define   PORTB_HOTPLUG_LIVE_STATUS_G4X		(1 << 29)
-- 
2.39.2

