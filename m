Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 990F5402443
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 09:26:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46AF889D53;
	Tue,  7 Sep 2021 07:26:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70A6A89801
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 07:26:47 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-248-0DIdgtYoOfCRzK4yR0qpCg-1; Tue, 07 Sep 2021 03:26:43 -0400
X-MC-Unique: 0DIdgtYoOfCRzK4yR0qpCg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 96B43107ACCA;
 Tue,  7 Sep 2021 07:26:42 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 50E2260936;
 Tue,  7 Sep 2021 07:26:41 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Tue,  7 Sep 2021 17:25:49 +1000
Message-Id: <20210907072549.2962226-26-airlied@gmail.com>
In-Reply-To: <20210907072549.2962226-1-airlied@gmail.com>
References: <20210907072549.2962226-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 25/25] drm/i915/display: move pps/backlight
 mutexes into display
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
 .../gpu/drm/i915/display/intel_backlight.c    | 28 +++++++-------
 drivers/gpu/drm/i915/display/intel_pps.c      | 38 +++++++++----------
 drivers/gpu/drm/i915/i915_drv.c               |  4 +-
 drivers/gpu/drm/i915/i915_drv.h               | 12 +++---
 4 files changed, 41 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/d=
rm/i915/display/intel_backlight.c
index 41e10d1afe72..04bf4a67d56f 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -300,7 +300,7 @@ void intel_backlight_set_acpi(const struct drm_connecto=
r_state *conn_state,
 =09if (!panel->backlight.present || !conn_state->crtc)
 =09=09return;
=20
-=09mutex_lock(&dev_priv->backlight_lock);
+=09mutex_lock(&dev_priv->display->backlight_lock);
=20
 =09drm_WARN_ON(&dev_priv->drm, panel->backlight.max =3D=3D 0);
=20
@@ -316,7 +316,7 @@ void intel_backlight_set_acpi(const struct drm_connecto=
r_state *conn_state,
 =09if (panel->backlight.enabled)
 =09=09intel_panel_actually_set_backlight(conn_state, hw_level);
=20
-=09mutex_unlock(&dev_priv->backlight_lock);
+=09mutex_unlock(&dev_priv->display->backlight_lock);
 }
=20
 static void lpt_disable_backlight(const struct drm_connector_state *old_co=
nn_state, u32 level)
@@ -458,14 +458,14 @@ void intel_backlight_disable(const struct drm_connect=
or_state *old_conn_state)
 =09=09return;
 =09}
=20
-=09mutex_lock(&dev_priv->backlight_lock);
+=09mutex_lock(&dev_priv->display->backlight_lock);
=20
 =09if (panel->backlight.device)
 =09=09panel->backlight.device->props.power =3D FB_BLANK_POWERDOWN;
 =09panel->backlight.enabled =3D false;
 =09panel->backlight.funcs->disable(old_conn_state, 0);
=20
-=09mutex_unlock(&dev_priv->backlight_lock);
+=09mutex_unlock(&dev_priv->display->backlight_lock);
 }
=20
 static void lpt_enable_backlight(const struct intel_crtc_state *crtc_state=
,
@@ -808,11 +808,11 @@ void intel_backlight_enable(const struct intel_crtc_s=
tate *crtc_state,
=20
 =09drm_dbg_kms(&dev_priv->drm, "pipe %c\n", pipe_name(pipe));
=20
-=09mutex_lock(&dev_priv->backlight_lock);
+=09mutex_lock(&dev_priv->display->backlight_lock);
=20
 =09__intel_backlight_enable(crtc_state, conn_state);
=20
-=09mutex_unlock(&dev_priv->backlight_lock);
+=09mutex_unlock(&dev_priv->display->backlight_lock);
 }
=20
 #if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
@@ -822,12 +822,12 @@ static u32 intel_panel_get_backlight(struct intel_con=
nector *connector)
 =09struct intel_panel *panel =3D &connector->panel;
 =09u32 val =3D 0;
=20
-=09mutex_lock(&dev_priv->backlight_lock);
+=09mutex_lock(&dev_priv->display->backlight_lock);
=20
 =09if (panel->backlight.enabled)
 =09=09val =3D panel->backlight.funcs->get(connector, intel_connector_get_p=
ipe(connector));
=20
-=09mutex_unlock(&dev_priv->backlight_lock);
+=09mutex_unlock(&dev_priv->display->backlight_lock);
=20
 =09drm_dbg_kms(&dev_priv->drm, "get backlight PWM =3D %d\n", val);
 =09return val;
@@ -855,7 +855,7 @@ static void intel_panel_set_backlight(const struct drm_=
connector_state *conn_sta
 =09if (!panel->backlight.present)
 =09=09return;
=20
-=09mutex_lock(&dev_priv->backlight_lock);
+=09mutex_lock(&dev_priv->display->backlight_lock);
=20
 =09drm_WARN_ON(&dev_priv->drm, panel->backlight.max =3D=3D 0);
=20
@@ -865,7 +865,7 @@ static void intel_panel_set_backlight(const struct drm_=
connector_state *conn_sta
 =09if (panel->backlight.enabled)
 =09=09intel_panel_actually_set_backlight(conn_state, hw_level);
=20
-=09mutex_unlock(&dev_priv->backlight_lock);
+=09mutex_unlock(&dev_priv->display->backlight_lock);
 }
=20
 static int intel_backlight_device_update_status(struct backlight_device *b=
d)
@@ -1585,11 +1585,11 @@ void intel_backlight_update(struct intel_atomic_sta=
te *state,
 =09if (!panel->backlight.present)
 =09=09return;
=20
-=09mutex_lock(&dev_priv->backlight_lock);
+=09mutex_lock(&dev_priv->display->backlight_lock);
 =09if (!panel->backlight.enabled)
 =09=09__intel_backlight_enable(crtc_state, conn_state);
=20
-=09mutex_unlock(&dev_priv->backlight_lock);
+=09mutex_unlock(&dev_priv->display->backlight_lock);
 }
=20
 int intel_backlight_setup(struct intel_connector *connector, enum pipe pip=
e)
@@ -1614,9 +1614,9 @@ int intel_backlight_setup(struct intel_connector *con=
nector, enum pipe pipe)
 =09=09return -ENODEV;
=20
 =09/* set level and max in panel struct */
-=09mutex_lock(&dev_priv->backlight_lock);
+=09mutex_lock(&dev_priv->display->backlight_lock);
 =09ret =3D panel->backlight.funcs->setup(connector, pipe);
-=09mutex_unlock(&dev_priv->backlight_lock);
+=09mutex_unlock(&dev_priv->display->backlight_lock);
=20
 =09if (ret) {
 =09=09drm_dbg_kms(&dev_priv->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i91=
5/display/intel_pps.c
index 0e8d8d0dd51c..42d13b3f7479 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -26,7 +26,7 @@ intel_wakeref_t intel_pps_lock(struct intel_dp *intel_dp)
 =09 * See intel_pps_reset_all() why we need a power domain reference here.
 =09 */
 =09wakeref =3D intel_display_power_get(dev_priv, POWER_DOMAIN_DISPLAY_CORE=
);
-=09mutex_lock(&dev_priv->pps_mutex);
+=09mutex_lock(&dev_priv->display->pps_mutex);
=20
 =09return wakeref;
 }
@@ -36,7 +36,7 @@ intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_d=
p,
 {
 =09struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
=20
-=09mutex_unlock(&dev_priv->pps_mutex);
+=09mutex_unlock(&dev_priv->display->pps_mutex);
 =09intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
=20
 =09return 0;
@@ -161,7 +161,7 @@ vlv_power_sequencer_pipe(struct intel_dp *intel_dp)
 =09struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
 =09enum pipe pipe;
=20
-=09lockdep_assert_held(&dev_priv->pps_mutex);
+=09lockdep_assert_held(&dev_priv->display->pps_mutex);
=20
 =09/* We should never land here with regular DP ports */
 =09drm_WARN_ON(&dev_priv->drm, !intel_dp_is_edp(intel_dp));
@@ -209,7 +209,7 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
 =09struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
 =09int backlight_controller =3D dev_priv->vbt.backlight.controller;
=20
-=09lockdep_assert_held(&dev_priv->pps_mutex);
+=09lockdep_assert_held(&dev_priv->display->pps_mutex);
=20
 =09/* We should never land here with regular DP ports */
 =09drm_WARN_ON(&dev_priv->drm, !intel_dp_is_edp(intel_dp));
@@ -279,7 +279,7 @@ vlv_initial_power_sequencer_setup(struct intel_dp *inte=
l_dp)
 =09struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
 =09enum port port =3D dig_port->base.port;
=20
-=09lockdep_assert_held(&dev_priv->pps_mutex);
+=09lockdep_assert_held(&dev_priv->display->pps_mutex);
=20
 =09/* try to find a pipe with this port selected */
 =09/* first pick one where the panel is on */
@@ -404,7 +404,7 @@ static bool edp_have_panel_power(struct intel_dp *intel=
_dp)
 {
 =09struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
=20
-=09lockdep_assert_held(&dev_priv->pps_mutex);
+=09lockdep_assert_held(&dev_priv->display->pps_mutex);
=20
 =09if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
 =09    intel_dp->pps.pps_pipe =3D=3D INVALID_PIPE)
@@ -417,7 +417,7 @@ static bool edp_have_panel_vdd(struct intel_dp *intel_d=
p)
 {
 =09struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
=20
-=09lockdep_assert_held(&dev_priv->pps_mutex);
+=09lockdep_assert_held(&dev_priv->display->pps_mutex);
=20
 =09if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
 =09    intel_dp->pps.pps_pipe =3D=3D INVALID_PIPE)
@@ -460,7 +460,7 @@ static void wait_panel_status(struct intel_dp *intel_dp=
,
 =09struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
 =09i915_reg_t pp_stat_reg, pp_ctrl_reg;
=20
-=09lockdep_assert_held(&dev_priv->pps_mutex);
+=09lockdep_assert_held(&dev_priv->display->pps_mutex);
=20
 =09intel_pps_verify_state(intel_dp);
=20
@@ -553,7 +553,7 @@ static  u32 ilk_get_pp_control(struct intel_dp *intel_d=
p)
 =09struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
 =09u32 control;
=20
-=09lockdep_assert_held(&dev_priv->pps_mutex);
+=09lockdep_assert_held(&dev_priv->display->pps_mutex);
=20
 =09control =3D intel_de_read(dev_priv, _pp_ctrl_reg(intel_dp));
 =09if (drm_WARN_ON(&dev_priv->drm, !HAS_DDI(dev_priv) &&
@@ -577,7 +577,7 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_d=
p)
 =09i915_reg_t pp_stat_reg, pp_ctrl_reg;
 =09bool need_to_disable =3D !intel_dp->pps.want_panel_vdd;
=20
-=09lockdep_assert_held(&dev_priv->pps_mutex);
+=09lockdep_assert_held(&dev_priv->display->pps_mutex);
=20
 =09if (!intel_dp_is_edp(intel_dp))
 =09=09return false;
@@ -654,7 +654,7 @@ static void intel_pps_vdd_off_sync_unlocked(struct inte=
l_dp *intel_dp)
 =09u32 pp;
 =09i915_reg_t pp_stat_reg, pp_ctrl_reg;
=20
-=09lockdep_assert_held(&dev_priv->pps_mutex);
+=09lockdep_assert_held(&dev_priv->display->pps_mutex);
=20
 =09drm_WARN_ON(&dev_priv->drm, intel_dp->pps.want_panel_vdd);
=20
@@ -738,7 +738,7 @@ void intel_pps_vdd_off_unlocked(struct intel_dp *intel_=
dp, bool sync)
 {
 =09struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
=20
-=09lockdep_assert_held(&dev_priv->pps_mutex);
+=09lockdep_assert_held(&dev_priv->display->pps_mutex);
=20
 =09if (!intel_dp_is_edp(intel_dp))
 =09=09return;
@@ -761,7 +761,7 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 =09u32 pp;
 =09i915_reg_t pp_ctrl_reg;
=20
-=09lockdep_assert_held(&dev_priv->pps_mutex);
+=09lockdep_assert_held(&dev_priv->display->pps_mutex);
=20
 =09if (!intel_dp_is_edp(intel_dp))
 =09=09return;
@@ -822,7 +822,7 @@ void intel_pps_off_unlocked(struct intel_dp *intel_dp)
 =09u32 pp;
 =09i915_reg_t pp_ctrl_reg;
=20
-=09lockdep_assert_held(&dev_priv->pps_mutex);
+=09lockdep_assert_held(&dev_priv->display->pps_mutex);
=20
 =09if (!intel_dp_is_edp(intel_dp))
 =09=09return;
@@ -981,7 +981,7 @@ static void vlv_steal_power_sequencer(struct drm_i915_p=
rivate *dev_priv,
 {
 =09struct intel_encoder *encoder;
=20
-=09lockdep_assert_held(&dev_priv->pps_mutex);
+=09lockdep_assert_held(&dev_priv->display->pps_mutex);
=20
 =09for_each_intel_dp(&dev_priv->drm, encoder) {
 =09=09struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
@@ -1011,7 +1011,7 @@ void vlv_pps_init(struct intel_encoder *encoder,
 =09struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
 =09struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
=20
-=09lockdep_assert_held(&dev_priv->pps_mutex);
+=09lockdep_assert_held(&dev_priv->display->pps_mutex);
=20
 =09drm_WARN_ON(&dev_priv->drm, intel_dp->pps.active_pipe !=3D INVALID_PIPE=
);
=20
@@ -1054,7 +1054,7 @@ static void intel_pps_vdd_sanitize(struct intel_dp *i=
ntel_dp)
 =09struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
 =09struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
=20
-=09lockdep_assert_held(&dev_priv->pps_mutex);
+=09lockdep_assert_held(&dev_priv->display->pps_mutex);
=20
 =09if (!edp_have_panel_vdd(intel_dp))
 =09=09return;
@@ -1159,7 +1159,7 @@ static void pps_init_delays(struct intel_dp *intel_dp=
)
 =09struct edp_power_seq cur, vbt, spec,
 =09=09*final =3D &intel_dp->pps.pps_delays;
=20
-=09lockdep_assert_held(&dev_priv->pps_mutex);
+=09lockdep_assert_held(&dev_priv->display->pps_mutex);
=20
 =09/* already initialized? */
 =09if (final->t11_t12 !=3D 0)
@@ -1257,7 +1257,7 @@ static void pps_init_registers(struct intel_dp *intel=
_dp, bool force_disable_vdd
 =09enum port port =3D dp_to_dig_port(intel_dp)->base.port;
 =09const struct edp_power_seq *seq =3D &intel_dp->pps.pps_delays;
=20
-=09lockdep_assert_held(&dev_priv->pps_mutex);
+=09lockdep_assert_held(&dev_priv->display->pps_mutex);
=20
 =09intel_pps_get_registers(intel_dp, &regs);
=20
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_dr=
v.c
index 8878bfcee0ca..7ea2be06b980 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -315,14 +315,14 @@ static int i915_driver_early_probe(struct drm_i915_pr=
ivate *dev_priv)
=20
 =09spin_lock_init(&dev_priv->irq_lock);
 =09spin_lock_init(&dev_priv->gpu_error.lock);
-=09mutex_init(&dev_priv->backlight_lock);
+=09mutex_init(&dev_priv->display->backlight_lock);
=20
 =09mutex_init(&dev_priv->sb_lock);
 =09cpu_latency_qos_add_request(&dev_priv->sb_qos, PM_QOS_DEFAULT_VALUE);
=20
 =09mutex_init(&dev_priv->display->av_mutex);
 =09mutex_init(&dev_priv->wm.wm_mutex);
-=09mutex_init(&dev_priv->pps_mutex);
+=09mutex_init(&dev_priv->display->pps_mutex);
 =09mutex_init(&dev_priv->display->hdcp_comp_mutex);
=20
 =09i915_memcpy_init_early(dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index e142feb5bc9c..89eb06dd3a30 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -972,6 +972,12 @@ struct drm_i915_display {
 =09struct workqueue_struct *modeset_wq;
 =09/* unbound hipri wq for page flips/plane updates */
 =09struct workqueue_struct *flip_wq;
+
+=09/* backlight registers and fields in struct intel_panel */
+=09struct mutex backlight_lock;
+
+=09/* protects panel power sequencer state */
+=09struct mutex pps_mutex;
 };
=20
 struct drm_i915_private {
@@ -1050,12 +1056,6 @@ struct drm_i915_private {
=20
 =09bool preserve_bios_swizzle;
=20
-=09/* backlight registers and fields in struct intel_panel */
-=09struct mutex backlight_lock;
-
-=09/* protects panel power sequencer state */
-=09struct mutex pps_mutex;
-
 =09unsigned int fsb_freq, mem_freq, is_ddr3;
=20
 =09struct {
--=20
2.31.1

