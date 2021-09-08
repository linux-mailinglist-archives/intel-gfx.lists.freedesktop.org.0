Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7194031EC
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 02:40:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64D36E0FB;
	Wed,  8 Sep 2021 00:40:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 603FF6E0FB
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 00:40:30 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-586-cM7QVeTJP-uRCAn6f9SISQ-1; Tue, 07 Sep 2021 20:40:26 -0400
X-MC-Unique: cM7QVeTJP-uRCAn6f9SISQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4F449107ACC7;
 Wed,  8 Sep 2021 00:40:25 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E928E610A7;
 Wed,  8 Sep 2021 00:40:23 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Wed,  8 Sep 2021 10:39:38 +1000
Message-Id: <20210908003944.2972024-16-airlied@gmail.com>
In-Reply-To: <20210908003944.2972024-1-airlied@gmail.com>
References: <20210908003944.2972024-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 15/21] drm/i915: constify the audio function
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

---
 drivers/gpu/drm/i915/display/intel_audio.c | 43 ++++++++++++++--------
 drivers/gpu/drm/i915/i915_drv.h            |  2 +-
 2 files changed, 28 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i=
915/display/intel_audio.c
index f539826c0424..4707e1beb763 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -848,10 +848,10 @@ void intel_audio_codec_enable(struct intel_encoder *e=
ncoder,
=20
 =09connector->eld[6] =3D drm_av_sync_delay(connector, adjusted_mode) / 2;
=20
-=09if (dev_priv->audio_funcs.audio_codec_enable)
-=09=09dev_priv->audio_funcs.audio_codec_enable(encoder,
-=09=09=09=09=09=09     crtc_state,
-=09=09=09=09=09=09     conn_state);
+=09if (dev_priv->audio_funcs)
+=09=09dev_priv->audio_funcs->audio_codec_enable(encoder,
+=09=09=09=09=09=09=09  crtc_state,
+=09=09=09=09=09=09=09  conn_state);
=20
 =09mutex_lock(&dev_priv->av_mutex);
 =09encoder->audio_connector =3D connector;
@@ -893,10 +893,10 @@ void intel_audio_codec_disable(struct intel_encoder *=
encoder,
 =09enum port port =3D encoder->port;
 =09enum pipe pipe =3D crtc->pipe;
=20
-=09if (dev_priv->audio_funcs.audio_codec_disable)
-=09=09dev_priv->audio_funcs.audio_codec_disable(encoder,
-=09=09=09=09=09=09      old_crtc_state,
-=09=09=09=09=09=09      old_conn_state);
+=09if (dev_priv->audio_funcs)
+=09=09dev_priv->audio_funcs->audio_codec_disable(encoder,
+=09=09=09=09=09=09=09   old_crtc_state,
+=09=09=09=09=09=09=09   old_conn_state);
=20
 =09mutex_lock(&dev_priv->av_mutex);
 =09encoder->audio_connector =3D NULL;
@@ -915,6 +915,21 @@ void intel_audio_codec_disable(struct intel_encoder *e=
ncoder,
 =09intel_lpe_audio_notify(dev_priv, pipe, port, NULL, 0, false);
 }
=20
+static const struct drm_i915_display_audio_funcs g4x_audio_funcs =3D {
+=09.audio_codec_enable =3D g4x_audio_codec_enable,
+=09.audio_codec_disable =3D g4x_audio_codec_disable,
+};
+
+static const struct drm_i915_display_audio_funcs ilk_audio_funcs =3D {
+=09.audio_codec_enable =3D ilk_audio_codec_enable,
+=09.audio_codec_disable =3D ilk_audio_codec_disable,
+};
+
+static const struct drm_i915_display_audio_funcs hsw_audio_funcs =3D {
+=09.audio_codec_enable =3D hsw_audio_codec_enable,
+=09.audio_codec_disable =3D hsw_audio_codec_disable,
+};
+
 /**
  * intel_init_audio_hooks - Set up chip specific audio hooks
  * @dev_priv: device private
@@ -922,17 +937,13 @@ void intel_audio_codec_disable(struct intel_encoder *=
encoder,
 void intel_init_audio_hooks(struct drm_i915_private *dev_priv)
 {
 =09if (IS_G4X(dev_priv)) {
-=09=09dev_priv->audio_funcs.audio_codec_enable =3D g4x_audio_codec_enable;
-=09=09dev_priv->audio_funcs.audio_codec_disable =3D g4x_audio_codec_disabl=
e;
+=09=09dev_priv->audio_funcs =3D &g4x_audio_funcs;
 =09} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-=09=09dev_priv->audio_funcs.audio_codec_enable =3D ilk_audio_codec_enable;
-=09=09dev_priv->audio_funcs.audio_codec_disable =3D ilk_audio_codec_disabl=
e;
+=09=09dev_priv->audio_funcs =3D &ilk_audio_funcs;
 =09} else if (IS_HASWELL(dev_priv) || DISPLAY_VER(dev_priv) >=3D 8) {
-=09=09dev_priv->audio_funcs.audio_codec_enable =3D hsw_audio_codec_enable;
-=09=09dev_priv->audio_funcs.audio_codec_disable =3D hsw_audio_codec_disabl=
e;
+=09=09dev_priv->audio_funcs =3D &hsw_audio_funcs;
 =09} else if (HAS_PCH_SPLIT(dev_priv)) {
-=09=09dev_priv->audio_funcs.audio_codec_enable =3D ilk_audio_codec_enable;
-=09=09dev_priv->audio_funcs.audio_codec_disable =3D ilk_audio_codec_disabl=
e;
+=09=09dev_priv->audio_funcs =3D &ilk_audio_funcs;
 =09}
 }
=20
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index e82df3bf493b..8d14318c5708 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1018,7 +1018,7 @@ struct drm_i915_private {
 =09const struct drm_i915_display_color_funcs *color_funcs;
=20
 =09/* Display internal audio functions */
-=09struct drm_i915_display_audio_funcs audio_funcs;
+=09const struct drm_i915_display_audio_funcs *audio_funcs;
=20
 =09/* Display CDCLK functions */
 =09struct drm_i915_display_cdclk_funcs cdclk_funcs;
--=20
2.31.1

