Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CB559FB11
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:18:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA46DB51AA;
	Wed, 24 Aug 2022 13:17:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6732DB4E9A
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661347009; x=1692883009;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=79dMfXsW7hfU1qsQEaW3hz+o6XJCFPJObqJkV18jVh8=;
 b=ZnsfHuk1FytfH2CFE9BOiAjWEOPFydNdwdXvqNl+2pUPEOuz0FriACNr
 yRccDJtlBjyH8IyEhW9MBeAyGmXLI4q7IJ2FCL7Uj5jPWucNoVJyHhNKu
 Gk6XOhp534uecJbGvLts5PJMEc+IPeMf6wFfa2D82bugkc14z1lDy/Od/
 ZLvihDqtNgo6xoCRcO5T5uNSX5eLYqtdLV6z/R8VtN0NFd9ySkgZ+5yrd
 a8k9fCYpvnbtHzlRB9nrQJidNDWrwwskimmvWsCTXzOjI2Ju0QH3Wy3LH
 66MgrZvqySL6TP6fqd6qmvRg7cwyIADNxmy4y2JiNvvBiiRVY0kU58yAv Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="273713774"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="273713774"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:16:44 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="560597977"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by orsmga003-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:16:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:34 +0300
Message-Id: <9379e4d8982c1ddea215a3f602f08a4055928c7c.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/38] drm/i915: move and group gmbus members
 under display.gmbus
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display gmbus related members under drm_i915_private display
sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  6 +--
 .../gpu/drm/i915/display/intel_display_core.h | 23 ++++++++++
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    | 46 +++++++++----------
 drivers/gpu/drm/i915/i915_drv.h               | 16 -------
 drivers/gpu/drm/i915/i915_irq.c               |  4 +-
 drivers/gpu/drm/i915/i915_reg.h               | 14 +++---
 7 files changed, 59 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 6095f5800a2e..ea40c75c2986 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2098,12 +2098,12 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 	 * functions use cdclk. Not all platforms/ports do,
 	 * but we'll lock them all for simplicity.
 	 */
-	mutex_lock(&dev_priv->gmbus_mutex);
+	mutex_lock(&dev_priv->display.gmbus.mutex);
 	for_each_intel_dp(&dev_priv->drm, encoder) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 		mutex_lock_nest_lock(&intel_dp->aux.hw_mutex,
-				     &dev_priv->gmbus_mutex);
+				     &dev_priv->display.gmbus.mutex);
 	}
 
 	intel_cdclk_set_cdclk(dev_priv, cdclk_config, pipe);
@@ -2113,7 +2113,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 
 		mutex_unlock(&intel_dp->aux.hw_mutex);
 	}
-	mutex_unlock(&dev_priv->gmbus_mutex);
+	mutex_unlock(&dev_priv->display.gmbus.mutex);
 
 	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index a9fcaedc78f6..cfce1dba9c5f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -6,7 +6,11 @@
 #ifndef __INTEL_DISPLAY_CORE_H__
 #define __INTEL_DISPLAY_CORE_H__
 
+#include <linux/mutex.h>
 #include <linux/types.h>
+#include <linux/wait.h>
+
+#include "intel_gmbus.h"
 
 struct drm_i915_private;
 struct intel_atomic_state;
@@ -76,6 +80,25 @@ struct intel_display {
 		/* Display internal color functions */
 		const struct intel_color_funcs *color;
 	} funcs;
+
+	/* Grouping using anonymous structs. Keep sorted. */
+	struct {
+		/*
+		 * Base address of where the gmbus and gpio blocks are located
+		 * (either on PCH or on SoC for platforms without PCH).
+		 */
+		u32 mmio_base;
+
+		/*
+		 * gmbus.mutex protects against concurrent usage of the single
+		 * hw gmbus controller on different i2c buses.
+		 */
+		struct mutex mutex;
+
+		struct intel_gmbus *bus[GMBUS_NUM_PINS];
+
+		wait_queue_head_t wait_queue;
+	} gmbus;
 };
 
 #endif /* __INTEL_DISPLAY_CORE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 2bc119374555..227fbee88b89 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -42,7 +42,7 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
 	bool done;
 
 #define C (((status = intel_uncore_read_notrace(&i915->uncore, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)
-	done = wait_event_timeout(i915->gmbus_wait_queue, C,
+	done = wait_event_timeout(i915->display.gmbus.wait_queue, C,
 				  msecs_to_jiffies_timeout(timeout_ms));
 
 	/* just trace the final value */
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index a6ba7fb72339..c3992b1ca842 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -369,7 +369,7 @@ static int gmbus_wait(struct drm_i915_private *dev_priv, u32 status, u32 irq_en)
 	if (!has_gmbus_irq(dev_priv))
 		irq_en = 0;
 
-	add_wait_queue(&dev_priv->gmbus_wait_queue, &wait);
+	add_wait_queue(&dev_priv->display.gmbus.wait_queue, &wait);
 	intel_de_write_fw(dev_priv, GMBUS4, irq_en);
 
 	status |= GMBUS_SATOER;
@@ -380,7 +380,7 @@ static int gmbus_wait(struct drm_i915_private *dev_priv, u32 status, u32 irq_en)
 			       50);
 
 	intel_de_write_fw(dev_priv, GMBUS4, 0);
-	remove_wait_queue(&dev_priv->gmbus_wait_queue, &wait);
+	remove_wait_queue(&dev_priv->display.gmbus.wait_queue, &wait);
 
 	if (gmbus2 & GMBUS_SATOER)
 		return -ENXIO;
@@ -400,7 +400,7 @@ gmbus_wait_idle(struct drm_i915_private *dev_priv)
 	if (has_gmbus_irq(dev_priv))
 		irq_enable = GMBUS_IDLE_EN;
 
-	add_wait_queue(&dev_priv->gmbus_wait_queue, &wait);
+	add_wait_queue(&dev_priv->display.gmbus.wait_queue, &wait);
 	intel_de_write_fw(dev_priv, GMBUS4, irq_enable);
 
 	ret = intel_wait_for_register_fw(&dev_priv->uncore,
@@ -408,7 +408,7 @@ gmbus_wait_idle(struct drm_i915_private *dev_priv)
 					 10);
 
 	intel_de_write_fw(dev_priv, GMBUS4, 0);
-	remove_wait_queue(&dev_priv->gmbus_wait_queue, &wait);
+	remove_wait_queue(&dev_priv->display.gmbus.wait_queue, &wait);
 
 	return ret;
 }
@@ -791,7 +791,7 @@ int intel_gmbus_output_aksv(struct i2c_adapter *adapter)
 	int ret;
 
 	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_GMBUS);
-	mutex_lock(&dev_priv->gmbus_mutex);
+	mutex_lock(&dev_priv->display.gmbus.mutex);
 
 	/*
 	 * In order to output Aksv to the receiver, use an indexed write to
@@ -800,7 +800,7 @@ int intel_gmbus_output_aksv(struct i2c_adapter *adapter)
 	 */
 	ret = do_gmbus_xfer(adapter, msgs, ARRAY_SIZE(msgs), GMBUS_AKSV_SELECT);
 
-	mutex_unlock(&dev_priv->gmbus_mutex);
+	mutex_unlock(&dev_priv->display.gmbus.mutex);
 	intel_display_power_put(dev_priv, POWER_DOMAIN_GMBUS, wakeref);
 
 	return ret;
@@ -826,7 +826,7 @@ static void gmbus_lock_bus(struct i2c_adapter *adapter,
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
 	struct drm_i915_private *dev_priv = bus->dev_priv;
 
-	mutex_lock(&dev_priv->gmbus_mutex);
+	mutex_lock(&dev_priv->display.gmbus.mutex);
 }
 
 static int gmbus_trylock_bus(struct i2c_adapter *adapter,
@@ -835,7 +835,7 @@ static int gmbus_trylock_bus(struct i2c_adapter *adapter,
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
 	struct drm_i915_private *dev_priv = bus->dev_priv;
 
-	return mutex_trylock(&dev_priv->gmbus_mutex);
+	return mutex_trylock(&dev_priv->display.gmbus.mutex);
 }
 
 static void gmbus_unlock_bus(struct i2c_adapter *adapter,
@@ -844,7 +844,7 @@ static void gmbus_unlock_bus(struct i2c_adapter *adapter,
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
 	struct drm_i915_private *dev_priv = bus->dev_priv;
 
-	mutex_unlock(&dev_priv->gmbus_mutex);
+	mutex_unlock(&dev_priv->display.gmbus.mutex);
 }
 
 static const struct i2c_lock_operations gmbus_lock_ops = {
@@ -864,18 +864,18 @@ int intel_gmbus_setup(struct drm_i915_private *dev_priv)
 	int ret;
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		dev_priv->gpio_mmio_base = VLV_DISPLAY_BASE;
+		dev_priv->display.gmbus.mmio_base = VLV_DISPLAY_BASE;
 	else if (!HAS_GMCH(dev_priv))
 		/*
 		 * Broxton uses the same PCH offsets for South Display Engine,
 		 * even though it doesn't have a PCH.
 		 */
-		dev_priv->gpio_mmio_base = PCH_DISPLAY_BASE;
+		dev_priv->display.gmbus.mmio_base = PCH_DISPLAY_BASE;
 
-	mutex_init(&dev_priv->gmbus_mutex);
-	init_waitqueue_head(&dev_priv->gmbus_wait_queue);
+	mutex_init(&dev_priv->display.gmbus.mutex);
+	init_waitqueue_head(&dev_priv->display.gmbus.wait_queue);
 
-	for (pin = 0; pin < ARRAY_SIZE(dev_priv->gmbus); pin++) {
+	for (pin = 0; pin < ARRAY_SIZE(dev_priv->display.gmbus.bus); pin++) {
 		const struct gmbus_pin *gmbus_pin;
 		struct intel_gmbus *bus;
 
@@ -922,7 +922,7 @@ int intel_gmbus_setup(struct drm_i915_private *dev_priv)
 			goto err;
 		}
 
-		dev_priv->gmbus[pin] = bus;
+		dev_priv->display.gmbus.bus[pin] = bus;
 	}
 
 	intel_gmbus_reset(dev_priv);
@@ -938,11 +938,11 @@ int intel_gmbus_setup(struct drm_i915_private *dev_priv)
 struct i2c_adapter *intel_gmbus_get_adapter(struct drm_i915_private *dev_priv,
 					    unsigned int pin)
 {
-	if (drm_WARN_ON(&dev_priv->drm, pin >= ARRAY_SIZE(dev_priv->gmbus) ||
-			!dev_priv->gmbus[pin]))
+	if (drm_WARN_ON(&dev_priv->drm, pin >= ARRAY_SIZE(dev_priv->display.gmbus.bus) ||
+			!dev_priv->display.gmbus.bus[pin]))
 		return NULL;
 
-	return &dev_priv->gmbus[pin]->adapter;
+	return &dev_priv->display.gmbus.bus[pin]->adapter;
 }
 
 void intel_gmbus_force_bit(struct i2c_adapter *adapter, bool force_bit)
@@ -950,7 +950,7 @@ void intel_gmbus_force_bit(struct i2c_adapter *adapter, bool force_bit)
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
 	struct drm_i915_private *dev_priv = bus->dev_priv;
 
-	mutex_lock(&dev_priv->gmbus_mutex);
+	mutex_lock(&dev_priv->display.gmbus.mutex);
 
 	bus->force_bit += force_bit ? 1 : -1;
 	drm_dbg_kms(&dev_priv->drm,
@@ -958,7 +958,7 @@ void intel_gmbus_force_bit(struct i2c_adapter *adapter, bool force_bit)
 		    force_bit ? "en" : "dis", adapter->name,
 		    bus->force_bit);
 
-	mutex_unlock(&dev_priv->gmbus_mutex);
+	mutex_unlock(&dev_priv->display.gmbus.mutex);
 }
 
 bool intel_gmbus_is_forced_bit(struct i2c_adapter *adapter)
@@ -972,16 +972,16 @@ void intel_gmbus_teardown(struct drm_i915_private *dev_priv)
 {
 	unsigned int pin;
 
-	for (pin = 0; pin < ARRAY_SIZE(dev_priv->gmbus); pin++) {
+	for (pin = 0; pin < ARRAY_SIZE(dev_priv->display.gmbus.bus); pin++) {
 		struct intel_gmbus *bus;
 
-		bus = dev_priv->gmbus[pin];
+		bus = dev_priv->display.gmbus.bus[pin];
 		if (!bus)
 			continue;
 
 		i2c_del_adapter(&bus->adapter);
 
 		kfree(bus);
-		dev_priv->gmbus[pin] = NULL;
+		dev_priv->display.gmbus.bus[pin] = NULL;
 	}
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d7abbb1362f9..d75d253f9f99 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -47,7 +47,6 @@
 #include "display/intel_fbc.h"
 #include "display/intel_frontbuffer.h"
 #include "display/intel_global_state.h"
-#include "display/intel_gmbus.h"
 #include "display/intel_opregion.h"
 
 #include "gem/i915_gem_context_types.h"
@@ -89,7 +88,6 @@ struct intel_connector;
 struct intel_dp;
 struct intel_encoder;
 struct intel_fbdev;
-struct intel_gmbus;
 struct intel_limit;
 struct intel_overlay;
 struct intel_overlay_error_state;
@@ -383,25 +381,11 @@ struct drm_i915_private {
 
 	struct intel_dmc dmc;
 
-	struct intel_gmbus *gmbus[GMBUS_NUM_PINS];
-
-	/** gmbus_mutex protects against concurrent usage of the single hw gmbus
-	 * controller on different i2c buses. */
-	struct mutex gmbus_mutex;
-
-	/**
-	 * Base address of where the gmbus and gpio blocks are located (either
-	 * on PCH or on SoC for platforms without PCH).
-	 */
-	u32 gpio_mmio_base;
-
 	/* MMIO base address for MIPI regs */
 	u32 mipi_mmio_base;
 
 	u32 pps_mmio_base;
 
-	wait_queue_head_t gmbus_wait_queue;
-
 	struct pci_dev *bridge_dev;
 
 	struct rb_root uabi_engines;
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index c1b8f949c53d..b0095b289a79 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -1304,12 +1304,12 @@ static u32 intel_hpd_hotplug_enables(struct drm_i915_private *i915,
 
 static void gmbus_irq_handler(struct drm_i915_private *dev_priv)
 {
-	wake_up_all(&dev_priv->gmbus_wait_queue);
+	wake_up_all(&dev_priv->display.gmbus.wait_queue);
 }
 
 static void dp_aux_irq_handler(struct drm_i915_private *dev_priv)
 {
-	wake_up_all(&dev_priv->gmbus_wait_queue);
+	wake_up_all(&dev_priv->display.gmbus.wait_queue);
 }
 
 #if defined(CONFIG_DEBUG_FS)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2e3aa684cf1b..bc896d3855b7 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1464,7 +1464,7 @@
 /*
  * GPIO regs
  */
-#define GPIO(gpio)		_MMIO(dev_priv->gpio_mmio_base + 0x5010 + \
+#define GPIO(gpio)		_MMIO(dev_priv->display.gmbus.mmio_base + 0x5010 + \
 				      4 * (gpio))
 
 # define GPIO_CLOCK_DIR_MASK		(1 << 0)
@@ -1482,7 +1482,7 @@
 # define GPIO_DATA_VAL_IN		(1 << 12)
 # define GPIO_DATA_PULLUP_DISABLE	(1 << 13)
 
-#define GMBUS0			_MMIO(dev_priv->gpio_mmio_base + 0x5100) /* clock/port select */
+#define GMBUS0			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5100) /* clock/port select */
 #define   GMBUS_AKSV_SELECT	(1 << 11)
 #define   GMBUS_RATE_100KHZ	(0 << 8)
 #define   GMBUS_RATE_50KHZ	(1 << 8)
@@ -1491,7 +1491,7 @@
 #define   GMBUS_HOLD_EXT	(1 << 7) /* 300ns hold time, rsvd on Pineview */
 #define   GMBUS_BYTE_CNT_OVERRIDE (1 << 6)
 
-#define GMBUS1			_MMIO(dev_priv->gpio_mmio_base + 0x5104) /* command/status */
+#define GMBUS1			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5104) /* command/status */
 #define   GMBUS_SW_CLR_INT	(1 << 31)
 #define   GMBUS_SW_RDY		(1 << 30)
 #define   GMBUS_ENT		(1 << 29) /* enable timeout */
@@ -1506,7 +1506,7 @@
 #define   GMBUS_SLAVE_ADDR_SHIFT 1
 #define   GMBUS_SLAVE_READ	(1 << 0)
 #define   GMBUS_SLAVE_WRITE	(0 << 0)
-#define GMBUS2			_MMIO(dev_priv->gpio_mmio_base + 0x5108) /* status */
+#define GMBUS2			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5108) /* status */
 #define   GMBUS_INUSE		(1 << 15)
 #define   GMBUS_HW_WAIT_PHASE	(1 << 14)
 #define   GMBUS_STALL_TIMEOUT	(1 << 13)
@@ -1514,14 +1514,14 @@
 #define   GMBUS_HW_RDY		(1 << 11)
 #define   GMBUS_SATOER		(1 << 10)
 #define   GMBUS_ACTIVE		(1 << 9)
-#define GMBUS3			_MMIO(dev_priv->gpio_mmio_base + 0x510c) /* data buffer bytes 3-0 */
-#define GMBUS4			_MMIO(dev_priv->gpio_mmio_base + 0x5110) /* interrupt mask (Pineview+) */
+#define GMBUS3			_MMIO(dev_priv->display.gmbus.mmio_base + 0x510c) /* data buffer bytes 3-0 */
+#define GMBUS4			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5110) /* interrupt mask (Pineview+) */
 #define   GMBUS_SLAVE_TIMEOUT_EN (1 << 4)
 #define   GMBUS_NAK_EN		(1 << 3)
 #define   GMBUS_IDLE_EN		(1 << 2)
 #define   GMBUS_HW_WAIT_EN	(1 << 1)
 #define   GMBUS_HW_RDY_EN	(1 << 0)
-#define GMBUS5			_MMIO(dev_priv->gpio_mmio_base + 0x5120) /* byte index */
+#define GMBUS5			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5120) /* byte index */
 #define   GMBUS_2BYTE_INDEX_EN	(1 << 31)
 
 /*
-- 
2.34.1

