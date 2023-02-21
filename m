Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F59A69EADA
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 00:03:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65C0D10E3A2;
	Tue, 21 Feb 2023 23:02:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BAD410E39A
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 23:02:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677020575; x=1708556575;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=bBBwcG98GZtvcwRYoIDaGxiKO1HTn9/fLT9HZmsV3mk=;
 b=HMo8d4RH1XcXO8HdjzURn04PWRskCmwFIrbb/00dqu2IYmg4+LeIXBwV
 d0ISKgcbJfF1ziVVDbWOz0s1ZybIylBYKVtVWD4o13D/OKbpPGXbsAh/a
 0nSCzJn+n3heEnOMDt6YR++ScbcJK0urRzDfQPLWMc41Rd6YBcV8BPa71
 BcW7BDSdjtGp9NAkxWT9qLFjQVCAhupe0OwD72v7RztDAFICNj3QQ3DU7
 SWyGogV8+tPDEs0In3wvL1AWjiirE/92SwZ/RSCmMK+0CakO5RjixpU+Y
 8dGxaul7jcZDuLH1ljusPotfTH5FjxibHhB3Az79bSoTLGKEHY/bj/+Zk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="330501700"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="330501700"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 15:02:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="814690122"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="814690122"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 21 Feb 2023 15:02:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Feb 2023 01:02:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Feb 2023 01:02:08 +0200
Message-Id: <20230221230227.6244-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
References: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 03/22] drm/i915: Get rid of the gm45 HPD live
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c | 28 +--------------------------
 drivers/gpu/drm/i915/i915_reg.h       | 13 +------------
 2 files changed, 2 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index a50ad0fff57c..920d570f7594 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1196,31 +1196,8 @@ static bool g4x_digital_port_connected(struct intel_encoder *encoder)
 
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
 	u32 bit = dev_priv->display.hotplug.hpd[encoder->hpd_pin];
@@ -1383,12 +1360,9 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 
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
 		else
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c1efa655fb68..de58695ad1c0 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2482,20 +2482,9 @@
 #define CRT_HOTPLUG_DETECT_VOLTAGE_325MV	(0 << 2)
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
 #define   PORTD_HOTPLUG_INT_STATUS		(3 << 21)
-- 
2.39.2

