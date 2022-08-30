Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A415A60C0
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 12:28:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E97110E044;
	Tue, 30 Aug 2022 10:28:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E558110E044
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 10:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661855309; x=1693391309;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9zNshOKoagQtopKfMn9t/phjcrQagvik8Oj++ILRzp4=;
 b=g22Y8x4TC6vNOS5UVf4621ZwOv0cW9z5d4MwffczBLfusRNcyFR0gyaa
 mA7wZ43264U9XOQUe++UwcMGAS85d4F/Qf+CNoHe324ZTh1++ED2G1LoG
 Iy0u+Hxy3BK5sHLYXU2HQK7H3sCOVYafcPLmpPy9SPDDp+uWKsHhQmYqD
 gU7DJlzQMMrbJSlRlkS/fCp1H28Vse7CG4Q3cxKXYtwSWor0a97Ag+4T6
 vm6BhWPWNvPrF6Kyihz3Ug+0wC3uq2W4EIVPmiGXTWqcdDDo+AZQzaXLY
 rlxf3TMEokAJk30w9n1AjVRUXfwZbx0F/6/IzGT+sVtAXCjf9AyR1ksIZ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="293883836"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="293883836"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 03:28:27 -0700
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="679982885"
Received: from amrabet-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 03:28:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Aug 2022 13:28:00 +0300
Message-Id: <a4f482c1f523d7225420f8386f1eea6d639db843.1661855191.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661855191.git.jani.nikula@intel.com>
References: <cover.1661855191.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/6] drm/i915/gmbus: stop using implicit
 dev_priv in register definitions
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since the beginning of time, we've implicitly assumed dev_priv is
present as a local variable in many places. We've gone a long way in
removing many of them, but the register macro definitions are the last
holdout. Remove them from the gmbus macros.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus.c    | 54 +++++++++----------
 .../gpu/drm/i915/display/intel_gmbus_regs.h   | 14 ++---
 2 files changed, 34 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 3270fcd3f009..9e9691e2a45a 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -171,10 +171,10 @@ to_intel_gmbus(struct i2c_adapter *i2c)
 }
 
 void
-intel_gmbus_reset(struct drm_i915_private *dev_priv)
+intel_gmbus_reset(struct drm_i915_private *i915)
 {
-	intel_de_write(dev_priv, GMBUS0, 0);
-	intel_de_write(dev_priv, GMBUS4, 0);
+	intel_de_write(i915, GMBUS0(i915), 0);
+	intel_de_write(i915, GMBUS4(i915), 0);
 }
 
 static void pnv_gmbus_clock_gating(struct drm_i915_private *dev_priv,
@@ -371,16 +371,16 @@ static int gmbus_wait(struct drm_i915_private *dev_priv, u32 status, u32 irq_en)
 		irq_en = 0;
 
 	add_wait_queue(&dev_priv->display.gmbus.wait_queue, &wait);
-	intel_de_write_fw(dev_priv, GMBUS4, irq_en);
+	intel_de_write_fw(dev_priv, GMBUS4(dev_priv), irq_en);
 
 	status |= GMBUS_SATOER;
-	ret = wait_for_us((gmbus2 = intel_de_read_fw(dev_priv, GMBUS2)) & status,
+	ret = wait_for_us((gmbus2 = intel_de_read_fw(dev_priv, GMBUS2(dev_priv))) & status,
 			  2);
 	if (ret)
-		ret = wait_for((gmbus2 = intel_de_read_fw(dev_priv, GMBUS2)) & status,
+		ret = wait_for((gmbus2 = intel_de_read_fw(dev_priv, GMBUS2(dev_priv))) & status,
 			       50);
 
-	intel_de_write_fw(dev_priv, GMBUS4, 0);
+	intel_de_write_fw(dev_priv, GMBUS4(dev_priv), 0);
 	remove_wait_queue(&dev_priv->display.gmbus.wait_queue, &wait);
 
 	if (gmbus2 & GMBUS_SATOER)
@@ -402,13 +402,13 @@ gmbus_wait_idle(struct drm_i915_private *dev_priv)
 		irq_enable = GMBUS_IDLE_EN;
 
 	add_wait_queue(&dev_priv->display.gmbus.wait_queue, &wait);
-	intel_de_write_fw(dev_priv, GMBUS4, irq_enable);
+	intel_de_write_fw(dev_priv, GMBUS4(dev_priv), irq_enable);
 
 	ret = intel_wait_for_register_fw(&dev_priv->uncore,
-					 GMBUS2, GMBUS_ACTIVE, 0,
+					 GMBUS2(dev_priv), GMBUS_ACTIVE, 0,
 					 10);
 
-	intel_de_write_fw(dev_priv, GMBUS4, 0);
+	intel_de_write_fw(dev_priv, GMBUS4(dev_priv), 0);
 	remove_wait_queue(&dev_priv->display.gmbus.wait_queue, &wait);
 
 	return ret;
@@ -439,11 +439,11 @@ gmbus_xfer_read_chunk(struct drm_i915_private *dev_priv,
 			len++;
 		}
 		size = len % 256 + 256;
-		intel_de_write_fw(dev_priv, GMBUS0,
+		intel_de_write_fw(dev_priv, GMBUS0(dev_priv),
 				  gmbus0_reg | GMBUS_BYTE_CNT_OVERRIDE);
 	}
 
-	intel_de_write_fw(dev_priv, GMBUS1,
+	intel_de_write_fw(dev_priv, GMBUS1(dev_priv),
 			  gmbus1_index | GMBUS_CYCLE_WAIT | (size << GMBUS_BYTE_COUNT_SHIFT) | (addr << GMBUS_SLAVE_ADDR_SHIFT) | GMBUS_SLAVE_READ | GMBUS_SW_RDY);
 	while (len) {
 		int ret;
@@ -453,7 +453,7 @@ gmbus_xfer_read_chunk(struct drm_i915_private *dev_priv,
 		if (ret)
 			return ret;
 
-		val = intel_de_read_fw(dev_priv, GMBUS3);
+		val = intel_de_read_fw(dev_priv, GMBUS3(dev_priv));
 		do {
 			if (extra_byte_added && len == 1)
 				break;
@@ -464,7 +464,7 @@ gmbus_xfer_read_chunk(struct drm_i915_private *dev_priv,
 
 		if (burst_read && len == size - 4)
 			/* Reset the override bit */
-			intel_de_write_fw(dev_priv, GMBUS0, gmbus0_reg);
+			intel_de_write_fw(dev_priv, GMBUS0(dev_priv), gmbus0_reg);
 	}
 
 	return 0;
@@ -521,8 +521,8 @@ gmbus_xfer_write_chunk(struct drm_i915_private *dev_priv,
 		len -= 1;
 	}
 
-	intel_de_write_fw(dev_priv, GMBUS3, val);
-	intel_de_write_fw(dev_priv, GMBUS1,
+	intel_de_write_fw(dev_priv, GMBUS3(dev_priv), val);
+	intel_de_write_fw(dev_priv, GMBUS1(dev_priv),
 			  gmbus1_index | GMBUS_CYCLE_WAIT | (chunk_size << GMBUS_BYTE_COUNT_SHIFT) | (addr << GMBUS_SLAVE_ADDR_SHIFT) | GMBUS_SLAVE_WRITE | GMBUS_SW_RDY);
 	while (len) {
 		int ret;
@@ -532,7 +532,7 @@ gmbus_xfer_write_chunk(struct drm_i915_private *dev_priv,
 			val |= *buf++ << (8 * loop);
 		} while (--len && ++loop < 4);
 
-		intel_de_write_fw(dev_priv, GMBUS3, val);
+		intel_de_write_fw(dev_priv, GMBUS3(dev_priv), val);
 
 		ret = gmbus_wait(dev_priv, GMBUS_HW_RDY, GMBUS_HW_RDY_EN);
 		if (ret)
@@ -597,7 +597,7 @@ gmbus_index_xfer(struct drm_i915_private *dev_priv, struct i2c_msg *msgs,
 
 	/* GMBUS5 holds 16-bit index */
 	if (gmbus5)
-		intel_de_write_fw(dev_priv, GMBUS5, gmbus5);
+		intel_de_write_fw(dev_priv, GMBUS5(dev_priv), gmbus5);
 
 	if (msgs[1].flags & I2C_M_RD)
 		ret = gmbus_xfer_read(dev_priv, &msgs[1], gmbus0_reg,
@@ -607,7 +607,7 @@ gmbus_index_xfer(struct drm_i915_private *dev_priv, struct i2c_msg *msgs,
 
 	/* Clear GMBUS5 after each index transfer */
 	if (gmbus5)
-		intel_de_write_fw(dev_priv, GMBUS5, 0);
+		intel_de_write_fw(dev_priv, GMBUS5(dev_priv), 0);
 
 	return ret;
 }
@@ -628,7 +628,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 		pch_gmbus_clock_gating(dev_priv, false);
 
 retry:
-	intel_de_write_fw(dev_priv, GMBUS0, gmbus0_source | bus->reg0);
+	intel_de_write_fw(dev_priv, GMBUS0(dev_priv), gmbus0_source | bus->reg0);
 
 	for (; i < num; i += inc) {
 		inc = 1;
@@ -656,7 +656,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 	 * a STOP on the very first cycle. To simplify the code we
 	 * unconditionally generate the STOP condition with an additional gmbus
 	 * cycle. */
-	intel_de_write_fw(dev_priv, GMBUS1, GMBUS_CYCLE_STOP | GMBUS_SW_RDY);
+	intel_de_write_fw(dev_priv, GMBUS1(dev_priv), GMBUS_CYCLE_STOP | GMBUS_SW_RDY);
 
 	/* Mark the GMBUS interface as disabled after waiting for idle.
 	 * We will re-enable it at the start of the next xfer,
@@ -668,7 +668,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 			    adapter->name);
 		ret = -ETIMEDOUT;
 	}
-	intel_de_write_fw(dev_priv, GMBUS0, 0);
+	intel_de_write_fw(dev_priv, GMBUS0(dev_priv), 0);
 	ret = ret ?: i;
 	goto out;
 
@@ -698,9 +698,9 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 	 * of resetting the GMBUS controller and so clearing the
 	 * BUS_ERROR raised by the slave's NAK.
 	 */
-	intel_de_write_fw(dev_priv, GMBUS1, GMBUS_SW_CLR_INT);
-	intel_de_write_fw(dev_priv, GMBUS1, 0);
-	intel_de_write_fw(dev_priv, GMBUS0, 0);
+	intel_de_write_fw(dev_priv, GMBUS1(dev_priv), GMBUS_SW_CLR_INT);
+	intel_de_write_fw(dev_priv, GMBUS1(dev_priv), 0);
+	intel_de_write_fw(dev_priv, GMBUS0(dev_priv), 0);
 
 	drm_dbg_kms(&dev_priv->drm, "GMBUS [%s] NAK for addr: %04x %c(%d)\n",
 		    adapter->name, msgs[i].addr,
@@ -725,7 +725,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 	drm_dbg_kms(&dev_priv->drm,
 		    "GMBUS [%s] timed out, falling back to bit banging on pin %d\n",
 		    bus->adapter.name, bus->reg0 & 0xff);
-	intel_de_write_fw(dev_priv, GMBUS0, 0);
+	intel_de_write_fw(dev_priv, GMBUS0(dev_priv), 0);
 
 	/*
 	 * Hardware may not support GMBUS over these pins? Try GPIO bitbanging
@@ -915,7 +915,7 @@ int intel_gmbus_setup(struct drm_i915_private *dev_priv)
 		if (IS_I830(dev_priv))
 			bus->force_bit = 1;
 
-		intel_gpio_setup(bus, GPIO(gmbus_pin->gpio));
+		intel_gpio_setup(bus, GPIO(dev_priv, gmbus_pin->gpio));
 
 		ret = i2c_add_adapter(&bus->adapter);
 		if (ret) {
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus_regs.h b/drivers/gpu/drm/i915/display/intel_gmbus_regs.h
index 1d58925df856..53aacbda983c 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_gmbus_regs.h
@@ -10,7 +10,7 @@
 
 #define GMBUS_MMIO_BASE(__i915) ((__i915)->display.gmbus.mmio_base)
 
-#define GPIO(gpio)		_MMIO(GMBUS_MMIO_BASE(dev_priv) + 0x5010 + 4 * (gpio))
+#define GPIO(__i915, gpio)	_MMIO(GMBUS_MMIO_BASE(__i915) + 0x5010 + 4 * (gpio))
 #define   GPIO_CLOCK_DIR_MASK		(1 << 0)
 #define   GPIO_CLOCK_DIR_IN		(0 << 1)
 #define   GPIO_CLOCK_DIR_OUT		(1 << 1)
@@ -27,7 +27,7 @@
 #define   GPIO_DATA_PULLUP_DISABLE	(1 << 13)
 
 /* clock/port select */
-#define GMBUS0			_MMIO(GMBUS_MMIO_BASE(dev_priv) + 0x5100)
+#define GMBUS0(__i915)		_MMIO(GMBUS_MMIO_BASE(__i915) + 0x5100)
 #define   GMBUS_AKSV_SELECT		(1 << 11)
 #define   GMBUS_RATE_100KHZ		(0 << 8)
 #define   GMBUS_RATE_50KHZ		(1 << 8)
@@ -37,7 +37,7 @@
 #define   GMBUS_BYTE_CNT_OVERRIDE	(1 << 6)
 
 /* command/status */
-#define GMBUS1			_MMIO(GMBUS_MMIO_BASE(dev_priv) + 0x5104)
+#define GMBUS1(__i915)		_MMIO(GMBUS_MMIO_BASE(__i915) + 0x5104)
 #define   GMBUS_SW_CLR_INT		(1 << 31)
 #define   GMBUS_SW_RDY			(1 << 30)
 #define   GMBUS_ENT			(1 << 29) /* enable timeout */
@@ -54,7 +54,7 @@
 #define   GMBUS_SLAVE_WRITE		(0 << 0)
 
 /* status */
-#define GMBUS2			_MMIO(GMBUS_MMIO_BASE(dev_priv) + 0x5108)
+#define GMBUS2(__i915)		_MMIO(GMBUS_MMIO_BASE(__i915) + 0x5108)
 #define   GMBUS_INUSE			(1 << 15)
 #define   GMBUS_HW_WAIT_PHASE		(1 << 14)
 #define   GMBUS_STALL_TIMEOUT		(1 << 13)
@@ -64,10 +64,10 @@
 #define   GMBUS_ACTIVE			(1 << 9)
 
 /* data buffer bytes 3-0 */
-#define GMBUS3			_MMIO(GMBUS_MMIO_BASE(dev_priv) + 0x510c)
+#define GMBUS3(__i915)		_MMIO(GMBUS_MMIO_BASE(__i915) + 0x510c)
 
 /* interrupt mask (Pineview+) */
-#define GMBUS4			_MMIO(GMBUS_MMIO_BASE(dev_priv) + 0x5110)
+#define GMBUS4(__i915)		_MMIO(GMBUS_MMIO_BASE(__i915) + 0x5110)
 #define   GMBUS_SLAVE_TIMEOUT_EN	(1 << 4)
 #define   GMBUS_NAK_EN			(1 << 3)
 #define   GMBUS_IDLE_EN			(1 << 2)
@@ -75,7 +75,7 @@
 #define   GMBUS_HW_RDY_EN		(1 << 0)
 
 /* byte index */
-#define GMBUS5			_MMIO(GMBUS_MMIO_BASE(dev_priv) + 0x5120)
+#define GMBUS5(__i915)		_MMIO(GMBUS_MMIO_BASE(__i915) + 0x5120)
 #define   GMBUS_2BYTE_INDEX_EN		(1 << 31)
 
 #endif /* __INTEL_GMBUS_REGS_H__ */
-- 
2.34.1

