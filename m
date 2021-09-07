Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB3D40242D
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 09:26:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA2BA89D4D;
	Tue,  7 Sep 2021 07:26:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 280B389D4D
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 07:26:02 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-26-tDCye9ZhOmeKjSVNqIdOXA-1; Tue, 07 Sep 2021 03:25:56 -0400
X-MC-Unique: tDCye9ZhOmeKjSVNqIdOXA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1712C1008065;
 Tue,  7 Sep 2021 07:25:56 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0D2FC60936;
 Tue,  7 Sep 2021 07:25:53 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Tue,  7 Sep 2021 17:25:25 +1000
Message-Id: <20210907072549.2962226-2-airlied@gmail.com>
In-Reply-To: <20210907072549.2962226-1-airlied@gmail.com>
References: <20210907072549.2962226-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 01/25] drm/i915: move display funcs into a
 display struct. (v3)
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

This is the first step in an idea to refactor the display code
into a bit more of a corner.

v2: move display to being a pointer.
v3: add missing pointer setup line

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c    |  24 +--
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 148 +++++++++---------
 drivers/gpu/drm/i915/display/intel_color.c    |  64 ++++----
 drivers/gpu/drm/i915/display/intel_display.c  | 110 ++++++-------
 .../drm/i915/display/intel_display_power.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  16 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  |   4 +-
 drivers/gpu/drm/i915/i915_drv.c               |   1 +
 drivers/gpu/drm/i915/i915_drv.h               |  11 +-
 drivers/gpu/drm/i915/i915_irq.c               |  14 +-
 drivers/gpu/drm/i915/intel_pm.c               | 104 ++++++------
 12 files changed, 255 insertions(+), 249 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i=
915/display/intel_audio.c
index 532237588511..c8c7847498e1 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -848,8 +848,8 @@ void intel_audio_codec_enable(struct intel_encoder *enc=
oder,
=20
 =09connector->eld[6] =3D drm_av_sync_delay(connector, adjusted_mode) / 2;
=20
-=09if (dev_priv->display.audio_codec_enable)
-=09=09dev_priv->display.audio_codec_enable(encoder,
+=09if (dev_priv->display->funcs.audio_codec_enable)
+=09=09dev_priv->display->funcs.audio_codec_enable(encoder,
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
+=09if (dev_priv->display->funcs.audio_codec_disable)
+=09=09dev_priv->display->funcs.audio_codec_disable(encoder,
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
+=09=09dev_priv->display->funcs.audio_codec_enable =3D g4x_audio_codec_enab=
le;
+=09=09dev_priv->display->funcs.audio_codec_disable =3D g4x_audio_codec_dis=
able;
 =09} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-=09=09dev_priv->display.audio_codec_enable =3D ilk_audio_codec_enable;
-=09=09dev_priv->display.audio_codec_disable =3D ilk_audio_codec_disable;
+=09=09dev_priv->display->funcs.audio_codec_enable =3D ilk_audio_codec_enab=
le;
+=09=09dev_priv->display->funcs.audio_codec_disable =3D ilk_audio_codec_dis=
able;
 =09} else if (IS_HASWELL(dev_priv) || DISPLAY_VER(dev_priv) >=3D 8) {
-=09=09dev_priv->display.audio_codec_enable =3D hsw_audio_codec_enable;
-=09=09dev_priv->display.audio_codec_disable =3D hsw_audio_codec_disable;
+=09=09dev_priv->display->funcs.audio_codec_enable =3D hsw_audio_codec_enab=
le;
+=09=09dev_priv->display->funcs.audio_codec_disable =3D hsw_audio_codec_dis=
able;
 =09} else if (HAS_PCH_SPLIT(dev_priv)) {
-=09=09dev_priv->display.audio_codec_enable =3D ilk_audio_codec_enable;
-=09=09dev_priv->display.audio_codec_disable =3D ilk_audio_codec_disable;
+=09=09dev_priv->display->funcs.audio_codec_enable =3D ilk_audio_codec_enab=
le;
+=09=09dev_priv->display->funcs.audio_codec_disable =3D ilk_audio_codec_dis=
able;
 =09}
 }
=20
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i=
915/display/intel_cdclk.c
index 34fa4130d5c4..1aa45b46f317 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1466,7 +1466,7 @@ static void bxt_get_cdclk(struct drm_i915_private *de=
v_priv,
 =09 * at least what the CDCLK frequency requires.
 =09 */
 =09cdclk_config->voltage_level =3D
-=09=09dev_priv->display.calc_voltage_level(cdclk_config->cdclk);
+=09=09dev_priv->display->funcs.calc_voltage_level(cdclk_config->cdclk);
 }
=20
 static void bxt_de_pll_disable(struct drm_i915_private *dev_priv)
@@ -1777,7 +1777,7 @@ static void bxt_cdclk_init_hw(struct drm_i915_private=
 *dev_priv)
 =09cdclk_config.cdclk =3D bxt_calc_cdclk(dev_priv, 0);
 =09cdclk_config.vco =3D bxt_calc_cdclk_pll_vco(dev_priv, cdclk_config.cdcl=
k);
 =09cdclk_config.voltage_level =3D
-=09=09dev_priv->display.calc_voltage_level(cdclk_config.cdclk);
+=09=09dev_priv->display->funcs.calc_voltage_level(cdclk_config.cdclk);
=20
 =09bxt_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
 }
@@ -1789,7 +1789,7 @@ static void bxt_cdclk_uninit_hw(struct drm_i915_priva=
te *dev_priv)
 =09cdclk_config.cdclk =3D cdclk_config.bypass;
 =09cdclk_config.vco =3D 0;
 =09cdclk_config.voltage_level =3D
-=09=09dev_priv->display.calc_voltage_level(cdclk_config.cdclk);
+=09=09dev_priv->display->funcs.calc_voltage_level(cdclk_config.cdclk);
=20
 =09bxt_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
 }
@@ -1932,7 +1932,7 @@ static void intel_set_cdclk(struct drm_i915_private *=
dev_priv,
 =09if (!intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config))
 =09=09return;
=20
-=09if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->display.set_cdclk))
+=09if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->display->funcs.set_cdcl=
k))
 =09=09return;
=20
 =09intel_dump_cdclk_config(cdclk_config, "Changing CDCLK to");
@@ -1956,7 +1956,7 @@ static void intel_set_cdclk(struct drm_i915_private *=
dev_priv,
 =09=09=09=09     &dev_priv->gmbus_mutex);
 =09}
=20
-=09dev_priv->display.set_cdclk(dev_priv, cdclk_config, pipe);
+=09dev_priv->display->funcs.set_cdclk(dev_priv, cdclk_config, pipe);
=20
 =09for_each_intel_dp(&dev_priv->drm, encoder) {
 =09=09struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
@@ -2414,7 +2414,7 @@ static int bxt_modeset_calc_cdclk(struct intel_cdclk_=
state *cdclk_state)
 =09cdclk_state->logical.cdclk =3D cdclk;
 =09cdclk_state->logical.voltage_level =3D
 =09=09max_t(int, min_voltage_level,
-=09=09      dev_priv->display.calc_voltage_level(cdclk));
+=09=09      dev_priv->display->funcs.calc_voltage_level(cdclk));
=20
 =09if (!cdclk_state->active_pipes) {
 =09=09cdclk =3D bxt_calc_cdclk(dev_priv, cdclk_state->force_min_cdclk);
@@ -2423,7 +2423,7 @@ static int bxt_modeset_calc_cdclk(struct intel_cdclk_=
state *cdclk_state)
 =09=09cdclk_state->actual.vco =3D vco;
 =09=09cdclk_state->actual.cdclk =3D cdclk;
 =09=09cdclk_state->actual.voltage_level =3D
-=09=09=09dev_priv->display.calc_voltage_level(cdclk);
+=09=09=09dev_priv->display->funcs.calc_voltage_level(cdclk);
 =09} else {
 =09=09cdclk_state->actual =3D cdclk_state->logical;
 =09}
@@ -2515,7 +2515,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_stat=
e *state)
 =09new_cdclk_state->active_pipes =3D
 =09=09intel_calc_active_pipes(state, old_cdclk_state->active_pipes);
=20
-=09ret =3D dev_priv->display.modeset_calc_cdclk(new_cdclk_state);
+=09ret =3D dev_priv->display->funcs.modeset_calc_cdclk(new_cdclk_state);
 =09if (ret)
 =09=09return ret;
=20
@@ -2695,7 +2695,7 @@ void intel_update_max_cdclk(struct drm_i915_private *=
dev_priv)
  */
 void intel_update_cdclk(struct drm_i915_private *dev_priv)
 {
-=09dev_priv->display.get_cdclk(dev_priv, &dev_priv->cdclk.hw);
+=09dev_priv->display->funcs.get_cdclk(dev_priv, &dev_priv->cdclk.hw);
=20
 =09/*
 =09 * 9:0 CMBUS [sic] CDCLK frequency (cdfreq):
@@ -2852,119 +2852,119 @@ u32 intel_read_rawclk(struct drm_i915_private *de=
v_priv)
 void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 {
 =09if (IS_DG2(dev_priv)) {
-=09=09dev_priv->display.set_cdclk =3D bxt_set_cdclk;
-=09=09dev_priv->display.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
-=09=09dev_priv->display.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
-=09=09dev_priv->display.calc_voltage_level =3D tgl_calc_voltage_level;
+=09=09dev_priv->display->funcs.set_cdclk =3D bxt_set_cdclk;
+=09=09dev_priv->display->funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk=
;
+=09=09dev_priv->display->funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdc=
lk;
+=09=09dev_priv->display->funcs.calc_voltage_level =3D tgl_calc_voltage_lev=
el;
 =09=09dev_priv->cdclk.table =3D dg2_cdclk_table;
 =09} else if (IS_ALDERLAKE_P(dev_priv)) {
-=09=09dev_priv->display.set_cdclk =3D bxt_set_cdclk;
-=09=09dev_priv->display.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
-=09=09dev_priv->display.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
-=09=09dev_priv->display.calc_voltage_level =3D tgl_calc_voltage_level;
+=09=09dev_priv->display->funcs.set_cdclk =3D bxt_set_cdclk;
+=09=09dev_priv->display->funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk=
;
+=09=09dev_priv->display->funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdc=
lk;
+=09=09dev_priv->display->funcs.calc_voltage_level =3D tgl_calc_voltage_lev=
el;
 =09=09/* Wa_22011320316:adl-p[a0] */
 =09=09if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 =09=09=09dev_priv->cdclk.table =3D adlp_a_step_cdclk_table;
 =09=09else
 =09=09=09dev_priv->cdclk.table =3D adlp_cdclk_table;
 =09} else if (IS_ROCKETLAKE(dev_priv)) {
-=09=09dev_priv->display.set_cdclk =3D bxt_set_cdclk;
-=09=09dev_priv->display.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
-=09=09dev_priv->display.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
-=09=09dev_priv->display.calc_voltage_level =3D tgl_calc_voltage_level;
+=09=09dev_priv->display->funcs.set_cdclk =3D bxt_set_cdclk;
+=09=09dev_priv->display->funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk=
;
+=09=09dev_priv->display->funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdc=
lk;
+=09=09dev_priv->display->funcs.calc_voltage_level =3D tgl_calc_voltage_lev=
el;
 =09=09dev_priv->cdclk.table =3D rkl_cdclk_table;
 =09} else if (DISPLAY_VER(dev_priv) >=3D 12) {
-=09=09dev_priv->display.set_cdclk =3D bxt_set_cdclk;
-=09=09dev_priv->display.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
-=09=09dev_priv->display.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
-=09=09dev_priv->display.calc_voltage_level =3D tgl_calc_voltage_level;
+=09=09dev_priv->display->funcs.set_cdclk =3D bxt_set_cdclk;
+=09=09dev_priv->display->funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk=
;
+=09=09dev_priv->display->funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdc=
lk;
+=09=09dev_priv->display->funcs.calc_voltage_level =3D tgl_calc_voltage_lev=
el;
 =09=09dev_priv->cdclk.table =3D icl_cdclk_table;
 =09} else if (IS_JSL_EHL(dev_priv)) {
-=09=09dev_priv->display.set_cdclk =3D bxt_set_cdclk;
-=09=09dev_priv->display.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
-=09=09dev_priv->display.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
-=09=09dev_priv->display.calc_voltage_level =3D ehl_calc_voltage_level;
+=09=09dev_priv->display->funcs.set_cdclk =3D bxt_set_cdclk;
+=09=09dev_priv->display->funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk=
;
+=09=09dev_priv->display->funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdc=
lk;
+=09=09dev_priv->display->funcs.calc_voltage_level =3D ehl_calc_voltage_lev=
el;
 =09=09dev_priv->cdclk.table =3D icl_cdclk_table;
 =09} else if (DISPLAY_VER(dev_priv) >=3D 11) {
-=09=09dev_priv->display.set_cdclk =3D bxt_set_cdclk;
-=09=09dev_priv->display.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
-=09=09dev_priv->display.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
-=09=09dev_priv->display.calc_voltage_level =3D icl_calc_voltage_level;
+=09=09dev_priv->display->funcs.set_cdclk =3D bxt_set_cdclk;
+=09=09dev_priv->display->funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk=
;
+=09=09dev_priv->display->funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdc=
lk;
+=09=09dev_priv->display->funcs.calc_voltage_level =3D icl_calc_voltage_lev=
el;
 =09=09dev_priv->cdclk.table =3D icl_cdclk_table;
 =09} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
-=09=09dev_priv->display.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
-=09=09dev_priv->display.set_cdclk =3D bxt_set_cdclk;
-=09=09dev_priv->display.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
-=09=09dev_priv->display.calc_voltage_level =3D bxt_calc_voltage_level;
+=09=09dev_priv->display->funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk=
;
+=09=09dev_priv->display->funcs.set_cdclk =3D bxt_set_cdclk;
+=09=09dev_priv->display->funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdc=
lk;
+=09=09dev_priv->display->funcs.calc_voltage_level =3D bxt_calc_voltage_lev=
el;
 =09=09if (IS_GEMINILAKE(dev_priv))
 =09=09=09dev_priv->cdclk.table =3D glk_cdclk_table;
 =09=09else
 =09=09=09dev_priv->cdclk.table =3D bxt_cdclk_table;
 =09} else if (DISPLAY_VER(dev_priv) =3D=3D 9) {
-=09=09dev_priv->display.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
-=09=09dev_priv->display.set_cdclk =3D skl_set_cdclk;
-=09=09dev_priv->display.modeset_calc_cdclk =3D skl_modeset_calc_cdclk;
+=09=09dev_priv->display->funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk=
;
+=09=09dev_priv->display->funcs.set_cdclk =3D skl_set_cdclk;
+=09=09dev_priv->display->funcs.modeset_calc_cdclk =3D skl_modeset_calc_cdc=
lk;
 =09} else if (IS_BROADWELL(dev_priv)) {
-=09=09dev_priv->display.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk;
-=09=09dev_priv->display.set_cdclk =3D bdw_set_cdclk;
-=09=09dev_priv->display.modeset_calc_cdclk =3D bdw_modeset_calc_cdclk;
+=09=09dev_priv->display->funcs.bw_calc_min_cdclk =3D intel_bw_calc_min_cdc=
lk;
+=09=09dev_priv->display->funcs.set_cdclk =3D bdw_set_cdclk;
+=09=09dev_priv->display->funcs.modeset_calc_cdclk =3D bdw_modeset_calc_cdc=
lk;
 =09} else if (IS_CHERRYVIEW(dev_priv)) {
-=09=09dev_priv->display.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk;
-=09=09dev_priv->display.set_cdclk =3D chv_set_cdclk;
-=09=09dev_priv->display.modeset_calc_cdclk =3D vlv_modeset_calc_cdclk;
+=09=09dev_priv->display->funcs.bw_calc_min_cdclk =3D intel_bw_calc_min_cdc=
lk;
+=09=09dev_priv->display->funcs.set_cdclk =3D chv_set_cdclk;
+=09=09dev_priv->display->funcs.modeset_calc_cdclk =3D vlv_modeset_calc_cdc=
lk;
 =09} else if (IS_VALLEYVIEW(dev_priv)) {
-=09=09dev_priv->display.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk;
-=09=09dev_priv->display.set_cdclk =3D vlv_set_cdclk;
-=09=09dev_priv->display.modeset_calc_cdclk =3D vlv_modeset_calc_cdclk;
+=09=09dev_priv->display->funcs.bw_calc_min_cdclk =3D intel_bw_calc_min_cdc=
lk;
+=09=09dev_priv->display->funcs.set_cdclk =3D vlv_set_cdclk;
+=09=09dev_priv->display->funcs.modeset_calc_cdclk =3D vlv_modeset_calc_cdc=
lk;
 =09} else {
-=09=09dev_priv->display.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk;
-=09=09dev_priv->display.modeset_calc_cdclk =3D fixed_modeset_calc_cdclk;
+=09=09dev_priv->display->funcs.bw_calc_min_cdclk =3D intel_bw_calc_min_cdc=
lk;
+=09=09dev_priv->display->funcs.modeset_calc_cdclk =3D fixed_modeset_calc_c=
dclk;
 =09}
=20
 =09if (DISPLAY_VER(dev_priv) >=3D 10 || IS_BROXTON(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D bxt_get_cdclk;
+=09=09dev_priv->display->funcs.get_cdclk =3D bxt_get_cdclk;
 =09else if (DISPLAY_VER(dev_priv) =3D=3D 9)
-=09=09dev_priv->display.get_cdclk =3D skl_get_cdclk;
+=09=09dev_priv->display->funcs.get_cdclk =3D skl_get_cdclk;
 =09else if (IS_BROADWELL(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D bdw_get_cdclk;
+=09=09dev_priv->display->funcs.get_cdclk =3D bdw_get_cdclk;
 =09else if (IS_HASWELL(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D hsw_get_cdclk;
+=09=09dev_priv->display->funcs.get_cdclk =3D hsw_get_cdclk;
 =09else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D vlv_get_cdclk;
+=09=09dev_priv->display->funcs.get_cdclk =3D vlv_get_cdclk;
 =09else if (IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D fixed_400mhz_get_cdclk;
+=09=09dev_priv->display->funcs.get_cdclk =3D fixed_400mhz_get_cdclk;
 =09else if (IS_IRONLAKE(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D fixed_450mhz_get_cdclk;
+=09=09dev_priv->display->funcs.get_cdclk =3D fixed_450mhz_get_cdclk;
 =09else if (IS_GM45(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D gm45_get_cdclk;
+=09=09dev_priv->display->funcs.get_cdclk =3D gm45_get_cdclk;
 =09else if (IS_G45(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D g33_get_cdclk;
+=09=09dev_priv->display->funcs.get_cdclk =3D g33_get_cdclk;
 =09else if (IS_I965GM(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D i965gm_get_cdclk;
+=09=09dev_priv->display->funcs.get_cdclk =3D i965gm_get_cdclk;
 =09else if (IS_I965G(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D fixed_400mhz_get_cdclk;
+=09=09dev_priv->display->funcs.get_cdclk =3D fixed_400mhz_get_cdclk;
 =09else if (IS_PINEVIEW(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D pnv_get_cdclk;
+=09=09dev_priv->display->funcs.get_cdclk =3D pnv_get_cdclk;
 =09else if (IS_G33(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D g33_get_cdclk;
+=09=09dev_priv->display->funcs.get_cdclk =3D g33_get_cdclk;
 =09else if (IS_I945GM(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D i945gm_get_cdclk;
+=09=09dev_priv->display->funcs.get_cdclk =3D i945gm_get_cdclk;
 =09else if (IS_I945G(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D fixed_400mhz_get_cdclk;
+=09=09dev_priv->display->funcs.get_cdclk =3D fixed_400mhz_get_cdclk;
 =09else if (IS_I915GM(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D i915gm_get_cdclk;
+=09=09dev_priv->display->funcs.get_cdclk =3D i915gm_get_cdclk;
 =09else if (IS_I915G(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D fixed_333mhz_get_cdclk;
+=09=09dev_priv->display->funcs.get_cdclk =3D fixed_333mhz_get_cdclk;
 =09else if (IS_I865G(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D fixed_266mhz_get_cdclk;
+=09=09dev_priv->display->funcs.get_cdclk =3D fixed_266mhz_get_cdclk;
 =09else if (IS_I85X(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D i85x_get_cdclk;
+=09=09dev_priv->display->funcs.get_cdclk =3D i85x_get_cdclk;
 =09else if (IS_I845G(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D fixed_200mhz_get_cdclk;
+=09=09dev_priv->display->funcs.get_cdclk =3D fixed_200mhz_get_cdclk;
 =09else if (IS_I830(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D fixed_133mhz_get_cdclk;
+=09=09dev_priv->display->funcs.get_cdclk =3D fixed_133mhz_get_cdclk;
=20
-=09if (drm_WARN(&dev_priv->drm, !dev_priv->display.get_cdclk,
+=09if (drm_WARN(&dev_priv->drm, !dev_priv->display->funcs.get_cdclk,
 =09=09     "Unknown platform. Assuming 133 MHz CDCLK\n"))
-=09=09dev_priv->display.get_cdclk =3D fixed_133mhz_get_cdclk;
+=09=09dev_priv->display->funcs.get_cdclk =3D fixed_133mhz_get_cdclk;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i=
915/display/intel_color.c
index afcb4bf3826c..b1eac554a4b3 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1137,14 +1137,14 @@ void intel_color_load_luts(const struct intel_crtc_=
state *crtc_state)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
=20
-=09dev_priv->display.load_luts(crtc_state);
+=09dev_priv->display->funcs.load_luts(crtc_state);
 }
=20
 void intel_color_commit(const struct intel_crtc_state *crtc_state)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
=20
-=09dev_priv->display.color_commit(crtc_state);
+=09dev_priv->display->funcs.color_commit(crtc_state);
 }
=20
 static bool intel_can_preload_luts(const struct intel_crtc_state *new_crtc=
_state)
@@ -1200,15 +1200,15 @@ int intel_color_check(struct intel_crtc_state *crtc=
_state)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
=20
-=09return dev_priv->display.color_check(crtc_state);
+=09return dev_priv->display->funcs.color_check(crtc_state);
 }
=20
 void intel_color_get_config(struct intel_crtc_state *crtc_state)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
=20
-=09if (dev_priv->display.read_luts)
-=09=09dev_priv->display.read_luts(crtc_state);
+=09if (dev_priv->display->funcs.read_luts)
+=09=09dev_priv->display->funcs.read_luts(crtc_state);
 }
=20
 static bool need_plane_update(struct intel_plane *plane,
@@ -2101,51 +2101,51 @@ void intel_color_init(struct intel_crtc *crtc)
=20
 =09if (HAS_GMCH(dev_priv)) {
 =09=09if (IS_CHERRYVIEW(dev_priv)) {
-=09=09=09dev_priv->display.color_check =3D chv_color_check;
-=09=09=09dev_priv->display.color_commit =3D i9xx_color_commit;
-=09=09=09dev_priv->display.load_luts =3D chv_load_luts;
-=09=09=09dev_priv->display.read_luts =3D chv_read_luts;
+=09=09=09dev_priv->display->funcs.color_check =3D chv_color_check;
+=09=09=09dev_priv->display->funcs.color_commit =3D i9xx_color_commit;
+=09=09=09dev_priv->display->funcs.load_luts =3D chv_load_luts;
+=09=09=09dev_priv->display->funcs.read_luts =3D chv_read_luts;
 =09=09} else if (DISPLAY_VER(dev_priv) >=3D 4) {
-=09=09=09dev_priv->display.color_check =3D i9xx_color_check;
-=09=09=09dev_priv->display.color_commit =3D i9xx_color_commit;
-=09=09=09dev_priv->display.load_luts =3D i965_load_luts;
-=09=09=09dev_priv->display.read_luts =3D i965_read_luts;
+=09=09=09dev_priv->display->funcs.color_check =3D i9xx_color_check;
+=09=09=09dev_priv->display->funcs.color_commit =3D i9xx_color_commit;
+=09=09=09dev_priv->display->funcs.load_luts =3D i965_load_luts;
+=09=09=09dev_priv->display->funcs.read_luts =3D i965_read_luts;
 =09=09} else {
-=09=09=09dev_priv->display.color_check =3D i9xx_color_check;
-=09=09=09dev_priv->display.color_commit =3D i9xx_color_commit;
-=09=09=09dev_priv->display.load_luts =3D i9xx_load_luts;
-=09=09=09dev_priv->display.read_luts =3D i9xx_read_luts;
+=09=09=09dev_priv->display->funcs.color_check =3D i9xx_color_check;
+=09=09=09dev_priv->display->funcs.color_commit =3D i9xx_color_commit;
+=09=09=09dev_priv->display->funcs.load_luts =3D i9xx_load_luts;
+=09=09=09dev_priv->display->funcs.read_luts =3D i9xx_read_luts;
 =09=09}
 =09} else {
 =09=09if (DISPLAY_VER(dev_priv) >=3D 11)
-=09=09=09dev_priv->display.color_check =3D icl_color_check;
+=09=09=09dev_priv->display->funcs.color_check =3D icl_color_check;
 =09=09else if (DISPLAY_VER(dev_priv) >=3D 10)
-=09=09=09dev_priv->display.color_check =3D glk_color_check;
+=09=09=09dev_priv->display->funcs.color_check =3D glk_color_check;
 =09=09else if (DISPLAY_VER(dev_priv) >=3D 7)
-=09=09=09dev_priv->display.color_check =3D ivb_color_check;
+=09=09=09dev_priv->display->funcs.color_check =3D ivb_color_check;
 =09=09else
-=09=09=09dev_priv->display.color_check =3D ilk_color_check;
+=09=09=09dev_priv->display->funcs.color_check =3D ilk_color_check;
=20
 =09=09if (DISPLAY_VER(dev_priv) >=3D 9)
-=09=09=09dev_priv->display.color_commit =3D skl_color_commit;
+=09=09=09dev_priv->display->funcs.color_commit =3D skl_color_commit;
 =09=09else if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
-=09=09=09dev_priv->display.color_commit =3D hsw_color_commit;
+=09=09=09dev_priv->display->funcs.color_commit =3D hsw_color_commit;
 =09=09else
-=09=09=09dev_priv->display.color_commit =3D ilk_color_commit;
+=09=09=09dev_priv->display->funcs.color_commit =3D ilk_color_commit;
=20
 =09=09if (DISPLAY_VER(dev_priv) >=3D 11) {
-=09=09=09dev_priv->display.load_luts =3D icl_load_luts;
-=09=09=09dev_priv->display.read_luts =3D icl_read_luts;
+=09=09=09dev_priv->display->funcs.load_luts =3D icl_load_luts;
+=09=09=09dev_priv->display->funcs.read_luts =3D icl_read_luts;
 =09=09} else if (DISPLAY_VER(dev_priv) =3D=3D 10) {
-=09=09=09dev_priv->display.load_luts =3D glk_load_luts;
-=09=09=09dev_priv->display.read_luts =3D glk_read_luts;
+=09=09=09dev_priv->display->funcs.load_luts =3D glk_load_luts;
+=09=09=09dev_priv->display->funcs.read_luts =3D glk_read_luts;
 =09=09} else if (DISPLAY_VER(dev_priv) >=3D 8) {
-=09=09=09dev_priv->display.load_luts =3D bdw_load_luts;
+=09=09=09dev_priv->display->funcs.load_luts =3D bdw_load_luts;
 =09=09} else if (DISPLAY_VER(dev_priv) >=3D 7) {
-=09=09=09dev_priv->display.load_luts =3D ivb_load_luts;
+=09=09=09dev_priv->display->funcs.load_luts =3D ivb_load_luts;
 =09=09} else {
-=09=09=09dev_priv->display.load_luts =3D ilk_load_luts;
-=09=09=09dev_priv->display.read_luts =3D ilk_read_luts;
+=09=09=09dev_priv->display->funcs.load_luts =3D ilk_load_luts;
+=09=09=09dev_priv->display->funcs.read_luts =3D ilk_read_luts;
 =09=09}
 =09}
=20
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index 1f447ba776c7..aabc1badb517 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2060,7 +2060,7 @@ static void ilk_pch_enable(const struct intel_atomic_=
state *state,
 =09assert_pch_transcoder_disabled(dev_priv, pipe);
=20
 =09/* For PCH output, training FDI link */
-=09dev_priv->display.fdi_link_train(crtc, crtc_state);
+=09dev_priv->display->funcs.fdi_link_train(crtc, crtc_state);
=20
 =09/* We need to program the right clock selection before writing the pixe=
l
 =09 * mutliplier into the DPLL. */
@@ -2526,8 +2526,8 @@ static void intel_pre_plane_update(struct intel_atomi=
c_state *state,
 =09=09 * we'll continue to update watermarks the old way, if flags tell
 =09=09 * us to.
 =09=09 */
-=09=09if (dev_priv->display.initial_watermarks)
-=09=09=09dev_priv->display.initial_watermarks(state, crtc);
+=09=09if (dev_priv->display->funcs.initial_watermarks)
+=09=09=09dev_priv->display->funcs.initial_watermarks(state, crtc);
 =09=09else if (new_crtc_state->update_wm_pre)
 =09=09=09intel_update_watermarks(crtc);
 =09}
@@ -2901,8 +2901,8 @@ static void ilk_crtc_enable(struct intel_atomic_state=
 *state,
 =09/* update DSPCNTR to configure gamma for pipe bottom color */
 =09intel_disable_primary_plane(new_crtc_state);
=20
-=09if (dev_priv->display.initial_watermarks)
-=09=09dev_priv->display.initial_watermarks(state, crtc);
+=09if (dev_priv->display->funcs.initial_watermarks)
+=09=09dev_priv->display->funcs.initial_watermarks(state, crtc);
 =09intel_enable_pipe(new_crtc_state);
=20
 =09if (new_crtc_state->has_pch_encoder)
@@ -3112,8 +3112,8 @@ static void hsw_crtc_enable(struct intel_atomic_state=
 *state,
 =09if (DISPLAY_VER(dev_priv) >=3D 11)
 =09=09icl_set_pipe_chicken(new_crtc_state);
=20
-=09if (dev_priv->display.initial_watermarks)
-=09=09dev_priv->display.initial_watermarks(state, crtc);
+=09if (dev_priv->display->funcs.initial_watermarks)
+=09=09dev_priv->display->funcs.initial_watermarks(state, crtc);
=20
 =09if (DISPLAY_VER(dev_priv) >=3D 11) {
 =09=09const struct intel_dbuf_state *dbuf_state =3D
@@ -3530,7 +3530,7 @@ static void valleyview_crtc_enable(struct intel_atomi=
c_state *state,
 =09/* update DSPCNTR to configure gamma for pipe bottom color */
 =09intel_disable_primary_plane(new_crtc_state);
=20
-=09dev_priv->display.initial_watermarks(state, crtc);
+=09dev_priv->display->funcs.initial_watermarks(state, crtc);
 =09intel_enable_pipe(new_crtc_state);
=20
 =09intel_crtc_vblank_on(new_crtc_state);
@@ -3573,8 +3573,8 @@ static void i9xx_crtc_enable(struct intel_atomic_stat=
e *state,
 =09/* update DSPCNTR to configure gamma for pipe bottom color */
 =09intel_disable_primary_plane(new_crtc_state);
=20
-=09if (dev_priv->display.initial_watermarks)
-=09=09dev_priv->display.initial_watermarks(state, crtc);
+=09if (dev_priv->display->funcs.initial_watermarks)
+=09=09dev_priv->display->funcs.initial_watermarks(state, crtc);
 =09else
 =09=09intel_update_watermarks(crtc);
 =09intel_enable_pipe(new_crtc_state);
@@ -3642,7 +3642,7 @@ static void i9xx_crtc_disable(struct intel_atomic_sta=
te *state,
 =09if (DISPLAY_VER(dev_priv) !=3D 2)
 =09=09intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
=20
-=09if (!dev_priv->display.initial_watermarks)
+=09if (!dev_priv->display->funcs.initial_watermarks)
 =09=09intel_update_watermarks(crtc);
=20
 =09/* clock the pipe down to 640x480@60 to potentially save power */
@@ -3696,7 +3696,7 @@ static void intel_crtc_disable_noatomic(struct intel_=
crtc *crtc,
=20
 =09drm_WARN_ON(&dev_priv->drm, IS_ERR(temp_crtc_state) || ret);
=20
-=09dev_priv->display.crtc_disable(to_intel_atomic_state(state), crtc);
+=09dev_priv->display->funcs.crtc_disable(to_intel_atomic_state(state), crt=
c);
=20
 =09drm_atomic_state_put(state);
=20
@@ -5901,7 +5901,7 @@ static bool intel_crtc_get_pipe_config(struct intel_c=
rtc_state *crtc_state)
 =09struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
 =09struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
=20
-=09if (!i915->display.get_pipe_config(crtc, crtc_state))
+=09if (!i915->display->funcs.get_pipe_config(crtc, crtc_state))
 =09=09return false;
=20
 =09crtc_state->hw.active =3D true;
@@ -6728,10 +6728,10 @@ static int intel_crtc_atomic_check(struct intel_ato=
mic_state *state,
 =09=09crtc_state->update_wm_post =3D true;
=20
 =09if (mode_changed && crtc_state->hw.enable &&
-=09    dev_priv->display.crtc_compute_clock &&
+=09    dev_priv->display->funcs.crtc_compute_clock &&
 =09    !crtc_state->bigjoiner_slave &&
 =09    !drm_WARN_ON(&dev_priv->drm, crtc_state->shared_dpll)) {
-=09=09ret =3D dev_priv->display.crtc_compute_clock(crtc_state);
+=09=09ret =3D dev_priv->display->funcs.crtc_compute_clock(crtc_state);
 =09=09if (ret)
 =09=09=09return ret;
 =09}
@@ -6750,8 +6750,8 @@ static int intel_crtc_atomic_check(struct intel_atomi=
c_state *state,
 =09=09=09return ret;
 =09}
=20
-=09if (dev_priv->display.compute_pipe_wm) {
-=09=09ret =3D dev_priv->display.compute_pipe_wm(state, crtc);
+=09if (dev_priv->display->funcs.compute_pipe_wm) {
+=09=09ret =3D dev_priv->display->funcs.compute_pipe_wm(state, crtc);
 =09=09if (ret) {
 =09=09=09drm_dbg_kms(&dev_priv->drm,
 =09=09=09=09    "Target pipe watermarks are invalid\n");
@@ -6760,9 +6760,9 @@ static int intel_crtc_atomic_check(struct intel_atomi=
c_state *state,
=20
 =09}
=20
-=09if (dev_priv->display.compute_intermediate_wm) {
+=09if (dev_priv->display->funcs.compute_intermediate_wm) {
 =09=09if (drm_WARN_ON(&dev_priv->drm,
-=09=09=09=09!dev_priv->display.compute_pipe_wm))
+=09=09=09=09!dev_priv->display->funcs.compute_pipe_wm))
 =09=09=09return 0;
=20
 =09=09/*
@@ -6770,7 +6770,7 @@ static int intel_crtc_atomic_check(struct intel_atomi=
c_state *state,
 =09=09 * old state and the new state.  We can program these
 =09=09 * immediately.
 =09=09 */
-=09=09ret =3D dev_priv->display.compute_intermediate_wm(state, crtc);
+=09=09ret =3D dev_priv->display->funcs.compute_intermediate_wm(state, crtc=
);
 =09=09if (ret) {
 =09=09=09drm_dbg_kms(&dev_priv->drm,
 =09=09=09=09    "No valid intermediate pipe watermarks are possible\n");
@@ -8767,7 +8767,7 @@ static void intel_modeset_clear_plls(struct intel_ato=
mic_state *state)
 =09struct intel_crtc *crtc;
 =09int i;
=20
-=09if (!dev_priv->display.crtc_compute_clock)
+=09if (!dev_priv->display->funcs.crtc_compute_clock)
 =09=09return;
=20
 =09for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
@@ -8879,8 +8879,8 @@ static int calc_watermark_data(struct intel_atomic_st=
ate *state)
 =09struct drm_i915_private *dev_priv =3D to_i915(dev);
=20
 =09/* Is there platform-specific watermark information to calculate? */
-=09if (dev_priv->display.compute_global_watermarks)
-=09=09return dev_priv->display.compute_global_watermarks(state);
+=09if (dev_priv->display->funcs.compute_global_watermarks)
+=09=09return dev_priv->display->funcs.compute_global_watermarks(state);
=20
 =09return 0;
 }
@@ -9080,7 +9080,7 @@ static int intel_atomic_check_cdclk(struct intel_atom=
ic_state *state,
 =09    old_cdclk_state->force_min_cdclk !=3D new_cdclk_state->force_min_cd=
clk)
 =09=09*need_cdclk_calc =3D true;
=20
-=09ret =3D dev_priv->display.bw_calc_min_cdclk(state);
+=09ret =3D dev_priv->display->funcs.bw_calc_min_cdclk(state);
 =09if (ret)
 =09=09return ret;
=20
@@ -9705,8 +9705,8 @@ static void commit_pipe_pre_planes(struct intel_atomi=
c_state *state,
 =09=09intel_psr2_program_trans_man_trk_ctl(new_crtc_state);
 =09}
=20
-=09if (dev_priv->display.atomic_update_watermarks)
-=09=09dev_priv->display.atomic_update_watermarks(state, crtc);
+=09if (dev_priv->display->funcs.atomic_update_watermarks)
+=09=09dev_priv->display->funcs.atomic_update_watermarks(state, crtc);
 }
=20
 static void commit_pipe_post_planes(struct intel_atomic_state *state,
@@ -9738,7 +9738,7 @@ static void intel_enable_crtc(struct intel_atomic_sta=
te *state,
=20
 =09intel_crtc_update_active_timings(new_crtc_state);
=20
-=09dev_priv->display.crtc_enable(state, crtc);
+=09dev_priv->display->funcs.crtc_enable(state, crtc);
=20
 =09if (new_crtc_state->bigjoiner_slave)
 =09=09return;
@@ -9826,7 +9826,7 @@ static void intel_old_crtc_state_disables(struct inte=
l_atomic_state *state,
 =09 */
 =09intel_crtc_disable_pipe_crc(crtc);
=20
-=09dev_priv->display.crtc_disable(state, crtc);
+=09dev_priv->display->funcs.crtc_disable(state, crtc);
 =09crtc->active =3D false;
 =09intel_fbc_disable(crtc);
 =09intel_disable_shared_dpll(old_crtc_state);
@@ -9834,8 +9834,8 @@ static void intel_old_crtc_state_disables(struct inte=
l_atomic_state *state,
 =09/* FIXME unify this for all platforms */
 =09if (!new_crtc_state->hw.active &&
 =09    !HAS_GMCH(dev_priv) &&
-=09    dev_priv->display.initial_watermarks)
-=09=09dev_priv->display.initial_watermarks(state, crtc);
+=09    dev_priv->display->funcs.initial_watermarks)
+=09=09dev_priv->display->funcs.initial_watermarks(state, crtc);
 }
=20
 static void intel_commit_modeset_disables(struct intel_atomic_state *state=
)
@@ -10206,7 +10206,7 @@ static void intel_atomic_commit_tail(struct intel_a=
tomic_state *state)
 =09}
=20
 =09/* Now enable the clocks, plane, pipe, and connectors that we set up. *=
/
-=09dev_priv->display.commit_modeset_enables(state);
+=09dev_priv->display->funcs.commit_modeset_enables(state);
=20
 =09if (state->modeset) {
 =09=09intel_encoders_update_complete(state);
@@ -10257,8 +10257,8 @@ static void intel_atomic_commit_tail(struct intel_a=
tomic_state *state)
 =09=09if (DISPLAY_VER(dev_priv) =3D=3D 2 && planes_enabling(old_crtc_state=
, new_crtc_state))
 =09=09=09intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, true)=
;
=20
-=09=09if (dev_priv->display.optimize_watermarks)
-=09=09=09dev_priv->display.optimize_watermarks(state, crtc);
+=09=09if (dev_priv->display->funcs.optimize_watermarks)
+=09=09=09dev_priv->display->funcs.optimize_watermarks(state, crtc);
 =09}
=20
 =09intel_dbuf_post_plane_update(state);
@@ -11225,36 +11225,36 @@ void intel_init_display_hooks(struct drm_i915_pri=
vate *dev_priv)
 =09intel_dpll_init_clock_hook(dev_priv);
=20
 =09if (DISPLAY_VER(dev_priv) >=3D 9) {
-=09=09dev_priv->display.get_pipe_config =3D hsw_get_pipe_config;
-=09=09dev_priv->display.crtc_enable =3D hsw_crtc_enable;
-=09=09dev_priv->display.crtc_disable =3D hsw_crtc_disable;
+=09=09dev_priv->display->funcs.get_pipe_config =3D hsw_get_pipe_config;
+=09=09dev_priv->display->funcs.crtc_enable =3D hsw_crtc_enable;
+=09=09dev_priv->display->funcs.crtc_disable =3D hsw_crtc_disable;
 =09} else if (HAS_DDI(dev_priv)) {
-=09=09dev_priv->display.get_pipe_config =3D hsw_get_pipe_config;
-=09=09dev_priv->display.crtc_enable =3D hsw_crtc_enable;
-=09=09dev_priv->display.crtc_disable =3D hsw_crtc_disable;
+=09=09dev_priv->display->funcs.get_pipe_config =3D hsw_get_pipe_config;
+=09=09dev_priv->display->funcs.crtc_enable =3D hsw_crtc_enable;
+=09=09dev_priv->display->funcs.crtc_disable =3D hsw_crtc_disable;
 =09} else if (HAS_PCH_SPLIT(dev_priv)) {
-=09=09dev_priv->display.get_pipe_config =3D ilk_get_pipe_config;
-=09=09dev_priv->display.crtc_enable =3D ilk_crtc_enable;
-=09=09dev_priv->display.crtc_disable =3D ilk_crtc_disable;
+=09=09dev_priv->display->funcs.get_pipe_config =3D ilk_get_pipe_config;
+=09=09dev_priv->display->funcs.crtc_enable =3D ilk_crtc_enable;
+=09=09dev_priv->display->funcs.crtc_disable =3D ilk_crtc_disable;
 =09} else if (IS_CHERRYVIEW(dev_priv) ||
 =09=09   IS_VALLEYVIEW(dev_priv)) {
-=09=09dev_priv->display.get_pipe_config =3D i9xx_get_pipe_config;
-=09=09dev_priv->display.crtc_enable =3D valleyview_crtc_enable;
-=09=09dev_priv->display.crtc_disable =3D i9xx_crtc_disable;
+=09=09dev_priv->display->funcs.get_pipe_config =3D i9xx_get_pipe_config;
+=09=09dev_priv->display->funcs.crtc_enable =3D valleyview_crtc_enable;
+=09=09dev_priv->display->funcs.crtc_disable =3D i9xx_crtc_disable;
 =09} else {
-=09=09dev_priv->display.get_pipe_config =3D i9xx_get_pipe_config;
-=09=09dev_priv->display.crtc_enable =3D i9xx_crtc_enable;
-=09=09dev_priv->display.crtc_disable =3D i9xx_crtc_disable;
+=09=09dev_priv->display->funcs.get_pipe_config =3D i9xx_get_pipe_config;
+=09=09dev_priv->display->funcs.crtc_enable =3D i9xx_crtc_enable;
+=09=09dev_priv->display->funcs.crtc_disable =3D i9xx_crtc_disable;
 =09}
=20
 =09intel_fdi_init_hook(dev_priv);
=20
 =09if (DISPLAY_VER(dev_priv) >=3D 9) {
-=09=09dev_priv->display.commit_modeset_enables =3D skl_commit_modeset_enab=
les;
-=09=09dev_priv->display.get_initial_plane_config =3D skl_get_initial_plane=
_config;
+=09=09dev_priv->display->funcs.commit_modeset_enables =3D skl_commit_modes=
et_enables;
+=09=09dev_priv->display->funcs.get_initial_plane_config =3D skl_get_initia=
l_plane_config;
 =09} else {
-=09=09dev_priv->display.commit_modeset_enables =3D intel_commit_modeset_en=
ables;
-=09=09dev_priv->display.get_initial_plane_config =3D i9xx_get_initial_plan=
e_config;
+=09=09dev_priv->display->funcs.commit_modeset_enables =3D intel_commit_mod=
eset_enables;
+=09=09dev_priv->display->funcs.get_initial_plane_config =3D i9xx_get_initi=
al_plane_config;
 =09}
=20
 }
@@ -11326,7 +11326,7 @@ static void sanitize_watermarks(struct drm_i915_pri=
vate *dev_priv)
 =09int i;
=20
 =09/* Only supported on platforms that use atomic watermark design */
-=09if (!dev_priv->display.optimize_watermarks)
+=09if (!dev_priv->display->funcs.optimize_watermarks)
 =09=09return;
=20
 =09state =3D drm_atomic_state_alloc(&dev_priv->drm);
@@ -11359,7 +11359,7 @@ static void sanitize_watermarks(struct drm_i915_pri=
vate *dev_priv)
 =09/* Write calculated watermark values back */
 =09for_each_new_intel_crtc_in_state(intel_state, crtc, crtc_state, i) {
 =09=09crtc_state->wm.need_postvbl_update =3D true;
-=09=09dev_priv->display.optimize_watermarks(intel_state, crtc);
+=09=09dev_priv->display->funcs.optimize_watermarks(intel_state, crtc);
=20
 =09=09to_intel_crtc_state(crtc->base.state)->wm =3D crtc_state->wm;
 =09}
@@ -11683,7 +11683,7 @@ int intel_modeset_init_nogem(struct drm_i915_privat=
e *i915)
 =09=09 * can even allow for smooth boot transitions if the BIOS
 =09=09 * fb is large enough for the active pipe configuration.
 =09=09 */
-=09=09i915->display.get_initial_plane_config(crtc, &plane_config);
+=09=09i915->display->funcs.get_initial_plane_config(crtc, &plane_config);
=20
 =09=09/*
 =09=09 * If the fb is shared between multiple heads, we'll
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/g=
pu/drm/i915/display/intel_display_power.c
index cce1a926fcc1..b9195e614cd4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1195,7 +1195,7 @@ static void gen9_disable_dc_states(struct drm_i915_pr=
ivate *dev_priv)
 =09if (!HAS_DISPLAY(dev_priv))
 =09=09return;
=20
-=09dev_priv->display.get_cdclk(dev_priv, &cdclk_config);
+=09dev_priv->display->funcs.get_cdclk(dev_priv, &cdclk_config);
 =09/* Can't read out voltage_level so can't use intel_cdclk_changed() */
 =09drm_WARN_ON(&dev_priv->drm,
 =09=09    intel_cdclk_needs_modeset(&dev_priv->cdclk.hw,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i9=
15/display/intel_dpll.c
index 210f91f4a576..7b1dfb00d1b3 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1367,21 +1367,21 @@ void
 intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
 {
 =09if (DISPLAY_VER(dev_priv) >=3D 9 || HAS_DDI(dev_priv))
-=09=09dev_priv->display.crtc_compute_clock =3D hsw_crtc_compute_clock;
+=09=09dev_priv->display->funcs.crtc_compute_clock =3D hsw_crtc_compute_clo=
ck;
 =09else if (HAS_PCH_SPLIT(dev_priv))
-=09=09dev_priv->display.crtc_compute_clock =3D ilk_crtc_compute_clock;
+=09=09dev_priv->display->funcs.crtc_compute_clock =3D ilk_crtc_compute_clo=
ck;
 =09else if (IS_CHERRYVIEW(dev_priv))
-=09=09dev_priv->display.crtc_compute_clock =3D chv_crtc_compute_clock;
+=09=09dev_priv->display->funcs.crtc_compute_clock =3D chv_crtc_compute_clo=
ck;
 =09else if (IS_VALLEYVIEW(dev_priv))
-=09=09dev_priv->display.crtc_compute_clock =3D vlv_crtc_compute_clock;
+=09=09dev_priv->display->funcs.crtc_compute_clock =3D vlv_crtc_compute_clo=
ck;
 =09else if (IS_G4X(dev_priv))
-=09=09dev_priv->display.crtc_compute_clock =3D g4x_crtc_compute_clock;
+=09=09dev_priv->display->funcs.crtc_compute_clock =3D g4x_crtc_compute_clo=
ck;
 =09else if (IS_PINEVIEW(dev_priv))
-=09=09dev_priv->display.crtc_compute_clock =3D pnv_crtc_compute_clock;
+=09=09dev_priv->display->funcs.crtc_compute_clock =3D pnv_crtc_compute_clo=
ck;
 =09else if (DISPLAY_VER(dev_priv) !=3D 2)
-=09=09dev_priv->display.crtc_compute_clock =3D i9xx_crtc_compute_clock;
+=09=09dev_priv->display->funcs.crtc_compute_clock =3D i9xx_crtc_compute_cl=
ock;
 =09else
-=09=09dev_priv->display.crtc_compute_clock =3D i8xx_crtc_compute_clock;
+=09=09dev_priv->display->funcs.crtc_compute_clock =3D i8xx_crtc_compute_cl=
ock;
 }
=20
 static bool i9xx_has_pps(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i91=
5/display/intel_fdi.c
index fc09b781f15f..82b6c754c51b 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -1009,11 +1009,11 @@ void
 intel_fdi_init_hook(struct drm_i915_private *dev_priv)
 {
 =09if (IS_IRONLAKE(dev_priv)) {
-=09=09dev_priv->display.fdi_link_train =3D ilk_fdi_link_train;
+=09=09dev_priv->display->funcs.fdi_link_train =3D ilk_fdi_link_train;
 =09} else if (IS_SANDYBRIDGE(dev_priv)) {
-=09=09dev_priv->display.fdi_link_train =3D gen6_fdi_link_train;
+=09=09dev_priv->display->funcs.fdi_link_train =3D gen6_fdi_link_train;
 =09} else if (IS_IVYBRIDGE(dev_priv)) {
 =09=09/* FIXME: detect B0+ stepping and use auto training */
-=09=09dev_priv->display.fdi_link_train =3D ivb_manual_fdi_link_train;
+=09=09dev_priv->display->funcs.fdi_link_train =3D ivb_manual_fdi_link_trai=
n;
 =09}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm=
/i915/display/intel_hotplug.c
index 47c85ac97c87..425da9f9c735 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -215,8 +215,8 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_p=
rivate *dev_priv)
=20
 static void intel_hpd_irq_setup(struct drm_i915_private *i915)
 {
-=09if (i915->display_irqs_enabled && i915->display.hpd_irq_setup)
-=09=09i915->display.hpd_irq_setup(i915);
+=09if (i915->display_irqs_enabled && i915->display->funcs.hpd_irq_setup)
+=09=09i915->display->funcs.hpd_irq_setup(i915);
 }
=20
 static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_dr=
v.c
index 59fb4c710c8c..87c3db974c4c 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -770,6 +770,7 @@ i915_driver_create(struct pci_dev *pdev, const struct p=
ci_device_id *ent)
 =09if (IS_ERR(i915))
 =09=09return i915;
=20
+=09i915->display =3D &i915->_display;
 =09pci_set_drvdata(pdev, i915);
=20
 =09/* Device parameters start as a copy of module parameters. */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index be2392bbcecc..1a1d24557702 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -825,6 +825,11 @@ struct i915_selftest_stash {
 =09struct ida mock_region_instances;
 };
=20
+struct drm_i915_display {
+=09/* Display functions */
+=09struct drm_i915_display_funcs funcs;
+};
+
 struct drm_i915_private {
 =09struct drm_device drm;
=20
@@ -838,6 +843,9 @@ struct drm_i915_private {
 =09struct intel_runtime_info __runtime; /* Use RUNTIME_INFO() to access. *=
/
 =09struct intel_driver_caps caps;
=20
+=09struct drm_i915_display _display;
+=09struct drm_i915_display *display;
+
 =09/**
 =09 * Data Stolen Memory - aka "i915 stolen memory" gives us the start and
 =09 * end of stolen which we can optionally use to create GEM objects
@@ -971,9 +979,6 @@ struct drm_i915_private {
 =09/* unbound hipri wq for page flips/plane updates */
 =09struct workqueue_struct *flip_wq;
=20
-=09/* Display functions */
-=09struct drm_i915_display_funcs display;
-
 =09/* PCH chipset type */
 =09enum intel_pch pch_type;
 =09unsigned short pch_id;
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_ir=
q.c
index 0a1681384c84..0b35ab7b421d 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -4395,20 +4395,20 @@ void intel_irq_init(struct drm_i915_private *dev_pr=
iv)
=20
 =09if (HAS_GMCH(dev_priv)) {
 =09=09if (I915_HAS_HOTPLUG(dev_priv))
-=09=09=09dev_priv->display.hpd_irq_setup =3D i915_hpd_irq_setup;
+=09=09=09dev_priv->display->funcs.hpd_irq_setup =3D i915_hpd_irq_setup;
 =09} else {
 =09=09if (HAS_PCH_DG1(dev_priv))
-=09=09=09dev_priv->display.hpd_irq_setup =3D dg1_hpd_irq_setup;
+=09=09=09dev_priv->display->funcs.hpd_irq_setup =3D dg1_hpd_irq_setup;
 =09=09else if (DISPLAY_VER(dev_priv) >=3D 11)
-=09=09=09dev_priv->display.hpd_irq_setup =3D gen11_hpd_irq_setup;
+=09=09=09dev_priv->display->funcs.hpd_irq_setup =3D gen11_hpd_irq_setup;
 =09=09else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-=09=09=09dev_priv->display.hpd_irq_setup =3D bxt_hpd_irq_setup;
+=09=09=09dev_priv->display->funcs.hpd_irq_setup =3D bxt_hpd_irq_setup;
 =09=09else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
-=09=09=09dev_priv->display.hpd_irq_setup =3D icp_hpd_irq_setup;
+=09=09=09dev_priv->display->funcs.hpd_irq_setup =3D icp_hpd_irq_setup;
 =09=09else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_SPT)
-=09=09=09dev_priv->display.hpd_irq_setup =3D spt_hpd_irq_setup;
+=09=09=09dev_priv->display->funcs.hpd_irq_setup =3D spt_hpd_irq_setup;
 =09=09else
-=09=09=09dev_priv->display.hpd_irq_setup =3D ilk_hpd_irq_setup;
+=09=09=09dev_priv->display->funcs.hpd_irq_setup =3D ilk_hpd_irq_setup;
 =09}
 }
=20
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_p=
m.c
index cfc41f8fa74a..acc3e88c28fe 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -2347,7 +2347,7 @@ static void i9xx_update_wm(struct intel_crtc *unused_=
crtc)
 =09else
 =09=09wm_info =3D &i830_a_wm_info;
=20
-=09fifo_size =3D dev_priv->display.get_fifo_size(dev_priv, PLANE_A);
+=09fifo_size =3D dev_priv->display->funcs.get_fifo_size(dev_priv, PLANE_A)=
;
 =09crtc =3D intel_get_crtc_for_plane(dev_priv, PLANE_A);
 =09if (intel_crtc_active(crtc)) {
 =09=09const struct drm_display_mode *pipe_mode =3D
@@ -2374,7 +2374,7 @@ static void i9xx_update_wm(struct intel_crtc *unused_=
crtc)
 =09if (DISPLAY_VER(dev_priv) =3D=3D 2)
 =09=09wm_info =3D &i830_bc_wm_info;
=20
-=09fifo_size =3D dev_priv->display.get_fifo_size(dev_priv, PLANE_B);
+=09fifo_size =3D dev_priv->display->funcs.get_fifo_size(dev_priv, PLANE_B)=
;
 =09crtc =3D intel_get_crtc_for_plane(dev_priv, PLANE_B);
 =09if (intel_crtc_active(crtc)) {
 =09=09const struct drm_display_mode *pipe_mode =3D
@@ -2490,7 +2490,7 @@ static void i845_update_wm(struct intel_crtc *unused_=
crtc)
 =09pipe_mode =3D &crtc->config->hw.pipe_mode;
 =09planea_wm =3D intel_calculate_wm(pipe_mode->crtc_clock,
 =09=09=09=09       &i845_wm_info,
-=09=09=09=09       dev_priv->display.get_fifo_size(dev_priv, PLANE_A),
+=09=09=09=09       dev_priv->display->funcs.get_fifo_size(dev_priv, PLANE_=
A),
 =09=09=09=09       4, pessimal_latency_ns);
 =09fwater_lo =3D intel_uncore_read(&dev_priv->uncore, FW_BLC) & ~0xfff;
 =09fwater_lo |=3D (3<<8) | planea_wm;
@@ -7167,8 +7167,8 @@ void intel_update_watermarks(struct intel_crtc *crtc)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
=20
-=09if (dev_priv->display.update_wm)
-=09=09dev_priv->display.update_wm(crtc);
+=09if (dev_priv->display->funcs.update_wm)
+=09=09dev_priv->display->funcs.update_wm(crtc);
 }
=20
 void intel_enable_ipc(struct drm_i915_private *dev_priv)
@@ -7910,7 +7910,7 @@ static void i830_init_clock_gating(struct drm_i915_pr=
ivate *dev_priv)
=20
 void intel_init_clock_gating(struct drm_i915_private *dev_priv)
 {
-=09dev_priv->display.init_clock_gating(dev_priv);
+=09dev_priv->display->funcs.init_clock_gating(dev_priv);
 }
=20
 void intel_suspend_hw(struct drm_i915_private *dev_priv)
@@ -7937,52 +7937,52 @@ static void nop_init_clock_gating(struct drm_i915_p=
rivate *dev_priv)
 void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
 {
 =09if (IS_ALDERLAKE_P(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D adlp_init_clock_gating;
+=09=09dev_priv->display->funcs.init_clock_gating =3D adlp_init_clock_gatin=
g;
 =09else if (IS_DG1(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D dg1_init_clock_gating;
+=09=09dev_priv->display->funcs.init_clock_gating =3D dg1_init_clock_gating=
;
 =09else if (GRAPHICS_VER(dev_priv) =3D=3D 12)
-=09=09dev_priv->display.init_clock_gating =3D gen12lp_init_clock_gating;
+=09=09dev_priv->display->funcs.init_clock_gating =3D gen12lp_init_clock_ga=
ting;
 =09else if (GRAPHICS_VER(dev_priv) =3D=3D 11)
-=09=09dev_priv->display.init_clock_gating =3D icl_init_clock_gating;
+=09=09dev_priv->display->funcs.init_clock_gating =3D icl_init_clock_gating=
;
 =09else if (IS_COFFEELAKE(dev_priv) || IS_COMETLAKE(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D cfl_init_clock_gating;
+=09=09dev_priv->display->funcs.init_clock_gating =3D cfl_init_clock_gating=
;
 =09else if (IS_SKYLAKE(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D skl_init_clock_gating;
+=09=09dev_priv->display->funcs.init_clock_gating =3D skl_init_clock_gating=
;
 =09else if (IS_KABYLAKE(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D kbl_init_clock_gating;
+=09=09dev_priv->display->funcs.init_clock_gating =3D kbl_init_clock_gating=
;
 =09else if (IS_BROXTON(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D bxt_init_clock_gating;
+=09=09dev_priv->display->funcs.init_clock_gating =3D bxt_init_clock_gating=
;
 =09else if (IS_GEMINILAKE(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D glk_init_clock_gating;
+=09=09dev_priv->display->funcs.init_clock_gating =3D glk_init_clock_gating=
;
 =09else if (IS_BROADWELL(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D bdw_init_clock_gating;
+=09=09dev_priv->display->funcs.init_clock_gating =3D bdw_init_clock_gating=
;
 =09else if (IS_CHERRYVIEW(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D chv_init_clock_gating;
+=09=09dev_priv->display->funcs.init_clock_gating =3D chv_init_clock_gating=
;
 =09else if (IS_HASWELL(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D hsw_init_clock_gating;
+=09=09dev_priv->display->funcs.init_clock_gating =3D hsw_init_clock_gating=
;
 =09else if (IS_IVYBRIDGE(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D ivb_init_clock_gating;
+=09=09dev_priv->display->funcs.init_clock_gating =3D ivb_init_clock_gating=
;
 =09else if (IS_VALLEYVIEW(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D vlv_init_clock_gating;
+=09=09dev_priv->display->funcs.init_clock_gating =3D vlv_init_clock_gating=
;
 =09else if (GRAPHICS_VER(dev_priv) =3D=3D 6)
-=09=09dev_priv->display.init_clock_gating =3D gen6_init_clock_gating;
+=09=09dev_priv->display->funcs.init_clock_gating =3D gen6_init_clock_gatin=
g;
 =09else if (GRAPHICS_VER(dev_priv) =3D=3D 5)
-=09=09dev_priv->display.init_clock_gating =3D ilk_init_clock_gating;
+=09=09dev_priv->display->funcs.init_clock_gating =3D ilk_init_clock_gating=
;
 =09else if (IS_G4X(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D g4x_init_clock_gating;
+=09=09dev_priv->display->funcs.init_clock_gating =3D g4x_init_clock_gating=
;
 =09else if (IS_I965GM(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D i965gm_init_clock_gating;
+=09=09dev_priv->display->funcs.init_clock_gating =3D i965gm_init_clock_gat=
ing;
 =09else if (IS_I965G(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D i965g_init_clock_gating;
+=09=09dev_priv->display->funcs.init_clock_gating =3D i965g_init_clock_gati=
ng;
 =09else if (GRAPHICS_VER(dev_priv) =3D=3D 3)
-=09=09dev_priv->display.init_clock_gating =3D gen3_init_clock_gating;
+=09=09dev_priv->display->funcs.init_clock_gating =3D gen3_init_clock_gatin=
g;
 =09else if (IS_I85X(dev_priv) || IS_I865G(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D i85x_init_clock_gating;
+=09=09dev_priv->display->funcs.init_clock_gating =3D i85x_init_clock_gatin=
g;
 =09else if (GRAPHICS_VER(dev_priv) =3D=3D 2)
-=09=09dev_priv->display.init_clock_gating =3D i830_init_clock_gating;
+=09=09dev_priv->display->funcs.init_clock_gating =3D i830_init_clock_gatin=
g;
 =09else {
 =09=09MISSING_CASE(INTEL_DEVID(dev_priv));
-=09=09dev_priv->display.init_clock_gating =3D nop_init_clock_gating;
+=09=09dev_priv->display->funcs.init_clock_gating =3D nop_init_clock_gating=
;
 =09}
 }
=20
@@ -8001,7 +8001,7 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
 =09/* For FIFO watermark updates */
 =09if (DISPLAY_VER(dev_priv) >=3D 9) {
 =09=09skl_setup_wm_latency(dev_priv);
-=09=09dev_priv->display.compute_global_watermarks =3D skl_compute_wm;
+=09=09dev_priv->display->funcs.compute_global_watermarks =3D skl_compute_w=
m;
 =09} else if (HAS_PCH_SPLIT(dev_priv)) {
 =09=09ilk_setup_wm_latency(dev_priv);
=20
@@ -8009,12 +8009,12 @@ void intel_init_pm(struct drm_i915_private *dev_pri=
v)
 =09=09     dev_priv->wm.spr_latency[1] && dev_priv->wm.cur_latency[1]) ||
 =09=09    (DISPLAY_VER(dev_priv) !=3D 5 && dev_priv->wm.pri_latency[0] &&
 =09=09     dev_priv->wm.spr_latency[0] && dev_priv->wm.cur_latency[0])) {
-=09=09=09dev_priv->display.compute_pipe_wm =3D ilk_compute_pipe_wm;
-=09=09=09dev_priv->display.compute_intermediate_wm =3D
+=09=09=09dev_priv->display->funcs.compute_pipe_wm =3D ilk_compute_pipe_wm;
+=09=09=09dev_priv->display->funcs.compute_intermediate_wm =3D
 =09=09=09=09ilk_compute_intermediate_wm;
-=09=09=09dev_priv->display.initial_watermarks =3D
+=09=09=09dev_priv->display->funcs.initial_watermarks =3D
 =09=09=09=09ilk_initial_watermarks;
-=09=09=09dev_priv->display.optimize_watermarks =3D
+=09=09=09dev_priv->display->funcs.optimize_watermarks =3D
 =09=09=09=09ilk_optimize_watermarks;
 =09=09} else {
 =09=09=09drm_dbg_kms(&dev_priv->drm,
@@ -8023,17 +8023,17 @@ void intel_init_pm(struct drm_i915_private *dev_pri=
v)
 =09=09}
 =09} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 =09=09vlv_setup_wm_latency(dev_priv);
-=09=09dev_priv->display.compute_pipe_wm =3D vlv_compute_pipe_wm;
-=09=09dev_priv->display.compute_intermediate_wm =3D vlv_compute_intermedia=
te_wm;
-=09=09dev_priv->display.initial_watermarks =3D vlv_initial_watermarks;
-=09=09dev_priv->display.optimize_watermarks =3D vlv_optimize_watermarks;
-=09=09dev_priv->display.atomic_update_watermarks =3D vlv_atomic_update_fif=
o;
+=09=09dev_priv->display->funcs.compute_pipe_wm =3D vlv_compute_pipe_wm;
+=09=09dev_priv->display->funcs.compute_intermediate_wm =3D vlv_compute_int=
ermediate_wm;
+=09=09dev_priv->display->funcs.initial_watermarks =3D vlv_initial_watermar=
ks;
+=09=09dev_priv->display->funcs.optimize_watermarks =3D vlv_optimize_waterm=
arks;
+=09=09dev_priv->display->funcs.atomic_update_watermarks =3D vlv_atomic_upd=
ate_fifo;
 =09} else if (IS_G4X(dev_priv)) {
 =09=09g4x_setup_wm_latency(dev_priv);
-=09=09dev_priv->display.compute_pipe_wm =3D g4x_compute_pipe_wm;
-=09=09dev_priv->display.compute_intermediate_wm =3D g4x_compute_intermedia=
te_wm;
-=09=09dev_priv->display.initial_watermarks =3D g4x_initial_watermarks;
-=09=09dev_priv->display.optimize_watermarks =3D g4x_optimize_watermarks;
+=09=09dev_priv->display->funcs.compute_pipe_wm =3D g4x_compute_pipe_wm;
+=09=09dev_priv->display->funcs.compute_intermediate_wm =3D g4x_compute_int=
ermediate_wm;
+=09=09dev_priv->display->funcs.initial_watermarks =3D g4x_initial_watermar=
ks;
+=09=09dev_priv->display->funcs.optimize_watermarks =3D g4x_optimize_waterm=
arks;
 =09} else if (IS_PINEVIEW(dev_priv)) {
 =09=09if (!intel_get_cxsr_latency(!IS_MOBILE(dev_priv),
 =09=09=09=09=09    dev_priv->is_ddr3,
@@ -8047,21 +8047,21 @@ void intel_init_pm(struct drm_i915_private *dev_pri=
v)
 =09=09=09=09 dev_priv->fsb_freq, dev_priv->mem_freq);
 =09=09=09/* Disable CxSR and never update its watermark again */
 =09=09=09intel_set_memory_cxsr(dev_priv, false);
-=09=09=09dev_priv->display.update_wm =3D NULL;
+=09=09=09dev_priv->display->funcs.update_wm =3D NULL;
 =09=09} else
-=09=09=09dev_priv->display.update_wm =3D pnv_update_wm;
+=09=09=09dev_priv->display->funcs.update_wm =3D pnv_update_wm;
 =09} else if (DISPLAY_VER(dev_priv) =3D=3D 4) {
-=09=09dev_priv->display.update_wm =3D i965_update_wm;
+=09=09dev_priv->display->funcs.update_wm =3D i965_update_wm;
 =09} else if (DISPLAY_VER(dev_priv) =3D=3D 3) {
-=09=09dev_priv->display.update_wm =3D i9xx_update_wm;
-=09=09dev_priv->display.get_fifo_size =3D i9xx_get_fifo_size;
+=09=09dev_priv->display->funcs.update_wm =3D i9xx_update_wm;
+=09=09dev_priv->display->funcs.get_fifo_size =3D i9xx_get_fifo_size;
 =09} else if (DISPLAY_VER(dev_priv) =3D=3D 2) {
 =09=09if (INTEL_NUM_PIPES(dev_priv) =3D=3D 1) {
-=09=09=09dev_priv->display.update_wm =3D i845_update_wm;
-=09=09=09dev_priv->display.get_fifo_size =3D i845_get_fifo_size;
+=09=09=09dev_priv->display->funcs.update_wm =3D i845_update_wm;
+=09=09=09dev_priv->display->funcs.get_fifo_size =3D i845_get_fifo_size;
 =09=09} else {
-=09=09=09dev_priv->display.update_wm =3D i9xx_update_wm;
-=09=09=09dev_priv->display.get_fifo_size =3D i830_get_fifo_size;
+=09=09=09dev_priv->display->funcs.update_wm =3D i9xx_update_wm;
+=09=09=09dev_priv->display->funcs.get_fifo_size =3D i830_get_fifo_size;
 =09=09}
 =09} else {
 =09=09drm_err(&dev_priv->drm,
--=20
2.31.1

