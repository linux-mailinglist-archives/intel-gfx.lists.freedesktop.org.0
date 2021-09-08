Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D214031F2
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 02:40:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F154C6E106;
	Wed,  8 Sep 2021 00:40:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ECB56E106
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 00:40:39 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-355-SanweyWPMQSFOTpZaqNnjg-1; Tue, 07 Sep 2021 20:40:36 -0400
X-MC-Unique: SanweyWPMQSFOTpZaqNnjg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 00BA61006C98;
 Wed,  8 Sep 2021 00:40:36 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 97EDD60C7F;
 Wed,  8 Sep 2021 00:40:34 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Wed,  8 Sep 2021 10:39:44 +1000
Message-Id: <20210908003944.2972024-22-airlied@gmail.com>
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
Subject: [Intel-gfx] [PATCH 21/21] drm/i915: constify display wm vtable
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

This adds some extra checks for the table pointer being
valid due to some paths not setting it due to failing
CxSR.
---
 drivers/gpu/drm/i915/display/intel_display.c | 56 ++++++++-------
 drivers/gpu/drm/i915/i915_drv.h              |  2 +-
 drivers/gpu/drm/i915/intel_pm.c              | 74 ++++++++++++++------
 3 files changed, 81 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index 20fd35c6858c..a3d6ab0795a3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -161,8 +161,8 @@ static void intel_modeset_setup_hw_state(struct drm_dev=
ice *dev,
  */
 static void intel_update_watermarks(struct drm_i915_private *dev_priv)
 {
-=09if (dev_priv->wm_disp.update_wm)
-=09=09dev_priv->wm_disp.update_wm(dev_priv);
+=09if (dev_priv->wm_disp && dev_priv->wm_disp->update_wm)
+=09=09dev_priv->wm_disp->update_wm(dev_priv);
 }
=20
 /* returns HPLL frequency in kHz */
@@ -2566,8 +2566,8 @@ static void intel_pre_plane_update(struct intel_atomi=
c_state *state,
 =09=09 * we'll continue to update watermarks the old way, if flags tell
 =09=09 * us to.
 =09=09 */
-=09=09if (dev_priv->wm_disp.initial_watermarks)
-=09=09=09dev_priv->wm_disp.initial_watermarks(state, crtc);
+=09=09if (dev_priv->wm_disp->initial_watermarks)
+=09=09=09dev_priv->wm_disp->initial_watermarks(state, crtc);
 =09=09else if (new_crtc_state->update_wm_pre)
 =09=09=09intel_update_watermarks(dev_priv);
 =09}
@@ -2941,8 +2941,8 @@ static void ilk_crtc_enable(struct intel_atomic_state=
 *state,
 =09/* update DSPCNTR to configure gamma for pipe bottom color */
 =09intel_disable_primary_plane(new_crtc_state);
=20
-=09if (dev_priv->wm_disp.initial_watermarks)
-=09=09dev_priv->wm_disp.initial_watermarks(state, crtc);
+=09if (dev_priv->wm_disp->initial_watermarks)
+=09=09dev_priv->wm_disp->initial_watermarks(state, crtc);
 =09intel_enable_pipe(new_crtc_state);
=20
 =09if (new_crtc_state->has_pch_encoder)
@@ -3152,8 +3152,8 @@ static void hsw_crtc_enable(struct intel_atomic_state=
 *state,
 =09if (DISPLAY_VER(dev_priv) >=3D 11)
 =09=09icl_set_pipe_chicken(new_crtc_state);
=20
-=09if (dev_priv->wm_disp.initial_watermarks)
-=09=09dev_priv->wm_disp.initial_watermarks(state, crtc);
+=09if (dev_priv->wm_disp && dev_priv->wm_disp->initial_watermarks)
+=09=09dev_priv->wm_disp->initial_watermarks(state, crtc);
=20
 =09if (DISPLAY_VER(dev_priv) >=3D 11) {
 =09=09const struct intel_dbuf_state *dbuf_state =3D
@@ -3570,7 +3570,7 @@ static void valleyview_crtc_enable(struct intel_atomi=
c_state *state,
 =09/* update DSPCNTR to configure gamma for pipe bottom color */
 =09intel_disable_primary_plane(new_crtc_state);
=20
-=09dev_priv->wm_disp.initial_watermarks(state, crtc);
+=09dev_priv->wm_disp->initial_watermarks(state, crtc);
 =09intel_enable_pipe(new_crtc_state);
=20
 =09intel_crtc_vblank_on(new_crtc_state);
@@ -3613,8 +3613,8 @@ static void i9xx_crtc_enable(struct intel_atomic_stat=
e *state,
 =09/* update DSPCNTR to configure gamma for pipe bottom color */
 =09intel_disable_primary_plane(new_crtc_state);
=20
-=09if (dev_priv->wm_disp.initial_watermarks)
-=09=09dev_priv->wm_disp.initial_watermarks(state, crtc);
+=09if (dev_priv->wm_disp && dev_priv->wm_disp->initial_watermarks)
+=09=09dev_priv->wm_disp->initial_watermarks(state, crtc);
 =09else
 =09=09intel_update_watermarks(dev_priv);
 =09intel_enable_pipe(new_crtc_state);
@@ -3682,7 +3682,7 @@ static void i9xx_crtc_disable(struct intel_atomic_sta=
te *state,
 =09if (DISPLAY_VER(dev_priv) !=3D 2)
 =09=09intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
=20
-=09if (!dev_priv->wm_disp.initial_watermarks)
+=09if (dev_priv->wm_disp && !dev_priv->wm_disp->initial_watermarks)
 =09=09intel_update_watermarks(dev_priv);
=20
 =09/* clock the pipe down to 640x480@60 to potentially save power */
@@ -6790,8 +6790,8 @@ static int intel_crtc_atomic_check(struct intel_atomi=
c_state *state,
 =09=09=09return ret;
 =09}
=20
-=09if (dev_priv->wm_disp.compute_pipe_wm) {
-=09=09ret =3D dev_priv->wm_disp.compute_pipe_wm(state, crtc);
+=09if (dev_priv->wm_disp && dev_priv->wm_disp->compute_pipe_wm) {
+=09=09ret =3D dev_priv->wm_disp->compute_pipe_wm(state, crtc);
 =09=09if (ret) {
 =09=09=09drm_dbg_kms(&dev_priv->drm,
 =09=09=09=09    "Target pipe watermarks are invalid\n");
@@ -6800,9 +6800,9 @@ static int intel_crtc_atomic_check(struct intel_atomi=
c_state *state,
=20
 =09}
=20
-=09if (dev_priv->wm_disp.compute_intermediate_wm) {
+=09if (dev_priv->wm_disp && dev_priv->wm_disp->compute_intermediate_wm) {
 =09=09if (drm_WARN_ON(&dev_priv->drm,
-=09=09=09=09!dev_priv->wm_disp.compute_pipe_wm))
+=09=09=09=09!dev_priv->wm_disp->compute_pipe_wm))
 =09=09=09return 0;
=20
 =09=09/*
@@ -6810,7 +6810,7 @@ static int intel_crtc_atomic_check(struct intel_atomi=
c_state *state,
 =09=09 * old state and the new state.  We can program these
 =09=09 * immediately.
 =09=09 */
-=09=09ret =3D dev_priv->wm_disp.compute_intermediate_wm(state, crtc);
+=09=09ret =3D dev_priv->wm_disp->compute_intermediate_wm(state, crtc);
 =09=09if (ret) {
 =09=09=09drm_dbg_kms(&dev_priv->drm,
 =09=09=09=09    "No valid intermediate pipe watermarks are possible\n");
@@ -8919,8 +8919,8 @@ static int calc_watermark_data(struct intel_atomic_st=
ate *state)
 =09struct drm_i915_private *dev_priv =3D to_i915(dev);
=20
 =09/* Is there platform-specific watermark information to calculate? */
-=09if (dev_priv->wm_disp.compute_global_watermarks)
-=09=09return dev_priv->wm_disp.compute_global_watermarks(state);
+=09if (dev_priv->wm_disp && dev_priv->wm_disp->compute_global_watermarks)
+=09=09return dev_priv->wm_disp->compute_global_watermarks(state);
=20
 =09return 0;
 }
@@ -9745,8 +9745,8 @@ static void commit_pipe_pre_planes(struct intel_atomi=
c_state *state,
 =09=09intel_psr2_program_trans_man_trk_ctl(new_crtc_state);
 =09}
=20
-=09if (dev_priv->wm_disp.atomic_update_watermarks)
-=09=09dev_priv->wm_disp.atomic_update_watermarks(state, crtc);
+=09if (dev_priv->wm_disp && dev_priv->wm_disp->atomic_update_watermarks)
+=09=09dev_priv->wm_disp->atomic_update_watermarks(state, crtc);
 }
=20
 static void commit_pipe_post_planes(struct intel_atomic_state *state,
@@ -9874,8 +9874,8 @@ static void intel_old_crtc_state_disables(struct inte=
l_atomic_state *state,
 =09/* FIXME unify this for all platforms */
 =09if (!new_crtc_state->hw.active &&
 =09    !HAS_GMCH(dev_priv) &&
-=09    dev_priv->wm_disp.initial_watermarks)
-=09=09dev_priv->wm_disp.initial_watermarks(state, crtc);
+=09    dev_priv->wm_disp && dev_priv->wm_disp->initial_watermarks)
+=09=09dev_priv->wm_disp->initial_watermarks(state, crtc);
 }
=20
 static void intel_commit_modeset_disables(struct intel_atomic_state *state=
)
@@ -10297,8 +10297,8 @@ static void intel_atomic_commit_tail(struct intel_a=
tomic_state *state)
 =09=09if (DISPLAY_VER(dev_priv) =3D=3D 2 && planes_enabling(old_crtc_state=
, new_crtc_state))
 =09=09=09intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, true)=
;
=20
-=09=09if (dev_priv->wm_disp.optimize_watermarks)
-=09=09=09dev_priv->wm_disp.optimize_watermarks(state, crtc);
+=09=09if (dev_priv->wm_disp && dev_priv->wm_disp->optimize_watermarks)
+=09=09=09dev_priv->wm_disp->optimize_watermarks(state, crtc);
 =09}
=20
 =09intel_dbuf_post_plane_update(state);
@@ -11387,7 +11387,9 @@ static void sanitize_watermarks(struct drm_i915_pri=
vate *dev_priv)
 =09int i;
=20
 =09/* Only supported on platforms that use atomic watermark design */
-=09if (!dev_priv->wm_disp.optimize_watermarks)
+=09if (!dev_priv->wm_disp)
+=09=09return;
+=09if (!dev_priv->wm_disp->optimize_watermarks)
 =09=09return;
=20
 =09state =3D drm_atomic_state_alloc(&dev_priv->drm);
@@ -11420,7 +11422,7 @@ static void sanitize_watermarks(struct drm_i915_pri=
vate *dev_priv)
 =09/* Write calculated watermark values back */
 =09for_each_new_intel_crtc_in_state(intel_state, crtc, crtc_state, i) {
 =09=09crtc_state->wm.need_postvbl_update =3D true;
-=09=09dev_priv->wm_disp.optimize_watermarks(intel_state, crtc);
+=09=09dev_priv->wm_disp->optimize_watermarks(intel_state, crtc);
=20
 =09=09to_intel_crtc_state(crtc->base.state)->wm =3D crtc_state->wm;
 =09}
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 44094a25a110..eacd30c076a8 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -993,7 +993,7 @@ struct drm_i915_private {
 =09const struct drm_i915_cg_funcs *cg_funcs;
=20
 =09/* pm display functions */
-=09struct drm_i915_wm_disp_funcs wm_disp;
+=09const struct drm_i915_wm_disp_funcs *wm_disp;
=20
 =09/* irq display functions */
 =09const struct drm_i915_irq_funcs *irq_funcs;
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_p=
m.c
index 44f5582531ac..cceeb059f801 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7976,6 +7976,48 @@ void intel_init_clock_gating_hooks(struct drm_i915_p=
rivate *dev_priv)
 =09}
 }
=20
+static const struct drm_i915_wm_disp_funcs skl_wm_funcs =3D {
+=09.compute_global_watermarks =3D skl_compute_wm
+};
+
+static const struct drm_i915_wm_disp_funcs ilk_wm_funcs =3D {
+=09.compute_pipe_wm =3D ilk_compute_pipe_wm,
+=09.compute_intermediate_wm =3D ilk_compute_intermediate_wm,
+=09.initial_watermarks =3D ilk_initial_watermarks,
+=09.optimize_watermarks =3D ilk_optimize_watermarks
+};
+
+static const struct drm_i915_wm_disp_funcs vlv_wm_funcs =3D {
+=09.compute_pipe_wm =3D vlv_compute_pipe_wm,
+=09.compute_intermediate_wm =3D vlv_compute_intermediate_wm,
+=09.initial_watermarks =3D vlv_initial_watermarks,
+=09.optimize_watermarks =3D vlv_optimize_watermarks,
+=09.atomic_update_watermarks =3D vlv_atomic_update_fifo
+};
+
+static const struct drm_i915_wm_disp_funcs g4x_wm_funcs =3D {
+=09.compute_pipe_wm =3D g4x_compute_pipe_wm,
+=09.compute_intermediate_wm =3D g4x_compute_intermediate_wm,
+=09.initial_watermarks =3D g4x_initial_watermarks,
+=09.optimize_watermarks =3D g4x_optimize_watermarks
+};
+
+static const struct drm_i915_wm_disp_funcs pnv_wm_funcs =3D {
+=09.update_wm =3D pnv_update_wm,
+};
+
+static const struct drm_i915_wm_disp_funcs i965_wm_funcs =3D {
+=09.update_wm =3D i965_update_wm,
+};
+
+static const struct drm_i915_wm_disp_funcs i9xx_wm_funcs =3D {
+=09.update_wm =3D i9xx_update_wm,
+};
+
+static const struct drm_i915_wm_disp_funcs i845_wm_funcs =3D {
+=09.update_wm =3D i845_update_wm,
+};
+
 /* Set up chip specific power management-related functions */
 void intel_init_pm(struct drm_i915_private *dev_priv)
 {
@@ -7991,7 +8033,7 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
 =09/* For FIFO watermark updates */
 =09if (DISPLAY_VER(dev_priv) >=3D 9) {
 =09=09skl_setup_wm_latency(dev_priv);
-=09=09dev_priv->wm_disp.compute_global_watermarks =3D skl_compute_wm;
+=09=09dev_priv->wm_disp =3D &skl_wm_funcs;
 =09} else if (HAS_PCH_SPLIT(dev_priv)) {
 =09=09ilk_setup_wm_latency(dev_priv);
=20
@@ -7999,13 +8041,7 @@ void intel_init_pm(struct drm_i915_private *dev_priv=
)
 =09=09     dev_priv->wm.spr_latency[1] && dev_priv->wm.cur_latency[1]) ||
 =09=09    (DISPLAY_VER(dev_priv) !=3D 5 && dev_priv->wm.pri_latency[0] &&
 =09=09     dev_priv->wm.spr_latency[0] && dev_priv->wm.cur_latency[0])) {
-=09=09=09dev_priv->wm_disp.compute_pipe_wm =3D ilk_compute_pipe_wm;
-=09=09=09dev_priv->wm_disp.compute_intermediate_wm =3D
-=09=09=09=09ilk_compute_intermediate_wm;
-=09=09=09dev_priv->wm_disp.initial_watermarks =3D
-=09=09=09=09ilk_initial_watermarks;
-=09=09=09dev_priv->wm_disp.optimize_watermarks =3D
-=09=09=09=09ilk_optimize_watermarks;
+=09=09=09dev_priv->wm_disp =3D &ilk_wm_funcs;
 =09=09} else {
 =09=09=09drm_dbg_kms(&dev_priv->drm,
 =09=09=09=09    "Failed to read display plane latency. "
@@ -8013,17 +8049,10 @@ void intel_init_pm(struct drm_i915_private *dev_pri=
v)
 =09=09}
 =09} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 =09=09vlv_setup_wm_latency(dev_priv);
-=09=09dev_priv->wm_disp.compute_pipe_wm =3D vlv_compute_pipe_wm;
-=09=09dev_priv->wm_disp.compute_intermediate_wm =3D vlv_compute_intermedia=
te_wm;
-=09=09dev_priv->wm_disp.initial_watermarks =3D vlv_initial_watermarks;
-=09=09dev_priv->wm_disp.optimize_watermarks =3D vlv_optimize_watermarks;
-=09=09dev_priv->wm_disp.atomic_update_watermarks =3D vlv_atomic_update_fif=
o;
+=09=09dev_priv->wm_disp =3D &vlv_wm_funcs;
 =09} else if (IS_G4X(dev_priv)) {
 =09=09g4x_setup_wm_latency(dev_priv);
-=09=09dev_priv->wm_disp.compute_pipe_wm =3D g4x_compute_pipe_wm;
-=09=09dev_priv->wm_disp.compute_intermediate_wm =3D g4x_compute_intermedia=
te_wm;
-=09=09dev_priv->wm_disp.initial_watermarks =3D g4x_initial_watermarks;
-=09=09dev_priv->wm_disp.optimize_watermarks =3D g4x_optimize_watermarks;
+=09=09dev_priv->wm_disp =3D &g4x_wm_funcs;
 =09} else if (IS_PINEVIEW(dev_priv)) {
 =09=09if (!intel_get_cxsr_latency(!IS_MOBILE(dev_priv),
 =09=09=09=09=09    dev_priv->is_ddr3,
@@ -8037,18 +8066,17 @@ void intel_init_pm(struct drm_i915_private *dev_pri=
v)
 =09=09=09=09 dev_priv->fsb_freq, dev_priv->mem_freq);
 =09=09=09/* Disable CxSR and never update its watermark again */
 =09=09=09intel_set_memory_cxsr(dev_priv, false);
-=09=09=09dev_priv->wm_disp.update_wm =3D NULL;
 =09=09} else
-=09=09=09dev_priv->wm_disp.update_wm =3D pnv_update_wm;
+=09=09=09dev_priv->wm_disp =3D &pnv_wm_funcs;
 =09} else if (DISPLAY_VER(dev_priv) =3D=3D 4) {
-=09=09dev_priv->wm_disp.update_wm =3D i965_update_wm;
+=09=09dev_priv->wm_disp =3D &i965_wm_funcs;
 =09} else if (DISPLAY_VER(dev_priv) =3D=3D 3) {
-=09=09dev_priv->wm_disp.update_wm =3D i9xx_update_wm;
+=09=09dev_priv->wm_disp =3D &i9xx_wm_funcs;
 =09} else if (DISPLAY_VER(dev_priv) =3D=3D 2) {
 =09=09if (INTEL_NUM_PIPES(dev_priv) =3D=3D 1)
-=09=09=09dev_priv->wm_disp.update_wm =3D i845_update_wm;
+=09=09=09dev_priv->wm_disp =3D &i845_wm_funcs;
 =09=09else
-=09=09=09dev_priv->wm_disp.update_wm =3D i9xx_update_wm;
+=09=09=09dev_priv->wm_disp =3D &i9xx_wm_funcs;
 =09} else {
 =09=09drm_err(&dev_priv->drm,
 =09=09=09"unexpected fall-through in %s\n", __func__);
--=20
2.31.1

