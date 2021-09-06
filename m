Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6ED940154F
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 05:50:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0948D899C4;
	Mon,  6 Sep 2021 03:50:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF4B6899C4
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Sep 2021 03:50:22 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-26-xWYHGtzeOb-hQVZkNSCuLw-1; Sun, 05 Sep 2021 23:44:11 -0400
X-MC-Unique: xWYHGtzeOb-hQVZkNSCuLw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4EB3818BA281;
 Mon,  6 Sep 2021 03:44:10 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 058F35D9DE;
 Mon,  6 Sep 2021 03:44:08 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Mon,  6 Sep 2021 13:43:48 +1000
Message-Id: <20210906034356.2946530-3-airlied@gmail.com>
In-Reply-To: <20210906034356.2946530-1-airlied@gmail.com>
References: <20210906034356.2946530-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 02/10] drm/i915/display: move cdclk info into
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
 drivers/gpu/drm/i915/display/intel_audio.c    |   4 +-
 .../gpu/drm/i915/display/intel_backlight.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 196 +++++++++---------
 drivers/gpu/drm/i915/display/intel_cdclk.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  16 +-
 .../drm/i915/display/intel_display_power.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   4 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   4 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |   2 +-
 drivers/gpu/drm/i915/gt/debugfs_gt_pm.c       |   4 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |   4 +-
 drivers/gpu/drm/i915/i915_drv.h               |  23 +-
 13 files changed, 136 insertions(+), 135 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i=
915/display/intel_audio.c
index fd56191c8a68..8ccf765840da 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -530,7 +530,7 @@ static unsigned int calc_hblank_early_prog(struct intel=
_encoder *encoder,
 =09h_total =3D crtc_state->hw.adjusted_mode.crtc_htotal;
 =09pixel_clk =3D crtc_state->hw.adjusted_mode.crtc_clock;
 =09vdsc_bpp =3D crtc_state->dsc.compressed_bpp;
-=09cdclk =3D i915->cdclk.hw.cdclk;
+=09cdclk =3D i915->display.cdclk.hw.cdclk;
 =09/* fec=3D 0.972261, using rounding multiplier of 1000000 */
 =09fec_coeff =3D 972261;
 =09link_clk =3D crtc_state->port_clock;
@@ -1076,7 +1076,7 @@ static int i915_audio_component_get_cdclk_freq(struct=
 device *kdev)
 =09if (drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_DDI(dev_priv)))
 =09=09return -ENODEV;
=20
-=09return dev_priv->cdclk.hw.cdclk;
+=09return dev_priv->display.cdclk.hw.cdclk;
 }
=20
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/d=
rm/i915/display/intel_backlight.c
index 9523411cddd8..d4d5cd9fdefb 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -1108,7 +1108,7 @@ static u32 i9xx_hz_to_pwm(struct intel_connector *con=
nector, u32 pwm_freq_hz)
 =09if (IS_PINEVIEW(dev_priv))
 =09=09clock =3D KHz(RUNTIME_INFO(dev_priv)->rawclk_freq);
 =09else
-=09=09clock =3D KHz(dev_priv->cdclk.hw.cdclk);
+=09=09clock =3D KHz(dev_priv->display.cdclk.hw.cdclk);
=20
 =09return DIV_ROUND_CLOSEST(clock, pwm_freq_hz * 32);
 }
@@ -1126,7 +1126,7 @@ static u32 i965_hz_to_pwm(struct intel_connector *con=
nector, u32 pwm_freq_hz)
 =09if (IS_G4X(dev_priv))
 =09=09clock =3D KHz(RUNTIME_INFO(dev_priv)->rawclk_freq);
 =09else
-=09=09clock =3D KHz(dev_priv->cdclk.hw.cdclk);
+=09=09clock =3D KHz(dev_priv->display.cdclk.hw.cdclk);
=20
 =09return DIV_ROUND_CLOSEST(clock, pwm_freq_hz * 128);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i=
915/display/intel_cdclk.c
index becbf0fc4c4d..cb54a0c8b4e0 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -506,7 +506,7 @@ static void vlv_program_pfi_credits(struct drm_i915_pri=
vate *dev_priv)
 =09else
 =09=09default_credits =3D PFI_CREDIT(8);
=20
-=09if (dev_priv->cdclk.hw.cdclk >=3D dev_priv->czclk_freq) {
+=09if (dev_priv->display.cdclk.hw.cdclk >=3D dev_priv->czclk_freq) {
 =09=09/* CHV suggested value is 31 or 63 */
 =09=09if (IS_CHERRYVIEW(dev_priv))
 =09=09=09credits =3D PFI_CREDIT_63;
@@ -985,7 +985,7 @@ static void skl_dpll0_enable(struct drm_i915_private *d=
ev_priv, int vco)
 =09if (intel_de_wait_for_set(dev_priv, LCPLL1_CTL, LCPLL_PLL_LOCK, 5))
 =09=09drm_err(&dev_priv->drm, "DPLL0 not locked\n");
=20
-=09dev_priv->cdclk.hw.vco =3D vco;
+=09dev_priv->display.cdclk.hw.vco =3D vco;
=20
 =09/* We'll want to keep using the current vco from now on. */
 =09skl_set_preferred_cdclk_vco(dev_priv, vco);
@@ -999,7 +999,7 @@ static void skl_dpll0_disable(struct drm_i915_private *=
dev_priv)
 =09if (intel_de_wait_for_clear(dev_priv, LCPLL1_CTL, LCPLL_PLL_LOCK, 1))
 =09=09drm_err(&dev_priv->drm, "Couldn't disable DPLL0\n");
=20
-=09dev_priv->cdclk.hw.vco =3D 0;
+=09dev_priv->display.cdclk.hw.vco =3D 0;
 }
=20
 static u32 skl_cdclk_freq_sel(struct drm_i915_private *dev_priv,
@@ -1008,7 +1008,7 @@ static u32 skl_cdclk_freq_sel(struct drm_i915_private=
 *dev_priv,
 =09switch (cdclk) {
 =09default:
 =09=09drm_WARN_ON(&dev_priv->drm,
-=09=09=09    cdclk !=3D dev_priv->cdclk.hw.bypass);
+=09=09=09    cdclk !=3D dev_priv->display.cdclk.hw.bypass);
 =09=09drm_WARN_ON(&dev_priv->drm, vco !=3D 0);
 =09=09fallthrough;
 =09case 308571:
@@ -1057,13 +1057,13 @@ static void skl_set_cdclk(struct drm_i915_private *=
dev_priv,
=20
 =09freq_select =3D skl_cdclk_freq_sel(dev_priv, cdclk, vco);
=20
-=09if (dev_priv->cdclk.hw.vco !=3D 0 &&
-=09    dev_priv->cdclk.hw.vco !=3D vco)
+=09if (dev_priv->display.cdclk.hw.vco !=3D 0 &&
+=09    dev_priv->display.cdclk.hw.vco !=3D vco)
 =09=09skl_dpll0_disable(dev_priv);
=20
 =09cdclk_ctl =3D intel_de_read(dev_priv, CDCLK_CTL);
=20
-=09if (dev_priv->cdclk.hw.vco !=3D vco) {
+=09if (dev_priv->display.cdclk.hw.vco !=3D vco) {
 =09=09/* Wa Display #1183: skl,kbl,cfl */
 =09=09cdclk_ctl &=3D ~(CDCLK_FREQ_SEL_MASK | CDCLK_FREQ_DECIMAL_MASK);
 =09=09cdclk_ctl |=3D freq_select | skl_cdclk_decimal(cdclk);
@@ -1075,7 +1075,7 @@ static void skl_set_cdclk(struct drm_i915_private *de=
v_priv,
 =09intel_de_write(dev_priv, CDCLK_CTL, cdclk_ctl);
 =09intel_de_posting_read(dev_priv, CDCLK_CTL);
=20
-=09if (dev_priv->cdclk.hw.vco !=3D vco)
+=09if (dev_priv->display.cdclk.hw.vco !=3D vco)
 =09=09skl_dpll0_enable(dev_priv, vco);
=20
 =09/* Wa Display #1183: skl,kbl,cfl */
@@ -1110,11 +1110,11 @@ static void skl_sanitize_cdclk(struct drm_i915_priv=
ate *dev_priv)
 =09=09goto sanitize;
=20
 =09intel_update_cdclk(dev_priv);
-=09intel_dump_cdclk_config(&dev_priv->cdclk.hw, "Current CDCLK");
+=09intel_dump_cdclk_config(&dev_priv->display.cdclk.hw, "Current CDCLK");
=20
 =09/* Is PLL enabled and locked ? */
-=09if (dev_priv->cdclk.hw.vco =3D=3D 0 ||
-=09    dev_priv->cdclk.hw.cdclk =3D=3D dev_priv->cdclk.hw.bypass)
+=09if (dev_priv->display.cdclk.hw.vco =3D=3D 0 ||
+=09    dev_priv->display.cdclk.hw.cdclk =3D=3D dev_priv->display.cdclk.hw.=
bypass)
 =09=09goto sanitize;
=20
 =09/* DPLL okay; verify the cdclock
@@ -1125,7 +1125,7 @@ static void skl_sanitize_cdclk(struct drm_i915_privat=
e *dev_priv)
 =09 */
 =09cdctl =3D intel_de_read(dev_priv, CDCLK_CTL);
 =09expected =3D (cdctl & CDCLK_FREQ_SEL_MASK) |
-=09=09skl_cdclk_decimal(dev_priv->cdclk.hw.cdclk);
+=09=09skl_cdclk_decimal(dev_priv->display.cdclk.hw.cdclk);
 =09if (cdctl =3D=3D expected)
 =09=09/* All well; nothing to sanitize */
 =09=09return;
@@ -1134,9 +1134,9 @@ static void skl_sanitize_cdclk(struct drm_i915_privat=
e *dev_priv)
 =09drm_dbg_kms(&dev_priv->drm, "Sanitizing cdclk programmed by pre-os\n");
=20
 =09/* force cdclk programming */
-=09dev_priv->cdclk.hw.cdclk =3D 0;
+=09dev_priv->display.cdclk.hw.cdclk =3D 0;
 =09/* force full PLL disable + enable */
-=09dev_priv->cdclk.hw.vco =3D -1;
+=09dev_priv->display.cdclk.hw.vco =3D -1;
 }
=20
 static void skl_cdclk_init_hw(struct drm_i915_private *dev_priv)
@@ -1145,19 +1145,19 @@ static void skl_cdclk_init_hw(struct drm_i915_priva=
te *dev_priv)
=20
 =09skl_sanitize_cdclk(dev_priv);
=20
-=09if (dev_priv->cdclk.hw.cdclk !=3D 0 &&
-=09    dev_priv->cdclk.hw.vco !=3D 0) {
+=09if (dev_priv->display.cdclk.hw.cdclk !=3D 0 &&
+=09    dev_priv->display.cdclk.hw.vco !=3D 0) {
 =09=09/*
 =09=09 * Use the current vco as our initial
 =09=09 * guess as to what the preferred vco is.
 =09=09 */
 =09=09if (dev_priv->skl_preferred_vco_freq =3D=3D 0)
 =09=09=09skl_set_preferred_cdclk_vco(dev_priv,
-=09=09=09=09=09=09    dev_priv->cdclk.hw.vco);
+=09=09=09=09=09=09    dev_priv->display.cdclk.hw.vco);
 =09=09return;
 =09}
=20
-=09cdclk_config =3D dev_priv->cdclk.hw;
+=09cdclk_config =3D dev_priv->display.cdclk.hw;
=20
 =09cdclk_config.vco =3D dev_priv->skl_preferred_vco_freq;
 =09if (cdclk_config.vco =3D=3D 0)
@@ -1170,7 +1170,7 @@ static void skl_cdclk_init_hw(struct drm_i915_private=
 *dev_priv)
=20
 static void skl_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
 {
-=09struct intel_cdclk_config cdclk_config =3D dev_priv->cdclk.hw;
+=09struct intel_cdclk_config cdclk_config =3D dev_priv->display.cdclk.hw;
=20
 =09cdclk_config.cdclk =3D cdclk_config.bypass;
 =09cdclk_config.vco =3D 0;
@@ -1291,35 +1291,35 @@ static const struct intel_cdclk_vals dg2_cdclk_tabl=
e[] =3D {
=20
 static int bxt_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdclk=
)
 {
-=09const struct intel_cdclk_vals *table =3D dev_priv->cdclk.table;
+=09const struct intel_cdclk_vals *table =3D dev_priv->display.cdclk.table;
 =09int i;
=20
 =09for (i =3D 0; table[i].refclk; i++)
-=09=09if (table[i].refclk =3D=3D dev_priv->cdclk.hw.ref &&
+=09=09if (table[i].refclk =3D=3D dev_priv->display.cdclk.hw.ref &&
 =09=09    table[i].cdclk >=3D min_cdclk)
 =09=09=09return table[i].cdclk;
=20
 =09drm_WARN(&dev_priv->drm, 1,
 =09=09 "Cannot satisfy minimum cdclk %d with refclk %u\n",
-=09=09 min_cdclk, dev_priv->cdclk.hw.ref);
+=09=09 min_cdclk, dev_priv->display.cdclk.hw.ref);
 =09return 0;
 }
=20
 static int bxt_calc_cdclk_pll_vco(struct drm_i915_private *dev_priv, int c=
dclk)
 {
-=09const struct intel_cdclk_vals *table =3D dev_priv->cdclk.table;
+=09const struct intel_cdclk_vals *table =3D dev_priv->display.cdclk.table;
 =09int i;
=20
-=09if (cdclk =3D=3D dev_priv->cdclk.hw.bypass)
+=09if (cdclk =3D=3D dev_priv->display.cdclk.hw.bypass)
 =09=09return 0;
=20
 =09for (i =3D 0; table[i].refclk; i++)
-=09=09if (table[i].refclk =3D=3D dev_priv->cdclk.hw.ref &&
+=09=09if (table[i].refclk =3D=3D dev_priv->display.cdclk.hw.ref &&
 =09=09    table[i].cdclk =3D=3D cdclk)
-=09=09=09return dev_priv->cdclk.hw.ref * table[i].ratio;
+=09=09=09return dev_priv->display.cdclk.hw.ref * table[i].ratio;
=20
 =09drm_WARN(&dev_priv->drm, 1, "cdclk %d not valid for refclk %u\n",
-=09=09 cdclk, dev_priv->cdclk.hw.ref);
+=09=09 cdclk, dev_priv->display.cdclk.hw.ref);
 =09return 0;
 }
=20
@@ -1478,12 +1478,12 @@ static void bxt_de_pll_disable(struct drm_i915_priv=
ate *dev_priv)
 =09=09=09=09    BXT_DE_PLL_ENABLE, BXT_DE_PLL_LOCK, 1))
 =09=09drm_err(&dev_priv->drm, "timeout waiting for DE PLL unlock\n");
=20
-=09dev_priv->cdclk.hw.vco =3D 0;
+=09dev_priv->display.cdclk.hw.vco =3D 0;
 }
=20
 static void bxt_de_pll_enable(struct drm_i915_private *dev_priv, int vco)
 {
-=09int ratio =3D DIV_ROUND_CLOSEST(vco, dev_priv->cdclk.hw.ref);
+=09int ratio =3D DIV_ROUND_CLOSEST(vco, dev_priv->display.cdclk.hw.ref);
=20
 =09intel_de_rmw(dev_priv, BXT_DE_PLL_CTL,
 =09=09     BXT_DE_PLL_RATIO_MASK, BXT_DE_PLL_RATIO(ratio));
@@ -1495,7 +1495,7 @@ static void bxt_de_pll_enable(struct drm_i915_private=
 *dev_priv, int vco)
 =09=09=09=09  BXT_DE_PLL_ENABLE, BXT_DE_PLL_LOCK, 1))
 =09=09drm_err(&dev_priv->drm, "timeout waiting for DE PLL lock\n");
=20
-=09dev_priv->cdclk.hw.vco =3D vco;
+=09dev_priv->display.cdclk.hw.vco =3D vco;
 }
=20
 static void icl_cdclk_pll_disable(struct drm_i915_private *dev_priv)
@@ -1507,12 +1507,12 @@ static void icl_cdclk_pll_disable(struct drm_i915_p=
rivate *dev_priv)
 =09if (intel_de_wait_for_clear(dev_priv, BXT_DE_PLL_ENABLE, BXT_DE_PLL_LOC=
K, 1))
 =09=09drm_err(&dev_priv->drm, "timeout waiting for CDCLK PLL unlock\n");
=20
-=09dev_priv->cdclk.hw.vco =3D 0;
+=09dev_priv->display.cdclk.hw.vco =3D 0;
 }
=20
 static void icl_cdclk_pll_enable(struct drm_i915_private *dev_priv, int vc=
o)
 {
-=09int ratio =3D DIV_ROUND_CLOSEST(vco, dev_priv->cdclk.hw.ref);
+=09int ratio =3D DIV_ROUND_CLOSEST(vco, dev_priv->display.cdclk.hw.ref);
 =09u32 val;
=20
 =09val =3D ICL_CDCLK_PLL_RATIO(ratio);
@@ -1525,12 +1525,12 @@ static void icl_cdclk_pll_enable(struct drm_i915_pr=
ivate *dev_priv, int vco)
 =09if (intel_de_wait_for_set(dev_priv, BXT_DE_PLL_ENABLE, BXT_DE_PLL_LOCK,=
 1))
 =09=09drm_err(&dev_priv->drm, "timeout waiting for CDCLK PLL lock\n");
=20
-=09dev_priv->cdclk.hw.vco =3D vco;
+=09dev_priv->display.cdclk.hw.vco =3D vco;
 }
=20
 static void adlp_cdclk_pll_crawl(struct drm_i915_private *dev_priv, int vc=
o)
 {
-=09int ratio =3D DIV_ROUND_CLOSEST(vco, dev_priv->cdclk.hw.ref);
+=09int ratio =3D DIV_ROUND_CLOSEST(vco, dev_priv->display.cdclk.hw.ref);
 =09u32 val;
=20
 =09/* Write PLL ratio without disabling */
@@ -1549,7 +1549,7 @@ static void adlp_cdclk_pll_crawl(struct drm_i915_priv=
ate *dev_priv, int vco)
 =09val &=3D ~BXT_DE_PLL_FREQ_REQ;
 =09intel_de_write(dev_priv, BXT_DE_PLL_ENABLE, val);
=20
-=09dev_priv->cdclk.hw.vco =3D vco;
+=09dev_priv->display.cdclk.hw.vco =3D vco;
 }
=20
 static u32 bxt_cdclk_cd2x_pipe(struct drm_i915_private *dev_priv, enum pip=
e pipe)
@@ -1579,7 +1579,7 @@ static u32 bxt_cdclk_cd2x_div_sel(struct drm_i915_pri=
vate *dev_priv,
 =09switch (DIV_ROUND_CLOSEST(vco, cdclk)) {
 =09default:
 =09=09drm_WARN_ON(&dev_priv->drm,
-=09=09=09    cdclk !=3D dev_priv->cdclk.hw.bypass);
+=09=09=09    cdclk !=3D dev_priv->display.cdclk.hw.bypass);
 =09=09drm_WARN_ON(&dev_priv->drm, vco !=3D 0);
 =09=09fallthrough;
 =09case 2:
@@ -1624,22 +1624,22 @@ static void bxt_set_cdclk(struct drm_i915_private *=
dev_priv,
 =09=09return;
 =09}
=20
-=09if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->cdclk.hw.vco > 0 && vco > 0)=
 {
-=09=09if (dev_priv->cdclk.hw.vco !=3D vco)
+=09if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && =
vco > 0) {
+=09=09if (dev_priv->display.cdclk.hw.vco !=3D vco)
 =09=09=09adlp_cdclk_pll_crawl(dev_priv, vco);
 =09} else if (DISPLAY_VER(dev_priv) >=3D 11) {
-=09=09if (dev_priv->cdclk.hw.vco !=3D 0 &&
-=09=09    dev_priv->cdclk.hw.vco !=3D vco)
+=09=09if (dev_priv->display.cdclk.hw.vco !=3D 0 &&
+=09=09    dev_priv->display.cdclk.hw.vco !=3D vco)
 =09=09=09icl_cdclk_pll_disable(dev_priv);
=20
-=09=09if (dev_priv->cdclk.hw.vco !=3D vco)
+=09=09if (dev_priv->display.cdclk.hw.vco !=3D vco)
 =09=09=09icl_cdclk_pll_enable(dev_priv, vco);
 =09} else {
-=09=09if (dev_priv->cdclk.hw.vco !=3D 0 &&
-=09=09    dev_priv->cdclk.hw.vco !=3D vco)
+=09=09if (dev_priv->display.cdclk.hw.vco !=3D 0 &&
+=09=09    dev_priv->display.cdclk.hw.vco !=3D vco)
 =09=09=09bxt_de_pll_disable(dev_priv);
=20
-=09=09if (dev_priv->cdclk.hw.vco !=3D vco)
+=09=09if (dev_priv->display.cdclk.hw.vco !=3D vco)
 =09=09=09bxt_de_pll_enable(dev_priv, vco);
 =09}
=20
@@ -1689,7 +1689,7 @@ static void bxt_set_cdclk(struct drm_i915_private *de=
v_priv,
 =09=09 * Can't read out the voltage level :(
 =09=09 * Let's just assume everything is as expected.
 =09=09 */
-=09=09dev_priv->cdclk.hw.voltage_level =3D cdclk_config->voltage_level;
+=09=09dev_priv->display.cdclk.hw.voltage_level =3D cdclk_config->voltage_l=
evel;
 }
=20
 static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
@@ -1698,10 +1698,10 @@ static void bxt_sanitize_cdclk(struct drm_i915_priv=
ate *dev_priv)
 =09int cdclk, vco;
=20
 =09intel_update_cdclk(dev_priv);
-=09intel_dump_cdclk_config(&dev_priv->cdclk.hw, "Current CDCLK");
+=09intel_dump_cdclk_config(&dev_priv->display.cdclk.hw, "Current CDCLK");
=20
-=09if (dev_priv->cdclk.hw.vco =3D=3D 0 ||
-=09    dev_priv->cdclk.hw.cdclk =3D=3D dev_priv->cdclk.hw.bypass)
+=09if (dev_priv->display.cdclk.hw.vco =3D=3D 0 ||
+=09    dev_priv->display.cdclk.hw.cdclk =3D=3D dev_priv->display.cdclk.hw.=
bypass)
 =09=09goto sanitize;
=20
 =09/* DPLL okay; verify the cdclock
@@ -1719,28 +1719,28 @@ static void bxt_sanitize_cdclk(struct drm_i915_priv=
ate *dev_priv)
 =09cdctl &=3D ~bxt_cdclk_cd2x_pipe(dev_priv, INVALID_PIPE);
=20
 =09/* Make sure this is a legal cdclk value for the platform */
-=09cdclk =3D bxt_calc_cdclk(dev_priv, dev_priv->cdclk.hw.cdclk);
-=09if (cdclk !=3D dev_priv->cdclk.hw.cdclk)
+=09cdclk =3D bxt_calc_cdclk(dev_priv, dev_priv->display.cdclk.hw.cdclk);
+=09if (cdclk !=3D dev_priv->display.cdclk.hw.cdclk)
 =09=09goto sanitize;
=20
 =09/* Make sure the VCO is correct for the cdclk */
 =09vco =3D bxt_calc_cdclk_pll_vco(dev_priv, cdclk);
-=09if (vco !=3D dev_priv->cdclk.hw.vco)
+=09if (vco !=3D dev_priv->display.cdclk.hw.vco)
 =09=09goto sanitize;
=20
 =09expected =3D skl_cdclk_decimal(cdclk);
=20
 =09/* Figure out what CD2X divider we should be using for this cdclk */
 =09expected |=3D bxt_cdclk_cd2x_div_sel(dev_priv,
-=09=09=09=09=09   dev_priv->cdclk.hw.cdclk,
-=09=09=09=09=09   dev_priv->cdclk.hw.vco);
+=09=09=09=09=09   dev_priv->display.cdclk.hw.cdclk,
+=09=09=09=09=09   dev_priv->display.cdclk.hw.vco);
=20
 =09/*
 =09 * Disable SSA Precharge when CD clock frequency < 500 MHz,
 =09 * enable otherwise.
 =09 */
 =09if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
-=09    dev_priv->cdclk.hw.cdclk >=3D 500000)
+=09    dev_priv->display.cdclk.hw.cdclk >=3D 500000)
 =09=09expected |=3D BXT_CDCLK_SSA_PRECHARGE_ENABLE;
=20
 =09if (cdctl =3D=3D expected)
@@ -1751,10 +1751,10 @@ static void bxt_sanitize_cdclk(struct drm_i915_priv=
ate *dev_priv)
 =09drm_dbg_kms(&dev_priv->drm, "Sanitizing cdclk programmed by pre-os\n");
=20
 =09/* force cdclk programming */
-=09dev_priv->cdclk.hw.cdclk =3D 0;
+=09dev_priv->display.cdclk.hw.cdclk =3D 0;
=20
 =09/* force full PLL disable + enable */
-=09dev_priv->cdclk.hw.vco =3D -1;
+=09dev_priv->display.cdclk.hw.vco =3D -1;
 }
=20
 static void bxt_cdclk_init_hw(struct drm_i915_private *dev_priv)
@@ -1763,11 +1763,11 @@ static void bxt_cdclk_init_hw(struct drm_i915_priva=
te *dev_priv)
=20
 =09bxt_sanitize_cdclk(dev_priv);
=20
-=09if (dev_priv->cdclk.hw.cdclk !=3D 0 &&
-=09    dev_priv->cdclk.hw.vco !=3D 0)
+=09if (dev_priv->display.cdclk.hw.cdclk !=3D 0 &&
+=09    dev_priv->display.cdclk.hw.vco !=3D 0)
 =09=09return;
=20
-=09cdclk_config =3D dev_priv->cdclk.hw;
+=09cdclk_config =3D dev_priv->display.cdclk.hw;
=20
 =09/*
 =09 * FIXME:
@@ -1784,7 +1784,7 @@ static void bxt_cdclk_init_hw(struct drm_i915_private=
 *dev_priv)
=20
 static void bxt_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
 {
-=09struct intel_cdclk_config cdclk_config =3D dev_priv->cdclk.hw;
+=09struct intel_cdclk_config cdclk_config =3D dev_priv->display.cdclk.hw;
=20
 =09cdclk_config.cdclk =3D cdclk_config.bypass;
 =09cdclk_config.vco =3D 0;
@@ -1798,7 +1798,7 @@ static void bxt_cdclk_uninit_hw(struct drm_i915_priva=
te *dev_priv)
  * intel_cdclk_init_hw - Initialize CDCLK hardware
  * @i915: i915 device
  *
- * Initialize CDCLK. This consists mainly of initializing dev_priv->cdclk.=
hw and
+ * Initialize CDCLK. This consists mainly of initializing dev_priv->displa=
y.cdclk.hw and
  * sanitizing the state of the hardware if needed. This is generally done =
only
  * during the display core initialization sequence, after which the DMC wi=
ll
  * take care of turning CDCLK off/on as needed.
@@ -1929,7 +1929,7 @@ static void intel_set_cdclk(struct drm_i915_private *=
dev_priv,
 {
 =09struct intel_encoder *encoder;
=20
-=09if (!intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config))
+=09if (!intel_cdclk_changed(&dev_priv->display.cdclk.hw, cdclk_config))
 =09=09return;
=20
 =09if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->display.funcs.set_cdclk=
))
@@ -1972,9 +1972,9 @@ static void intel_set_cdclk(struct drm_i915_private *=
dev_priv,
 =09}
=20
 =09if (drm_WARN(&dev_priv->drm,
-=09=09     intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config),
+=09=09     intel_cdclk_changed(&dev_priv->display.cdclk.hw, cdclk_config),
 =09=09     "cdclk state doesn't match!\n")) {
-=09=09intel_dump_cdclk_config(&dev_priv->cdclk.hw, "[hw state]");
+=09=09intel_dump_cdclk_config(&dev_priv->display.cdclk.hw, "[hw state]");
 =09=09intel_dump_cdclk_config(cdclk_config, "[sw state]");
 =09}
 }
@@ -2155,13 +2155,13 @@ int intel_crtc_compute_min_cdclk(const struct intel=
_crtc_state *crtc_state)
 =09=09 */
 =09=09min_cdclk =3D max_t(int, min_cdclk,
 =09=09=09=09  min_t(int, crtc_state->pixel_rate,
-=09=09=09=09=09dev_priv->max_cdclk_freq));
+=09=09=09=09=09dev_priv->display.max_cdclk_freq));
 =09}
=20
-=09if (min_cdclk > dev_priv->max_cdclk_freq) {
+=09if (min_cdclk > dev_priv->display.max_cdclk_freq) {
 =09=09drm_dbg_kms(&dev_priv->drm,
 =09=09=09    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
-=09=09=09    min_cdclk, dev_priv->max_cdclk_freq);
+=09=09=09    min_cdclk, dev_priv->display.max_cdclk_freq);
 =09=09return -EINVAL;
 =09}
=20
@@ -2477,7 +2477,7 @@ intel_atomic_get_cdclk_state(struct intel_atomic_stat=
e *state)
 =09struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
 =09struct intel_global_state *cdclk_state;
=20
-=09cdclk_state =3D intel_atomic_get_global_obj_state(state, &dev_priv->cdc=
lk.obj);
+=09cdclk_state =3D intel_atomic_get_global_obj_state(state, &dev_priv->dis=
play.cdclk.obj);
 =09if (IS_ERR(cdclk_state))
 =09=09return ERR_CAST(cdclk_state);
=20
@@ -2492,7 +2492,7 @@ int intel_cdclk_init(struct drm_i915_private *dev_pri=
v)
 =09if (!cdclk_state)
 =09=09return -ENOMEM;
=20
-=09intel_atomic_global_obj_init(dev_priv, &dev_priv->cdclk.obj,
+=09intel_atomic_global_obj_init(dev_priv, &dev_priv->display.cdclk.obj,
 =09=09=09=09     &cdclk_state->base, &intel_cdclk_funcs);
=20
 =09return 0;
@@ -2593,7 +2593,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_stat=
e *state)
=20
 static int intel_compute_max_dotclk(struct drm_i915_private *dev_priv)
 {
-=09int max_cdclk_freq =3D dev_priv->max_cdclk_freq;
+=09int max_cdclk_freq =3D dev_priv->display.max_cdclk_freq;
=20
 =09if (DISPLAY_VER(dev_priv) >=3D 10)
 =09=09return 2 * max_cdclk_freq;
@@ -2619,19 +2619,19 @@ static int intel_compute_max_dotclk(struct drm_i915=
_private *dev_priv)
 void intel_update_max_cdclk(struct drm_i915_private *dev_priv)
 {
 =09if (IS_JSL_EHL(dev_priv)) {
-=09=09if (dev_priv->cdclk.hw.ref =3D=3D 24000)
-=09=09=09dev_priv->max_cdclk_freq =3D 552000;
+=09=09if (dev_priv->display.cdclk.hw.ref =3D=3D 24000)
+=09=09=09dev_priv->display.max_cdclk_freq =3D 552000;
 =09=09else
-=09=09=09dev_priv->max_cdclk_freq =3D 556800;
+=09=09=09dev_priv->display.max_cdclk_freq =3D 556800;
 =09} else if (DISPLAY_VER(dev_priv) >=3D 11) {
-=09=09if (dev_priv->cdclk.hw.ref =3D=3D 24000)
-=09=09=09dev_priv->max_cdclk_freq =3D 648000;
+=09=09if (dev_priv->display.cdclk.hw.ref =3D=3D 24000)
+=09=09=09dev_priv->display.max_cdclk_freq =3D 648000;
 =09=09else
-=09=09=09dev_priv->max_cdclk_freq =3D 652800;
+=09=09=09dev_priv->display.max_cdclk_freq =3D 652800;
 =09} else if (IS_GEMINILAKE(dev_priv)) {
-=09=09dev_priv->max_cdclk_freq =3D 316800;
+=09=09dev_priv->display.max_cdclk_freq =3D 316800;
 =09} else if (IS_BROXTON(dev_priv)) {
-=09=09dev_priv->max_cdclk_freq =3D 624000;
+=09=09dev_priv->display.max_cdclk_freq =3D 624000;
 =09} else if (DISPLAY_VER(dev_priv) =3D=3D 9) {
 =09=09u32 limit =3D intel_de_read(dev_priv, SKL_DFSM) & SKL_DFSM_CDCLK_LIM=
IT_MASK;
 =09=09int max_cdclk, vco;
@@ -2653,7 +2653,7 @@ void intel_update_max_cdclk(struct drm_i915_private *=
dev_priv)
 =09=09else
 =09=09=09max_cdclk =3D 308571;
=20
-=09=09dev_priv->max_cdclk_freq =3D skl_calc_cdclk(max_cdclk, vco);
+=09=09dev_priv->display.max_cdclk_freq =3D skl_calc_cdclk(max_cdclk, vco);
 =09} else if (IS_BROADWELL(dev_priv))  {
 =09=09/*
 =09=09 * FIXME with extra cooling we can allow
@@ -2662,26 +2662,26 @@ void intel_update_max_cdclk(struct drm_i915_private=
 *dev_priv)
 =09=09 * available? PCI ID, VTB, something else?
 =09=09 */
 =09=09if (intel_de_read(dev_priv, FUSE_STRAP) & HSW_CDCLK_LIMIT)
-=09=09=09dev_priv->max_cdclk_freq =3D 450000;
+=09=09=09dev_priv->display.max_cdclk_freq =3D 450000;
 =09=09else if (IS_BDW_ULX(dev_priv))
-=09=09=09dev_priv->max_cdclk_freq =3D 450000;
+=09=09=09dev_priv->display.max_cdclk_freq =3D 450000;
 =09=09else if (IS_BDW_ULT(dev_priv))
-=09=09=09dev_priv->max_cdclk_freq =3D 540000;
+=09=09=09dev_priv->display.max_cdclk_freq =3D 540000;
 =09=09else
-=09=09=09dev_priv->max_cdclk_freq =3D 675000;
+=09=09=09dev_priv->display.max_cdclk_freq =3D 675000;
 =09} else if (IS_CHERRYVIEW(dev_priv)) {
-=09=09dev_priv->max_cdclk_freq =3D 320000;
+=09=09dev_priv->display.max_cdclk_freq =3D 320000;
 =09} else if (IS_VALLEYVIEW(dev_priv)) {
-=09=09dev_priv->max_cdclk_freq =3D 400000;
+=09=09dev_priv->display.max_cdclk_freq =3D 400000;
 =09} else {
 =09=09/* otherwise assume cdclk is fixed */
-=09=09dev_priv->max_cdclk_freq =3D dev_priv->cdclk.hw.cdclk;
+=09=09dev_priv->display.max_cdclk_freq =3D dev_priv->display.cdclk.hw.cdcl=
k;
 =09}
=20
 =09dev_priv->max_dotclk_freq =3D intel_compute_max_dotclk(dev_priv);
=20
 =09drm_dbg(&dev_priv->drm, "Max CD clock rate: %d kHz\n",
-=09=09dev_priv->max_cdclk_freq);
+=09=09dev_priv->display.max_cdclk_freq);
=20
 =09drm_dbg(&dev_priv->drm, "Max dotclock rate: %d kHz\n",
 =09=09dev_priv->max_dotclk_freq);
@@ -2695,7 +2695,7 @@ void intel_update_max_cdclk(struct drm_i915_private *=
dev_priv)
  */
 void intel_update_cdclk(struct drm_i915_private *dev_priv)
 {
-=09dev_priv->display.funcs.get_cdclk(dev_priv, &dev_priv->cdclk.hw);
+=09dev_priv->display.funcs.get_cdclk(dev_priv, &dev_priv->display.cdclk.hw=
);
=20
 =09/*
 =09 * 9:0 CMBUS [sic] CDCLK frequency (cdfreq):
@@ -2705,7 +2705,7 @@ void intel_update_cdclk(struct drm_i915_private *dev_=
priv)
 =09 */
 =09if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 =09=09intel_de_write(dev_priv, GMBUSFREQ_VLV,
-=09=09=09       DIV_ROUND_UP(dev_priv->cdclk.hw.cdclk, 1000));
+=09=09=09       DIV_ROUND_UP(dev_priv->display.cdclk.hw.cdclk, 1000));
 }
=20
 static int dg1_rawclk(struct drm_i915_private *dev_priv)
@@ -2856,7 +2856,7 @@ void intel_init_cdclk_hooks(struct drm_i915_private *=
dev_priv)
 =09=09dev_priv->display.funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
 =09=09dev_priv->display.funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdcl=
k;
 =09=09dev_priv->display.funcs.calc_voltage_level =3D tgl_calc_voltage_leve=
l;
-=09=09dev_priv->cdclk.table =3D dg2_cdclk_table;
+=09=09dev_priv->display.cdclk.table =3D dg2_cdclk_table;
 =09} else if (IS_ALDERLAKE_P(dev_priv)) {
 =09=09dev_priv->display.funcs.set_cdclk =3D bxt_set_cdclk;
 =09=09dev_priv->display.funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
@@ -2864,42 +2864,42 @@ void intel_init_cdclk_hooks(struct drm_i915_private=
 *dev_priv)
 =09=09dev_priv->display.funcs.calc_voltage_level =3D tgl_calc_voltage_leve=
l;
 =09=09/* Wa_22011320316:adl-p[a0] */
 =09=09if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
-=09=09=09dev_priv->cdclk.table =3D adlp_a_step_cdclk_table;
+=09=09=09dev_priv->display.cdclk.table =3D adlp_a_step_cdclk_table;
 =09=09else
-=09=09=09dev_priv->cdclk.table =3D adlp_cdclk_table;
+=09=09=09dev_priv->display.cdclk.table =3D adlp_cdclk_table;
 =09} else if (IS_ROCKETLAKE(dev_priv)) {
 =09=09dev_priv->display.funcs.set_cdclk =3D bxt_set_cdclk;
 =09=09dev_priv->display.funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
 =09=09dev_priv->display.funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdcl=
k;
 =09=09dev_priv->display.funcs.calc_voltage_level =3D tgl_calc_voltage_leve=
l;
-=09=09dev_priv->cdclk.table =3D rkl_cdclk_table;
+=09=09dev_priv->display.cdclk.table =3D rkl_cdclk_table;
 =09} else if (DISPLAY_VER(dev_priv) >=3D 12) {
 =09=09dev_priv->display.funcs.set_cdclk =3D bxt_set_cdclk;
 =09=09dev_priv->display.funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
 =09=09dev_priv->display.funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdcl=
k;
 =09=09dev_priv->display.funcs.calc_voltage_level =3D tgl_calc_voltage_leve=
l;
-=09=09dev_priv->cdclk.table =3D icl_cdclk_table;
+=09=09dev_priv->display.cdclk.table =3D icl_cdclk_table;
 =09} else if (IS_JSL_EHL(dev_priv)) {
 =09=09dev_priv->display.funcs.set_cdclk =3D bxt_set_cdclk;
 =09=09dev_priv->display.funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
 =09=09dev_priv->display.funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdcl=
k;
 =09=09dev_priv->display.funcs.calc_voltage_level =3D ehl_calc_voltage_leve=
l;
-=09=09dev_priv->cdclk.table =3D icl_cdclk_table;
+=09=09dev_priv->display.cdclk.table =3D icl_cdclk_table;
 =09} else if (DISPLAY_VER(dev_priv) >=3D 11) {
 =09=09dev_priv->display.funcs.set_cdclk =3D bxt_set_cdclk;
 =09=09dev_priv->display.funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
 =09=09dev_priv->display.funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdcl=
k;
 =09=09dev_priv->display.funcs.calc_voltage_level =3D icl_calc_voltage_leve=
l;
-=09=09dev_priv->cdclk.table =3D icl_cdclk_table;
+=09=09dev_priv->display.cdclk.table =3D icl_cdclk_table;
 =09} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
 =09=09dev_priv->display.funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
 =09=09dev_priv->display.funcs.set_cdclk =3D bxt_set_cdclk;
 =09=09dev_priv->display.funcs.modeset_calc_cdclk =3D bxt_modeset_calc_cdcl=
k;
 =09=09dev_priv->display.funcs.calc_voltage_level =3D bxt_calc_voltage_leve=
l;
 =09=09if (IS_GEMINILAKE(dev_priv))
-=09=09=09dev_priv->cdclk.table =3D glk_cdclk_table;
+=09=09=09dev_priv->display.cdclk.table =3D glk_cdclk_table;
 =09=09else
-=09=09=09dev_priv->cdclk.table =3D bxt_cdclk_table;
+=09=09=09dev_priv->display.cdclk.table =3D bxt_cdclk_table;
 =09} else if (DISPLAY_VER(dev_priv) =3D=3D 9) {
 =09=09dev_priv->display.funcs.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
 =09=09dev_priv->display.funcs.set_cdclk =3D skl_set_cdclk;
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i=
915/display/intel_cdclk.h
index b34eb00fb327..e29f7bc0cc39 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -74,9 +74,9 @@ intel_atomic_get_cdclk_state(struct intel_atomic_state *s=
tate);
=20
 #define to_intel_cdclk_state(x) container_of((x), struct intel_cdclk_state=
, base)
 #define intel_atomic_get_old_cdclk_state(state) \
-=09to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i=
915(state->base.dev)->cdclk.obj))
+=09to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i=
915(state->base.dev)->display.cdclk.obj))
 #define intel_atomic_get_new_cdclk_state(state) \
-=09to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i=
915(state->base.dev)->cdclk.obj))
+=09to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i=
915(state->base.dev)->display.cdclk.obj))
=20
 int intel_cdclk_init(struct drm_i915_private *dev_priv);
=20
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index f31585e56e84..035a55c8abec 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3658,7 +3658,7 @@ static void intel_crtc_disable_noatomic(struct intel_=
crtc *crtc,
 =09struct intel_bw_state *bw_state =3D
 =09=09to_intel_bw_state(dev_priv->bw_obj.state);
 =09struct intel_cdclk_state *cdclk_state =3D
-=09=09to_intel_cdclk_state(dev_priv->cdclk.obj.state);
+=09=09to_intel_cdclk_state(dev_priv->display.cdclk.obj.state);
 =09struct intel_dbuf_state *dbuf_state =3D
 =09=09to_intel_dbuf_state(dev_priv->dbuf.obj.state);
 =09struct intel_crtc_state *crtc_state =3D
@@ -3827,7 +3827,7 @@ bool hsw_crtc_state_ips_capable(const struct intel_cr=
tc_state *crtc_state)
 =09 * Should measure whether using a lower cdclk w/o IPS
 =09 */
 =09if (IS_BROADWELL(dev_priv) &&
-=09    crtc_state->pixel_rate > dev_priv->max_cdclk_freq * 95 / 100)
+=09    crtc_state->pixel_rate > dev_priv->display.max_cdclk_freq * 95 / 10=
0)
 =09=09return false;
=20
 =09return true;
@@ -4038,7 +4038,7 @@ static int intel_crtc_compute_config(struct intel_crt=
c *crtc,
 =09intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
=20
 =09if (DISPLAY_VER(dev_priv) < 4) {
-=09=09clock_limit =3D dev_priv->max_cdclk_freq * 9 / 10;
+=09=09clock_limit =3D dev_priv->display.max_cdclk_freq * 9 / 10;
=20
 =09=09/*
 =09=09 * Enable double wide mode when the dot clock
@@ -11266,11 +11266,11 @@ void intel_modeset_init_hw(struct drm_i915_privat=
e *i915)
 =09if (!HAS_DISPLAY(i915))
 =09=09return;
=20
-=09cdclk_state =3D to_intel_cdclk_state(i915->cdclk.obj.state);
+=09cdclk_state =3D to_intel_cdclk_state(i915->display.cdclk.obj.state);
=20
 =09intel_update_cdclk(i915);
-=09intel_dump_cdclk_config(&i915->cdclk.hw, "Current CDCLK");
-=09cdclk_state->logical =3D cdclk_state->actual =3D i915->cdclk.hw;
+=09intel_dump_cdclk_config(&i915->display.cdclk.hw, "Current CDCLK");
+=09cdclk_state->logical =3D cdclk_state->actual =3D i915->display.cdclk.hw=
;
 }
=20
 static int sanitize_watermarks_add_affected(struct drm_atomic_state *state=
)
@@ -11652,7 +11652,7 @@ int intel_modeset_init_nogem(struct drm_i915_privat=
e *i915)
=20
 =09intel_hdcp_component_init(i915);
=20
-=09if (i915->max_cdclk_freq =3D=3D 0)
+=09if (i915->display.max_cdclk_freq =3D=3D 0)
 =09=09intel_update_max_cdclk(i915);
=20
 =09/*
@@ -12146,7 +12146,7 @@ static void intel_modeset_readout_hw_state(struct d=
rm_device *dev)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(dev);
 =09struct intel_cdclk_state *cdclk_state =3D
-=09=09to_intel_cdclk_state(dev_priv->cdclk.obj.state);
+=09=09to_intel_cdclk_state(dev_priv->display.cdclk.obj.state);
 =09struct intel_dbuf_state *dbuf_state =3D
 =09=09to_intel_dbuf_state(dev_priv->dbuf.obj.state);
 =09enum pipe pipe;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/g=
pu/drm/i915/display/intel_display_power.c
index ebe4fee6d680..04cf1c0a6da1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1198,7 +1198,7 @@ static void gen9_disable_dc_states(struct drm_i915_pr=
ivate *dev_priv)
 =09dev_priv->display.funcs.get_cdclk(dev_priv, &cdclk_config);
 =09/* Can't read out voltage_level so can't use intel_cdclk_changed() */
 =09drm_WARN_ON(&dev_priv->drm,
-=09=09    intel_cdclk_needs_modeset(&dev_priv->cdclk.hw,
+=09=09    intel_cdclk_needs_modeset(&dev_priv->display.cdclk.hw,
 =09=09=09=09=09      &cdclk_config));
=20
 =09gen9_assert_dbuf_enabled(dev_priv);
@@ -5482,7 +5482,7 @@ static void hsw_restore_lcpll(struct drm_i915_private=
 *dev_priv)
 =09intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
=20
 =09intel_update_cdclk(dev_priv);
-=09intel_dump_cdclk_config(&dev_priv->cdclk.hw, "Current CDCLK");
+=09intel_dump_cdclk_config(&dev_priv->display.cdclk.hw, "Current CDCLK");
 }
=20
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915=
/display/intel_dp.c
index 4f2fd33529ca..40a8e7cef42a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -576,7 +576,7 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_=
private *i915,
=20
 =09if (bigjoiner) {
 =09=09u32 max_bpp_bigjoiner =3D
-=09=09=09i915->max_cdclk_freq * 48 /
+=09=09=09i915->display.max_cdclk_freq * 48 /
 =09=09=09intel_dp_mode_to_fec_clock(mode_clock);
=20
 =09=09DRM_DEBUG_KMS("Max big joiner bpp: %u\n", max_bpp_bigjoiner);
@@ -1348,7 +1348,7 @@ static int intel_dp_dsc_compute_config(struct intel_d=
p *intel_dp,
 =09 * is greater than the maximum Cdclock and if slice count is even
 =09 * then we need to use 2 VDSC instances.
 =09 */
-=09if (adjusted_mode->crtc_clock > dev_priv->max_cdclk_freq ||
+=09if (adjusted_mode->crtc_clock > dev_priv->display.max_cdclk_freq ||
 =09    pipe_config->bigjoiner) {
 =09=09if (pipe_config->dsc.slice_count < 2) {
 =09=09=09drm_dbg_kms(&dev_priv->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/=
i915/display/intel_dp_aux.c
index f483f479dd0b..b0025dd3cb4a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -86,7 +86,7 @@ static u32 ilk_get_aux_clock_divider(struct intel_dp *int=
el_dp, int index)
 =09 * divide by 2000 and use that
 =09 */
 =09if (dig_port->aux_ch =3D=3D AUX_CH_A)
-=09=09freq =3D dev_priv->cdclk.hw.cdclk;
+=09=09freq =3D dev_priv->display.cdclk.hw.cdclk;
 =09else
 =09=09freq =3D RUNTIME_INFO(dev_priv)->rawclk_freq;
 =09return DIV_ROUND_CLOSEST(freq, 2000);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/dr=
m/i915/display/intel_dpll_mgr.c
index 055992d099c7..178dcacbb061 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -1782,7 +1782,7 @@ static int skl_ddi_pll_get_freq(struct drm_i915_priva=
te *i915,
 static void skl_update_dpll_ref_clks(struct drm_i915_private *i915)
 {
 =09/* No SSC ref */
-=09i915->dpll.ref_clks.nssc =3D i915->cdclk.hw.ref;
+=09i915->dpll.ref_clks.nssc =3D i915->display.cdclk.hw.ref;
 }
=20
 static void skl_dump_hw_state(struct drm_i915_private *dev_priv,
@@ -3867,7 +3867,7 @@ static void mg_pll_disable(struct drm_i915_private *d=
ev_priv,
 static void icl_update_dpll_ref_clks(struct drm_i915_private *i915)
 {
 =09/* No SSC ref */
-=09i915->dpll.ref_clks.nssc =3D i915->cdclk.hw.ref;
+=09i915->dpll.ref_clks.nssc =3D i915->display.cdclk.hw.ref;
 }
=20
 static void icl_dump_hw_state(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i91=
5/display/intel_fbc.c
index b1c1a23c36be..7e52858399c9 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -874,7 +874,7 @@ static bool intel_fbc_can_activate(struct intel_crtc *c=
rtc)
=20
 =09/* WaFbcExceedCdClockThreshold:hsw,bdw */
 =09if ((IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) &&
-=09    cache->crtc.hsw_bdw_pixel_rate >=3D dev_priv->cdclk.hw.cdclk * 95 /=
 100) {
+=09    cache->crtc.hsw_bdw_pixel_rate >=3D dev_priv->display.cdclk.hw.cdcl=
k * 95 / 100) {
 =09=09fbc->no_fbc_reason =3D "pixel rate is too big";
 =09=09return false;
 =09}
diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c b/drivers/gpu/drm/i915=
/gt/debugfs_gt_pm.c
index d6f5836396f8..352989fefe60 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
@@ -474,8 +474,8 @@ static int frequency_show(struct seq_file *m, void *unu=
sed)
 =09=09seq_puts(m, "no P-state info available\n");
 =09}
=20
-=09seq_printf(m, "Current CD clock frequency: %d kHz\n", i915->cdclk.hw.cd=
clk);
-=09seq_printf(m, "Max CD clock frequency: %d kHz\n", i915->max_cdclk_freq)=
;
+=09seq_printf(m, "Current CD clock frequency: %d kHz\n", i915->display.cdc=
lk.hw.cdclk);
+=09seq_printf(m, "Max CD clock frequency: %d kHz\n", i915->display.max_cdc=
lk_freq);
 =09seq_printf(m, "Max pixel clock frequency: %d kHz\n", i915->max_dotclk_f=
req);
=20
 =09intel_runtime_pm_put(uncore->rpm, wakeref);
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i91=
5_debugfs.c
index 44969f5dde50..7610defe855b 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -575,8 +575,8 @@ static int i915_frequency_info(struct seq_file *m, void=
 *unused)
 =09=09seq_puts(m, "no P-state info available\n");
 =09}
=20
-=09seq_printf(m, "Current CD clock frequency: %d kHz\n", dev_priv->cdclk.h=
w.cdclk);
-=09seq_printf(m, "Max CD clock frequency: %d kHz\n", dev_priv->max_cdclk_f=
req);
+=09seq_printf(m, "Current CD clock frequency: %d kHz\n", dev_priv->display=
.cdclk.hw.cdclk);
+=09seq_printf(m, "Max CD clock frequency: %d kHz\n", dev_priv->display.max=
_cdclk_freq);
 =09seq_printf(m, "Max pixel clock frequency: %d kHz\n", dev_priv->max_dotc=
lk_freq);
=20
 =09intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 04335bace0e3..b99a8edd1ca2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -826,8 +826,20 @@ struct i915_selftest_stash {
 };
=20
 struct drm_i915_display {
+=09struct drm_device *drm;
 =09/* Display functions */
 =09struct drm_i915_display_funcs funcs;
+
+=09struct {
+=09=09/* The current hardware cdclk configuration */
+=09=09struct intel_cdclk_config hw;
+
+=09=09/* cdclk, divider, and ratio table from bspec */
+=09=09const struct intel_cdclk_vals *table;
+
+=09=09struct intel_global_obj obj;
+=09} cdclk;
+=09unsigned int max_cdclk_freq;
 };
=20
 struct drm_i915_private {
@@ -940,23 +952,12 @@ struct drm_i915_private {
=20
 =09unsigned int fsb_freq, mem_freq, is_ddr3;
 =09unsigned int skl_preferred_vco_freq;
-=09unsigned int max_cdclk_freq;
=20
 =09unsigned int max_dotclk_freq;
 =09unsigned int hpll_freq;
 =09unsigned int fdi_pll_freq;
 =09unsigned int czclk_freq;
=20
-=09struct {
-=09=09/* The current hardware cdclk configuration */
-=09=09struct intel_cdclk_config hw;
-
-=09=09/* cdclk, divider, and ratio table from bspec */
-=09=09const struct intel_cdclk_vals *table;
-
-=09=09struct intel_global_obj obj;
-=09} cdclk;
-
 =09struct {
 =09=09/* The current hardware dbuf configuration */
 =09=09u8 enabled_slices;
--=20
2.31.1

