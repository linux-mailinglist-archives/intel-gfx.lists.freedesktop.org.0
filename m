Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDB04031E8
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 02:40:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82EB26E0FD;
	Wed,  8 Sep 2021 00:40:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8EEE6E0F7
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 00:40:22 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-187-eqX3a3yyNpSN8cZ1AAdcjA-1; Tue, 07 Sep 2021 20:40:17 -0400
X-MC-Unique: eqX3a3yyNpSN8cZ1AAdcjA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 55BBD1006C85;
 Wed,  8 Sep 2021 00:40:16 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0D4C660CD1;
 Wed,  8 Sep 2021 00:40:14 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Wed,  8 Sep 2021 10:39:33 +1000
Message-Id: <20210908003944.2972024-11-airlied@gmail.com>
In-Reply-To: <20210908003944.2972024-1-airlied@gmail.com>
References: <20210908003944.2972024-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 10/21] drm/i915: split fdi link training from
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
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_fdi.c     |  6 +++---
 drivers/gpu/drm/i915/i915_drv.h              | 11 ++++++++---
 3 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index ccd0332e7945..b981a923cc2f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2100,7 +2100,7 @@ static void ilk_pch_enable(const struct intel_atomic_=
state *state,
 =09assert_pch_transcoder_disabled(dev_priv, pipe);
=20
 =09/* For PCH output, training FDI link */
-=09dev_priv->display.fdi_link_train(crtc, crtc_state);
+=09dev_priv->fdi_funcs.fdi_link_train(crtc, crtc_state);
=20
 =09/* We need to program the right clock selection before writing the pixe=
l
 =09 * mutliplier into the DPLL. */
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i91=
5/display/intel_fdi.c
index fc09b781f15f..d9f952e0c67f 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -1009,11 +1009,11 @@ void
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
index ece23401cb46..49b23ea46475 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -388,6 +388,11 @@ struct drm_i915_irq_funcs {
 =09void (*hpd_irq_setup)(struct drm_i915_private *dev_priv);
 };
=20
+struct drm_i915_fdi_link_train_funcs {
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
@@ -1000,6 +1002,9 @@ struct drm_i915_private {
 =09/* irq display functions */
 =09struct drm_i915_irq_funcs irq_funcs;
=20
+=09/* fdi display functions */
+=09struct drm_i915_fdi_link_train_funcs fdi_funcs;
+
 =09/* Display functions */
 =09struct drm_i915_display_funcs display;
=20
--=20
2.31.1

