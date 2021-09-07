Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE99402448
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 09:27:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B74D89DA7;
	Tue,  7 Sep 2021 07:27:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47F4B89DA7
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 07:27:01 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-525-reNallsMOe2vRbZvuIVo3Q-1; Tue, 07 Sep 2021 03:26:32 -0400
X-MC-Unique: reNallsMOe2vRbZvuIVo3Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E38F5107ACE3;
 Tue,  7 Sep 2021 07:26:31 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9EAAE77C16;
 Tue,  7 Sep 2021 07:26:30 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Tue,  7 Sep 2021 17:25:43 +1000
Message-Id: <20210907072549.2962226-20-airlied@gmail.com>
In-Reply-To: <20210907072549.2962226-1-airlied@gmail.com>
References: <20210907072549.2962226-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 19/25] drm/i915/display: move delay and pch
 values to display struct
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
 drivers/gpu/drm/i915/display/intel_display.c  | 34 +++++++++----------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  4 +--
 drivers/gpu/drm/i915/display/intel_vrr.c      |  6 ++--
 drivers/gpu/drm/i915/i915_drv.h               | 14 ++++----
 4 files changed, 29 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index 60ef938aed0e..7a4100a58b48 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -632,7 +632,7 @@ static void ilk_enable_pch_transcoder(const struct inte=
l_crtc_state *crtc_state)
 =09=09val |=3D TRANS_CHICKEN2_TIMING_OVERRIDE;
 =09=09/* Configure frame start delay to match the CPU */
 =09=09val &=3D ~TRANS_CHICKEN2_FRAME_START_DELAY_MASK;
-=09=09val |=3D TRANS_CHICKEN2_FRAME_START_DELAY(dev_priv->framestart_delay=
 - 1);
+=09=09val |=3D TRANS_CHICKEN2_FRAME_START_DELAY(dev_priv->display->framest=
art_delay - 1);
 =09=09intel_de_write(dev_priv, reg, val);
 =09}
=20
@@ -643,7 +643,7 @@ static void ilk_enable_pch_transcoder(const struct inte=
l_crtc_state *crtc_state)
 =09if (HAS_PCH_IBX(dev_priv)) {
 =09=09/* Configure frame start delay to match the CPU */
 =09=09val &=3D ~TRANS_FRAME_START_DELAY_MASK;
-=09=09val |=3D TRANS_FRAME_START_DELAY(dev_priv->framestart_delay - 1);
+=09=09val |=3D TRANS_FRAME_START_DELAY(dev_priv->display->framestart_delay=
 - 1);
=20
 =09=09/*
 =09=09 * Make the BPC in transcoder be consistent with
@@ -688,7 +688,7 @@ static void lpt_enable_pch_transcoder(struct drm_i915_p=
rivate *dev_priv,
 =09val |=3D TRANS_CHICKEN2_TIMING_OVERRIDE;
 =09/* Configure frame start delay to match the CPU */
 =09val &=3D ~TRANS_CHICKEN2_FRAME_START_DELAY_MASK;
-=09val |=3D TRANS_CHICKEN2_FRAME_START_DELAY(dev_priv->framestart_delay - =
1);
+=09val |=3D TRANS_CHICKEN2_FRAME_START_DELAY(dev_priv->display->framestart=
_delay - 1);
 =09intel_de_write(dev_priv, TRANS_CHICKEN2(PIPE_A), val);
=20
 =09val =3D TRANS_ENABLE;
@@ -2991,7 +2991,7 @@ static void hsw_set_frame_start_delay(const struct in=
tel_crtc_state *crtc_state)
=20
 =09val =3D intel_de_read(dev_priv, reg);
 =09val &=3D ~HSW_FRAME_START_DELAY_MASK;
-=09val |=3D HSW_FRAME_START_DELAY(dev_priv->framestart_delay - 1);
+=09val |=3D HSW_FRAME_START_DELAY(dev_priv->display->framestart_delay - 1)=
;
 =09intel_de_write(dev_priv, reg, val);
 }
=20
@@ -4463,7 +4463,7 @@ static void i9xx_set_pipeconf(const struct intel_crtc=
_state *crtc_state)
=20
 =09pipeconf |=3D PIPECONF_GAMMA_MODE(crtc_state->gamma_mode);
=20
-=09pipeconf |=3D PIPECONF_FRAME_START_DELAY(dev_priv->framestart_delay - 1=
);
+=09pipeconf |=3D PIPECONF_FRAME_START_DELAY(dev_priv->display->framestart_=
delay - 1);
=20
 =09intel_de_write(dev_priv, PIPECONF(crtc->pipe), pipeconf);
 =09intel_de_posting_read(dev_priv, PIPECONF(crtc->pipe));
@@ -5096,24 +5096,24 @@ static void lpt_init_pch_refclk(struct drm_i915_pri=
vate *dev_priv)
 =09 * clock hierarchy. That would also allow us to do
 =09 * clock bending finally.
 =09 */
-=09dev_priv->pch_ssc_use =3D 0;
+=09dev_priv->display->pch_ssc_use =3D 0;
=20
 =09if (spll_uses_pch_ssc(dev_priv)) {
 =09=09drm_dbg_kms(&dev_priv->drm, "SPLL using PCH SSC\n");
-=09=09dev_priv->pch_ssc_use |=3D BIT(DPLL_ID_SPLL);
+=09=09dev_priv->display->pch_ssc_use |=3D BIT(DPLL_ID_SPLL);
 =09}
=20
 =09if (wrpll_uses_pch_ssc(dev_priv, DPLL_ID_WRPLL1)) {
 =09=09drm_dbg_kms(&dev_priv->drm, "WRPLL1 using PCH SSC\n");
-=09=09dev_priv->pch_ssc_use |=3D BIT(DPLL_ID_WRPLL1);
+=09=09dev_priv->display->pch_ssc_use |=3D BIT(DPLL_ID_WRPLL1);
 =09}
=20
 =09if (wrpll_uses_pch_ssc(dev_priv, DPLL_ID_WRPLL2)) {
 =09=09drm_dbg_kms(&dev_priv->drm, "WRPLL2 using PCH SSC\n");
-=09=09dev_priv->pch_ssc_use |=3D BIT(DPLL_ID_WRPLL2);
+=09=09dev_priv->display->pch_ssc_use |=3D BIT(DPLL_ID_WRPLL2);
 =09}
=20
-=09if (dev_priv->pch_ssc_use)
+=09if (dev_priv->display->pch_ssc_use)
 =09=09return;
=20
 =09if (has_fdi) {
@@ -5186,7 +5186,7 @@ static void ilk_set_pipeconf(const struct intel_crtc_=
state *crtc_state)
=20
 =09val |=3D PIPECONF_GAMMA_MODE(crtc_state->gamma_mode);
=20
-=09val |=3D PIPECONF_FRAME_START_DELAY(dev_priv->framestart_delay - 1);
+=09val |=3D PIPECONF_FRAME_START_DELAY(dev_priv->display->framestart_delay=
 - 1);
=20
 =09intel_de_write(dev_priv, PIPECONF(pipe), val);
 =09intel_de_posting_read(dev_priv, PIPECONF(pipe));
@@ -11573,9 +11573,9 @@ int intel_modeset_init_noirq(struct drm_i915_privat=
e *i915)
 =09i915->flip_wq =3D alloc_workqueue("i915_flip", WQ_HIGHPRI |
 =09=09=09=09=09WQ_UNBOUND, WQ_UNBOUND_MAX_ACTIVE);
=20
-=09i915->framestart_delay =3D 1; /* 1-4 */
+=09i915->display->framestart_delay =3D 1; /* 1-4 */
=20
-=09i915->window2_delay =3D 0; /* No DSB so no window2 delay */
+=09i915->display->window2_delay =3D 0; /* No DSB so no window2 delay */
=20
 =09intel_mode_config_init(i915);
=20
@@ -11915,7 +11915,7 @@ static void intel_sanitize_frame_start_delay(const =
struct intel_crtc_state *crtc
=20
 =09=09val =3D intel_de_read(dev_priv, reg);
 =09=09val &=3D ~HSW_FRAME_START_DELAY_MASK;
-=09=09val |=3D HSW_FRAME_START_DELAY(dev_priv->framestart_delay - 1);
+=09=09val |=3D HSW_FRAME_START_DELAY(dev_priv->display->framestart_delay -=
 1);
 =09=09intel_de_write(dev_priv, reg, val);
 =09} else {
 =09=09i915_reg_t reg =3D PIPECONF(cpu_transcoder);
@@ -11923,7 +11923,7 @@ static void intel_sanitize_frame_start_delay(const =
struct intel_crtc_state *crtc
=20
 =09=09val =3D intel_de_read(dev_priv, reg);
 =09=09val &=3D ~PIPECONF_FRAME_START_DELAY_MASK;
-=09=09val |=3D PIPECONF_FRAME_START_DELAY(dev_priv->framestart_delay - 1);
+=09=09val |=3D PIPECONF_FRAME_START_DELAY(dev_priv->display->framestart_de=
lay - 1);
 =09=09intel_de_write(dev_priv, reg, val);
 =09}
=20
@@ -11936,7 +11936,7 @@ static void intel_sanitize_frame_start_delay(const =
struct intel_crtc_state *crtc
=20
 =09=09val =3D intel_de_read(dev_priv, reg);
 =09=09val &=3D ~TRANS_FRAME_START_DELAY_MASK;
-=09=09val |=3D TRANS_FRAME_START_DELAY(dev_priv->framestart_delay - 1);
+=09=09val |=3D TRANS_FRAME_START_DELAY(dev_priv->display->framestart_delay=
 - 1);
 =09=09intel_de_write(dev_priv, reg, val);
 =09} else {
 =09=09enum pipe pch_transcoder =3D intel_crtc_pch_transcoder(crtc);
@@ -11945,7 +11945,7 @@ static void intel_sanitize_frame_start_delay(const =
struct intel_crtc_state *crtc
=20
 =09=09val =3D intel_de_read(dev_priv, reg);
 =09=09val &=3D ~TRANS_CHICKEN2_FRAME_START_DELAY_MASK;
-=09=09val |=3D TRANS_CHICKEN2_FRAME_START_DELAY(dev_priv->framestart_delay=
 - 1);
+=09=09val |=3D TRANS_CHICKEN2_FRAME_START_DELAY(dev_priv->display->framest=
art_delay - 1);
 =09=09intel_de_write(dev_priv, reg, val);
 =09}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/dr=
m/i915/display/intel_dpll_mgr.c
index 11fefa6de27e..47036316fbf9 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -574,7 +574,7 @@ static void hsw_ddi_wrpll_disable(struct drm_i915_priva=
te *dev_priv,
 =09 * Try to set up the PCH reference clock once all DPLLs
 =09 * that depend on it have been shut down.
 =09 */
-=09if (dev_priv->pch_ssc_use & BIT(id))
+=09if (dev_priv->display->pch_ssc_use & BIT(id))
 =09=09intel_init_pch_refclk(dev_priv);
 }
=20
@@ -592,7 +592,7 @@ static void hsw_ddi_spll_disable(struct drm_i915_privat=
e *dev_priv,
 =09 * Try to set up the PCH reference clock once all DPLLs
 =09 * that depend on it have been shut down.
 =09 */
-=09if (dev_priv->pch_ssc_use & BIT(id))
+=09if (dev_priv->display->pch_ssc_use & BIT(id))
 =09=09intel_init_pch_refclk(dev_priv);
 }
=20
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i91=
5/display/intel_vrr.c
index c335b1dbafcf..ce4419ee11f2 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -69,9 +69,9 @@ static int intel_vrr_vblank_exit_length(const struct inte=
l_crtc_state *crtc_stat
=20
 =09/* The hw imposes the extra scanline before frame start */
 =09if (DISPLAY_VER(i915) >=3D 13)
-=09=09return crtc_state->vrr.guardband + i915->framestart_delay + 1;
+=09=09return crtc_state->vrr.guardband + i915->display->framestart_delay +=
 1;
 =09else
-=09=09return crtc_state->vrr.pipeline_full + i915->framestart_delay + 1;
+=09=09return crtc_state->vrr.pipeline_full + i915->display->framestart_del=
ay + 1;
 }
=20
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
@@ -135,7 +135,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_=
state,
 =09if (DISPLAY_VER(i915) >=3D 13)
 =09=09crtc_state->vrr.guardband =3D
 =09=09=09crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay -
-=09=09=09i915->window2_delay;
+=09=09=09i915->display->window2_delay;
 =09else
 =09=09/*
 =09=09 * FIXME: s/4/framestart_delay+1/ to get consistent
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index a487686b1b71..6eba551396fc 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -848,6 +848,13 @@ struct drm_i915_display {
 =09unsigned int fdi_pll_freq;
 =09unsigned int czclk_freq;
=20
+=09u8 framestart_delay;
+
+=09/* Window2 specifies time required to program DSB (Window2) in number o=
f scan lines */
+=09u8 window2_delay;
+
+=09u8 pch_ssc_use;
+
 =09/**
 =09 * Base address of where the gmbus and gpio blocks are located (either
 =09 * on PCH or on SoC for platforms without PCH).
@@ -1199,13 +1206,6 @@ struct drm_i915_private {
 =09=09struct file *mmap_singleton;
 =09} gem;
=20
-=09u8 framestart_delay;
-
-=09/* Window2 specifies time required to program DSB (Window2) in number o=
f scan lines */
-=09u8 window2_delay;
-
-=09u8 pch_ssc_use;
-
 =09/* For i915gm/i945gm vblank irq workaround */
 =09u8 vblank_enabled;
=20
--=20
2.31.1

