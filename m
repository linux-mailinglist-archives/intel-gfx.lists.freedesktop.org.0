Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9FA404297
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 03:11:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B029D6E408;
	Thu,  9 Sep 2021 01:11:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAC806E3F9
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 01:11:14 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-343-Xb5DfkerNqGIcik3zrs1zg-1; Wed, 08 Sep 2021 21:11:10 -0400
X-MC-Unique: Xb5DfkerNqGIcik3zrs1zg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 762C0801E72;
 Thu,  9 Sep 2021 01:11:09 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D94991972E;
 Thu,  9 Sep 2021 01:11:07 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, Dave Airlie <airlied@redhat.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Thu,  9 Sep 2021 11:10:39 +1000
Message-Id: <20210909011100.2987971-3-airlied@gmail.com>
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
Subject: [Intel-gfx] [PATCH 02/23] drm/i915: make update_wm take a dev_priv.
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

The crtc was never being used here.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 +++++-----
 drivers/gpu/drm/i915/i915_drv.h              |  2 +-
 drivers/gpu/drm/i915/intel_pm.c              | 18 ++++++------------
 drivers/gpu/drm/i915/intel_pm.h              |  2 +-
 4 files changed, 13 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index 134c792e1dbd..e62f8317cbda 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2374,7 +2374,7 @@ static void intel_post_plane_update(struct intel_atom=
ic_state *state,
 =09intel_frontbuffer_flip(dev_priv, new_crtc_state->fb_bits);
=20
 =09if (new_crtc_state->update_wm_post && new_crtc_state->hw.active)
-=09=09intel_update_watermarks(crtc);
+=09=09intel_update_watermarks(dev_priv);
=20
 =09if (hsw_post_update_enable_ips(old_crtc_state, new_crtc_state))
 =09=09hsw_enable_ips(new_crtc_state);
@@ -2531,7 +2531,7 @@ static void intel_pre_plane_update(struct intel_atomi=
c_state *state,
 =09=09if (dev_priv->display.initial_watermarks)
 =09=09=09dev_priv->display.initial_watermarks(state, crtc);
 =09=09else if (new_crtc_state->update_wm_pre)
-=09=09=09intel_update_watermarks(crtc);
+=09=09=09intel_update_watermarks(dev_priv);
 =09}
=20
 =09/*
@@ -3578,7 +3578,7 @@ static void i9xx_crtc_enable(struct intel_atomic_stat=
e *state,
 =09if (dev_priv->display.initial_watermarks)
 =09=09dev_priv->display.initial_watermarks(state, crtc);
 =09else
-=09=09intel_update_watermarks(crtc);
+=09=09intel_update_watermarks(dev_priv);
 =09intel_enable_pipe(new_crtc_state);
=20
 =09intel_crtc_vblank_on(new_crtc_state);
@@ -3645,7 +3645,7 @@ static void i9xx_crtc_disable(struct intel_atomic_sta=
te *state,
 =09=09intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
=20
 =09if (!dev_priv->display.initial_watermarks)
-=09=09intel_update_watermarks(crtc);
+=09=09intel_update_watermarks(dev_priv);
=20
 =09/* clock the pipe down to 640x480@60 to potentially save power */
 =09if (IS_I830(dev_priv))
@@ -3721,7 +3721,7 @@ static void intel_crtc_disable_noatomic(struct intel_=
crtc *crtc,
 =09=09encoder->base.crtc =3D NULL;
=20
 =09intel_fbc_disable(crtc);
-=09intel_update_watermarks(crtc);
+=09intel_update_watermarks(dev_priv);
 =09intel_disable_shared_dpll(crtc_state);
=20
 =09intel_display_power_put_all_in_set(dev_priv, &crtc->enabled_power_domai=
ns);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index fc546d2ff0fc..894c883044ee 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -341,7 +341,7 @@ struct drm_i915_display_funcs {
 =09void (*optimize_watermarks)(struct intel_atomic_state *state,
 =09=09=09=09    struct intel_crtc *crtc);
 =09int (*compute_global_watermarks)(struct intel_atomic_state *state);
-=09void (*update_wm)(struct intel_crtc *crtc);
+=09void (*update_wm)(struct drm_i915_private *dev_priv);
 =09int (*modeset_calc_cdclk)(struct intel_cdclk_state *state);
 =09u8 (*calc_voltage_level)(int cdclk);
 =09/* Returns the active state of the crtc, and if the crtc is active,
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_p=
m.c
index d9993eb3730d..406baa49e6ad 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -881,9 +881,8 @@ static struct intel_crtc *single_enabled_crtc(struct dr=
m_i915_private *dev_priv)
 =09return enabled;
 }
=20
-static void pnv_update_wm(struct intel_crtc *unused_crtc)
+static void pnv_update_wm(struct drm_i915_private *dev_priv)
 {
-=09struct drm_i915_private *dev_priv =3D to_i915(unused_crtc->base.dev);
 =09struct intel_crtc *crtc;
 =09const struct cxsr_latency *latency;
 =09u32 reg;
@@ -2253,9 +2252,8 @@ static void vlv_optimize_watermarks(struct intel_atom=
ic_state *state,
 =09mutex_unlock(&dev_priv->wm.wm_mutex);
 }
=20
-static void i965_update_wm(struct intel_crtc *unused_crtc)
+static void i965_update_wm(struct drm_i915_private *dev_priv)
 {
-=09struct drm_i915_private *dev_priv =3D to_i915(unused_crtc->base.dev);
 =09struct intel_crtc *crtc;
 =09int srwm =3D 1;
 =09int cursor_sr =3D 16;
@@ -2329,9 +2327,8 @@ static void i965_update_wm(struct intel_crtc *unused_=
crtc)
=20
 #undef FW_WM
=20
-static void i9xx_update_wm(struct intel_crtc *unused_crtc)
+static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 {
-=09struct drm_i915_private *dev_priv =3D to_i915(unused_crtc->base.dev);
 =09const struct intel_watermark_params *wm_info;
 =09u32 fwater_lo;
 =09u32 fwater_hi;
@@ -2481,9 +2478,8 @@ static void i9xx_update_wm(struct intel_crtc *unused_=
crtc)
 =09=09intel_set_memory_cxsr(dev_priv, true);
 }
=20
-static void i845_update_wm(struct intel_crtc *unused_crtc)
+static void i845_update_wm(struct drm_i915_private *dev_priv)
 {
-=09struct drm_i915_private *dev_priv =3D to_i915(unused_crtc->base.dev);
 =09struct intel_crtc *crtc;
 =09const struct drm_display_mode *pipe_mode;
 =09u32 fwater_lo;
@@ -7169,12 +7165,10 @@ void ilk_wm_get_hw_state(struct drm_i915_private *d=
ev_priv)
  * We don't use the sprite, so we can ignore that.  And on Crestline we ha=
ve
  * to set the non-SR watermarks to 8.
  */
-void intel_update_watermarks(struct intel_crtc *crtc)
+void intel_update_watermarks(struct drm_i915_private *dev_priv)
 {
-=09struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
-
 =09if (dev_priv->display.update_wm)
-=09=09dev_priv->display.update_wm(crtc);
+=09=09dev_priv->display.update_wm(dev_priv);
 }
=20
 void intel_enable_ipc(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_p=
m.h
index 941b3ae555c8..99bce0b4f5fb 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -29,7 +29,7 @@ struct skl_wm_level;
 void intel_init_clock_gating(struct drm_i915_private *dev_priv);
 void intel_suspend_hw(struct drm_i915_private *dev_priv);
 int ilk_wm_max_level(const struct drm_i915_private *dev_priv);
-void intel_update_watermarks(struct intel_crtc *crtc);
+void intel_update_watermarks(struct drm_i915_private *dev_priv);
 void intel_init_pm(struct drm_i915_private *dev_priv);
 void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv);
 void intel_pm_setup(struct drm_i915_private *dev_priv);
--=20
2.31.1

