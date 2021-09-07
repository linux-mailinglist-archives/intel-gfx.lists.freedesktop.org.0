Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD21402431
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 09:26:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4A6F89D7D;
	Tue,  7 Sep 2021 07:26:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3727F89D60
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 07:26:09 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-573-N6U8dnSuPhe26Vw4rf7jNQ-1; Tue, 07 Sep 2021 03:26:04 -0400
X-MC-Unique: N6U8dnSuPhe26Vw4rf7jNQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8779019611A3;
 Tue,  7 Sep 2021 07:26:03 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2DA2E6608B;
 Tue,  7 Sep 2021 07:26:01 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Tue,  7 Sep 2021 17:25:29 +1000
Message-Id: <20210907072549.2962226-6-airlied@gmail.com>
In-Reply-To: <20210907072549.2962226-1-airlied@gmail.com>
References: <20210907072549.2962226-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 05/25] drm/i915/display: move intel_dmc into
 display struct
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
 .../drm/i915/display/intel_display_debugfs.c  |  2 +-
 .../drm/i915/display/intel_display_power.c    | 38 +++++++--------
 drivers/gpu/drm/i915/display/intel_dmc.c      | 46 +++++++++----------
 drivers/gpu/drm/i915/display/intel_psr.c      |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  4 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |  2 +-
 6 files changed, 47 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers=
/gpu/drm/i915/display/intel_display_debugfs.c
index ca819f9e353d..be0601606aa1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -539,7 +539,7 @@ static int i915_dmc_info(struct seq_file *m, void *unus=
ed)
 =09if (!HAS_DMC(dev_priv))
 =09=09return -ENODEV;
=20
-=09dmc =3D &dev_priv->dmc;
+=09dmc =3D &dev_priv->display->dmc;
=20
 =09wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
=20
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/g=
pu/drm/i915/display/intel_display_power.c
index 02a321a2efdd..d1db420a8819 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -832,8 +832,8 @@ static void gen9_sanitize_dc_state(struct drm_i915_priv=
ate *dev_priv)
=20
 =09drm_dbg_kms(&dev_priv->drm,
 =09=09    "Resetting DC state tracking from %02x to %02x\n",
-=09=09    dev_priv->dmc.dc_state, val);
-=09dev_priv->dmc.dc_state =3D val;
+=09=09    dev_priv->display->dmc.dc_state, val);
+=09dev_priv->display->dmc.dc_state =3D val;
 }
=20
 /**
@@ -868,8 +868,8 @@ static void gen9_set_dc_state(struct drm_i915_private *=
dev_priv, u32 state)
 =09=09return;
=20
 =09if (drm_WARN_ON_ONCE(&dev_priv->drm,
-=09=09=09     state & ~dev_priv->dmc.allowed_dc_mask))
-=09=09state &=3D dev_priv->dmc.allowed_dc_mask;
+=09=09=09     state & ~dev_priv->display->dmc.allowed_dc_mask))
+=09=09state &=3D dev_priv->display->dmc.allowed_dc_mask;
=20
 =09val =3D intel_de_read(dev_priv, DC_STATE_EN);
 =09mask =3D gen9_dc_mask(dev_priv);
@@ -877,16 +877,16 @@ static void gen9_set_dc_state(struct drm_i915_private=
 *dev_priv, u32 state)
 =09=09    val & mask, state);
=20
 =09/* Check if DMC is ignoring our DC state requests */
-=09if ((val & mask) !=3D dev_priv->dmc.dc_state)
+=09if ((val & mask) !=3D dev_priv->display->dmc.dc_state)
 =09=09drm_err(&dev_priv->drm, "DC state mismatch (0x%x -> 0x%x)\n",
-=09=09=09dev_priv->dmc.dc_state, val & mask);
+=09=09=09dev_priv->display->dmc.dc_state, val & mask);
=20
 =09val &=3D ~mask;
 =09val |=3D state;
=20
 =09gen9_write_dc_state(dev_priv, val);
=20
-=09dev_priv->dmc.dc_state =3D val & mask;
+=09dev_priv->display->dmc.dc_state =3D val & mask;
 }
=20
 static u32
@@ -905,7 +905,7 @@ sanitize_target_dc_state(struct drm_i915_private *dev_p=
riv,
 =09=09if (target_dc_state !=3D states[i])
 =09=09=09continue;
=20
-=09=09if (dev_priv->dmc.allowed_dc_mask & target_dc_state)
+=09=09if (dev_priv->display->dmc.allowed_dc_mask & target_dc_state)
 =09=09=09break;
=20
 =09=09target_dc_state =3D states[i + 1];
@@ -965,7 +965,7 @@ static void assert_dmc_loaded(struct drm_i915_private *=
dev_priv)
 {
 =09drm_WARN_ONCE(&dev_priv->drm,
 =09=09      !intel_de_read(dev_priv,
-=09=09=09=09     DMC_PROGRAM(dev_priv->dmc.dmc_info[DMC_FW_MAIN].start_mmi=
oaddr, 0)),
+=09=09=09=09     DMC_PROGRAM(dev_priv->display->dmc.dmc_info[DMC_FW_MAIN].=
start_mmioaddr, 0)),
 =09=09=09=09     "DMC program storage start is NULL\n");
 =09drm_WARN_ONCE(&dev_priv->drm, !intel_de_read(dev_priv, DMC_SSP_BASE),
 =09=09      "DMC SSP Base Not fine\n");
@@ -1020,7 +1020,7 @@ void intel_display_power_set_target_dc_state(struct d=
rm_i915_private *dev_priv,
=20
 =09state =3D sanitize_target_dc_state(dev_priv, state);
=20
-=09if (state =3D=3D dev_priv->dmc.target_dc_state)
+=09if (state =3D=3D dev_priv->display->dmc.target_dc_state)
 =09=09goto unlock;
=20
 =09dc_off_enabled =3D power_well->desc->ops->is_enabled(dev_priv,
@@ -1032,7 +1032,7 @@ void intel_display_power_set_target_dc_state(struct d=
rm_i915_private *dev_priv,
 =09if (!dc_off_enabled)
 =09=09power_well->desc->ops->enable(dev_priv, power_well);
=20
-=09dev_priv->dmc.target_dc_state =3D state;
+=09dev_priv->display->dmc.target_dc_state =3D state;
=20
 =09if (!dc_off_enabled)
 =09=09power_well->desc->ops->disable(dev_priv, power_well);
@@ -1185,7 +1185,7 @@ static void gen9_disable_dc_states(struct drm_i915_pr=
ivate *dev_priv)
 {
 =09struct intel_cdclk_config cdclk_config =3D {};
=20
-=09if (dev_priv->dmc.target_dc_state =3D=3D DC_STATE_EN_DC3CO) {
+=09if (dev_priv->display->dmc.target_dc_state =3D=3D DC_STATE_EN_DC3CO) {
 =09=09tgl_disable_dc3co(dev_priv);
 =09=09return;
 =09}
@@ -1227,7 +1227,7 @@ static void gen9_dc_off_power_well_disable(struct drm=
_i915_private *dev_priv,
 =09if (!intel_dmc_has_payload(dev_priv))
 =09=09return;
=20
-=09switch (dev_priv->dmc.target_dc_state) {
+=09switch (dev_priv->display->dmc.target_dc_state) {
 =09case DC_STATE_EN_DC3CO:
 =09=09tgl_enable_dc3co(dev_priv);
 =09=09break;
@@ -5108,10 +5108,10 @@ int intel_power_domains_init(struct drm_i915_privat=
e *dev_priv)
 =09dev_priv->params.disable_power_well =3D
 =09=09sanitize_disable_power_well_option(dev_priv,
 =09=09=09=09=09=09   dev_priv->params.disable_power_well);
-=09dev_priv->dmc.allowed_dc_mask =3D
+=09dev_priv->display->dmc.allowed_dc_mask =3D
 =09=09get_allowed_dc_mask(dev_priv, dev_priv->params.enable_dc);
=20
-=09dev_priv->dmc.target_dc_state =3D
+=09dev_priv->display->dmc.target_dc_state =3D
 =09=09sanitize_target_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
=20
 =09BUILD_BUG_ON(POWER_DOMAIN_NUM > 64);
@@ -6181,7 +6181,7 @@ void intel_power_domains_suspend(struct drm_i915_priv=
ate *i915,
 =09 * resources as required and also enable deeper system power states
 =09 * that would be blocked if the firmware was inactive.
 =09 */
-=09if (!(i915->dmc.allowed_dc_mask & DC_STATE_EN_DC9) &&
+=09if (!(i915->display->dmc.allowed_dc_mask & DC_STATE_EN_DC9) &&
 =09    suspend_mode =3D=3D I915_DRM_SUSPEND_IDLE &&
 =09    intel_dmc_has_payload(i915)) {
 =09=09intel_display_power_flush_work(i915);
@@ -6372,10 +6372,10 @@ void intel_display_power_resume(struct drm_i915_pri=
vate *i915)
 =09=09bxt_disable_dc9(i915);
 =09=09icl_display_core_init(i915, true);
 =09=09if (intel_dmc_has_payload(i915)) {
-=09=09=09if (i915->dmc.allowed_dc_mask &
+=09=09=09if (i915->display->dmc.allowed_dc_mask &
 =09=09=09    DC_STATE_EN_UPTO_DC6)
 =09=09=09=09skl_enable_dc6(i915);
-=09=09=09else if (i915->dmc.allowed_dc_mask &
+=09=09=09else if (i915->display->dmc.allowed_dc_mask &
 =09=09=09=09 DC_STATE_EN_UPTO_DC5)
 =09=09=09=09gen9_enable_dc5(i915);
 =09=09}
@@ -6383,7 +6383,7 @@ void intel_display_power_resume(struct drm_i915_priva=
te *i915)
 =09=09bxt_disable_dc9(i915);
 =09=09bxt_display_core_init(i915, true);
 =09=09if (intel_dmc_has_payload(i915) &&
-=09=09    (i915->dmc.allowed_dc_mask & DC_STATE_EN_UPTO_DC5))
+=09=09    (i915->display->dmc.allowed_dc_mask & DC_STATE_EN_UPTO_DC5))
 =09=09=09gen9_enable_dc5(i915);
 =09} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
 =09=09hsw_disable_pc8(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i91=
5/display/intel_dmc.c
index 3c3c6cb5c0df..6c028dc6bfeb 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -239,7 +239,7 @@ struct stepping_info {
=20
 bool intel_dmc_has_payload(struct drm_i915_private *i915)
 {
-=09return i915->dmc.dmc_info[DMC_FW_MAIN].payload;
+=09return i915->display->dmc.dmc_info[DMC_FW_MAIN].payload;
 }
=20
 static const struct stepping_info *
@@ -281,7 +281,7 @@ static void gen9_set_dc_state_debugmask(struct drm_i915=
_private *dev_priv)
  */
 void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 {
-=09struct intel_dmc *dmc =3D &dev_priv->dmc;
+=09struct intel_dmc *dmc =3D &dev_priv->display->dmc;
 =09u32 id, i;
=20
 =09if (!HAS_DMC(dev_priv)) {
@@ -290,7 +290,7 @@ void intel_dmc_load_program(struct drm_i915_private *de=
v_priv)
 =09=09return;
 =09}
=20
-=09if (!dev_priv->dmc.dmc_info[DMC_FW_MAIN].payload) {
+=09if (!dev_priv->display->dmc.dmc_info[DMC_FW_MAIN].payload) {
 =09=09drm_err(&dev_priv->drm,
 =09=09=09"Tried to program CSR with empty payload\n");
 =09=09return;
@@ -317,7 +317,7 @@ void intel_dmc_load_program(struct drm_i915_private *de=
v_priv)
 =09=09}
 =09}
=20
-=09dev_priv->dmc.dc_state =3D 0;
+=09dev_priv->display->dmc.dc_state =3D 0;
=20
 =09gen9_set_dc_state_debugmask(dev_priv);
 }
@@ -351,7 +351,7 @@ static void dmc_set_fw_offset(struct intel_dmc *dmc,
 {
 =09unsigned int i, id;
=20
-=09struct drm_i915_private *i915 =3D container_of(dmc, typeof(*i915), dmc)=
;
+=09struct drm_i915_private *i915 =3D container_of(dmc, typeof(*i915), _dis=
play.dmc);
=20
 =09for (i =3D 0; i < num_entries; i++) {
 =09=09id =3D package_ver <=3D 1 ? DMC_FW_MAIN : fw_info[i].dmc_id;
@@ -379,7 +379,7 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 =09=09=09       const struct intel_dmc_header_base *dmc_header,
 =09=09=09       size_t rem_size, u8 dmc_id)
 {
-=09struct drm_i915_private *i915 =3D container_of(dmc, typeof(*i915), dmc)=
;
+=09struct drm_i915_private *i915 =3D container_of(dmc, typeof(*i915), _dis=
play.dmc);
 =09struct dmc_fw_info *dmc_info =3D &dmc->dmc_info[dmc_id];
 =09unsigned int header_len_bytes, dmc_header_size, payload_size, i;
 =09const u32 *mmioaddr, *mmiodata;
@@ -484,7 +484,7 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
 =09=09     const struct stepping_info *si,
 =09=09     size_t rem_size)
 {
-=09struct drm_i915_private *i915 =3D container_of(dmc, typeof(*i915), dmc)=
;
+=09struct drm_i915_private *i915 =3D container_of(dmc, typeof(*i915), _dis=
play.dmc);
 =09u32 package_size =3D sizeof(struct intel_package_header);
 =09u32 num_entries, max_entries;
 =09const struct intel_fw_info *fw_info;
@@ -538,7 +538,7 @@ static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
 =09=09=09    struct intel_css_header *css_header,
 =09=09=09    size_t rem_size)
 {
-=09struct drm_i915_private *i915 =3D container_of(dmc, typeof(*i915), dmc)=
;
+=09struct drm_i915_private *i915 =3D container_of(dmc, typeof(*i915), _dis=
play.dmc);
=20
 =09if (rem_size < sizeof(struct intel_css_header)) {
 =09=09drm_err(&i915->drm, "Truncated DMC firmware, refusing.\n");
@@ -575,7 +575,7 @@ static void parse_dmc_fw(struct drm_i915_private *dev_p=
riv,
 =09struct intel_css_header *css_header;
 =09struct intel_package_header *package_header;
 =09struct intel_dmc_header_base *dmc_header;
-=09struct intel_dmc *dmc =3D &dev_priv->dmc;
+=09struct intel_dmc *dmc =3D &dev_priv->display->dmc;
 =09struct stepping_info display_info =3D { '*', '*'};
 =09const struct stepping_info *si =3D intel_get_stepping_info(dev_priv, &d=
isplay_info);
 =09u32 readcount =3D 0;
@@ -602,7 +602,7 @@ static void parse_dmc_fw(struct drm_i915_private *dev_p=
riv,
 =09readcount +=3D r;
=20
 =09for (id =3D 0; id < DMC_FW_MAX; id++) {
-=09=09if (!dev_priv->dmc.dmc_info[id].present)
+=09=09if (!dev_priv->display->dmc.dmc_info[id].present)
 =09=09=09continue;
=20
 =09=09offset =3D readcount + dmc->dmc_info[id].dmc_offset * 4;
@@ -618,15 +618,15 @@ static void parse_dmc_fw(struct drm_i915_private *dev=
_priv,
=20
 static void intel_dmc_runtime_pm_get(struct drm_i915_private *dev_priv)
 {
-=09drm_WARN_ON(&dev_priv->drm, dev_priv->dmc.wakeref);
-=09dev_priv->dmc.wakeref =3D
+=09drm_WARN_ON(&dev_priv->drm, dev_priv->display->dmc.wakeref);
+=09dev_priv->display->dmc.wakeref =3D
 =09=09intel_display_power_get(dev_priv, POWER_DOMAIN_INIT);
 }
=20
 static void intel_dmc_runtime_pm_put(struct drm_i915_private *dev_priv)
 {
 =09intel_wakeref_t wakeref __maybe_unused =3D
-=09=09fetch_and_zero(&dev_priv->dmc.wakeref);
+=09=09fetch_and_zero(&dev_priv->display->dmc.wakeref);
=20
 =09intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
 }
@@ -637,10 +637,10 @@ static void dmc_load_work_fn(struct work_struct *work=
)
 =09struct intel_dmc *dmc;
 =09const struct firmware *fw =3D NULL;
=20
-=09dev_priv =3D container_of(work, typeof(*dev_priv), dmc.work);
-=09dmc =3D &dev_priv->dmc;
+=09dev_priv =3D container_of(work, typeof(*dev_priv), _display.dmc.work);
+=09dmc =3D &dev_priv->display->dmc;
=20
-=09request_firmware(&fw, dev_priv->dmc.fw_path, dev_priv->drm.dev);
+=09request_firmware(&fw, dev_priv->display->dmc.fw_path, dev_priv->drm.dev=
);
 =09parse_dmc_fw(dev_priv, fw);
=20
 =09if (intel_dmc_has_payload(dev_priv)) {
@@ -649,7 +649,7 @@ static void dmc_load_work_fn(struct work_struct *work)
=20
 =09=09drm_info(&dev_priv->drm,
 =09=09=09 "Finished loading DMC firmware %s (v%u.%u)\n",
-=09=09=09 dev_priv->dmc.fw_path, DMC_VERSION_MAJOR(dmc->version),
+=09=09=09 dev_priv->display->dmc.fw_path, DMC_VERSION_MAJOR(dmc->version),
 =09=09=09 DMC_VERSION_MINOR(dmc->version));
 =09} else {
 =09=09drm_notice(&dev_priv->drm,
@@ -672,9 +672,9 @@ static void dmc_load_work_fn(struct work_struct *work)
  */
 void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
 {
-=09struct intel_dmc *dmc =3D &dev_priv->dmc;
+=09struct intel_dmc *dmc =3D &dev_priv->display->dmc;
=20
-=09INIT_WORK(&dev_priv->dmc.work, dmc_load_work_fn);
+=09INIT_WORK(&dev_priv->display->dmc.work, dmc_load_work_fn);
=20
 =09if (!HAS_DMC(dev_priv))
 =09=09return;
@@ -753,7 +753,7 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_=
priv)
 =09}
=20
 =09drm_dbg_kms(&dev_priv->drm, "Loading %s\n", dmc->fw_path);
-=09schedule_work(&dev_priv->dmc.work);
+=09schedule_work(&dev_priv->display->dmc.work);
 }
=20
 /**
@@ -769,7 +769,7 @@ void intel_dmc_ucode_suspend(struct drm_i915_private *d=
ev_priv)
 =09if (!HAS_DMC(dev_priv))
 =09=09return;
=20
-=09flush_work(&dev_priv->dmc.work);
+=09flush_work(&dev_priv->display->dmc.work);
=20
 =09/* Drop the reference held in case DMC isn't loaded. */
 =09if (!intel_dmc_has_payload(dev_priv))
@@ -809,7 +809,7 @@ void intel_dmc_ucode_fini(struct drm_i915_private *dev_=
priv)
 =09=09return;
=20
 =09intel_dmc_ucode_suspend(dev_priv);
-=09drm_WARN_ON(&dev_priv->drm, dev_priv->dmc.wakeref);
+=09drm_WARN_ON(&dev_priv->drm, dev_priv->display->dmc.wakeref);
=20
-=09kfree(dev_priv->dmc.dmc_info[DMC_FW_MAIN].payload);
+=09kfree(dev_priv->display->dmc.dmc_info[DMC_FW_MAIN].payload);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i91=
5/display/intel_psr.c
index 3f6fb7d67f84..e07b7ee169bd 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -692,7 +692,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *inte=
l_dp,
 =09if (crtc_state->enable_psr2_sel_fetch)
 =09=09return;
=20
-=09if (!(dev_priv->dmc.allowed_dc_mask & DC_STATE_EN_DC3CO))
+=09if (!(dev_priv->display->dmc.allowed_dc_mask & DC_STATE_EN_DC3CO))
 =09=09return;
=20
 =09if (!dc3co_is_pipe_port_compatible(intel_dp, crtc_state))
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 5ca320d1d718..8fc70516737c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -860,6 +860,8 @@ struct drm_i915_display {
 =09 * controller on different i2c buses. */
 =09struct mutex gmbus_mutex;
 =09wait_queue_head_t gmbus_wait_queue;
+
+=09struct intel_dmc dmc;
 };
=20
 struct drm_i915_private {
@@ -911,8 +913,6 @@ struct drm_i915_private {
=20
 =09struct intel_wopcm wopcm;
=20
-=09struct intel_dmc dmc;
-
 =09/* MMIO base address for MIPI regs */
 =09u32 mipi_mmio_base;
=20
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i=
915_gpu_error.c
index 9cf6ac575de1..f43aceaf287f 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -798,7 +798,7 @@ static void __err_print_to_sgl(struct drm_i915_error_st=
ate_buf *m,
 =09err_printf(m, "IOMMU enabled?: %d\n", error->iommu);
=20
 =09if (HAS_DMC(m->i915)) {
-=09=09struct intel_dmc *dmc =3D &m->i915->dmc;
+=09=09struct intel_dmc *dmc =3D &m->i915->display->dmc;
=20
 =09=09err_printf(m, "DMC loaded: %s\n",
 =09=09=09   yesno(intel_dmc_has_payload(m->i915) !=3D 0));
--=20
2.31.1

