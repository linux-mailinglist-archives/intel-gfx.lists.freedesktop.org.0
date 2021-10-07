Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4883424C28
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 05:17:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 193596E825;
	Thu,  7 Oct 2021 03:16:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE5106E825
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 03:16:55 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-505-ILPI1W1ENjSZLjC2lmaiEg-1; Wed, 06 Oct 2021 23:16:51 -0400
X-MC-Unique: ILPI1W1ENjSZLjC2lmaiEg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4BA6E180830C;
 Thu,  7 Oct 2021 03:16:50 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BD2295D9C6;
 Thu,  7 Oct 2021 03:16:48 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Dave Airlie <airlied@redhat.com>
Date: Thu,  7 Oct 2021 13:13:12 +1000
Message-Id: <20211007031318.3088987-3-airlied@gmail.com>
In-Reply-To: <20211007031318.3088987-1-airlied@gmail.com>
References: <20211007031318.3088987-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 2/8] drm/i915/display: move
 intel_plane_uses_fence to inline.
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

Make future refactoring simpler, but also this function is pretty
trivial.

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 10 ----------
 drivers/gpu/drm/i915/display/intel_display_types.h | 10 ++++++++++
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index d1fa17929b1f..b26e1989b8d8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -851,16 +851,6 @@ unsigned int intel_remapped_info_size(const struct int=
el_remapped_info *rem_info
 =09return size;
 }
=20
-static bool intel_plane_uses_fence(const struct intel_plane_state *plane_s=
tate)
-{
-=09struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
-=09struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
-
-=09return DISPLAY_VER(dev_priv) < 4 ||
-=09=09(plane->has_fbc &&
-=09=09 plane_state->view.gtt.type =3D=3D I915_GGTT_VIEW_NORMAL);
-}
-
 static struct i915_vma *
 intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
 =09=09     const struct i915_ggtt_view *view,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/g=
pu/drm/i915/display/intel_display_types.h
index a811e13720bf..eebb46d0b0b9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2030,6 +2030,16 @@ static inline u32 intel_plane_ggtt_offset(const stru=
ct intel_plane_state *plane_
 =09return i915_ggtt_offset(plane_state->ggtt_vma);
 }
=20
+static inline bool intel_plane_uses_fence(const struct intel_plane_state *=
plane_state)
+{
+=09struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
+=09struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
+
+=09return DISPLAY_VER(dev_priv) < 4 ||
+=09=09(plane->has_fbc &&
+=09=09 plane_state->view.gtt.type =3D=3D I915_GGTT_VIEW_NORMAL);
+}
+
 static inline struct intel_frontbuffer *
 to_intel_frontbuffer(struct drm_framebuffer *fb)
 {
--=20
2.25.4

