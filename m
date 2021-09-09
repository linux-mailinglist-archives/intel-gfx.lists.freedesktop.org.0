Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC6840434F
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 03:54:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A3586E433;
	Thu,  9 Sep 2021 01:54:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41D536E437
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 01:54:00 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-227-2aBKoqSnMR-5_EAsQgGC4g-1; Wed, 08 Sep 2021 21:53:56 -0400
X-MC-Unique: 2aBKoqSnMR-5_EAsQgGC4g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CB727102C7E4;
 Thu,  9 Sep 2021 01:53:54 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 387751A26A;
 Thu,  9 Sep 2021 01:53:52 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, Dave Airlie <airlied@redhat.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Thu,  9 Sep 2021 11:53:11 +1000
Message-Id: <20210909015322.2988500-13-airlied@gmail.com>
In-Reply-To: <20210909015322.2988500-1-airlied@gmail.com>
References: <20210909015322.2988500-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 12/23] drm/i915: split fdi link training from
 display vtable.
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

It may make sense to merge this with display again later,
however the fdi use of the vtable is limited to only a
few generations.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_fdi.c |  8 ++++----
 drivers/gpu/drm/i915/i915_drv.h          | 11 ++++++++---
 2 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i91=
5/display/intel_fdi.c
index 339243399a65..94bb7e039fe7 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -15,7 +15,7 @@ void intel_fdi_link_train(struct intel_crtc *crtc,
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
=20
-=09dev_priv->display.fdi_link_train(crtc, crtc_state);
+=09dev_priv->fdi_funcs.fdi_link_train(crtc, crtc_state);
 }
=20
 /* units of 100MHz */
@@ -1017,11 +1017,11 @@ void
 intel_fdi_init_hook(struct drm_i915_private *dev_priv)
 {
 =09if (IS_IRONLAKE(dev_priv)) {
-=09=09dev_priv->display.fdi_link_train =3D ilk_fdi_link_train;
+=09=09dev_priv->fdi_funcs.fdi_link_train =3D ilk_fdi_link_train;
 =09} else if (IS_SANDYBRIDGE(dev_priv)) {
-=09=09dev_priv->display.fdi_link_train =3D gen6_fdi_link_train;
+=09=09dev_priv->fdi_funcs.fdi_link_train =3D gen6_fdi_link_train;
 =09} else if (IS_IVYBRIDGE(dev_priv)) {
 =09=09/* FIXME: detect B0+ stepping and use auto training */
-=09=09dev_priv->display.fdi_link_train =3D ivb_manual_fdi_link_train;
+=09=09dev_priv->fdi_funcs.fdi_link_train =3D ivb_manual_fdi_link_train;
 =09}
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index caf854d251a6..680301bce3ab 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -388,6 +388,11 @@ struct intel_hotplug_funcs {
 =09void (*hpd_irq_setup)(struct drm_i915_private *dev_priv);
 };
=20
+struct intel_fdi_funcs {
+=09void (*fdi_link_train)(struct intel_crtc *crtc,
+=09=09=09       const struct intel_crtc_state *crtc_state);
+};
+
 struct drm_i915_display_funcs {
 =09/* Returns the active state of the crtc, and if the crtc is active,
 =09 * fills out the pipe-config with the hw state. */
@@ -403,9 +408,6 @@ struct drm_i915_display_funcs {
 =09void (*commit_modeset_enables)(struct intel_atomic_state *state);
 =09void (*commit_modeset_disables)(struct intel_atomic_state *state);
=20
-=09void (*fdi_link_train)(struct intel_crtc *crtc,
-=09=09=09       const struct intel_crtc_state *crtc_state);
-
 =09/* clock updates for mode set */
 =09/* cursor updates */
 =09/* render clock increase/decrease */
@@ -985,6 +987,9 @@ struct drm_i915_private {
 =09/* irq display functions */
 =09struct intel_hotplug_funcs hotplug_funcs;
=20
+=09/* fdi display functions */
+=09struct intel_fdi_funcs fdi_funcs;
+
 =09/* Display functions */
 =09struct drm_i915_display_funcs display;
=20
--=20
2.31.1

