Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4AF402441
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 09:26:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87E0B8984D;
	Tue,  7 Sep 2021 07:26:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC256897C5
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 07:26:45 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-599-jO5OrNLiMHyvAv-ecbod4w-1; Tue, 07 Sep 2021 03:26:38 -0400
X-MC-Unique: jO5OrNLiMHyvAv-ecbod4w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4649380196C;
 Tue,  7 Sep 2021 07:26:37 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 00CCD77C16;
 Tue,  7 Sep 2021 07:26:35 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Tue,  7 Sep 2021 17:25:46 +1000
Message-Id: <20210907072549.2962226-23-airlied@gmail.com>
In-Reply-To: <20210907072549.2962226-1-airlied@gmail.com>
References: <20210907072549.2962226-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 22/25] drm/i915/display: move dpll struct into
 display
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
 drivers/gpu/drm/i915/display/icl_dsi.c        |  12 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  24 ++--
 drivers/gpu/drm/i915/display/intel_display.c  |  10 +-
 .../drm/i915/display/intel_display_debugfs.c  |   8 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 104 +++++++++---------
 drivers/gpu/drm/i915/i915_drv.h               |  40 ++++---
 6 files changed, 98 insertions(+), 100 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/=
display/icl_dsi.c
index a1e35180d5dd..4979b183408f 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -650,13 +650,13 @@ static void gen11_dsi_gate_clocks(struct intel_encode=
r *encoder)
 =09u32 tmp;
 =09enum phy phy;
=20
-=09mutex_lock(&dev_priv->dpll.lock);
+=09mutex_lock(&dev_priv->display->dpll.lock);
 =09tmp =3D intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
 =09for_each_dsi_phy(phy, intel_dsi->phys)
 =09=09tmp |=3D ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
=20
 =09intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, tmp);
-=09mutex_unlock(&dev_priv->dpll.lock);
+=09mutex_unlock(&dev_priv->display->dpll.lock);
 }
=20
 static void gen11_dsi_ungate_clocks(struct intel_encoder *encoder)
@@ -666,13 +666,13 @@ static void gen11_dsi_ungate_clocks(struct intel_enco=
der *encoder)
 =09u32 tmp;
 =09enum phy phy;
=20
-=09mutex_lock(&dev_priv->dpll.lock);
+=09mutex_lock(&dev_priv->display->dpll.lock);
 =09tmp =3D intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
 =09for_each_dsi_phy(phy, intel_dsi->phys)
 =09=09tmp &=3D ~ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
=20
 =09intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, tmp);
-=09mutex_unlock(&dev_priv->dpll.lock);
+=09mutex_unlock(&dev_priv->display->dpll.lock);
 }
=20
 static bool gen11_dsi_is_clock_enabled(struct intel_encoder *encoder)
@@ -702,7 +702,7 @@ static void gen11_dsi_map_pll(struct intel_encoder *enc=
oder,
 =09enum phy phy;
 =09u32 val;
=20
-=09mutex_lock(&dev_priv->dpll.lock);
+=09mutex_lock(&dev_priv->display->dpll.lock);
=20
 =09val =3D intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
 =09for_each_dsi_phy(phy, intel_dsi->phys) {
@@ -721,7 +721,7 @@ static void gen11_dsi_map_pll(struct intel_encoder *enc=
oder,
=20
 =09intel_de_posting_read(dev_priv, ICL_DPCLKA_CFGCR0);
=20
-=09mutex_unlock(&dev_priv->dpll.lock);
+=09mutex_unlock(&dev_priv->display->dpll.lock);
 }
=20
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i91=
5/display/intel_ddi.c
index 73c7f8e3ea3b..8b0cf4f8ac63 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1450,7 +1450,7 @@ hsw_set_signal_levels(struct intel_dp *intel_dp,
 static void _icl_ddi_enable_clock(struct drm_i915_private *i915, i915_reg_=
t reg,
 =09=09=09=09  u32 clk_sel_mask, u32 clk_sel, u32 clk_off)
 {
-=09mutex_lock(&i915->dpll.lock);
+=09mutex_lock(&i915->display->dpll.lock);
=20
 =09intel_de_rmw(i915, reg, clk_sel_mask, clk_sel);
=20
@@ -1460,17 +1460,17 @@ static void _icl_ddi_enable_clock(struct drm_i915_p=
rivate *i915, i915_reg_t reg,
 =09 */
 =09intel_de_rmw(i915, reg, clk_off, 0);
=20
-=09mutex_unlock(&i915->dpll.lock);
+=09mutex_unlock(&i915->display->dpll.lock);
 }
=20
 static void _icl_ddi_disable_clock(struct drm_i915_private *i915, i915_reg=
_t reg,
 =09=09=09=09   u32 clk_off)
 {
-=09mutex_lock(&i915->dpll.lock);
+=09mutex_lock(&i915->display->dpll.lock);
=20
 =09intel_de_rmw(i915, reg, 0, clk_off);
=20
-=09mutex_unlock(&i915->dpll.lock);
+=09mutex_unlock(&i915->display->dpll.lock);
 }
=20
 static bool _icl_ddi_is_clock_enabled(struct drm_i915_private *i915, i915_=
reg_t reg,
@@ -1745,12 +1745,12 @@ static void icl_ddi_tc_enable_clock(struct intel_en=
coder *encoder,
 =09intel_de_write(i915, DDI_CLK_SEL(port),
 =09=09       icl_pll_to_ddi_clk_sel(encoder, crtc_state));
=20
-=09mutex_lock(&i915->dpll.lock);
+=09mutex_lock(&i915->display->dpll.lock);
=20
 =09intel_de_rmw(i915, ICL_DPCLKA_CFGCR0,
 =09=09     ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port), 0);
=20
-=09mutex_unlock(&i915->dpll.lock);
+=09mutex_unlock(&i915->display->dpll.lock);
 }
=20
 static void icl_ddi_tc_disable_clock(struct intel_encoder *encoder)
@@ -1759,12 +1759,12 @@ static void icl_ddi_tc_disable_clock(struct intel_e=
ncoder *encoder)
 =09enum tc_port tc_port =3D intel_port_to_tc(i915, encoder->port);
 =09enum port port =3D encoder->port;
=20
-=09mutex_lock(&i915->dpll.lock);
+=09mutex_lock(&i915->display->dpll.lock);
=20
 =09intel_de_rmw(i915, ICL_DPCLKA_CFGCR0,
 =09=09     0, ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port));
=20
-=09mutex_unlock(&i915->dpll.lock);
+=09mutex_unlock(&i915->display->dpll.lock);
=20
 =09intel_de_write(i915, DDI_CLK_SEL(port), DDI_CLK_SEL_NONE);
 }
@@ -1849,7 +1849,7 @@ static void skl_ddi_enable_clock(struct intel_encoder=
 *encoder,
 =09if (drm_WARN_ON(&i915->drm, !pll))
 =09=09return;
=20
-=09mutex_lock(&i915->dpll.lock);
+=09mutex_lock(&i915->display->dpll.lock);
=20
 =09intel_de_rmw(i915, DPLL_CTRL2,
 =09=09     DPLL_CTRL2_DDI_CLK_OFF(port) |
@@ -1857,7 +1857,7 @@ static void skl_ddi_enable_clock(struct intel_encoder=
 *encoder,
 =09=09     DPLL_CTRL2_DDI_CLK_SEL(pll->info->id, port) |
 =09=09     DPLL_CTRL2_DDI_SEL_OVERRIDE(port));
=20
-=09mutex_unlock(&i915->dpll.lock);
+=09mutex_unlock(&i915->display->dpll.lock);
 }
=20
 static void skl_ddi_disable_clock(struct intel_encoder *encoder)
@@ -1865,12 +1865,12 @@ static void skl_ddi_disable_clock(struct intel_enco=
der *encoder)
 =09struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
 =09enum port port =3D encoder->port;
=20
-=09mutex_lock(&i915->dpll.lock);
+=09mutex_lock(&i915->display->dpll.lock);
=20
 =09intel_de_rmw(i915, DPLL_CTRL2,
 =09=09     0, DPLL_CTRL2_DDI_CLK_OFF(port));
=20
-=09mutex_unlock(&i915->dpll.lock);
+=09mutex_unlock(&i915->display->dpll.lock);
 }
=20
 static bool skl_ddi_is_clock_enabled(struct intel_encoder *encoder)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index 606242b876b1..8e77bf7262df 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4765,7 +4765,7 @@ static void ilk_init_pch_refclk(struct drm_i915_priva=
te *dev_priv)
 =09}
=20
 =09/* Check if any DPLLs are using the SSC source */
-=09for (i =3D 0; i < dev_priv->dpll.num_shared_dpll; i++) {
+=09for (i =3D 0; i < dev_priv->display->dpll.num_shared_dpll; i++) {
 =09=09u32 temp =3D intel_de_read(dev_priv, PCH_DPLL(i));
=20
 =09=09if (!(temp & DPLL_VCO_ENABLE))
@@ -8093,11 +8093,11 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
=20
 =09PIPE_CONF_CHECK_BOOL(double_wide);
=20
-=09if (dev_priv->dpll.mgr)
+=09if (dev_priv->display->dpll.mgr)
 =09=09PIPE_CONF_CHECK_P(shared_dpll);
=20
 =09/* FIXME do the readout properly and get rid of this quirk */
-=09if (dev_priv->dpll.mgr && !PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_BIGJOINER_=
SLAVE)) {
+=09if (dev_priv->display->dpll.mgr && !PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_B=
IGJOINER_SLAVE)) {
 =09=09PIPE_CONF_CHECK_X(dpll_hw_state.dpll);
 =09=09PIPE_CONF_CHECK_X(dpll_hw_state.dpll_md);
 =09=09PIPE_CONF_CHECK_X(dpll_hw_state.fp0);
@@ -8645,9 +8645,9 @@ verify_disabled_dpll_state(struct drm_i915_private *d=
ev_priv)
 {
 =09int i;
=20
-=09for (i =3D 0; i < dev_priv->dpll.num_shared_dpll; i++)
+=09for (i =3D 0; i < dev_priv->display->dpll.num_shared_dpll; i++)
 =09=09verify_single_dpll_state(dev_priv,
-=09=09=09=09=09 &dev_priv->dpll.shared_dplls[i],
+=09=09=09=09=09 &dev_priv->display->dpll.shared_dplls[i],
 =09=09=09=09=09 NULL, NULL);
 }
=20
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers=
/gpu/drm/i915/display/intel_display_debugfs.c
index 784ce209add9..2841a67a9605 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1093,11 +1093,11 @@ static int i915_shared_dplls_info(struct seq_file *=
m, void *unused)
 =09drm_modeset_lock_all(dev);
=20
 =09seq_printf(m, "PLL refclks: non-SSC: %d kHz, SSC: %d kHz\n",
-=09=09   dev_priv->dpll.ref_clks.nssc,
-=09=09   dev_priv->dpll.ref_clks.ssc);
+=09=09   dev_priv->display->dpll.ref_clks.nssc,
+=09=09   dev_priv->display->dpll.ref_clks.ssc);
=20
-=09for (i =3D 0; i < dev_priv->dpll.num_shared_dpll; i++) {
-=09=09struct intel_shared_dpll *pll =3D &dev_priv->dpll.shared_dplls[i];
+=09for (i =3D 0; i < dev_priv->display->dpll.num_shared_dpll; i++) {
+=09=09struct intel_shared_dpll *pll =3D &dev_priv->display->dpll.shared_dp=
lls[i];
=20
 =09=09seq_printf(m, "DPLL%i: %s, id: %i\n", i, pll->info->name,
 =09=09=09   pll->info->id);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/dr=
m/i915/display/intel_dpll_mgr.c
index e9871560e0e5..db3d676227a5 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -70,8 +70,8 @@ intel_atomic_duplicate_dpll_state(struct drm_i915_private=
 *dev_priv,
 =09enum intel_dpll_id i;
=20
 =09/* Copy shared dpll state */
-=09for (i =3D 0; i < dev_priv->dpll.num_shared_dpll; i++) {
-=09=09struct intel_shared_dpll *pll =3D &dev_priv->dpll.shared_dplls[i];
+=09for (i =3D 0; i < dev_priv->display->dpll.num_shared_dpll; i++) {
+=09=09struct intel_shared_dpll *pll =3D &dev_priv->display->dpll.shared_dp=
lls[i];
=20
 =09=09shared_dpll[i] =3D pll->state;
 =09}
@@ -106,7 +106,7 @@ struct intel_shared_dpll *
 intel_get_shared_dpll_by_id(struct drm_i915_private *dev_priv,
 =09=09=09    enum intel_dpll_id id)
 {
-=09return &dev_priv->dpll.shared_dplls[id];
+=09return &dev_priv->display->dpll.shared_dplls[id];
 }
=20
 /**
@@ -121,11 +121,11 @@ enum intel_dpll_id
 intel_get_shared_dpll_id(struct drm_i915_private *dev_priv,
 =09=09=09 struct intel_shared_dpll *pll)
 {
-=09long pll_idx =3D pll - dev_priv->dpll.shared_dplls;
+=09long pll_idx =3D pll - dev_priv->display->dpll.shared_dplls;
=20
 =09if (drm_WARN_ON(&dev_priv->drm,
 =09=09=09pll_idx < 0 ||
-=09=09=09pll_idx >=3D dev_priv->dpll.num_shared_dpll))
+=09=09=09pll_idx >=3D dev_priv->display->dpll.num_shared_dpll))
 =09=09return -1;
=20
 =09return pll_idx;
@@ -201,7 +201,7 @@ void intel_enable_shared_dpll(const struct intel_crtc_s=
tate *crtc_state)
 =09if (drm_WARN_ON(&dev_priv->drm, pll =3D=3D NULL))
 =09=09return;
=20
-=09mutex_lock(&dev_priv->dpll.lock);
+=09mutex_lock(&dev_priv->display->dpll.lock);
 =09old_mask =3D pll->active_mask;
=20
 =09if (drm_WARN_ON(&dev_priv->drm, !(pll->state.pipe_mask & pipe_mask)) ||
@@ -227,7 +227,7 @@ void intel_enable_shared_dpll(const struct intel_crtc_s=
tate *crtc_state)
 =09pll->on =3D true;
=20
 out:
-=09mutex_unlock(&dev_priv->dpll.lock);
+=09mutex_unlock(&dev_priv->display->dpll.lock);
 }
=20
 /**
@@ -250,7 +250,7 @@ void intel_disable_shared_dpll(const struct intel_crtc_=
state *crtc_state)
 =09if (pll =3D=3D NULL)
 =09=09return;
=20
-=09mutex_lock(&dev_priv->dpll.lock);
+=09mutex_lock(&dev_priv->display->dpll.lock);
 =09if (drm_WARN(&dev_priv->drm, !(pll->active_mask & pipe_mask),
 =09=09     "%s not used by [CRTC:%d:%s]\n", pll->info->name,
 =09=09     crtc->base.base.id, crtc->base.name))
@@ -273,7 +273,7 @@ void intel_disable_shared_dpll(const struct intel_crtc_=
state *crtc_state)
 =09pll->on =3D false;
=20
 out:
-=09mutex_unlock(&dev_priv->dpll.lock);
+=09mutex_unlock(&dev_priv->display->dpll.lock);
 }
=20
 static struct intel_shared_dpll *
@@ -292,7 +292,7 @@ intel_find_shared_dpll(struct intel_atomic_state *state=
,
 =09drm_WARN_ON(&dev_priv->drm, dpll_mask & ~(BIT(I915_NUM_PLLS) - 1));
=20
 =09for_each_set_bit(i, &dpll_mask, I915_NUM_PLLS) {
-=09=09pll =3D &dev_priv->dpll.shared_dplls[i];
+=09=09pll =3D &dev_priv->display->dpll.shared_dplls[i];
=20
 =09=09/* Only want to check enabled timings first */
 =09=09if (shared_dpll[i].pipe_mask =3D=3D 0) {
@@ -392,9 +392,9 @@ void intel_shared_dpll_swap_state(struct intel_atomic_s=
tate *state)
 =09if (!state->dpll_set)
 =09=09return;
=20
-=09for (i =3D 0; i < dev_priv->dpll.num_shared_dpll; i++) {
+=09for (i =3D 0; i < dev_priv->display->dpll.num_shared_dpll; i++) {
 =09=09struct intel_shared_dpll *pll =3D
-=09=09=09&dev_priv->dpll.shared_dplls[i];
+=09=09=09&dev_priv->display->dpll.shared_dplls[i];
=20
 =09=09swap(pll->state, shared_dpll[i]);
 =09}
@@ -486,7 +486,7 @@ static bool ibx_get_dpll(struct intel_atomic_state *sta=
te,
 =09if (HAS_PCH_IBX(dev_priv)) {
 =09=09/* Ironlake PCH has a fixed PLL->PCH pipe mapping. */
 =09=09i =3D (enum intel_dpll_id) crtc->pipe;
-=09=09pll =3D &dev_priv->dpll.shared_dplls[i];
+=09=09pll =3D &dev_priv->display->dpll.shared_dplls[i];
=20
 =09=09drm_dbg_kms(&dev_priv->drm,
 =09=09=09    "[CRTC:%d:%s] using pre-allocated %s\n",
@@ -894,7 +894,7 @@ static int hsw_ddi_wrpll_get_freq(struct drm_i915_priva=
te *dev_priv,
 =09case WRPLL_REF_SPECIAL_HSW:
 =09=09/* Muxed-SSC for BDW, non-SSC for non-ULT HSW. */
 =09=09if (IS_HASWELL(dev_priv) && !IS_HSW_ULT(dev_priv)) {
-=09=09=09refclk =3D dev_priv->dpll.ref_clks.nssc;
+=09=09=09refclk =3D dev_priv->display->dpll.ref_clks.nssc;
 =09=09=09break;
 =09=09}
 =09=09fallthrough;
@@ -904,7 +904,7 @@ static int hsw_ddi_wrpll_get_freq(struct drm_i915_priva=
te *dev_priv,
 =09=09 * code only cares about 5% accuracy, and spread is a max of
 =09=09 * 0.5% downspread.
 =09=09 */
-=09=09refclk =3D dev_priv->dpll.ref_clks.ssc;
+=09=09refclk =3D dev_priv->display->dpll.ref_clks.ssc;
 =09=09break;
 =09case WRPLL_REF_LCPLL:
 =09=09refclk =3D 2700000;
@@ -1052,12 +1052,12 @@ static bool hsw_get_dpll(struct intel_atomic_state =
*state,
=20
 static void hsw_update_dpll_ref_clks(struct drm_i915_private *i915)
 {
-=09i915->dpll.ref_clks.ssc =3D 135000;
+=09i915->display->dpll.ref_clks.ssc =3D 135000;
 =09/* Non-SSC is only used on non-ULT HSW. */
 =09if (intel_de_read(i915, FUSE_STRAP3) & HSW_REF_CLK_SELECT)
-=09=09i915->dpll.ref_clks.nssc =3D 24000;
+=09=09i915->display->dpll.ref_clks.nssc =3D 24000;
 =09else
-=09=09i915->dpll.ref_clks.nssc =3D 135000;
+=09=09i915->display->dpll.ref_clks.nssc =3D 135000;
 }
=20
 static void hsw_dump_hw_state(struct drm_i915_private *dev_priv,
@@ -1548,7 +1548,7 @@ static bool skl_ddi_hdmi_pll_dividers(struct intel_cr=
tc_state *crtc_state)
 =09ctrl1 |=3D DPLL_CTRL1_HDMI_MODE(0);
=20
 =09if (!skl_ddi_calculate_wrpll(crtc_state->port_clock * 1000,
-=09=09=09=09     i915->dpll.ref_clks.nssc,
+=09=09=09=09     i915->display->dpll.ref_clks.nssc,
 =09=09=09=09     &wrpll_params))
 =09=09return false;
=20
@@ -1575,7 +1575,7 @@ static int skl_ddi_wrpll_get_freq(struct drm_i915_pri=
vate *i915,
 =09=09=09=09  const struct intel_shared_dpll *pll,
 =09=09=09=09  const struct intel_dpll_hw_state *pll_state)
 {
-=09int ref_clock =3D i915->dpll.ref_clks.nssc;
+=09int ref_clock =3D i915->display->dpll.ref_clks.nssc;
 =09u32 p0, p1, p2, dco_freq;
=20
 =09p0 =3D pll_state->cfgcr2 & DPLL_CFGCR2_PDIV_MASK;
@@ -1782,7 +1782,7 @@ static int skl_ddi_pll_get_freq(struct drm_i915_priva=
te *i915,
 static void skl_update_dpll_ref_clks(struct drm_i915_private *i915)
 {
 =09/* No SSC ref */
-=09i915->dpll.ref_clks.nssc =3D i915->display->cdclk.hw.ref;
+=09i915->display->dpll.ref_clks.nssc =3D i915->display->cdclk.hw.ref;
 }
=20
 static void skl_dump_hw_state(struct drm_i915_private *dev_priv,
@@ -2227,7 +2227,7 @@ static int bxt_ddi_pll_get_freq(struct drm_i915_priva=
te *i915,
 =09clock.p1 =3D (pll_state->ebb0 & PORT_PLL_P1_MASK) >> PORT_PLL_P1_SHIFT;
 =09clock.p2 =3D (pll_state->ebb0 & PORT_PLL_P2_MASK) >> PORT_PLL_P2_SHIFT;
=20
-=09return chv_calc_dpll_params(i915->dpll.ref_clks.nssc, &clock);
+=09return chv_calc_dpll_params(i915->display->dpll.ref_clks.nssc, &clock);
 }
=20
 static bool bxt_get_dpll(struct intel_atomic_state *state,
@@ -2265,8 +2265,8 @@ static bool bxt_get_dpll(struct intel_atomic_state *s=
tate,
=20
 static void bxt_update_dpll_ref_clks(struct drm_i915_private *i915)
 {
-=09i915->dpll.ref_clks.ssc =3D 100000;
-=09i915->dpll.ref_clks.nssc =3D 100000;
+=09i915->display->dpll.ref_clks.ssc =3D 100000;
+=09i915->display->dpll.ref_clks.nssc =3D 100000;
 =09/* DSI non-SSC ref 19.2MHz */
 }
=20
@@ -2408,7 +2408,7 @@ ehl_combo_pll_div_frac_wa_needed(struct drm_i915_priv=
ate *i915)
 =09return ((IS_PLATFORM(i915, INTEL_ELKHARTLAKE) &&
 =09=09 IS_JSL_EHL_DISPLAY_STEP(i915, STEP_B0, STEP_FOREVER)) ||
 =09=09 IS_TIGERLAKE(i915) || IS_ALDERLAKE_P(i915)) &&
-=09=09 i915->dpll.ref_clks.nssc =3D=3D 38400;
+=09=09 i915->display->dpll.ref_clks.nssc =3D=3D 38400;
 }
=20
 struct icl_combo_pll_params {
@@ -2502,7 +2502,7 @@ static bool icl_calc_dp_combo_pll(struct intel_crtc_s=
tate *crtc_state,
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
 =09const struct icl_combo_pll_params *params =3D
-=09=09dev_priv->dpll.ref_clks.nssc =3D=3D 24000 ?
+=09=09dev_priv->display->dpll.ref_clks.nssc =3D=3D 24000 ?
 =09=09icl_dp_combo_pll_24MHz_values :
 =09=09icl_dp_combo_pll_19_2MHz_values;
 =09int clock =3D crtc_state->port_clock;
@@ -2525,9 +2525,9 @@ static bool icl_calc_tbt_pll(struct intel_crtc_state =
*crtc_state,
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
=20
 =09if (DISPLAY_VER(dev_priv) >=3D 12) {
-=09=09switch (dev_priv->dpll.ref_clks.nssc) {
+=09=09switch (dev_priv->display->dpll.ref_clks.nssc) {
 =09=09default:
-=09=09=09MISSING_CASE(dev_priv->dpll.ref_clks.nssc);
+=09=09=09MISSING_CASE(dev_priv->display->dpll.ref_clks.nssc);
 =09=09=09fallthrough;
 =09=09case 19200:
 =09=09case 38400:
@@ -2538,9 +2538,9 @@ static bool icl_calc_tbt_pll(struct intel_crtc_state =
*crtc_state,
 =09=09=09break;
 =09=09}
 =09} else {
-=09=09switch (dev_priv->dpll.ref_clks.nssc) {
+=09=09switch (dev_priv->display->dpll.ref_clks.nssc) {
 =09=09default:
-=09=09=09MISSING_CASE(dev_priv->dpll.ref_clks.nssc);
+=09=09=09MISSING_CASE(dev_priv->display->dpll.ref_clks.nssc);
 =09=09=09fallthrough;
 =09=09case 19200:
 =09=09case 38400:
@@ -2570,7 +2570,7 @@ static int icl_ddi_tbt_pll_get_freq(struct drm_i915_p=
rivate *i915,
=20
 static int icl_wrpll_ref_clock(struct drm_i915_private *i915)
 {
-=09int ref_clock =3D i915->dpll.ref_clks.nssc;
+=09int ref_clock =3D i915->display->dpll.ref_clks.nssc;
=20
 =09/*
 =09 * For ICL+, the spec states: if reference frequency is 38.4,
@@ -2796,7 +2796,7 @@ static bool icl_calc_mg_pll_state(struct intel_crtc_s=
tate *crtc_state,
 =09=09=09=09  struct intel_dpll_hw_state *pll_state)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
-=09int refclk_khz =3D dev_priv->dpll.ref_clks.nssc;
+=09int refclk_khz =3D dev_priv->display->dpll.ref_clks.nssc;
 =09int clock =3D crtc_state->port_clock;
 =09u32 dco_khz, m1div, m2div_int, m2div_rem, m2div_frac;
 =09u32 iref_ndiv, iref_trim, iref_pulse_w;
@@ -3004,7 +3004,7 @@ static int icl_ddi_mg_pll_get_freq(struct drm_i915_pr=
ivate *dev_priv,
 =09u32 m1, m2_int, m2_frac, div1, div2, ref_clock;
 =09u64 tmp;
=20
-=09ref_clock =3D dev_priv->dpll.ref_clks.nssc;
+=09ref_clock =3D dev_priv->display->dpll.ref_clks.nssc;
=20
 =09if (DISPLAY_VER(dev_priv) >=3D 12) {
 =09=09m1 =3D pll_state->mg_pll_div0 & DKL_PLL_DIV0_FBPREDIV_MASK;
@@ -3349,7 +3349,7 @@ static bool mg_pll_get_hw_state(struct drm_i915_priva=
te *dev_priv,
 =09hw_state->mg_pll_tdc_coldst_bias =3D
 =09=09intel_de_read(dev_priv, MG_PLL_TDC_COLDST_BIAS(tc_port));
=20
-=09if (dev_priv->dpll.ref_clks.nssc =3D=3D 38400) {
+=09if (dev_priv->display->dpll.ref_clks.nssc =3D=3D 38400) {
 =09=09hw_state->mg_pll_tdc_coldst_bias_mask =3D MG_PLL_TDC_COLDST_COLDSTAR=
T;
 =09=09hw_state->mg_pll_bias_mask =3D 0;
 =09} else {
@@ -3867,7 +3867,7 @@ static void mg_pll_disable(struct drm_i915_private *d=
ev_priv,
 static void icl_update_dpll_ref_clks(struct drm_i915_private *i915)
 {
 =09/* No SSC ref */
-=09i915->dpll.ref_clks.nssc =3D i915->display->cdclk.hw.ref;
+=09i915->display->dpll.ref_clks.nssc =3D i915->display->cdclk.hw.ref;
 }
=20
 static void icl_dump_hw_state(struct drm_i915_private *dev_priv,
@@ -4085,7 +4085,7 @@ void intel_shared_dpll_init(struct drm_device *dev)
 =09=09dpll_mgr =3D &pch_pll_mgr;
=20
 =09if (!dpll_mgr) {
-=09=09dev_priv->dpll.num_shared_dpll =3D 0;
+=09=09dev_priv->display->dpll.num_shared_dpll =3D 0;
 =09=09return;
 =09}
=20
@@ -4093,14 +4093,14 @@ void intel_shared_dpll_init(struct drm_device *dev)
=20
 =09for (i =3D 0; dpll_info[i].name; i++) {
 =09=09drm_WARN_ON(dev, i !=3D dpll_info[i].id);
-=09=09dev_priv->dpll.shared_dplls[i].info =3D &dpll_info[i];
+=09=09dev_priv->display->dpll.shared_dplls[i].info =3D &dpll_info[i];
 =09}
=20
-=09dev_priv->dpll.mgr =3D dpll_mgr;
-=09dev_priv->dpll.num_shared_dpll =3D i;
-=09mutex_init(&dev_priv->dpll.lock);
+=09dev_priv->display->dpll.mgr =3D dpll_mgr;
+=09dev_priv->display->dpll.num_shared_dpll =3D i;
+=09mutex_init(&dev_priv->display->dpll.lock);
=20
-=09BUG_ON(dev_priv->dpll.num_shared_dpll > I915_NUM_PLLS);
+=09BUG_ON(dev_priv->display->dpll.num_shared_dpll > I915_NUM_PLLS);
 }
=20
 /**
@@ -4127,7 +4127,7 @@ bool intel_reserve_shared_dplls(struct intel_atomic_s=
tate *state,
 =09=09=09=09struct intel_encoder *encoder)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
-=09const struct intel_dpll_mgr *dpll_mgr =3D dev_priv->dpll.mgr;
+=09const struct intel_dpll_mgr *dpll_mgr =3D dev_priv->display->dpll.mgr;
=20
 =09if (drm_WARN_ON(&dev_priv->drm, !dpll_mgr))
 =09=09return false;
@@ -4150,7 +4150,7 @@ void intel_release_shared_dplls(struct intel_atomic_s=
tate *state,
 =09=09=09=09struct intel_crtc *crtc)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
-=09const struct intel_dpll_mgr *dpll_mgr =3D dev_priv->dpll.mgr;
+=09const struct intel_dpll_mgr *dpll_mgr =3D dev_priv->display->dpll.mgr;
=20
 =09/*
 =09 * FIXME: this function is called for every platform having a
@@ -4179,7 +4179,7 @@ void intel_update_active_dpll(struct intel_atomic_sta=
te *state,
 =09=09=09      struct intel_encoder *encoder)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
-=09const struct intel_dpll_mgr *dpll_mgr =3D dev_priv->dpll.mgr;
+=09const struct intel_dpll_mgr *dpll_mgr =3D dev_priv->display->dpll.mgr;
=20
 =09if (drm_WARN_ON(&dev_priv->drm, !dpll_mgr))
 =09=09return;
@@ -4250,16 +4250,16 @@ static void readout_dpll_hw_state(struct drm_i915_p=
rivate *i915,
=20
 void intel_dpll_update_ref_clks(struct drm_i915_private *i915)
 {
-=09if (i915->dpll.mgr && i915->dpll.mgr->update_ref_clks)
-=09=09i915->dpll.mgr->update_ref_clks(i915);
+=09if (i915->display->dpll.mgr && i915->display->dpll.mgr->update_ref_clks=
)
+=09=09i915->display->dpll.mgr->update_ref_clks(i915);
 }
=20
 void intel_dpll_readout_hw_state(struct drm_i915_private *i915)
 {
 =09int i;
=20
-=09for (i =3D 0; i < i915->dpll.num_shared_dpll; i++)
-=09=09readout_dpll_hw_state(i915, &i915->dpll.shared_dplls[i]);
+=09for (i =3D 0; i < i915->display->dpll.num_shared_dpll; i++)
+=09=09readout_dpll_hw_state(i915, &i915->display->dpll.shared_dplls[i]);
 }
=20
 static void sanitize_dpll_state(struct drm_i915_private *i915,
@@ -4285,8 +4285,8 @@ void intel_dpll_sanitize_state(struct drm_i915_privat=
e *i915)
 {
 =09int i;
=20
-=09for (i =3D 0; i < i915->dpll.num_shared_dpll; i++)
-=09=09sanitize_dpll_state(i915, &i915->dpll.shared_dplls[i]);
+=09for (i =3D 0; i < i915->display->dpll.num_shared_dpll; i++)
+=09=09sanitize_dpll_state(i915, &i915->display->dpll.shared_dplls[i]);
 }
=20
 /**
@@ -4299,8 +4299,8 @@ void intel_dpll_sanitize_state(struct drm_i915_privat=
e *i915)
 void intel_dpll_dump_hw_state(struct drm_i915_private *dev_priv,
 =09=09=09      const struct intel_dpll_hw_state *hw_state)
 {
-=09if (dev_priv->dpll.mgr) {
-=09=09dev_priv->dpll.mgr->dump_hw_state(dev_priv, hw_state);
+=09if (dev_priv->display->dpll.mgr) {
+=09=09dev_priv->display->dpll.mgr->dump_hw_state(dev_priv, hw_state);
 =09} else {
 =09=09/* fallback for platforms that don't use the shared dpll
 =09=09 * infrastructure
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index b3a48221b0fa..c73140ccdb44 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -946,6 +946,25 @@ struct drm_i915_display {
 =09bool chv_phy_assert[2];
=20
 =09u32 bxt_phy_grc;
+
+=09/**
+=09 * dpll and cdclk state is protected by connection_mutex
+=09 * dpll.lock serializes intel_{prepare,enable,disable}_shared_dpll.
+=09 * Must be global rather than per dpll, because on some platforms plls
+=09 * share registers.
+=09 */
+=09struct {
+=09=09struct mutex lock;
+
+=09=09int num_shared_dpll;
+=09=09struct intel_shared_dpll shared_dplls[I915_NUM_PLLS];
+=09=09const struct intel_dpll_mgr *mgr;
+
+=09=09struct {
+=09=09=09int nssc;
+=09=09=09int ssc;
+=09=09} ref_clks;
+=09} dpll;
 };
=20
 struct drm_i915_private {
@@ -1063,27 +1082,6 @@ struct drm_i915_private {
=20
 =09struct i915_gem_mm mm;
=20
-=09/* Kernel Modesetting */
-
-=09/**
-=09 * dpll and cdclk state is protected by connection_mutex
-=09 * dpll.lock serializes intel_{prepare,enable,disable}_shared_dpll.
-=09 * Must be global rather than per dpll, because on some platforms plls
-=09 * share registers.
-=09 */
-=09struct {
-=09=09struct mutex lock;
-
-=09=09int num_shared_dpll;
-=09=09struct intel_shared_dpll shared_dplls[I915_NUM_PLLS];
-=09=09const struct intel_dpll_mgr *mgr;
-
-=09=09struct {
-=09=09=09int nssc;
-=09=09=09int ssc;
-=09=09} ref_clks;
-=09} dpll;
-
 =09struct list_head global_obj_list;
=20
 =09struct i915_wa_list gt_wa_list;
--=20
2.31.1

