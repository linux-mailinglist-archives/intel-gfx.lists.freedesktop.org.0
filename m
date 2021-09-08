Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D339E4031EF
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 02:40:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCD6F6E0FE;
	Wed,  8 Sep 2021 00:40:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AD4B6E0FE
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 00:40:34 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-587-npkjnGLVP6GBa7WXlonVRA-1; Tue, 07 Sep 2021 20:40:29 -0400
X-MC-Unique: npkjnGLVP6GBa7WXlonVRA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C20281006C91;
 Wed,  8 Sep 2021 00:40:28 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7C82260E1C;
 Wed,  8 Sep 2021 00:40:27 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Wed,  8 Sep 2021 10:39:40 +1000
Message-Id: <20210908003944.2972024-18-airlied@gmail.com>
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
Subject: [Intel-gfx] [PATCH 17/21] drm/i915: constify the cdclk vtable
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

This is a bit of a twisty one since each platform is slightly
different, so might take some more review care.
---
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 306 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_power.c    |   2 +-
 drivers/gpu/drm/i915/i915_drv.h               |   2 +-
 4 files changed, 211 insertions(+), 101 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i=
915/display/intel_cdclk.c
index c12b4e6bf5f5..9ce053bea022 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1466,7 +1466,7 @@ static void bxt_get_cdclk(struct drm_i915_private *de=
v_priv,
 =09 * at least what the CDCLK frequency requires.
 =09 */
 =09cdclk_config->voltage_level =3D
-=09=09dev_priv->cdclk_funcs.calc_voltage_level(cdclk_config->cdclk);
+=09=09dev_priv->cdclk_funcs->calc_voltage_level(cdclk_config->cdclk);
 }
=20
 static void bxt_de_pll_disable(struct drm_i915_private *dev_priv)
@@ -1777,7 +1777,7 @@ static void bxt_cdclk_init_hw(struct drm_i915_private=
 *dev_priv)
 =09cdclk_config.cdclk =3D bxt_calc_cdclk(dev_priv, 0);
 =09cdclk_config.vco =3D bxt_calc_cdclk_pll_vco(dev_priv, cdclk_config.cdcl=
k);
 =09cdclk_config.voltage_level =3D
-=09=09dev_priv->cdclk_funcs.calc_voltage_level(cdclk_config.cdclk);
+=09=09dev_priv->cdclk_funcs->calc_voltage_level(cdclk_config.cdclk);
=20
 =09bxt_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
 }
@@ -1789,7 +1789,7 @@ static void bxt_cdclk_uninit_hw(struct drm_i915_priva=
te *dev_priv)
 =09cdclk_config.cdclk =3D cdclk_config.bypass;
 =09cdclk_config.vco =3D 0;
 =09cdclk_config.voltage_level =3D
-=09=09dev_priv->cdclk_funcs.calc_voltage_level(cdclk_config.cdclk);
+=09=09dev_priv->cdclk_funcs->calc_voltage_level(cdclk_config.cdclk);
=20
 =09bxt_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
 }
@@ -1932,7 +1932,7 @@ static void intel_set_cdclk(struct drm_i915_private *=
dev_priv,
 =09if (!intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config))
 =09=09return;
=20
-=09if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->cdclk_funcs.set_cdclk))
+=09if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->cdclk_funcs->set_cdclk)=
)
 =09=09return;
=20
 =09intel_dump_cdclk_config(cdclk_config, "Changing CDCLK to");
@@ -1956,7 +1956,7 @@ static void intel_set_cdclk(struct drm_i915_private *=
dev_priv,
 =09=09=09=09     &dev_priv->gmbus_mutex);
 =09}
=20
-=09dev_priv->cdclk_funcs.set_cdclk(dev_priv, cdclk_config, pipe);
+=09dev_priv->cdclk_funcs->set_cdclk(dev_priv, cdclk_config, pipe);
=20
 =09for_each_intel_dp(&dev_priv->drm, encoder) {
 =09=09struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
@@ -2414,7 +2414,7 @@ static int bxt_modeset_calc_cdclk(struct intel_cdclk_=
state *cdclk_state)
 =09cdclk_state->logical.cdclk =3D cdclk;
 =09cdclk_state->logical.voltage_level =3D
 =09=09max_t(int, min_voltage_level,
-=09=09      dev_priv->cdclk_funcs.calc_voltage_level(cdclk));
+=09=09      dev_priv->cdclk_funcs->calc_voltage_level(cdclk));
=20
 =09if (!cdclk_state->active_pipes) {
 =09=09cdclk =3D bxt_calc_cdclk(dev_priv, cdclk_state->force_min_cdclk);
@@ -2423,7 +2423,7 @@ static int bxt_modeset_calc_cdclk(struct intel_cdclk_=
state *cdclk_state)
 =09=09cdclk_state->actual.vco =3D vco;
 =09=09cdclk_state->actual.cdclk =3D cdclk;
 =09=09cdclk_state->actual.voltage_level =3D
-=09=09=09dev_priv->cdclk_funcs.calc_voltage_level(cdclk);
+=09=09=09dev_priv->cdclk_funcs->calc_voltage_level(cdclk);
 =09} else {
 =09=09cdclk_state->actual =3D cdclk_state->logical;
 =09}
@@ -2515,7 +2515,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_stat=
e *state)
 =09new_cdclk_state->active_pipes =3D
 =09=09intel_calc_active_pipes(state, old_cdclk_state->active_pipes);
=20
-=09ret =3D dev_priv->cdclk_funcs.modeset_calc_cdclk(new_cdclk_state);
+=09ret =3D dev_priv->cdclk_funcs->modeset_calc_cdclk(new_cdclk_state);
 =09if (ret)
 =09=09return ret;
=20
@@ -2695,7 +2695,7 @@ void intel_update_max_cdclk(struct drm_i915_private *=
dev_priv)
  */
 void intel_update_cdclk(struct drm_i915_private *dev_priv)
 {
-=09dev_priv->cdclk_funcs.get_cdclk(dev_priv, &dev_priv->cdclk.hw);
+=09dev_priv->cdclk_funcs->get_cdclk(dev_priv, &dev_priv->cdclk.hw);
=20
 =09/*
 =09 * 9:0 CMBUS [sic] CDCLK frequency (cdfreq):
@@ -2845,6 +2845,157 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_=
priv)
 =09return freq;
 }
=20
+static struct drm_i915_display_cdclk_funcs tgl_cdclk_funcs =3D {
+=09.get_cdclk =3D bxt_get_cdclk,
+=09.set_cdclk =3D bxt_set_cdclk,
+=09.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk,
+=09.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk,
+=09.calc_voltage_level =3D tgl_calc_voltage_level,
+};
+
+static struct drm_i915_display_cdclk_funcs ehl_cdclk_funcs =3D {
+=09.get_cdclk =3D bxt_get_cdclk,
+=09.set_cdclk =3D bxt_set_cdclk,
+=09.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk,
+=09.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk,
+=09.calc_voltage_level =3D ehl_calc_voltage_level,
+};
+
+static struct drm_i915_display_cdclk_funcs icl_cdclk_funcs =3D {
+=09.get_cdclk =3D bxt_get_cdclk,
+=09.set_cdclk =3D bxt_set_cdclk,
+=09.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk,
+=09.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk,
+=09.calc_voltage_level =3D icl_calc_voltage_level,
+};
+
+static struct drm_i915_display_cdclk_funcs bxt_cdclk_funcs =3D {
+=09.get_cdclk =3D bxt_get_cdclk,
+=09.set_cdclk =3D bxt_set_cdclk,
+=09.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk,
+=09.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk,
+=09.calc_voltage_level =3D bxt_calc_voltage_level,
+};
+
+static struct drm_i915_display_cdclk_funcs skl_cdclk_funcs =3D {
+=09.get_cdclk =3D skl_get_cdclk,
+=09.set_cdclk =3D skl_set_cdclk,
+=09.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk,
+=09.modeset_calc_cdclk =3D skl_modeset_calc_cdclk,
+};
+
+static struct drm_i915_display_cdclk_funcs bdw_cdclk_funcs =3D {
+=09.get_cdclk =3D bdw_get_cdclk,
+=09.set_cdclk =3D bdw_set_cdclk,
+=09.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk,
+=09.modeset_calc_cdclk =3D bdw_modeset_calc_cdclk,
+};
+
+static struct drm_i915_display_cdclk_funcs chv_cdclk_funcs =3D {
+=09.get_cdclk =3D vlv_get_cdclk,
+=09.set_cdclk =3D chv_set_cdclk,
+=09.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk,
+=09.modeset_calc_cdclk =3D vlv_modeset_calc_cdclk,
+};
+
+static struct drm_i915_display_cdclk_funcs vlv_cdclk_funcs =3D {
+=09.get_cdclk =3D vlv_get_cdclk,
+=09.set_cdclk =3D vlv_set_cdclk,
+=09.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk,
+=09.modeset_calc_cdclk =3D vlv_modeset_calc_cdclk,
+};
+
+static struct drm_i915_display_cdclk_funcs hsw_cdclk_funcs =3D {
+=09.get_cdclk =3D hsw_get_cdclk,
+=09.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk,
+=09.modeset_calc_cdclk =3D fixed_modeset_calc_cdclk,
+};
+
+/* SNB, IVB, 965G, 945G */
+static struct drm_i915_display_cdclk_funcs fixed_400mhz_cdclk_funcs =3D {
+=09.get_cdclk =3D fixed_400mhz_get_cdclk,
+=09.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk,
+=09.modeset_calc_cdclk =3D fixed_modeset_calc_cdclk,
+};
+
+static struct drm_i915_display_cdclk_funcs ilk_cdclk_funcs =3D {
+=09.get_cdclk =3D fixed_450mhz_get_cdclk,
+=09.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk,
+=09.modeset_calc_cdclk =3D fixed_modeset_calc_cdclk,
+};
+
+static struct drm_i915_display_cdclk_funcs gm45_cdclk_funcs =3D {
+=09.get_cdclk =3D gm45_get_cdclk,
+=09.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk,
+=09.modeset_calc_cdclk =3D fixed_modeset_calc_cdclk,
+};
+
+/* G45 uses G33 */
+
+static struct drm_i915_display_cdclk_funcs i965gm_cdclk_funcs =3D {
+=09.get_cdclk =3D i965gm_get_cdclk,
+=09.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk,
+=09.modeset_calc_cdclk =3D fixed_modeset_calc_cdclk,
+};
+
+/* i965G uses fixed 400 */
+
+static struct drm_i915_display_cdclk_funcs pnv_cdclk_funcs =3D {
+=09.get_cdclk =3D pnv_get_cdclk,
+=09.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk,
+=09.modeset_calc_cdclk =3D fixed_modeset_calc_cdclk,
+};
+
+static struct drm_i915_display_cdclk_funcs g33_cdclk_funcs =3D {
+=09.get_cdclk =3D g33_get_cdclk,
+=09.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk,
+=09.modeset_calc_cdclk =3D fixed_modeset_calc_cdclk,
+};
+
+static struct drm_i915_display_cdclk_funcs i945gm_cdclk_funcs =3D {
+=09.get_cdclk =3D i945gm_get_cdclk,
+=09.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk,
+=09.modeset_calc_cdclk =3D fixed_modeset_calc_cdclk,
+};
+
+/* i945G uses fixed 400 */
+
+static struct drm_i915_display_cdclk_funcs i915gm_cdclk_funcs =3D {
+=09.get_cdclk =3D i915gm_get_cdclk,
+=09.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk,
+=09.modeset_calc_cdclk =3D fixed_modeset_calc_cdclk,
+};
+
+static struct drm_i915_display_cdclk_funcs i915g_cdclk_funcs =3D {
+=09.get_cdclk =3D fixed_333mhz_get_cdclk,
+=09.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk,
+=09.modeset_calc_cdclk =3D fixed_modeset_calc_cdclk,
+};
+
+static struct drm_i915_display_cdclk_funcs i865g_cdclk_funcs =3D {
+=09.get_cdclk =3D fixed_266mhz_get_cdclk,
+=09.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk,
+=09.modeset_calc_cdclk =3D fixed_modeset_calc_cdclk,
+};
+
+static struct drm_i915_display_cdclk_funcs i85x_cdclk_funcs =3D {
+=09.get_cdclk =3D i85x_get_cdclk,
+=09.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk,
+=09.modeset_calc_cdclk =3D fixed_modeset_calc_cdclk,
+};
+
+static struct drm_i915_display_cdclk_funcs i845g_cdclk_funcs =3D {
+=09.get_cdclk =3D fixed_200mhz_get_cdclk,
+=09.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk,
+=09.modeset_calc_cdclk =3D fixed_modeset_calc_cdclk,
+};
+
+static struct drm_i915_display_cdclk_funcs i830_cdclk_funcs =3D {
+=09.get_cdclk =3D fixed_133mhz_get_cdclk,
+=09.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk,
+=09.modeset_calc_cdclk =3D fixed_modeset_calc_cdclk,
+};
+
 /**
  * intel_init_cdclk_hooks - Initialize CDCLK related modesetting hooks
  * @dev_priv: i915 device
@@ -2852,119 +3003,78 @@ u32 intel_read_rawclk(struct drm_i915_private *dev=
_priv)
 void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 {
 =09if (IS_DG2(dev_priv)) {
-=09=09dev_priv->cdclk_funcs.set_cdclk =3D bxt_set_cdclk;
-=09=09dev_priv->cdclk_funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
-=09=09dev_priv->cdclk_funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
-=09=09dev_priv->cdclk_funcs.calc_voltage_level =3D tgl_calc_voltage_level;
+=09=09dev_priv->cdclk_funcs =3D &tgl_cdclk_funcs;
 =09=09dev_priv->cdclk.table =3D dg2_cdclk_table;
 =09} else if (IS_ALDERLAKE_P(dev_priv)) {
-=09=09dev_priv->cdclk_funcs.set_cdclk =3D bxt_set_cdclk;
-=09=09dev_priv->cdclk_funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
-=09=09dev_priv->cdclk_funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
-=09=09dev_priv->cdclk_funcs.calc_voltage_level =3D tgl_calc_voltage_level;
+=09=09dev_priv->cdclk_funcs =3D &tgl_cdclk_funcs;
 =09=09/* Wa_22011320316:adl-p[a0] */
 =09=09if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 =09=09=09dev_priv->cdclk.table =3D adlp_a_step_cdclk_table;
 =09=09else
 =09=09=09dev_priv->cdclk.table =3D adlp_cdclk_table;
 =09} else if (IS_ROCKETLAKE(dev_priv)) {
-=09=09dev_priv->cdclk_funcs.set_cdclk =3D bxt_set_cdclk;
-=09=09dev_priv->cdclk_funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
-=09=09dev_priv->cdclk_funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
-=09=09dev_priv->cdclk_funcs.calc_voltage_level =3D tgl_calc_voltage_level;
+=09=09dev_priv->cdclk_funcs =3D &tgl_cdclk_funcs;
 =09=09dev_priv->cdclk.table =3D rkl_cdclk_table;
 =09} else if (DISPLAY_VER(dev_priv) >=3D 12) {
-=09=09dev_priv->cdclk_funcs.set_cdclk =3D bxt_set_cdclk;
-=09=09dev_priv->cdclk_funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
-=09=09dev_priv->cdclk_funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
-=09=09dev_priv->cdclk_funcs.calc_voltage_level =3D tgl_calc_voltage_level;
+=09=09dev_priv->cdclk_funcs =3D &tgl_cdclk_funcs;
 =09=09dev_priv->cdclk.table =3D icl_cdclk_table;
 =09} else if (IS_JSL_EHL(dev_priv)) {
-=09=09dev_priv->cdclk_funcs.set_cdclk =3D bxt_set_cdclk;
-=09=09dev_priv->cdclk_funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
-=09=09dev_priv->cdclk_funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
-=09=09dev_priv->cdclk_funcs.calc_voltage_level =3D ehl_calc_voltage_level;
+=09=09dev_priv->cdclk_funcs =3D &ehl_cdclk_funcs;
 =09=09dev_priv->cdclk.table =3D icl_cdclk_table;
 =09} else if (DISPLAY_VER(dev_priv) >=3D 11) {
-=09=09dev_priv->cdclk_funcs.set_cdclk =3D bxt_set_cdclk;
-=09=09dev_priv->cdclk_funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
-=09=09dev_priv->cdclk_funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
-=09=09dev_priv->cdclk_funcs.calc_voltage_level =3D icl_calc_voltage_level;
+=09=09dev_priv->cdclk_funcs =3D &icl_cdclk_funcs;
 =09=09dev_priv->cdclk.table =3D icl_cdclk_table;
 =09} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
-=09=09dev_priv->cdclk_funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
-=09=09dev_priv->cdclk_funcs.set_cdclk =3D bxt_set_cdclk;
-=09=09dev_priv->cdclk_funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
-=09=09dev_priv->cdclk_funcs.calc_voltage_level =3D bxt_calc_voltage_level;
+=09=09dev_priv->cdclk_funcs =3D &bxt_cdclk_funcs;
 =09=09if (IS_GEMINILAKE(dev_priv))
 =09=09=09dev_priv->cdclk.table =3D glk_cdclk_table;
 =09=09else
 =09=09=09dev_priv->cdclk.table =3D bxt_cdclk_table;
 =09} else if (DISPLAY_VER(dev_priv) =3D=3D 9) {
-=09=09dev_priv->cdclk_funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
-=09=09dev_priv->cdclk_funcs.set_cdclk =3D skl_set_cdclk;
-=09=09dev_priv->cdclk_funcs.modeset_calc_cdclk =3D skl_modeset_calc_cdclk;
+=09=09dev_priv->cdclk_funcs =3D &skl_cdclk_funcs;
 =09} else if (IS_BROADWELL(dev_priv)) {
-=09=09dev_priv->cdclk_funcs.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk;
-=09=09dev_priv->cdclk_funcs.set_cdclk =3D bdw_set_cdclk;
-=09=09dev_priv->cdclk_funcs.modeset_calc_cdclk =3D bdw_modeset_calc_cdclk;
+=09=09dev_priv->cdclk_funcs =3D &bdw_cdclk_funcs;
+=09} else if (IS_HASWELL(dev_priv)) {
+=09=09dev_priv->cdclk_funcs =3D &hsw_cdclk_funcs;
 =09} else if (IS_CHERRYVIEW(dev_priv)) {
-=09=09dev_priv->cdclk_funcs.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk;
-=09=09dev_priv->cdclk_funcs.set_cdclk =3D chv_set_cdclk;
-=09=09dev_priv->cdclk_funcs.modeset_calc_cdclk =3D vlv_modeset_calc_cdclk;
+=09=09dev_priv->cdclk_funcs =3D &chv_cdclk_funcs;
 =09} else if (IS_VALLEYVIEW(dev_priv)) {
-=09=09dev_priv->cdclk_funcs.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk;
-=09=09dev_priv->cdclk_funcs.set_cdclk =3D vlv_set_cdclk;
-=09=09dev_priv->cdclk_funcs.modeset_calc_cdclk =3D vlv_modeset_calc_cdclk;
-=09} else {
-=09=09dev_priv->cdclk_funcs.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk;
-=09=09dev_priv->cdclk_funcs.modeset_calc_cdclk =3D fixed_modeset_calc_cdcl=
k;
+=09=09dev_priv->cdclk_funcs =3D &vlv_cdclk_funcs;
+=09} else if (IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv)) {
+=09=09dev_priv->cdclk_funcs =3D &fixed_400mhz_cdclk_funcs;
+=09} else if (IS_IRONLAKE(dev_priv)) {
+=09=09dev_priv->cdclk_funcs =3D &ilk_cdclk_funcs;
+=09} else if (IS_GM45(dev_priv)) {
+=09=09dev_priv->cdclk_funcs =3D &gm45_cdclk_funcs;
+=09} else if (IS_G45(dev_priv)) {
+=09=09dev_priv->cdclk_funcs =3D &g33_cdclk_funcs;
+=09} else if (IS_I965GM(dev_priv)) {
+=09=09dev_priv->cdclk_funcs =3D &i965gm_cdclk_funcs;
+=09} else if (IS_I965G(dev_priv)) {
+=09=09dev_priv->cdclk_funcs =3D &fixed_400mhz_cdclk_funcs;
+=09} else if (IS_PINEVIEW(dev_priv)) {
+=09=09dev_priv->cdclk_funcs =3D &pnv_cdclk_funcs;
+=09} else if (IS_G33(dev_priv)) {
+=09=09dev_priv->cdclk_funcs =3D &g33_cdclk_funcs;
+=09} else if (IS_I945GM(dev_priv)) {
+=09=09dev_priv->cdclk_funcs =3D &i945gm_cdclk_funcs;
+=09} else if (IS_I945G(dev_priv)) {
+=09=09dev_priv->cdclk_funcs =3D &fixed_400mhz_cdclk_funcs;
+=09} else if (IS_I915GM(dev_priv)) {
+=09=09dev_priv->cdclk_funcs =3D &i915gm_cdclk_funcs;
+=09} else if (IS_I915G(dev_priv)) {
+=09=09dev_priv->cdclk_funcs =3D &i915g_cdclk_funcs;
+=09} else if (IS_I865G(dev_priv)) {
+=09=09dev_priv->cdclk_funcs =3D &i865g_cdclk_funcs;
+=09} else if (IS_I85X(dev_priv)) {
+=09=09dev_priv->cdclk_funcs =3D &i85x_cdclk_funcs;
+=09} else if (IS_I845G(dev_priv)) {
+=09=09dev_priv->cdclk_funcs =3D &i845g_cdclk_funcs;
+=09} else if (IS_I830(dev_priv)) {
+=09=09dev_priv->cdclk_funcs =3D &i830_cdclk_funcs;
 =09}
=20
-=09if (DISPLAY_VER(dev_priv) >=3D 10 || IS_BROXTON(dev_priv))
-=09=09dev_priv->cdclk_funcs.get_cdclk =3D bxt_get_cdclk;
-=09else if (DISPLAY_VER(dev_priv) =3D=3D 9)
-=09=09dev_priv->cdclk_funcs.get_cdclk =3D skl_get_cdclk;
-=09else if (IS_BROADWELL(dev_priv))
-=09=09dev_priv->cdclk_funcs.get_cdclk =3D bdw_get_cdclk;
-=09else if (IS_HASWELL(dev_priv))
-=09=09dev_priv->cdclk_funcs.get_cdclk =3D hsw_get_cdclk;
-=09else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-=09=09dev_priv->cdclk_funcs.get_cdclk =3D vlv_get_cdclk;
-=09else if (IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv))
-=09=09dev_priv->cdclk_funcs.get_cdclk =3D fixed_400mhz_get_cdclk;
-=09else if (IS_IRONLAKE(dev_priv))
-=09=09dev_priv->cdclk_funcs.get_cdclk =3D fixed_450mhz_get_cdclk;
-=09else if (IS_GM45(dev_priv))
-=09=09dev_priv->cdclk_funcs.get_cdclk =3D gm45_get_cdclk;
-=09else if (IS_G45(dev_priv))
-=09=09dev_priv->cdclk_funcs.get_cdclk =3D g33_get_cdclk;
-=09else if (IS_I965GM(dev_priv))
-=09=09dev_priv->cdclk_funcs.get_cdclk =3D i965gm_get_cdclk;
-=09else if (IS_I965G(dev_priv))
-=09=09dev_priv->cdclk_funcs.get_cdclk =3D fixed_400mhz_get_cdclk;
-=09else if (IS_PINEVIEW(dev_priv))
-=09=09dev_priv->cdclk_funcs.get_cdclk =3D pnv_get_cdclk;
-=09else if (IS_G33(dev_priv))
-=09=09dev_priv->cdclk_funcs.get_cdclk =3D g33_get_cdclk;
-=09else if (IS_I945GM(dev_priv))
-=09=09dev_priv->cdclk_funcs.get_cdclk =3D i945gm_get_cdclk;
-=09else if (IS_I945G(dev_priv))
-=09=09dev_priv->cdclk_funcs.get_cdclk =3D fixed_400mhz_get_cdclk;
-=09else if (IS_I915GM(dev_priv))
-=09=09dev_priv->cdclk_funcs.get_cdclk =3D i915gm_get_cdclk;
-=09else if (IS_I915G(dev_priv))
-=09=09dev_priv->cdclk_funcs.get_cdclk =3D fixed_333mhz_get_cdclk;
-=09else if (IS_I865G(dev_priv))
-=09=09dev_priv->cdclk_funcs.get_cdclk =3D fixed_266mhz_get_cdclk;
-=09else if (IS_I85X(dev_priv))
-=09=09dev_priv->cdclk_funcs.get_cdclk =3D i85x_get_cdclk;
-=09else if (IS_I845G(dev_priv))
-=09=09dev_priv->cdclk_funcs.get_cdclk =3D fixed_200mhz_get_cdclk;
-=09else if (IS_I830(dev_priv))
-=09=09dev_priv->cdclk_funcs.get_cdclk =3D fixed_133mhz_get_cdclk;
-
-=09if (drm_WARN(&dev_priv->drm, !dev_priv->cdclk_funcs.get_cdclk,
-=09=09     "Unknown platform. Assuming 133 MHz CDCLK\n"))
-=09=09dev_priv->cdclk_funcs.get_cdclk =3D fixed_133mhz_get_cdclk;
+=09if (drm_WARN(&dev_priv->drm, !dev_priv->cdclk_funcs,
+=09=09     "Unknown platform. Assuming i830\n"))
+=09=09dev_priv->cdclk_funcs =3D &i830_cdclk_funcs;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index d8a576d1435e..09c9dc741026 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9120,7 +9120,7 @@ static int intel_atomic_check_cdclk(struct intel_atom=
ic_state *state,
 =09    old_cdclk_state->force_min_cdclk !=3D new_cdclk_state->force_min_cd=
clk)
 =09=09*need_cdclk_calc =3D true;
=20
-=09ret =3D dev_priv->cdclk_funcs.bw_calc_min_cdclk(state);
+=09ret =3D dev_priv->cdclk_funcs->bw_calc_min_cdclk(state);
 =09if (ret)
 =09=09return ret;
=20
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/g=
pu/drm/i915/display/intel_display_power.c
index 2cf420c06ed6..b6c233039a54 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1195,7 +1195,7 @@ static void gen9_disable_dc_states(struct drm_i915_pr=
ivate *dev_priv)
 =09if (!HAS_DISPLAY(dev_priv))
 =09=09return;
=20
-=09dev_priv->cdclk_funcs.get_cdclk(dev_priv, &cdclk_config);
+=09dev_priv->cdclk_funcs->get_cdclk(dev_priv, &cdclk_config);
 =09/* Can't read out voltage_level so can't use intel_cdclk_changed() */
 =09drm_WARN_ON(&dev_priv->drm,
 =09=09    intel_cdclk_needs_modeset(&dev_priv->cdclk.hw,
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index a9563730aad5..085012727549 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1021,7 +1021,7 @@ struct drm_i915_private {
 =09const struct drm_i915_display_audio_funcs *audio_funcs;
=20
 =09/* Display CDCLK functions */
-=09struct drm_i915_display_cdclk_funcs cdclk_funcs;
+=09const struct drm_i915_display_cdclk_funcs *cdclk_funcs;
=20
 =09/* PCH chipset type */
 =09enum intel_pch pch_type;
--=20
2.31.1

