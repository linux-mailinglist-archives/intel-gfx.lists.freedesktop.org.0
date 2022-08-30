Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F405A60C5
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 12:28:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65A8610E04E;
	Tue, 30 Aug 2022 10:28:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB6D310E04E
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 10:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661855316; x=1693391316;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pgB8scncwDltJC3RP2wLz05/NrOCNpOpPNYRoPQbWRY=;
 b=MJJg0SxLH1KRzJy1wHDkEaSIgOKI7eAKoDKJM3nIx7EQonEIfmUtngOk
 mL2zP+OEGveeUI6Cj8oz6VUTcRvDmXOoxdRFC8ehV4KkzdZsCtsgOw54q
 +9XvAox8T99RAzWuZp3uG6bXNKl7MXJGrIBLCOxnGTDl+jqDx8oDmZPqw
 o71wdne2HXqWnsY2Clu+9Wwfh9GDXxiNXRpl8l48VQGBlK2GDStRFons4
 IjezvGiMpD5nH7YNK2N3G739jRjNoBqs1S8xP35u6b8VB9Mm/I6ESRVGC
 rv+xsxWujvfyw2olXAb1EyPuzznnvDfb2nMdCvfHviVxsb2ACAhpfC+sA g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="321267196"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="321267196"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 03:28:35 -0700
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="753980701"
Received: from amrabet-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.211])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 03:28:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Aug 2022 13:28:02 +0300
Message-Id: <fcf16a65f7975379a887ed57c623b25de7b344c8.1661855191.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661855191.git.jani.nikula@intel.com>
References: <cover.1661855191.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/gmbus: mass dev_priv -> i915 rename
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

Now that gmbus no longer uses macros that assume dev_priv is implicitly
available, mass rename dev_priv to i915 in gmbus code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus.c | 268 ++++++++++-----------
 1 file changed, 134 insertions(+), 134 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 0656d1b92493..6f6cfccad477 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -46,7 +46,7 @@ struct intel_gmbus {
 	u32 reg0;
 	i915_reg_t gpio_reg;
 	struct i2c_algo_bit_data bit_algo;
-	struct drm_i915_private *dev_priv;
+	struct drm_i915_private *i915;
 };
 
 struct gmbus_pin {
@@ -177,49 +177,49 @@ intel_gmbus_reset(struct drm_i915_private *i915)
 	intel_de_write(i915, GMBUS4(i915), 0);
 }
 
-static void pnv_gmbus_clock_gating(struct drm_i915_private *dev_priv,
+static void pnv_gmbus_clock_gating(struct drm_i915_private *i915,
 				   bool enable)
 {
 	u32 val;
 
 	/* When using bit bashing for I2C, this bit needs to be set to 1 */
-	val = intel_de_read(dev_priv, DSPCLK_GATE_D(dev_priv));
+	val = intel_de_read(i915, DSPCLK_GATE_D(i915));
 	if (!enable)
 		val |= PNV_GMBUSUNIT_CLOCK_GATE_DISABLE;
 	else
 		val &= ~PNV_GMBUSUNIT_CLOCK_GATE_DISABLE;
-	intel_de_write(dev_priv, DSPCLK_GATE_D(dev_priv), val);
+	intel_de_write(i915, DSPCLK_GATE_D(i915), val);
 }
 
-static void pch_gmbus_clock_gating(struct drm_i915_private *dev_priv,
+static void pch_gmbus_clock_gating(struct drm_i915_private *i915,
 				   bool enable)
 {
 	u32 val;
 
-	val = intel_de_read(dev_priv, SOUTH_DSPCLK_GATE_D);
+	val = intel_de_read(i915, SOUTH_DSPCLK_GATE_D);
 	if (!enable)
 		val |= PCH_GMBUSUNIT_CLOCK_GATE_DISABLE;
 	else
 		val &= ~PCH_GMBUSUNIT_CLOCK_GATE_DISABLE;
-	intel_de_write(dev_priv, SOUTH_DSPCLK_GATE_D, val);
+	intel_de_write(i915, SOUTH_DSPCLK_GATE_D, val);
 }
 
-static void bxt_gmbus_clock_gating(struct drm_i915_private *dev_priv,
+static void bxt_gmbus_clock_gating(struct drm_i915_private *i915,
 				   bool enable)
 {
 	u32 val;
 
-	val = intel_de_read(dev_priv, GEN9_CLKGATE_DIS_4);
+	val = intel_de_read(i915, GEN9_CLKGATE_DIS_4);
 	if (!enable)
 		val |= BXT_GMBUS_GATING_DIS;
 	else
 		val &= ~BXT_GMBUS_GATING_DIS;
-	intel_de_write(dev_priv, GEN9_CLKGATE_DIS_4, val);
+	intel_de_write(i915, GEN9_CLKGATE_DIS_4, val);
 }
 
 static u32 get_reserved(struct intel_gmbus *bus)
 {
-	struct drm_i915_private *i915 = bus->dev_priv;
+	struct drm_i915_private *i915 = bus->i915;
 	struct intel_uncore *uncore = &i915->uncore;
 	u32 reserved = 0;
 
@@ -235,7 +235,7 @@ static u32 get_reserved(struct intel_gmbus *bus)
 static int get_clock(void *data)
 {
 	struct intel_gmbus *bus = data;
-	struct intel_uncore *uncore = &bus->dev_priv->uncore;
+	struct intel_uncore *uncore = &bus->i915->uncore;
 	u32 reserved = get_reserved(bus);
 
 	intel_uncore_write_notrace(uncore,
@@ -250,7 +250,7 @@ static int get_clock(void *data)
 static int get_data(void *data)
 {
 	struct intel_gmbus *bus = data;
-	struct intel_uncore *uncore = &bus->dev_priv->uncore;
+	struct intel_uncore *uncore = &bus->i915->uncore;
 	u32 reserved = get_reserved(bus);
 
 	intel_uncore_write_notrace(uncore,
@@ -265,7 +265,7 @@ static int get_data(void *data)
 static void set_clock(void *data, int state_high)
 {
 	struct intel_gmbus *bus = data;
-	struct intel_uncore *uncore = &bus->dev_priv->uncore;
+	struct intel_uncore *uncore = &bus->i915->uncore;
 	u32 reserved = get_reserved(bus);
 	u32 clock_bits;
 
@@ -284,7 +284,7 @@ static void set_clock(void *data, int state_high)
 static void set_data(void *data, int state_high)
 {
 	struct intel_gmbus *bus = data;
-	struct intel_uncore *uncore = &bus->dev_priv->uncore;
+	struct intel_uncore *uncore = &bus->i915->uncore;
 	u32 reserved = get_reserved(bus);
 	u32 data_bits;
 
@@ -302,12 +302,12 @@ static int
 intel_gpio_pre_xfer(struct i2c_adapter *adapter)
 {
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
-	struct drm_i915_private *dev_priv = bus->dev_priv;
+	struct drm_i915_private *i915 = bus->i915;
 
-	intel_gmbus_reset(dev_priv);
+	intel_gmbus_reset(i915);
 
-	if (IS_PINEVIEW(dev_priv))
-		pnv_gmbus_clock_gating(dev_priv, false);
+	if (IS_PINEVIEW(i915))
+		pnv_gmbus_clock_gating(i915, false);
 
 	set_data(bus, 1);
 	set_clock(bus, 1);
@@ -319,13 +319,13 @@ static void
 intel_gpio_post_xfer(struct i2c_adapter *adapter)
 {
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
-	struct drm_i915_private *dev_priv = bus->dev_priv;
+	struct drm_i915_private *i915 = bus->i915;
 
 	set_data(bus, 1);
 	set_clock(bus, 1);
 
-	if (IS_PINEVIEW(dev_priv))
-		pnv_gmbus_clock_gating(dev_priv, true);
+	if (IS_PINEVIEW(i915))
+		pnv_gmbus_clock_gating(i915, true);
 }
 
 static void
@@ -357,7 +357,7 @@ static bool has_gmbus_irq(struct drm_i915_private *i915)
 	return HAS_GMBUS_IRQ(i915) && intel_irqs_enabled(i915);
 }
 
-static int gmbus_wait(struct drm_i915_private *dev_priv, u32 status, u32 irq_en)
+static int gmbus_wait(struct drm_i915_private *i915, u32 status, u32 irq_en)
 {
 	DEFINE_WAIT(wait);
 	u32 gmbus2;
@@ -367,21 +367,21 @@ static int gmbus_wait(struct drm_i915_private *dev_priv, u32 status, u32 irq_en)
 	 * we also need to check for NAKs besides the hw ready/idle signal, we
 	 * need to wake up periodically and check that ourselves.
 	 */
-	if (!has_gmbus_irq(dev_priv))
+	if (!has_gmbus_irq(i915))
 		irq_en = 0;
 
-	add_wait_queue(&dev_priv->display.gmbus.wait_queue, &wait);
-	intel_de_write_fw(dev_priv, GMBUS4(dev_priv), irq_en);
+	add_wait_queue(&i915->display.gmbus.wait_queue, &wait);
+	intel_de_write_fw(i915, GMBUS4(i915), irq_en);
 
 	status |= GMBUS_SATOER;
-	ret = wait_for_us((gmbus2 = intel_de_read_fw(dev_priv, GMBUS2(dev_priv))) & status,
+	ret = wait_for_us((gmbus2 = intel_de_read_fw(i915, GMBUS2(i915))) & status,
 			  2);
 	if (ret)
-		ret = wait_for((gmbus2 = intel_de_read_fw(dev_priv, GMBUS2(dev_priv))) & status,
+		ret = wait_for((gmbus2 = intel_de_read_fw(i915, GMBUS2(i915))) & status,
 			       50);
 
-	intel_de_write_fw(dev_priv, GMBUS4(dev_priv), 0);
-	remove_wait_queue(&dev_priv->display.gmbus.wait_queue, &wait);
+	intel_de_write_fw(i915, GMBUS4(i915), 0);
+	remove_wait_queue(&i915->display.gmbus.wait_queue, &wait);
 
 	if (gmbus2 & GMBUS_SATOER)
 		return -ENXIO;
@@ -390,7 +390,7 @@ static int gmbus_wait(struct drm_i915_private *dev_priv, u32 status, u32 irq_en)
 }
 
 static int
-gmbus_wait_idle(struct drm_i915_private *dev_priv)
+gmbus_wait_idle(struct drm_i915_private *i915)
 {
 	DEFINE_WAIT(wait);
 	u32 irq_enable;
@@ -398,35 +398,35 @@ gmbus_wait_idle(struct drm_i915_private *dev_priv)
 
 	/* Important: The hw handles only the first bit, so set only one! */
 	irq_enable = 0;
-	if (has_gmbus_irq(dev_priv))
+	if (has_gmbus_irq(i915))
 		irq_enable = GMBUS_IDLE_EN;
 
-	add_wait_queue(&dev_priv->display.gmbus.wait_queue, &wait);
-	intel_de_write_fw(dev_priv, GMBUS4(dev_priv), irq_enable);
+	add_wait_queue(&i915->display.gmbus.wait_queue, &wait);
+	intel_de_write_fw(i915, GMBUS4(i915), irq_enable);
 
-	ret = intel_wait_for_register_fw(&dev_priv->uncore,
-					 GMBUS2(dev_priv), GMBUS_ACTIVE, 0,
+	ret = intel_wait_for_register_fw(&i915->uncore,
+					 GMBUS2(i915), GMBUS_ACTIVE, 0,
 					 10);
 
-	intel_de_write_fw(dev_priv, GMBUS4(dev_priv), 0);
-	remove_wait_queue(&dev_priv->display.gmbus.wait_queue, &wait);
+	intel_de_write_fw(i915, GMBUS4(i915), 0);
+	remove_wait_queue(&i915->display.gmbus.wait_queue, &wait);
 
 	return ret;
 }
 
-static unsigned int gmbus_max_xfer_size(struct drm_i915_private *dev_priv)
+static unsigned int gmbus_max_xfer_size(struct drm_i915_private *i915)
 {
-	return DISPLAY_VER(dev_priv) >= 9 ? GEN9_GMBUS_BYTE_COUNT_MAX :
+	return DISPLAY_VER(i915) >= 9 ? GEN9_GMBUS_BYTE_COUNT_MAX :
 	       GMBUS_BYTE_COUNT_MAX;
 }
 
 static int
-gmbus_xfer_read_chunk(struct drm_i915_private *dev_priv,
+gmbus_xfer_read_chunk(struct drm_i915_private *i915,
 		      unsigned short addr, u8 *buf, unsigned int len,
 		      u32 gmbus0_reg, u32 gmbus1_index)
 {
 	unsigned int size = len;
-	bool burst_read = len > gmbus_max_xfer_size(dev_priv);
+	bool burst_read = len > gmbus_max_xfer_size(i915);
 	bool extra_byte_added = false;
 
 	if (burst_read) {
@@ -439,21 +439,21 @@ gmbus_xfer_read_chunk(struct drm_i915_private *dev_priv,
 			len++;
 		}
 		size = len % 256 + 256;
-		intel_de_write_fw(dev_priv, GMBUS0(dev_priv),
+		intel_de_write_fw(i915, GMBUS0(i915),
 				  gmbus0_reg | GMBUS_BYTE_CNT_OVERRIDE);
 	}
 
-	intel_de_write_fw(dev_priv, GMBUS1(dev_priv),
+	intel_de_write_fw(i915, GMBUS1(i915),
 			  gmbus1_index | GMBUS_CYCLE_WAIT | (size << GMBUS_BYTE_COUNT_SHIFT) | (addr << GMBUS_SLAVE_ADDR_SHIFT) | GMBUS_SLAVE_READ | GMBUS_SW_RDY);
 	while (len) {
 		int ret;
 		u32 val, loop = 0;
 
-		ret = gmbus_wait(dev_priv, GMBUS_HW_RDY, GMBUS_HW_RDY_EN);
+		ret = gmbus_wait(i915, GMBUS_HW_RDY, GMBUS_HW_RDY_EN);
 		if (ret)
 			return ret;
 
-		val = intel_de_read_fw(dev_priv, GMBUS3(dev_priv));
+		val = intel_de_read_fw(i915, GMBUS3(i915));
 		do {
 			if (extra_byte_added && len == 1)
 				break;
@@ -464,7 +464,7 @@ gmbus_xfer_read_chunk(struct drm_i915_private *dev_priv,
 
 		if (burst_read && len == size - 4)
 			/* Reset the override bit */
-			intel_de_write_fw(dev_priv, GMBUS0(dev_priv), gmbus0_reg);
+			intel_de_write_fw(i915, GMBUS0(i915), gmbus0_reg);
 	}
 
 	return 0;
@@ -481,7 +481,7 @@ gmbus_xfer_read_chunk(struct drm_i915_private *dev_priv,
 #define INTEL_GMBUS_BURST_READ_MAX_LEN		767U
 
 static int
-gmbus_xfer_read(struct drm_i915_private *dev_priv, struct i2c_msg *msg,
+gmbus_xfer_read(struct drm_i915_private *i915, struct i2c_msg *msg,
 		u32 gmbus0_reg, u32 gmbus1_index)
 {
 	u8 *buf = msg->buf;
@@ -490,12 +490,12 @@ gmbus_xfer_read(struct drm_i915_private *dev_priv, struct i2c_msg *msg,
 	int ret;
 
 	do {
-		if (HAS_GMBUS_BURST_READ(dev_priv))
+		if (HAS_GMBUS_BURST_READ(i915))
 			len = min(rx_size, INTEL_GMBUS_BURST_READ_MAX_LEN);
 		else
-			len = min(rx_size, gmbus_max_xfer_size(dev_priv));
+			len = min(rx_size, gmbus_max_xfer_size(i915));
 
-		ret = gmbus_xfer_read_chunk(dev_priv, msg->addr, buf, len,
+		ret = gmbus_xfer_read_chunk(i915, msg->addr, buf, len,
 					    gmbus0_reg, gmbus1_index);
 		if (ret)
 			return ret;
@@ -508,7 +508,7 @@ gmbus_xfer_read(struct drm_i915_private *dev_priv, struct i2c_msg *msg,
 }
 
 static int
-gmbus_xfer_write_chunk(struct drm_i915_private *dev_priv,
+gmbus_xfer_write_chunk(struct drm_i915_private *i915,
 		       unsigned short addr, u8 *buf, unsigned int len,
 		       u32 gmbus1_index)
 {
@@ -521,8 +521,8 @@ gmbus_xfer_write_chunk(struct drm_i915_private *dev_priv,
 		len -= 1;
 	}
 
-	intel_de_write_fw(dev_priv, GMBUS3(dev_priv), val);
-	intel_de_write_fw(dev_priv, GMBUS1(dev_priv),
+	intel_de_write_fw(i915, GMBUS3(i915), val);
+	intel_de_write_fw(i915, GMBUS1(i915),
 			  gmbus1_index | GMBUS_CYCLE_WAIT | (chunk_size << GMBUS_BYTE_COUNT_SHIFT) | (addr << GMBUS_SLAVE_ADDR_SHIFT) | GMBUS_SLAVE_WRITE | GMBUS_SW_RDY);
 	while (len) {
 		int ret;
@@ -532,9 +532,9 @@ gmbus_xfer_write_chunk(struct drm_i915_private *dev_priv,
 			val |= *buf++ << (8 * loop);
 		} while (--len && ++loop < 4);
 
-		intel_de_write_fw(dev_priv, GMBUS3(dev_priv), val);
+		intel_de_write_fw(i915, GMBUS3(i915), val);
 
-		ret = gmbus_wait(dev_priv, GMBUS_HW_RDY, GMBUS_HW_RDY_EN);
+		ret = gmbus_wait(i915, GMBUS_HW_RDY, GMBUS_HW_RDY_EN);
 		if (ret)
 			return ret;
 	}
@@ -543,7 +543,7 @@ gmbus_xfer_write_chunk(struct drm_i915_private *dev_priv,
 }
 
 static int
-gmbus_xfer_write(struct drm_i915_private *dev_priv, struct i2c_msg *msg,
+gmbus_xfer_write(struct drm_i915_private *i915, struct i2c_msg *msg,
 		 u32 gmbus1_index)
 {
 	u8 *buf = msg->buf;
@@ -552,9 +552,9 @@ gmbus_xfer_write(struct drm_i915_private *dev_priv, struct i2c_msg *msg,
 	int ret;
 
 	do {
-		len = min(tx_size, gmbus_max_xfer_size(dev_priv));
+		len = min(tx_size, gmbus_max_xfer_size(i915));
 
-		ret = gmbus_xfer_write_chunk(dev_priv, msg->addr, buf, len,
+		ret = gmbus_xfer_write_chunk(i915, msg->addr, buf, len,
 					     gmbus1_index);
 		if (ret)
 			return ret;
@@ -581,7 +581,7 @@ gmbus_is_index_xfer(struct i2c_msg *msgs, int i, int num)
 }
 
 static int
-gmbus_index_xfer(struct drm_i915_private *dev_priv, struct i2c_msg *msgs,
+gmbus_index_xfer(struct drm_i915_private *i915, struct i2c_msg *msgs,
 		 u32 gmbus0_reg)
 {
 	u32 gmbus1_index = 0;
@@ -597,17 +597,17 @@ gmbus_index_xfer(struct drm_i915_private *dev_priv, struct i2c_msg *msgs,
 
 	/* GMBUS5 holds 16-bit index */
 	if (gmbus5)
-		intel_de_write_fw(dev_priv, GMBUS5(dev_priv), gmbus5);
+		intel_de_write_fw(i915, GMBUS5(i915), gmbus5);
 
 	if (msgs[1].flags & I2C_M_RD)
-		ret = gmbus_xfer_read(dev_priv, &msgs[1], gmbus0_reg,
+		ret = gmbus_xfer_read(i915, &msgs[1], gmbus0_reg,
 				      gmbus1_index);
 	else
-		ret = gmbus_xfer_write(dev_priv, &msgs[1], gmbus1_index);
+		ret = gmbus_xfer_write(i915, &msgs[1], gmbus1_index);
 
 	/* Clear GMBUS5 after each index transfer */
 	if (gmbus5)
-		intel_de_write_fw(dev_priv, GMBUS5(dev_priv), 0);
+		intel_de_write_fw(i915, GMBUS5(i915), 0);
 
 	return ret;
 }
@@ -617,34 +617,34 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 	      u32 gmbus0_source)
 {
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
-	struct drm_i915_private *dev_priv = bus->dev_priv;
+	struct drm_i915_private *i915 = bus->i915;
 	int i = 0, inc, try = 0;
 	int ret = 0;
 
 	/* Display WA #0868: skl,bxt,kbl,cfl,glk */
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		bxt_gmbus_clock_gating(dev_priv, false);
-	else if (HAS_PCH_SPT(dev_priv) || HAS_PCH_CNP(dev_priv))
-		pch_gmbus_clock_gating(dev_priv, false);
+	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
+		bxt_gmbus_clock_gating(i915, false);
+	else if (HAS_PCH_SPT(i915) || HAS_PCH_CNP(i915))
+		pch_gmbus_clock_gating(i915, false);
 
 retry:
-	intel_de_write_fw(dev_priv, GMBUS0(dev_priv), gmbus0_source | bus->reg0);
+	intel_de_write_fw(i915, GMBUS0(i915), gmbus0_source | bus->reg0);
 
 	for (; i < num; i += inc) {
 		inc = 1;
 		if (gmbus_is_index_xfer(msgs, i, num)) {
-			ret = gmbus_index_xfer(dev_priv, &msgs[i],
+			ret = gmbus_index_xfer(i915, &msgs[i],
 					       gmbus0_source | bus->reg0);
 			inc = 2; /* an index transmission is two msgs */
 		} else if (msgs[i].flags & I2C_M_RD) {
-			ret = gmbus_xfer_read(dev_priv, &msgs[i],
+			ret = gmbus_xfer_read(i915, &msgs[i],
 					      gmbus0_source | bus->reg0, 0);
 		} else {
-			ret = gmbus_xfer_write(dev_priv, &msgs[i], 0);
+			ret = gmbus_xfer_write(i915, &msgs[i], 0);
 		}
 
 		if (!ret)
-			ret = gmbus_wait(dev_priv,
+			ret = gmbus_wait(i915,
 					 GMBUS_HW_WAIT_PHASE, GMBUS_HW_WAIT_EN);
 		if (ret == -ETIMEDOUT)
 			goto timeout;
@@ -656,19 +656,19 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 	 * a STOP on the very first cycle. To simplify the code we
 	 * unconditionally generate the STOP condition with an additional gmbus
 	 * cycle. */
-	intel_de_write_fw(dev_priv, GMBUS1(dev_priv), GMBUS_CYCLE_STOP | GMBUS_SW_RDY);
+	intel_de_write_fw(i915, GMBUS1(i915), GMBUS_CYCLE_STOP | GMBUS_SW_RDY);
 
 	/* Mark the GMBUS interface as disabled after waiting for idle.
 	 * We will re-enable it at the start of the next xfer,
 	 * till then let it sleep.
 	 */
-	if (gmbus_wait_idle(dev_priv)) {
-		drm_dbg_kms(&dev_priv->drm,
+	if (gmbus_wait_idle(i915)) {
+		drm_dbg_kms(&i915->drm,
 			    "GMBUS [%s] timed out waiting for idle\n",
 			    adapter->name);
 		ret = -ETIMEDOUT;
 	}
-	intel_de_write_fw(dev_priv, GMBUS0(dev_priv), 0);
+	intel_de_write_fw(i915, GMBUS0(i915), 0);
 	ret = ret ?: i;
 	goto out;
 
@@ -687,8 +687,8 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 	 * it's slow responding and only answers on the 2nd retry.
 	 */
 	ret = -ENXIO;
-	if (gmbus_wait_idle(dev_priv)) {
-		drm_dbg_kms(&dev_priv->drm,
+	if (gmbus_wait_idle(i915)) {
+		drm_dbg_kms(&i915->drm,
 			    "GMBUS [%s] timed out after NAK\n",
 			    adapter->name);
 		ret = -ETIMEDOUT;
@@ -698,11 +698,11 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 	 * of resetting the GMBUS controller and so clearing the
 	 * BUS_ERROR raised by the slave's NAK.
 	 */
-	intel_de_write_fw(dev_priv, GMBUS1(dev_priv), GMBUS_SW_CLR_INT);
-	intel_de_write_fw(dev_priv, GMBUS1(dev_priv), 0);
-	intel_de_write_fw(dev_priv, GMBUS0(dev_priv), 0);
+	intel_de_write_fw(i915, GMBUS1(i915), GMBUS_SW_CLR_INT);
+	intel_de_write_fw(i915, GMBUS1(i915), 0);
+	intel_de_write_fw(i915, GMBUS0(i915), 0);
 
-	drm_dbg_kms(&dev_priv->drm, "GMBUS [%s] NAK for addr: %04x %c(%d)\n",
+	drm_dbg_kms(&i915->drm, "GMBUS [%s] NAK for addr: %04x %c(%d)\n",
 		    adapter->name, msgs[i].addr,
 		    (msgs[i].flags & I2C_M_RD) ? 'r' : 'w', msgs[i].len);
 
@@ -713,7 +713,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 	 * drm_do_probe_ddc_edid, which bails out on the first -ENXIO.
 	 */
 	if (ret == -ENXIO && i == 0 && try++ == 0) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "GMBUS [%s] NAK on first message, retry\n",
 			    adapter->name);
 		goto retry;
@@ -722,10 +722,10 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 	goto out;
 
 timeout:
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(&i915->drm,
 		    "GMBUS [%s] timed out, falling back to bit banging on pin %d\n",
 		    bus->adapter.name, bus->reg0 & 0xff);
-	intel_de_write_fw(dev_priv, GMBUS0(dev_priv), 0);
+	intel_de_write_fw(i915, GMBUS0(i915), 0);
 
 	/*
 	 * Hardware may not support GMBUS over these pins? Try GPIO bitbanging
@@ -735,10 +735,10 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 
 out:
 	/* Display WA #0868: skl,bxt,kbl,cfl,glk */
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		bxt_gmbus_clock_gating(dev_priv, true);
-	else if (HAS_PCH_SPT(dev_priv) || HAS_PCH_CNP(dev_priv))
-		pch_gmbus_clock_gating(dev_priv, true);
+	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
+		bxt_gmbus_clock_gating(i915, true);
+	else if (HAS_PCH_SPT(i915) || HAS_PCH_CNP(i915))
+		pch_gmbus_clock_gating(i915, true);
 
 	return ret;
 }
@@ -747,11 +747,11 @@ static int
 gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num)
 {
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
-	struct drm_i915_private *dev_priv = bus->dev_priv;
+	struct drm_i915_private *i915 = bus->i915;
 	intel_wakeref_t wakeref;
 	int ret;
 
-	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_GMBUS);
+	wakeref = intel_display_power_get(i915, POWER_DOMAIN_GMBUS);
 
 	if (bus->force_bit) {
 		ret = i2c_bit_algo.master_xfer(adapter, msgs, num);
@@ -763,7 +763,7 @@ gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num)
 			bus->force_bit |= GMBUS_FORCE_BIT_RETRY;
 	}
 
-	intel_display_power_put(dev_priv, POWER_DOMAIN_GMBUS, wakeref);
+	intel_display_power_put(i915, POWER_DOMAIN_GMBUS, wakeref);
 
 	return ret;
 }
@@ -771,7 +771,7 @@ gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num)
 int intel_gmbus_output_aksv(struct i2c_adapter *adapter)
 {
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
-	struct drm_i915_private *dev_priv = bus->dev_priv;
+	struct drm_i915_private *i915 = bus->i915;
 	u8 cmd = DRM_HDCP_DDC_AKSV;
 	u8 buf[DRM_HDCP_KSV_LEN] = { 0 };
 	struct i2c_msg msgs[] = {
@@ -791,8 +791,8 @@ int intel_gmbus_output_aksv(struct i2c_adapter *adapter)
 	intel_wakeref_t wakeref;
 	int ret;
 
-	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_GMBUS);
-	mutex_lock(&dev_priv->display.gmbus.mutex);
+	wakeref = intel_display_power_get(i915, POWER_DOMAIN_GMBUS);
+	mutex_lock(&i915->display.gmbus.mutex);
 
 	/*
 	 * In order to output Aksv to the receiver, use an indexed write to
@@ -801,8 +801,8 @@ int intel_gmbus_output_aksv(struct i2c_adapter *adapter)
 	 */
 	ret = do_gmbus_xfer(adapter, msgs, ARRAY_SIZE(msgs), GMBUS_AKSV_SELECT);
 
-	mutex_unlock(&dev_priv->display.gmbus.mutex);
-	intel_display_power_put(dev_priv, POWER_DOMAIN_GMBUS, wakeref);
+	mutex_unlock(&i915->display.gmbus.mutex);
+	intel_display_power_put(i915, POWER_DOMAIN_GMBUS, wakeref);
 
 	return ret;
 }
@@ -825,27 +825,27 @@ static void gmbus_lock_bus(struct i2c_adapter *adapter,
 			   unsigned int flags)
 {
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
-	struct drm_i915_private *dev_priv = bus->dev_priv;
+	struct drm_i915_private *i915 = bus->i915;
 
-	mutex_lock(&dev_priv->display.gmbus.mutex);
+	mutex_lock(&i915->display.gmbus.mutex);
 }
 
 static int gmbus_trylock_bus(struct i2c_adapter *adapter,
 			     unsigned int flags)
 {
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
-	struct drm_i915_private *dev_priv = bus->dev_priv;
+	struct drm_i915_private *i915 = bus->i915;
 
-	return mutex_trylock(&dev_priv->display.gmbus.mutex);
+	return mutex_trylock(&i915->display.gmbus.mutex);
 }
 
 static void gmbus_unlock_bus(struct i2c_adapter *adapter,
 			     unsigned int flags)
 {
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
-	struct drm_i915_private *dev_priv = bus->dev_priv;
+	struct drm_i915_private *i915 = bus->i915;
 
-	mutex_unlock(&dev_priv->display.gmbus.mutex);
+	mutex_unlock(&i915->display.gmbus.mutex);
 }
 
 static const struct i2c_lock_operations gmbus_lock_ops = {
@@ -856,31 +856,31 @@ static const struct i2c_lock_operations gmbus_lock_ops = {
 
 /**
  * intel_gmbus_setup - instantiate all Intel i2c GMBuses
- * @dev_priv: i915 device private
+ * @i915: i915 device private
  */
-int intel_gmbus_setup(struct drm_i915_private *dev_priv)
+int intel_gmbus_setup(struct drm_i915_private *i915)
 {
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	unsigned int pin;
 	int ret;
 
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		dev_priv->display.gmbus.mmio_base = VLV_DISPLAY_BASE;
-	else if (!HAS_GMCH(dev_priv))
+	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+		i915->display.gmbus.mmio_base = VLV_DISPLAY_BASE;
+	else if (!HAS_GMCH(i915))
 		/*
 		 * Broxton uses the same PCH offsets for South Display Engine,
 		 * even though it doesn't have a PCH.
 		 */
-		dev_priv->display.gmbus.mmio_base = PCH_DISPLAY_BASE;
+		i915->display.gmbus.mmio_base = PCH_DISPLAY_BASE;
 
-	mutex_init(&dev_priv->display.gmbus.mutex);
-	init_waitqueue_head(&dev_priv->display.gmbus.wait_queue);
+	mutex_init(&i915->display.gmbus.mutex);
+	init_waitqueue_head(&i915->display.gmbus.wait_queue);
 
-	for (pin = 0; pin < ARRAY_SIZE(dev_priv->display.gmbus.bus); pin++) {
+	for (pin = 0; pin < ARRAY_SIZE(i915->display.gmbus.bus); pin++) {
 		const struct gmbus_pin *gmbus_pin;
 		struct intel_gmbus *bus;
 
-		gmbus_pin = get_gmbus_pin(dev_priv, pin);
+		gmbus_pin = get_gmbus_pin(i915, pin);
 		if (!gmbus_pin)
 			continue;
 
@@ -897,7 +897,7 @@ int intel_gmbus_setup(struct drm_i915_private *dev_priv)
 			 "i915 gmbus %s", gmbus_pin->name);
 
 		bus->adapter.dev.parent = &pdev->dev;
-		bus->dev_priv = dev_priv;
+		bus->i915 = i915;
 
 		bus->adapter.algo = &gmbus_algorithm;
 		bus->adapter.lock_ops = &gmbus_lock_ops;
@@ -912,10 +912,10 @@ int intel_gmbus_setup(struct drm_i915_private *dev_priv)
 		bus->reg0 = pin | GMBUS_RATE_100KHZ;
 
 		/* gmbus seems to be broken on i830 */
-		if (IS_I830(dev_priv))
+		if (IS_I830(i915))
 			bus->force_bit = 1;
 
-		intel_gpio_setup(bus, GPIO(dev_priv, gmbus_pin->gpio));
+		intel_gpio_setup(bus, GPIO(i915, gmbus_pin->gpio));
 
 		ret = i2c_add_adapter(&bus->adapter);
 		if (ret) {
@@ -923,43 +923,43 @@ int intel_gmbus_setup(struct drm_i915_private *dev_priv)
 			goto err;
 		}
 
-		dev_priv->display.gmbus.bus[pin] = bus;
+		i915->display.gmbus.bus[pin] = bus;
 	}
 
-	intel_gmbus_reset(dev_priv);
+	intel_gmbus_reset(i915);
 
 	return 0;
 
 err:
-	intel_gmbus_teardown(dev_priv);
+	intel_gmbus_teardown(i915);
 
 	return ret;
 }
 
-struct i2c_adapter *intel_gmbus_get_adapter(struct drm_i915_private *dev_priv,
+struct i2c_adapter *intel_gmbus_get_adapter(struct drm_i915_private *i915,
 					    unsigned int pin)
 {
-	if (drm_WARN_ON(&dev_priv->drm, pin >= ARRAY_SIZE(dev_priv->display.gmbus.bus) ||
-			!dev_priv->display.gmbus.bus[pin]))
+	if (drm_WARN_ON(&i915->drm, pin >= ARRAY_SIZE(i915->display.gmbus.bus) ||
+			!i915->display.gmbus.bus[pin]))
 		return NULL;
 
-	return &dev_priv->display.gmbus.bus[pin]->adapter;
+	return &i915->display.gmbus.bus[pin]->adapter;
 }
 
 void intel_gmbus_force_bit(struct i2c_adapter *adapter, bool force_bit)
 {
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
-	struct drm_i915_private *dev_priv = bus->dev_priv;
+	struct drm_i915_private *i915 = bus->i915;
 
-	mutex_lock(&dev_priv->display.gmbus.mutex);
+	mutex_lock(&i915->display.gmbus.mutex);
 
 	bus->force_bit += force_bit ? 1 : -1;
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(&i915->drm,
 		    "%sabling bit-banging on %s. force bit now %d\n",
 		    force_bit ? "en" : "dis", adapter->name,
 		    bus->force_bit);
 
-	mutex_unlock(&dev_priv->display.gmbus.mutex);
+	mutex_unlock(&i915->display.gmbus.mutex);
 }
 
 bool intel_gmbus_is_forced_bit(struct i2c_adapter *adapter)
@@ -969,20 +969,20 @@ bool intel_gmbus_is_forced_bit(struct i2c_adapter *adapter)
 	return bus->force_bit;
 }
 
-void intel_gmbus_teardown(struct drm_i915_private *dev_priv)
+void intel_gmbus_teardown(struct drm_i915_private *i915)
 {
 	unsigned int pin;
 
-	for (pin = 0; pin < ARRAY_SIZE(dev_priv->display.gmbus.bus); pin++) {
+	for (pin = 0; pin < ARRAY_SIZE(i915->display.gmbus.bus); pin++) {
 		struct intel_gmbus *bus;
 
-		bus = dev_priv->display.gmbus.bus[pin];
+		bus = i915->display.gmbus.bus[pin];
 		if (!bus)
 			continue;
 
 		i2c_del_adapter(&bus->adapter);
 
 		kfree(bus);
-		dev_priv->display.gmbus.bus[pin] = NULL;
+		i915->display.gmbus.bus[pin] = NULL;
 	}
 }
-- 
2.34.1

