Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED150402440
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 09:26:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65D3389850;
	Tue,  7 Sep 2021 07:26:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E086789850
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 07:26:38 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-396-qop_MkyPPSGda3i2aNAnjQ-1; Tue, 07 Sep 2021 03:26:34 -0400
X-MC-Unique: qop_MkyPPSGda3i2aNAnjQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ACB72107ACC7;
 Tue,  7 Sep 2021 07:26:33 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 67F7B60936;
 Tue,  7 Sep 2021 07:26:32 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Tue,  7 Sep 2021 17:25:44 +1000
Message-Id: <20210907072549.2962226-21-airlied@gmail.com>
In-Reply-To: <20210907072549.2962226-1-airlied@gmail.com>
References: <20210907072549.2962226-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 20/25] drm/intel/display: move atomic related
 things to display
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
 drivers/gpu/drm/i915/display/intel_display.c | 28 ++++++++++----------
 drivers/gpu/drm/i915/i915_drv.h              | 16 +++++------
 2 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index 7a4100a58b48..117c2ad9d266 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1661,7 +1661,7 @@ static bool gpu_reset_clobbers_display(struct drm_i91=
5_private *dev_priv)
 void intel_display_prepare_reset(struct drm_i915_private *dev_priv)
 {
 =09struct drm_device *dev =3D &dev_priv->drm;
-=09struct drm_modeset_acquire_ctx *ctx =3D &dev_priv->reset_ctx;
+=09struct drm_modeset_acquire_ctx *ctx =3D &dev_priv->display->reset_ctx;
 =09struct drm_atomic_state *state;
 =09int ret;
=20
@@ -1717,14 +1717,14 @@ void intel_display_prepare_reset(struct drm_i915_pr=
ivate *dev_priv)
 =09=09return;
 =09}
=20
-=09dev_priv->modeset_restore_state =3D state;
+=09dev_priv->display->modeset_restore_state =3D state;
 =09state->acquire_ctx =3D ctx;
 }
=20
 void intel_display_finish_reset(struct drm_i915_private *dev_priv)
 {
 =09struct drm_device *dev =3D &dev_priv->drm;
-=09struct drm_modeset_acquire_ctx *ctx =3D &dev_priv->reset_ctx;
+=09struct drm_modeset_acquire_ctx *ctx =3D &dev_priv->display->reset_ctx;
 =09struct drm_atomic_state *state;
 =09int ret;
=20
@@ -1735,7 +1735,7 @@ void intel_display_finish_reset(struct drm_i915_priva=
te *dev_priv)
 =09if (!test_bit(I915_RESET_MODESET, &dev_priv->gt.reset.flags))
 =09=09return;
=20
-=09state =3D fetch_and_zero(&dev_priv->modeset_restore_state);
+=09state =3D fetch_and_zero(&dev_priv->display->modeset_restore_state);
 =09if (!state)
 =09=09goto unlock;
=20
@@ -3753,7 +3753,7 @@ int intel_display_suspend(struct drm_device *dev)
 =09=09drm_err(&dev_priv->drm, "Suspending crtc's failed with %i\n",
 =09=09=09ret);
 =09else
-=09=09dev_priv->modeset_restore_state =3D state;
+=09=09dev_priv->display->modeset_restore_state =3D state;
 =09return ret;
 }
=20
@@ -10033,7 +10033,7 @@ static void intel_atomic_helper_free_state(struct d=
rm_i915_private *dev_priv)
 =09struct intel_atomic_state *state, *next;
 =09struct llist_node *freed;
=20
-=09freed =3D llist_del_all(&dev_priv->atomic_helper.free_list);
+=09freed =3D llist_del_all(&dev_priv->display->atomic_helper.free_list);
 =09llist_for_each_entry_safe(state, next, freed, freed)
 =09=09drm_atomic_state_put(&state->base);
 }
@@ -10041,7 +10041,7 @@ static void intel_atomic_helper_free_state(struct d=
rm_i915_private *dev_priv)
 static void intel_atomic_helper_free_state_worker(struct work_struct *work=
)
 {
 =09struct drm_i915_private *dev_priv =3D
-=09=09container_of(work, typeof(*dev_priv), atomic_helper.free_work);
+=09=09container_of(work, typeof(*dev_priv), _display.atomic_helper.free_wo=
rk);
=20
 =09intel_atomic_helper_free_state(dev_priv);
 }
@@ -10335,7 +10335,7 @@ intel_atomic_commit_ready(struct i915_sw_fence *fen=
ce,
 =09case FENCE_FREE:
 =09=09{
 =09=09=09struct intel_atomic_helper *helper =3D
-=09=09=09=09&to_i915(state->base.dev)->atomic_helper;
+=09=09=09=09&to_i915(state->base.dev)->display->atomic_helper;
=20
 =09=09=09if (llist_add(&state->freed, &helper->free_list))
 =09=09=09=09schedule_work(&helper->free_work);
@@ -11591,8 +11591,8 @@ int intel_modeset_init_noirq(struct drm_i915_privat=
e *i915)
 =09if (ret)
 =09=09goto cleanup_vga_client_pw_domain_dmc;
=20
-=09init_llist_head(&i915->atomic_helper.free_list);
-=09INIT_WORK(&i915->atomic_helper.free_work,
+=09init_llist_head(&i915->display->atomic_helper.free_list);
+=09INIT_WORK(&i915->display->atomic_helper.free_work,
 =09=09  intel_atomic_helper_free_state_worker);
=20
 =09intel_init_quirks(i915);
@@ -12568,14 +12568,14 @@ intel_modeset_setup_hw_state(struct drm_device *d=
ev,
 void intel_display_resume(struct drm_device *dev)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(dev);
-=09struct drm_atomic_state *state =3D dev_priv->modeset_restore_state;
+=09struct drm_atomic_state *state =3D dev_priv->display->modeset_restore_s=
tate;
 =09struct drm_modeset_acquire_ctx ctx;
 =09int ret;
=20
 =09if (!HAS_DISPLAY(dev_priv))
 =09=09return;
=20
-=09dev_priv->modeset_restore_state =3D NULL;
+=09dev_priv->display->modeset_restore_state =3D NULL;
 =09if (state)
 =09=09state->acquire_ctx =3D &ctx;
=20
@@ -12630,8 +12630,8 @@ void intel_modeset_driver_remove(struct drm_i915_pr=
ivate *i915)
 =09flush_workqueue(i915->flip_wq);
 =09flush_workqueue(i915->modeset_wq);
=20
-=09flush_work(&i915->atomic_helper.free_work);
-=09drm_WARN_ON(&i915->drm, !llist_empty(&i915->atomic_helper.free_list));
+=09flush_work(&i915->display->atomic_helper.free_work);
+=09drm_WARN_ON(&i915->drm, !llist_empty(&i915->display->atomic_helper.free=
_list));
 }
=20
 /* part #2: call after irq uninstall */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 6eba551396fc..550efc29b54f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -917,6 +917,14 @@ struct drm_i915_display {
 =09struct work_struct fbdev_suspend_work;
=20
 =09struct i915_frontbuffer_tracking fb_tracking;
+
+=09struct drm_atomic_state *modeset_restore_state;
+=09struct drm_modeset_acquire_ctx reset_ctx;
+
+=09struct intel_atomic_helper {
+=09=09struct llist_head free_list;
+=09=09struct work_struct free_work;
+=09} atomic_helper;
 };
=20
 struct drm_i915_private {
@@ -1030,9 +1038,6 @@ struct drm_i915_private {
=20
 =09unsigned long quirks;
=20
-=09struct drm_atomic_state *modeset_restore_state;
-=09struct drm_modeset_acquire_ctx reset_ctx;
-
 =09struct i915_ggtt ggtt; /* VM representing the global address space */
=20
 =09struct i915_gem_mm mm;
@@ -1062,11 +1067,6 @@ struct drm_i915_private {
=20
 =09struct i915_wa_list gt_wa_list;
=20
-=09struct intel_atomic_helper {
-=09=09struct llist_head free_list;
-=09=09struct work_struct free_work;
-=09} atomic_helper;
-
 =09bool mchbar_need_disable;
=20
 =09struct intel_l3_parity l3_parity;
--=20
2.31.1

