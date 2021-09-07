Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 439E7402442
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 09:26:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1EFC89D40;
	Tue,  7 Sep 2021 07:26:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BDBD897C5
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 07:26:46 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-141-pkNkSvMtOv6TRn3_UIVItQ-1; Tue, 07 Sep 2021 03:26:41 -0400
X-MC-Unique: pkNkSvMtOv6TRn3_UIVItQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CCA6A8018AC;
 Tue,  7 Sep 2021 07:26:40 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 87B4E60936;
 Tue,  7 Sep 2021 07:26:39 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Tue,  7 Sep 2021 17:25:48 +1000
Message-Id: <20210907072549.2962226-25-airlied@gmail.com>
In-Reply-To: <20210907072549.2962226-1-airlied@gmail.com>
References: <20210907072549.2962226-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 24/25] drm/i915/display: move workqueues to
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
 drivers/gpu/drm/i915/display/intel_display.c | 18 +++++++++---------
 drivers/gpu/drm/i915/i915_drv.h              | 10 +++++-----
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index 8e77bf7262df..374ca94785fa 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -10438,12 +10438,12 @@ static int intel_atomic_commit(struct drm_device =
*dev,
=20
 =09i915_sw_fence_commit(&state->commit_ready);
 =09if (nonblock && state->modeset) {
-=09=09queue_work(dev_priv->modeset_wq, &state->base.commit_work);
+=09=09queue_work(dev_priv->display->modeset_wq, &state->base.commit_work);
 =09} else if (nonblock) {
-=09=09queue_work(dev_priv->flip_wq, &state->base.commit_work);
+=09=09queue_work(dev_priv->display->flip_wq, &state->base.commit_work);
 =09} else {
 =09=09if (state->modeset)
-=09=09=09flush_workqueue(dev_priv->modeset_wq);
+=09=09=09flush_workqueue(dev_priv->display->modeset_wq);
 =09=09intel_atomic_commit_tail(state);
 =09}
=20
@@ -11569,8 +11569,8 @@ int intel_modeset_init_noirq(struct drm_i915_privat=
e *i915)
=20
 =09intel_dmc_ucode_init(i915);
=20
-=09i915->modeset_wq =3D alloc_ordered_workqueue("i915_modeset", 0);
-=09i915->flip_wq =3D alloc_workqueue("i915_flip", WQ_HIGHPRI |
+=09i915->display->modeset_wq =3D alloc_ordered_workqueue("i915_modeset", 0=
);
+=09i915->display->flip_wq =3D alloc_workqueue("i915_flip", WQ_HIGHPRI |
 =09=09=09=09=09WQ_UNBOUND, WQ_UNBOUND_MAX_ACTIVE);
=20
 =09i915->display->framestart_delay =3D 1; /* 1-4 */
@@ -12627,8 +12627,8 @@ void intel_modeset_driver_remove(struct drm_i915_pr=
ivate *i915)
 =09if (!HAS_DISPLAY(i915))
 =09=09return;
=20
-=09flush_workqueue(i915->flip_wq);
-=09flush_workqueue(i915->modeset_wq);
+=09flush_workqueue(i915->display->flip_wq);
+=09flush_workqueue(i915->display->modeset_wq);
=20
 =09flush_work(&i915->display->atomic_helper.free_work);
 =09drm_WARN_ON(&i915->drm, !llist_empty(&i915->display->atomic_helper.free=
_list));
@@ -12671,8 +12671,8 @@ void intel_modeset_driver_remove_noirq(struct drm_i=
915_private *i915)
=20
 =09intel_gmbus_teardown(i915);
=20
-=09destroy_workqueue(i915->flip_wq);
-=09destroy_workqueue(i915->modeset_wq);
+=09destroy_workqueue(i915->display->flip_wq);
+=09destroy_workqueue(i915->display->modeset_wq);
=20
 =09intel_fbc_cleanup_cfb(i915);
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 248fe12aa62d..e142feb5bc9c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -967,6 +967,11 @@ struct drm_i915_display {
 =09} dpll;
=20
 =09u32 fdi_rx_config;
+
+=09/* ordered wq for modesets */
+=09struct workqueue_struct *modeset_wq;
+=09/* unbound hipri wq for page flips/plane updates */
+=09struct workqueue_struct *flip_wq;
 };
=20
 struct drm_i915_private {
@@ -1069,11 +1074,6 @@ struct drm_i915_private {
 =09 */
 =09struct workqueue_struct *wq;
=20
-=09/* ordered wq for modesets */
-=09struct workqueue_struct *modeset_wq;
-=09/* unbound hipri wq for page flips/plane updates */
-=09struct workqueue_struct *flip_wq;
-
 =09/* PCH chipset type */
 =09enum intel_pch pch_type;
 =09unsigned short pch_id;
--=20
2.31.1

