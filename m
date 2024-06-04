Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6B28FB706
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:27:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 916C689D39;
	Tue,  4 Jun 2024 15:27:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G6yuzrcu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5614410E4CF
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514858; x=1749050858;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/6nmrf77p7jv6N5XLuy651PDVJ4zFLva/y4aGFTJzn0=;
 b=G6yuzrcuc2h6jh8qo006hGFG+clw+H3nsDLYmuQl+tg0kUEI9tVbowAW
 RsRXrdlslABbDYcKGjlgYUz9mf1J+QJHzGyvr7IbKGnrx9LwqSKlPrgTM
 Zd/qIk5MRSN4jnNeYlzcJDNMmHT1/ah52JXwRm/4Df6EYo/JY/80rkh2C
 zE2V/xDI67PtECUc6A3zguX0Ll/2/vTrjMKVAUmP07o4llIwwLEPGpvdG
 rGGKSZz703JAezGXfRIN5CzfutY+8XDHrmrUpAYV+GdNOOgpsx84aTOj/
 Ru/Zu3TUvL/HC6YObe/Qi5Dpli72FuveT9YSMbMzcNsLYx/SR83eHrxm2 g==;
X-CSE-ConnectionGUID: w/CpyCg2Tx2sVk4S9ecUGQ==
X-CSE-MsgGUID: R8rBe6HzSp+PUgF4tVsBIQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="25469758"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="25469758"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:38 -0700
X-CSE-ConnectionGUID: QC/9vOIQT8qjTQRFFdD80A==
X-CSE-MsgGUID: nDbL6ai4RsmQ7DPYl/GhYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="42383354"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 14/65] drm/i915: pass dev_priv explicitly to PORT_HOTPLUG_STAT
Date: Tue,  4 Jun 2024 18:25:32 +0300
Message-Id: <9a47bba4ab8fa4b1a8e8ceea2ba5301bed54805d.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the PORT_HOTPLUG_STAT register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c            | 2 +-
 drivers/gpu/drm/i915/display/intel_crt.c         | 5 +++--
 drivers/gpu/drm/i915/display/intel_display_irq.c | 2 +-
 drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 9 ++++++---
 drivers/gpu/drm/i915/i915_irq.c                  | 5 +++--
 drivers/gpu/drm/i915/i915_reg.h                  | 2 +-
 6 files changed, 15 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 06ec04e667e3..40fee8380a81 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1228,7 +1228,7 @@ static bool g4x_digital_port_connected(struct intel_encoder *encoder)
 		return false;
 	}
 
-	return intel_de_read(dev_priv, PORT_HOTPLUG_STAT) & bit;
+	return intel_de_read(dev_priv, PORT_HOTPLUG_STAT(dev_priv)) & bit;
 }
 
 static bool ilk_digital_port_connected(struct intel_encoder *encoder)
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index b7eab52b64b6..808fa8afb164 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -609,12 +609,13 @@ static bool intel_crt_detect_hotplug(struct drm_connector *connector)
 				    "timed out waiting for FORCE_DETECT to go off");
 	}
 
-	stat = intel_de_read(dev_priv, PORT_HOTPLUG_STAT);
+	stat = intel_de_read(dev_priv, PORT_HOTPLUG_STAT(dev_priv));
 	if ((stat & CRT_HOTPLUG_MONITOR_MASK) != CRT_HOTPLUG_MONITOR_NONE)
 		ret = true;
 
 	/* clear the interrupt we just generated, if any */
-	intel_de_write(dev_priv, PORT_HOTPLUG_STAT, CRT_HOTPLUG_INT_STATUS);
+	intel_de_write(dev_priv, PORT_HOTPLUG_STAT(dev_priv),
+		       CRT_HOTPLUG_INT_STATUS);
 
 	i915_hotplug_interrupt_update(dev_priv, CRT_HOTPLUG_FORCE_DETECT, 0);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 1674570dff1e..be5b48861baf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1377,7 +1377,7 @@ void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 		intel_uncore_write(uncore, DPINVGTT, DPINVGTT_STATUS_MASK_VLV);
 
 	i915_hotplug_interrupt_update_locked(dev_priv, 0xffffffff, 0);
-	intel_uncore_rmw(uncore, PORT_HOTPLUG_STAT, 0, 0);
+	intel_uncore_rmw(uncore, PORT_HOTPLUG_STAT(dev_priv), 0, 0);
 
 	i9xx_pipestat_irq_reset(dev_priv);
 
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index 90fe5f8538e1..a1f07ee69a86 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -435,18 +435,21 @@ u32 i9xx_hpd_irq_ack(struct drm_i915_private *dev_priv)
 	 * bits can itself generate a new hotplug interrupt :(
 	 */
 	for (i = 0; i < 10; i++) {
-		u32 tmp = intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT) & hotplug_status_mask;
+		u32 tmp = intel_uncore_read(&dev_priv->uncore,
+					    PORT_HOTPLUG_STAT(dev_priv)) & hotplug_status_mask;
 
 		if (tmp == 0)
 			return hotplug_status;
 
 		hotplug_status |= tmp;
-		intel_uncore_write(&dev_priv->uncore, PORT_HOTPLUG_STAT, hotplug_status);
+		intel_uncore_write(&dev_priv->uncore,
+				   PORT_HOTPLUG_STAT(dev_priv),
+				   hotplug_status);
 	}
 
 	drm_WARN_ONCE(&dev_priv->drm, 1,
 		      "PORT_HOTPLUG_STAT did not clear (0x%08x)\n",
-		      intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT));
+		      intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT(dev_priv)));
 
 	return hotplug_status;
 }
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 678d632ed043..8059ac7e15fe 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -1040,7 +1040,8 @@ static void i915_irq_reset(struct drm_i915_private *dev_priv)
 
 	if (I915_HAS_HOTPLUG(dev_priv)) {
 		i915_hotplug_interrupt_update(dev_priv, 0xffffffff, 0);
-		intel_uncore_rmw(&dev_priv->uncore, PORT_HOTPLUG_STAT, 0, 0);
+		intel_uncore_rmw(&dev_priv->uncore,
+				 PORT_HOTPLUG_STAT(dev_priv), 0, 0);
 	}
 
 	i9xx_pipestat_irq_reset(dev_priv);
@@ -1149,7 +1150,7 @@ static void i965_irq_reset(struct drm_i915_private *dev_priv)
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
 	i915_hotplug_interrupt_update(dev_priv, 0xffffffff, 0);
-	intel_uncore_rmw(uncore, PORT_HOTPLUG_STAT, 0, 0);
+	intel_uncore_rmw(uncore, PORT_HOTPLUG_STAT(dev_priv), 0, 0);
 
 	i9xx_pipestat_irq_reset(dev_priv);
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 4508c535f320..166c7f4f9c6c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1408,7 +1408,7 @@
 #define CRT_HOTPLUG_DETECT_VOLTAGE_325MV	(0 << 2)
 #define CRT_HOTPLUG_DETECT_VOLTAGE_475MV	(1 << 2)
 
-#define PORT_HOTPLUG_STAT	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61114)
+#define PORT_HOTPLUG_STAT(dev_priv)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61114)
 /* HDMI/DP bits are g4x+ */
 #define   PORTD_HOTPLUG_LIVE_STATUS_G4X		(1 << 27)
 #define   PORTC_HOTPLUG_LIVE_STATUS_G4X		(1 << 28)
-- 
2.39.2

