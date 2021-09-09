Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A805E40434C
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 03:54:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A1286E438;
	Thu,  9 Sep 2021 01:53:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC4E16E437
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 01:53:53 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-171-YO8owJaVNg2TQx_udgUDvw-1; Wed, 08 Sep 2021 21:53:49 -0400
X-MC-Unique: YO8owJaVNg2TQx_udgUDvw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A1E9C102C7E4;
 Thu,  9 Sep 2021 01:53:48 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1C9DD19736;
 Thu,  9 Sep 2021 01:53:46 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, Dave Airlie <airlied@redhat.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Thu,  9 Sep 2021 11:53:08 +1000
Message-Id: <20210909015322.2988500-10-airlied@gmail.com>
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
Subject: [Intel-gfx] [PATCH 09/23] drm/i915: split audio functions from
 display vtable
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

These are only used internally in the audio code

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 24 +++++++++++-----------
 drivers/gpu/drm/i915/i915_drv.h            | 19 +++++++++++------
 2 files changed, 25 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i=
915/display/intel_audio.c
index 532237588511..f539826c0424 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -848,8 +848,8 @@ void intel_audio_codec_enable(struct intel_encoder *enc=
oder,
=20
 =09connector->eld[6] =3D drm_av_sync_delay(connector, adjusted_mode) / 2;
=20
-=09if (dev_priv->display.audio_codec_enable)
-=09=09dev_priv->display.audio_codec_enable(encoder,
+=09if (dev_priv->audio_funcs.audio_codec_enable)
+=09=09dev_priv->audio_funcs.audio_codec_enable(encoder,
 =09=09=09=09=09=09     crtc_state,
 =09=09=09=09=09=09     conn_state);
=20
@@ -893,8 +893,8 @@ void intel_audio_codec_disable(struct intel_encoder *en=
coder,
 =09enum port port =3D encoder->port;
 =09enum pipe pipe =3D crtc->pipe;
=20
-=09if (dev_priv->display.audio_codec_disable)
-=09=09dev_priv->display.audio_codec_disable(encoder,
+=09if (dev_priv->audio_funcs.audio_codec_disable)
+=09=09dev_priv->audio_funcs.audio_codec_disable(encoder,
 =09=09=09=09=09=09      old_crtc_state,
 =09=09=09=09=09=09      old_conn_state);
=20
@@ -922,17 +922,17 @@ void intel_audio_codec_disable(struct intel_encoder *=
encoder,
 void intel_init_audio_hooks(struct drm_i915_private *dev_priv)
 {
 =09if (IS_G4X(dev_priv)) {
-=09=09dev_priv->display.audio_codec_enable =3D g4x_audio_codec_enable;
-=09=09dev_priv->display.audio_codec_disable =3D g4x_audio_codec_disable;
+=09=09dev_priv->audio_funcs.audio_codec_enable =3D g4x_audio_codec_enable;
+=09=09dev_priv->audio_funcs.audio_codec_disable =3D g4x_audio_codec_disabl=
e;
 =09} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-=09=09dev_priv->display.audio_codec_enable =3D ilk_audio_codec_enable;
-=09=09dev_priv->display.audio_codec_disable =3D ilk_audio_codec_disable;
+=09=09dev_priv->audio_funcs.audio_codec_enable =3D ilk_audio_codec_enable;
+=09=09dev_priv->audio_funcs.audio_codec_disable =3D ilk_audio_codec_disabl=
e;
 =09} else if (IS_HASWELL(dev_priv) || DISPLAY_VER(dev_priv) >=3D 8) {
-=09=09dev_priv->display.audio_codec_enable =3D hsw_audio_codec_enable;
-=09=09dev_priv->display.audio_codec_disable =3D hsw_audio_codec_disable;
+=09=09dev_priv->audio_funcs.audio_codec_enable =3D hsw_audio_codec_enable;
+=09=09dev_priv->audio_funcs.audio_codec_disable =3D hsw_audio_codec_disabl=
e;
 =09} else if (HAS_PCH_SPLIT(dev_priv)) {
-=09=09dev_priv->display.audio_codec_enable =3D ilk_audio_codec_enable;
-=09=09dev_priv->display.audio_codec_disable =3D ilk_audio_codec_disable;
+=09=09dev_priv->audio_funcs.audio_codec_enable =3D ilk_audio_codec_enable;
+=09=09dev_priv->audio_funcs.audio_codec_disable =3D ilk_audio_codec_disabl=
e;
 =09}
 }
=20
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 8930bf2db226..1ba94dee683e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -364,6 +364,15 @@ struct intel_color_funcs {
 =09void (*read_luts)(struct intel_crtc_state *crtc_state);
 };
=20
+struct intel_audio_funcs {
+=09void (*audio_codec_enable)(struct intel_encoder *encoder,
+=09=09=09=09   const struct intel_crtc_state *crtc_state,
+=09=09=09=09   const struct drm_connector_state *conn_state);
+=09void (*audio_codec_disable)(struct intel_encoder *encoder,
+=09=09=09=09    const struct intel_crtc_state *old_crtc_state,
+=09=09=09=09    const struct drm_connector_state *old_conn_state);
+};
+
 struct drm_i915_display_funcs {
 =09void (*get_cdclk)(struct drm_i915_private *dev_priv,
 =09=09=09  struct intel_cdclk_config *cdclk_config);
@@ -386,12 +395,7 @@ struct drm_i915_display_funcs {
 =09=09=09     struct intel_crtc *crtc);
 =09void (*commit_modeset_enables)(struct intel_atomic_state *state);
 =09void (*commit_modeset_disables)(struct intel_atomic_state *state);
-=09void (*audio_codec_enable)(struct intel_encoder *encoder,
-=09=09=09=09   const struct intel_crtc_state *crtc_state,
-=09=09=09=09   const struct drm_connector_state *conn_state);
-=09void (*audio_codec_disable)(struct intel_encoder *encoder,
-=09=09=09=09    const struct intel_crtc_state *old_crtc_state,
-=09=09=09=09    const struct drm_connector_state *old_conn_state);
+
 =09void (*fdi_link_train)(struct intel_crtc *crtc,
 =09=09=09       const struct intel_crtc_state *crtc_state);
 =09void (*hpd_irq_setup)(struct drm_i915_private *dev_priv);
@@ -977,6 +981,9 @@ struct drm_i915_private {
 =09/* Display internal color functions */
 =09struct intel_color_funcs color_funcs;
=20
+=09/* Display internal audio functions */
+=09struct intel_audio_funcs audio_funcs;
+
 =09/* PCH chipset type */
 =09enum intel_pch pch_type;
 =09unsigned short pch_id;
--=20
2.31.1

