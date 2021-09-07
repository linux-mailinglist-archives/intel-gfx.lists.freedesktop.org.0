Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66699402445
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 09:26:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A85B89D66;
	Tue,  7 Sep 2021 07:26:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9104F89D5B
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 07:26:51 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-586-oNhf1NdGMJSgjHMVabVRIA-1; Tue, 07 Sep 2021 03:26:36 -0400
X-MC-Unique: oNhf1NdGMJSgjHMVabVRIA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7BDE9107ACCD;
 Tue,  7 Sep 2021 07:26:35 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 31A7D60936;
 Tue,  7 Sep 2021 07:26:33 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Tue,  7 Sep 2021 17:25:45 +1000
Message-Id: <20210907072549.2962226-22-airlied@gmail.com>
In-Reply-To: <20210907072549.2962226-1-airlied@gmail.com>
References: <20210907072549.2962226-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 21/25] drm/i915/display: move a bunch of
 platform misc regs to display
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
 drivers/gpu/drm/i915/display/intel_ddi.c      |  4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
 .../drm/i915/display/intel_display_power.c    | 76 +++++++++----------
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |  6 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  4 +-
 drivers/gpu/drm/i915/i915_drv.h               | 42 +++++-----
 7 files changed, 69 insertions(+), 69 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i91=
5/display/intel_ddi.c
index c9567b1dcb71..73c7f8e3ea3b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4324,8 +4324,8 @@ intel_ddi_max_lanes(struct intel_digital_port *dig_po=
rt)
=20
 static bool hti_uses_phy(struct drm_i915_private *i915, enum phy phy)
 {
-=09return i915->hti_state & HDPORT_ENABLED &&
-=09       i915->hti_state & HDPORT_DDI_USED(phy);
+=09return i915->display->hti_state & HDPORT_ENABLED &&
+=09       i915->display->hti_state & HDPORT_DDI_USED(phy);
 }
=20
 static enum hpd_pin xelpd_hpd_pin(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index 117c2ad9d266..606242b876b1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4671,7 +4671,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *c=
rtc,
 =09if (DISPLAY_VER(dev_priv) >=3D 4) {
 =09=09/* No way to read it out on pipes B and C */
 =09=09if (IS_CHERRYVIEW(dev_priv) && crtc->pipe !=3D PIPE_A)
-=09=09=09tmp =3D dev_priv->chv_dpll_md[crtc->pipe];
+=09=09=09tmp =3D dev_priv->display->chv_dpll_md[crtc->pipe];
 =09=09else
 =09=09=09tmp =3D intel_de_read(dev_priv, DPLL_MD(crtc->pipe));
 =09=09pipe_config->pixel_multiplier =3D
@@ -11660,7 +11660,7 @@ int intel_modeset_init_nogem(struct drm_i915_privat=
e *i915)
 =09 * any display resources before we create our display outputs.
 =09 */
 =09if (INTEL_INFO(i915)->display.has_hti)
-=09=09i915->hti_state =3D intel_de_read(i915, HDPORT_STATE);
+=09=09i915->display->hti_state =3D intel_de_read(i915, HDPORT_STATE);
=20
 =09/* Just disable it once at startup */
 =09intel_vga_disable(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/g=
pu/drm/i915/display/intel_display_power.c
index d1db420a8819..7ea86d2cf74a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1531,7 +1531,7 @@ static void assert_chv_phy_status(struct drm_i915_pri=
vate *dev_priv)
 =09=09lookup_power_well(dev_priv, VLV_DISP_PW_DPIO_CMN_BC);
 =09struct i915_power_well *cmn_d =3D
 =09=09lookup_power_well(dev_priv, CHV_DISP_PW_DPIO_CMN_D);
-=09u32 phy_control =3D dev_priv->chv_phy_control;
+=09u32 phy_control =3D dev_priv->display->chv_phy_control;
 =09u32 phy_status =3D 0;
 =09u32 phy_status_mask =3D 0xffffffff;
=20
@@ -1542,7 +1542,7 @@ static void assert_chv_phy_status(struct drm_i915_pri=
vate *dev_priv)
 =09 * reset (ie. the power well has been disabled at
 =09 * least once).
 =09 */
-=09if (!dev_priv->chv_phy_assert[DPIO_PHY0])
+=09if (!dev_priv->display->chv_phy_assert[DPIO_PHY0])
 =09=09phy_status_mask &=3D ~(PHY_STATUS_CMN_LDO(DPIO_PHY0, DPIO_CH0) |
 =09=09=09=09     PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH0, 0) |
 =09=09=09=09     PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH0, 1) |
@@ -1550,7 +1550,7 @@ static void assert_chv_phy_status(struct drm_i915_pri=
vate *dev_priv)
 =09=09=09=09     PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH1, 0) |
 =09=09=09=09     PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH1, 1));
=20
-=09if (!dev_priv->chv_phy_assert[DPIO_PHY1])
+=09if (!dev_priv->display->chv_phy_assert[DPIO_PHY1])
 =09=09phy_status_mask &=3D ~(PHY_STATUS_CMN_LDO(DPIO_PHY1, DPIO_CH0) |
 =09=09=09=09     PHY_STATUS_SPLINE_LDO(DPIO_PHY1, DPIO_CH0, 0) |
 =09=09=09=09     PHY_STATUS_SPLINE_LDO(DPIO_PHY1, DPIO_CH0, 1));
@@ -1626,7 +1626,7 @@ static void assert_chv_phy_status(struct drm_i915_pri=
vate *dev_priv)
 =09=09drm_err(&dev_priv->drm,
 =09=09=09"Unexpected PHY_STATUS 0x%08x, expected 0x%08x (PHY_CONTROL=3D0x%=
08x)\n",
 =09=09=09intel_de_read(dev_priv, DISPLAY_PHY_STATUS) & phy_status_mask,
-=09=09=09phy_status, dev_priv->chv_phy_control);
+=09=09=09phy_status, dev_priv->display->chv_phy_control);
 }
=20
 #undef BITS_SET
@@ -1685,13 +1685,13 @@ static void chv_dpio_cmn_power_well_enable(struct d=
rm_i915_private *dev_priv,
=20
 =09vlv_dpio_put(dev_priv);
=20
-=09dev_priv->chv_phy_control |=3D PHY_COM_LANE_RESET_DEASSERT(phy);
+=09dev_priv->display->chv_phy_control |=3D PHY_COM_LANE_RESET_DEASSERT(phy=
);
 =09intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
-=09=09       dev_priv->chv_phy_control);
+=09=09       dev_priv->display->chv_phy_control);
=20
 =09drm_dbg_kms(&dev_priv->drm,
 =09=09    "Enabled DPIO PHY%d (PHY_CONTROL=3D0x%08x)\n",
-=09=09    phy, dev_priv->chv_phy_control);
+=09=09    phy, dev_priv->display->chv_phy_control);
=20
 =09assert_chv_phy_status(dev_priv);
 }
@@ -1714,18 +1714,18 @@ static void chv_dpio_cmn_power_well_disable(struct =
drm_i915_private *dev_priv,
 =09=09assert_pll_disabled(dev_priv, PIPE_C);
 =09}
=20
-=09dev_priv->chv_phy_control &=3D ~PHY_COM_LANE_RESET_DEASSERT(phy);
+=09dev_priv->display->chv_phy_control &=3D ~PHY_COM_LANE_RESET_DEASSERT(ph=
y);
 =09intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
-=09=09       dev_priv->chv_phy_control);
+=09=09       dev_priv->display->chv_phy_control);
=20
 =09vlv_set_power_well(dev_priv, power_well, false);
=20
 =09drm_dbg_kms(&dev_priv->drm,
 =09=09    "Disabled DPIO PHY%d (PHY_CONTROL=3D0x%08x)\n",
-=09=09    phy, dev_priv->chv_phy_control);
+=09=09    phy, dev_priv->display->chv_phy_control);
=20
 =09/* PHY is fully reset now, so we can enable the PHY state asserts */
-=09dev_priv->chv_phy_assert[phy] =3D true;
+=09dev_priv->display->chv_phy_assert[phy] =3D true;
=20
 =09assert_chv_phy_status(dev_priv);
 }
@@ -1743,7 +1743,7 @@ static void assert_chv_phy_powergate(struct drm_i915_=
private *dev_priv, enum dpi
 =09 * reset (ie. the power well has been disabled at
 =09 * least once).
 =09 */
-=09if (!dev_priv->chv_phy_assert[phy])
+=09if (!dev_priv->display->chv_phy_assert[phy])
 =09=09return;
=20
 =09if (ch =3D=3D DPIO_CH0)
@@ -1802,22 +1802,22 @@ bool chv_phy_powergate_ch(struct drm_i915_private *=
dev_priv, enum dpio_phy phy,
=20
 =09mutex_lock(&power_domains->lock);
=20
-=09was_override =3D dev_priv->chv_phy_control & PHY_CH_POWER_DOWN_OVRD_EN(=
phy, ch);
+=09was_override =3D dev_priv->display->chv_phy_control & PHY_CH_POWER_DOWN=
_OVRD_EN(phy, ch);
=20
 =09if (override =3D=3D was_override)
 =09=09goto out;
=20
 =09if (override)
-=09=09dev_priv->chv_phy_control |=3D PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
+=09=09dev_priv->display->chv_phy_control |=3D PHY_CH_POWER_DOWN_OVRD_EN(ph=
y, ch);
 =09else
-=09=09dev_priv->chv_phy_control &=3D ~PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
+=09=09dev_priv->display->chv_phy_control &=3D ~PHY_CH_POWER_DOWN_OVRD_EN(p=
hy, ch);
=20
 =09intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
-=09=09       dev_priv->chv_phy_control);
+=09=09       dev_priv->display->chv_phy_control);
=20
 =09drm_dbg_kms(&dev_priv->drm,
 =09=09    "Power gating DPIO PHY%d CH%d (DPIO_PHY_CONTROL=3D0x%08x)\n",
-=09=09    phy, ch, dev_priv->chv_phy_control);
+=09=09    phy, ch, dev_priv->display->chv_phy_control);
=20
 =09assert_chv_phy_status(dev_priv);
=20
@@ -1837,20 +1837,20 @@ void chv_phy_powergate_lanes(struct intel_encoder *=
encoder,
=20
 =09mutex_lock(&power_domains->lock);
=20
-=09dev_priv->chv_phy_control &=3D ~PHY_CH_POWER_DOWN_OVRD(0xf, phy, ch);
-=09dev_priv->chv_phy_control |=3D PHY_CH_POWER_DOWN_OVRD(mask, phy, ch);
+=09dev_priv->display->chv_phy_control &=3D ~PHY_CH_POWER_DOWN_OVRD(0xf, ph=
y, ch);
+=09dev_priv->display->chv_phy_control |=3D PHY_CH_POWER_DOWN_OVRD(mask, ph=
y, ch);
=20
 =09if (override)
-=09=09dev_priv->chv_phy_control |=3D PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
+=09=09dev_priv->display->chv_phy_control |=3D PHY_CH_POWER_DOWN_OVRD_EN(ph=
y, ch);
 =09else
-=09=09dev_priv->chv_phy_control &=3D ~PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
+=09=09dev_priv->display->chv_phy_control &=3D ~PHY_CH_POWER_DOWN_OVRD_EN(p=
hy, ch);
=20
 =09intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
-=09=09       dev_priv->chv_phy_control);
+=09=09       dev_priv->display->chv_phy_control);
=20
 =09drm_dbg_kms(&dev_priv->drm,
 =09=09    "Power gating DPIO PHY%d CH%d lanes 0x%x (PHY_CONTROL=3D0x%08x)\=
n",
-=09=09    phy, ch, mask, dev_priv->chv_phy_control);
+=09=09    phy, ch, mask, dev_priv->display->chv_phy_control);
=20
 =09assert_chv_phy_status(dev_priv);
=20
@@ -1928,7 +1928,7 @@ static void chv_pipe_power_well_sync_hw(struct drm_i9=
15_private *dev_priv,
 =09=09=09=09=09struct i915_power_well *power_well)
 {
 =09intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
-=09=09       dev_priv->chv_phy_control);
+=09=09       dev_priv->display->chv_phy_control);
 }
=20
 static void chv_pipe_power_well_enable(struct drm_i915_private *dev_priv,
@@ -5885,7 +5885,7 @@ static void chv_phy_control_init(struct drm_i915_priv=
ate *dev_priv)
 =09 * power well state and lane status to reconstruct the
 =09 * expected initial value.
 =09 */
-=09dev_priv->chv_phy_control =3D
+=09dev_priv->display->chv_phy_control =3D
 =09=09PHY_LDO_SEQ_DELAY(PHY_LDO_DELAY_600NS, DPIO_PHY0) |
 =09=09PHY_LDO_SEQ_DELAY(PHY_LDO_DELAY_600NS, DPIO_PHY1) |
 =09=09PHY_CH_POWER_MODE(PHY_CH_DEEP_PSR, DPIO_PHY0, DPIO_CH0) |
@@ -5907,27 +5907,27 @@ static void chv_phy_control_init(struct drm_i915_pr=
ivate *dev_priv)
 =09=09if (mask =3D=3D 0xf)
 =09=09=09mask =3D 0x0;
 =09=09else
-=09=09=09dev_priv->chv_phy_control |=3D
+=09=09=09dev_priv->display->chv_phy_control |=3D
 =09=09=09=09PHY_CH_POWER_DOWN_OVRD_EN(DPIO_PHY0, DPIO_CH0);
=20
-=09=09dev_priv->chv_phy_control |=3D
+=09=09dev_priv->display->chv_phy_control |=3D
 =09=09=09PHY_CH_POWER_DOWN_OVRD(mask, DPIO_PHY0, DPIO_CH0);
=20
 =09=09mask =3D (status & DPLL_PORTC_READY_MASK) >> 4;
 =09=09if (mask =3D=3D 0xf)
 =09=09=09mask =3D 0x0;
 =09=09else
-=09=09=09dev_priv->chv_phy_control |=3D
+=09=09=09dev_priv->display->chv_phy_control |=3D
 =09=09=09=09PHY_CH_POWER_DOWN_OVRD_EN(DPIO_PHY0, DPIO_CH1);
=20
-=09=09dev_priv->chv_phy_control |=3D
+=09=09dev_priv->display->chv_phy_control |=3D
 =09=09=09PHY_CH_POWER_DOWN_OVRD(mask, DPIO_PHY0, DPIO_CH1);
=20
-=09=09dev_priv->chv_phy_control |=3D PHY_COM_LANE_RESET_DEASSERT(DPIO_PHY0=
);
+=09=09dev_priv->display->chv_phy_control |=3D PHY_COM_LANE_RESET_DEASSERT(=
DPIO_PHY0);
=20
-=09=09dev_priv->chv_phy_assert[DPIO_PHY0] =3D false;
+=09=09dev_priv->display->chv_phy_assert[DPIO_PHY0] =3D false;
 =09} else {
-=09=09dev_priv->chv_phy_assert[DPIO_PHY0] =3D true;
+=09=09dev_priv->display->chv_phy_assert[DPIO_PHY0] =3D true;
 =09}
=20
 =09if (cmn_d->desc->ops->is_enabled(dev_priv, cmn_d)) {
@@ -5939,21 +5939,21 @@ static void chv_phy_control_init(struct drm_i915_pr=
ivate *dev_priv)
 =09=09if (mask =3D=3D 0xf)
 =09=09=09mask =3D 0x0;
 =09=09else
-=09=09=09dev_priv->chv_phy_control |=3D
+=09=09=09dev_priv->display->chv_phy_control |=3D
 =09=09=09=09PHY_CH_POWER_DOWN_OVRD_EN(DPIO_PHY1, DPIO_CH0);
=20
-=09=09dev_priv->chv_phy_control |=3D
+=09=09dev_priv->display->chv_phy_control |=3D
 =09=09=09PHY_CH_POWER_DOWN_OVRD(mask, DPIO_PHY1, DPIO_CH0);
=20
-=09=09dev_priv->chv_phy_control |=3D PHY_COM_LANE_RESET_DEASSERT(DPIO_PHY1=
);
+=09=09dev_priv->display->chv_phy_control |=3D PHY_COM_LANE_RESET_DEASSERT(=
DPIO_PHY1);
=20
-=09=09dev_priv->chv_phy_assert[DPIO_PHY1] =3D false;
+=09=09dev_priv->display->chv_phy_assert[DPIO_PHY1] =3D false;
 =09} else {
-=09=09dev_priv->chv_phy_assert[DPIO_PHY1] =3D true;
+=09=09dev_priv->display->chv_phy_assert[DPIO_PHY1] =3D true;
 =09}
=20
 =09drm_dbg_kms(&dev_priv->drm, "Initial PHY_CONTROL=3D0x%08x\n",
-=09=09    dev_priv->chv_phy_control);
+=09=09    dev_priv->display->chv_phy_control);
=20
 =09/* Defer application of initial phy_control to enabling the powerwell *=
/
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/dr=
m/i915/display/intel_dpio_phy.c
index 48507ed79950..6e1ae5eadacd 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -365,7 +365,7 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *=
dev_priv,
 =09if (bxt_ddi_phy_is_enabled(dev_priv, phy)) {
 =09=09/* Still read out the GRC value for state verification */
 =09=09if (phy_info->rcomp_phy !=3D -1)
-=09=09=09dev_priv->bxt_phy_grc =3D bxt_get_grc(dev_priv, phy);
+=09=09=09dev_priv->display->bxt_phy_grc =3D bxt_get_grc(dev_priv, phy);
=20
 =09=09if (bxt_ddi_phy_verify_state(dev_priv, phy)) {
 =09=09=09drm_dbg(&dev_priv->drm, "DDI PHY %d already enabled, "
@@ -431,7 +431,7 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *=
dev_priv,
 =09=09 * the corresponding calibrated value from PHY1, and disable
 =09=09 * the automatic calibration on PHY0.
 =09=09 */
-=09=09val =3D dev_priv->bxt_phy_grc =3D bxt_get_grc(dev_priv,
+=09=09val =3D dev_priv->display->bxt_phy_grc =3D bxt_get_grc(dev_priv,
 =09=09=09=09=09=09=09  phy_info->rcomp_phy);
 =09=09grc_code =3D val << GRC_CODE_FAST_SHIFT |
 =09=09=09   val << GRC_CODE_SLOW_SHIFT |
@@ -557,7 +557,7 @@ bool bxt_ddi_phy_verify_state(struct drm_i915_private *=
dev_priv,
 =09=09=09   "BXT_PORT_CL2CM_DW6(%d)", phy);
=20
 =09if (phy_info->rcomp_phy !=3D -1) {
-=09=09u32 grc_code =3D dev_priv->bxt_phy_grc;
+=09=09u32 grc_code =3D dev_priv->display->bxt_phy_grc;
=20
 =09=09grc_code =3D grc_code << GRC_CODE_FAST_SHIFT |
 =09=09=09   grc_code << GRC_CODE_SLOW_SHIFT |
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i9=
15/display/intel_dpll.c
index 7b1dfb00d1b3..76c833b6e326 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1757,7 +1757,7 @@ void chv_enable_pll(const struct intel_crtc_state *cr=
tc_state)
 =09=09intel_de_write(dev_priv, DPLL_MD(PIPE_B),
 =09=09=09       crtc_state->dpll_hw_state.dpll_md);
 =09=09intel_de_write(dev_priv, CBR4_VLV, 0);
-=09=09dev_priv->chv_dpll_md[pipe] =3D crtc_state->dpll_hw_state.dpll_md;
+=09=09dev_priv->display->chv_dpll_md[pipe] =3D crtc_state->dpll_hw_state.d=
pll_md;
=20
 =09=09/*
 =09=09 * DPLLB VGA mode also seems to cause problems.
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/dr=
m/i915/display/intel_dpll_mgr.c
index 47036316fbf9..e9871560e0e5 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3110,10 +3110,10 @@ static void icl_update_active_dpll(struct intel_ato=
mic_state *state,
=20
 static u32 intel_get_hti_plls(struct drm_i915_private *i915)
 {
-=09if (!(i915->hti_state & HDPORT_ENABLED))
+=09if (!(i915->display->hti_state & HDPORT_ENABLED))
 =09=09return 0;
=20
-=09return REG_FIELD_GET(HDPORT_DPLL_USED_MASK, i915->hti_state);
+=09return REG_FIELD_GET(HDPORT_DPLL_USED_MASK, i915->display->hti_state);
 }
=20
 static bool icl_get_combo_phy_dpll(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 550efc29b54f..b3a48221b0fa 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -925,6 +925,27 @@ struct drm_i915_display {
 =09=09struct llist_head free_list;
 =09=09struct work_struct free_work;
 =09} atomic_helper;
+
+=09/*
+=09 * HTI (aka HDPORT) state read during initial hw readout.  Most
+=09 * platforms don't have HTI, so this will just stay 0.  Those that do
+=09 * will use this later to figure out which PLLs and PHYs are unavailabl=
e
+=09 * for driver usage.
+=09 */
+=09u32 hti_state;
+
+=09/* Shadow for DISPLAY_PHY_CONTROL which can't be safely read */
+=09u32 chv_phy_control;
+=09/*
+=09 * Shadows for CHV DPLL_MD regs to keep the state
+=09 * checker somewhat working in the presence hardware
+=09 * crappiness (can't read out DPLL_MD for pipes B & C).
+=09 */
+=09u32 chv_dpll_md[I915_MAX_PIPES];
+=09/* perform PHY state sanity checks? */
+=09bool chv_phy_assert[2];
+
+=09u32 bxt_phy_grc;
 };
=20
 struct drm_i915_private {
@@ -1071,14 +1092,6 @@ struct drm_i915_private {
=20
 =09struct intel_l3_parity l3_parity;
=20
-=09/*
-=09 * HTI (aka HDPORT) state read during initial hw readout.  Most
-=09 * platforms don't have HTI, so this will just stay 0.  Those that do
-=09 * will use this later to figure out which PLLs and PHYs are unavailabl=
e
-=09 * for driver usage.
-=09 */
-=09u32 hti_state;
-
 =09/*
 =09 * edram size in MB.
 =09 * Cannot be determined by PCIID. You must always read a register.
@@ -1093,16 +1106,6 @@ struct drm_i915_private {
=20
 =09u32 fdi_rx_config;
=20
-=09/* Shadow for DISPLAY_PHY_CONTROL which can't be safely read */
-=09u32 chv_phy_control;
-=09/*
-=09 * Shadows for CHV DPLL_MD regs to keep the state
-=09 * checker somewhat working in the presence hardware
-=09 * crappiness (can't read out DPLL_MD for pipes B & C).
-=09 */
-=09u32 chv_dpll_md[I915_MAX_PIPES];
-=09u32 bxt_phy_grc;
-
 =09u32 suspend_count;
 =09bool power_domains_suspended;
 =09struct i915_suspend_saved_registers regfile;
@@ -1211,9 +1214,6 @@ struct drm_i915_private {
=20
 =09bool irq_enabled;
=20
-=09/* perform PHY state sanity checks? */
-=09bool chv_phy_assert[2];
-
 =09bool ipc_enabled;
=20
 =09struct i915_pmu pmu;
--=20
2.31.1

