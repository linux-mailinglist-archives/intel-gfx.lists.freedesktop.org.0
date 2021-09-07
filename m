Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE6240243C
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 09:26:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F18A897B4;
	Tue,  7 Sep 2021 07:26:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B108C89780
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 07:26:32 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-140-WhBl4GQ9PV6ryghUmbYWuQ-1; Tue, 07 Sep 2021 03:26:25 -0400
X-MC-Unique: WhBl4GQ9PV6ryghUmbYWuQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B6D8D80124F;
 Tue,  7 Sep 2021 07:26:24 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 71B3A60936;
 Tue,  7 Sep 2021 07:26:23 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Tue,  7 Sep 2021 17:25:39 +1000
Message-Id: <20210907072549.2962226-16-airlied@gmail.com>
In-Reply-To: <20210907072549.2962226-1-airlied@gmail.com>
References: <20210907072549.2962226-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 15/25] drm/i915/display: move hotplug struct to
 display struct
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

I've left some _display around the workqueue stuff, since
that will need reworking maybe if we split display out, so
best to fail early.

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |   4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   6 +-
 .../drm/i915/display/intel_display_debugfs.c  |  16 +--
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 117 +++++++++---------
 drivers/gpu/drm/i915/display/intel_tc.c       |   4 +-
 drivers/gpu/drm/i915/i915_drv.c               |   6 +-
 drivers/gpu/drm/i915/i915_drv.h               |   3 +-
 drivers/gpu/drm/i915/i915_irq.c               |  52 ++++----
 8 files changed, 105 insertions(+), 103 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/d=
isplay/g4x_dp.c
index 9577f6843f79..f7c3eaa96509 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1198,7 +1198,7 @@ intel_dp_hotplug(struct intel_encoder *encoder,
 static bool ibx_digital_port_connected(struct intel_encoder *encoder)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
-=09u32 bit =3D dev_priv->hotplug.pch_hpd[encoder->hpd_pin];
+=09u32 bit =3D dev_priv->display->hotplug.pch_hpd[encoder->hpd_pin];
=20
 =09return intel_de_read(dev_priv, SDEISR) & bit;
 }
@@ -1252,7 +1252,7 @@ static bool gm45_digital_port_connected(struct intel_=
encoder *encoder)
 static bool ilk_digital_port_connected(struct intel_encoder *encoder)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
-=09u32 bit =3D dev_priv->hotplug.hpd[encoder->hpd_pin];
+=09u32 bit =3D dev_priv->display->hotplug.hpd[encoder->hpd_pin];
=20
 =09return intel_de_read(dev_priv, DEISR) & bit;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i91=
5/display/intel_ddi.c
index 23ef291f7b30..c9567b1dcb71 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4233,7 +4233,7 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
 static bool lpt_digital_port_connected(struct intel_encoder *encoder)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
-=09u32 bit =3D dev_priv->hotplug.pch_hpd[encoder->hpd_pin];
+=09u32 bit =3D dev_priv->display->hotplug.pch_hpd[encoder->hpd_pin];
=20
 =09return intel_de_read(dev_priv, SDEISR) & bit;
 }
@@ -4241,7 +4241,7 @@ static bool lpt_digital_port_connected(struct intel_e=
ncoder *encoder)
 static bool hsw_digital_port_connected(struct intel_encoder *encoder)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
-=09u32 bit =3D dev_priv->hotplug.hpd[encoder->hpd_pin];
+=09u32 bit =3D dev_priv->display->hotplug.hpd[encoder->hpd_pin];
=20
 =09return intel_de_read(dev_priv, DEISR) & bit;
 }
@@ -4249,7 +4249,7 @@ static bool hsw_digital_port_connected(struct intel_e=
ncoder *encoder)
 static bool bdw_digital_port_connected(struct intel_encoder *encoder)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
-=09u32 bit =3D dev_priv->hotplug.hpd[encoder->hpd_pin];
+=09u32 bit =3D dev_priv->display->hotplug.hpd[encoder->hpd_pin];
=20
 =09return intel_de_read(dev_priv, GEN8_DE_PORT_ISR) & bit;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers=
/gpu/drm/i915/display/intel_display_debugfs.c
index 5cd93ca2aaa1..4504f5730712 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1840,14 +1840,14 @@ static const struct file_operations i915_cur_wm_lat=
ency_fops =3D {
 static int i915_hpd_storm_ctl_show(struct seq_file *m, void *data)
 {
 =09struct drm_i915_private *dev_priv =3D m->private;
-=09struct i915_hotplug *hotplug =3D &dev_priv->hotplug;
+=09struct i915_hotplug *hotplug =3D &dev_priv->display->hotplug;
=20
 =09/* Synchronize with everything first in case there's been an HPD
 =09 * storm, but we haven't finished handling it in the kernel yet
 =09 */
 =09intel_synchronize_irq(dev_priv);
-=09flush_work(&dev_priv->hotplug.dig_port_work);
-=09flush_delayed_work(&dev_priv->hotplug.hotplug_work);
+=09flush_work(&dev_priv->_display.hotplug.dig_port_work);
+=09flush_delayed_work(&dev_priv->_display.hotplug.hotplug_work);
=20
 =09seq_printf(m, "Threshold: %d\n", hotplug->hpd_storm_threshold);
 =09seq_printf(m, "Detected: %s\n",
@@ -1862,7 +1862,7 @@ static ssize_t i915_hpd_storm_ctl_write(struct file *=
file,
 {
 =09struct seq_file *m =3D file->private_data;
 =09struct drm_i915_private *dev_priv =3D m->private;
-=09struct i915_hotplug *hotplug =3D &dev_priv->hotplug;
+=09struct i915_hotplug *hotplug =3D &dev_priv->display->hotplug;
 =09unsigned int new_threshold;
 =09int i;
 =09char *newline;
@@ -1901,7 +1901,7 @@ static ssize_t i915_hpd_storm_ctl_write(struct file *=
file,
 =09spin_unlock_irq(&dev_priv->irq_lock);
=20
 =09/* Re-enable hpd immediately if we were in an irq storm */
-=09flush_delayed_work(&dev_priv->hotplug.reenable_work);
+=09flush_delayed_work(&dev_priv->display->hotplug.reenable_work);
=20
 =09return len;
 }
@@ -1925,7 +1925,7 @@ static int i915_hpd_short_storm_ctl_show(struct seq_f=
ile *m, void *data)
 =09struct drm_i915_private *dev_priv =3D m->private;
=20
 =09seq_printf(m, "Enabled: %s\n",
-=09=09   yesno(dev_priv->hotplug.hpd_short_storm_enabled));
+=09=09   yesno(dev_priv->display->hotplug.hpd_short_storm_enabled));
=20
 =09return 0;
 }
@@ -1943,7 +1943,7 @@ static ssize_t i915_hpd_short_storm_ctl_write(struct =
file *file,
 {
 =09struct seq_file *m =3D file->private_data;
 =09struct drm_i915_private *dev_priv =3D m->private;
-=09struct i915_hotplug *hotplug =3D &dev_priv->hotplug;
+=09struct i915_hotplug *hotplug =3D &dev_priv->display->hotplug;
 =09char *newline;
 =09char tmp[16];
 =09int i;
@@ -1979,7 +1979,7 @@ static ssize_t i915_hpd_short_storm_ctl_write(struct =
file *file,
 =09spin_unlock_irq(&dev_priv->irq_lock);
=20
 =09/* Re-enable hpd immediately if we were in an irq storm */
-=09flush_delayed_work(&dev_priv->hotplug.reenable_work);
+=09flush_delayed_work(&dev_priv->display->hotplug.reenable_work);
=20
 =09return len;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm=
/i915/display/intel_hotplug.c
index 425da9f9c735..ffbca89ff51b 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -118,13 +118,13 @@ intel_connector_hpd_pin(struct intel_connector *conne=
ctor)
  * responsible for further action.
  *
  * The number of IRQs that are allowed within @HPD_STORM_DETECT_PERIOD is
- * stored in @dev_priv->hotplug.hpd_storm_threshold which defaults to
+ * stored in @dev_priv->display->hotplug.hpd_storm_threshold which default=
s to
  * @HPD_STORM_DEFAULT_THRESHOLD. Long IRQs count as +10 to this threshold,=
 and
  * short IRQs count as +1. If this threshold is exceeded, it's considered =
an
  * IRQ storm and the IRQ state is set to @HPD_MARK_DISABLED.
  *
  * By default, most systems will only count long IRQs towards
- * &dev_priv->hotplug.hpd_storm_threshold. However, some older systems als=
o
+ * &dev_priv->display->hotplug.hpd_storm_threshold. However, some older sy=
stems also
  * suffer from short IRQ storms and must also track these. Because short I=
RQ
  * storms are naturally caused by sideband interactions with DP MST device=
s,
  * short IRQ detection is only enabled for systems without DP MST support.
@@ -139,7 +139,7 @@ intel_connector_hpd_pin(struct intel_connector *connect=
or)
 static bool intel_hpd_irq_storm_detect(struct drm_i915_private *dev_priv,
 =09=09=09=09       enum hpd_pin pin, bool long_hpd)
 {
-=09struct i915_hotplug *hpd =3D &dev_priv->hotplug;
+=09struct i915_hotplug *hpd =3D &dev_priv->display->hotplug;
 =09unsigned long start =3D hpd->stats[pin].last_jiffies;
 =09unsigned long end =3D start + msecs_to_jiffies(HPD_STORM_DETECT_PERIOD)=
;
 =09const int increment =3D long_hpd ? 10 : 1;
@@ -147,7 +147,7 @@ static bool intel_hpd_irq_storm_detect(struct drm_i915_=
private *dev_priv,
 =09bool storm =3D false;
=20
 =09if (!threshold ||
-=09    (!long_hpd && !dev_priv->hotplug.hpd_short_storm_enabled))
+=09    (!long_hpd && !dev_priv->display->hotplug.hpd_short_storm_enabled))
 =09=09return false;
=20
 =09if (!time_in_range(jiffies, start, end)) {
@@ -190,7 +190,7 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_p=
rivate *dev_priv)
=20
 =09=09pin =3D intel_connector_hpd_pin(connector);
 =09=09if (pin =3D=3D HPD_NONE ||
-=09=09    dev_priv->hotplug.stats[pin].state !=3D HPD_MARK_DISABLED)
+=09=09    dev_priv->display->hotplug.stats[pin].state !=3D HPD_MARK_DISABL=
ED)
 =09=09=09continue;
=20
 =09=09drm_info(&dev_priv->drm,
@@ -198,7 +198,7 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_p=
rivate *dev_priv)
 =09=09=09 "switching from hotplug detection to polling\n",
 =09=09=09 connector->base.name);
=20
-=09=09dev_priv->hotplug.stats[pin].state =3D HPD_DISABLED;
+=09=09dev_priv->display->hotplug.stats[pin].state =3D HPD_DISABLED;
 =09=09connector->base.polled =3D DRM_CONNECTOR_POLL_CONNECT |
 =09=09=09DRM_CONNECTOR_POLL_DISCONNECT;
 =09=09hpd_disabled =3D true;
@@ -208,7 +208,7 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_p=
rivate *dev_priv)
 =09/* Enable polling and queue hotplug re-enabling. */
 =09if (hpd_disabled) {
 =09=09drm_kms_helper_poll_enable(dev);
-=09=09mod_delayed_work(system_wq, &dev_priv->hotplug.reenable_work,
+=09=09mod_delayed_work(system_wq, &dev_priv->display->hotplug.reenable_wor=
k,
 =09=09=09=09 msecs_to_jiffies(HPD_STORM_REENABLE_DELAY));
 =09}
 }
@@ -223,7 +223,7 @@ static void intel_hpd_irq_storm_reenable_work(struct wo=
rk_struct *work)
 {
 =09struct drm_i915_private *dev_priv =3D
 =09=09container_of(work, typeof(*dev_priv),
-=09=09=09     hotplug.reenable_work.work);
+=09=09=09     _display.hotplug.reenable_work.work);
 =09struct drm_device *dev =3D &dev_priv->drm;
 =09struct drm_connector_list_iter conn_iter;
 =09struct intel_connector *connector;
@@ -238,7 +238,7 @@ static void intel_hpd_irq_storm_reenable_work(struct wo=
rk_struct *work)
 =09for_each_intel_connector_iter(connector, &conn_iter) {
 =09=09pin =3D intel_connector_hpd_pin(connector);
 =09=09if (pin =3D=3D HPD_NONE ||
-=09=09    dev_priv->hotplug.stats[pin].state !=3D HPD_DISABLED)
+=09=09    dev_priv->display->hotplug.stats[pin].state !=3D HPD_DISABLED)
 =09=09=09continue;
=20
 =09=09if (connector->base.polled !=3D connector->polled)
@@ -250,8 +250,8 @@ static void intel_hpd_irq_storm_reenable_work(struct wo=
rk_struct *work)
 =09drm_connector_list_iter_end(&conn_iter);
=20
 =09for_each_hpd_pin(pin) {
-=09=09if (dev_priv->hotplug.stats[pin].state =3D=3D HPD_DISABLED)
-=09=09=09dev_priv->hotplug.stats[pin].state =3D HPD_ENABLED;
+=09=09if (dev_priv->display->hotplug.stats[pin].state =3D=3D HPD_DISABLED)
+=09=09=09dev_priv->display->hotplug.stats[pin].state =3D HPD_ENABLED;
 =09}
=20
 =09intel_hpd_irq_setup(dev_priv);
@@ -302,16 +302,17 @@ static bool intel_encoder_has_hpd_pulse(struct intel_=
encoder *encoder)
 static void i915_digport_work_func(struct work_struct *work)
 {
 =09struct drm_i915_private *dev_priv =3D
-=09=09container_of(work, struct drm_i915_private, hotplug.dig_port_work);
+=09=09container_of(work, struct drm_i915_private,
+=09=09=09     _display.hotplug.dig_port_work);
 =09u32 long_port_mask, short_port_mask;
 =09struct intel_encoder *encoder;
 =09u32 old_bits =3D 0;
=20
 =09spin_lock_irq(&dev_priv->irq_lock);
-=09long_port_mask =3D dev_priv->hotplug.long_port_mask;
-=09dev_priv->hotplug.long_port_mask =3D 0;
-=09short_port_mask =3D dev_priv->hotplug.short_port_mask;
-=09dev_priv->hotplug.short_port_mask =3D 0;
+=09long_port_mask =3D dev_priv->display->hotplug.long_port_mask;
+=09dev_priv->display->hotplug.long_port_mask =3D 0;
+=09short_port_mask =3D dev_priv->display->hotplug.short_port_mask;
+=09dev_priv->display->hotplug.short_port_mask =3D 0;
 =09spin_unlock_irq(&dev_priv->irq_lock);
=20
 =09for_each_intel_encoder(&dev_priv->drm, encoder) {
@@ -340,9 +341,9 @@ static void i915_digport_work_func(struct work_struct *=
work)
=20
 =09if (old_bits) {
 =09=09spin_lock_irq(&dev_priv->irq_lock);
-=09=09dev_priv->hotplug.event_bits |=3D old_bits;
+=09=09dev_priv->display->hotplug.event_bits |=3D old_bits;
 =09=09spin_unlock_irq(&dev_priv->irq_lock);
-=09=09queue_delayed_work(system_wq, &dev_priv->hotplug.hotplug_work, 0);
+=09=09queue_delayed_work(system_wq, &dev_priv->_display.hotplug.hotplug_wo=
rk, 0);
 =09}
 }
=20
@@ -358,10 +359,10 @@ void intel_hpd_trigger_irq(struct intel_digital_port =
*dig_port)
 =09struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
=20
 =09spin_lock_irq(&i915->irq_lock);
-=09i915->hotplug.short_port_mask |=3D BIT(dig_port->base.port);
+=09i915->display->hotplug.short_port_mask |=3D BIT(dig_port->base.port);
 =09spin_unlock_irq(&i915->irq_lock);
=20
-=09queue_work(i915->hotplug.dp_wq, &i915->hotplug.dig_port_work);
+=09queue_work(i915->display->hotplug.dp_wq, &i915->_display.hotplug.dig_po=
rt_work);
 }
=20
 /*
@@ -371,7 +372,7 @@ static void i915_hotplug_work_func(struct work_struct *=
work)
 {
 =09struct drm_i915_private *dev_priv =3D
 =09=09container_of(work, struct drm_i915_private,
-=09=09=09     hotplug.hotplug_work.work);
+=09=09=09     _display.hotplug.hotplug_work.work);
 =09struct drm_device *dev =3D &dev_priv->drm;
 =09struct drm_connector_list_iter conn_iter;
 =09struct intel_connector *connector;
@@ -384,10 +385,10 @@ static void i915_hotplug_work_func(struct work_struct=
 *work)
=20
 =09spin_lock_irq(&dev_priv->irq_lock);
=20
-=09hpd_event_bits =3D dev_priv->hotplug.event_bits;
-=09dev_priv->hotplug.event_bits =3D 0;
-=09hpd_retry_bits =3D dev_priv->hotplug.retry_bits;
-=09dev_priv->hotplug.retry_bits =3D 0;
+=09hpd_event_bits =3D dev_priv->display->hotplug.event_bits;
+=09dev_priv->display->hotplug.event_bits =3D 0;
+=09hpd_retry_bits =3D dev_priv->display->hotplug.retry_bits;
+=09dev_priv->display->hotplug.retry_bits =3D 0;
=20
 =09/* Enable polling for connectors which had HPD IRQ storms */
 =09intel_hpd_irq_storm_switch_to_polling(dev_priv);
@@ -440,10 +441,10 @@ static void i915_hotplug_work_func(struct work_struct=
 *work)
 =09retry &=3D ~changed;
 =09if (retry) {
 =09=09spin_lock_irq(&dev_priv->irq_lock);
-=09=09dev_priv->hotplug.retry_bits |=3D retry;
+=09=09dev_priv->display->hotplug.retry_bits |=3D retry;
 =09=09spin_unlock_irq(&dev_priv->irq_lock);
=20
-=09=09mod_delayed_work(system_wq, &dev_priv->hotplug.hotplug_work,
+=09=09mod_delayed_work(system_wq, &dev_priv->_display.hotplug.hotplug_work=
,
 =09=09=09=09 msecs_to_jiffies(HPD_RETRY_DELAY));
 =09}
 }
@@ -507,10 +508,10 @@ void intel_hpd_irq_handler(struct drm_i915_private *d=
ev_priv,
=20
 =09=09if (long_hpd) {
 =09=09=09long_hpd_pulse_mask |=3D BIT(pin);
-=09=09=09dev_priv->hotplug.long_port_mask |=3D BIT(port);
+=09=09=09dev_priv->display->hotplug.long_port_mask |=3D BIT(port);
 =09=09} else {
 =09=09=09short_hpd_pulse_mask |=3D BIT(pin);
-=09=09=09dev_priv->hotplug.short_port_mask |=3D BIT(port);
+=09=09=09dev_priv->display->hotplug.short_port_mask |=3D BIT(port);
 =09=09}
 =09}
=20
@@ -521,7 +522,7 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev=
_priv,
 =09=09if (!(BIT(pin) & pin_mask))
 =09=09=09continue;
=20
-=09=09if (dev_priv->hotplug.stats[pin].state =3D=3D HPD_DISABLED) {
+=09=09if (dev_priv->display->hotplug.stats[pin].state =3D=3D HPD_DISABLED)=
 {
 =09=09=09/*
 =09=09=09 * On GMCH platforms the interrupt mask bits only
 =09=09=09 * prevent irq generation, not the setting of the
@@ -534,7 +535,7 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev=
_priv,
 =09=09=09continue;
 =09=09}
=20
-=09=09if (dev_priv->hotplug.stats[pin].state !=3D HPD_ENABLED)
+=09=09if (dev_priv->display->hotplug.stats[pin].state !=3D HPD_ENABLED)
 =09=09=09continue;
=20
 =09=09/*
@@ -545,13 +546,13 @@ void intel_hpd_irq_handler(struct drm_i915_private *d=
ev_priv,
 =09=09if (((short_hpd_pulse_mask | long_hpd_pulse_mask) & BIT(pin))) {
 =09=09=09long_hpd =3D long_hpd_pulse_mask & BIT(pin);
 =09=09} else {
-=09=09=09dev_priv->hotplug.event_bits |=3D BIT(pin);
+=09=09=09dev_priv->display->hotplug.event_bits |=3D BIT(pin);
 =09=09=09long_hpd =3D true;
 =09=09=09queue_hp =3D true;
 =09=09}
=20
 =09=09if (intel_hpd_irq_storm_detect(dev_priv, pin, long_hpd)) {
-=09=09=09dev_priv->hotplug.event_bits &=3D ~BIT(pin);
+=09=09=09dev_priv->display->hotplug.event_bits &=3D ~BIT(pin);
 =09=09=09storm_detected =3D true;
 =09=09=09queue_hp =3D true;
 =09=09}
@@ -572,9 +573,9 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev=
_priv,
 =09 * deadlock.
 =09 */
 =09if (queue_dig)
-=09=09queue_work(dev_priv->hotplug.dp_wq, &dev_priv->hotplug.dig_port_work=
);
+=09=09queue_work(dev_priv->_display.hotplug.dp_wq, &dev_priv->_display.hot=
plug.dig_port_work);
 =09if (queue_hp)
-=09=09queue_delayed_work(system_wq, &dev_priv->hotplug.hotplug_work, 0);
+=09=09queue_delayed_work(system_wq, &dev_priv->_display.hotplug.hotplug_wo=
rk, 0);
 }
=20
 /**
@@ -599,8 +600,8 @@ void intel_hpd_init(struct drm_i915_private *dev_priv)
 =09=09return;
=20
 =09for_each_hpd_pin(i) {
-=09=09dev_priv->hotplug.stats[i].count =3D 0;
-=09=09dev_priv->hotplug.stats[i].state =3D HPD_ENABLED;
+=09=09dev_priv->display->hotplug.stats[i].count =3D 0;
+=09=09dev_priv->display->hotplug.stats[i].state =3D HPD_ENABLED;
 =09}
=20
 =09/*
@@ -616,7 +617,7 @@ static void i915_hpd_poll_init_work(struct work_struct =
*work)
 {
 =09struct drm_i915_private *dev_priv =3D
 =09=09container_of(work, struct drm_i915_private,
-=09=09=09     hotplug.poll_init_work);
+=09=09=09     _display.hotplug.poll_init_work);
 =09struct drm_device *dev =3D &dev_priv->drm;
 =09struct drm_connector_list_iter conn_iter;
 =09struct intel_connector *connector;
@@ -624,7 +625,7 @@ static void i915_hpd_poll_init_work(struct work_struct =
*work)
=20
 =09mutex_lock(&dev->mode_config.mutex);
=20
-=09enabled =3D READ_ONCE(dev_priv->hotplug.poll_enabled);
+=09enabled =3D READ_ONCE(dev_priv->display->hotplug.poll_enabled);
=20
 =09drm_connector_list_iter_begin(dev, &conn_iter);
 =09for_each_intel_connector_iter(connector, &conn_iter) {
@@ -676,7 +677,7 @@ void intel_hpd_poll_enable(struct drm_i915_private *dev=
_priv)
 =09if (!HAS_DISPLAY(dev_priv))
 =09=09return;
=20
-=09WRITE_ONCE(dev_priv->hotplug.poll_enabled, true);
+=09WRITE_ONCE(dev_priv->display->hotplug.poll_enabled, true);
=20
 =09/*
 =09 * We might already be holding dev->mode_config.mutex, so do this in a
@@ -684,7 +685,7 @@ void intel_hpd_poll_enable(struct drm_i915_private *dev=
_priv)
 =09 * As well, there's no issue if we race here since we always reschedule
 =09 * this worker anyway
 =09 */
-=09schedule_work(&dev_priv->hotplug.poll_init_work);
+=09schedule_work(&dev_priv->_display.hotplug.poll_init_work);
 }
=20
 /**
@@ -711,17 +712,17 @@ void intel_hpd_poll_disable(struct drm_i915_private *=
dev_priv)
 =09if (!HAS_DISPLAY(dev_priv))
 =09=09return;
=20
-=09WRITE_ONCE(dev_priv->hotplug.poll_enabled, false);
-=09schedule_work(&dev_priv->hotplug.poll_init_work);
+=09WRITE_ONCE(dev_priv->display->hotplug.poll_enabled, false);
+=09schedule_work(&dev_priv->_display.hotplug.poll_init_work);
 }
=20
 void intel_hpd_init_work(struct drm_i915_private *dev_priv)
 {
-=09INIT_DELAYED_WORK(&dev_priv->hotplug.hotplug_work,
+=09INIT_DELAYED_WORK(&dev_priv->_display.hotplug.hotplug_work,
 =09=09=09  i915_hotplug_work_func);
-=09INIT_WORK(&dev_priv->hotplug.dig_port_work, i915_digport_work_func);
-=09INIT_WORK(&dev_priv->hotplug.poll_init_work, i915_hpd_poll_init_work);
-=09INIT_DELAYED_WORK(&dev_priv->hotplug.reenable_work,
+=09INIT_WORK(&dev_priv->_display.hotplug.dig_port_work, i915_digport_work_=
func);
+=09INIT_WORK(&dev_priv->_display.hotplug.poll_init_work, i915_hpd_poll_ini=
t_work);
+=09INIT_DELAYED_WORK(&dev_priv->_display.hotplug.reenable_work,
 =09=09=09  intel_hpd_irq_storm_reenable_work);
 }
=20
@@ -732,17 +733,17 @@ void intel_hpd_cancel_work(struct drm_i915_private *d=
ev_priv)
=20
 =09spin_lock_irq(&dev_priv->irq_lock);
=20
-=09dev_priv->hotplug.long_port_mask =3D 0;
-=09dev_priv->hotplug.short_port_mask =3D 0;
-=09dev_priv->hotplug.event_bits =3D 0;
-=09dev_priv->hotplug.retry_bits =3D 0;
+=09dev_priv->display->hotplug.long_port_mask =3D 0;
+=09dev_priv->display->hotplug.short_port_mask =3D 0;
+=09dev_priv->display->hotplug.event_bits =3D 0;
+=09dev_priv->display->hotplug.retry_bits =3D 0;
=20
 =09spin_unlock_irq(&dev_priv->irq_lock);
=20
-=09cancel_work_sync(&dev_priv->hotplug.dig_port_work);
-=09cancel_delayed_work_sync(&dev_priv->hotplug.hotplug_work);
-=09cancel_work_sync(&dev_priv->hotplug.poll_init_work);
-=09cancel_delayed_work_sync(&dev_priv->hotplug.reenable_work);
+=09cancel_work_sync(&dev_priv->_display.hotplug.dig_port_work);
+=09cancel_delayed_work_sync(&dev_priv->_display.hotplug.hotplug_work);
+=09cancel_work_sync(&dev_priv->_display.hotplug.poll_init_work);
+=09cancel_delayed_work_sync(&dev_priv->_display.hotplug.reenable_work);
 }
=20
 bool intel_hpd_disable(struct drm_i915_private *dev_priv, enum hpd_pin pin=
)
@@ -753,8 +754,8 @@ bool intel_hpd_disable(struct drm_i915_private *dev_pri=
v, enum hpd_pin pin)
 =09=09return false;
=20
 =09spin_lock_irq(&dev_priv->irq_lock);
-=09if (dev_priv->hotplug.stats[pin].state =3D=3D HPD_ENABLED) {
-=09=09dev_priv->hotplug.stats[pin].state =3D HPD_DISABLED;
+=09if (dev_priv->display->hotplug.stats[pin].state =3D=3D HPD_ENABLED) {
+=09=09dev_priv->display->hotplug.stats[pin].state =3D HPD_DISABLED;
 =09=09ret =3D true;
 =09}
 =09spin_unlock_irq(&dev_priv->irq_lock);
@@ -768,6 +769,6 @@ void intel_hpd_enable(struct drm_i915_private *dev_priv=
, enum hpd_pin pin)
 =09=09return;
=20
 =09spin_lock_irq(&dev_priv->irq_lock);
-=09dev_priv->hotplug.stats[pin].state =3D HPD_ENABLED;
+=09dev_priv->display->hotplug.stats[pin].state =3D HPD_ENABLED;
 =09spin_unlock_irq(&dev_priv->irq_lock);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915=
/display/intel_tc.c
index 3ffece568ed9..a3b3136059a6 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -207,7 +207,7 @@ static u32 icl_tc_port_live_status_mask(struct intel_di=
gital_port *dig_port)
 {
 =09struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
 =09struct intel_uncore *uncore =3D &i915->uncore;
-=09u32 isr_bit =3D i915->hotplug.pch_hpd[dig_port->base.hpd_pin];
+=09u32 isr_bit =3D i915->display->hotplug.pch_hpd[dig_port->base.hpd_pin];
 =09u32 mask =3D 0;
 =09u32 val;
=20
@@ -240,7 +240,7 @@ static u32 adl_tc_port_live_status_mask(struct intel_di=
gital_port *dig_port)
 {
 =09struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
 =09enum tc_port tc_port =3D intel_port_to_tc(i915, dig_port->base.port);
-=09u32 isr_bit =3D i915->hotplug.pch_hpd[dig_port->base.hpd_pin];
+=09u32 isr_bit =3D i915->display->hotplug.pch_hpd[dig_port->base.hpd_pin];
 =09struct intel_uncore *uncore =3D &i915->uncore;
 =09u32 val, mask =3D 0;
=20
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_dr=
v.c
index ddc183b7711c..8878bfcee0ca 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -236,8 +236,8 @@ static int i915_workqueues_init(struct drm_i915_private=
 *dev_priv)
 =09if (dev_priv->wq =3D=3D NULL)
 =09=09goto out_err;
=20
-=09dev_priv->hotplug.dp_wq =3D alloc_ordered_workqueue("i915-dp", 0);
-=09if (dev_priv->hotplug.dp_wq =3D=3D NULL)
+=09dev_priv->display->hotplug.dp_wq =3D alloc_ordered_workqueue("i915-dp",=
 0);
+=09if (dev_priv->display->hotplug.dp_wq =3D=3D NULL)
 =09=09goto out_free_wq;
=20
 =09return 0;
@@ -252,7 +252,7 @@ static int i915_workqueues_init(struct drm_i915_private=
 *dev_priv)
=20
 static void i915_workqueues_cleanup(struct drm_i915_private *dev_priv)
 {
-=09destroy_workqueue(dev_priv->hotplug.dp_wq);
+=09destroy_workqueue(dev_priv->display->hotplug.dp_wq);
 =09destroy_workqueue(dev_priv->wq);
 }
=20
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 3f9bebb8478f..25a17808dcee 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -899,6 +899,8 @@ struct drm_i915_display {
=20
 =09/* Mutex to protect the above hdcp component related values. */
 =09struct mutex hdcp_comp_mutex;
+
+=09struct i915_hotplug hotplug;
 };
=20
 struct drm_i915_private {
@@ -972,7 +974,6 @@ struct drm_i915_private {
 =09};
 =09u32 pipestat_irq_mask[I915_MAX_PIPES];
=20
-=09struct i915_hotplug hotplug;
 =09struct intel_opregion opregion;
 =09struct intel_vbt_data vbt;
=20
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_ir=
q.c
index dcc404ca919f..260024445d68 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -181,7 +181,7 @@ static const u32 hpd_sde_dg1[HPD_NUM_PINS] =3D {
=20
 static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
 {
-=09struct i915_hotplug *hpd =3D &dev_priv->hotplug;
+=09struct i915_hotplug *hpd =3D &dev_priv->display->hotplug;
=20
 =09if (HAS_GMCH(dev_priv)) {
 =09=09if (IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
@@ -1271,7 +1271,7 @@ static u32 intel_hpd_enabled_irqs(struct drm_i915_pri=
vate *dev_priv,
 =09u32 enabled_irqs =3D 0;
=20
 =09for_each_intel_encoder(&dev_priv->drm, encoder)
-=09=09if (dev_priv->hotplug.stats[encoder->hpd_pin].state =3D=3D HPD_ENABL=
ED)
+=09=09if (dev_priv->display->hotplug.stats[encoder->hpd_pin].state =3D=3D =
HPD_ENABLED)
 =09=09=09enabled_irqs |=3D hpd[encoder->hpd_pin];
=20
 =09return enabled_irqs;
@@ -1636,7 +1636,7 @@ static void i9xx_hpd_irq_handler(struct drm_i915_priv=
ate *dev_priv,
 =09if (hotplug_trigger) {
 =09=09intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 =09=09=09=09   hotplug_trigger, hotplug_trigger,
-=09=09=09=09   dev_priv->hotplug.hpd,
+=09=09=09=09   dev_priv->display->hotplug.hpd,
 =09=09=09=09   i9xx_port_hotplug_long_detect);
=20
 =09=09intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
@@ -1840,7 +1840,7 @@ static void ibx_hpd_irq_handler(struct drm_i915_priva=
te *dev_priv,
=20
 =09intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 =09=09=09   hotplug_trigger, dig_hotplug_reg,
-=09=09=09   dev_priv->hotplug.pch_hpd,
+=09=09=09   dev_priv->display->hotplug.pch_hpd,
 =09=09=09   pch_port_hotplug_long_detect);
=20
 =09intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
@@ -1985,7 +1985,7 @@ static void icp_irq_handler(struct drm_i915_private *=
dev_priv, u32 pch_iir)
=20
 =09=09intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 =09=09=09=09   ddi_hotplug_trigger, dig_hotplug_reg,
-=09=09=09=09   dev_priv->hotplug.pch_hpd,
+=09=09=09=09   dev_priv->display->hotplug.pch_hpd,
 =09=09=09=09   icp_ddi_port_hotplug_long_detect);
 =09}
=20
@@ -1997,7 +1997,7 @@ static void icp_irq_handler(struct drm_i915_private *=
dev_priv, u32 pch_iir)
=20
 =09=09intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 =09=09=09=09   tc_hotplug_trigger, dig_hotplug_reg,
-=09=09=09=09   dev_priv->hotplug.pch_hpd,
+=09=09=09=09   dev_priv->display->hotplug.pch_hpd,
 =09=09=09=09   icp_tc_port_hotplug_long_detect);
 =09}
=20
@@ -2023,7 +2023,7 @@ static void spt_irq_handler(struct drm_i915_private *=
dev_priv, u32 pch_iir)
=20
 =09=09intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 =09=09=09=09   hotplug_trigger, dig_hotplug_reg,
-=09=09=09=09   dev_priv->hotplug.pch_hpd,
+=09=09=09=09   dev_priv->display->hotplug.pch_hpd,
 =09=09=09=09   spt_port_hotplug_long_detect);
 =09}
=20
@@ -2035,7 +2035,7 @@ static void spt_irq_handler(struct drm_i915_private *=
dev_priv, u32 pch_iir)
=20
 =09=09intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 =09=09=09=09   hotplug2_trigger, dig_hotplug_reg,
-=09=09=09=09   dev_priv->hotplug.pch_hpd,
+=09=09=09=09   dev_priv->display->hotplug.pch_hpd,
 =09=09=09=09   spt_port_hotplug2_long_detect);
 =09}
=20
@@ -2056,7 +2056,7 @@ static void ilk_hpd_irq_handler(struct drm_i915_priva=
te *dev_priv,
=20
 =09intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 =09=09=09   hotplug_trigger, dig_hotplug_reg,
-=09=09=09   dev_priv->hotplug.hpd,
+=09=09=09   dev_priv->display->hotplug.hpd,
 =09=09=09   ilk_port_hotplug_long_detect);
=20
 =09intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
@@ -2236,7 +2236,7 @@ static void bxt_hpd_irq_handler(struct drm_i915_priva=
te *dev_priv,
=20
 =09intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 =09=09=09   hotplug_trigger, dig_hotplug_reg,
-=09=09=09   dev_priv->hotplug.hpd,
+=09=09=09   dev_priv->display->hotplug.hpd,
 =09=09=09   bxt_port_hotplug_long_detect);
=20
 =09intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
@@ -2256,7 +2256,7 @@ static void gen11_hpd_irq_handler(struct drm_i915_pri=
vate *dev_priv, u32 iir)
=20
 =09=09intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 =09=09=09=09   trigger_tc, dig_hotplug_reg,
-=09=09=09=09   dev_priv->hotplug.hpd,
+=09=09=09=09   dev_priv->display->hotplug.hpd,
 =09=09=09=09   gen11_port_hotplug_long_detect);
 =09}
=20
@@ -2268,7 +2268,7 @@ static void gen11_hpd_irq_handler(struct drm_i915_pri=
vate *dev_priv, u32 iir)
=20
 =09=09intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 =09=09=09=09   trigger_tbt, dig_hotplug_reg,
-=09=09=09=09   dev_priv->hotplug.hpd,
+=09=09=09=09   dev_priv->display->hotplug.hpd,
 =09=09=09=09   gen11_port_hotplug_long_detect);
 =09}
=20
@@ -3310,8 +3310,8 @@ static void ibx_hpd_irq_setup(struct drm_i915_private=
 *dev_priv)
 {
 =09u32 hotplug_irqs, enabled_irqs;
=20
-=09enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.pch=
_hpd);
-=09hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.pch=
_hpd);
+=09enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->display->ho=
tplug.pch_hpd);
+=09hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv->display->ho=
tplug.pch_hpd);
=20
 =09ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
=20
@@ -3380,8 +3380,8 @@ static void icp_hpd_irq_setup(struct drm_i915_private=
 *dev_priv)
 {
 =09u32 hotplug_irqs, enabled_irqs;
=20
-=09enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.pch=
_hpd);
-=09hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.pch=
_hpd);
+=09enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->display->ho=
tplug.pch_hpd);
+=09hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv->display->ho=
tplug.pch_hpd);
=20
 =09if (INTEL_PCH_TYPE(dev_priv) <=3D PCH_TGP)
 =09=09intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_C=
NT_500_ADJ);
@@ -3457,8 +3457,8 @@ static void gen11_hpd_irq_setup(struct drm_i915_priva=
te *dev_priv)
 =09u32 hotplug_irqs, enabled_irqs;
 =09u32 val;
=20
-=09enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.hpd=
);
-=09hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.hpd=
);
+=09enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->display->ho=
tplug.hpd);
+=09hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv->display->ho=
tplug.hpd);
=20
 =09val =3D intel_uncore_read(&dev_priv->uncore, GEN11_DE_HPD_IMR);
 =09val &=3D ~hotplug_irqs;
@@ -3535,8 +3535,8 @@ static void spt_hpd_irq_setup(struct drm_i915_private=
 *dev_priv)
 =09if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_CNP)
 =09=09intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_C=
NT_500_ADJ);
=20
-=09enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.pch=
_hpd);
-=09hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.pch=
_hpd);
+=09enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->display->ho=
tplug.pch_hpd);
+=09hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv->display->ho=
tplug.pch_hpd);
=20
 =09ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
=20
@@ -3575,8 +3575,8 @@ static void ilk_hpd_irq_setup(struct drm_i915_private=
 *dev_priv)
 {
 =09u32 hotplug_irqs, enabled_irqs;
=20
-=09enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.hpd=
);
-=09hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.hpd=
);
+=09enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->display->ho=
tplug.hpd);
+=09hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv->display->ho=
tplug.hpd);
=20
 =09if (DISPLAY_VER(dev_priv) >=3D 8)
 =09=09bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
@@ -3633,8 +3633,8 @@ static void bxt_hpd_irq_setup(struct drm_i915_private=
 *dev_priv)
 {
 =09u32 hotplug_irqs, enabled_irqs;
=20
-=09enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.hpd=
);
-=09hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.hpd=
);
+=09enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->display->ho=
tplug.hpd);
+=09hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv->display->ho=
tplug.hpd);
=20
 =09bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
=20
@@ -4384,14 +4384,14 @@ void intel_irq_init(struct drm_i915_private *dev_pr=
iv)
 =09if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 =09=09dev_priv->display_irqs_enabled =3D false;
=20
-=09dev_priv->hotplug.hpd_storm_threshold =3D HPD_STORM_DEFAULT_THRESHOLD;
+=09dev_priv->display->hotplug.hpd_storm_threshold =3D HPD_STORM_DEFAULT_TH=
RESHOLD;
 =09/* If we have MST support, we want to avoid doing short HPD IRQ storm
 =09 * detection, as short HPD storms will occur as a natural part of
 =09 * sideband messaging with MST.
 =09 * On older platforms however, IRQ storms can occur with both long and
 =09 * short pulses, as seen on some G4x systems.
 =09 */
-=09dev_priv->hotplug.hpd_short_storm_enabled =3D !HAS_DP_MST(dev_priv);
+=09dev_priv->display->hotplug.hpd_short_storm_enabled =3D !HAS_DP_MST(dev_=
priv);
=20
 =09if (HAS_GMCH(dev_priv)) {
 =09=09if (I915_HAS_HOTPLUG(dev_priv))
--=20
2.31.1

