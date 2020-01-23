Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F19F6146A93
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 15:01:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A5B66FCD0;
	Thu, 23 Jan 2020 14:00:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3181D6FCCE
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 14:00:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 06:00:26 -0800
X-IronPort-AV: E=Sophos;i="5.70,354,1574150400"; d="scan'208";a="400341581"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 06:00:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jan 2020 16:00:02 +0200
Message-Id: <20200123140004.14136-4-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200123140004.14136-1-jani.nikula@intel.com>
References: <20200123140004.14136-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH RESEND 4/6] drm/i915/gmbus: use intel de
 functions for forcewake register access
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move away from I915_READ_FW() and I915_WRITE_FW() in display code, and
switch to using intel_de_read_fw() and intel_de_write_fw(),
respectively. Also switch I915_READ() and I915_WRITE() over in this file
while at it.

No functional changes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus.c | 74 ++++++++++------------
 1 file changed, 35 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 3d4d19ac1d14..508308555dc6 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -143,8 +143,8 @@ to_intel_gmbus(struct i2c_adapter *i2c)
 void
 intel_gmbus_reset(struct drm_i915_private *dev_priv)
 {
-	I915_WRITE(GMBUS0, 0);
-	I915_WRITE(GMBUS4, 0);
+	intel_de_write(dev_priv, GMBUS0, 0);
+	intel_de_write(dev_priv, GMBUS4, 0);
 }
 
 static void pnv_gmbus_clock_gating(struct drm_i915_private *dev_priv,
@@ -153,12 +153,12 @@ static void pnv_gmbus_clock_gating(struct drm_i915_private *dev_priv,
 	u32 val;
 
 	/* When using bit bashing for I2C, this bit needs to be set to 1 */
-	val = I915_READ(DSPCLK_GATE_D);
+	val = intel_de_read(dev_priv, DSPCLK_GATE_D);
 	if (!enable)
 		val |= PNV_GMBUSUNIT_CLOCK_GATE_DISABLE;
 	else
 		val &= ~PNV_GMBUSUNIT_CLOCK_GATE_DISABLE;
-	I915_WRITE(DSPCLK_GATE_D, val);
+	intel_de_write(dev_priv, DSPCLK_GATE_D, val);
 }
 
 static void pch_gmbus_clock_gating(struct drm_i915_private *dev_priv,
@@ -166,12 +166,12 @@ static void pch_gmbus_clock_gating(struct drm_i915_private *dev_priv,
 {
 	u32 val;
 
-	val = I915_READ(SOUTH_DSPCLK_GATE_D);
+	val = intel_de_read(dev_priv, SOUTH_DSPCLK_GATE_D);
 	if (!enable)
 		val |= PCH_GMBUSUNIT_CLOCK_GATE_DISABLE;
 	else
 		val &= ~PCH_GMBUSUNIT_CLOCK_GATE_DISABLE;
-	I915_WRITE(SOUTH_DSPCLK_GATE_D, val);
+	intel_de_write(dev_priv, SOUTH_DSPCLK_GATE_D, val);
 }
 
 static void bxt_gmbus_clock_gating(struct drm_i915_private *dev_priv,
@@ -179,12 +179,12 @@ static void bxt_gmbus_clock_gating(struct drm_i915_private *dev_priv,
 {
 	u32 val;
 
-	val = I915_READ(GEN9_CLKGATE_DIS_4);
+	val = intel_de_read(dev_priv, GEN9_CLKGATE_DIS_4);
 	if (!enable)
 		val |= BXT_GMBUS_GATING_DIS;
 	else
 		val &= ~BXT_GMBUS_GATING_DIS;
-	I915_WRITE(GEN9_CLKGATE_DIS_4, val);
+	intel_de_write(dev_priv, GEN9_CLKGATE_DIS_4, val);
 }
 
 static u32 get_reserved(struct intel_gmbus *bus)
@@ -337,14 +337,16 @@ static int gmbus_wait(struct drm_i915_private *dev_priv, u32 status, u32 irq_en)
 		irq_en = 0;
 
 	add_wait_queue(&dev_priv->gmbus_wait_queue, &wait);
-	I915_WRITE_FW(GMBUS4, irq_en);
+	intel_de_write_fw(dev_priv, GMBUS4, irq_en);
 
 	status |= GMBUS_SATOER;
-	ret = wait_for_us((gmbus2 = I915_READ_FW(GMBUS2)) & status, 2);
+	ret = wait_for_us((gmbus2 = intel_de_read_fw(dev_priv, GMBUS2)) & status,
+			  2);
 	if (ret)
-		ret = wait_for((gmbus2 = I915_READ_FW(GMBUS2)) & status, 50);
+		ret = wait_for((gmbus2 = intel_de_read_fw(dev_priv, GMBUS2)) & status,
+			       50);
 
-	I915_WRITE_FW(GMBUS4, 0);
+	intel_de_write_fw(dev_priv, GMBUS4, 0);
 	remove_wait_queue(&dev_priv->gmbus_wait_queue, &wait);
 
 	if (gmbus2 & GMBUS_SATOER)
@@ -366,13 +368,13 @@ gmbus_wait_idle(struct drm_i915_private *dev_priv)
 		irq_enable = GMBUS_IDLE_EN;
 
 	add_wait_queue(&dev_priv->gmbus_wait_queue, &wait);
-	I915_WRITE_FW(GMBUS4, irq_enable);
+	intel_de_write_fw(dev_priv, GMBUS4, irq_enable);
 
 	ret = intel_wait_for_register_fw(&dev_priv->uncore,
 					 GMBUS2, GMBUS_ACTIVE, 0,
 					 10);
 
-	I915_WRITE_FW(GMBUS4, 0);
+	intel_de_write_fw(dev_priv, GMBUS4, 0);
 	remove_wait_queue(&dev_priv->gmbus_wait_queue, &wait);
 
 	return ret;
@@ -404,15 +406,12 @@ gmbus_xfer_read_chunk(struct drm_i915_private *dev_priv,
 			len++;
 		}
 		size = len % 256 + 256;
-		I915_WRITE_FW(GMBUS0, gmbus0_reg | GMBUS_BYTE_CNT_OVERRIDE);
+		intel_de_write_fw(dev_priv, GMBUS0,
+				  gmbus0_reg | GMBUS_BYTE_CNT_OVERRIDE);
 	}
 
-	I915_WRITE_FW(GMBUS1,
-		      gmbus1_index |
-		      GMBUS_CYCLE_WAIT |
-		      (size << GMBUS_BYTE_COUNT_SHIFT) |
-		      (addr << GMBUS_SLAVE_ADDR_SHIFT) |
-		      GMBUS_SLAVE_READ | GMBUS_SW_RDY);
+	intel_de_write_fw(dev_priv, GMBUS1,
+			  gmbus1_index | GMBUS_CYCLE_WAIT | (size << GMBUS_BYTE_COUNT_SHIFT) | (addr << GMBUS_SLAVE_ADDR_SHIFT) | GMBUS_SLAVE_READ | GMBUS_SW_RDY);
 	while (len) {
 		int ret;
 		u32 val, loop = 0;
@@ -421,7 +420,7 @@ gmbus_xfer_read_chunk(struct drm_i915_private *dev_priv,
 		if (ret)
 			return ret;
 
-		val = I915_READ_FW(GMBUS3);
+		val = intel_de_read_fw(dev_priv, GMBUS3);
 		do {
 			if (extra_byte_added && len == 1)
 				break;
@@ -432,7 +431,7 @@ gmbus_xfer_read_chunk(struct drm_i915_private *dev_priv,
 
 		if (burst_read && len == size - 4)
 			/* Reset the override bit */
-			I915_WRITE_FW(GMBUS0, gmbus0_reg);
+			intel_de_write_fw(dev_priv, GMBUS0, gmbus0_reg);
 	}
 
 	return 0;
@@ -489,12 +488,9 @@ gmbus_xfer_write_chunk(struct drm_i915_private *dev_priv,
 		len -= 1;
 	}
 
-	I915_WRITE_FW(GMBUS3, val);
-	I915_WRITE_FW(GMBUS1,
-		      gmbus1_index | GMBUS_CYCLE_WAIT |
-		      (chunk_size << GMBUS_BYTE_COUNT_SHIFT) |
-		      (addr << GMBUS_SLAVE_ADDR_SHIFT) |
-		      GMBUS_SLAVE_WRITE | GMBUS_SW_RDY);
+	intel_de_write_fw(dev_priv, GMBUS3, val);
+	intel_de_write_fw(dev_priv, GMBUS1,
+			  gmbus1_index | GMBUS_CYCLE_WAIT | (chunk_size << GMBUS_BYTE_COUNT_SHIFT) | (addr << GMBUS_SLAVE_ADDR_SHIFT) | GMBUS_SLAVE_WRITE | GMBUS_SW_RDY);
 	while (len) {
 		int ret;
 
@@ -503,7 +499,7 @@ gmbus_xfer_write_chunk(struct drm_i915_private *dev_priv,
 			val |= *buf++ << (8 * loop);
 		} while (--len && ++loop < 4);
 
-		I915_WRITE_FW(GMBUS3, val);
+		intel_de_write_fw(dev_priv, GMBUS3, val);
 
 		ret = gmbus_wait(dev_priv, GMBUS_HW_RDY, GMBUS_HW_RDY_EN);
 		if (ret)
@@ -568,7 +564,7 @@ gmbus_index_xfer(struct drm_i915_private *dev_priv, struct i2c_msg *msgs,
 
 	/* GMBUS5 holds 16-bit index */
 	if (gmbus5)
-		I915_WRITE_FW(GMBUS5, gmbus5);
+		intel_de_write_fw(dev_priv, GMBUS5, gmbus5);
 
 	if (msgs[1].flags & I2C_M_RD)
 		ret = gmbus_xfer_read(dev_priv, &msgs[1], gmbus0_reg,
@@ -578,7 +574,7 @@ gmbus_index_xfer(struct drm_i915_private *dev_priv, struct i2c_msg *msgs,
 
 	/* Clear GMBUS5 after each index transfer */
 	if (gmbus5)
-		I915_WRITE_FW(GMBUS5, 0);
+		intel_de_write_fw(dev_priv, GMBUS5, 0);
 
 	return ret;
 }
@@ -601,7 +597,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 		pch_gmbus_clock_gating(dev_priv, false);
 
 retry:
-	I915_WRITE_FW(GMBUS0, gmbus0_source | bus->reg0);
+	intel_de_write_fw(dev_priv, GMBUS0, gmbus0_source | bus->reg0);
 
 	for (; i < num; i += inc) {
 		inc = 1;
@@ -629,7 +625,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 	 * a STOP on the very first cycle. To simplify the code we
 	 * unconditionally generate the STOP condition with an additional gmbus
 	 * cycle. */
-	I915_WRITE_FW(GMBUS1, GMBUS_CYCLE_STOP | GMBUS_SW_RDY);
+	intel_de_write_fw(dev_priv, GMBUS1, GMBUS_CYCLE_STOP | GMBUS_SW_RDY);
 
 	/* Mark the GMBUS interface as disabled after waiting for idle.
 	 * We will re-enable it at the start of the next xfer,
@@ -640,7 +636,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 			 adapter->name);
 		ret = -ETIMEDOUT;
 	}
-	I915_WRITE_FW(GMBUS0, 0);
+	intel_de_write_fw(dev_priv, GMBUS0, 0);
 	ret = ret ?: i;
 	goto out;
 
@@ -669,9 +665,9 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 	 * of resetting the GMBUS controller and so clearing the
 	 * BUS_ERROR raised by the slave's NAK.
 	 */
-	I915_WRITE_FW(GMBUS1, GMBUS_SW_CLR_INT);
-	I915_WRITE_FW(GMBUS1, 0);
-	I915_WRITE_FW(GMBUS0, 0);
+	intel_de_write_fw(dev_priv, GMBUS1, GMBUS_SW_CLR_INT);
+	intel_de_write_fw(dev_priv, GMBUS1, 0);
+	intel_de_write_fw(dev_priv, GMBUS0, 0);
 
 	DRM_DEBUG_KMS("GMBUS [%s] NAK for addr: %04x %c(%d)\n",
 			 adapter->name, msgs[i].addr,
@@ -694,7 +690,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 timeout:
 	DRM_DEBUG_KMS("GMBUS [%s] timed out, falling back to bit banging on pin %d\n",
 		      bus->adapter.name, bus->reg0 & 0xff);
-	I915_WRITE_FW(GMBUS0, 0);
+	intel_de_write_fw(dev_priv, GMBUS0, 0);
 
 	/*
 	 * Hardware may not support GMBUS over these pins? Try GPIO bitbanging
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
