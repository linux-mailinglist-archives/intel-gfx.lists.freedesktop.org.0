Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC85404298
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 03:11:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7A406E409;
	Thu,  9 Sep 2021 01:11:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D62396E409
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 01:11:17 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-219-g1Weqi8ZNlKJWFyZ5d99kg-1; Wed, 08 Sep 2021 21:11:13 -0400
X-MC-Unique: g1Weqi8ZNlKJWFyZ5d99kg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0085C1030C20;
 Thu,  9 Sep 2021 01:11:13 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AECFB1972E;
 Thu,  9 Sep 2021 01:11:11 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Thu,  9 Sep 2021 11:10:41 +1000
Message-Id: <20210909011100.2987971-5-airlied@gmail.com>
In-Reply-To: <20210909011100.2987971-1-airlied@gmail.com>
References: <20210909011100.2987971-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 04/23] drm/i915: add wrappers around cdclk
 vtable funcs.
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

This adds wrappers around all the vtable callers so they are in
one place.

Suggested by Jani.

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 47 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_cdclk.h    |  4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 .../drm/i915/display/intel_display_power.c    |  2 +-
 4 files changed, 44 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i=
915/display/intel_cdclk.c
index 9aec17b33819..0e09f259914f 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -59,6 +59,37 @@
  * dividers can be programmed correctly.
  */
=20
+void intel_cdclk_get_cdclk(struct drm_i915_private *dev_priv,
+=09=09=09   struct intel_cdclk_config *cdclk_config)
+{
+=09dev_priv->display.get_cdclk(dev_priv, cdclk_config);
+}
+
+int intel_cdclk_bw_calc_min_cdclk(struct intel_atomic_state *state)
+{
+=09struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
+=09return dev_priv->display.bw_calc_min_cdclk(state);
+}
+
+static void intel_cdclk_set_cdclk(struct drm_i915_private *dev_priv,
+=09=09=09=09  const struct intel_cdclk_config *cdclk_config,
+=09=09=09=09  enum pipe pipe)
+{
+=09dev_priv->display.set_cdclk(dev_priv, cdclk_config, pipe);
+}
+
+static int intel_cdclk_modeset_calc_cdclk(struct drm_i915_private *dev_pri=
v,
+=09=09=09=09=09  struct intel_cdclk_state *cdclk_config)
+{
+=09return dev_priv->display.modeset_calc_cdclk(cdclk_config);
+}
+
+static u8 intel_cdclk_calc_voltage_level(struct drm_i915_private *dev_priv=
,
+=09=09=09=09=09 int cdclk)
+{
+=09return dev_priv->display.calc_voltage_level(cdclk);
+}
+
 static void fixed_133mhz_get_cdclk(struct drm_i915_private *dev_priv,
 =09=09=09=09   struct intel_cdclk_config *cdclk_config)
 {
@@ -1466,7 +1497,7 @@ static void bxt_get_cdclk(struct drm_i915_private *de=
v_priv,
 =09 * at least what the CDCLK frequency requires.
 =09 */
 =09cdclk_config->voltage_level =3D
-=09=09dev_priv->display.calc_voltage_level(cdclk_config->cdclk);
+=09=09intel_cdclk_calc_voltage_level(dev_priv, cdclk_config->cdclk);
 }
=20
 static void bxt_de_pll_disable(struct drm_i915_private *dev_priv)
@@ -1777,7 +1808,7 @@ static void bxt_cdclk_init_hw(struct drm_i915_private=
 *dev_priv)
 =09cdclk_config.cdclk =3D bxt_calc_cdclk(dev_priv, 0);
 =09cdclk_config.vco =3D bxt_calc_cdclk_pll_vco(dev_priv, cdclk_config.cdcl=
k);
 =09cdclk_config.voltage_level =3D
-=09=09dev_priv->display.calc_voltage_level(cdclk_config.cdclk);
+=09=09intel_cdclk_calc_voltage_level(dev_priv, cdclk_config.cdclk);
=20
 =09bxt_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
 }
@@ -1789,7 +1820,7 @@ static void bxt_cdclk_uninit_hw(struct drm_i915_priva=
te *dev_priv)
 =09cdclk_config.cdclk =3D cdclk_config.bypass;
 =09cdclk_config.vco =3D 0;
 =09cdclk_config.voltage_level =3D
-=09=09dev_priv->display.calc_voltage_level(cdclk_config.cdclk);
+=09=09intel_cdclk_calc_voltage_level(dev_priv, cdclk_config.cdclk);
=20
 =09bxt_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
 }
@@ -1956,7 +1987,7 @@ static void intel_set_cdclk(struct drm_i915_private *=
dev_priv,
 =09=09=09=09     &dev_priv->gmbus_mutex);
 =09}
=20
-=09dev_priv->display.set_cdclk(dev_priv, cdclk_config, pipe);
+=09intel_cdclk_set_cdclk(dev_priv, cdclk_config, pipe);
=20
 =09for_each_intel_dp(&dev_priv->drm, encoder) {
 =09=09struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
@@ -2424,7 +2455,7 @@ static int bxt_modeset_calc_cdclk(struct intel_cdclk_=
state *cdclk_state)
 =09cdclk_state->logical.cdclk =3D cdclk;
 =09cdclk_state->logical.voltage_level =3D
 =09=09max_t(int, min_voltage_level,
-=09=09      dev_priv->display.calc_voltage_level(cdclk));
+=09=09      intel_cdclk_calc_voltage_level(dev_priv, cdclk));
=20
 =09if (!cdclk_state->active_pipes) {
 =09=09cdclk =3D bxt_calc_cdclk(dev_priv, cdclk_state->force_min_cdclk);
@@ -2433,7 +2464,7 @@ static int bxt_modeset_calc_cdclk(struct intel_cdclk_=
state *cdclk_state)
 =09=09cdclk_state->actual.vco =3D vco;
 =09=09cdclk_state->actual.cdclk =3D cdclk;
 =09=09cdclk_state->actual.voltage_level =3D
-=09=09=09dev_priv->display.calc_voltage_level(cdclk);
+=09=09=09intel_cdclk_calc_voltage_level(dev_priv, cdclk);
 =09} else {
 =09=09cdclk_state->actual =3D cdclk_state->logical;
 =09}
@@ -2525,7 +2556,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_stat=
e *state)
 =09new_cdclk_state->active_pipes =3D
 =09=09intel_calc_active_pipes(state, old_cdclk_state->active_pipes);
=20
-=09ret =3D dev_priv->display.modeset_calc_cdclk(new_cdclk_state);
+=09ret =3D intel_cdclk_modeset_calc_cdclk(dev_priv, new_cdclk_state);
 =09if (ret)
 =09=09return ret;
=20
@@ -2705,7 +2736,7 @@ void intel_update_max_cdclk(struct drm_i915_private *=
dev_priv)
  */
 void intel_update_cdclk(struct drm_i915_private *dev_priv)
 {
-=09dev_priv->display.get_cdclk(dev_priv, &dev_priv->cdclk.hw);
+=09intel_cdclk_get_cdclk(dev_priv, &dev_priv->cdclk.hw);
=20
 =09/*
 =09 * 9:0 CMBUS [sic] CDCLK frequency (cdfreq):
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i=
915/display/intel_cdclk.h
index b34eb00fb327..309b3f394e24 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -68,7 +68,9 @@ void intel_set_cdclk_post_plane_update(struct intel_atomi=
c_state *state);
 void intel_dump_cdclk_config(const struct intel_cdclk_config *cdclk_config=
,
 =09=09=09     const char *context);
 int intel_modeset_calc_cdclk(struct intel_atomic_state *state);
-
+void intel_cdclk_get_cdclk(struct drm_i915_private *dev_priv,
+=09=09=09   struct intel_cdclk_config *cdclk_config);
+int intel_cdclk_bw_calc_min_cdclk(struct intel_atomic_state *state);
 struct intel_cdclk_state *
 intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
=20
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index 3d8afa9f3237..8d2147880fa1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9146,7 +9146,7 @@ static int intel_atomic_check_cdclk(struct intel_atom=
ic_state *state,
 =09    old_cdclk_state->force_min_cdclk !=3D new_cdclk_state->force_min_cd=
clk)
 =09=09*need_cdclk_calc =3D true;
=20
-=09ret =3D dev_priv->display.bw_calc_min_cdclk(state);
+=09ret =3D intel_cdclk_bw_calc_min_cdclk(state);
 =09if (ret)
 =09=09return ret;
=20
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/g=
pu/drm/i915/display/intel_display_power.c
index cce1a926fcc1..a274e2b33e91 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1195,7 +1195,7 @@ static void gen9_disable_dc_states(struct drm_i915_pr=
ivate *dev_priv)
 =09if (!HAS_DISPLAY(dev_priv))
 =09=09return;
=20
-=09dev_priv->display.get_cdclk(dev_priv, &cdclk_config);
+=09intel_cdclk_get_cdclk(dev_priv, &cdclk_config);
 =09/* Can't read out voltage_level so can't use intel_cdclk_changed() */
 =09drm_WARN_ON(&dev_priv->drm,
 =09=09    intel_cdclk_needs_modeset(&dev_priv->cdclk.hw,
--=20
2.31.1

