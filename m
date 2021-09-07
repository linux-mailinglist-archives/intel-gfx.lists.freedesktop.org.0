Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EFB402437
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 09:26:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C45BF89D5E;
	Tue,  7 Sep 2021 07:26:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BF6189D66
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 07:26:19 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-552-aGQ8jCrNOpWovfXRgphu4Q-1; Tue, 07 Sep 2021 03:26:14 -0400
X-MC-Unique: aGQ8jCrNOpWovfXRgphu4Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 21D3D19611A7;
 Tue,  7 Sep 2021 07:26:14 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D087A77C16;
 Tue,  7 Sep 2021 07:26:12 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Tue,  7 Sep 2021 17:25:35 +1000
Message-Id: <20210907072549.2962226-12-airlied@gmail.com>
In-Reply-To: <20210907072549.2962226-1-airlied@gmail.com>
References: <20210907072549.2962226-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 11/25] drm/i915/display: move pipe/plane
 mappings to display struct
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
 drivers/gpu/drm/i915/display/intel_crtc.c          | 12 ++++++------
 drivers/gpu/drm/i915/display/intel_display_types.h |  8 ++++----
 drivers/gpu/drm/i915/i915_drv.h                    |  6 +++---
 3 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i9=
15/display/intel_crtc.c
index 254e67141a77..2b7dd0c69e74 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -323,16 +323,16 @@ int intel_crtc_init(struct drm_i915_private *dev_priv=
, enum pipe pipe)
 =09if (ret)
 =09=09goto fail;
=20
-=09BUG_ON(pipe >=3D ARRAY_SIZE(dev_priv->pipe_to_crtc_mapping) ||
-=09       dev_priv->pipe_to_crtc_mapping[pipe] !=3D NULL);
-=09dev_priv->pipe_to_crtc_mapping[pipe] =3D crtc;
+=09BUG_ON(pipe >=3D ARRAY_SIZE(dev_priv->display->pipe_to_crtc_mapping) ||
+=09       dev_priv->display->pipe_to_crtc_mapping[pipe] !=3D NULL);
+=09dev_priv->display->pipe_to_crtc_mapping[pipe] =3D crtc;
=20
 =09if (DISPLAY_VER(dev_priv) < 9) {
 =09=09enum i9xx_plane_id i9xx_plane =3D primary->i9xx_plane;
=20
-=09=09BUG_ON(i9xx_plane >=3D ARRAY_SIZE(dev_priv->plane_to_crtc_mapping) |=
|
-=09=09       dev_priv->plane_to_crtc_mapping[i9xx_plane] !=3D NULL);
-=09=09dev_priv->plane_to_crtc_mapping[i9xx_plane] =3D crtc;
+=09=09BUG_ON(i9xx_plane >=3D ARRAY_SIZE(dev_priv->display->plane_to_crtc_m=
apping) ||
+=09=09       dev_priv->display->plane_to_crtc_mapping[i9xx_plane] !=3D NUL=
L);
+=09=09dev_priv->display->plane_to_crtc_mapping[i9xx_plane] =3D crtc;
 =09}
=20
 =09if (DISPLAY_VER(dev_priv) >=3D 11)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/g=
pu/drm/i915/display/intel_display_types.h
index c7bcf9183447..8df06b6233b8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1754,9 +1754,9 @@ vlv_pipe_to_channel(enum pipe pipe)
 static inline bool intel_pipe_valid(struct drm_i915_private *i915, enum pi=
pe pipe)
 {
 =09return (pipe >=3D 0 &&
-=09=09pipe < ARRAY_SIZE(i915->pipe_to_crtc_mapping) &&
+=09=09pipe < ARRAY_SIZE(i915->display->pipe_to_crtc_mapping) &&
 =09=09INTEL_INFO(i915)->pipe_mask & BIT(pipe) &&
-=09=09i915->pipe_to_crtc_mapping[pipe]);
+=09=09i915->display->pipe_to_crtc_mapping[pipe]);
 }
=20
 static inline struct intel_crtc *
@@ -1771,13 +1771,13 @@ intel_get_crtc_for_pipe(struct drm_i915_private *de=
v_priv, enum pipe pipe)
 =09/* pipe_to_crtc_mapping may have hole on any of 3 display pipe system *=
/
 =09drm_WARN_ON(&dev_priv->drm,
 =09=09    !(INTEL_INFO(dev_priv)->pipe_mask & BIT(pipe)));
-=09return dev_priv->pipe_to_crtc_mapping[pipe];
+=09return dev_priv->display->pipe_to_crtc_mapping[pipe];
 }
=20
 static inline struct intel_crtc *
 intel_get_crtc_for_plane(struct drm_i915_private *dev_priv, enum i9xx_plan=
e_id plane)
 {
-=09return dev_priv->plane_to_crtc_mapping[plane];
+=09return dev_priv->display->plane_to_crtc_mapping[plane];
 }
=20
 struct intel_load_detect_pipe {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index b94f25eb6ce5..1abeda306d05 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -869,6 +869,9 @@ struct drm_i915_display {
 =09struct intel_dmc dmc;
 =09struct i915_drrs drrs;
 =09struct intel_fbc fbc;
+
+=09struct intel_crtc *plane_to_crtc_mapping[I915_MAX_PIPES];
+=09struct intel_crtc *pipe_to_crtc_mapping[I915_MAX_PIPES];
 };
=20
 struct drm_i915_private {
@@ -995,9 +998,6 @@ struct drm_i915_private {
=20
 =09/* Kernel Modesetting */
=20
-=09struct intel_crtc *plane_to_crtc_mapping[I915_MAX_PIPES];
-=09struct intel_crtc *pipe_to_crtc_mapping[I915_MAX_PIPES];
-
 =09/**
 =09 * dpll and cdclk state is protected by connection_mutex
 =09 * dpll.lock serializes intel_{prepare,enable,disable}_shared_dpll.
--=20
2.31.1

