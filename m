Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0990E40243A
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 09:26:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21D8C88FAE;
	Tue,  7 Sep 2021 07:26:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4583489762
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 07:26:28 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-82-FHSpnS6uOb-GBmiuO6-PsQ-1; Tue, 07 Sep 2021 03:26:23 -0400
X-MC-Unique: FHSpnS6uOb-GBmiuO6-PsQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EBEBA19611A4;
 Tue,  7 Sep 2021 07:26:22 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A78EC60936;
 Tue,  7 Sep 2021 07:26:21 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Tue,  7 Sep 2021 17:25:38 +1000
Message-Id: <20210907072549.2962226-15-airlied@gmail.com>
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
Subject: [Intel-gfx] [PATCH 14/25] drm/i915/display: move HDCP related items
 into display struct
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
 drivers/gpu/drm/i915/display/intel_hdcp.c | 134 +++++++++++-----------
 drivers/gpu/drm/i915/i915_drv.c           |   2 +-
 drivers/gpu/drm/i915/i915_drv.h           |  12 +-
 3 files changed, 74 insertions(+), 74 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i9=
15/display/intel_hdcp.c
index ebc2e32aec0b..db073065a968 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -182,12 +182,12 @@ bool intel_hdcp2_capable(struct intel_connector *conn=
ector)
 =09=09return false;
=20
 =09/* MEI interface is solid */
-=09mutex_lock(&dev_priv->hdcp_comp_mutex);
-=09if (!dev_priv->hdcp_comp_added ||  !dev_priv->hdcp_master) {
-=09=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09mutex_lock(&dev_priv->display->hdcp_comp_mutex);
+=09if (!dev_priv->display->hdcp_comp_added ||  !dev_priv->display->hdcp_ma=
ster) {
+=09=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
 =09=09return false;
 =09}
-=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
=20
 =09/* Sink's capability for HDCP2.2 */
 =09hdcp->shim->hdcp_2_2_capable(dig_port, &capable);
@@ -1119,11 +1119,11 @@ hdcp2_prepare_ake_init(struct intel_connector *conn=
ector,
 =09struct i915_hdcp_comp_master *comp;
 =09int ret;
=20
-=09mutex_lock(&dev_priv->hdcp_comp_mutex);
-=09comp =3D dev_priv->hdcp_master;
+=09mutex_lock(&dev_priv->display->hdcp_comp_mutex);
+=09comp =3D dev_priv->display->hdcp_master;
=20
 =09if (!comp || !comp->ops) {
-=09=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
 =09=09return -EINVAL;
 =09}
=20
@@ -1131,7 +1131,7 @@ hdcp2_prepare_ake_init(struct intel_connector *connec=
tor,
 =09if (ret)
 =09=09drm_dbg_kms(&dev_priv->drm, "Prepare_ake_init failed. %d\n",
 =09=09=09    ret);
-=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
=20
 =09return ret;
 }
@@ -1149,11 +1149,11 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connec=
tor *connector,
 =09struct i915_hdcp_comp_master *comp;
 =09int ret;
=20
-=09mutex_lock(&dev_priv->hdcp_comp_mutex);
-=09comp =3D dev_priv->hdcp_master;
+=09mutex_lock(&dev_priv->display->hdcp_comp_mutex);
+=09comp =3D dev_priv->display->hdcp_master;
=20
 =09if (!comp || !comp->ops) {
-=09=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
 =09=09return -EINVAL;
 =09}
=20
@@ -1163,7 +1163,7 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connecto=
r *connector,
 =09if (ret < 0)
 =09=09drm_dbg_kms(&dev_priv->drm, "Verify rx_cert failed. %d\n",
 =09=09=09    ret);
-=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
=20
 =09return ret;
 }
@@ -1177,18 +1177,18 @@ static int hdcp2_verify_hprime(struct intel_connect=
or *connector,
 =09struct i915_hdcp_comp_master *comp;
 =09int ret;
=20
-=09mutex_lock(&dev_priv->hdcp_comp_mutex);
-=09comp =3D dev_priv->hdcp_master;
+=09mutex_lock(&dev_priv->display->hdcp_comp_mutex);
+=09comp =3D dev_priv->display->hdcp_master;
=20
 =09if (!comp || !comp->ops) {
-=09=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
 =09=09return -EINVAL;
 =09}
=20
 =09ret =3D comp->ops->verify_hprime(comp->mei_dev, data, rx_hprime);
 =09if (ret < 0)
 =09=09drm_dbg_kms(&dev_priv->drm, "Verify hprime failed. %d\n", ret);
-=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
=20
 =09return ret;
 }
@@ -1203,11 +1203,11 @@ hdcp2_store_pairing_info(struct intel_connector *co=
nnector,
 =09struct i915_hdcp_comp_master *comp;
 =09int ret;
=20
-=09mutex_lock(&dev_priv->hdcp_comp_mutex);
-=09comp =3D dev_priv->hdcp_master;
+=09mutex_lock(&dev_priv->display->hdcp_comp_mutex);
+=09comp =3D dev_priv->display->hdcp_master;
=20
 =09if (!comp || !comp->ops) {
-=09=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
 =09=09return -EINVAL;
 =09}
=20
@@ -1215,7 +1215,7 @@ hdcp2_store_pairing_info(struct intel_connector *conn=
ector,
 =09if (ret < 0)
 =09=09drm_dbg_kms(&dev_priv->drm, "Store pairing info failed. %d\n",
 =09=09=09    ret);
-=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
=20
 =09return ret;
 }
@@ -1230,11 +1230,11 @@ hdcp2_prepare_lc_init(struct intel_connector *conne=
ctor,
 =09struct i915_hdcp_comp_master *comp;
 =09int ret;
=20
-=09mutex_lock(&dev_priv->hdcp_comp_mutex);
-=09comp =3D dev_priv->hdcp_master;
+=09mutex_lock(&dev_priv->display->hdcp_comp_mutex);
+=09comp =3D dev_priv->display->hdcp_master;
=20
 =09if (!comp || !comp->ops) {
-=09=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
 =09=09return -EINVAL;
 =09}
=20
@@ -1242,7 +1242,7 @@ hdcp2_prepare_lc_init(struct intel_connector *connect=
or,
 =09if (ret < 0)
 =09=09drm_dbg_kms(&dev_priv->drm, "Prepare lc_init failed. %d\n",
 =09=09=09    ret);
-=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
=20
 =09return ret;
 }
@@ -1257,11 +1257,11 @@ hdcp2_verify_lprime(struct intel_connector *connect=
or,
 =09struct i915_hdcp_comp_master *comp;
 =09int ret;
=20
-=09mutex_lock(&dev_priv->hdcp_comp_mutex);
-=09comp =3D dev_priv->hdcp_master;
+=09mutex_lock(&dev_priv->display->hdcp_comp_mutex);
+=09comp =3D dev_priv->display->hdcp_master;
=20
 =09if (!comp || !comp->ops) {
-=09=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
 =09=09return -EINVAL;
 =09}
=20
@@ -1269,7 +1269,7 @@ hdcp2_verify_lprime(struct intel_connector *connector=
,
 =09if (ret < 0)
 =09=09drm_dbg_kms(&dev_priv->drm, "Verify L_Prime failed. %d\n",
 =09=09=09    ret);
-=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
=20
 =09return ret;
 }
@@ -1283,11 +1283,11 @@ static int hdcp2_prepare_skey(struct intel_connecto=
r *connector,
 =09struct i915_hdcp_comp_master *comp;
 =09int ret;
=20
-=09mutex_lock(&dev_priv->hdcp_comp_mutex);
-=09comp =3D dev_priv->hdcp_master;
+=09mutex_lock(&dev_priv->display->hdcp_comp_mutex);
+=09comp =3D dev_priv->display->hdcp_master;
=20
 =09if (!comp || !comp->ops) {
-=09=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
 =09=09return -EINVAL;
 =09}
=20
@@ -1295,7 +1295,7 @@ static int hdcp2_prepare_skey(struct intel_connector =
*connector,
 =09if (ret < 0)
 =09=09drm_dbg_kms(&dev_priv->drm, "Get session key failed. %d\n",
 =09=09=09    ret);
-=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
=20
 =09return ret;
 }
@@ -1312,11 +1312,11 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_=
connector *connector,
 =09struct i915_hdcp_comp_master *comp;
 =09int ret;
=20
-=09mutex_lock(&dev_priv->hdcp_comp_mutex);
-=09comp =3D dev_priv->hdcp_master;
+=09mutex_lock(&dev_priv->display->hdcp_comp_mutex);
+=09comp =3D dev_priv->display->hdcp_master;
=20
 =09if (!comp || !comp->ops) {
-=09=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
 =09=09return -EINVAL;
 =09}
=20
@@ -1326,7 +1326,7 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_co=
nnector *connector,
 =09if (ret < 0)
 =09=09drm_dbg_kms(&dev_priv->drm,
 =09=09=09    "Verify rep topology failed. %d\n", ret);
-=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
=20
 =09return ret;
 }
@@ -1341,18 +1341,18 @@ hdcp2_verify_mprime(struct intel_connector *connect=
or,
 =09struct i915_hdcp_comp_master *comp;
 =09int ret;
=20
-=09mutex_lock(&dev_priv->hdcp_comp_mutex);
-=09comp =3D dev_priv->hdcp_master;
+=09mutex_lock(&dev_priv->display->hdcp_comp_mutex);
+=09comp =3D dev_priv->display->hdcp_master;
=20
 =09if (!comp || !comp->ops) {
-=09=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
 =09=09return -EINVAL;
 =09}
=20
 =09ret =3D comp->ops->verify_mprime(comp->mei_dev, data, stream_ready);
 =09if (ret < 0)
 =09=09drm_dbg_kms(&dev_priv->drm, "Verify mprime failed. %d\n", ret);
-=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
=20
 =09return ret;
 }
@@ -1365,11 +1365,11 @@ static int hdcp2_authenticate_port(struct intel_con=
nector *connector)
 =09struct i915_hdcp_comp_master *comp;
 =09int ret;
=20
-=09mutex_lock(&dev_priv->hdcp_comp_mutex);
-=09comp =3D dev_priv->hdcp_master;
+=09mutex_lock(&dev_priv->display->hdcp_comp_mutex);
+=09comp =3D dev_priv->display->hdcp_master;
=20
 =09if (!comp || !comp->ops) {
-=09=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
 =09=09return -EINVAL;
 =09}
=20
@@ -1377,7 +1377,7 @@ static int hdcp2_authenticate_port(struct intel_conne=
ctor *connector)
 =09if (ret < 0)
 =09=09drm_dbg_kms(&dev_priv->drm, "Enable hdcp auth failed. %d\n",
 =09=09=09    ret);
-=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
=20
 =09return ret;
 }
@@ -1389,17 +1389,17 @@ static int hdcp2_close_mei_session(struct intel_con=
nector *connector)
 =09struct i915_hdcp_comp_master *comp;
 =09int ret;
=20
-=09mutex_lock(&dev_priv->hdcp_comp_mutex);
-=09comp =3D dev_priv->hdcp_master;
+=09mutex_lock(&dev_priv->display->hdcp_comp_mutex);
+=09comp =3D dev_priv->display->hdcp_master;
=20
 =09if (!comp || !comp->ops) {
-=09=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
 =09=09return -EINVAL;
 =09}
=20
 =09ret =3D comp->ops->close_hdcp_session(comp->mei_dev,
 =09=09=09=09=09     &dig_port->hdcp_port_data);
-=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
=20
 =09return ret;
 }
@@ -2113,10 +2113,10 @@ static int i915_hdcp_component_bind(struct device *=
i915_kdev,
 =09struct drm_i915_private *dev_priv =3D kdev_to_i915(i915_kdev);
=20
 =09drm_dbg(&dev_priv->drm, "I915 HDCP comp bind\n");
-=09mutex_lock(&dev_priv->hdcp_comp_mutex);
-=09dev_priv->hdcp_master =3D (struct i915_hdcp_comp_master *)data;
-=09dev_priv->hdcp_master->mei_dev =3D mei_kdev;
-=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09mutex_lock(&dev_priv->display->hdcp_comp_mutex);
+=09dev_priv->display->hdcp_master =3D (struct i915_hdcp_comp_master *)data=
;
+=09dev_priv->display->hdcp_master->mei_dev =3D mei_kdev;
+=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
=20
 =09return 0;
 }
@@ -2127,9 +2127,9 @@ static void i915_hdcp_component_unbind(struct device =
*i915_kdev,
 =09struct drm_i915_private *dev_priv =3D kdev_to_i915(i915_kdev);
=20
 =09drm_dbg(&dev_priv->drm, "I915 HDCP comp unbind\n");
-=09mutex_lock(&dev_priv->hdcp_comp_mutex);
-=09dev_priv->hdcp_master =3D NULL;
-=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09mutex_lock(&dev_priv->display->hdcp_comp_mutex);
+=09dev_priv->display->hdcp_master =3D NULL;
+=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
 }
=20
 static const struct component_ops i915_hdcp_component_ops =3D {
@@ -2220,19 +2220,19 @@ void intel_hdcp_component_init(struct drm_i915_priv=
ate *dev_priv)
 =09if (!is_hdcp2_supported(dev_priv))
 =09=09return;
=20
-=09mutex_lock(&dev_priv->hdcp_comp_mutex);
-=09drm_WARN_ON(&dev_priv->drm, dev_priv->hdcp_comp_added);
+=09mutex_lock(&dev_priv->display->hdcp_comp_mutex);
+=09drm_WARN_ON(&dev_priv->drm, dev_priv->display->hdcp_comp_added);
=20
-=09dev_priv->hdcp_comp_added =3D true;
-=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09dev_priv->display->hdcp_comp_added =3D true;
+=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
 =09ret =3D component_add_typed(dev_priv->drm.dev, &i915_hdcp_component_ops=
,
 =09=09=09=09  I915_COMPONENT_HDCP);
 =09if (ret < 0) {
 =09=09drm_dbg_kms(&dev_priv->drm, "Failed at component add(%d)\n",
 =09=09=09    ret);
-=09=09mutex_lock(&dev_priv->hdcp_comp_mutex);
-=09=09dev_priv->hdcp_comp_added =3D false;
-=09=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09=09mutex_lock(&dev_priv->display->hdcp_comp_mutex);
+=09=09dev_priv->display->hdcp_comp_added =3D false;
+=09=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
 =09=09return;
 =09}
 }
@@ -2445,14 +2445,14 @@ void intel_hdcp_update_pipe(struct intel_atomic_sta=
te *state,
=20
 void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)
 {
-=09mutex_lock(&dev_priv->hdcp_comp_mutex);
-=09if (!dev_priv->hdcp_comp_added) {
-=09=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09mutex_lock(&dev_priv->display->hdcp_comp_mutex);
+=09if (!dev_priv->display->hdcp_comp_added) {
+=09=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
 =09=09return;
 =09}
=20
-=09dev_priv->hdcp_comp_added =3D false;
-=09mutex_unlock(&dev_priv->hdcp_comp_mutex);
+=09dev_priv->display->hdcp_comp_added =3D false;
+=09mutex_unlock(&dev_priv->display->hdcp_comp_mutex);
=20
 =09component_del(dev_priv->drm.dev, &i915_hdcp_component_ops);
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_dr=
v.c
index d0d97a6d37ba..ddc183b7711c 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -323,7 +323,7 @@ static int i915_driver_early_probe(struct drm_i915_priv=
ate *dev_priv)
 =09mutex_init(&dev_priv->display->av_mutex);
 =09mutex_init(&dev_priv->wm.wm_mutex);
 =09mutex_init(&dev_priv->pps_mutex);
-=09mutex_init(&dev_priv->hdcp_comp_mutex);
+=09mutex_init(&dev_priv->display->hdcp_comp_mutex);
=20
 =09i915_memcpy_init_early(dev_priv);
 =09intel_runtime_pm_init_early(&dev_priv->runtime_pm);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index be496ec4917a..3f9bebb8478f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -893,6 +893,12 @@ struct drm_i915_display {
=20
 =09struct drm_property *broadcast_rgb_property;
 =09struct drm_property *force_audio_property;
+
+=09struct i915_hdcp_comp_master *hdcp_master;
+=09bool hdcp_comp_added;
+
+=09/* Mutex to protect the above hdcp component related values. */
+=09struct mutex hdcp_comp_mutex;
 };
=20
 struct drm_i915_private {
@@ -1211,12 +1217,6 @@ struct drm_i915_private {
=20
 =09struct i915_pmu pmu;
=20
-=09struct i915_hdcp_comp_master *hdcp_master;
-=09bool hdcp_comp_added;
-
-=09/* Mutex to protect the above hdcp component related values. */
-=09struct mutex hdcp_comp_mutex;
-
 =09/* The TTM device structure. */
 =09struct ttm_device bdev;
=20
--=20
2.31.1

