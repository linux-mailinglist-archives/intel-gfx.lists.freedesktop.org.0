Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CBA401551
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 05:51:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E157F89A59;
	Mon,  6 Sep 2021 03:51:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C1E3899E8
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Sep 2021 03:51:02 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-559-x-KakoHiPx-BEwaixfcUsQ-1; Sun, 05 Sep 2021 23:44:13 -0400
X-MC-Unique: x-KakoHiPx-BEwaixfcUsQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5B61D80196C;
 Mon,  6 Sep 2021 03:44:12 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 157E65D9DE;
 Mon,  6 Sep 2021 03:44:10 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Mon,  6 Sep 2021 13:43:49 +1000
Message-Id: <20210906034356.2946530-4-airlied@gmail.com>
In-Reply-To: <20210906034356.2946530-1-airlied@gmail.com>
References: <20210906034356.2946530-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 03/10] drm/i915: move more pll/clocks into
 display struct.
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
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 24 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_crt.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++------
 drivers/gpu/drm/i915/display/intel_dp.c      |  4 ++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_dsi.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_dvo.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_fdi.c     |  8 +++----
 drivers/gpu/drm/i915/display/intel_hdmi.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_tv.c      |  2 +-
 drivers/gpu/drm/i915/gt/debugfs_gt_pm.c      |  2 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c          |  2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c          |  4 ++--
 drivers/gpu/drm/i915/i915_debugfs.c          |  2 +-
 drivers/gpu/drm/i915/i915_drv.h              | 13 ++++++-----
 17 files changed, 45 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i=
915/display/intel_cdclk.c
index cb54a0c8b4e0..e52f97c3ecab 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -434,7 +434,7 @@ static void hsw_get_cdclk(struct drm_i915_private *dev_=
priv,
=20
 static int vlv_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdclk=
)
 {
-=09int freq_320 =3D (dev_priv->hpll_freq <<  1) % 320000 !=3D 0 ?
+=09int freq_320 =3D (dev_priv->display.hpll_freq <<  1) % 320000 !=3D 0 ?
 =09=09333333 : 320000;
=20
 =09/*
@@ -467,7 +467,7 @@ static u8 vlv_calc_voltage_level(struct drm_i915_privat=
e *dev_priv, int cdclk)
 =09=09 * hardware has shown that we just need to write the desired
 =09=09 * CCK divider into the Punit register.
 =09=09 */
-=09=09return DIV_ROUND_CLOSEST(dev_priv->hpll_freq << 1, cdclk) - 1;
+=09=09return DIV_ROUND_CLOSEST(dev_priv->display.hpll_freq << 1, cdclk) - =
1;
 =09}
 }
=20
@@ -506,7 +506,7 @@ static void vlv_program_pfi_credits(struct drm_i915_pri=
vate *dev_priv)
 =09else
 =09=09default_credits =3D PFI_CREDIT(8);
=20
-=09if (dev_priv->display.cdclk.hw.cdclk >=3D dev_priv->czclk_freq) {
+=09if (dev_priv->display.cdclk.hw.cdclk >=3D dev_priv->display.czclk_freq)=
 {
 =09=09/* CHV suggested value is 31 or 63 */
 =09=09if (IS_CHERRYVIEW(dev_priv))
 =09=09=09credits =3D PFI_CREDIT_63;
@@ -581,7 +581,7 @@ static void vlv_set_cdclk(struct drm_i915_private *dev_=
priv,
 =09if (cdclk =3D=3D 400000) {
 =09=09u32 divider;
=20
-=09=09divider =3D DIV_ROUND_CLOSEST(dev_priv->hpll_freq << 1,
+=09=09divider =3D DIV_ROUND_CLOSEST(dev_priv->display.hpll_freq << 1,
 =09=09=09=09=09    cdclk) - 1;
=20
 =09=09/* adjust cdclk divider */
@@ -942,9 +942,9 @@ static int skl_cdclk_decimal(int cdclk)
 static void skl_set_preferred_cdclk_vco(struct drm_i915_private *dev_priv,
 =09=09=09=09=09int vco)
 {
-=09bool changed =3D dev_priv->skl_preferred_vco_freq !=3D vco;
+=09bool changed =3D dev_priv->display.skl_preferred_vco_freq !=3D vco;
=20
-=09dev_priv->skl_preferred_vco_freq =3D vco;
+=09dev_priv->display.skl_preferred_vco_freq =3D vco;
=20
 =09if (changed)
 =09=09intel_update_max_cdclk(dev_priv);
@@ -1151,7 +1151,7 @@ static void skl_cdclk_init_hw(struct drm_i915_private=
 *dev_priv)
 =09=09 * Use the current vco as our initial
 =09=09 * guess as to what the preferred vco is.
 =09=09 */
-=09=09if (dev_priv->skl_preferred_vco_freq =3D=3D 0)
+=09=09if (dev_priv->display.skl_preferred_vco_freq =3D=3D 0)
 =09=09=09skl_set_preferred_cdclk_vco(dev_priv,
 =09=09=09=09=09=09    dev_priv->display.cdclk.hw.vco);
 =09=09return;
@@ -1159,7 +1159,7 @@ static void skl_cdclk_init_hw(struct drm_i915_private=
 *dev_priv)
=20
 =09cdclk_config =3D dev_priv->display.cdclk.hw;
=20
-=09cdclk_config.vco =3D dev_priv->skl_preferred_vco_freq;
+=09cdclk_config.vco =3D dev_priv->display.skl_preferred_vco_freq;
 =09if (cdclk_config.vco =3D=3D 0)
 =09=09cdclk_config.vco =3D 8100000;
 =09cdclk_config.cdclk =3D skl_calc_cdclk(0, cdclk_config.vco);
@@ -2331,7 +2331,7 @@ static int skl_dpll0_vco(struct intel_cdclk_state *cd=
clk_state)
=20
 =09vco =3D cdclk_state->logical.vco;
 =09if (!vco)
-=09=09vco =3D dev_priv->skl_preferred_vco_freq;
+=09=09vco =3D dev_priv->display.skl_preferred_vco_freq;
=20
 =09for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
 =09=09if (!crtc_state->hw.enable)
@@ -2636,7 +2636,7 @@ void intel_update_max_cdclk(struct drm_i915_private *=
dev_priv)
 =09=09u32 limit =3D intel_de_read(dev_priv, SKL_DFSM) & SKL_DFSM_CDCLK_LIM=
IT_MASK;
 =09=09int max_cdclk, vco;
=20
-=09=09vco =3D dev_priv->skl_preferred_vco_freq;
+=09=09vco =3D dev_priv->display.skl_preferred_vco_freq;
 =09=09drm_WARN_ON(&dev_priv->drm, vco !=3D 8100000 && vco !=3D 8640000);
=20
 =09=09/*
@@ -2678,13 +2678,13 @@ void intel_update_max_cdclk(struct drm_i915_private=
 *dev_priv)
 =09=09dev_priv->display.max_cdclk_freq =3D dev_priv->display.cdclk.hw.cdcl=
k;
 =09}
=20
-=09dev_priv->max_dotclk_freq =3D intel_compute_max_dotclk(dev_priv);
+=09dev_priv->display.max_dotclk_freq =3D intel_compute_max_dotclk(dev_priv=
);
=20
 =09drm_dbg(&dev_priv->drm, "Max CD clock rate: %d kHz\n",
 =09=09dev_priv->display.max_cdclk_freq);
=20
 =09drm_dbg(&dev_priv->drm, "Max dotclock rate: %d kHz\n",
-=09=09dev_priv->max_dotclk_freq);
+=09=09dev_priv->display.max_dotclk_freq);
 }
=20
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i91=
5/display/intel_crt.c
index 408f82b0dc7d..466ce68ae5e0 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -342,7 +342,7 @@ intel_crt_mode_valid(struct drm_connector *connector,
 {
 =09struct drm_device *dev =3D connector->dev;
 =09struct drm_i915_private *dev_priv =3D to_i915(dev);
-=09int max_dotclk =3D dev_priv->max_dotclk_freq;
+=09int max_dotclk =3D dev_priv->display.max_dotclk_freq;
 =09int max_clock;
=20
 =09if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index 035a55c8abec..f421bc69e197 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -160,10 +160,10 @@ int vlv_get_cck_clock_hpll(struct drm_i915_private *d=
ev_priv,
=20
 =09vlv_cck_get(dev_priv);
=20
-=09if (dev_priv->hpll_freq =3D=3D 0)
-=09=09dev_priv->hpll_freq =3D vlv_get_hpll_vco(dev_priv);
+=09if (dev_priv->display.hpll_freq =3D=3D 0)
+=09=09dev_priv->display.hpll_freq =3D vlv_get_hpll_vco(dev_priv);
=20
-=09hpll =3D vlv_get_cck_clock(dev_priv, name, reg, dev_priv->hpll_freq);
+=09hpll =3D vlv_get_cck_clock(dev_priv, name, reg, dev_priv->display.hpll_=
freq);
=20
 =09vlv_cck_put(dev_priv);
=20
@@ -175,11 +175,11 @@ static void intel_update_czclk(struct drm_i915_privat=
e *dev_priv)
 =09if (!(IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)))
 =09=09return;
=20
-=09dev_priv->czclk_freq =3D vlv_get_cck_clock_hpll(dev_priv, "czclk",
+=09dev_priv->display.czclk_freq =3D vlv_get_cck_clock_hpll(dev_priv, "czcl=
k",
 =09=09=09=09=09=09      CCK_CZ_CLOCK_CONTROL);
=20
 =09drm_dbg(&dev_priv->drm, "CZ clock rate: %d kHz\n",
-=09=09dev_priv->czclk_freq);
+=09=09dev_priv->display.czclk_freq);
 }
=20
 /* WA Display #0827: Gen9:all */
@@ -4006,7 +4006,7 @@ static int intel_crtc_compute_config(struct intel_crt=
c *crtc,
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
 =09struct drm_display_mode *pipe_mode =3D &pipe_config->hw.pipe_mode;
-=09int clock_limit =3D dev_priv->max_dotclk_freq;
+=09int clock_limit =3D dev_priv->display.max_dotclk_freq;
=20
 =09drm_mode_copy(pipe_mode, &pipe_config->hw.adjusted_mode);
=20
@@ -4046,7 +4046,7 @@ static int intel_crtc_compute_config(struct intel_crt=
c *crtc,
 =09=09 */
 =09=09if (intel_crtc_supports_double_wide(crtc) &&
 =09=09    pipe_mode->crtc_clock > clock_limit) {
-=09=09=09clock_limit =3D dev_priv->max_dotclk_freq;
+=09=09=09clock_limit =3D dev_priv->display.max_dotclk_freq;
 =09=09=09pipe_config->double_wide =3D true;
 =09=09}
 =09}
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915=
/display/intel_dp.c
index 40a8e7cef42a..18f221d7f252 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -785,7 +785,7 @@ intel_dp_mode_valid(struct drm_connector *connector,
 =09struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
 =09int target_clock =3D mode->clock;
 =09int max_rate, mode_rate, max_lanes, max_link_clock;
-=09int max_dotclk =3D dev_priv->max_dotclk_freq;
+=09int max_dotclk =3D dev_priv->display.max_dotclk_freq;
 =09u16 dsc_max_output_bpp =3D 0;
 =09u8 dsc_slice_count =3D 0;
 =09enum drm_mode_status status;
@@ -1427,7 +1427,7 @@ intel_dp_compute_link_config(struct intel_encoder *en=
coder,
 =09=09    limits.max_lane_count, limits.max_rate,
 =09=09    limits.max_bpp, adjusted_mode->crtc_clock);
=20
-=09if ((adjusted_mode->crtc_clock > i915->max_dotclk_freq ||
+=09if ((adjusted_mode->crtc_clock > i915->display.max_dotclk_freq ||
 =09     adjusted_mode->crtc_hdisplay > 5120) &&
 =09    intel_dp_can_bigjoiner(intel_dp))
 =09=09pipe_config->bigjoiner =3D true;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/=
i915/display/intel_dp_mst.c
index d104441344c0..99a127e8704a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -683,7 +683,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *conne=
ctor,
 =09struct drm_dp_mst_topology_mgr *mgr =3D &intel_dp->mst_mgr;
 =09struct drm_dp_mst_port *port =3D intel_connector->port;
 =09const int min_bpp =3D 18;
-=09int max_dotclk =3D to_i915(connector->dev)->max_dotclk_freq;
+=09int max_dotclk =3D to_i915(connector->dev)->display.max_dotclk_freq;
 =09int max_rate, mode_rate, max_lanes, max_link_clock;
 =09int ret;
=20
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i91=
5/display/intel_dsi.c
index f453ceb8d149..1b96d2aa0730 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi.c
@@ -59,7 +59,7 @@ enum drm_mode_status intel_dsi_mode_valid(struct drm_conn=
ector *connector,
 =09struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
 =09struct intel_connector *intel_connector =3D to_intel_connector(connecto=
r);
 =09const struct drm_display_mode *fixed_mode =3D intel_connector->panel.fi=
xed_mode;
-=09int max_dotclk =3D to_i915(connector->dev)->max_dotclk_freq;
+=09int max_dotclk =3D to_i915(connector->dev)->display.max_dotclk_freq;
=20
 =09drm_dbg_kms(&dev_priv->drm, "\n");
=20
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i91=
5/display/intel_dvo.c
index 86c903e9df60..e06de60f4970 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -226,7 +226,7 @@ intel_dvo_mode_valid(struct drm_connector *connector,
 =09struct intel_dvo *intel_dvo =3D intel_attached_dvo(to_intel_connector(c=
onnector));
 =09const struct drm_display_mode *fixed_mode =3D
 =09=09to_intel_connector(connector)->panel.fixed_mode;
-=09int max_dotclk =3D to_i915(connector->dev)->max_dotclk_freq;
+=09int max_dotclk =3D to_i915(connector->dev)->display.max_dotclk_freq;
 =09int target_clock =3D mode->clock;
=20
 =09if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i91=
5/display/intel_fdi.c
index aaa0207f483e..58dfa97304c4 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -104,14 +104,14 @@ void intel_fdi_pll_freq_update(struct drm_i915_privat=
e *i915)
 =09=09u32 fdi_pll_clk =3D
 =09=09=09intel_de_read(i915, FDI_PLL_BIOS_0) & FDI_PLL_FB_CLOCK_MASK;
=20
-=09=09i915->fdi_pll_freq =3D (fdi_pll_clk + 2) * 10000;
+=09=09i915->display.fdi_pll_freq =3D (fdi_pll_clk + 2) * 10000;
 =09} else if (IS_SANDYBRIDGE(i915) || IS_IVYBRIDGE(i915)) {
-=09=09i915->fdi_pll_freq =3D 270000;
+=09=09i915->display.fdi_pll_freq =3D 270000;
 =09} else {
 =09=09return;
 =09}
=20
-=09drm_dbg(&i915->drm, "FDI PLL freq=3D%d\n", i915->fdi_pll_freq);
+=09drm_dbg(&i915->drm, "FDI PLL freq=3D%d\n", i915->display.fdi_pll_freq);
 }
=20
 int intel_fdi_link_freq(struct drm_i915_private *i915,
@@ -120,7 +120,7 @@ int intel_fdi_link_freq(struct drm_i915_private *i915,
 =09if (HAS_DDI(i915))
 =09=09return pipe_config->port_clock; /* SPLL */
 =09else
-=09=09return i915->fdi_pll_freq;
+=09=09return i915->display.fdi_pll_freq;
 }
=20
 int ilk_fdi_compute_config(struct intel_crtc *crtc,
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i9=
15/display/intel_hdmi.c
index 1bc33766ed39..f536da3d05d8 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1950,7 +1950,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector=
,
 =09struct drm_i915_private *dev_priv =3D to_i915(dev);
 =09enum drm_mode_status status;
 =09int clock =3D mode->clock;
-=09int max_dotclk =3D to_i915(connector->dev)->max_dotclk_freq;
+=09int max_dotclk =3D to_i915(connector->dev)->display.max_dotclk_freq;
 =09bool has_hdmi_sink =3D intel_has_hdmi_sink(hdmi, connector->state);
 =09bool ycbcr_420_only;
=20
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i9=
15/display/intel_lvds.c
index e9fb402708a7..137e11cc40b5 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -388,7 +388,7 @@ intel_lvds_mode_valid(struct drm_connector *connector,
 {
 =09struct intel_connector *intel_connector =3D to_intel_connector(connecto=
r);
 =09struct drm_display_mode *fixed_mode =3D intel_connector->panel.fixed_mo=
de;
-=09int max_pixclk =3D to_i915(connector->dev)->max_dotclk_freq;
+=09int max_pixclk =3D to_i915(connector->dev)->display.max_dotclk_freq;
=20
 =09if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
 =09=09return MODE_NO_DBLESCAN;
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i9=
15/display/intel_sdvo.c
index 6cb27599ea03..7691468571dc 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1866,7 +1866,7 @@ intel_sdvo_mode_valid(struct drm_connector *connector=
,
 =09struct intel_sdvo *intel_sdvo =3D intel_attached_sdvo(to_intel_connecto=
r(connector));
 =09struct intel_sdvo_connector *intel_sdvo_connector =3D
 =09=09to_intel_sdvo_connector(connector);
-=09int max_dotclk =3D to_i915(connector->dev)->max_dotclk_freq;
+=09int max_dotclk =3D to_i915(connector->dev)->display.max_dotclk_freq;
 =09bool has_hdmi_sink =3D intel_has_hdmi_sink(intel_sdvo, connector->state=
);
 =09int clock =3D mode->clock;
=20
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915=
/display/intel_tv.c
index d02f09f7e750..c2f317aa5840 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -956,7 +956,7 @@ intel_tv_mode_valid(struct drm_connector *connector,
 =09=09    struct drm_display_mode *mode)
 {
 =09const struct tv_mode *tv_mode =3D intel_tv_mode_find(connector->state);
-=09int max_dotclk =3D to_i915(connector->dev)->max_dotclk_freq;
+=09int max_dotclk =3D to_i915(connector->dev)->display.max_dotclk_freq;
=20
 =09if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
 =09=09return MODE_NO_DBLESCAN;
diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c b/drivers/gpu/drm/i915=
/gt/debugfs_gt_pm.c
index 352989fefe60..c95754aed784 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
@@ -476,7 +476,7 @@ static int frequency_show(struct seq_file *m, void *unu=
sed)
=20
 =09seq_printf(m, "Current CD clock frequency: %d kHz\n", i915->display.cdc=
lk.hw.cdclk);
 =09seq_printf(m, "Max CD clock frequency: %d kHz\n", i915->display.max_cdc=
lk_freq);
-=09seq_printf(m, "Max pixel clock frequency: %d kHz\n", i915->max_dotclk_f=
req);
+=09seq_printf(m, "Max pixel clock frequency: %d kHz\n", i915->display.max_=
dotclk_freq);
=20
 =09intel_runtime_pm_put(uncore->rpm, wakeref);
=20
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/=
intel_rc6.c
index 799d382eea79..7fedff85e495 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -757,7 +757,7 @@ u64 intel_rc6_residency_ns(struct intel_rc6 *rc6, const=
 i915_reg_t reg)
 =09/* On VLV and CHV, residency time is in CZ units rather than 1.28us */
 =09if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
 =09=09mul =3D 1000000;
-=09=09div =3D i915->czclk_freq;
+=09=09div =3D i915->display.czclk_freq;
 =09=09overflow_hw =3D BIT_ULL(40);
 =09=09time_hw =3D vlv_residency_raw(uncore, reg);
 =09} else {
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/=
intel_rps.c
index d812b27835f8..25f2767f582b 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1514,7 +1514,7 @@ static void vlv_init_gpll_ref_freq(struct intel_rps *=
rps)
 =09rps->gpll_ref_freq =3D
 =09=09vlv_get_cck_clock(i915, "GPLL ref",
 =09=09=09=09  CCK_GPLL_CLOCK_CONTROL,
-=09=09=09=09  i915->czclk_freq);
+=09=09=09=09  i915->display.czclk_freq);
=20
 =09drm_dbg(&i915->drm, "GPLL reference freq: %d kHz\n",
 =09=09rps->gpll_ref_freq);
@@ -1646,7 +1646,7 @@ static u32 vlv_wa_c0_ei(struct intel_rps *rps, u32 pm=
_iir)
=20
 =09=09time =3D ktime_us_delta(now.ktime, prev->ktime);
=20
-=09=09time *=3D rps_to_i915(rps)->czclk_freq;
+=09=09time *=3D rps_to_i915(rps)->display.czclk_freq;
=20
 =09=09/* Workload can be split between render + media,
 =09=09 * e.g. SwapBuffers being blitted in X after being rendered in
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i91=
5_debugfs.c
index 7610defe855b..37f5ab15a8d4 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -577,7 +577,7 @@ static int i915_frequency_info(struct seq_file *m, void=
 *unused)
=20
 =09seq_printf(m, "Current CD clock frequency: %d kHz\n", dev_priv->display=
.cdclk.hw.cdclk);
 =09seq_printf(m, "Max CD clock frequency: %d kHz\n", dev_priv->display.max=
_cdclk_freq);
-=09seq_printf(m, "Max pixel clock frequency: %d kHz\n", dev_priv->max_dotc=
lk_freq);
+=09seq_printf(m, "Max pixel clock frequency: %d kHz\n", dev_priv->display.=
max_dotclk_freq);
=20
 =09intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
 =09return 0;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index b99a8edd1ca2..424d06cdc4d6 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -840,6 +840,13 @@ struct drm_i915_display {
 =09=09struct intel_global_obj obj;
 =09} cdclk;
 =09unsigned int max_cdclk_freq;
+
+=09unsigned int skl_preferred_vco_freq;
+
+=09unsigned int max_dotclk_freq;
+=09unsigned int hpll_freq;
+=09unsigned int fdi_pll_freq;
+=09unsigned int czclk_freq;
 };
=20
 struct drm_i915_private {
@@ -951,12 +958,6 @@ struct drm_i915_private {
 =09struct mutex pps_mutex;
=20
 =09unsigned int fsb_freq, mem_freq, is_ddr3;
-=09unsigned int skl_preferred_vco_freq;
-
-=09unsigned int max_dotclk_freq;
-=09unsigned int hpll_freq;
-=09unsigned int fdi_pll_freq;
-=09unsigned int czclk_freq;
=20
 =09struct {
 =09=09/* The current hardware dbuf configuration */
--=20
2.31.1

