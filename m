Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1366540429F
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 03:11:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 104F96E419;
	Thu,  9 Sep 2021 01:11:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 104B16E418
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 01:11:31 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-500-aI8QPVksOg6OoPkupl8lng-1; Wed, 08 Sep 2021 21:11:25 -0400
X-MC-Unique: aI8QPVksOg6OoPkupl8lng-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CDAA41030C21;
 Thu,  9 Sep 2021 01:11:24 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 46B9819736;
 Thu,  9 Sep 2021 01:11:23 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, Dave Airlie <airlied@redhat.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Thu,  9 Sep 2021 11:10:47 +1000
Message-Id: <20210909011100.2987971-11-airlied@gmail.com>
In-Reply-To: <20210909011100.2987971-1-airlied@gmail.com>
References: <20210909011100.2987971-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 10/23] drm/i915: split cdclk functions from
 display vtable.
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

This moves all the cdclk related functions into their own vtable.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 142 ++++++++++-----------
 drivers/gpu/drm/i915/i915_drv.h            |   8 +-
 2 files changed, 78 insertions(+), 72 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i=
915/display/intel_cdclk.c
index 0e09f259914f..27a4a226aa49 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -62,32 +62,32 @@
 void intel_cdclk_get_cdclk(struct drm_i915_private *dev_priv,
 =09=09=09   struct intel_cdclk_config *cdclk_config)
 {
-=09dev_priv->display.get_cdclk(dev_priv, cdclk_config);
+=09dev_priv->cdclk_funcs.get_cdclk(dev_priv, cdclk_config);
 }
=20
 int intel_cdclk_bw_calc_min_cdclk(struct intel_atomic_state *state)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
-=09return dev_priv->display.bw_calc_min_cdclk(state);
+=09return dev_priv->cdclk_funcs.bw_calc_min_cdclk(state);
 }
=20
 static void intel_cdclk_set_cdclk(struct drm_i915_private *dev_priv,
 =09=09=09=09  const struct intel_cdclk_config *cdclk_config,
 =09=09=09=09  enum pipe pipe)
 {
-=09dev_priv->display.set_cdclk(dev_priv, cdclk_config, pipe);
+=09dev_priv->cdclk_funcs.set_cdclk(dev_priv, cdclk_config, pipe);
 }
=20
 static int intel_cdclk_modeset_calc_cdclk(struct drm_i915_private *dev_pri=
v,
 =09=09=09=09=09  struct intel_cdclk_state *cdclk_config)
 {
-=09return dev_priv->display.modeset_calc_cdclk(cdclk_config);
+=09return dev_priv->cdclk_funcs.modeset_calc_cdclk(cdclk_config);
 }
=20
 static u8 intel_cdclk_calc_voltage_level(struct drm_i915_private *dev_priv=
,
 =09=09=09=09=09 int cdclk)
 {
-=09return dev_priv->display.calc_voltage_level(cdclk);
+=09return dev_priv->cdclk_funcs.calc_voltage_level(cdclk);
 }
=20
 static void fixed_133mhz_get_cdclk(struct drm_i915_private *dev_priv,
@@ -1963,7 +1963,7 @@ static void intel_set_cdclk(struct drm_i915_private *=
dev_priv,
 =09if (!intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config))
 =09=09return;
=20
-=09if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->display.set_cdclk))
+=09if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->cdclk_funcs.set_cdclk))
 =09=09return;
=20
 =09intel_dump_cdclk_config(cdclk_config, "Changing CDCLK to");
@@ -2893,119 +2893,119 @@ u32 intel_read_rawclk(struct drm_i915_private *de=
v_priv)
 void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 {
 =09if (IS_DG2(dev_priv)) {
-=09=09dev_priv->display.set_cdclk =3D bxt_set_cdclk;
-=09=09dev_priv->display.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
-=09=09dev_priv->display.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
-=09=09dev_priv->display.calc_voltage_level =3D tgl_calc_voltage_level;
+=09=09dev_priv->cdclk_funcs.set_cdclk =3D bxt_set_cdclk;
+=09=09dev_priv->cdclk_funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
+=09=09dev_priv->cdclk_funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
+=09=09dev_priv->cdclk_funcs.calc_voltage_level =3D tgl_calc_voltage_level;
 =09=09dev_priv->cdclk.table =3D dg2_cdclk_table;
 =09} else if (IS_ALDERLAKE_P(dev_priv)) {
-=09=09dev_priv->display.set_cdclk =3D bxt_set_cdclk;
-=09=09dev_priv->display.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
-=09=09dev_priv->display.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
-=09=09dev_priv->display.calc_voltage_level =3D tgl_calc_voltage_level;
+=09=09dev_priv->cdclk_funcs.set_cdclk =3D bxt_set_cdclk;
+=09=09dev_priv->cdclk_funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
+=09=09dev_priv->cdclk_funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
+=09=09dev_priv->cdclk_funcs.calc_voltage_level =3D tgl_calc_voltage_level;
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
+=09=09dev_priv->cdclk_funcs.set_cdclk =3D bxt_set_cdclk;
+=09=09dev_priv->cdclk_funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
+=09=09dev_priv->cdclk_funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
+=09=09dev_priv->cdclk_funcs.calc_voltage_level =3D tgl_calc_voltage_level;
 =09=09dev_priv->cdclk.table =3D rkl_cdclk_table;
 =09} else if (DISPLAY_VER(dev_priv) >=3D 12) {
-=09=09dev_priv->display.set_cdclk =3D bxt_set_cdclk;
-=09=09dev_priv->display.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
-=09=09dev_priv->display.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
-=09=09dev_priv->display.calc_voltage_level =3D tgl_calc_voltage_level;
+=09=09dev_priv->cdclk_funcs.set_cdclk =3D bxt_set_cdclk;
+=09=09dev_priv->cdclk_funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
+=09=09dev_priv->cdclk_funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
+=09=09dev_priv->cdclk_funcs.calc_voltage_level =3D tgl_calc_voltage_level;
 =09=09dev_priv->cdclk.table =3D icl_cdclk_table;
 =09} else if (IS_JSL_EHL(dev_priv)) {
-=09=09dev_priv->display.set_cdclk =3D bxt_set_cdclk;
-=09=09dev_priv->display.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
-=09=09dev_priv->display.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
-=09=09dev_priv->display.calc_voltage_level =3D ehl_calc_voltage_level;
+=09=09dev_priv->cdclk_funcs.set_cdclk =3D bxt_set_cdclk;
+=09=09dev_priv->cdclk_funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
+=09=09dev_priv->cdclk_funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
+=09=09dev_priv->cdclk_funcs.calc_voltage_level =3D ehl_calc_voltage_level;
 =09=09dev_priv->cdclk.table =3D icl_cdclk_table;
 =09} else if (DISPLAY_VER(dev_priv) >=3D 11) {
-=09=09dev_priv->display.set_cdclk =3D bxt_set_cdclk;
-=09=09dev_priv->display.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
-=09=09dev_priv->display.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
-=09=09dev_priv->display.calc_voltage_level =3D icl_calc_voltage_level;
+=09=09dev_priv->cdclk_funcs.set_cdclk =3D bxt_set_cdclk;
+=09=09dev_priv->cdclk_funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
+=09=09dev_priv->cdclk_funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
+=09=09dev_priv->cdclk_funcs.calc_voltage_level =3D icl_calc_voltage_level;
 =09=09dev_priv->cdclk.table =3D icl_cdclk_table;
 =09} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
-=09=09dev_priv->display.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
-=09=09dev_priv->display.set_cdclk =3D bxt_set_cdclk;
-=09=09dev_priv->display.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
-=09=09dev_priv->display.calc_voltage_level =3D bxt_calc_voltage_level;
+=09=09dev_priv->cdclk_funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
+=09=09dev_priv->cdclk_funcs.set_cdclk =3D bxt_set_cdclk;
+=09=09dev_priv->cdclk_funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
+=09=09dev_priv->cdclk_funcs.calc_voltage_level =3D bxt_calc_voltage_level;
 =09=09if (IS_GEMINILAKE(dev_priv))
 =09=09=09dev_priv->cdclk.table =3D glk_cdclk_table;
 =09=09else
 =09=09=09dev_priv->cdclk.table =3D bxt_cdclk_table;
 =09} else if (DISPLAY_VER(dev_priv) =3D=3D 9) {
-=09=09dev_priv->display.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
-=09=09dev_priv->display.set_cdclk =3D skl_set_cdclk;
-=09=09dev_priv->display.modeset_calc_cdclk =3D skl_modeset_calc_cdclk;
+=09=09dev_priv->cdclk_funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
+=09=09dev_priv->cdclk_funcs.set_cdclk =3D skl_set_cdclk;
+=09=09dev_priv->cdclk_funcs.modeset_calc_cdclk =3D skl_modeset_calc_cdclk;
 =09} else if (IS_BROADWELL(dev_priv)) {
-=09=09dev_priv->display.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk;
-=09=09dev_priv->display.set_cdclk =3D bdw_set_cdclk;
-=09=09dev_priv->display.modeset_calc_cdclk =3D bdw_modeset_calc_cdclk;
+=09=09dev_priv->cdclk_funcs.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk;
+=09=09dev_priv->cdclk_funcs.set_cdclk =3D bdw_set_cdclk;
+=09=09dev_priv->cdclk_funcs.modeset_calc_cdclk =3D bdw_modeset_calc_cdclk;
 =09} else if (IS_CHERRYVIEW(dev_priv)) {
-=09=09dev_priv->display.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk;
-=09=09dev_priv->display.set_cdclk =3D chv_set_cdclk;
-=09=09dev_priv->display.modeset_calc_cdclk =3D vlv_modeset_calc_cdclk;
+=09=09dev_priv->cdclk_funcs.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk;
+=09=09dev_priv->cdclk_funcs.set_cdclk =3D chv_set_cdclk;
+=09=09dev_priv->cdclk_funcs.modeset_calc_cdclk =3D vlv_modeset_calc_cdclk;
 =09} else if (IS_VALLEYVIEW(dev_priv)) {
-=09=09dev_priv->display.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk;
-=09=09dev_priv->display.set_cdclk =3D vlv_set_cdclk;
-=09=09dev_priv->display.modeset_calc_cdclk =3D vlv_modeset_calc_cdclk;
+=09=09dev_priv->cdclk_funcs.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk;
+=09=09dev_priv->cdclk_funcs.set_cdclk =3D vlv_set_cdclk;
+=09=09dev_priv->cdclk_funcs.modeset_calc_cdclk =3D vlv_modeset_calc_cdclk;
 =09} else {
-=09=09dev_priv->display.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk;
-=09=09dev_priv->display.modeset_calc_cdclk =3D fixed_modeset_calc_cdclk;
+=09=09dev_priv->cdclk_funcs.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk;
+=09=09dev_priv->cdclk_funcs.modeset_calc_cdclk =3D fixed_modeset_calc_cdcl=
k;
 =09}
=20
 =09if (DISPLAY_VER(dev_priv) >=3D 10 || IS_BROXTON(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D bxt_get_cdclk;
+=09=09dev_priv->cdclk_funcs.get_cdclk =3D bxt_get_cdclk;
 =09else if (DISPLAY_VER(dev_priv) =3D=3D 9)
-=09=09dev_priv->display.get_cdclk =3D skl_get_cdclk;
+=09=09dev_priv->cdclk_funcs.get_cdclk =3D skl_get_cdclk;
 =09else if (IS_BROADWELL(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D bdw_get_cdclk;
+=09=09dev_priv->cdclk_funcs.get_cdclk =3D bdw_get_cdclk;
 =09else if (IS_HASWELL(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D hsw_get_cdclk;
+=09=09dev_priv->cdclk_funcs.get_cdclk =3D hsw_get_cdclk;
 =09else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D vlv_get_cdclk;
+=09=09dev_priv->cdclk_funcs.get_cdclk =3D vlv_get_cdclk;
 =09else if (IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D fixed_400mhz_get_cdclk;
+=09=09dev_priv->cdclk_funcs.get_cdclk =3D fixed_400mhz_get_cdclk;
 =09else if (IS_IRONLAKE(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D fixed_450mhz_get_cdclk;
+=09=09dev_priv->cdclk_funcs.get_cdclk =3D fixed_450mhz_get_cdclk;
 =09else if (IS_GM45(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D gm45_get_cdclk;
+=09=09dev_priv->cdclk_funcs.get_cdclk =3D gm45_get_cdclk;
 =09else if (IS_G45(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D g33_get_cdclk;
+=09=09dev_priv->cdclk_funcs.get_cdclk =3D g33_get_cdclk;
 =09else if (IS_I965GM(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D i965gm_get_cdclk;
+=09=09dev_priv->cdclk_funcs.get_cdclk =3D i965gm_get_cdclk;
 =09else if (IS_I965G(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D fixed_400mhz_get_cdclk;
+=09=09dev_priv->cdclk_funcs.get_cdclk =3D fixed_400mhz_get_cdclk;
 =09else if (IS_PINEVIEW(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D pnv_get_cdclk;
+=09=09dev_priv->cdclk_funcs.get_cdclk =3D pnv_get_cdclk;
 =09else if (IS_G33(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D g33_get_cdclk;
+=09=09dev_priv->cdclk_funcs.get_cdclk =3D g33_get_cdclk;
 =09else if (IS_I945GM(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D i945gm_get_cdclk;
+=09=09dev_priv->cdclk_funcs.get_cdclk =3D i945gm_get_cdclk;
 =09else if (IS_I945G(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D fixed_400mhz_get_cdclk;
+=09=09dev_priv->cdclk_funcs.get_cdclk =3D fixed_400mhz_get_cdclk;
 =09else if (IS_I915GM(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D i915gm_get_cdclk;
+=09=09dev_priv->cdclk_funcs.get_cdclk =3D i915gm_get_cdclk;
 =09else if (IS_I915G(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D fixed_333mhz_get_cdclk;
+=09=09dev_priv->cdclk_funcs.get_cdclk =3D fixed_333mhz_get_cdclk;
 =09else if (IS_I865G(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D fixed_266mhz_get_cdclk;
+=09=09dev_priv->cdclk_funcs.get_cdclk =3D fixed_266mhz_get_cdclk;
 =09else if (IS_I85X(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D i85x_get_cdclk;
+=09=09dev_priv->cdclk_funcs.get_cdclk =3D i85x_get_cdclk;
 =09else if (IS_I845G(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D fixed_200mhz_get_cdclk;
+=09=09dev_priv->cdclk_funcs.get_cdclk =3D fixed_200mhz_get_cdclk;
 =09else if (IS_I830(dev_priv))
-=09=09dev_priv->display.get_cdclk =3D fixed_133mhz_get_cdclk;
+=09=09dev_priv->cdclk_funcs.get_cdclk =3D fixed_133mhz_get_cdclk;
=20
-=09if (drm_WARN(&dev_priv->drm, !dev_priv->display.get_cdclk,
+=09if (drm_WARN(&dev_priv->drm, !dev_priv->cdclk_funcs.get_cdclk,
 =09=09     "Unknown platform. Assuming 133 MHz CDCLK\n"))
-=09=09dev_priv->display.get_cdclk =3D fixed_133mhz_get_cdclk;
+=09=09dev_priv->cdclk_funcs.get_cdclk =3D fixed_133mhz_get_cdclk;
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 1ba94dee683e..11298f583cc0 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -373,7 +373,7 @@ struct intel_audio_funcs {
 =09=09=09=09    const struct drm_connector_state *old_conn_state);
 };
=20
-struct drm_i915_display_funcs {
+struct intel_cdclk_funcs {
 =09void (*get_cdclk)(struct drm_i915_private *dev_priv,
 =09=09=09  struct intel_cdclk_config *cdclk_config);
 =09void (*set_cdclk)(struct drm_i915_private *dev_priv,
@@ -382,6 +382,9 @@ struct drm_i915_display_funcs {
 =09int (*bw_calc_min_cdclk)(struct intel_atomic_state *state);
 =09int (*modeset_calc_cdclk)(struct intel_cdclk_state *state);
 =09u8 (*calc_voltage_level)(int cdclk);
+};
+
+struct drm_i915_display_funcs {
 =09/* Returns the active state of the crtc, and if the crtc is active,
 =09 * fills out the pipe-config with the hw state. */
 =09bool (*get_pipe_config)(struct intel_crtc *,
@@ -984,6 +987,9 @@ struct drm_i915_private {
 =09/* Display internal audio functions */
 =09struct intel_audio_funcs audio_funcs;
=20
+=09/* Display CDCLK functions */
+=09struct intel_cdclk_funcs cdclk_funcs;
+
 =09/* PCH chipset type */
 =09enum intel_pch pch_type;
 =09unsigned short pch_id;
--=20
2.31.1

