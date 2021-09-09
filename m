Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A92D404346
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 03:53:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ACBB6E42A;
	Thu,  9 Sep 2021 01:53:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E99E16E42A
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 01:53:41 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-564-nRRe70P0OQyGuahGZqD4NA-1; Wed, 08 Sep 2021 21:53:37 -0400
X-MC-Unique: nRRe70P0OQyGuahGZqD4NA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0515618414A0;
 Thu,  9 Sep 2021 01:53:37 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B24D31A26A;
 Thu,  9 Sep 2021 01:53:35 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Thu,  9 Sep 2021 11:53:02 +1000
Message-Id: <20210909015322.2988500-4-airlied@gmail.com>
In-Reply-To: <20210909015322.2988500-1-airlied@gmail.com>
References: <20210909015322.2988500-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 03/23] drm/i915/wm: provide wrappers around
 watermark vfuncs calls
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

This moves one wrapper from the pm->display side, and creates
wrappers for all the others, this should simplify things later.

One thing to note is that the code checks the existance of some
of these ptrs, so the wrappers are a bit complicated by that.

Suggested by Jani.

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 187 ++++++++++++-------
 drivers/gpu/drm/i915/intel_pm.c              |  39 ----
 drivers/gpu/drm/i915/intel_pm.h              |   1 -
 3 files changed, 123 insertions(+), 104 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index e62f8317cbda..3d8afa9f3237 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -126,6 +126,101 @@ static void ilk_pfit_enable(const struct intel_crtc_s=
tate *crtc_state);
 static void intel_modeset_setup_hw_state(struct drm_device *dev,
 =09=09=09=09=09 struct drm_modeset_acquire_ctx *ctx);
=20
+
+/**
+ * intel_update_watermarks - update FIFO watermark values based on current=
 modes
+ * @crtc: the #intel_crtc on which to compute the WM
+ *
+ * Calculate watermark values for the various WM regs based on current mod=
e
+ * and plane configuration.
+ *
+ * There are several cases to deal with here:
+ *   - normal (i.e. non-self-refresh)
+ *   - self-refresh (SR) mode
+ *   - lines are large relative to FIFO size (buffer can hold up to 2)
+ *   - lines are small relative to FIFO size (buffer can hold more than 2
+ *     lines), so need to account for TLB latency
+ *
+ *   The normal calculation is:
+ *     watermark =3D dotclock * bytes per pixel * latency
+ *   where latency is platform & configuration dependent (we assume pessim=
al
+ *   values here).
+ *
+ *   The SR calculation is:
+ *     watermark =3D (trunc(latency/line time)+1) * surface width *
+ *       bytes per pixel
+ *   where
+ *     line time =3D htotal / dotclock
+ *     surface width =3D hdisplay for normal plane and 64 for cursor
+ *   and latency is assumed to be high, as above.
+ *
+ * The final value programmed to the register should always be rounded up,
+ * and include an extra 2 entries to account for clock crossings.
+ *
+ * We don't use the sprite, so we can ignore that.  And on Crestline we ha=
ve
+ * to set the non-SR watermarks to 8.
+ */
+static void intel_update_watermarks(struct drm_i915_private *dev_priv)
+{
+=09if (dev_priv->display.update_wm)
+=09=09dev_priv->display.update_wm(dev_priv);
+}
+
+static int intel_compute_pipe_wm(struct intel_atomic_state *state,
+=09=09=09=09 struct intel_crtc *crtc)
+{
+=09struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
+=09if (dev_priv->display.compute_pipe_wm)
+=09=09return dev_priv->display.compute_pipe_wm(state, crtc);
+=09return 0;
+}
+
+static int intel_compute_intermediate_wm(struct intel_atomic_state *state,
+=09=09=09=09=09 struct intel_crtc *crtc)
+{
+=09struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
+=09if (drm_WARN_ON(&dev_priv->drm,
+=09=09=09!dev_priv->display.compute_pipe_wm))
+=09=09return 0;
+=09if (dev_priv->display.compute_pipe_wm)
+=09=09return dev_priv->display.compute_intermediate_wm(state, crtc);
+=09return 0;
+}
+
+static bool intel_initial_watermarks(struct intel_atomic_state *state,
+=09=09=09=09     struct intel_crtc *crtc)
+{
+=09struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
+=09if (dev_priv->display.initial_watermarks) {
+=09=09dev_priv->display.initial_watermarks(state, crtc);
+=09=09return true;
+=09}
+=09return false;
+}
+
+static void intel_atomic_update_watermarks(struct intel_atomic_state *stat=
e,
+=09=09=09=09=09   struct intel_crtc *crtc)
+{
+=09struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
+=09if (dev_priv->display.atomic_update_watermarks)
+=09=09dev_priv->display.atomic_update_watermarks(state, crtc);
+}
+
+static void intel_optimize_watermarks(struct intel_atomic_state *state,
+=09=09=09=09      struct intel_crtc *crtc)
+{
+=09struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
+=09if (dev_priv->display.optimize_watermarks)
+=09=09dev_priv->display.optimize_watermarks(state, crtc);
+}
+
+static void intel_compute_global_watermarks(struct intel_atomic_state *sta=
te)
+{
+=09struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
+=09if (dev_priv->display.compute_global_watermarks)
+=09=09dev_priv->display.compute_global_watermarks(state);
+}
+
 /* returns HPLL frequency in kHz */
 int vlv_get_hpll_vco(struct drm_i915_private *dev_priv)
 {
@@ -2528,9 +2623,8 @@ static void intel_pre_plane_update(struct intel_atomi=
c_state *state,
 =09=09 * we'll continue to update watermarks the old way, if flags tell
 =09=09 * us to.
 =09=09 */
-=09=09if (dev_priv->display.initial_watermarks)
-=09=09=09dev_priv->display.initial_watermarks(state, crtc);
-=09=09else if (new_crtc_state->update_wm_pre)
+=09=09if (!intel_initial_watermarks(state, crtc))
+=09=09    if (new_crtc_state->update_wm_pre)
 =09=09=09intel_update_watermarks(dev_priv);
 =09}
=20
@@ -2903,8 +2997,7 @@ static void ilk_crtc_enable(struct intel_atomic_state=
 *state,
 =09/* update DSPCNTR to configure gamma for pipe bottom color */
 =09intel_disable_primary_plane(new_crtc_state);
=20
-=09if (dev_priv->display.initial_watermarks)
-=09=09dev_priv->display.initial_watermarks(state, crtc);
+=09intel_initial_watermarks(state, crtc);
 =09intel_enable_pipe(new_crtc_state);
=20
 =09if (new_crtc_state->has_pch_encoder)
@@ -3114,8 +3207,7 @@ static void hsw_crtc_enable(struct intel_atomic_state=
 *state,
 =09if (DISPLAY_VER(dev_priv) >=3D 11)
 =09=09icl_set_pipe_chicken(new_crtc_state);
=20
-=09if (dev_priv->display.initial_watermarks)
-=09=09dev_priv->display.initial_watermarks(state, crtc);
+=09intel_initial_watermarks(state, crtc);
=20
 =09if (DISPLAY_VER(dev_priv) >=3D 11) {
 =09=09const struct intel_dbuf_state *dbuf_state =3D
@@ -3532,7 +3624,7 @@ static void valleyview_crtc_enable(struct intel_atomi=
c_state *state,
 =09/* update DSPCNTR to configure gamma for pipe bottom color */
 =09intel_disable_primary_plane(new_crtc_state);
=20
-=09dev_priv->display.initial_watermarks(state, crtc);
+=09intel_initial_watermarks(state, crtc);
 =09intel_enable_pipe(new_crtc_state);
=20
 =09intel_crtc_vblank_on(new_crtc_state);
@@ -3575,10 +3667,8 @@ static void i9xx_crtc_enable(struct intel_atomic_sta=
te *state,
 =09/* update DSPCNTR to configure gamma for pipe bottom color */
 =09intel_disable_primary_plane(new_crtc_state);
=20
-=09if (dev_priv->display.initial_watermarks)
-=09=09dev_priv->display.initial_watermarks(state, crtc);
-=09else
-=09=09intel_update_watermarks(dev_priv);
+=09if (!intel_initial_watermarks(state, crtc))
+=09    intel_update_watermarks(dev_priv);
 =09intel_enable_pipe(new_crtc_state);
=20
 =09intel_crtc_vblank_on(new_crtc_state);
@@ -6752,32 +6842,23 @@ static int intel_crtc_atomic_check(struct intel_ato=
mic_state *state,
 =09=09=09return ret;
 =09}
=20
-=09if (dev_priv->display.compute_pipe_wm) {
-=09=09ret =3D dev_priv->display.compute_pipe_wm(state, crtc);
-=09=09if (ret) {
-=09=09=09drm_dbg_kms(&dev_priv->drm,
-=09=09=09=09    "Target pipe watermarks are invalid\n");
-=09=09=09return ret;
-=09=09}
-
+=09ret =3D intel_compute_pipe_wm(state, crtc);
+=09if (ret) {
+=09=09drm_dbg_kms(&dev_priv->drm,
+=09=09=09    "Target pipe watermarks are invalid\n");
+=09=09return ret;
 =09}
=20
-=09if (dev_priv->display.compute_intermediate_wm) {
-=09=09if (drm_WARN_ON(&dev_priv->drm,
-=09=09=09=09!dev_priv->display.compute_pipe_wm))
-=09=09=09return 0;
-
-=09=09/*
-=09=09 * Calculate 'intermediate' watermarks that satisfy both the
-=09=09 * old state and the new state.  We can program these
-=09=09 * immediately.
-=09=09 */
-=09=09ret =3D dev_priv->display.compute_intermediate_wm(state, crtc);
-=09=09if (ret) {
-=09=09=09drm_dbg_kms(&dev_priv->drm,
-=09=09=09=09    "No valid intermediate pipe watermarks are possible\n");
-=09=09=09return ret;
-=09=09}
+=09/*
+=09 * Calculate 'intermediate' watermarks that satisfy both the
+=09 * old state and the new state.  We can program these
+=09 * immediately.
+=09 */
+=09ret =3D intel_compute_intermediate_wm(state, crtc);
+=09if (ret) {
+=09=09drm_dbg_kms(&dev_priv->drm,
+=09=09=09    "No valid intermediate pipe watermarks are possible\n");
+=09=09return ret;
 =09}
=20
 =09if (DISPLAY_VER(dev_priv) >=3D 9) {
@@ -8870,23 +8951,6 @@ static int intel_modeset_checks(struct intel_atomic_=
state *state)
 =09return 0;
 }
=20
-/*
- * Handle calculation of various watermark data at the end of the atomic c=
heck
- * phase.  The code here should be run after the per-crtc and per-plane 'c=
heck'
- * handlers to ensure that all derived state has been updated.
- */
-static int calc_watermark_data(struct intel_atomic_state *state)
-{
-=09struct drm_device *dev =3D state->base.dev;
-=09struct drm_i915_private *dev_priv =3D to_i915(dev);
-
-=09/* Is there platform-specific watermark information to calculate? */
-=09if (dev_priv->display.compute_global_watermarks)
-=09=09return dev_priv->display.compute_global_watermarks(state);
-
-=09return 0;
-}
-
 static void intel_crtc_check_fastset(const struct intel_crtc_state *old_cr=
tc_state,
 =09=09=09=09     struct intel_crtc_state *new_crtc_state)
 {
@@ -9533,9 +9597,7 @@ static int intel_atomic_check(struct drm_device *dev,
 =09=09goto fail;
=20
 =09intel_fbc_choose_crtc(dev_priv, state);
-=09ret =3D calc_watermark_data(state);
-=09if (ret)
-=09=09goto fail;
+=09intel_compute_global_watermarks(state);
=20
 =09ret =3D intel_bw_atomic_check(state);
 =09if (ret)
@@ -9707,8 +9769,7 @@ static void commit_pipe_pre_planes(struct intel_atomi=
c_state *state,
 =09=09intel_psr2_program_trans_man_trk_ctl(new_crtc_state);
 =09}
=20
-=09if (dev_priv->display.atomic_update_watermarks)
-=09=09dev_priv->display.atomic_update_watermarks(state, crtc);
+=09intel_atomic_update_watermarks(state, crtc);
 }
=20
 static void commit_pipe_post_planes(struct intel_atomic_state *state,
@@ -9835,9 +9896,8 @@ static void intel_old_crtc_state_disables(struct inte=
l_atomic_state *state,
=20
 =09/* FIXME unify this for all platforms */
 =09if (!new_crtc_state->hw.active &&
-=09    !HAS_GMCH(dev_priv) &&
-=09    dev_priv->display.initial_watermarks)
-=09=09dev_priv->display.initial_watermarks(state, crtc);
+=09    !HAS_GMCH(dev_priv))
+=09=09intel_initial_watermarks(state, crtc);
 }
=20
 static void intel_commit_modeset_disables(struct intel_atomic_state *state=
)
@@ -10259,8 +10319,7 @@ static void intel_atomic_commit_tail(struct intel_a=
tomic_state *state)
 =09=09if (DISPLAY_VER(dev_priv) =3D=3D 2 && planes_enabling(old_crtc_state=
, new_crtc_state))
 =09=09=09intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, true)=
;
=20
-=09=09if (dev_priv->display.optimize_watermarks)
-=09=09=09dev_priv->display.optimize_watermarks(state, crtc);
+=09=09intel_optimize_watermarks(state, crtc);
 =09}
=20
 =09intel_dbuf_post_plane_update(state);
@@ -11361,7 +11420,7 @@ static void sanitize_watermarks(struct drm_i915_pri=
vate *dev_priv)
 =09/* Write calculated watermark values back */
 =09for_each_new_intel_crtc_in_state(intel_state, crtc, crtc_state, i) {
 =09=09crtc_state->wm.need_postvbl_update =3D true;
-=09=09dev_priv->display.optimize_watermarks(intel_state, crtc);
+=09=09intel_optimize_watermarks(intel_state, crtc);
=20
 =09=09to_intel_crtc_state(crtc->base.state)->wm =3D crtc_state->wm;
 =09}
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_p=
m.c
index 406baa49e6ad..4054c6f7a2f9 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7132,45 +7132,6 @@ void ilk_wm_get_hw_state(struct drm_i915_private *de=
v_priv)
 =09=09!(intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) & DISP_FBC_WM_D=
IS);
 }
=20
-/**
- * intel_update_watermarks - update FIFO watermark values based on current=
 modes
- * @crtc: the #intel_crtc on which to compute the WM
- *
- * Calculate watermark values for the various WM regs based on current mod=
e
- * and plane configuration.
- *
- * There are several cases to deal with here:
- *   - normal (i.e. non-self-refresh)
- *   - self-refresh (SR) mode
- *   - lines are large relative to FIFO size (buffer can hold up to 2)
- *   - lines are small relative to FIFO size (buffer can hold more than 2
- *     lines), so need to account for TLB latency
- *
- *   The normal calculation is:
- *     watermark =3D dotclock * bytes per pixel * latency
- *   where latency is platform & configuration dependent (we assume pessim=
al
- *   values here).
- *
- *   The SR calculation is:
- *     watermark =3D (trunc(latency/line time)+1) * surface width *
- *       bytes per pixel
- *   where
- *     line time =3D htotal / dotclock
- *     surface width =3D hdisplay for normal plane and 64 for cursor
- *   and latency is assumed to be high, as above.
- *
- * The final value programmed to the register should always be rounded up,
- * and include an extra 2 entries to account for clock crossings.
- *
- * We don't use the sprite, so we can ignore that.  And on Crestline we ha=
ve
- * to set the non-SR watermarks to 8.
- */
-void intel_update_watermarks(struct drm_i915_private *dev_priv)
-{
-=09if (dev_priv->display.update_wm)
-=09=09dev_priv->display.update_wm(dev_priv);
-}
-
 void intel_enable_ipc(struct drm_i915_private *dev_priv)
 {
 =09u32 val;
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_p=
m.h
index 99bce0b4f5fb..990cdcaf85ce 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -29,7 +29,6 @@ struct skl_wm_level;
 void intel_init_clock_gating(struct drm_i915_private *dev_priv);
 void intel_suspend_hw(struct drm_i915_private *dev_priv);
 int ilk_wm_max_level(const struct drm_i915_private *dev_priv);
-void intel_update_watermarks(struct drm_i915_private *dev_priv);
 void intel_init_pm(struct drm_i915_private *dev_priv);
 void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv);
 void intel_pm_setup(struct drm_i915_private *dev_priv);
--=20
2.31.1

