Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4500A401550
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 05:50:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7763899EA;
	Mon,  6 Sep 2021 03:50:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 264E0899E8
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Sep 2021 03:50:23 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-351-p_xItSYOONmGupOFu9-yOw-1; Sun, 05 Sep 2021 23:44:15 -0400
X-MC-Unique: p_xItSYOONmGupOFu9-yOw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 26307512B;
 Mon,  6 Sep 2021 03:44:14 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D43D55D9DE;
 Mon,  6 Sep 2021 03:44:12 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Mon,  6 Sep 2021 13:43:50 +1000
Message-Id: <20210906034356.2946530-5-airlied@gmail.com>
In-Reply-To: <20210906034356.2946530-1-airlied@gmail.com>
References: <20210906034356.2946530-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 04/10] drm/i915/display: move gmbus into display
 struct
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

From: Dave Airlie <airlied@redhat.com>

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c  |  6 +--
 drivers/gpu/drm/i915/display/intel_dp_aux.c |  2 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c  | 42 ++++++++++-----------
 drivers/gpu/drm/i915/i915_drv.h             | 27 +++++++------
 drivers/gpu/drm/i915/i915_irq.c             |  4 +-
 drivers/gpu/drm/i915/i915_reg.h             | 14 +++----
 6 files changed, 47 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i=
915/display/intel_cdclk.c
index e52f97c3ecab..f42e07824f01 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1948,12 +1948,12 @@ static void intel_set_cdclk(struct drm_i915_private=
 *dev_priv,
 =09 * functions use cdclk. Not all platforms/ports do,
 =09 * but we'll lock them all for simplicity.
 =09 */
-=09mutex_lock(&dev_priv->gmbus_mutex);
+=09mutex_lock(&dev_priv->display.gmbus_mutex);
 =09for_each_intel_dp(&dev_priv->drm, encoder) {
 =09=09struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
=20
 =09=09mutex_lock_nest_lock(&intel_dp->aux.hw_mutex,
-=09=09=09=09     &dev_priv->gmbus_mutex);
+=09=09=09=09     &dev_priv->display.gmbus_mutex);
 =09}
=20
 =09dev_priv->display.funcs.set_cdclk(dev_priv, cdclk_config, pipe);
@@ -1963,7 +1963,7 @@ static void intel_set_cdclk(struct drm_i915_private *=
dev_priv,
=20
 =09=09mutex_unlock(&intel_dp->aux.hw_mutex);
 =09}
-=09mutex_unlock(&dev_priv->gmbus_mutex);
+=09mutex_unlock(&dev_priv->display.gmbus_mutex);
=20
 =09for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
 =09=09struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/=
i915/display/intel_dp_aux.c
index b0025dd3cb4a..8695da511e63 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -42,7 +42,7 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
 =09bool done;
=20
 #define C (((status =3D intel_uncore_read_notrace(&i915->uncore, ch_ctl)) =
& DP_AUX_CH_CTL_SEND_BUSY) =3D=3D 0)
-=09done =3D wait_event_timeout(i915->gmbus_wait_queue, C,
+=09done =3D wait_event_timeout(i915->display.gmbus_wait_queue, C,
 =09=09=09=09  msecs_to_jiffies_timeout(timeout_ms));
=20
 =09/* just trace the final value */
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i=
915/display/intel_gmbus.c
index ceb1bf8a8c3c..9d31f5322f2a 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -347,7 +347,7 @@ static int gmbus_wait(struct drm_i915_private *dev_priv=
, u32 status, u32 irq_en)
 =09if (!HAS_GMBUS_IRQ(dev_priv))
 =09=09irq_en =3D 0;
=20
-=09add_wait_queue(&dev_priv->gmbus_wait_queue, &wait);
+=09add_wait_queue(&dev_priv->display.gmbus_wait_queue, &wait);
 =09intel_de_write_fw(dev_priv, GMBUS4, irq_en);
=20
 =09status |=3D GMBUS_SATOER;
@@ -358,7 +358,7 @@ static int gmbus_wait(struct drm_i915_private *dev_priv=
, u32 status, u32 irq_en)
 =09=09=09       50);
=20
 =09intel_de_write_fw(dev_priv, GMBUS4, 0);
-=09remove_wait_queue(&dev_priv->gmbus_wait_queue, &wait);
+=09remove_wait_queue(&dev_priv->display.gmbus_wait_queue, &wait);
=20
 =09if (gmbus2 & GMBUS_SATOER)
 =09=09return -ENXIO;
@@ -378,7 +378,7 @@ gmbus_wait_idle(struct drm_i915_private *dev_priv)
 =09if (HAS_GMBUS_IRQ(dev_priv))
 =09=09irq_enable =3D GMBUS_IDLE_EN;
=20
-=09add_wait_queue(&dev_priv->gmbus_wait_queue, &wait);
+=09add_wait_queue(&dev_priv->display.gmbus_wait_queue, &wait);
 =09intel_de_write_fw(dev_priv, GMBUS4, irq_enable);
=20
 =09ret =3D intel_wait_for_register_fw(&dev_priv->uncore,
@@ -386,7 +386,7 @@ gmbus_wait_idle(struct drm_i915_private *dev_priv)
 =09=09=09=09=09 10);
=20
 =09intel_de_write_fw(dev_priv, GMBUS4, 0);
-=09remove_wait_queue(&dev_priv->gmbus_wait_queue, &wait);
+=09remove_wait_queue(&dev_priv->display.gmbus_wait_queue, &wait);
=20
 =09return ret;
 }
@@ -773,7 +773,7 @@ int intel_gmbus_output_aksv(struct i2c_adapter *adapter=
)
 =09int ret;
=20
 =09wakeref =3D intel_display_power_get(dev_priv, POWER_DOMAIN_GMBUS);
-=09mutex_lock(&dev_priv->gmbus_mutex);
+=09mutex_lock(&dev_priv->display.gmbus_mutex);
=20
 =09/*
 =09 * In order to output Aksv to the receiver, use an indexed write to
@@ -782,7 +782,7 @@ int intel_gmbus_output_aksv(struct i2c_adapter *adapter=
)
 =09 */
 =09ret =3D do_gmbus_xfer(adapter, msgs, ARRAY_SIZE(msgs), GMBUS_AKSV_SELEC=
T);
=20
-=09mutex_unlock(&dev_priv->gmbus_mutex);
+=09mutex_unlock(&dev_priv->display.gmbus_mutex);
 =09intel_display_power_put(dev_priv, POWER_DOMAIN_GMBUS, wakeref);
=20
 =09return ret;
@@ -808,7 +808,7 @@ static void gmbus_lock_bus(struct i2c_adapter *adapter,
 =09struct intel_gmbus *bus =3D to_intel_gmbus(adapter);
 =09struct drm_i915_private *dev_priv =3D bus->dev_priv;
=20
-=09mutex_lock(&dev_priv->gmbus_mutex);
+=09mutex_lock(&dev_priv->display.gmbus_mutex);
 }
=20
 static int gmbus_trylock_bus(struct i2c_adapter *adapter,
@@ -817,7 +817,7 @@ static int gmbus_trylock_bus(struct i2c_adapter *adapte=
r,
 =09struct intel_gmbus *bus =3D to_intel_gmbus(adapter);
 =09struct drm_i915_private *dev_priv =3D bus->dev_priv;
=20
-=09return mutex_trylock(&dev_priv->gmbus_mutex);
+=09return mutex_trylock(&dev_priv->display.gmbus_mutex);
 }
=20
 static void gmbus_unlock_bus(struct i2c_adapter *adapter,
@@ -826,7 +826,7 @@ static void gmbus_unlock_bus(struct i2c_adapter *adapte=
r,
 =09struct intel_gmbus *bus =3D to_intel_gmbus(adapter);
 =09struct drm_i915_private *dev_priv =3D bus->dev_priv;
=20
-=09mutex_unlock(&dev_priv->gmbus_mutex);
+=09mutex_unlock(&dev_priv->display.gmbus_mutex);
 }
=20
 static const struct i2c_lock_operations gmbus_lock_ops =3D {
@@ -847,22 +847,22 @@ int intel_gmbus_setup(struct drm_i915_private *dev_pr=
iv)
 =09int ret;
=20
 =09if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-=09=09dev_priv->gpio_mmio_base =3D VLV_DISPLAY_BASE;
+=09=09dev_priv->display.gpio_mmio_base =3D VLV_DISPLAY_BASE;
 =09else if (!HAS_GMCH(dev_priv))
 =09=09/*
 =09=09 * Broxton uses the same PCH offsets for South Display Engine,
 =09=09 * even though it doesn't have a PCH.
 =09=09 */
-=09=09dev_priv->gpio_mmio_base =3D PCH_DISPLAY_BASE;
+=09=09dev_priv->display.gpio_mmio_base =3D PCH_DISPLAY_BASE;
=20
-=09mutex_init(&dev_priv->gmbus_mutex);
-=09init_waitqueue_head(&dev_priv->gmbus_wait_queue);
+=09mutex_init(&dev_priv->display.gmbus_mutex);
+=09init_waitqueue_head(&dev_priv->display.gmbus_wait_queue);
=20
-=09for (pin =3D 0; pin < ARRAY_SIZE(dev_priv->gmbus); pin++) {
+=09for (pin =3D 0; pin < ARRAY_SIZE(dev_priv->display.gmbus); pin++) {
 =09=09if (!intel_gmbus_is_valid_pin(dev_priv, pin))
 =09=09=09continue;
=20
-=09=09bus =3D &dev_priv->gmbus[pin];
+=09=09bus =3D &dev_priv->display.gmbus[pin];
=20
 =09=09bus->adapter.owner =3D THIS_MODULE;
 =09=09bus->adapter.class =3D I2C_CLASS_DDC;
@@ -906,7 +906,7 @@ int intel_gmbus_setup(struct drm_i915_private *dev_priv=
)
 =09=09if (!intel_gmbus_is_valid_pin(dev_priv, pin))
 =09=09=09continue;
=20
-=09=09bus =3D &dev_priv->gmbus[pin];
+=09=09bus =3D &dev_priv->display.gmbus[pin];
 =09=09i2c_del_adapter(&bus->adapter);
 =09}
 =09return ret;
@@ -919,7 +919,7 @@ struct i2c_adapter *intel_gmbus_get_adapter(struct drm_=
i915_private *dev_priv,
 =09=09=09!intel_gmbus_is_valid_pin(dev_priv, pin)))
 =09=09return NULL;
=20
-=09return &dev_priv->gmbus[pin].adapter;
+=09return &dev_priv->display.gmbus[pin].adapter;
 }
=20
 void intel_gmbus_set_speed(struct i2c_adapter *adapter, int speed)
@@ -934,7 +934,7 @@ void intel_gmbus_force_bit(struct i2c_adapter *adapter,=
 bool force_bit)
 =09struct intel_gmbus *bus =3D to_intel_gmbus(adapter);
 =09struct drm_i915_private *dev_priv =3D bus->dev_priv;
=20
-=09mutex_lock(&dev_priv->gmbus_mutex);
+=09mutex_lock(&dev_priv->display.gmbus_mutex);
=20
 =09bus->force_bit +=3D force_bit ? 1 : -1;
 =09drm_dbg_kms(&dev_priv->drm,
@@ -942,7 +942,7 @@ void intel_gmbus_force_bit(struct i2c_adapter *adapter,=
 bool force_bit)
 =09=09    force_bit ? "en" : "dis", adapter->name,
 =09=09    bus->force_bit);
=20
-=09mutex_unlock(&dev_priv->gmbus_mutex);
+=09mutex_unlock(&dev_priv->display.gmbus_mutex);
 }
=20
 bool intel_gmbus_is_forced_bit(struct i2c_adapter *adapter)
@@ -957,11 +957,11 @@ void intel_gmbus_teardown(struct drm_i915_private *de=
v_priv)
 =09struct intel_gmbus *bus;
 =09unsigned int pin;
=20
-=09for (pin =3D 0; pin < ARRAY_SIZE(dev_priv->gmbus); pin++) {
+=09for (pin =3D 0; pin < ARRAY_SIZE(dev_priv->display.gmbus); pin++) {
 =09=09if (!intel_gmbus_is_valid_pin(dev_priv, pin))
 =09=09=09continue;
=20
-=09=09bus =3D &dev_priv->gmbus[pin];
+=09=09bus =3D &dev_priv->display.gmbus[pin];
 =09=09i2c_del_adapter(&bus->adapter);
 =09}
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 424d06cdc4d6..20520402c246 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -847,6 +847,19 @@ struct drm_i915_display {
 =09unsigned int hpll_freq;
 =09unsigned int fdi_pll_freq;
 =09unsigned int czclk_freq;
+
+=09/**
+=09 * Base address of where the gmbus and gpio blocks are located (either
+=09 * on PCH or on SoC for platforms without PCH).
+=09 */
+=09u32 gpio_mmio_base;
+
+=09struct intel_gmbus gmbus[GMBUS_NUM_PINS];
+
+=09/** gmbus_mutex protects against concurrent usage of the single hw gmbu=
s
+=09 * controller on different i2c buses. */
+=09struct mutex gmbus_mutex;
+=09wait_queue_head_t gmbus_wait_queue;
 };
=20
 struct drm_i915_private {
@@ -899,25 +912,11 @@ struct drm_i915_private {
=20
 =09struct intel_dmc dmc;
=20
-=09struct intel_gmbus gmbus[GMBUS_NUM_PINS];
-
-=09/** gmbus_mutex protects against concurrent usage of the single hw gmbu=
s
-=09 * controller on different i2c buses. */
-=09struct mutex gmbus_mutex;
-
-=09/**
-=09 * Base address of where the gmbus and gpio blocks are located (either
-=09 * on PCH or on SoC for platforms without PCH).
-=09 */
-=09u32 gpio_mmio_base;
-
 =09/* MMIO base address for MIPI regs */
 =09u32 mipi_mmio_base;
=20
 =09u32 pps_mmio_base;
=20
-=09wait_queue_head_t gmbus_wait_queue;
-
 =09struct pci_dev *bridge_dev;
=20
 =09struct rb_root uabi_engines;
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_ir=
q.c
index b1e3f51dc593..4ef644aeaf6c 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -1303,12 +1303,12 @@ static u32 intel_hpd_hotplug_enables(struct drm_i91=
5_private *i915,
=20
 static void gmbus_irq_handler(struct drm_i915_private *dev_priv)
 {
-=09wake_up_all(&dev_priv->gmbus_wait_queue);
+=09wake_up_all(&dev_priv->display.gmbus_wait_queue);
 }
=20
 static void dp_aux_irq_handler(struct drm_i915_private *dev_priv)
 {
-=09wake_up_all(&dev_priv->gmbus_wait_queue);
+=09wake_up_all(&dev_priv->display.gmbus_wait_queue);
 }
=20
 #if defined(CONFIG_DEBUG_FS)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_re=
g.h
index bd63760207b0..2e74c5c4699a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3403,7 +3403,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg=
)
 /*
  * GPIO regs
  */
-#define GPIO(gpio)=09=09_MMIO(dev_priv->gpio_mmio_base + 0x5010 + \
+#define GPIO(gpio)=09=09_MMIO(dev_priv->display.gpio_mmio_base + 0x5010 + =
\
 =09=09=09=09      4 * (gpio))
=20
 # define GPIO_CLOCK_DIR_MASK=09=09(1 << 0)
@@ -3421,7 +3421,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg=
)
 # define GPIO_DATA_VAL_IN=09=09(1 << 12)
 # define GPIO_DATA_PULLUP_DISABLE=09(1 << 13)
=20
-#define GMBUS0=09=09=09_MMIO(dev_priv->gpio_mmio_base + 0x5100) /* clock/p=
ort select */
+#define GMBUS0=09=09=09_MMIO(dev_priv->display.gpio_mmio_base + 0x5100) /*=
 clock/port select */
 #define   GMBUS_AKSV_SELECT=09(1 << 11)
 #define   GMBUS_RATE_100KHZ=09(0 << 8)
 #define   GMBUS_RATE_50KHZ=09(1 << 8)
@@ -3430,7 +3430,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg=
)
 #define   GMBUS_HOLD_EXT=09(1 << 7) /* 300ns hold time, rsvd on Pineview *=
/
 #define   GMBUS_BYTE_CNT_OVERRIDE (1 << 6)
=20
-#define GMBUS1=09=09=09_MMIO(dev_priv->gpio_mmio_base + 0x5104) /* command=
/status */
+#define GMBUS1=09=09=09_MMIO(dev_priv->display.gpio_mmio_base + 0x5104) /*=
 command/status */
 #define   GMBUS_SW_CLR_INT=09(1 << 31)
 #define   GMBUS_SW_RDY=09=09(1 << 30)
 #define   GMBUS_ENT=09=09(1 << 29) /* enable timeout */
@@ -3445,7 +3445,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg=
)
 #define   GMBUS_SLAVE_ADDR_SHIFT 1
 #define   GMBUS_SLAVE_READ=09(1 << 0)
 #define   GMBUS_SLAVE_WRITE=09(0 << 0)
-#define GMBUS2=09=09=09_MMIO(dev_priv->gpio_mmio_base + 0x5108) /* status =
*/
+#define GMBUS2=09=09=09_MMIO(dev_priv->display.gpio_mmio_base + 0x5108) /*=
 status */
 #define   GMBUS_INUSE=09=09(1 << 15)
 #define   GMBUS_HW_WAIT_PHASE=09(1 << 14)
 #define   GMBUS_STALL_TIMEOUT=09(1 << 13)
@@ -3453,14 +3453,14 @@ static inline bool i915_mmio_reg_valid(i915_reg_t r=
eg)
 #define   GMBUS_HW_RDY=09=09(1 << 11)
 #define   GMBUS_SATOER=09=09(1 << 10)
 #define   GMBUS_ACTIVE=09=09(1 << 9)
-#define GMBUS3=09=09=09_MMIO(dev_priv->gpio_mmio_base + 0x510c) /* data bu=
ffer bytes 3-0 */
-#define GMBUS4=09=09=09_MMIO(dev_priv->gpio_mmio_base + 0x5110) /* interru=
pt mask (Pineview+) */
+#define GMBUS3=09=09=09_MMIO(dev_priv->display.gpio_mmio_base + 0x510c) /*=
 data buffer bytes 3-0 */
+#define GMBUS4=09=09=09_MMIO(dev_priv->display.gpio_mmio_base + 0x5110) /*=
 interrupt mask (Pineview+) */
 #define   GMBUS_SLAVE_TIMEOUT_EN (1 << 4)
 #define   GMBUS_NAK_EN=09=09(1 << 3)
 #define   GMBUS_IDLE_EN=09=09(1 << 2)
 #define   GMBUS_HW_WAIT_EN=09(1 << 1)
 #define   GMBUS_HW_RDY_EN=09(1 << 0)
-#define GMBUS5=09=09=09_MMIO(dev_priv->gpio_mmio_base + 0x5120) /* byte in=
dex */
+#define GMBUS5=09=09=09_MMIO(dev_priv->display.gpio_mmio_base + 0x5120) /*=
 byte index */
 #define   GMBUS_2BYTE_INDEX_EN=09(1 << 31)
=20
 /*
--=20
2.31.1

