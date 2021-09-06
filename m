Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBD4401554
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 05:51:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7977289A76;
	Mon,  6 Sep 2021 03:51:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37F07899E8
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Sep 2021 03:51:05 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-311-she18SwgP-a9q1Qd98ewyw-1; Sun, 05 Sep 2021 23:44:24 -0400
X-MC-Unique: she18SwgP-a9q1Qd98ewyw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 989978145E5;
 Mon,  6 Sep 2021 03:44:23 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 524895D9DE;
 Mon,  6 Sep 2021 03:44:22 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Mon,  6 Sep 2021 13:43:54 +1000
Message-Id: <20210906034356.2946530-9-airlied@gmail.com>
In-Reply-To: <20210906034356.2946530-1-airlied@gmail.com>
References: <20210906034356.2946530-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 08/10] drm/i915/drrs: just use some local vars
 to simplify drrs code
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

this makes it easier to move this struct later.

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c | 90 ++++++++++++-----------
 1 file changed, 49 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i9=
15/display/intel_drrs.c
index a2b65eca1441..670bcd50a56f 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -191,15 +191,16 @@ void intel_drrs_enable(struct intel_dp *intel_dp,
 =09=09       const struct intel_crtc_state *crtc_state)
 {
 =09struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
+=09struct i915_drrs *drrs =3D &dev_priv->drrs;
=20
 =09if (!crtc_state->has_drrs)
 =09=09return;
=20
 =09drm_dbg_kms(&dev_priv->drm, "Enabling DRRS\n");
=20
-=09mutex_lock(&dev_priv->drrs.mutex);
+=09mutex_lock(&drrs->mutex);
=20
-=09if (dev_priv->drrs.dp) {
+=09if (drrs->dp) {
 =09=09drm_warn(&dev_priv->drm, "DRRS already enabled\n");
 =09=09goto unlock;
 =09}
@@ -207,7 +208,7 @@ void intel_drrs_enable(struct intel_dp *intel_dp,
 =09intel_drrs_enable_locked(intel_dp);
=20
 unlock:
-=09mutex_unlock(&dev_priv->drrs.mutex);
+=09mutex_unlock(&drrs->mutex);
 }
=20
 static void
@@ -215,15 +216,16 @@ intel_drrs_disable_locked(struct intel_dp *intel_dp,
 =09=09=09  const struct intel_crtc_state *crtc_state)
 {
 =09struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
+=09struct i915_drrs *drrs =3D &dev_priv->drrs;
=20
-=09if (dev_priv->drrs.refresh_rate_type =3D=3D DRRS_LOW_RR) {
+=09if (drrs->refresh_rate_type =3D=3D DRRS_LOW_RR) {
 =09=09int refresh;
=20
 =09=09refresh =3D drm_mode_vrefresh(intel_dp->attached_connector->panel.fi=
xed_mode);
 =09=09intel_drrs_set_state(dev_priv, crtc_state, refresh);
 =09}
=20
-=09dev_priv->drrs.dp =3D NULL;
+=09drrs->dp =3D NULL;
 }
=20
 /**
@@ -236,20 +238,21 @@ void intel_drrs_disable(struct intel_dp *intel_dp,
 =09=09=09const struct intel_crtc_state *old_crtc_state)
 {
 =09struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
+=09struct i915_drrs *drrs =3D &dev_priv->drrs;
=20
 =09if (!old_crtc_state->has_drrs)
 =09=09return;
=20
-=09mutex_lock(&dev_priv->drrs.mutex);
-=09if (!dev_priv->drrs.dp) {
-=09=09mutex_unlock(&dev_priv->drrs.mutex);
+=09mutex_lock(&drrs->mutex);
+=09if (!drrs->dp) {
+=09=09mutex_unlock(&drrs->mutex);
 =09=09return;
 =09}
=20
 =09intel_drrs_disable_locked(intel_dp, old_crtc_state);
-=09mutex_unlock(&dev_priv->drrs.mutex);
+=09mutex_unlock(&drrs->mutex);
=20
-=09cancel_delayed_work_sync(&dev_priv->drrs.work);
+=09cancel_delayed_work_sync(&drrs->work);
 }
=20
 /**
@@ -266,14 +269,15 @@ intel_drrs_update(struct intel_dp *intel_dp,
 =09=09  const struct intel_crtc_state *crtc_state)
 {
 =09struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
+=09struct i915_drrs *drrs =3D &dev_priv->drrs;
=20
-=09if (dev_priv->drrs.type !=3D SEAMLESS_DRRS_SUPPORT)
+=09if (drrs->type !=3D SEAMLESS_DRRS_SUPPORT)
 =09=09return;
=20
-=09mutex_lock(&dev_priv->drrs.mutex);
+=09mutex_lock(&drrs->mutex);
=20
 =09/* New state matches current one? */
-=09if (crtc_state->has_drrs =3D=3D !!dev_priv->drrs.dp)
+=09if (crtc_state->has_drrs =3D=3D !!drrs->dp)
 =09=09goto unlock;
=20
 =09if (crtc_state->has_drrs)
@@ -282,18 +286,19 @@ intel_drrs_update(struct intel_dp *intel_dp,
 =09=09intel_drrs_disable_locked(intel_dp, crtc_state);
=20
 unlock:
-=09mutex_unlock(&dev_priv->drrs.mutex);
+=09mutex_unlock(&drrs->mutex);
 }
=20
 static void intel_drrs_downclock_work(struct work_struct *work)
 {
 =09struct drm_i915_private *dev_priv =3D
 =09=09container_of(work, typeof(*dev_priv), drrs.work.work);
+=09struct i915_drrs *drrs =3D &dev_priv->drrs;
 =09struct intel_dp *intel_dp;
=20
-=09mutex_lock(&dev_priv->drrs.mutex);
+=09mutex_lock(&drrs->mutex);
=20
-=09intel_dp =3D dev_priv->drrs.dp;
+=09intel_dp =3D drrs->dp;
=20
 =09if (!intel_dp)
 =09=09goto unlock;
@@ -303,10 +308,10 @@ static void intel_drrs_downclock_work(struct work_str=
uct *work)
 =09 * recheck.
 =09 */
=20
-=09if (dev_priv->drrs.busy_frontbuffer_bits)
+=09if (drrs->busy_frontbuffer_bits)
 =09=09goto unlock;
=20
-=09if (dev_priv->drrs.refresh_rate_type !=3D DRRS_LOW_RR) {
+=09if (drrs->refresh_rate_type !=3D DRRS_LOW_RR) {
 =09=09struct drm_crtc *crtc =3D dp_to_dig_port(intel_dp)->base.base.crtc;
=20
 =09=09intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
@@ -314,7 +319,7 @@ static void intel_drrs_downclock_work(struct work_struc=
t *work)
 =09}
=20
 unlock:
-=09mutex_unlock(&dev_priv->drrs.mutex);
+=09mutex_unlock(&drrs->mutex);
 }
=20
 /**
@@ -330,20 +335,21 @@ static void intel_drrs_downclock_work(struct work_str=
uct *work)
 void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
 =09=09=09   unsigned int frontbuffer_bits)
 {
+=09struct i915_drrs *drrs =3D &dev_priv->drrs;
 =09struct intel_dp *intel_dp;
 =09struct drm_crtc *crtc;
 =09enum pipe pipe;
=20
-=09if (dev_priv->drrs.type =3D=3D DRRS_NOT_SUPPORTED)
+=09if (drrs->type =3D=3D DRRS_NOT_SUPPORTED)
 =09=09return;
=20
-=09cancel_delayed_work(&dev_priv->drrs.work);
+=09cancel_delayed_work(&drrs->work);
=20
-=09mutex_lock(&dev_priv->drrs.mutex);
+=09mutex_lock(&drrs->mutex);
=20
-=09intel_dp =3D dev_priv->drrs.dp;
+=09intel_dp =3D drrs->dp;
 =09if (!intel_dp) {
-=09=09mutex_unlock(&dev_priv->drrs.mutex);
+=09=09mutex_unlock(&drrs->mutex);
 =09=09return;
 =09}
=20
@@ -351,14 +357,14 @@ void intel_drrs_invalidate(struct drm_i915_private *d=
ev_priv,
 =09pipe =3D to_intel_crtc(crtc)->pipe;
=20
 =09frontbuffer_bits &=3D INTEL_FRONTBUFFER_ALL_MASK(pipe);
-=09dev_priv->drrs.busy_frontbuffer_bits |=3D frontbuffer_bits;
+=09drrs->busy_frontbuffer_bits |=3D frontbuffer_bits;
=20
 =09/* invalidate means busy screen hence upclock */
-=09if (frontbuffer_bits && dev_priv->drrs.refresh_rate_type =3D=3D DRRS_LO=
W_RR)
+=09if (frontbuffer_bits && drrs->refresh_rate_type =3D=3D DRRS_LOW_RR)
 =09=09intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
 =09=09=09=09     drm_mode_vrefresh(intel_dp->attached_connector->panel.fix=
ed_mode));
=20
-=09mutex_unlock(&dev_priv->drrs.mutex);
+=09mutex_unlock(&drrs->mutex);
 }
=20
 /**
@@ -376,20 +382,21 @@ void intel_drrs_invalidate(struct drm_i915_private *d=
ev_priv,
 void intel_drrs_flush(struct drm_i915_private *dev_priv,
 =09=09      unsigned int frontbuffer_bits)
 {
+=09struct i915_drrs *drrs =3D &dev_priv->drrs;
 =09struct intel_dp *intel_dp;
 =09struct drm_crtc *crtc;
 =09enum pipe pipe;
=20
-=09if (dev_priv->drrs.type =3D=3D DRRS_NOT_SUPPORTED)
+=09if (drrs->type =3D=3D DRRS_NOT_SUPPORTED)
 =09=09return;
=20
-=09cancel_delayed_work(&dev_priv->drrs.work);
+=09cancel_delayed_work(&drrs->work);
=20
-=09mutex_lock(&dev_priv->drrs.mutex);
+=09mutex_lock(&drrs->mutex);
=20
-=09intel_dp =3D dev_priv->drrs.dp;
+=09intel_dp =3D drrs->dp;
 =09if (!intel_dp) {
-=09=09mutex_unlock(&dev_priv->drrs.mutex);
+=09=09mutex_unlock(&drrs->mutex);
 =09=09return;
 =09}
=20
@@ -397,10 +404,10 @@ void intel_drrs_flush(struct drm_i915_private *dev_pr=
iv,
 =09pipe =3D to_intel_crtc(crtc)->pipe;
=20
 =09frontbuffer_bits &=3D INTEL_FRONTBUFFER_ALL_MASK(pipe);
-=09dev_priv->drrs.busy_frontbuffer_bits &=3D ~frontbuffer_bits;
+=09drrs->busy_frontbuffer_bits &=3D ~frontbuffer_bits;
=20
 =09/* flush means busy screen hence upclock */
-=09if (frontbuffer_bits && dev_priv->drrs.refresh_rate_type =3D=3D DRRS_LO=
W_RR)
+=09if (frontbuffer_bits && drrs->refresh_rate_type =3D=3D DRRS_LOW_RR)
 =09=09intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
 =09=09=09=09     drm_mode_vrefresh(intel_dp->attached_connector->panel.fix=
ed_mode));
=20
@@ -408,10 +415,10 @@ void intel_drrs_flush(struct drm_i915_private *dev_pr=
iv,
 =09 * flush also means no more activity hence schedule downclock, if all
 =09 * other fbs are quiescent too
 =09 */
-=09if (!dev_priv->drrs.busy_frontbuffer_bits)
-=09=09schedule_delayed_work(&dev_priv->drrs.work,
+=09if (!drrs->busy_frontbuffer_bits)
+=09=09schedule_delayed_work(&drrs->work,
 =09=09=09=09      msecs_to_jiffies(1000));
-=09mutex_unlock(&dev_priv->drrs.mutex);
+=09mutex_unlock(&drrs->mutex);
 }
=20
 /**
@@ -432,10 +439,11 @@ intel_drrs_init(struct intel_connector *connector,
 =09=09struct drm_display_mode *fixed_mode)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
+=09struct i915_drrs *drrs =3D &dev_priv->drrs;
 =09struct drm_display_mode *downclock_mode =3D NULL;
=20
-=09INIT_DELAYED_WORK(&dev_priv->drrs.work, intel_drrs_downclock_work);
-=09mutex_init(&dev_priv->drrs.mutex);
+=09INIT_DELAYED_WORK(&drrs->work, intel_drrs_downclock_work);
+=09mutex_init(&drrs->mutex);
=20
 =09if (DISPLAY_VER(dev_priv) <=3D 6) {
 =09=09drm_dbg_kms(&dev_priv->drm,
@@ -455,9 +463,9 @@ intel_drrs_init(struct intel_connector *connector,
 =09=09return NULL;
 =09}
=20
-=09dev_priv->drrs.type =3D dev_priv->vbt.drrs_type;
+=09drrs->type =3D dev_priv->vbt.drrs_type;
=20
-=09dev_priv->drrs.refresh_rate_type =3D DRRS_HIGH_RR;
+=09drrs->refresh_rate_type =3D DRRS_HIGH_RR;
 =09drm_dbg_kms(&dev_priv->drm,
 =09=09    "seamless DRRS supported for eDP panel.\n");
 =09return downclock_mode;
--=20
2.31.1

