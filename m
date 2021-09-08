Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 008BD4031DE
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 02:40:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBF1D6E0EC;
	Wed,  8 Sep 2021 00:40:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 945246E0EC
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 00:39:59 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-225-KB7NLjmzNbKdTLi4yQspKA-1; Tue, 07 Sep 2021 20:39:55 -0400
X-MC-Unique: KB7NLjmzNbKdTLi4yQspKA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5DC498042C3;
 Wed,  8 Sep 2021 00:39:54 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D519D60C7F;
 Wed,  8 Sep 2021 00:39:52 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Wed,  8 Sep 2021 10:39:24 +1000
Message-Id: <20210908003944.2972024-2-airlied@gmail.com>
In-Reply-To: <20210908003944.2972024-1-airlied@gmail.com>
References: <20210908003944.2972024-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 01/21] drm/i915/pm: drop get_fifo_size vfunc.
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

The i845_update_wm code was always calling the i845 variant,
and the i9xx_update_wm had only a choice between i830 and i9xx
paths, hardly worth the vfunc overhead.

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/i915_drv.h |  2 --
 drivers/gpu/drm/i915/intel_pm.c | 20 +++++++++++---------
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index be2392bbcecc..6511ec674c23 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -330,8 +330,6 @@ struct drm_i915_display_funcs {
 =09=09=09  const struct intel_cdclk_config *cdclk_config,
 =09=09=09  enum pipe pipe);
 =09int (*bw_calc_min_cdclk)(struct intel_atomic_state *state);
-=09int (*get_fifo_size)(struct drm_i915_private *dev_priv,
-=09=09=09     enum i9xx_plane_id i9xx_plane);
 =09int (*compute_pipe_wm)(struct intel_atomic_state *state,
 =09=09=09       struct intel_crtc *crtc);
 =09int (*compute_intermediate_wm)(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_p=
m.c
index cfc41f8fa74a..d9993eb3730d 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -2347,7 +2347,10 @@ static void i9xx_update_wm(struct intel_crtc *unused=
_crtc)
 =09else
 =09=09wm_info =3D &i830_a_wm_info;
=20
-=09fifo_size =3D dev_priv->display.get_fifo_size(dev_priv, PLANE_A);
+=09if (DISPLAY_VER(dev_priv) =3D=3D 2)
+=09=09fifo_size =3D i830_get_fifo_size(dev_priv, PLANE_A);
+=09else
+=09=09fifo_size =3D i9xx_get_fifo_size(dev_priv, PLANE_A);
 =09crtc =3D intel_get_crtc_for_plane(dev_priv, PLANE_A);
 =09if (intel_crtc_active(crtc)) {
 =09=09const struct drm_display_mode *pipe_mode =3D
@@ -2374,7 +2377,10 @@ static void i9xx_update_wm(struct intel_crtc *unused=
_crtc)
 =09if (DISPLAY_VER(dev_priv) =3D=3D 2)
 =09=09wm_info =3D &i830_bc_wm_info;
=20
-=09fifo_size =3D dev_priv->display.get_fifo_size(dev_priv, PLANE_B);
+=09if (DISPLAY_VER(dev_priv) =3D=3D 2)
+=09=09fifo_size =3D i830_get_fifo_size(dev_priv, PLANE_B);
+=09else
+=09=09fifo_size =3D i9xx_get_fifo_size(dev_priv, PLANE_B);
 =09crtc =3D intel_get_crtc_for_plane(dev_priv, PLANE_B);
 =09if (intel_crtc_active(crtc)) {
 =09=09const struct drm_display_mode *pipe_mode =3D
@@ -2490,7 +2496,7 @@ static void i845_update_wm(struct intel_crtc *unused_=
crtc)
 =09pipe_mode =3D &crtc->config->hw.pipe_mode;
 =09planea_wm =3D intel_calculate_wm(pipe_mode->crtc_clock,
 =09=09=09=09       &i845_wm_info,
-=09=09=09=09       dev_priv->display.get_fifo_size(dev_priv, PLANE_A),
+=09=09=09=09       i845_get_fifo_size(dev_priv, PLANE_A),
 =09=09=09=09       4, pessimal_latency_ns);
 =09fwater_lo =3D intel_uncore_read(&dev_priv->uncore, FW_BLC) & ~0xfff;
 =09fwater_lo |=3D (3<<8) | planea_wm;
@@ -8054,15 +8060,11 @@ void intel_init_pm(struct drm_i915_private *dev_pri=
v)
 =09=09dev_priv->display.update_wm =3D i965_update_wm;
 =09} else if (DISPLAY_VER(dev_priv) =3D=3D 3) {
 =09=09dev_priv->display.update_wm =3D i9xx_update_wm;
-=09=09dev_priv->display.get_fifo_size =3D i9xx_get_fifo_size;
 =09} else if (DISPLAY_VER(dev_priv) =3D=3D 2) {
-=09=09if (INTEL_NUM_PIPES(dev_priv) =3D=3D 1) {
+=09=09if (INTEL_NUM_PIPES(dev_priv) =3D=3D 1)
 =09=09=09dev_priv->display.update_wm =3D i845_update_wm;
-=09=09=09dev_priv->display.get_fifo_size =3D i845_get_fifo_size;
-=09=09} else {
+=09=09else
 =09=09=09dev_priv->display.update_wm =3D i9xx_update_wm;
-=09=09=09dev_priv->display.get_fifo_size =3D i830_get_fifo_size;
-=09=09}
 =09} else {
 =09=09drm_err(&dev_priv->drm,
 =09=09=09"unexpected fall-through in %s\n", __func__);
--=20
2.31.1

