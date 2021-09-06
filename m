Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD786401557
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 05:51:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 471D289A91;
	Mon,  6 Sep 2021 03:51:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0B00899F3
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Sep 2021 03:51:04 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-182-UPv8sLviNKeF7rpYzHzduA-1; Sun, 05 Sep 2021 23:44:26 -0400
X-MC-Unique: UPv8sLviNKeF7rpYzHzduA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6390B80196C;
 Mon,  6 Sep 2021 03:44:25 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1D13A5D9DE;
 Mon,  6 Sep 2021 03:44:23 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Mon,  6 Sep 2021 13:43:55 +1000
Message-Id: <20210906034356.2946530-10-airlied@gmail.com>
In-Reply-To: <20210906034356.2946530-1-airlied@gmail.com>
References: <20210906034356.2946530-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 09/10] drm/i915/display: move drrs into display
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
 .../drm/i915/display/intel_display_debugfs.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     | 32 +++++++++----------
 drivers/gpu/drm/i915/display/intel_psr.c      |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  2 +-
 4 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers=
/gpu/drm/i915/display/intel_display_debugfs.c
index 7221bf2e75b0..0fe8c1ec491f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1234,7 +1234,7 @@ static void drrs_status_per_crtc(struct seq_file *m,
 =09=09=09=09 struct intel_crtc *crtc)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(dev);
-=09struct i915_drrs *drrs =3D &dev_priv->drrs;
+=09struct i915_drrs *drrs =3D &dev_priv->display.drrs;
 =09int vrefresh =3D 0;
 =09struct drm_connector *connector;
 =09struct drm_connector_list_iter conn_iter;
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i9=
15/display/intel_drrs.c
index 670bcd50a56f..2430041f4c53 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -69,7 +69,7 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
 =09=09return;
=20
 =09if (!intel_connector->panel.downclock_mode ||
-=09    dev_priv->drrs.type !=3D SEAMLESS_DRRS_SUPPORT)
+=09    dev_priv->display.drrs.type !=3D SEAMLESS_DRRS_SUPPORT)
 =09=09return;
=20
 =09pipe_config->has_drrs =3D true;
@@ -91,7 +91,7 @@ static void intel_drrs_set_state(struct drm_i915_private =
*dev_priv,
 =09=09=09=09 const struct intel_crtc_state *crtc_state,
 =09=09=09=09 int refresh_rate)
 {
-=09struct intel_dp *intel_dp =3D dev_priv->drrs.dp;
+=09struct intel_dp *intel_dp =3D dev_priv->display.drrs.dp;
 =09struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
 =09enum drrs_refresh_rate_type index =3D DRRS_HIGH_RR;
=20
@@ -112,7 +112,7 @@ static void intel_drrs_set_state(struct drm_i915_privat=
e *dev_priv,
 =09=09return;
 =09}
=20
-=09if (dev_priv->drrs.type < SEAMLESS_DRRS_SUPPORT) {
+=09if (dev_priv->display.drrs.type < SEAMLESS_DRRS_SUPPORT) {
 =09=09drm_dbg_kms(&dev_priv->drm, "Only Seamless DRRS supported.\n");
 =09=09return;
 =09}
@@ -121,7 +121,7 @@ static void intel_drrs_set_state(struct drm_i915_privat=
e *dev_priv,
 =09=09=09refresh_rate)
 =09=09index =3D DRRS_LOW_RR;
=20
-=09if (index =3D=3D dev_priv->drrs.refresh_rate_type) {
+=09if (index =3D=3D dev_priv->display.drrs.refresh_rate_type) {
 =09=09drm_dbg_kms(&dev_priv->drm,
 =09=09=09    "DRRS requested for previously set RR...ignoring\n");
 =09=09return;
@@ -165,7 +165,7 @@ static void intel_drrs_set_state(struct drm_i915_privat=
e *dev_priv,
 =09=09intel_de_write(dev_priv, reg, val);
 =09}
=20
-=09dev_priv->drrs.refresh_rate_type =3D index;
+=09dev_priv->display.drrs.refresh_rate_type =3D index;
=20
 =09drm_dbg_kms(&dev_priv->drm, "eDP Refresh Rate set to : %dHz\n",
 =09=09    refresh_rate);
@@ -176,8 +176,8 @@ intel_drrs_enable_locked(struct intel_dp *intel_dp)
 {
 =09struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
=20
-=09dev_priv->drrs.busy_frontbuffer_bits =3D 0;
-=09dev_priv->drrs.dp =3D intel_dp;
+=09dev_priv->display.drrs.busy_frontbuffer_bits =3D 0;
+=09dev_priv->display.drrs.dp =3D intel_dp;
 }
=20
 /**
@@ -191,7 +191,7 @@ void intel_drrs_enable(struct intel_dp *intel_dp,
 =09=09       const struct intel_crtc_state *crtc_state)
 {
 =09struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
-=09struct i915_drrs *drrs =3D &dev_priv->drrs;
+=09struct i915_drrs *drrs =3D &dev_priv->display.drrs;
=20
 =09if (!crtc_state->has_drrs)
 =09=09return;
@@ -216,7 +216,7 @@ intel_drrs_disable_locked(struct intel_dp *intel_dp,
 =09=09=09  const struct intel_crtc_state *crtc_state)
 {
 =09struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
-=09struct i915_drrs *drrs =3D &dev_priv->drrs;
+=09struct i915_drrs *drrs =3D &dev_priv->display.drrs;
=20
 =09if (drrs->refresh_rate_type =3D=3D DRRS_LOW_RR) {
 =09=09int refresh;
@@ -238,7 +238,7 @@ void intel_drrs_disable(struct intel_dp *intel_dp,
 =09=09=09const struct intel_crtc_state *old_crtc_state)
 {
 =09struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
-=09struct i915_drrs *drrs =3D &dev_priv->drrs;
+=09struct i915_drrs *drrs =3D &dev_priv->display.drrs;
=20
 =09if (!old_crtc_state->has_drrs)
 =09=09return;
@@ -269,7 +269,7 @@ intel_drrs_update(struct intel_dp *intel_dp,
 =09=09  const struct intel_crtc_state *crtc_state)
 {
 =09struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
-=09struct i915_drrs *drrs =3D &dev_priv->drrs;
+=09struct i915_drrs *drrs =3D &dev_priv->display.drrs;
=20
 =09if (drrs->type !=3D SEAMLESS_DRRS_SUPPORT)
 =09=09return;
@@ -292,8 +292,8 @@ intel_drrs_update(struct intel_dp *intel_dp,
 static void intel_drrs_downclock_work(struct work_struct *work)
 {
 =09struct drm_i915_private *dev_priv =3D
-=09=09container_of(work, typeof(*dev_priv), drrs.work.work);
-=09struct i915_drrs *drrs =3D &dev_priv->drrs;
+=09=09container_of(work, typeof(*dev_priv), display.drrs.work.work);
+=09struct i915_drrs *drrs =3D &dev_priv->display.drrs;
 =09struct intel_dp *intel_dp;
=20
 =09mutex_lock(&drrs->mutex);
@@ -335,7 +335,7 @@ static void intel_drrs_downclock_work(struct work_struc=
t *work)
 void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
 =09=09=09   unsigned int frontbuffer_bits)
 {
-=09struct i915_drrs *drrs =3D &dev_priv->drrs;
+=09struct i915_drrs *drrs =3D &dev_priv->display.drrs;
 =09struct intel_dp *intel_dp;
 =09struct drm_crtc *crtc;
 =09enum pipe pipe;
@@ -382,7 +382,7 @@ void intel_drrs_invalidate(struct drm_i915_private *dev=
_priv,
 void intel_drrs_flush(struct drm_i915_private *dev_priv,
 =09=09      unsigned int frontbuffer_bits)
 {
-=09struct i915_drrs *drrs =3D &dev_priv->drrs;
+=09struct i915_drrs *drrs =3D &dev_priv->display.drrs;
 =09struct intel_dp *intel_dp;
 =09struct drm_crtc *crtc;
 =09enum pipe pipe;
@@ -439,7 +439,7 @@ intel_drrs_init(struct intel_connector *connector,
 =09=09struct drm_display_mode *fixed_mode)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
-=09struct i915_drrs *drrs =3D &dev_priv->drrs;
+=09struct i915_drrs *drrs =3D &dev_priv->display.drrs;
 =09struct drm_display_mode *downclock_mode =3D NULL;
=20
 =09INIT_DELAYED_WORK(&drrs->work, intel_drrs_downclock_work);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i91=
5/display/intel_psr.c
index b355c8d36b2d..be826ef8bd43 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1225,7 +1225,7 @@ void intel_psr_enable(struct intel_dp *intel_dp,
 =09if (!crtc_state->has_psr)
 =09=09return;
=20
-=09drm_WARN_ON(&dev_priv->drm, dev_priv->drrs.dp);
+=09drm_WARN_ON(&dev_priv->drm, dev_priv->display.drrs.dp);
=20
 =09mutex_lock(&intel_dp->psr.lock);
 =09intel_psr_enable_locked(intel_dp, crtc_state, conn_state);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 4194a2042abf..daa289a0efab 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -867,6 +867,7 @@ struct drm_i915_display {
 =09wait_queue_head_t gmbus_wait_queue;
=20
 =09struct intel_dmc dmc;
+=09struct i915_drrs drrs;
 };
=20
 struct drm_i915_private {
@@ -941,7 +942,6 @@ struct drm_i915_private {
=20
 =09struct i915_hotplug hotplug;
 =09struct intel_fbc fbc;
-=09struct i915_drrs drrs;
 =09struct intel_opregion opregion;
 =09struct intel_vbt_data vbt;
=20
--=20
2.31.1

