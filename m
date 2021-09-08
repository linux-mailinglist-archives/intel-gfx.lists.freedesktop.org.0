Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2444031E9
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 02:40:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 184E16E0FF;
	Wed,  8 Sep 2021 00:40:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B166B6E0FE
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 00:40:25 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-433-nQ8ll4EtNLmKJJXnQzMjlw-1; Tue, 07 Sep 2021 20:40:20 -0400
X-MC-Unique: nQ8ll4EtNLmKJJXnQzMjlw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DC4FC107ACC7;
 Wed,  8 Sep 2021 00:40:19 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9710E60CD1;
 Wed,  8 Sep 2021 00:40:18 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Wed,  8 Sep 2021 10:39:35 +1000
Message-Id: <20210908003944.2972024-13-airlied@gmail.com>
In-Reply-To: <20210908003944.2972024-1-airlied@gmail.com>
References: <20210908003944.2972024-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 12/21] drm/i915: constify fdi link training
 vtable
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

Avoid having writeable function pointers.
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_fdi.c     | 18 +++++++++++++++---
 drivers/gpu/drm/i915/i915_drv.h              |  2 +-
 3 files changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index 87950202f4ce..0ad577aceb9d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2100,7 +2100,7 @@ static void ilk_pch_enable(const struct intel_atomic_=
state *state,
 =09assert_pch_transcoder_disabled(dev_priv, pipe);
=20
 =09/* For PCH output, training FDI link */
-=09dev_priv->fdi_funcs.fdi_link_train(crtc, crtc_state);
+=09dev_priv->fdi_funcs->fdi_link_train(crtc, crtc_state);
=20
 =09/* We need to program the right clock selection before writing the pixe=
l
 =09 * mutliplier into the DPLL. */
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i91=
5/display/intel_fdi.c
index d9f952e0c67f..68aa9c7b18ec 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -1005,15 +1005,27 @@ void lpt_fdi_program_mphy(struct drm_i915_private *=
dev_priv)
 =09intel_sbi_write(dev_priv, 0x21EC, tmp, SBI_MPHY);
 }
=20
+static const struct drm_i915_fdi_link_train_funcs ilk_funcs =3D {
+=09.fdi_link_train =3D ilk_fdi_link_train
+};
+
+static const struct drm_i915_fdi_link_train_funcs gen6_funcs =3D {
+=09.fdi_link_train =3D gen6_fdi_link_train
+};
+
+static const struct drm_i915_fdi_link_train_funcs ivb_funcs =3D {
+=09.fdi_link_train =3D ivb_manual_fdi_link_train
+};
+
 void
 intel_fdi_init_hook(struct drm_i915_private *dev_priv)
 {
 =09if (IS_IRONLAKE(dev_priv)) {
-=09=09dev_priv->fdi_funcs.fdi_link_train =3D ilk_fdi_link_train;
+=09=09dev_priv->fdi_funcs =3D &ilk_funcs;
 =09} else if (IS_SANDYBRIDGE(dev_priv)) {
-=09=09dev_priv->fdi_funcs.fdi_link_train =3D gen6_fdi_link_train;
+=09=09dev_priv->fdi_funcs =3D &gen6_funcs;
 =09} else if (IS_IVYBRIDGE(dev_priv)) {
 =09=09/* FIXME: detect B0+ stepping and use auto training */
-=09=09dev_priv->fdi_funcs.fdi_link_train =3D ivb_manual_fdi_link_train;
+=09=09dev_priv->fdi_funcs =3D &ivb_funcs;
 =09}
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 461ab0a0f088..b3765222e717 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1006,7 +1006,7 @@ struct drm_i915_private {
 =09struct drm_i915_irq_funcs irq_funcs;
=20
 =09/* fdi display functions */
-=09struct drm_i915_fdi_link_train_funcs fdi_funcs;
+=09const struct drm_i915_fdi_link_train_funcs *fdi_funcs;
=20
 =09/* display pll funcs */
 =09struct drm_i915_dpll_funcs dpll_funcs;
--=20
2.31.1

