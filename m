Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F96F40429D
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 03:11:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 319CC6E413;
	Thu,  9 Sep 2021 01:11:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 181A66E40F
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 01:11:26 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-541-zdynDOl-Mvqsf-gCxpatWw-1; Wed, 08 Sep 2021 21:11:21 -0400
X-MC-Unique: zdynDOl-Mvqsf-gCxpatWw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9C66018414A3;
 Thu,  9 Sep 2021 01:11:18 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 56A821972E;
 Thu,  9 Sep 2021 01:11:17 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Thu,  9 Sep 2021 11:10:44 +1000
Message-Id: <20210909011100.2987971-8-airlied@gmail.com>
In-Reply-To: <20210909011100.2987971-1-airlied@gmail.com>
References: <20210909011100.2987971-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 07/23] drm/i915: split watermark vfuncs from
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

These are the watermark api between display and pm.

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 35 ++++++++---------
 drivers/gpu/drm/i915/i915_drv.h              | 24 ++++++++----
 drivers/gpu/drm/i915/intel_pm.c              | 40 ++++++++++----------
 3 files changed, 54 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index f2678d26cd17..413bc4667e47 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -162,16 +162,16 @@ static void intel_modeset_setup_hw_state(struct drm_d=
evice *dev,
  */
 static void intel_update_watermarks(struct drm_i915_private *dev_priv)
 {
-=09if (dev_priv->display.update_wm)
-=09=09dev_priv->display.update_wm(dev_priv);
+=09if (dev_priv->wm_disp.update_wm)
+=09=09dev_priv->wm_disp.update_wm(dev_priv);
 }
=20
 static int intel_compute_pipe_wm(struct intel_atomic_state *state,
 =09=09=09=09 struct intel_crtc *crtc)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
-=09if (dev_priv->display.compute_pipe_wm)
-=09=09return dev_priv->display.compute_pipe_wm(state, crtc);
+=09if (dev_priv->wm_disp.compute_pipe_wm)
+=09=09return dev_priv->wm_disp.compute_pipe_wm(state, crtc);
 =09return 0;
 }
=20
@@ -180,10 +180,10 @@ static int intel_compute_intermediate_wm(struct intel=
_atomic_state *state,
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
 =09if (drm_WARN_ON(&dev_priv->drm,
-=09=09=09!dev_priv->display.compute_pipe_wm))
+=09=09=09!dev_priv->wm_disp.compute_pipe_wm))
 =09=09return 0;
-=09if (dev_priv->display.compute_pipe_wm)
-=09=09return dev_priv->display.compute_intermediate_wm(state, crtc);
+=09if (dev_priv->wm_disp.compute_pipe_wm)
+=09=09return dev_priv->wm_disp.compute_intermediate_wm(state, crtc);
 =09return 0;
 }
=20
@@ -191,8 +191,8 @@ static bool intel_initial_watermarks(struct intel_atomi=
c_state *state,
 =09=09=09=09     struct intel_crtc *crtc)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
-=09if (dev_priv->display.initial_watermarks) {
-=09=09dev_priv->display.initial_watermarks(state, crtc);
+=09if (dev_priv->wm_disp.initial_watermarks) {
+=09=09dev_priv->wm_disp.initial_watermarks(state, crtc);
 =09=09return true;
 =09}
 =09return false;
@@ -202,23 +202,23 @@ static void intel_atomic_update_watermarks(struct int=
el_atomic_state *state,
 =09=09=09=09=09   struct intel_crtc *crtc)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
-=09if (dev_priv->display.atomic_update_watermarks)
-=09=09dev_priv->display.atomic_update_watermarks(state, crtc);
+=09if (dev_priv->wm_disp.atomic_update_watermarks)
+=09=09dev_priv->wm_disp.atomic_update_watermarks(state, crtc);
 }
=20
 static void intel_optimize_watermarks(struct intel_atomic_state *state,
 =09=09=09=09      struct intel_crtc *crtc)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
-=09if (dev_priv->display.optimize_watermarks)
-=09=09dev_priv->display.optimize_watermarks(state, crtc);
+=09if (dev_priv->wm_disp.optimize_watermarks)
+=09=09dev_priv->wm_disp.optimize_watermarks(state, crtc);
 }
=20
 static void intel_compute_global_watermarks(struct intel_atomic_state *sta=
te)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
-=09if (dev_priv->display.compute_global_watermarks)
-=09=09dev_priv->display.compute_global_watermarks(state);
+=09if (dev_priv->wm_disp.compute_global_watermarks)
+=09=09dev_priv->wm_disp.compute_global_watermarks(state);
 }
=20
 /* returns HPLL frequency in kHz */
@@ -3669,6 +3669,7 @@ static void i9xx_crtc_enable(struct intel_atomic_stat=
e *state,
=20
 =09if (!intel_initial_watermarks(state, crtc))
 =09    intel_update_watermarks(dev_priv);
+
 =09intel_enable_pipe(new_crtc_state);
=20
 =09intel_crtc_vblank_on(new_crtc_state);
@@ -3734,7 +3735,7 @@ static void i9xx_crtc_disable(struct intel_atomic_sta=
te *state,
 =09if (DISPLAY_VER(dev_priv) !=3D 2)
 =09=09intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
=20
-=09if (!dev_priv->display.initial_watermarks)
+=09if (!dev_priv->wm_disp.initial_watermarks)
 =09=09intel_update_watermarks(dev_priv);
=20
 =09/* clock the pipe down to 640x480@60 to potentially save power */
@@ -11387,7 +11388,7 @@ static void sanitize_watermarks(struct drm_i915_pri=
vate *dev_priv)
 =09int i;
=20
 =09/* Only supported on platforms that use atomic watermark design */
-=09if (!dev_priv->display.optimize_watermarks)
+=09if (!dev_priv->wm_disp.optimize_watermarks)
 =09=09return;
=20
 =09state =3D drm_atomic_state_alloc(&dev_priv->drm);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 48d30b967def..e70587cf8679 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -328,13 +328,10 @@ struct drm_i915_clock_gating_funcs {
 =09void (*init_clock_gating)(struct drm_i915_private *dev_priv);
 };
=20
-struct drm_i915_display_funcs {
-=09void (*get_cdclk)(struct drm_i915_private *dev_priv,
-=09=09=09  struct intel_cdclk_config *cdclk_config);
-=09void (*set_cdclk)(struct drm_i915_private *dev_priv,
-=09=09=09  const struct intel_cdclk_config *cdclk_config,
-=09=09=09  enum pipe pipe);
-=09int (*bw_calc_min_cdclk)(struct intel_atomic_state *state);
+/* functions used for watermark calcs for display. */
+struct drm_i915_wm_disp_funcs {
+=09/* update_wm is for legacy wm management */
+=09void (*update_wm)(struct drm_i915_private *dev_priv);
 =09int (*compute_pipe_wm)(struct intel_atomic_state *state,
 =09=09=09       struct intel_crtc *crtc);
 =09int (*compute_intermediate_wm)(struct intel_atomic_state *state,
@@ -346,7 +343,15 @@ struct drm_i915_display_funcs {
 =09void (*optimize_watermarks)(struct intel_atomic_state *state,
 =09=09=09=09    struct intel_crtc *crtc);
 =09int (*compute_global_watermarks)(struct intel_atomic_state *state);
-=09void (*update_wm)(struct drm_i915_private *dev_priv);
+};
+
+struct drm_i915_display_funcs {
+=09void (*get_cdclk)(struct drm_i915_private *dev_priv,
+=09=09=09  struct intel_cdclk_config *cdclk_config);
+=09void (*set_cdclk)(struct drm_i915_private *dev_priv,
+=09=09=09  const struct intel_cdclk_config *cdclk_config,
+=09=09=09  enum pipe pipe);
+=09int (*bw_calc_min_cdclk)(struct intel_atomic_state *state);
 =09int (*modeset_calc_cdclk)(struct intel_cdclk_state *state);
 =09u8 (*calc_voltage_level)(int cdclk);
 =09/* Returns the active state of the crtc, and if the crtc is active,
@@ -961,6 +966,9 @@ struct drm_i915_private {
 =09/* pm private clock gating functions */
 =09struct drm_i915_clock_gating_funcs clock_gating_funcs;
=20
+=09/* pm display functions */
+=09struct drm_i915_wm_disp_funcs wm_disp;
+
 =09/* Display functions */
 =09struct drm_i915_display_funcs display;
=20
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_p=
m.c
index add50ff01d7c..826216a115fd 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7962,7 +7962,7 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
 =09/* For FIFO watermark updates */
 =09if (DISPLAY_VER(dev_priv) >=3D 9) {
 =09=09skl_setup_wm_latency(dev_priv);
-=09=09dev_priv->display.compute_global_watermarks =3D skl_compute_wm;
+=09=09dev_priv->wm_disp.compute_global_watermarks =3D skl_compute_wm;
 =09} else if (HAS_PCH_SPLIT(dev_priv)) {
 =09=09ilk_setup_wm_latency(dev_priv);
=20
@@ -7970,12 +7970,12 @@ void intel_init_pm(struct drm_i915_private *dev_pri=
v)
 =09=09     dev_priv->wm.spr_latency[1] && dev_priv->wm.cur_latency[1]) ||
 =09=09    (DISPLAY_VER(dev_priv) !=3D 5 && dev_priv->wm.pri_latency[0] &&
 =09=09     dev_priv->wm.spr_latency[0] && dev_priv->wm.cur_latency[0])) {
-=09=09=09dev_priv->display.compute_pipe_wm =3D ilk_compute_pipe_wm;
-=09=09=09dev_priv->display.compute_intermediate_wm =3D
+=09=09=09dev_priv->wm_disp.compute_pipe_wm =3D ilk_compute_pipe_wm;
+=09=09=09dev_priv->wm_disp.compute_intermediate_wm =3D
 =09=09=09=09ilk_compute_intermediate_wm;
-=09=09=09dev_priv->display.initial_watermarks =3D
+=09=09=09dev_priv->wm_disp.initial_watermarks =3D
 =09=09=09=09ilk_initial_watermarks;
-=09=09=09dev_priv->display.optimize_watermarks =3D
+=09=09=09dev_priv->wm_disp.optimize_watermarks =3D
 =09=09=09=09ilk_optimize_watermarks;
 =09=09} else {
 =09=09=09drm_dbg_kms(&dev_priv->drm,
@@ -7984,17 +7984,17 @@ void intel_init_pm(struct drm_i915_private *dev_pri=
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
+=09=09dev_priv->wm_disp.compute_pipe_wm =3D vlv_compute_pipe_wm;
+=09=09dev_priv->wm_disp.compute_intermediate_wm =3D vlv_compute_intermedia=
te_wm;
+=09=09dev_priv->wm_disp.initial_watermarks =3D vlv_initial_watermarks;
+=09=09dev_priv->wm_disp.optimize_watermarks =3D vlv_optimize_watermarks;
+=09=09dev_priv->wm_disp.atomic_update_watermarks =3D vlv_atomic_update_fif=
o;
 =09} else if (IS_G4X(dev_priv)) {
 =09=09g4x_setup_wm_latency(dev_priv);
-=09=09dev_priv->display.compute_pipe_wm =3D g4x_compute_pipe_wm;
-=09=09dev_priv->display.compute_intermediate_wm =3D g4x_compute_intermedia=
te_wm;
-=09=09dev_priv->display.initial_watermarks =3D g4x_initial_watermarks;
-=09=09dev_priv->display.optimize_watermarks =3D g4x_optimize_watermarks;
+=09=09dev_priv->wm_disp.compute_pipe_wm =3D g4x_compute_pipe_wm;
+=09=09dev_priv->wm_disp.compute_intermediate_wm =3D g4x_compute_intermedia=
te_wm;
+=09=09dev_priv->wm_disp.initial_watermarks =3D g4x_initial_watermarks;
+=09=09dev_priv->wm_disp.optimize_watermarks =3D g4x_optimize_watermarks;
 =09} else if (IS_PINEVIEW(dev_priv)) {
 =09=09if (!intel_get_cxsr_latency(!IS_MOBILE(dev_priv),
 =09=09=09=09=09    dev_priv->is_ddr3,
@@ -8008,18 +8008,18 @@ void intel_init_pm(struct drm_i915_private *dev_pri=
v)
 =09=09=09=09 dev_priv->fsb_freq, dev_priv->mem_freq);
 =09=09=09/* Disable CxSR and never update its watermark again */
 =09=09=09intel_set_memory_cxsr(dev_priv, false);
-=09=09=09dev_priv->display.update_wm =3D NULL;
+=09=09=09dev_priv->wm_disp.update_wm =3D NULL;
 =09=09} else
-=09=09=09dev_priv->display.update_wm =3D pnv_update_wm;
+=09=09=09dev_priv->wm_disp.update_wm =3D pnv_update_wm;
 =09} else if (DISPLAY_VER(dev_priv) =3D=3D 4) {
-=09=09dev_priv->display.update_wm =3D i965_update_wm;
+=09=09dev_priv->wm_disp.update_wm =3D i965_update_wm;
 =09} else if (DISPLAY_VER(dev_priv) =3D=3D 3) {
-=09=09dev_priv->display.update_wm =3D i9xx_update_wm;
+=09=09dev_priv->wm_disp.update_wm =3D i9xx_update_wm;
 =09} else if (DISPLAY_VER(dev_priv) =3D=3D 2) {
 =09=09if (INTEL_NUM_PIPES(dev_priv) =3D=3D 1)
-=09=09=09dev_priv->display.update_wm =3D i845_update_wm;
+=09=09=09dev_priv->wm_disp.update_wm =3D i845_update_wm;
 =09=09else
-=09=09=09dev_priv->display.update_wm =3D i9xx_update_wm;
+=09=09=09dev_priv->wm_disp.update_wm =3D i9xx_update_wm;
 =09} else {
 =09=09drm_err(&dev_priv->drm,
 =09=09=09"unexpected fall-through in %s\n", __func__);
--=20
2.31.1

