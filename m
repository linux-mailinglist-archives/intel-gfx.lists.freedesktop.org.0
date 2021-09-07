Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5DC402439
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 09:26:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33D2088FF7;
	Tue,  7 Sep 2021 07:26:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3925D89709
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 07:26:26 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-556-XPjyHehnNKisUlsJNAZ9uw-1; Tue, 07 Sep 2021 03:26:16 -0400
X-MC-Unique: XPjyHehnNKisUlsJNAZ9uw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1584D1009469;
 Tue,  7 Sep 2021 07:26:16 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9ABA260936;
 Tue,  7 Sep 2021 07:26:14 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Tue,  7 Sep 2021 17:25:36 +1000
Message-Id: <20210907072549.2962226-13-airlied@gmail.com>
In-Reply-To: <20210907072549.2962226-1-airlied@gmail.com>
References: <20210907072549.2962226-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 12/25] drm/i915/display: move properties into
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

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c    | 8 ++++----
 drivers/gpu/drm/i915/display/intel_connector.c | 8 ++++----
 drivers/gpu/drm/i915/i915_drv.h                | 6 +++---
 3 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/=
i915/display/intel_atomic.c
index b4e7ac51aa31..ee6c088f84f5 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -61,9 +61,9 @@ int intel_digital_connector_atomic_get_property(struct dr=
m_connector *connector,
 =09struct intel_digital_connector_state *intel_conn_state =3D
 =09=09to_intel_digital_connector_state(state);
=20
-=09if (property =3D=3D dev_priv->force_audio_property)
+=09if (property =3D=3D dev_priv->display->force_audio_property)
 =09=09*val =3D intel_conn_state->force_audio;
-=09else if (property =3D=3D dev_priv->broadcast_rgb_property)
+=09else if (property =3D=3D dev_priv->display->broadcast_rgb_property)
 =09=09*val =3D intel_conn_state->broadcast_rgb;
 =09else {
 =09=09drm_dbg_atomic(&dev_priv->drm,
@@ -94,12 +94,12 @@ int intel_digital_connector_atomic_set_property(struct =
drm_connector *connector,
 =09struct intel_digital_connector_state *intel_conn_state =3D
 =09=09to_intel_digital_connector_state(state);
=20
-=09if (property =3D=3D dev_priv->force_audio_property) {
+=09if (property =3D=3D dev_priv->display->force_audio_property) {
 =09=09intel_conn_state->force_audio =3D val;
 =09=09return 0;
 =09}
=20
-=09if (property =3D=3D dev_priv->broadcast_rgb_property) {
+=09if (property =3D=3D dev_priv->display->broadcast_rgb_property) {
 =09=09intel_conn_state->broadcast_rgb =3D val;
 =09=09return 0;
 =09}
diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/d=
rm/i915/display/intel_connector.c
index 4f49d782eca2..233a2df9e2c0 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -227,7 +227,7 @@ intel_attach_force_audio_property(struct drm_connector =
*connector)
 =09struct drm_i915_private *dev_priv =3D to_i915(dev);
 =09struct drm_property *prop;
=20
-=09prop =3D dev_priv->force_audio_property;
+=09prop =3D dev_priv->display->force_audio_property;
 =09if (prop =3D=3D NULL) {
 =09=09prop =3D drm_property_create_enum(dev, 0,
 =09=09=09=09=09   "audio",
@@ -236,7 +236,7 @@ intel_attach_force_audio_property(struct drm_connector =
*connector)
 =09=09if (prop =3D=3D NULL)
 =09=09=09return;
=20
-=09=09dev_priv->force_audio_property =3D prop;
+=09=09dev_priv->display->force_audio_property =3D prop;
 =09}
 =09drm_object_attach_property(&connector->base, prop, 0);
 }
@@ -254,7 +254,7 @@ intel_attach_broadcast_rgb_property(struct drm_connecto=
r *connector)
 =09struct drm_i915_private *dev_priv =3D to_i915(dev);
 =09struct drm_property *prop;
=20
-=09prop =3D dev_priv->broadcast_rgb_property;
+=09prop =3D dev_priv->display->broadcast_rgb_property;
 =09if (prop =3D=3D NULL) {
 =09=09prop =3D drm_property_create_enum(dev, DRM_MODE_PROP_ENUM,
 =09=09=09=09=09   "Broadcast RGB",
@@ -263,7 +263,7 @@ intel_attach_broadcast_rgb_property(struct drm_connecto=
r *connector)
 =09=09if (prop =3D=3D NULL)
 =09=09=09return;
=20
-=09=09dev_priv->broadcast_rgb_property =3D prop;
+=09=09dev_priv->display->broadcast_rgb_property =3D prop;
 =09}
=20
 =09drm_object_attach_property(&connector->base, prop, 0);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 1abeda306d05..3c2308a0c861 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -872,6 +872,9 @@ struct drm_i915_display {
=20
 =09struct intel_crtc *plane_to_crtc_mapping[I915_MAX_PIPES];
 =09struct intel_crtc *pipe_to_crtc_mapping[I915_MAX_PIPES];
+
+=09struct drm_property *broadcast_rgb_property;
+=09struct drm_property *force_audio_property;
 };
=20
 struct drm_i915_private {
@@ -1056,9 +1059,6 @@ struct drm_i915_private {
 =09struct intel_fbdev *fbdev;
 =09struct work_struct fbdev_suspend_work;
=20
-=09struct drm_property *broadcast_rgb_property;
-=09struct drm_property *force_audio_property;
-
 =09/* hda/i915 audio component */
 =09struct i915_audio_component *audio_component;
 =09bool audio_component_registered;
--=20
2.31.1

