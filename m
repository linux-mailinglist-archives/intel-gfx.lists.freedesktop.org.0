Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A93260E4CD
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 17:36:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99DD810E55E;
	Wed, 26 Oct 2022 15:34:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com
 [66.111.4.230])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96C2E10E53D;
 Wed, 26 Oct 2022 15:34:15 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id DF04E5803B9;
 Wed, 26 Oct 2022 11:34:14 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Wed, 26 Oct 2022 11:34:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
 :cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm3; t=1666798454; x=
 1666805654; bh=Epsmm0rB+VJ6Ugkp+llJmwrmW0YmRsA6TLnns5YUuHc=; b=K
 PnK1Nzjr1qU6BeYJZwUQ8rbSktfEsYExuyUF9q6/T6bncghJb+W3Yvf3c3GOg5dg
 L5kCKi3lMqybkfaajOfPzuxyIcREILHeR5tfzzho/ZdJOb9CbphSfyppJEyT3ppi
 Ja9p9DAkBPDSMx4bqXjr0ZAeN3W4MnjuLhEwvwKSPxCF8SJpjF83YX0Jzj+Ic57k
 lGRvAfSzOqMJwPYohd3mdPSrq3sDTb4s+mnjkHWjaa6tq0fcAbRLSXiWFNaHfNvj
 c3Fkqgzndsg7HbpH/38tOcGmGlyQP8SwgwFEuVkGaicpk6KUshubmuudh5uttpsO
 q90rzPlghc+Ersx2kvp2Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1666798454; x=
 1666805654; bh=Epsmm0rB+VJ6Ugkp+llJmwrmW0YmRsA6TLnns5YUuHc=; b=o
 JjrnmjMQizOWqeNqkZDQiWaonxjoJfCaz0qs2GZcbH1OwnusjZw79S5Nwp0bJZN3
 4p2bDarFGYlWbFYBXlJ63BAhJBoNko68m82dN5NlWRcYfKB85gKOgk3mX1lSR5Jc
 q1oBkkv30stwI3c5jLvmsDsmEcE14A5E921detzcDWl8t2W4BPI1BzHVZvVgjGAP
 1MuyPPgqpItVJvq1jf3wvYG0bFeW7ddWXV5KqxkLDS8141cRBTCmpwsU0sRnAtV5
 kXBR+lOs8Ug0oh992k9GkeaVm0uBnEvhaNNVrd/H45cWRO4+x6t5zOKa4SvbsLPO
 +TE1mblHs5Rzd3UPIuLxA==
X-ME-Sender: <xms:dlNZY_nJ-cE0DOljkODX6NT_zccZw6dZyuYCCrLYT3fYX1b6u-NZhQ>
 <xme:dlNZYy3RUmqu_kfW4dDx80q6O3YH8oq1_RIJXlEa3PPPEWYg4oxDpjIsYS67yaH3B
 izZaVlFKAk3MdVWqEM>
X-ME-Received: <xmr:dlNZY1rWDYCMamG7W1WKMUwgYq1aivyxggfGiOUPe9qBL2LoHg1FAJ4j2tvTPnhIb4iQOM3StVd_3ELaWeZX4jIVT1d4jyaGfMpZwVKD03p_PQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrtddvgdeltdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhfffuggfgtgfkfhgjvfevofesthekredtredtjeenucfhrhhomhepmhgrgihi
 mhgvsegtvghrnhhordhtvggthhenucggtffrrghtthgvrhhnpeeltdekveelgfelveelfe
 duheelvdegudffgefhudehgeevjefhhefhhefgvdeuvdenucevlhhushhtvghrufhiiigv
 pedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtg
 hh
X-ME-Proxy: <xmx:dlNZY3mMVOBhWZq0PddOmEbRUvzAFMaCRuWzytHtilHs5N4b13bHwQ>
 <xmx:dlNZY91JBCSlYCnw8m7rZb-zyzNtivkpnppsghlxaVyvE1uIbeZlyQ>
 <xmx:dlNZY2ud0m6GGjLtsKLxFRt_LRS8J6bSIhJ9KS97fi8Hjo3BCY1V-w>
 <xmx:dlNZY8DRwaVAn6ljMtNC_wHDC44ElFIgIqYdR3Z_ihJx7eAIoztGhw>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 26 Oct 2022 11:34:14 -0400 (EDT)
From: maxime@cerno.tech
Date: Wed, 26 Oct 2022 17:33:40 +0200
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="utf-8"
Message-Id: <20220728-rpi-analog-tv-properties-v6-21-e7792734108f@cerno.tech>
References: <20220728-rpi-analog-tv-properties-v6-0-e7792734108f@cerno.tech>
In-Reply-To: <20220728-rpi-analog-tv-properties-v6-0-e7792734108f@cerno.tech>
To: Karol Herbst <kherbst@redhat.com>, Emma Anholt <emma@anholt.net>,
 Ben Skeggs <bskeggs@redhat.com>, 
 Chen-Yu Tsai <wens@csie.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Samuel Holland <samuel@sholland.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@linux.ie>,
 Maxime Ripard <mripard@kernel.org>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Lyude Paul <lyude@redhat.com>
X-Mailer: b4 0.11.0-dev-99e3a
X-Developer-Signature: v=1; a=openpgp-sha256; l=9682; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=AR9flBz/c1C04tSsulZ805BZNc3dYG23XLyvNf34ou4=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMmRwe4N1/Z+iTn1c/bXBW7lixksPT682x7Z6aLy9/S/RtUz
 5090dZSyMIhxMciKKbLECJsviTs163UnG988mDmsTCBDGLg4BWAia8IZ/ilYVUouW+759sQ90Zcc15
 q5JvhVpbFZ5r/cptzee/9f4XJGhm9yboGHq1rvRh866Vd1kOnO+hjV7lw9r05F9VWWMfWRzAA=
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
Subject: [Intel-gfx] [PATCH v6 21/23] drm/vc4: vec: Convert to the new TV
 mode property
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
Cc: Dom Cobley <dom@raspberrypi.com>, Dave Stevenson <dave.stevenson@raspberrypi.com>, nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-sunxi@lists.linux.dev, Hans de Goede <hdegoede@redhat.com>, Noralf Trønnes <noralf@tronnes.org>, Geert Uytterhoeven <geert@linux-m68k.org>, Maxime Ripard <maxime@cerno.tech>, Mateusz Kwiatkowski <kfyatek+publicgit@gmail.com>, Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that the core can deal fine with analog TV modes, let's convert the vc4
VEC driver to leverage those new features.

We've added some backward compatibility to support the old TV mode property
and translate it into the new TV norm property. We're also making use of
the new analog TV atomic_check helper to make sure we trigger a modeset
whenever the TV mode is updated.

Acked-by: Noralf Trønnes <noralf@tronnes.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>

---
Changes in v6:
- Use new get_modes helper

Changes in v5:
- Renamed tv_mode_names into legacy_tv_mode_names

Changes in v4:
- Removed the count variable in .get_modes
---
 drivers/gpu/drm/vc4/vc4_vec.c | 185 +++++++++++++++++++++++++++++-------------
 1 file changed, 129 insertions(+), 56 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_vec.c b/drivers/gpu/drm/vc4/vc4_vec.c
index bfa8a58dba30..1dda451c8def 100644
--- a/drivers/gpu/drm/vc4/vc4_vec.c
+++ b/drivers/gpu/drm/vc4/vc4_vec.c
@@ -172,6 +172,8 @@ struct vc4_vec {
 
 	struct clk *clock;
 
+	struct drm_property *legacy_tv_mode_property;
+
 	struct debugfs_regset32 regset;
 };
 
@@ -184,6 +186,12 @@ encoder_to_vc4_vec(struct drm_encoder *encoder)
 	return container_of(encoder, struct vc4_vec, encoder.base);
 }
 
+static inline struct vc4_vec *
+connector_to_vc4_vec(struct drm_connector *connector)
+{
+	return container_of(connector, struct vc4_vec, connector);
+}
+
 enum vc4_vec_tv_mode_id {
 	VC4_VEC_TV_MODE_NTSC,
 	VC4_VEC_TV_MODE_NTSC_J,
@@ -192,7 +200,7 @@ enum vc4_vec_tv_mode_id {
 };
 
 struct vc4_vec_tv_mode {
-	const struct drm_display_mode *mode;
+	unsigned int mode;
 	u32 config0;
 	u32 config1;
 	u32 custom_freq;
@@ -225,43 +233,51 @@ static const struct debugfs_reg32 vec_regs[] = {
 	VC4_REG32(VEC_DAC_MISC),
 };
 
-static const struct drm_display_mode ntsc_mode = {
-	DRM_MODE("720x480", DRM_MODE_TYPE_DRIVER, 13500,
-		 720, 720 + 14, 720 + 14 + 64, 720 + 14 + 64 + 60, 0,
-		 480, 480 + 7, 480 + 7 + 6, 525, 0,
-		 DRM_MODE_FLAG_INTERLACE)
-};
-
-static const struct drm_display_mode pal_mode = {
-	DRM_MODE("720x576", DRM_MODE_TYPE_DRIVER, 13500,
-		 720, 720 + 20, 720 + 20 + 64, 720 + 20 + 64 + 60, 0,
-		 576, 576 + 4, 576 + 4 + 6, 625, 0,
-		 DRM_MODE_FLAG_INTERLACE)
-};
-
 static const struct vc4_vec_tv_mode vc4_vec_tv_modes[] = {
-	[VC4_VEC_TV_MODE_NTSC] = {
-		.mode = &ntsc_mode,
+	{
+		.mode = DRM_MODE_TV_MODE_NTSC,
 		.config0 = VEC_CONFIG0_NTSC_STD | VEC_CONFIG0_PDEN,
 		.config1 = VEC_CONFIG1_C_CVBS_CVBS,
 	},
-	[VC4_VEC_TV_MODE_NTSC_J] = {
-		.mode = &ntsc_mode,
+	{
+		.mode = DRM_MODE_TV_MODE_NTSC_J,
 		.config0 = VEC_CONFIG0_NTSC_STD,
 		.config1 = VEC_CONFIG1_C_CVBS_CVBS,
 	},
-	[VC4_VEC_TV_MODE_PAL] = {
-		.mode = &pal_mode,
+	{
+		.mode = DRM_MODE_TV_MODE_PAL,
 		.config0 = VEC_CONFIG0_PAL_BDGHI_STD,
 		.config1 = VEC_CONFIG1_C_CVBS_CVBS,
 	},
-	[VC4_VEC_TV_MODE_PAL_M] = {
-		.mode = &ntsc_mode,
+	{
+		.mode = DRM_MODE_TV_MODE_PAL_M,
 		.config0 = VEC_CONFIG0_PAL_M_STD,
 		.config1 = VEC_CONFIG1_C_CVBS_CVBS,
 	},
 };
 
+static inline const struct vc4_vec_tv_mode *
+vc4_vec_tv_mode_lookup(unsigned int mode)
+{
+	unsigned int i;
+
+	for (i = 0; i < ARRAY_SIZE(vc4_vec_tv_modes); i++) {
+		const struct vc4_vec_tv_mode *tv_mode = &vc4_vec_tv_modes[i];
+
+		if (tv_mode->mode == mode)
+			return tv_mode;
+	}
+
+	return NULL;
+}
+
+static const struct drm_prop_enum_list legacy_tv_mode_names[] = {
+	{ VC4_VEC_TV_MODE_NTSC, "NTSC", },
+	{ VC4_VEC_TV_MODE_NTSC_J, "NTSC-J", },
+	{ VC4_VEC_TV_MODE_PAL, "PAL", },
+	{ VC4_VEC_TV_MODE_PAL_M, "PAL-M", },
+};
+
 static enum drm_connector_status
 vc4_vec_connector_detect(struct drm_connector *connector, bool force)
 {
@@ -274,21 +290,74 @@ static void vc4_vec_connector_reset(struct drm_connector *connector)
 	drm_atomic_helper_connector_tv_reset(connector);
 }
 
-static int vc4_vec_connector_get_modes(struct drm_connector *connector)
+static int
+vc4_vec_connector_set_property(struct drm_connector *connector,
+			       struct drm_connector_state *state,
+			       struct drm_property *property,
+			       uint64_t val)
 {
-	struct drm_connector_state *state = connector->state;
-	struct drm_display_mode *mode;
-
-	mode = drm_mode_duplicate(connector->dev,
-				  vc4_vec_tv_modes[state->tv.legacy_mode].mode);
-	if (!mode) {
-		DRM_ERROR("Failed to create a new display mode\n");
-		return -ENOMEM;
+	struct vc4_vec *vec = connector_to_vc4_vec(connector);
+
+	if (property != vec->legacy_tv_mode_property)
+		return -EINVAL;
+
+	switch (val) {
+	case VC4_VEC_TV_MODE_NTSC:
+		state->tv.mode = DRM_MODE_TV_MODE_NTSC;
+		break;
+
+	case VC4_VEC_TV_MODE_NTSC_J:
+		state->tv.mode = DRM_MODE_TV_MODE_NTSC_J;
+		break;
+
+	case VC4_VEC_TV_MODE_PAL:
+		state->tv.mode = DRM_MODE_TV_MODE_PAL;
+		break;
+
+	case VC4_VEC_TV_MODE_PAL_M:
+		state->tv.mode = DRM_MODE_TV_MODE_PAL_M;
+		break;
+
+	default:
+		return -EINVAL;
 	}
 
-	drm_mode_probed_add(connector, mode);
+	return 0;
+}
+
+static int
+vc4_vec_connector_get_property(struct drm_connector *connector,
+			       const struct drm_connector_state *state,
+			       struct drm_property *property,
+			       uint64_t *val)
+{
+	struct vc4_vec *vec = connector_to_vc4_vec(connector);
+
+	if (property != vec->legacy_tv_mode_property)
+		return -EINVAL;
+
+	switch (state->tv.mode) {
+	case DRM_MODE_TV_MODE_NTSC:
+		*val = VC4_VEC_TV_MODE_NTSC;
+		break;
+
+	case DRM_MODE_TV_MODE_NTSC_J:
+		*val = VC4_VEC_TV_MODE_NTSC_J;
+		break;
+
+	case DRM_MODE_TV_MODE_PAL:
+		*val = VC4_VEC_TV_MODE_PAL;
+		break;
+
+	case DRM_MODE_TV_MODE_PAL_M:
+		*val = VC4_VEC_TV_MODE_PAL_M;
+		break;
+
+	default:
+		return -EINVAL;
+	}
 
-	return 1;
+	return 0;
 }
 
 static const struct drm_connector_funcs vc4_vec_connector_funcs = {
@@ -297,15 +366,19 @@ static const struct drm_connector_funcs vc4_vec_connector_funcs = {
 	.reset = vc4_vec_connector_reset,
 	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
+	.atomic_get_property = vc4_vec_connector_get_property,
+	.atomic_set_property = vc4_vec_connector_set_property,
 };
 
 static const struct drm_connector_helper_funcs vc4_vec_connector_helper_funcs = {
-	.get_modes = vc4_vec_connector_get_modes,
+	.atomic_check = drm_atomic_helper_connector_tv_check,
+	.get_modes = drm_connector_helper_tv_get_modes,
 };
 
 static int vc4_vec_connector_init(struct drm_device *dev, struct vc4_vec *vec)
 {
 	struct drm_connector *connector = &vec->connector;
+	struct drm_property *prop;
 	int ret;
 
 	connector->interlace_allowed = true;
@@ -318,8 +391,17 @@ static int vc4_vec_connector_init(struct drm_device *dev, struct vc4_vec *vec)
 	drm_connector_helper_add(connector, &vc4_vec_connector_helper_funcs);
 
 	drm_object_attach_property(&connector->base,
-				   dev->mode_config.legacy_tv_mode_property,
-				   VC4_VEC_TV_MODE_NTSC);
+				   dev->mode_config.tv_mode_property,
+				   DRM_MODE_TV_MODE_NTSC);
+
+	prop = drm_property_create_enum(dev, 0, "mode",
+					legacy_tv_mode_names,
+					ARRAY_SIZE(legacy_tv_mode_names));
+	if (!prop)
+		return -ENOMEM;
+	vec->legacy_tv_mode_property = prop;
+
+	drm_object_attach_property(&connector->base, prop, VC4_VEC_TV_MODE_NTSC);
 
 	drm_connector_attach_encoder(connector, &vec->encoder.base);
 
@@ -366,13 +448,16 @@ static void vc4_vec_encoder_enable(struct drm_encoder *encoder,
 	struct drm_connector *connector = &vec->connector;
 	struct drm_connector_state *conn_state =
 		drm_atomic_get_new_connector_state(state, connector);
-	const struct vc4_vec_tv_mode *tv_mode =
-		&vc4_vec_tv_modes[conn_state->tv.legacy_mode];
+	const struct vc4_vec_tv_mode *tv_mode;
 	int idx, ret;
 
 	if (!drm_dev_enter(drm, &idx))
 		return;
 
+	tv_mode = vc4_vec_tv_mode_lookup(conn_state->tv.mode);
+	if (!tv_mode)
+		goto err_dev_exit;
+
 	ret = pm_runtime_get_sync(&vec->pdev->dev);
 	if (ret < 0) {
 		DRM_ERROR("Failed to retain power domain: %d\n", ret);
@@ -454,13 +539,6 @@ static int vc4_vec_encoder_atomic_check(struct drm_encoder *encoder,
 					struct drm_connector_state *conn_state)
 {
 	const struct drm_display_mode *mode = &crtc_state->adjusted_mode;
-	const struct vc4_vec_tv_mode *vec_mode;
-
-	vec_mode = &vc4_vec_tv_modes[conn_state->tv.legacy_mode];
-
-	if (conn_state->crtc &&
-	    !drm_mode_equal(vec_mode->mode, &crtc_state->adjusted_mode))
-		return -EINVAL;
 
 	if (mode->crtc_hdisplay % 4)
 		return -EINVAL;
@@ -556,13 +634,6 @@ static const struct of_device_id vc4_vec_dt_match[] = {
 	{ /* sentinel */ },
 };
 
-static const char * const tv_mode_names[] = {
-	[VC4_VEC_TV_MODE_NTSC] = "NTSC",
-	[VC4_VEC_TV_MODE_NTSC_J] = "NTSC-J",
-	[VC4_VEC_TV_MODE_PAL] = "PAL",
-	[VC4_VEC_TV_MODE_PAL_M] = "PAL-M",
-};
-
 static int vc4_vec_bind(struct device *dev, struct device *master, void *data)
 {
 	struct platform_device *pdev = to_platform_device(dev);
@@ -570,9 +641,11 @@ static int vc4_vec_bind(struct device *dev, struct device *master, void *data)
 	struct vc4_vec *vec;
 	int ret;
 
-	ret = drm_mode_create_tv_properties_legacy(drm,
-						   ARRAY_SIZE(tv_mode_names),
-						   tv_mode_names);
+	ret = drm_mode_create_tv_properties(drm,
+					    BIT(DRM_MODE_TV_MODE_NTSC) |
+					    BIT(DRM_MODE_TV_MODE_NTSC_J) |
+					    BIT(DRM_MODE_TV_MODE_PAL) |
+					    BIT(DRM_MODE_TV_MODE_PAL_M));
 	if (ret)
 		return ret;
 

-- 
b4 0.11.0-dev-99e3a
