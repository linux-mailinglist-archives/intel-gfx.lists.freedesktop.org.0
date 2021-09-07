Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BAC840243D
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 09:26:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5538F897D4;
	Tue,  7 Sep 2021 07:26:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A25E897C5
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 07:26:35 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-517-i22jbnPKMMWBkqBsBcYB9A-1; Tue, 07 Sep 2021 03:26:31 -0400
X-MC-Unique: i22jbnPKMMWBkqBsBcYB9A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 26476801B3D;
 Tue,  7 Sep 2021 07:26:30 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D3EE460936;
 Tue,  7 Sep 2021 07:26:28 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Tue,  7 Sep 2021 17:25:42 +1000
Message-Id: <20210907072549.2962226-19-airlied@gmail.com>
In-Reply-To: <20210907072549.2962226-1-airlied@gmail.com>
References: <20210907072549.2962226-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 18/25] drm/i915/display: move fb_tracking to
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

the spinlock init in gem code seems wildly out of place
Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |  4 +-
 .../gpu/drm/i915/display/intel_frontbuffer.c  | 54 +++++++++----------
 drivers/gpu/drm/i915/i915_drv.h               |  4 +-
 drivers/gpu/drm/i915/i915_gem.c               |  2 +-
 4 files changed, 32 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers=
/gpu/drm/i915/display/intel_display_debugfs.c
index 1d38007106d9..784ce209add9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -32,10 +32,10 @@ static int i915_frontbuffer_tracking(struct seq_file *m=
, void *unused)
 =09struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
=20
 =09seq_printf(m, "FB tracking busy bits: 0x%08x\n",
-=09=09   dev_priv->fb_tracking.busy_bits);
+=09=09   dev_priv->display->fb_tracking.busy_bits);
=20
 =09seq_printf(m, "FB tracking flip bits: 0x%08x\n",
-=09=09   dev_priv->fb_tracking.flip_bits);
+=09=09   dev_priv->display->fb_tracking.flip_bits);
=20
 =09return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu=
/drm/i915/display/intel_frontbuffer.c
index 0492446cd04a..1d9f86de3c91 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -82,9 +82,9 @@ static void frontbuffer_flush(struct drm_i915_private *i9=
15,
 =09=09=09      enum fb_op_origin origin)
 {
 =09/* Delay flushing when rings are still busy.*/
-=09spin_lock(&i915->fb_tracking.lock);
-=09frontbuffer_bits &=3D ~i915->fb_tracking.busy_bits;
-=09spin_unlock(&i915->fb_tracking.lock);
+=09spin_lock(&i915->display->fb_tracking.lock);
+=09frontbuffer_bits &=3D ~i915->display->fb_tracking.busy_bits;
+=09spin_unlock(&i915->display->fb_tracking.lock);
=20
 =09if (!frontbuffer_bits)
 =09=09return;
@@ -112,11 +112,11 @@ static void frontbuffer_flush(struct drm_i915_private=
 *i915,
 void intel_frontbuffer_flip_prepare(struct drm_i915_private *i915,
 =09=09=09=09    unsigned frontbuffer_bits)
 {
-=09spin_lock(&i915->fb_tracking.lock);
-=09i915->fb_tracking.flip_bits |=3D frontbuffer_bits;
+=09spin_lock(&i915->display->fb_tracking.lock);
+=09i915->display->fb_tracking.flip_bits |=3D frontbuffer_bits;
 =09/* Remove stale busy bits due to the old buffer. */
-=09i915->fb_tracking.busy_bits &=3D ~frontbuffer_bits;
-=09spin_unlock(&i915->fb_tracking.lock);
+=09i915->display->fb_tracking.busy_bits &=3D ~frontbuffer_bits;
+=09spin_unlock(&i915->display->fb_tracking.lock);
 }
=20
 /**
@@ -132,11 +132,11 @@ void intel_frontbuffer_flip_prepare(struct drm_i915_p=
rivate *i915,
 void intel_frontbuffer_flip_complete(struct drm_i915_private *i915,
 =09=09=09=09     unsigned frontbuffer_bits)
 {
-=09spin_lock(&i915->fb_tracking.lock);
+=09spin_lock(&i915->display->fb_tracking.lock);
 =09/* Mask any cancelled flips. */
-=09frontbuffer_bits &=3D i915->fb_tracking.flip_bits;
-=09i915->fb_tracking.flip_bits &=3D ~frontbuffer_bits;
-=09spin_unlock(&i915->fb_tracking.lock);
+=09frontbuffer_bits &=3D i915->display->fb_tracking.flip_bits;
+=09i915->display->fb_tracking.flip_bits &=3D ~frontbuffer_bits;
+=09spin_unlock(&i915->display->fb_tracking.lock);
=20
 =09if (frontbuffer_bits)
 =09=09frontbuffer_flush(i915, frontbuffer_bits, ORIGIN_FLIP);
@@ -156,10 +156,10 @@ void intel_frontbuffer_flip_complete(struct drm_i915_=
private *i915,
 void intel_frontbuffer_flip(struct drm_i915_private *i915,
 =09=09=09    unsigned frontbuffer_bits)
 {
-=09spin_lock(&i915->fb_tracking.lock);
+=09spin_lock(&i915->display->fb_tracking.lock);
 =09/* Remove stale busy bits due to the old buffer. */
-=09i915->fb_tracking.busy_bits &=3D ~frontbuffer_bits;
-=09spin_unlock(&i915->fb_tracking.lock);
+=09i915->display->fb_tracking.busy_bits &=3D ~frontbuffer_bits;
+=09spin_unlock(&i915->display->fb_tracking.lock);
=20
 =09frontbuffer_flush(i915, frontbuffer_bits, ORIGIN_FLIP);
 }
@@ -171,10 +171,10 @@ void __intel_fb_invalidate(struct intel_frontbuffer *=
front,
 =09struct drm_i915_private *i915 =3D to_i915(front->obj->base.dev);
=20
 =09if (origin =3D=3D ORIGIN_CS) {
-=09=09spin_lock(&i915->fb_tracking.lock);
-=09=09i915->fb_tracking.busy_bits |=3D frontbuffer_bits;
-=09=09i915->fb_tracking.flip_bits &=3D ~frontbuffer_bits;
-=09=09spin_unlock(&i915->fb_tracking.lock);
+=09=09spin_lock(&i915->display->fb_tracking.lock);
+=09=09i915->display->fb_tracking.busy_bits |=3D frontbuffer_bits;
+=09=09i915->display->fb_tracking.flip_bits &=3D ~frontbuffer_bits;
+=09=09spin_unlock(&i915->display->fb_tracking.lock);
 =09}
=20
 =09trace_intel_frontbuffer_invalidate(frontbuffer_bits, origin);
@@ -192,11 +192,11 @@ void __intel_fb_flush(struct intel_frontbuffer *front=
,
 =09struct drm_i915_private *i915 =3D to_i915(front->obj->base.dev);
=20
 =09if (origin =3D=3D ORIGIN_CS) {
-=09=09spin_lock(&i915->fb_tracking.lock);
+=09=09spin_lock(&i915->display->fb_tracking.lock);
 =09=09/* Filter out new bits since rendering started. */
-=09=09frontbuffer_bits &=3D i915->fb_tracking.busy_bits;
-=09=09i915->fb_tracking.busy_bits &=3D ~frontbuffer_bits;
-=09=09spin_unlock(&i915->fb_tracking.lock);
+=09=09frontbuffer_bits &=3D i915->display->fb_tracking.busy_bits;
+=09=09i915->display->fb_tracking.busy_bits &=3D ~frontbuffer_bits;
+=09=09spin_unlock(&i915->display->fb_tracking.lock);
 =09}
=20
 =09if (frontbuffer_bits)
@@ -222,7 +222,7 @@ static void frontbuffer_retire(struct i915_active *ref)
 }
=20
 static void frontbuffer_release(struct kref *ref)
-=09__releases(&to_i915(front->obj->base.dev)->fb_tracking.lock)
+=09__releases(&to_i915(front->obj->base.dev)->display->fb_tracking.lock)
 {
 =09struct intel_frontbuffer *front =3D
 =09=09container_of(ref, typeof(*front), ref);
@@ -239,7 +239,7 @@ static void frontbuffer_release(struct kref *ref)
 =09spin_unlock(&obj->vma.lock);
=20
 =09RCU_INIT_POINTER(obj->frontbuffer, NULL);
-=09spin_unlock(&to_i915(obj->base.dev)->fb_tracking.lock);
+=09spin_unlock(&to_i915(obj->base.dev)->display->fb_tracking.lock);
=20
 =09i915_active_fini(&front->write);
=20
@@ -269,7 +269,7 @@ intel_frontbuffer_get(struct drm_i915_gem_object *obj)
 =09=09=09 frontbuffer_retire,
 =09=09=09 I915_ACTIVE_RETIRE_SLEEPS);
=20
-=09spin_lock(&i915->fb_tracking.lock);
+=09spin_lock(&i915->display->fb_tracking.lock);
 =09if (rcu_access_pointer(obj->frontbuffer)) {
 =09=09kfree(front);
 =09=09front =3D rcu_dereference_protected(obj->frontbuffer, true);
@@ -278,7 +278,7 @@ intel_frontbuffer_get(struct drm_i915_gem_object *obj)
 =09=09i915_gem_object_get(obj);
 =09=09rcu_assign_pointer(obj->frontbuffer, front);
 =09}
-=09spin_unlock(&i915->fb_tracking.lock);
+=09spin_unlock(&i915->display->fb_tracking.lock);
=20
 =09return front;
 }
@@ -287,7 +287,7 @@ void intel_frontbuffer_put(struct intel_frontbuffer *fr=
ont)
 {
 =09kref_put_lock(&front->ref,
 =09=09      frontbuffer_release,
-=09=09      &to_i915(front->obj->base.dev)->fb_tracking.lock);
+=09=09      &to_i915(front->obj->base.dev)->display->fb_tracking.lock);
 }
=20
 /**
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 5eaa06c98244..a487686b1b71 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -908,6 +908,8 @@ struct drm_i915_display {
 =09/* list of fbdev register on this device */
 =09struct intel_fbdev *fbdev;
 =09struct work_struct fbdev_suspend_work;
+
+=09struct i915_frontbuffer_tracking fb_tracking;
 };
=20
 struct drm_i915_private {
@@ -1053,8 +1055,6 @@ struct drm_i915_private {
=20
 =09struct i915_wa_list gt_wa_list;
=20
-=09struct i915_frontbuffer_tracking fb_tracking;
-
 =09struct intel_atomic_helper {
 =09=09struct llist_head free_list;
 =09=09struct work_struct free_work;
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_ge=
m.c
index 590efc8b0265..f01607461678 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1165,7 +1165,7 @@ void i915_gem_init_early(struct drm_i915_private *dev=
_priv)
 =09i915_gem_init__mm(dev_priv);
 =09i915_gem_init__contexts(dev_priv);
=20
-=09spin_lock_init(&dev_priv->fb_tracking.lock);
+=09spin_lock_init(&dev_priv->display->fb_tracking.lock);
 }
=20
 void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
--=20
2.31.1

