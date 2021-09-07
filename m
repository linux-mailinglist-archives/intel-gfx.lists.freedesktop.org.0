Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3286B40243E
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 09:26:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9915A8982A;
	Tue,  7 Sep 2021 07:26:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A2F489801
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 07:26:36 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-107-BzQHrCn3Ou6eYl1aERYYAg-1; Tue, 07 Sep 2021 03:26:22 -0400
X-MC-Unique: BzQHrCn3Ou6eYl1aERYYAg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2F5FB6C501;
 Tue,  7 Sep 2021 07:26:21 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8E5A260936;
 Tue,  7 Sep 2021 07:26:16 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Tue,  7 Sep 2021 17:25:37 +1000
Message-Id: <20210907072549.2962226-14-airlied@gmail.com>
In-Reply-To: <20210907072549.2962226-1-airlied@gmail.com>
References: <20210907072549.2962226-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 13/25] drm/i915/display: move audio related
 members into display struct
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
 drivers/gpu/drm/i915/display/intel_audio.c    | 72 +++++++++----------
 .../gpu/drm/i915/display/intel_lpe_audio.c    | 42 +++++------
 drivers/gpu/drm/i915/i915_drv.c               |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               | 38 +++++-----
 4 files changed, 76 insertions(+), 78 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i=
915/display/intel_audio.c
index 671af864fe0b..7a94f12ae842 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -388,7 +388,7 @@ hsw_dp_audio_config_update(struct intel_encoder *encode=
r,
 =09=09=09   const struct intel_crtc_state *crtc_state)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
-=09struct i915_audio_component *acomp =3D dev_priv->audio_component;
+=09struct i915_audio_component *acomp =3D dev_priv->display->audio_compone=
nt;
 =09enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
 =09enum port port =3D encoder->port;
 =09const struct dp_aud_n_m *nm;
@@ -436,7 +436,7 @@ hsw_hdmi_audio_config_update(struct intel_encoder *enco=
der,
 =09=09=09     const struct intel_crtc_state *crtc_state)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
-=09struct i915_audio_component *acomp =3D dev_priv->audio_component;
+=09struct i915_audio_component *acomp =3D dev_priv->display->audio_compone=
nt;
 =09enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
 =09enum port port =3D encoder->port;
 =09int n, rate;
@@ -494,7 +494,7 @@ static void hsw_audio_codec_disable(struct intel_encode=
r *encoder,
 =09drm_dbg_kms(&dev_priv->drm, "Disable audio codec on transcoder %s\n",
 =09=09    transcoder_name(cpu_transcoder));
=20
-=09mutex_lock(&dev_priv->av_mutex);
+=09mutex_lock(&dev_priv->display->av_mutex);
=20
 =09/* Disable timestamps */
 =09tmp =3D intel_de_read(dev_priv, HSW_AUD_CFG(cpu_transcoder));
@@ -512,7 +512,7 @@ static void hsw_audio_codec_disable(struct intel_encode=
r *encoder,
 =09tmp &=3D ~AUDIO_OUTPUT_ENABLE(cpu_transcoder);
 =09intel_de_write(dev_priv, HSW_AUD_PIN_ELD_CP_VLD, tmp);
=20
-=09mutex_unlock(&dev_priv->av_mutex);
+=09mutex_unlock(&dev_priv->display->av_mutex);
 }
=20
 static unsigned int calc_hblank_early_prog(struct intel_encoder *encoder,
@@ -641,7 +641,7 @@ static void hsw_audio_codec_enable(struct intel_encoder=
 *encoder,
 =09=09    "Enable audio codec on transcoder %s, %u bytes ELD\n",
 =09=09     transcoder_name(cpu_transcoder), drm_eld_size(eld));
=20
-=09mutex_lock(&dev_priv->av_mutex);
+=09mutex_lock(&dev_priv->display->av_mutex);
=20
 =09/* Enable Audio WA for 4k DSC usecases */
 =09if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
@@ -679,7 +679,7 @@ static void hsw_audio_codec_enable(struct intel_encoder=
 *encoder,
 =09/* Enable timestamps */
 =09hsw_audio_config_update(encoder, crtc_state);
=20
-=09mutex_unlock(&dev_priv->av_mutex);
+=09mutex_unlock(&dev_priv->display->av_mutex);
 }
=20
 static void ilk_audio_codec_disable(struct intel_encoder *encoder,
@@ -826,7 +826,7 @@ void intel_audio_codec_enable(struct intel_encoder *enc=
oder,
 =09=09=09      const struct drm_connector_state *conn_state)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
-=09struct i915_audio_component *acomp =3D dev_priv->audio_component;
+=09struct i915_audio_component *acomp =3D dev_priv->display->audio_compone=
nt;
 =09struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
 =09struct drm_connector *connector =3D conn_state->connector;
 =09const struct drm_display_mode *adjusted_mode =3D
@@ -853,12 +853,12 @@ void intel_audio_codec_enable(struct intel_encoder *e=
ncoder,
 =09=09=09=09=09=09     crtc_state,
 =09=09=09=09=09=09     conn_state);
=20
-=09mutex_lock(&dev_priv->av_mutex);
+=09mutex_lock(&dev_priv->display->av_mutex);
 =09encoder->audio_connector =3D connector;
=20
 =09/* referred in audio callbacks */
-=09dev_priv->av_enc_map[pipe] =3D encoder;
-=09mutex_unlock(&dev_priv->av_mutex);
+=09dev_priv->display->av_enc_map[pipe] =3D encoder;
+=09mutex_unlock(&dev_priv->display->av_mutex);
=20
 =09if (acomp && acomp->base.audio_ops &&
 =09    acomp->base.audio_ops->pin_eld_notify) {
@@ -888,7 +888,7 @@ void intel_audio_codec_disable(struct intel_encoder *en=
coder,
 =09=09=09       const struct drm_connector_state *old_conn_state)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
-=09struct i915_audio_component *acomp =3D dev_priv->audio_component;
+=09struct i915_audio_component *acomp =3D dev_priv->display->audio_compone=
nt;
 =09struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
 =09enum port port =3D encoder->port;
 =09enum pipe pipe =3D crtc->pipe;
@@ -898,10 +898,10 @@ void intel_audio_codec_disable(struct intel_encoder *=
encoder,
 =09=09=09=09=09=09      old_crtc_state,
 =09=09=09=09=09=09      old_conn_state);
=20
-=09mutex_lock(&dev_priv->av_mutex);
+=09mutex_lock(&dev_priv->display->av_mutex);
 =09encoder->audio_connector =3D NULL;
-=09dev_priv->av_enc_map[pipe] =3D NULL;
-=09mutex_unlock(&dev_priv->av_mutex);
+=09dev_priv->display->av_enc_map[pipe] =3D NULL;
+=09mutex_unlock(&dev_priv->display->av_mutex);
=20
 =09if (acomp && acomp->base.audio_ops &&
 =09    acomp->base.audio_ops->pin_eld_notify) {
@@ -1003,13 +1003,13 @@ static unsigned long i915_audio_component_get_power=
(struct device *kdev)
=20
 =09ret =3D intel_display_power_get(dev_priv, POWER_DOMAIN_AUDIO_PLAYBACK);
=20
-=09if (dev_priv->audio_power_refcount++ =3D=3D 0) {
+=09if (dev_priv->display->audio_power_refcount++ =3D=3D 0) {
 =09=09if (DISPLAY_VER(dev_priv) >=3D 9) {
 =09=09=09intel_de_write(dev_priv, AUD_FREQ_CNTRL,
-=09=09=09=09       dev_priv->audio_freq_cntrl);
+=09=09=09=09       dev_priv->display->audio_freq_cntrl);
 =09=09=09drm_dbg_kms(&dev_priv->drm,
 =09=09=09=09    "restored AUD_FREQ_CNTRL to 0x%x\n",
-=09=09=09=09    dev_priv->audio_freq_cntrl);
+=09=09=09=09    dev_priv->display->audio_freq_cntrl);
 =09=09}
=20
 =09=09/* Force CDCLK to 2*BCLK as long as we need audio powered. */
@@ -1030,7 +1030,7 @@ static void i915_audio_component_put_power(struct dev=
ice *kdev,
 =09struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev);
=20
 =09/* Stop forcing CDCLK to 2*BCLK if no need for audio to be powered. */
-=09if (--dev_priv->audio_power_refcount =3D=3D 0)
+=09if (--dev_priv->display->audio_power_refcount =3D=3D 0)
 =09=09if (IS_GEMINILAKE(dev_priv))
 =09=09=09glk_force_audio_cdclk(dev_priv, false);
=20
@@ -1097,10 +1097,10 @@ static struct intel_encoder *get_saved_enc(struct d=
rm_i915_private *dev_priv,
 =09/* MST */
 =09if (pipe >=3D 0) {
 =09=09if (drm_WARN_ON(&dev_priv->drm,
-=09=09=09=09pipe >=3D ARRAY_SIZE(dev_priv->av_enc_map)))
+=09=09=09=09pipe >=3D ARRAY_SIZE(dev_priv->display->av_enc_map)))
 =09=09=09return NULL;
=20
-=09=09encoder =3D dev_priv->av_enc_map[pipe];
+=09=09encoder =3D dev_priv->display->av_enc_map[pipe];
 =09=09/*
 =09=09 * when bootup, audio driver may not know it is
 =09=09 * MST or not. So it will poll all the port & pipe
@@ -1116,7 +1116,7 @@ static struct intel_encoder *get_saved_enc(struct drm=
_i915_private *dev_priv,
 =09=09return NULL;
=20
 =09for_each_pipe(dev_priv, pipe) {
-=09=09encoder =3D dev_priv->av_enc_map[pipe];
+=09=09encoder =3D dev_priv->display->av_enc_map[pipe];
 =09=09if (encoder =3D=3D NULL)
 =09=09=09continue;
=20
@@ -1134,7 +1134,7 @@ static int i915_audio_component_sync_audio_rate(struc=
t device *kdev, int port,
 =09=09=09=09=09=09int pipe, int rate)
 {
 =09struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev);
-=09struct i915_audio_component *acomp =3D dev_priv->audio_component;
+=09struct i915_audio_component *acomp =3D dev_priv->display->audio_compone=
nt;
 =09struct intel_encoder *encoder;
 =09struct intel_crtc *crtc;
 =09unsigned long cookie;
@@ -1144,7 +1144,7 @@ static int i915_audio_component_sync_audio_rate(struc=
t device *kdev, int port,
 =09=09return 0;
=20
 =09cookie =3D i915_audio_component_get_power(kdev);
-=09mutex_lock(&dev_priv->av_mutex);
+=09mutex_lock(&dev_priv->display->av_mutex);
=20
 =09/* 1. get the pipe */
 =09encoder =3D get_saved_enc(dev_priv, port, pipe);
@@ -1163,7 +1163,7 @@ static int i915_audio_component_sync_audio_rate(struc=
t device *kdev, int port,
 =09hsw_audio_config_update(encoder, crtc->config);
=20
  unlock:
-=09mutex_unlock(&dev_priv->av_mutex);
+=09mutex_unlock(&dev_priv->display->av_mutex);
 =09i915_audio_component_put_power(kdev, cookie);
 =09return err;
 }
@@ -1177,13 +1177,13 @@ static int i915_audio_component_get_eld(struct devi=
ce *kdev, int port,
 =09const u8 *eld;
 =09int ret =3D -EINVAL;
=20
-=09mutex_lock(&dev_priv->av_mutex);
+=09mutex_lock(&dev_priv->display->av_mutex);
=20
 =09intel_encoder =3D get_saved_enc(dev_priv, port, pipe);
 =09if (!intel_encoder) {
 =09=09drm_dbg_kms(&dev_priv->drm, "Not valid for port %c\n",
 =09=09=09    port_name(port));
-=09=09mutex_unlock(&dev_priv->av_mutex);
+=09=09mutex_unlock(&dev_priv->display->av_mutex);
 =09=09return ret;
 =09}
=20
@@ -1195,7 +1195,7 @@ static int i915_audio_component_get_eld(struct device=
 *kdev, int port,
 =09=09memcpy(buf, eld, min(max_bytes, ret));
 =09}
=20
-=09mutex_unlock(&dev_priv->av_mutex);
+=09mutex_unlock(&dev_priv->display->av_mutex);
 =09return ret;
 }
=20
@@ -1230,7 +1230,7 @@ static int i915_audio_component_bind(struct device *i=
915_kdev,
 =09BUILD_BUG_ON(MAX_PORTS !=3D I915_MAX_PORTS);
 =09for (i =3D 0; i < ARRAY_SIZE(acomp->aud_sample_rate); i++)
 =09=09acomp->aud_sample_rate[i] =3D 0;
-=09dev_priv->audio_component =3D acomp;
+=09dev_priv->display->audio_component =3D acomp;
 =09drm_modeset_unlock_all(&dev_priv->drm);
=20
 =09return 0;
@@ -1245,14 +1245,14 @@ static void i915_audio_component_unbind(struct devi=
ce *i915_kdev,
 =09drm_modeset_lock_all(&dev_priv->drm);
 =09acomp->base.ops =3D NULL;
 =09acomp->base.dev =3D NULL;
-=09dev_priv->audio_component =3D NULL;
+=09dev_priv->display->audio_component =3D NULL;
 =09drm_modeset_unlock_all(&dev_priv->drm);
=20
 =09device_link_remove(hda_kdev, i915_kdev);
=20
-=09if (dev_priv->audio_power_refcount)
+=09if (dev_priv->display->audio_power_refcount)
 =09=09drm_err(&dev_priv->drm, "audio power refcount %d after unbind\n",
-=09=09=09dev_priv->audio_power_refcount);
+=09=09=09dev_priv->display->audio_power_refcount);
 }
=20
 static const struct component_ops i915_audio_component_bind_ops =3D {
@@ -1315,10 +1315,10 @@ static void i915_audio_component_init(struct drm_i9=
15_private *dev_priv)
 =09=09drm_dbg_kms(&dev_priv->drm, "use AUD_FREQ_CNTRL of 0x%x (init value =
0x%x)\n",
 =09=09=09    aud_freq, aud_freq_init);
=20
-=09=09dev_priv->audio_freq_cntrl =3D aud_freq;
+=09=09dev_priv->display->audio_freq_cntrl =3D aud_freq;
 =09}
=20
-=09dev_priv->audio_component_registered =3D true;
+=09dev_priv->display->audio_component_registered =3D true;
 }
=20
 /**
@@ -1330,11 +1330,11 @@ static void i915_audio_component_init(struct drm_i9=
15_private *dev_priv)
  */
 static void i915_audio_component_cleanup(struct drm_i915_private *dev_priv=
)
 {
-=09if (!dev_priv->audio_component_registered)
+=09if (!dev_priv->display->audio_component_registered)
 =09=09return;
=20
 =09component_del(dev_priv->drm.dev, &i915_audio_component_bind_ops);
-=09dev_priv->audio_component_registered =3D false;
+=09dev_priv->display->audio_component_registered =3D false;
 }
=20
 /**
@@ -1356,7 +1356,7 @@ void intel_audio_init(struct drm_i915_private *dev_pr=
iv)
  */
 void intel_audio_deinit(struct drm_i915_private *dev_priv)
 {
-=09if ((dev_priv)->lpe_audio.platdev !=3D NULL)
+=09if ((dev_priv)->display->lpe_audio.platdev !=3D NULL)
 =09=09intel_lpe_audio_teardown(dev_priv);
 =09else
 =09=09i915_audio_component_cleanup(dev_priv);
diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/d=
rm/i915/display/intel_lpe_audio.c
index 7f3c638c8950..ba1b6c049c43 100644
--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
@@ -74,7 +74,7 @@
 #include "intel_de.h"
 #include "intel_lpe_audio.h"
=20
-#define HAS_LPE_AUDIO(dev_priv) ((dev_priv)->lpe_audio.platdev !=3D NULL)
+#define HAS_LPE_AUDIO(dev_priv) ((dev_priv)->display->lpe_audio.platdev !=
=3D NULL)
=20
 static struct platform_device *
 lpe_audio_platdev_create(struct drm_i915_private *dev_priv)
@@ -96,7 +96,7 @@ lpe_audio_platdev_create(struct drm_i915_private *dev_pri=
v)
 =09=09return ERR_PTR(-ENOMEM);
 =09}
=20
-=09rsc[0].start    =3D rsc[0].end =3D dev_priv->lpe_audio.irq;
+=09rsc[0].start    =3D rsc[0].end =3D dev_priv->display->lpe_audio.irq;
 =09rsc[0].flags    =3D IORESOURCE_IRQ;
 =09rsc[0].name     =3D "hdmi-lpe-audio-irq";
=20
@@ -148,7 +148,7 @@ static void lpe_audio_platdev_destroy(struct drm_i915_p=
rivate *dev_priv)
 =09 * than us fiddle with its internals.
 =09 */
=20
-=09platform_device_unregister(dev_priv->lpe_audio.platdev);
+=09platform_device_unregister(dev_priv->display->lpe_audio.platdev);
 }
=20
 static void lpe_audio_irq_unmask(struct irq_data *d)
@@ -167,7 +167,7 @@ static struct irq_chip lpe_audio_irqchip =3D {
=20
 static int lpe_audio_irq_init(struct drm_i915_private *dev_priv)
 {
-=09int irq =3D dev_priv->lpe_audio.irq;
+=09int irq =3D dev_priv->display->lpe_audio.irq;
=20
 =09drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv));
 =09irq_set_chip_and_handler_name(irq,
@@ -204,15 +204,15 @@ static int lpe_audio_setup(struct drm_i915_private *d=
ev_priv)
 {
 =09int ret;
=20
-=09dev_priv->lpe_audio.irq =3D irq_alloc_desc(0);
-=09if (dev_priv->lpe_audio.irq < 0) {
+=09dev_priv->display->lpe_audio.irq =3D irq_alloc_desc(0);
+=09if (dev_priv->display->lpe_audio.irq < 0) {
 =09=09drm_err(&dev_priv->drm, "Failed to allocate IRQ desc: %d\n",
-=09=09=09dev_priv->lpe_audio.irq);
-=09=09ret =3D dev_priv->lpe_audio.irq;
+=09=09=09dev_priv->display->lpe_audio.irq);
+=09=09ret =3D dev_priv->display->lpe_audio.irq;
 =09=09goto err;
 =09}
=20
-=09drm_dbg(&dev_priv->drm, "irq =3D %d\n", dev_priv->lpe_audio.irq);
+=09drm_dbg(&dev_priv->drm, "irq =3D %d\n", dev_priv->display->lpe_audio.ir=
q);
=20
 =09ret =3D lpe_audio_irq_init(dev_priv);
=20
@@ -223,10 +223,10 @@ static int lpe_audio_setup(struct drm_i915_private *d=
ev_priv)
 =09=09goto err_free_irq;
 =09}
=20
-=09dev_priv->lpe_audio.platdev =3D lpe_audio_platdev_create(dev_priv);
+=09dev_priv->display->lpe_audio.platdev =3D lpe_audio_platdev_create(dev_p=
riv);
=20
-=09if (IS_ERR(dev_priv->lpe_audio.platdev)) {
-=09=09ret =3D PTR_ERR(dev_priv->lpe_audio.platdev);
+=09if (IS_ERR(dev_priv->display->lpe_audio.platdev)) {
+=09=09ret =3D PTR_ERR(dev_priv->display->lpe_audio.platdev);
 =09=09drm_err(&dev_priv->drm,
 =09=09=09"Failed to create lpe audio platform device: %d\n",
 =09=09=09ret);
@@ -241,10 +241,10 @@ static int lpe_audio_setup(struct drm_i915_private *d=
ev_priv)
=20
 =09return 0;
 err_free_irq:
-=09irq_free_desc(dev_priv->lpe_audio.irq);
+=09irq_free_desc(dev_priv->display->lpe_audio.irq);
 err:
-=09dev_priv->lpe_audio.irq =3D -1;
-=09dev_priv->lpe_audio.platdev =3D NULL;
+=09dev_priv->display->lpe_audio.irq =3D -1;
+=09dev_priv->display->lpe_audio.platdev =3D NULL;
 =09return ret;
 }
=20
@@ -262,7 +262,7 @@ void intel_lpe_audio_irq_handler(struct drm_i915_privat=
e *dev_priv)
 =09if (!HAS_LPE_AUDIO(dev_priv))
 =09=09return;
=20
-=09ret =3D generic_handle_irq(dev_priv->lpe_audio.irq);
+=09ret =3D generic_handle_irq(dev_priv->display->lpe_audio.irq);
 =09if (ret)
 =09=09drm_err_ratelimited(&dev_priv->drm,
 =09=09=09=09    "error handling LPE audio irq: %d\n", ret);
@@ -303,10 +303,10 @@ void intel_lpe_audio_teardown(struct drm_i915_private=
 *dev_priv)
=20
 =09lpe_audio_platdev_destroy(dev_priv);
=20
-=09irq_free_desc(dev_priv->lpe_audio.irq);
+=09irq_free_desc(dev_priv->display->lpe_audio.irq);
=20
-=09dev_priv->lpe_audio.irq =3D -1;
-=09dev_priv->lpe_audio.platdev =3D NULL;
+=09dev_priv->display->lpe_audio.irq =3D -1;
+=09dev_priv->display->lpe_audio.platdev =3D NULL;
 }
=20
 /**
@@ -333,7 +333,7 @@ void intel_lpe_audio_notify(struct drm_i915_private *de=
v_priv,
 =09if (!HAS_LPE_AUDIO(dev_priv))
 =09=09return;
=20
-=09pdata =3D dev_get_platdata(&dev_priv->lpe_audio.platdev->dev);
+=09pdata =3D dev_get_platdata(&dev_priv->display->lpe_audio.platdev->dev);
 =09ppdata =3D &pdata->port[port - PORT_B];
=20
 =09spin_lock_irqsave(&pdata->lpe_audio_slock, irqflags);
@@ -361,7 +361,7 @@ void intel_lpe_audio_notify(struct drm_i915_private *de=
v_priv,
 =09}
=20
 =09if (pdata->notify_audio_lpe)
-=09=09pdata->notify_audio_lpe(dev_priv->lpe_audio.platdev, port - PORT_B);
+=09=09pdata->notify_audio_lpe(dev_priv->display->lpe_audio.platdev, port -=
 PORT_B);
=20
 =09spin_unlock_irqrestore(&pdata->lpe_audio_slock, irqflags);
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_dr=
v.c
index 87c3db974c4c..d0d97a6d37ba 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -320,7 +320,7 @@ static int i915_driver_early_probe(struct drm_i915_priv=
ate *dev_priv)
 =09mutex_init(&dev_priv->sb_lock);
 =09cpu_latency_qos_add_request(&dev_priv->sb_qos, PM_QOS_DEFAULT_VALUE);
=20
-=09mutex_init(&dev_priv->av_mutex);
+=09mutex_init(&dev_priv->display->av_mutex);
 =09mutex_init(&dev_priv->wm.wm_mutex);
 =09mutex_init(&dev_priv->pps_mutex);
 =09mutex_init(&dev_priv->hdcp_comp_mutex);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 3c2308a0c861..be496ec4917a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -873,6 +873,24 @@ struct drm_i915_display {
 =09struct intel_crtc *plane_to_crtc_mapping[I915_MAX_PIPES];
 =09struct intel_crtc *pipe_to_crtc_mapping[I915_MAX_PIPES];
=20
+=09/* hda/i915 audio component */
+=09struct i915_audio_component *audio_component;
+=09bool audio_component_registered;
+=09/**
+=09 * av_mutex - mutex for audio/video sync
+=09 *
+=09 */
+=09struct mutex av_mutex;
+=09int audio_power_refcount;
+=09u32 audio_freq_cntrl;
+=09/* Used to save the pipe-to-encoder mapping for audio */
+=09struct intel_encoder *av_enc_map[I915_MAX_PIPES];
+=09/* necessary resource sharing with HDMI LPE audio driver. */
+=09struct {
+=09=09struct platform_device *platdev;
+=09=09int=09irq;
+=09} lpe_audio;
+
 =09struct drm_property *broadcast_rgb_property;
 =09struct drm_property *force_audio_property;
 };
@@ -1059,17 +1077,6 @@ struct drm_i915_private {
 =09struct intel_fbdev *fbdev;
 =09struct work_struct fbdev_suspend_work;
=20
-=09/* hda/i915 audio component */
-=09struct i915_audio_component *audio_component;
-=09bool audio_component_registered;
-=09/**
-=09 * av_mutex - mutex for audio/video sync
-=09 *
-=09 */
-=09struct mutex av_mutex;
-=09int audio_power_refcount;
-=09u32 audio_freq_cntrl;
-
 =09u32 fdi_rx_config;
=20
 =09/* Shadow for DISPLAY_PHY_CONTROL which can't be safely read */
@@ -1202,15 +1209,6 @@ struct drm_i915_private {
=20
 =09bool ipc_enabled;
=20
-=09/* Used to save the pipe-to-encoder mapping for audio */
-=09struct intel_encoder *av_enc_map[I915_MAX_PIPES];
-
-=09/* necessary resource sharing with HDMI LPE audio driver. */
-=09struct {
-=09=09struct platform_device *platdev;
-=09=09int=09irq;
-=09} lpe_audio;
-
 =09struct i915_pmu pmu;
=20
 =09struct i915_hdcp_comp_master *hdcp_master;
--=20
2.31.1

