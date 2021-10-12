Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F0F429C71
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Oct 2021 06:35:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B2D889F71;
	Tue, 12 Oct 2021 04:35:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9068489F71
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Oct 2021 04:35:24 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-224-QBGe5fjwOC6BQZOm2ljnWA-1; Tue, 12 Oct 2021 00:35:21 -0400
X-MC-Unique: QBGe5fjwOC6BQZOm2ljnWA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AC7BB180830C;
 Tue, 12 Oct 2021 04:35:20 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 338C660BF4;
 Tue, 12 Oct 2021 04:35:07 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Dave Airlie <airlied@redhat.com>
Date: Tue, 12 Oct 2021 14:34:55 +1000
Message-Id: <20211012043502.1377715-2-airlied@gmail.com>
In-Reply-To: <20211012043502.1377715-1-airlied@gmail.com>
References: <20211012043502.1377715-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 1/8] drm/i915/display: move plane
 prepare/cleanup to intel_atomic_plane.c
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

Start to refactor more stuff out of intel_display.c. These fit
better in this file.

This moves the rps boosting code as well as this is the only user of it.

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c | 208 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c  | 208 ------------------
 drivers/gpu/drm/i915/display/intel_display.h  |   4 -
 3 files changed, 208 insertions(+), 212 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gp=
u/drm/i915/display/intel_atomic_plane.c
index 47234d898549..53ee56453270 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -41,6 +41,7 @@
 #include "intel_display_types.h"
 #include "intel_pm.h"
 #include "intel_sprite.h"
+#include "gt/intel_rps.h"
=20
 static void intel_plane_state_reset(struct intel_plane_state *plane_state,
 =09=09=09=09    struct intel_plane *plane)
@@ -601,6 +602,213 @@ int intel_atomic_plane_check_clipping(struct intel_pl=
ane_state *plane_state,
 =09return 0;
 }
=20
+struct wait_rps_boost {
+=09struct wait_queue_entry wait;
+
+=09struct drm_crtc *crtc;
+=09struct i915_request *request;
+};
+
+static int do_rps_boost(struct wait_queue_entry *_wait,
+=09=09=09unsigned mode, int sync, void *key)
+{
+=09struct wait_rps_boost *wait =3D container_of(_wait, typeof(*wait), wait=
);
+=09struct i915_request *rq =3D wait->request;
+
+=09/*
+=09 * If we missed the vblank, but the request is already running it
+=09 * is reasonable to assume that it will complete before the next
+=09 * vblank without our intervention, so leave RPS alone.
+=09 */
+=09if (!i915_request_started(rq))
+=09=09intel_rps_boost(rq);
+=09i915_request_put(rq);
+
+=09drm_crtc_vblank_put(wait->crtc);
+
+=09list_del(&wait->wait.entry);
+=09kfree(wait);
+=09return 1;
+}
+
+static void add_rps_boost_after_vblank(struct drm_crtc *crtc,
+=09=09=09=09       struct dma_fence *fence)
+{
+=09struct wait_rps_boost *wait;
+
+=09if (!dma_fence_is_i915(fence))
+=09=09return;
+
+=09if (DISPLAY_VER(to_i915(crtc->dev)) < 6)
+=09=09return;
+
+=09if (drm_crtc_vblank_get(crtc))
+=09=09return;
+
+=09wait =3D kmalloc(sizeof(*wait), GFP_KERNEL);
+=09if (!wait) {
+=09=09drm_crtc_vblank_put(crtc);
+=09=09return;
+=09}
+
+=09wait->request =3D to_request(dma_fence_get(fence));
+=09wait->crtc =3D crtc;
+
+=09wait->wait.func =3D do_rps_boost;
+=09wait->wait.flags =3D 0;
+
+=09add_wait_queue(drm_crtc_vblank_waitqueue(crtc), &wait->wait);
+}
+
+/**
+ * intel_prepare_plane_fb - Prepare fb for usage on plane
+ * @_plane: drm plane to prepare for
+ * @_new_plane_state: the plane state being prepared
+ *
+ * Prepares a framebuffer for usage on a display plane.  Generally this
+ * involves pinning the underlying object and updating the frontbuffer tra=
cking
+ * bits.  Some older platforms need special physical address handling for
+ * cursor planes.
+ *
+ * Returns 0 on success, negative error code on failure.
+ */
+static int
+intel_prepare_plane_fb(struct drm_plane *_plane,
+=09=09       struct drm_plane_state *_new_plane_state)
+{
+=09struct i915_sched_attr attr =3D { .priority =3D I915_PRIORITY_DISPLAY }=
;
+=09struct intel_plane *plane =3D to_intel_plane(_plane);
+=09struct intel_plane_state *new_plane_state =3D
+=09=09to_intel_plane_state(_new_plane_state);
+=09struct intel_atomic_state *state =3D
+=09=09to_intel_atomic_state(new_plane_state->uapi.state);
+=09struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
+=09const struct intel_plane_state *old_plane_state =3D
+=09=09intel_atomic_get_old_plane_state(state, plane);
+=09struct drm_i915_gem_object *obj =3D intel_fb_obj(new_plane_state->hw.fb=
);
+=09struct drm_i915_gem_object *old_obj =3D intel_fb_obj(old_plane_state->h=
w.fb);
+=09int ret;
+
+=09if (old_obj) {
+=09=09const struct intel_crtc_state *crtc_state =3D
+=09=09=09intel_atomic_get_new_crtc_state(state,
+=09=09=09=09=09=09=09to_intel_crtc(old_plane_state->hw.crtc));
+
+=09=09/* Big Hammer, we also need to ensure that any pending
+=09=09 * MI_WAIT_FOR_EVENT inside a user batch buffer on the
+=09=09 * current scanout is retired before unpinning the old
+=09=09 * framebuffer. Note that we rely on userspace rendering
+=09=09 * into the buffer attached to the pipe they are waiting
+=09=09 * on. If not, userspace generates a GPU hang with IPEHR
+=09=09 * point to the MI_WAIT_FOR_EVENT.
+=09=09 *
+=09=09 * This should only fail upon a hung GPU, in which case we
+=09=09 * can safely continue.
+=09=09 */
+=09=09if (intel_crtc_needs_modeset(crtc_state)) {
+=09=09=09ret =3D i915_sw_fence_await_reservation(&state->commit_ready,
+=09=09=09=09=09=09=09      old_obj->base.resv, NULL,
+=09=09=09=09=09=09=09      false, 0,
+=09=09=09=09=09=09=09      GFP_KERNEL);
+=09=09=09if (ret < 0)
+=09=09=09=09return ret;
+=09=09}
+=09}
+
+=09if (new_plane_state->uapi.fence) { /* explicit fencing */
+=09=09i915_gem_fence_wait_priority(new_plane_state->uapi.fence,
+=09=09=09=09=09     &attr);
+=09=09ret =3D i915_sw_fence_await_dma_fence(&state->commit_ready,
+=09=09=09=09=09=09    new_plane_state->uapi.fence,
+=09=09=09=09=09=09    i915_fence_timeout(dev_priv),
+=09=09=09=09=09=09    GFP_KERNEL);
+=09=09if (ret < 0)
+=09=09=09return ret;
+=09}
+
+=09if (!obj)
+=09=09return 0;
+
+
+=09ret =3D intel_plane_pin_fb(new_plane_state);
+=09if (ret)
+=09=09return ret;
+
+=09i915_gem_object_wait_priority(obj, 0, &attr);
+
+=09if (!new_plane_state->uapi.fence) { /* implicit fencing */
+=09=09struct dma_fence *fence;
+
+=09=09ret =3D i915_sw_fence_await_reservation(&state->commit_ready,
+=09=09=09=09=09=09      obj->base.resv, NULL,
+=09=09=09=09=09=09      false,
+=09=09=09=09=09=09      i915_fence_timeout(dev_priv),
+=09=09=09=09=09=09      GFP_KERNEL);
+=09=09if (ret < 0)
+=09=09=09goto unpin_fb;
+
+=09=09fence =3D dma_resv_get_excl_unlocked(obj->base.resv);
+=09=09if (fence) {
+=09=09=09add_rps_boost_after_vblank(new_plane_state->hw.crtc,
+=09=09=09=09=09=09   fence);
+=09=09=09dma_fence_put(fence);
+=09=09}
+=09} else {
+=09=09add_rps_boost_after_vblank(new_plane_state->hw.crtc,
+=09=09=09=09=09   new_plane_state->uapi.fence);
+=09}
+
+=09/*
+=09 * We declare pageflips to be interactive and so merit a small bias
+=09 * towards upclocking to deliver the frame on time. By only changing
+=09 * the RPS thresholds to sample more regularly and aim for higher
+=09 * clocks we can hopefully deliver low power workloads (like kodi)
+=09 * that are not quite steady state without resorting to forcing
+=09 * maximum clocks following a vblank miss (see do_rps_boost()).
+=09 */
+=09if (!state->rps_interactive) {
+=09=09intel_rps_mark_interactive(&dev_priv->gt.rps, true);
+=09=09state->rps_interactive =3D true;
+=09}
+
+=09return 0;
+
+unpin_fb:
+=09intel_plane_unpin_fb(new_plane_state);
+
+=09return ret;
+}
+
+/**
+ * intel_cleanup_plane_fb - Cleans up an fb after plane use
+ * @plane: drm plane to clean up for
+ * @_old_plane_state: the state from the previous modeset
+ *
+ * Cleans up a framebuffer that has just been removed from a plane.
+ */
+static void
+intel_cleanup_plane_fb(struct drm_plane *plane,
+=09=09       struct drm_plane_state *_old_plane_state)
+{
+=09struct intel_plane_state *old_plane_state =3D
+=09=09to_intel_plane_state(_old_plane_state);
+=09struct intel_atomic_state *state =3D
+=09=09to_intel_atomic_state(old_plane_state->uapi.state);
+=09struct drm_i915_private *dev_priv =3D to_i915(plane->dev);
+=09struct drm_i915_gem_object *obj =3D intel_fb_obj(old_plane_state->hw.fb=
);
+
+=09if (!obj)
+=09=09return;
+
+=09if (state->rps_interactive) {
+=09=09intel_rps_mark_interactive(&dev_priv->gt.rps, false);
+=09=09state->rps_interactive =3D false;
+=09}
+
+=09/* Should only be called after a successful intel_prepare_plane_fb()! *=
/
+=09intel_plane_unpin_fb(old_plane_state);
+}
+
 static const struct drm_plane_helper_funcs intel_plane_helper_funcs =3D {
 =09.prepare_fb =3D intel_prepare_plane_fb,
 =09.cleanup_fb =3D intel_cleanup_plane_fb,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index b2e2e039744d..d1fa17929b1f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -68,7 +68,6 @@
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_object.h"
=20
-#include "gt/intel_rps.h"
 #include "gt/gen8_ppgtt.h"
=20
 #include "g4x_dp.h"
@@ -10479,64 +10478,6 @@ static int intel_atomic_commit(struct drm_device *=
dev,
 =09return 0;
 }
=20
-struct wait_rps_boost {
-=09struct wait_queue_entry wait;
-
-=09struct drm_crtc *crtc;
-=09struct i915_request *request;
-};
-
-static int do_rps_boost(struct wait_queue_entry *_wait,
-=09=09=09unsigned mode, int sync, void *key)
-{
-=09struct wait_rps_boost *wait =3D container_of(_wait, typeof(*wait), wait=
);
-=09struct i915_request *rq =3D wait->request;
-
-=09/*
-=09 * If we missed the vblank, but the request is already running it
-=09 * is reasonable to assume that it will complete before the next
-=09 * vblank without our intervention, so leave RPS alone.
-=09 */
-=09if (!i915_request_started(rq))
-=09=09intel_rps_boost(rq);
-=09i915_request_put(rq);
-
-=09drm_crtc_vblank_put(wait->crtc);
-
-=09list_del(&wait->wait.entry);
-=09kfree(wait);
-=09return 1;
-}
-
-static void add_rps_boost_after_vblank(struct drm_crtc *crtc,
-=09=09=09=09       struct dma_fence *fence)
-{
-=09struct wait_rps_boost *wait;
-
-=09if (!dma_fence_is_i915(fence))
-=09=09return;
-
-=09if (DISPLAY_VER(to_i915(crtc->dev)) < 6)
-=09=09return;
-
-=09if (drm_crtc_vblank_get(crtc))
-=09=09return;
-
-=09wait =3D kmalloc(sizeof(*wait), GFP_KERNEL);
-=09if (!wait) {
-=09=09drm_crtc_vblank_put(crtc);
-=09=09return;
-=09}
-
-=09wait->request =3D to_request(dma_fence_get(fence));
-=09wait->crtc =3D crtc;
-
-=09wait->wait.func =3D do_rps_boost;
-=09wait->wait.flags =3D 0;
-
-=09add_wait_queue(drm_crtc_vblank_waitqueue(crtc), &wait->wait);
-}
-
 int intel_plane_pin_fb(struct intel_plane_state *plane_state)
 {
 =09struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
@@ -10603,155 +10544,6 @@ void intel_plane_unpin_fb(struct intel_plane_stat=
e *old_plane_state)
 =09}
 }
=20
-/**
- * intel_prepare_plane_fb - Prepare fb for usage on plane
- * @_plane: drm plane to prepare for
- * @_new_plane_state: the plane state being prepared
- *
- * Prepares a framebuffer for usage on a display plane.  Generally this
- * involves pinning the underlying object and updating the frontbuffer tra=
cking
- * bits.  Some older platforms need special physical address handling for
- * cursor planes.
- *
- * Returns 0 on success, negative error code on failure.
- */
-int
-intel_prepare_plane_fb(struct drm_plane *_plane,
-=09=09       struct drm_plane_state *_new_plane_state)
-{
-=09struct i915_sched_attr attr =3D { .priority =3D I915_PRIORITY_DISPLAY }=
;
-=09struct intel_plane *plane =3D to_intel_plane(_plane);
-=09struct intel_plane_state *new_plane_state =3D
-=09=09to_intel_plane_state(_new_plane_state);
-=09struct intel_atomic_state *state =3D
-=09=09to_intel_atomic_state(new_plane_state->uapi.state);
-=09struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
-=09const struct intel_plane_state *old_plane_state =3D
-=09=09intel_atomic_get_old_plane_state(state, plane);
-=09struct drm_i915_gem_object *obj =3D intel_fb_obj(new_plane_state->hw.fb=
);
-=09struct drm_i915_gem_object *old_obj =3D intel_fb_obj(old_plane_state->h=
w.fb);
-=09int ret;
-
-=09if (old_obj) {
-=09=09const struct intel_crtc_state *crtc_state =3D
-=09=09=09intel_atomic_get_new_crtc_state(state,
-=09=09=09=09=09=09=09to_intel_crtc(old_plane_state->hw.crtc));
-
-=09=09/* Big Hammer, we also need to ensure that any pending
-=09=09 * MI_WAIT_FOR_EVENT inside a user batch buffer on the
-=09=09 * current scanout is retired before unpinning the old
-=09=09 * framebuffer. Note that we rely on userspace rendering
-=09=09 * into the buffer attached to the pipe they are waiting
-=09=09 * on. If not, userspace generates a GPU hang with IPEHR
-=09=09 * point to the MI_WAIT_FOR_EVENT.
-=09=09 *
-=09=09 * This should only fail upon a hung GPU, in which case we
-=09=09 * can safely continue.
-=09=09 */
-=09=09if (intel_crtc_needs_modeset(crtc_state)) {
-=09=09=09ret =3D i915_sw_fence_await_reservation(&state->commit_ready,
-=09=09=09=09=09=09=09      old_obj->base.resv, NULL,
-=09=09=09=09=09=09=09      false, 0,
-=09=09=09=09=09=09=09      GFP_KERNEL);
-=09=09=09if (ret < 0)
-=09=09=09=09return ret;
-=09=09}
-=09}
-
-=09if (new_plane_state->uapi.fence) { /* explicit fencing */
-=09=09i915_gem_fence_wait_priority(new_plane_state->uapi.fence,
-=09=09=09=09=09     &attr);
-=09=09ret =3D i915_sw_fence_await_dma_fence(&state->commit_ready,
-=09=09=09=09=09=09    new_plane_state->uapi.fence,
-=09=09=09=09=09=09    i915_fence_timeout(dev_priv),
-=09=09=09=09=09=09    GFP_KERNEL);
-=09=09if (ret < 0)
-=09=09=09return ret;
-=09}
-
-=09if (!obj)
-=09=09return 0;
-
-
-=09ret =3D intel_plane_pin_fb(new_plane_state);
-=09if (ret)
-=09=09return ret;
-
-=09i915_gem_object_wait_priority(obj, 0, &attr);
-
-=09if (!new_plane_state->uapi.fence) { /* implicit fencing */
-=09=09struct dma_fence *fence;
-
-=09=09ret =3D i915_sw_fence_await_reservation(&state->commit_ready,
-=09=09=09=09=09=09      obj->base.resv, NULL,
-=09=09=09=09=09=09      false,
-=09=09=09=09=09=09      i915_fence_timeout(dev_priv),
-=09=09=09=09=09=09      GFP_KERNEL);
-=09=09if (ret < 0)
-=09=09=09goto unpin_fb;
-
-=09=09fence =3D dma_resv_get_excl_unlocked(obj->base.resv);
-=09=09if (fence) {
-=09=09=09add_rps_boost_after_vblank(new_plane_state->hw.crtc,
-=09=09=09=09=09=09   fence);
-=09=09=09dma_fence_put(fence);
-=09=09}
-=09} else {
-=09=09add_rps_boost_after_vblank(new_plane_state->hw.crtc,
-=09=09=09=09=09   new_plane_state->uapi.fence);
-=09}
-
-=09/*
-=09 * We declare pageflips to be interactive and so merit a small bias
-=09 * towards upclocking to deliver the frame on time. By only changing
-=09 * the RPS thresholds to sample more regularly and aim for higher
-=09 * clocks we can hopefully deliver low power workloads (like kodi)
-=09 * that are not quite steady state without resorting to forcing
-=09 * maximum clocks following a vblank miss (see do_rps_boost()).
-=09 */
-=09if (!state->rps_interactive) {
-=09=09intel_rps_mark_interactive(&dev_priv->gt.rps, true);
-=09=09state->rps_interactive =3D true;
-=09}
-
-=09return 0;
-
-unpin_fb:
-=09intel_plane_unpin_fb(new_plane_state);
-
-=09return ret;
-}
-
-/**
- * intel_cleanup_plane_fb - Cleans up an fb after plane use
- * @plane: drm plane to clean up for
- * @_old_plane_state: the state from the previous modeset
- *
- * Cleans up a framebuffer that has just been removed from a plane.
- */
-void
-intel_cleanup_plane_fb(struct drm_plane *plane,
-=09=09       struct drm_plane_state *_old_plane_state)
-{
-=09struct intel_plane_state *old_plane_state =3D
-=09=09to_intel_plane_state(_old_plane_state);
-=09struct intel_atomic_state *state =3D
-=09=09to_intel_atomic_state(old_plane_state->uapi.state);
-=09struct drm_i915_private *dev_priv =3D to_i915(plane->dev);
-=09struct drm_i915_gem_object *obj =3D intel_fb_obj(old_plane_state->hw.fb=
);
-
-=09if (!obj)
-=09=09return;
-
-=09if (state->rps_interactive) {
-=09=09intel_rps_mark_interactive(&dev_priv->gt.rps, false);
-=09=09state->rps_interactive =3D false;
-=09}
-
-=09/* Should only be called after a successful intel_prepare_plane_fb()! *=
/
-=09intel_plane_unpin_fb(old_plane_state);
-}
-
 /**
  * intel_plane_destroy - destroy a plane
  * @plane: plane to destroy
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm=
/i915/display/intel_display.h
index 3028072c2cf3..a08903bb7647 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -585,10 +585,6 @@ void intel_unpin_fb_vma(struct i915_vma *vma, unsigned=
 long flags);
 struct drm_framebuffer *
 intel_framebuffer_create(struct drm_i915_gem_object *obj,
 =09=09=09 struct drm_mode_fb_cmd2 *mode_cmd);
-int intel_prepare_plane_fb(struct drm_plane *plane,
-=09=09=09   struct drm_plane_state *new_state);
-void intel_cleanup_plane_fb(struct drm_plane *plane,
-=09=09=09    struct drm_plane_state *old_state);
=20
 void assert_pch_transcoder_disabled(struct drm_i915_private *dev_priv,
 =09=09=09=09    enum pipe pipe);
--=20
2.25.4

