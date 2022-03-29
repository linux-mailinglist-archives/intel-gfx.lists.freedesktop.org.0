Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FD04EB211
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 18:46:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E91AA10F15D;
	Tue, 29 Mar 2022 16:46:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3517A10F0CF
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 16:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648572363; x=1680108363;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+qAugR1xmDIMxRnLcxUwvVkgw97Fl+P4H6ZvdC0maTI=;
 b=jetUl5ZU9MZy2DFlGshlFKuJLgFn3mQBdaGUrxy81h+V7EytNH4XdNMp
 adfnQLn6pV99KDZ+Ix/gYDI760IikOq8yNTvaqoOjulFdABQfs4lD0+Ly
 f48QkFUbWz2WlLaXqGNXiO8sM3lCmJWacBEgVgyHwTpqvcrJ72IAGGVSw
 k9GG7+oEYoEIZgvTKY5B3RQMFXi08iroqPiVPV61Jpa29scSQQdXNIRl2
 WhOjd3vnl8wQO8Odfu93/Od6ewL6IEdigVwf4wEy3EEWxe2wiiALusNNd
 CiF16EwNdvtM2VoSVePPe6jO+KTA3DePDPC/6qrkrXdgkDSRfmkoGDstj g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="239237123"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="239237123"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 09:44:03 -0700
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="521513944"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 09:43:53 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 19:43:26 +0300
Message-Id: <20220329164336.1199359-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220329164336.1199359-1-imre.deak@intel.com>
References: <20220329164336.1199359-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 08/18] drm/i915: Convert the power well
 descriptor domain mask to an array of domains
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The next patch converts the i915_power_well_desc::domain mask from a u64
mask to a bitmap. I didn't find a reasonably simple way to initialize
bitmaps statically, so prepare for the next patch here by converting the
masks to an array of domain enums and initing the masks from these
arrays during module loading.

v2: Clarify list vs. array in the commit message. (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_power.c    |    4 +-
 .../i915/display/intel_display_power_map.c    | 1427 +++++++++--------
 .../i915/display/intel_display_power_well.c   |    2 +-
 .../i915/display/intel_display_power_well.h   |    6 +-
 4 files changed, 754 insertions(+), 685 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index e524b24c329a2..b9ba8500bf984 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -24,11 +24,11 @@
 
 #define for_each_power_domain_well(__dev_priv, __power_well, __domain_mask)	\
 	for_each_power_well(__dev_priv, __power_well)				\
-		for_each_if((__power_well)->desc->domains & (__domain_mask))
+		for_each_if((__power_well)->domains & (__domain_mask))
 
 #define for_each_power_domain_well_reverse(__dev_priv, __power_well, __domain_mask) \
 	for_each_power_well_reverse(__dev_priv, __power_well)		        \
-		for_each_if((__power_well)->desc->domains & (__domain_mask))
+		for_each_if((__power_well)->domains & (__domain_mask))
 
 const char *
 intel_display_power_domain_str(enum intel_display_power_domain domain)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 42b813cf47dbf..b7aa13d6a33f3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -11,70 +11,90 @@
 #include "intel_display_power_map.h"
 #include "intel_display_power_well.h"
 
-#define POWER_DOMAIN_MASK (GENMASK_ULL(POWER_DOMAIN_NUM - 1, 0))
+#define __LIST_INLINE_ELEMS(__elem_type, ...) \
+	((__elem_type[]) { __VA_ARGS__ })
+
+#define __LIST(__elems) { \
+	.list = __elems, \
+	.count = ARRAY_SIZE(__elems), \
+}
+
+#define I915_PW_DOMAINS(...) \
+	(const struct i915_power_domain_list) \
+		__LIST(__LIST_INLINE_ELEMS(enum intel_display_power_domain, __VA_ARGS__))
+
+#define I915_DECL_PW_DOMAINS(__name, ...) \
+	static const struct i915_power_domain_list __name = I915_PW_DOMAINS(__VA_ARGS__)
+
+/* Zero-length list assigns all power domains, a NULL list assigns none. */
+#define I915_PW_DOMAINS_NONE	NULL
+#define I915_PW_DOMAINS_ALL	/* zero-length list */
+
+
+I915_DECL_PW_DOMAINS(i9xx_pwdoms_always_on, I915_PW_DOMAINS_ALL);
 
 static const struct i915_power_well_desc i9xx_always_on_power_well[] = {
 	{
 		.name = "always-on",
-		.domains = POWER_DOMAIN_MASK,
+		.domain_list = &i9xx_pwdoms_always_on,
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	},
 };
 
-#define I830_PIPES_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_PIPE_A) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_A) |	\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |	\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(i830_pwdoms_pipes,
+	POWER_DOMAIN_PIPE_A,
+	POWER_DOMAIN_PIPE_B,
+	POWER_DOMAIN_PIPE_PANEL_FITTER_A,
+	POWER_DOMAIN_PIPE_PANEL_FITTER_B,
+	POWER_DOMAIN_TRANSCODER_A,
+	POWER_DOMAIN_TRANSCODER_B,
+	POWER_DOMAIN_INIT);
 
 static const struct i915_power_well_desc i830_power_wells[] = {
 	{
 		.name = "always-on",
-		.domains = POWER_DOMAIN_MASK,
+		.domain_list = &i9xx_pwdoms_always_on,
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
 		.name = "pipes",
-		.domains = I830_PIPES_POWER_DOMAINS,
+		.domain_list = &i830_pwdoms_pipes,
 		.ops = &i830_pipes_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 	},
 };
 
-#define HSW_DISPLAY_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_A) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_C) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_D) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_CRT) | /* DDI E */	\
-	BIT_ULL(POWER_DOMAIN_VGA) |				\
-	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
-	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(hsw_pwdoms_display,
+	POWER_DOMAIN_PIPE_B,
+	POWER_DOMAIN_PIPE_C,
+	POWER_DOMAIN_PIPE_PANEL_FITTER_A,
+	POWER_DOMAIN_PIPE_PANEL_FITTER_B,
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C,
+	POWER_DOMAIN_TRANSCODER_A,
+	POWER_DOMAIN_TRANSCODER_B,
+	POWER_DOMAIN_TRANSCODER_C,
+	POWER_DOMAIN_PORT_DDI_LANES_B,
+	POWER_DOMAIN_PORT_DDI_LANES_C,
+	POWER_DOMAIN_PORT_DDI_LANES_D,
+	POWER_DOMAIN_PORT_CRT, /* DDI E */
+	POWER_DOMAIN_VGA,
+	POWER_DOMAIN_AUDIO_MMIO,
+	POWER_DOMAIN_AUDIO_PLAYBACK,
+	POWER_DOMAIN_INIT);
 
 static const struct i915_power_well_desc hsw_power_wells[] = {
 	{
 		.name = "always-on",
-		.domains = POWER_DOMAIN_MASK,
+		.domain_list = &i9xx_pwdoms_always_on,
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
 		.name = "display",
-		.domains = HSW_DISPLAY_POWER_DOMAINS,
+		.domain_list = &hsw_pwdoms_display,
 		.ops = &hsw_power_well_ops,
 		.has_vga = true,
 		.id = HSW_DISP_PW_GLOBAL,
@@ -84,33 +104,33 @@ static const struct i915_power_well_desc hsw_power_wells[] = {
 	},
 };
 
-#define BDW_DISPLAY_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_C) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_D) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_CRT) | /* DDI E */	\
-	BIT_ULL(POWER_DOMAIN_VGA) |				\
-	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
-	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(bdw_pwdoms_display,
+	POWER_DOMAIN_PIPE_B,
+	POWER_DOMAIN_PIPE_C,
+	POWER_DOMAIN_PIPE_PANEL_FITTER_B,
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C,
+	POWER_DOMAIN_TRANSCODER_A,
+	POWER_DOMAIN_TRANSCODER_B,
+	POWER_DOMAIN_TRANSCODER_C,
+	POWER_DOMAIN_PORT_DDI_LANES_B,
+	POWER_DOMAIN_PORT_DDI_LANES_C,
+	POWER_DOMAIN_PORT_DDI_LANES_D,
+	POWER_DOMAIN_PORT_CRT, /* DDI E */
+	POWER_DOMAIN_VGA,
+	POWER_DOMAIN_AUDIO_MMIO,
+	POWER_DOMAIN_AUDIO_PLAYBACK,
+	POWER_DOMAIN_INIT);
 
 static const struct i915_power_well_desc bdw_power_wells[] = {
 	{
 		.name = "always-on",
-		.domains = POWER_DOMAIN_MASK,
+		.domain_list = &i9xx_pwdoms_always_on,
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
 		.name = "display",
-		.domains = BDW_DISPLAY_POWER_DOMAINS,
+		.domain_list = &bdw_pwdoms_display,
 		.ops = &hsw_power_well_ops,
 		.has_vga = true,
 		.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
@@ -121,64 +141,51 @@ static const struct i915_power_well_desc bdw_power_wells[] = {
 	},
 };
 
-#define VLV_DISPLAY_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_DISPLAY_CORE) |	\
-	BIT_ULL(POWER_DOMAIN_PIPE_A) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_A) |	\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DSI) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_CRT) |		\
-	BIT_ULL(POWER_DOMAIN_VGA) |			\
-	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
-	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
-	BIT_ULL(POWER_DOMAIN_GMBUS) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(vlv_pwdoms_display,
+	POWER_DOMAIN_DISPLAY_CORE,
+	POWER_DOMAIN_PIPE_A,
+	POWER_DOMAIN_PIPE_B,
+	POWER_DOMAIN_PIPE_PANEL_FITTER_A,
+	POWER_DOMAIN_PIPE_PANEL_FITTER_B,
+	POWER_DOMAIN_TRANSCODER_A,
+	POWER_DOMAIN_TRANSCODER_B,
+	POWER_DOMAIN_PORT_DDI_LANES_B,
+	POWER_DOMAIN_PORT_DDI_LANES_C,
+	POWER_DOMAIN_PORT_DSI,
+	POWER_DOMAIN_PORT_CRT,
+	POWER_DOMAIN_VGA,
+	POWER_DOMAIN_AUDIO_MMIO,
+	POWER_DOMAIN_AUDIO_PLAYBACK,
+	POWER_DOMAIN_AUX_B,
+	POWER_DOMAIN_AUX_C,
+	POWER_DOMAIN_GMBUS,
+	POWER_DOMAIN_INIT);
 
-#define VLV_DPIO_CMN_BC_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_CRT) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(vlv_pwdoms_dpio_cmn_bc,
+	POWER_DOMAIN_PORT_DDI_LANES_B,
+	POWER_DOMAIN_PORT_DDI_LANES_C,
+	POWER_DOMAIN_PORT_CRT,
+	POWER_DOMAIN_AUX_B,
+	POWER_DOMAIN_AUX_C,
+	POWER_DOMAIN_INIT);
 
-#define VLV_DPIO_TX_B_LANES_01_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |	\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define VLV_DPIO_TX_B_LANES_23_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |	\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define VLV_DPIO_TX_C_LANES_01_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |	\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define VLV_DPIO_TX_C_LANES_23_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |	\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(vlv_pwdoms_dpio_tx_bc_lanes,
+	POWER_DOMAIN_PORT_DDI_LANES_B,
+	POWER_DOMAIN_PORT_DDI_LANES_C,
+	POWER_DOMAIN_AUX_B,
+	POWER_DOMAIN_AUX_C,
+	POWER_DOMAIN_INIT);
 
 static const struct i915_power_well_desc vlv_power_wells[] = {
 	{
 		.name = "always-on",
-		.domains = POWER_DOMAIN_MASK,
+		.domain_list = &i9xx_pwdoms_always_on,
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
 		.name = "display",
-		.domains = VLV_DISPLAY_POWER_DOMAINS,
+		.domain_list = &vlv_pwdoms_display,
 		.ops = &vlv_display_power_well_ops,
 		.id = VLV_DISP_PW_DISP2D,
 		{
@@ -186,10 +193,7 @@ static const struct i915_power_well_desc vlv_power_wells[] = {
 		},
 	}, {
 		.name = "dpio-tx-b-01",
-		.domains = VLV_DPIO_TX_B_LANES_01_POWER_DOMAINS |
-			   VLV_DPIO_TX_B_LANES_23_POWER_DOMAINS |
-			   VLV_DPIO_TX_C_LANES_01_POWER_DOMAINS |
-			   VLV_DPIO_TX_C_LANES_23_POWER_DOMAINS,
+		.domain_list = &vlv_pwdoms_dpio_tx_bc_lanes,
 		.ops = &vlv_dpio_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -197,10 +201,7 @@ static const struct i915_power_well_desc vlv_power_wells[] = {
 		},
 	}, {
 		.name = "dpio-tx-b-23",
-		.domains = VLV_DPIO_TX_B_LANES_01_POWER_DOMAINS |
-			   VLV_DPIO_TX_B_LANES_23_POWER_DOMAINS |
-			   VLV_DPIO_TX_C_LANES_01_POWER_DOMAINS |
-			   VLV_DPIO_TX_C_LANES_23_POWER_DOMAINS,
+		.domain_list = &vlv_pwdoms_dpio_tx_bc_lanes,
 		.ops = &vlv_dpio_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -208,10 +209,7 @@ static const struct i915_power_well_desc vlv_power_wells[] = {
 		},
 	}, {
 		.name = "dpio-tx-c-01",
-		.domains = VLV_DPIO_TX_B_LANES_01_POWER_DOMAINS |
-			   VLV_DPIO_TX_B_LANES_23_POWER_DOMAINS |
-			   VLV_DPIO_TX_C_LANES_01_POWER_DOMAINS |
-			   VLV_DPIO_TX_C_LANES_23_POWER_DOMAINS,
+		.domain_list = &vlv_pwdoms_dpio_tx_bc_lanes,
 		.ops = &vlv_dpio_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -219,10 +217,7 @@ static const struct i915_power_well_desc vlv_power_wells[] = {
 		},
 	}, {
 		.name = "dpio-tx-c-23",
-		.domains = VLV_DPIO_TX_B_LANES_01_POWER_DOMAINS |
-			   VLV_DPIO_TX_B_LANES_23_POWER_DOMAINS |
-			   VLV_DPIO_TX_C_LANES_01_POWER_DOMAINS |
-			   VLV_DPIO_TX_C_LANES_23_POWER_DOMAINS,
+		.domain_list = &vlv_pwdoms_dpio_tx_bc_lanes,
 		.ops = &vlv_dpio_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -230,7 +225,7 @@ static const struct i915_power_well_desc vlv_power_wells[] = {
 		},
 	}, {
 		.name = "dpio-common",
-		.domains = VLV_DPIO_CMN_BC_POWER_DOMAINS,
+		.domain_list = &vlv_pwdoms_dpio_cmn_bc,
 		.ops = &vlv_dpio_cmn_power_well_ops,
 		.id = VLV_DISP_PW_DPIO_CMN_BC,
 		{
@@ -239,46 +234,46 @@ static const struct i915_power_well_desc vlv_power_wells[] = {
 	},
 };
 
-#define CHV_DISPLAY_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_DISPLAY_CORE) |	\
-	BIT_ULL(POWER_DOMAIN_PIPE_A) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_C) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_A) |	\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |	\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_C) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_D) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DSI) |		\
-	BIT_ULL(POWER_DOMAIN_VGA) |			\
-	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
-	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_D) |		\
-	BIT_ULL(POWER_DOMAIN_GMBUS) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(chv_pwdoms_display,
+	POWER_DOMAIN_DISPLAY_CORE,
+	POWER_DOMAIN_PIPE_A,
+	POWER_DOMAIN_PIPE_B,
+	POWER_DOMAIN_PIPE_C,
+	POWER_DOMAIN_PIPE_PANEL_FITTER_A,
+	POWER_DOMAIN_PIPE_PANEL_FITTER_B,
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C,
+	POWER_DOMAIN_TRANSCODER_A,
+	POWER_DOMAIN_TRANSCODER_B,
+	POWER_DOMAIN_TRANSCODER_C,
+	POWER_DOMAIN_PORT_DDI_LANES_B,
+	POWER_DOMAIN_PORT_DDI_LANES_C,
+	POWER_DOMAIN_PORT_DDI_LANES_D,
+	POWER_DOMAIN_PORT_DSI,
+	POWER_DOMAIN_VGA,
+	POWER_DOMAIN_AUDIO_MMIO,
+	POWER_DOMAIN_AUDIO_PLAYBACK,
+	POWER_DOMAIN_AUX_B,
+	POWER_DOMAIN_AUX_C,
+	POWER_DOMAIN_AUX_D,
+	POWER_DOMAIN_GMBUS,
+	POWER_DOMAIN_INIT);
 
-#define CHV_DPIO_CMN_BC_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |	\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(chv_pwdoms_dpio_cmn_bc,
+	POWER_DOMAIN_PORT_DDI_LANES_B,
+	POWER_DOMAIN_PORT_DDI_LANES_C,
+	POWER_DOMAIN_AUX_B,
+	POWER_DOMAIN_AUX_C,
+	POWER_DOMAIN_INIT);
 
-#define CHV_DPIO_CMN_D_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_D) |	\
-	BIT_ULL(POWER_DOMAIN_AUX_D) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(chv_pwdoms_dpio_cmn_d,
+	POWER_DOMAIN_PORT_DDI_LANES_D,
+	POWER_DOMAIN_AUX_D,
+	POWER_DOMAIN_INIT);
 
 static const struct i915_power_well_desc chv_power_wells[] = {
 	{
 		.name = "always-on",
-		.domains = POWER_DOMAIN_MASK,
+		.domain_list = &i9xx_pwdoms_always_on,
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
@@ -289,12 +284,12 @@ static const struct i915_power_well_desc chv_power_wells[] = {
 		 * power wells don't actually exist. Pipe A power well is
 		 * required for any pipe to work.
 		 */
-		.domains = CHV_DISPLAY_POWER_DOMAINS,
+		.domain_list = &chv_pwdoms_display,
 		.ops = &chv_pipe_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 	}, {
 		.name = "dpio-common-bc",
-		.domains = CHV_DPIO_CMN_BC_POWER_DOMAINS,
+		.domain_list = &chv_pwdoms_dpio_cmn_bc,
 		.ops = &chv_dpio_cmn_power_well_ops,
 		.id = VLV_DISP_PW_DPIO_CMN_BC,
 		{
@@ -302,7 +297,7 @@ static const struct i915_power_well_desc chv_power_wells[] = {
 		},
 	}, {
 		.name = "dpio-common-d",
-		.domains = CHV_DPIO_CMN_D_POWER_DOMAINS,
+		.domain_list = &chv_pwdoms_dpio_cmn_d,
 		.ops = &chv_dpio_cmn_power_well_ops,
 		.id = CHV_DISP_PW_DPIO_CMN_D,
 		{
@@ -311,61 +306,64 @@ static const struct i915_power_well_desc chv_power_wells[] = {
 	},
 };
 
-#define SKL_DISPLAY_POWERWELL_2_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_C) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_D) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_E) |		\
-	BIT_ULL(POWER_DOMAIN_VGA) |				\
-	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
-	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |                       \
-	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_D) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
+#define SKL_PW_2_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_B, \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
+	POWER_DOMAIN_TRANSCODER_A, \
+	POWER_DOMAIN_TRANSCODER_B, \
+	POWER_DOMAIN_TRANSCODER_C, \
+	POWER_DOMAIN_PORT_DDI_LANES_B, \
+	POWER_DOMAIN_PORT_DDI_LANES_C, \
+	POWER_DOMAIN_PORT_DDI_LANES_D, \
+	POWER_DOMAIN_PORT_DDI_LANES_E, \
+	POWER_DOMAIN_VGA, \
+	POWER_DOMAIN_AUDIO_MMIO, \
+	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_AUX_B, \
+	POWER_DOMAIN_AUX_C, \
+	POWER_DOMAIN_AUX_D
 
-#define SKL_DISPLAY_DC_OFF_POWER_DOMAINS (		\
-	SKL_DISPLAY_POWERWELL_2_POWER_DOMAINS |		\
-	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
-	BIT_ULL(POWER_DOMAIN_MODESET) |			\
-	BIT_ULL(POWER_DOMAIN_GT_IRQ) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(skl_pwdoms_pw_2,
+	SKL_PW_2_POWER_DOMAINS,
+	POWER_DOMAIN_INIT);
 
-#define SKL_DISPLAY_DDI_IO_A_E_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_A) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_E) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(skl_pwdoms_dc_off,
+	SKL_PW_2_POWER_DOMAINS,
+	POWER_DOMAIN_AUX_A,
+	POWER_DOMAIN_MODESET,
+	POWER_DOMAIN_GT_IRQ,
+	POWER_DOMAIN_INIT);
 
-#define SKL_DISPLAY_DDI_IO_B_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_B) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(skl_pwdoms_ddi_io_a_e,
+	POWER_DOMAIN_PORT_DDI_IO_A,
+	POWER_DOMAIN_PORT_DDI_IO_E,
+	POWER_DOMAIN_INIT);
 
-#define SKL_DISPLAY_DDI_IO_C_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_C) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(skl_pwdoms_ddi_io_b,
+	POWER_DOMAIN_PORT_DDI_IO_B,
+	POWER_DOMAIN_INIT);
 
-#define SKL_DISPLAY_DDI_IO_D_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_D) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(skl_pwdoms_ddi_io_c,
+	POWER_DOMAIN_PORT_DDI_IO_C,
+	POWER_DOMAIN_INIT);
+
+I915_DECL_PW_DOMAINS(skl_pwdoms_ddi_io_d,
+	POWER_DOMAIN_PORT_DDI_IO_D,
+	POWER_DOMAIN_INIT);
 
 static const struct i915_power_well_desc skl_power_wells[] = {
 	{
 		.name = "always-on",
-		.domains = POWER_DOMAIN_MASK,
+		.domain_list = &i9xx_pwdoms_always_on,
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
 		.name = "PW_1",
 		/* Handled by the DMC firmware */
-		.domains = 0,
+		.domain_list = I915_PW_DOMAINS_NONE,
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
 		.has_fuses = true,
@@ -376,7 +374,7 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 	}, {
 		.name = "MISC_IO",
 		/* Handled by the DMC firmware */
-		.domains = 0,
+		.domain_list = I915_PW_DOMAINS_NONE,
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
 		.id = SKL_DISP_PW_MISC_IO,
@@ -385,12 +383,12 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		},
 	}, {
 		.name = "DC_off",
-		.domains = SKL_DISPLAY_DC_OFF_POWER_DOMAINS,
+		.domain_list = &skl_pwdoms_dc_off,
 		.ops = &gen9_dc_off_power_well_ops,
 		.id = SKL_DISP_DC_OFF,
 	}, {
 		.name = "PW_2",
-		.domains = SKL_DISPLAY_POWERWELL_2_POWER_DOMAINS,
+		.domain_list = &skl_pwdoms_pw_2,
 		.ops = &hsw_power_well_ops,
 		.has_vga = true,
 		.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
@@ -401,7 +399,7 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		},
 	}, {
 		.name = "DDI_IO_A_E",
-		.domains = SKL_DISPLAY_DDI_IO_A_E_POWER_DOMAINS,
+		.domain_list = &skl_pwdoms_ddi_io_a_e,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -409,7 +407,7 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		},
 	}, {
 		.name = "DDI_IO_B",
-		.domains = SKL_DISPLAY_DDI_IO_B_POWER_DOMAINS,
+		.domain_list = &skl_pwdoms_ddi_io_b,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -417,7 +415,7 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		},
 	}, {
 		.name = "DDI_IO_C",
-		.domains = SKL_DISPLAY_DDI_IO_C_POWER_DOMAINS,
+		.domain_list = &skl_pwdoms_ddi_io_c,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -425,7 +423,7 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		},
 	}, {
 		.name = "DDI_IO_D",
-		.domains = SKL_DISPLAY_DDI_IO_D_POWER_DOMAINS,
+		.domain_list = &skl_pwdoms_ddi_io_d,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -434,54 +432,57 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 	},
 };
 
-#define BXT_DISPLAY_POWERWELL_2_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_C) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |		\
-	BIT_ULL(POWER_DOMAIN_VGA) |				\
-	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
-	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
+#define BXT_PW_2_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_B, \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
+	POWER_DOMAIN_TRANSCODER_A, \
+	POWER_DOMAIN_TRANSCODER_B, \
+	POWER_DOMAIN_TRANSCODER_C, \
+	POWER_DOMAIN_PORT_DDI_LANES_B, \
+	POWER_DOMAIN_PORT_DDI_LANES_C, \
+	POWER_DOMAIN_VGA, \
+	POWER_DOMAIN_AUDIO_MMIO, \
+	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_AUX_B, \
+	POWER_DOMAIN_AUX_C
 
-#define BXT_DISPLAY_DC_OFF_POWER_DOMAINS (		\
-	BXT_DISPLAY_POWERWELL_2_POWER_DOMAINS |		\
-	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
-	BIT_ULL(POWER_DOMAIN_GMBUS) |			\
-	BIT_ULL(POWER_DOMAIN_MODESET) |			\
-	BIT_ULL(POWER_DOMAIN_GT_IRQ) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(bxt_pwdoms_pw_2,
+	BXT_PW_2_POWER_DOMAINS,
+	POWER_DOMAIN_INIT);
 
-#define BXT_DPIO_CMN_A_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_A) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(bxt_pwdoms_dc_off,
+	BXT_PW_2_POWER_DOMAINS,
+	POWER_DOMAIN_AUX_A,
+	POWER_DOMAIN_GMBUS,
+	POWER_DOMAIN_MODESET,
+	POWER_DOMAIN_GT_IRQ,
+	POWER_DOMAIN_INIT);
 
-#define BXT_DPIO_CMN_BC_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(bxt_pwdoms_dpio_cmn_a,
+	POWER_DOMAIN_PORT_DDI_LANES_A,
+	POWER_DOMAIN_AUX_A,
+	POWER_DOMAIN_INIT);
+
+I915_DECL_PW_DOMAINS(bxt_pwdoms_dpio_cmn_bc,
+	POWER_DOMAIN_PORT_DDI_LANES_B,
+	POWER_DOMAIN_PORT_DDI_LANES_C,
+	POWER_DOMAIN_AUX_B,
+	POWER_DOMAIN_AUX_C,
+	POWER_DOMAIN_INIT);
 
 static const struct i915_power_well_desc bxt_power_wells[] = {
 	{
 		.name = "always-on",
-		.domains = POWER_DOMAIN_MASK,
+		.domain_list = &i9xx_pwdoms_always_on,
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
 		.name = "PW_1",
 		/* Handled by the DMC firmware */
-		.domains = 0,
+		.domain_list = I915_PW_DOMAINS_NONE,
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
 		.has_fuses = true,
@@ -491,12 +492,12 @@ static const struct i915_power_well_desc bxt_power_wells[] = {
 		},
 	}, {
 		.name = "DC_off",
-		.domains = BXT_DISPLAY_DC_OFF_POWER_DOMAINS,
+		.domain_list = &bxt_pwdoms_dc_off,
 		.ops = &gen9_dc_off_power_well_ops,
 		.id = SKL_DISP_DC_OFF,
 	}, {
 		.name = "PW_2",
-		.domains = BXT_DISPLAY_POWERWELL_2_POWER_DOMAINS,
+		.domain_list = &bxt_pwdoms_pw_2,
 		.ops = &hsw_power_well_ops,
 		.has_vga = true,
 		.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
@@ -507,7 +508,7 @@ static const struct i915_power_well_desc bxt_power_wells[] = {
 		},
 	}, {
 		.name = "dpio-common-a",
-		.domains = BXT_DPIO_CMN_A_POWER_DOMAINS,
+		.domain_list = &bxt_pwdoms_dpio_cmn_a,
 		.ops = &bxt_dpio_cmn_power_well_ops,
 		.id = BXT_DISP_PW_DPIO_CMN_A,
 		{
@@ -515,7 +516,7 @@ static const struct i915_power_well_desc bxt_power_wells[] = {
 		},
 	}, {
 		.name = "dpio-common-bc",
-		.domains = BXT_DPIO_CMN_BC_POWER_DOMAINS,
+		.domain_list = &bxt_pwdoms_dpio_cmn_bc,
 		.ops = &bxt_dpio_cmn_power_well_ops,
 		.id = VLV_DISP_PW_DPIO_CMN_BC,
 		{
@@ -524,74 +525,77 @@ static const struct i915_power_well_desc bxt_power_wells[] = {
 	},
 };
 
-#define GLK_DISPLAY_POWERWELL_2_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_C) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |		\
-	BIT_ULL(POWER_DOMAIN_VGA) |				\
-	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
-	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |                       \
-	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define GLK_DISPLAY_DC_OFF_POWER_DOMAINS (		\
-	GLK_DISPLAY_POWERWELL_2_POWER_DOMAINS |		\
-	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
-	BIT_ULL(POWER_DOMAIN_GMBUS) |			\
-	BIT_ULL(POWER_DOMAIN_MODESET) |			\
-	BIT_ULL(POWER_DOMAIN_GT_IRQ) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define GLK_DISPLAY_DDI_IO_A_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_A)
-#define GLK_DISPLAY_DDI_IO_B_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_B)
-#define GLK_DISPLAY_DDI_IO_C_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_C)
-
-#define GLK_DPIO_CMN_A_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_A) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define GLK_DPIO_CMN_B_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define GLK_DPIO_CMN_C_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define GLK_DISPLAY_AUX_A_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_AUX_A) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_IO_A) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define GLK_DISPLAY_AUX_B_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define GLK_DISPLAY_AUX_C_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
+#define GLK_PW_2_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_B, \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
+	POWER_DOMAIN_TRANSCODER_A, \
+	POWER_DOMAIN_TRANSCODER_B, \
+	POWER_DOMAIN_TRANSCODER_C, \
+	POWER_DOMAIN_PORT_DDI_LANES_B, \
+	POWER_DOMAIN_PORT_DDI_LANES_C, \
+	POWER_DOMAIN_VGA, \
+	POWER_DOMAIN_AUDIO_MMIO, \
+	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_AUX_B, \
+	POWER_DOMAIN_AUX_C
+
+I915_DECL_PW_DOMAINS(glk_pwdoms_pw_2,
+	GLK_PW_2_POWER_DOMAINS,
+	POWER_DOMAIN_INIT);
+
+I915_DECL_PW_DOMAINS(glk_pwdoms_dc_off,
+	GLK_PW_2_POWER_DOMAINS,
+	POWER_DOMAIN_AUX_A,
+	POWER_DOMAIN_GMBUS,
+	POWER_DOMAIN_MODESET,
+	POWER_DOMAIN_GT_IRQ,
+	POWER_DOMAIN_INIT);
+
+I915_DECL_PW_DOMAINS(glk_pwdoms_ddi_io_a,	POWER_DOMAIN_PORT_DDI_IO_A);
+I915_DECL_PW_DOMAINS(glk_pwdoms_ddi_io_b,	POWER_DOMAIN_PORT_DDI_IO_B);
+I915_DECL_PW_DOMAINS(glk_pwdoms_ddi_io_c,	POWER_DOMAIN_PORT_DDI_IO_C);
+
+I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_a,
+	POWER_DOMAIN_PORT_DDI_LANES_A,
+	POWER_DOMAIN_AUX_A,
+	POWER_DOMAIN_INIT);
+
+I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_b,
+	POWER_DOMAIN_PORT_DDI_LANES_B,
+	POWER_DOMAIN_AUX_B,
+	POWER_DOMAIN_INIT);
+
+I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_c,
+	POWER_DOMAIN_PORT_DDI_LANES_C,
+	POWER_DOMAIN_AUX_C,
+	POWER_DOMAIN_INIT);
+
+I915_DECL_PW_DOMAINS(glk_pwdoms_aux_a,
+	POWER_DOMAIN_AUX_A,
+	POWER_DOMAIN_AUX_IO_A,
+	POWER_DOMAIN_INIT);
+
+I915_DECL_PW_DOMAINS(glk_pwdoms_aux_b,
+	POWER_DOMAIN_AUX_B,
+	POWER_DOMAIN_INIT);
+
+I915_DECL_PW_DOMAINS(glk_pwdoms_aux_c,
+	POWER_DOMAIN_AUX_C,
+	POWER_DOMAIN_INIT);
 
 static const struct i915_power_well_desc glk_power_wells[] = {
 	{
 		.name = "always-on",
-		.domains = POWER_DOMAIN_MASK,
+		.domain_list = &i9xx_pwdoms_always_on,
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
 		.name = "PW_1",
 		/* Handled by the DMC firmware */
-		.domains = 0,
+		.domain_list = I915_PW_DOMAINS_NONE,
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
 		.has_fuses = true,
@@ -601,12 +605,12 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		},
 	}, {
 		.name = "DC_off",
-		.domains = GLK_DISPLAY_DC_OFF_POWER_DOMAINS,
+		.domain_list = &glk_pwdoms_dc_off,
 		.ops = &gen9_dc_off_power_well_ops,
 		.id = SKL_DISP_DC_OFF,
 	}, {
 		.name = "PW_2",
-		.domains = GLK_DISPLAY_POWERWELL_2_POWER_DOMAINS,
+		.domain_list = &glk_pwdoms_pw_2,
 		.ops = &hsw_power_well_ops,
 		.has_vga = true,
 		.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
@@ -617,7 +621,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		},
 	}, {
 		.name = "dpio-common-a",
-		.domains = GLK_DPIO_CMN_A_POWER_DOMAINS,
+		.domain_list = &glk_pwdoms_dpio_cmn_a,
 		.ops = &bxt_dpio_cmn_power_well_ops,
 		.id = BXT_DISP_PW_DPIO_CMN_A,
 		{
@@ -625,7 +629,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		},
 	}, {
 		.name = "dpio-common-b",
-		.domains = GLK_DPIO_CMN_B_POWER_DOMAINS,
+		.domain_list = &glk_pwdoms_dpio_cmn_b,
 		.ops = &bxt_dpio_cmn_power_well_ops,
 		.id = VLV_DISP_PW_DPIO_CMN_BC,
 		{
@@ -633,7 +637,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		},
 	}, {
 		.name = "dpio-common-c",
-		.domains = GLK_DPIO_CMN_C_POWER_DOMAINS,
+		.domain_list = &glk_pwdoms_dpio_cmn_c,
 		.ops = &bxt_dpio_cmn_power_well_ops,
 		.id = GLK_DISP_PW_DPIO_CMN_C,
 		{
@@ -641,7 +645,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_A",
-		.domains = GLK_DISPLAY_AUX_A_POWER_DOMAINS,
+		.domain_list = &glk_pwdoms_aux_a,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -649,7 +653,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_B",
-		.domains = GLK_DISPLAY_AUX_B_POWER_DOMAINS,
+		.domain_list = &glk_pwdoms_aux_b,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -657,7 +661,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_C",
-		.domains = GLK_DISPLAY_AUX_C_POWER_DOMAINS,
+		.domain_list = &glk_pwdoms_aux_c,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -665,7 +669,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		},
 	}, {
 		.name = "DDI_IO_A",
-		.domains = GLK_DISPLAY_DDI_IO_A_POWER_DOMAINS,
+		.domain_list = &glk_pwdoms_ddi_io_a,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -673,7 +677,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		},
 	}, {
 		.name = "DDI_IO_B",
-		.domains = GLK_DISPLAY_DDI_IO_B_POWER_DOMAINS,
+		.domain_list = &glk_pwdoms_ddi_io_b,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -681,7 +685,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		},
 	}, {
 		.name = "DDI_IO_C",
-		.domains = GLK_DISPLAY_DDI_IO_C_POWER_DOMAINS,
+		.domain_list = &glk_pwdoms_ddi_io_c,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -704,89 +708,97 @@ static const struct i915_power_well_desc glk_power_wells[] = {
  * - DDI_A
  * - FBC
  */
-#define ICL_PW_4_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_C) |	\
-	BIT_ULL(POWER_DOMAIN_INIT))
+#define ICL_PW_4_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C
+
+I915_DECL_PW_DOMAINS(icl_pwdoms_pw_4,
+	ICL_PW_4_POWER_DOMAINS,
+	POWER_DOMAIN_INIT);
 	/* VDSC/joining */
 
-#define ICL_PW_3_POWER_DOMAINS (			\
-	ICL_PW_4_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_D) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_E) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_F) |	\
-	BIT_ULL(POWER_DOMAIN_VGA) |			\
-	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
-	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_D) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_E) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_F) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_TBT_C) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_TBT_D) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_TBT_E) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_TBT_F) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
+#define ICL_PW_3_POWER_DOMAINS \
+	ICL_PW_4_POWER_DOMAINS, \
+	POWER_DOMAIN_PIPE_B, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
+	POWER_DOMAIN_TRANSCODER_A, \
+	POWER_DOMAIN_TRANSCODER_B, \
+	POWER_DOMAIN_TRANSCODER_C, \
+	POWER_DOMAIN_PORT_DDI_LANES_B, \
+	POWER_DOMAIN_PORT_DDI_LANES_C, \
+	POWER_DOMAIN_PORT_DDI_LANES_D, \
+	POWER_DOMAIN_PORT_DDI_LANES_E, \
+	POWER_DOMAIN_PORT_DDI_LANES_F, \
+	POWER_DOMAIN_VGA, \
+	POWER_DOMAIN_AUDIO_MMIO, \
+	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_AUX_B, \
+	POWER_DOMAIN_AUX_C, \
+	POWER_DOMAIN_AUX_D, \
+	POWER_DOMAIN_AUX_E, \
+	POWER_DOMAIN_AUX_F, \
+	POWER_DOMAIN_AUX_TBT_C, \
+	POWER_DOMAIN_AUX_TBT_D, \
+	POWER_DOMAIN_AUX_TBT_E, \
+	POWER_DOMAIN_AUX_TBT_F
+
+I915_DECL_PW_DOMAINS(icl_pwdoms_pw_3,
+	ICL_PW_3_POWER_DOMAINS,
+	POWER_DOMAIN_INIT);
 	/*
 	 * - transcoder WD
 	 * - KVMR (HW control)
 	 */
 
-#define ICL_PW_2_POWER_DOMAINS (			\
-	ICL_PW_3_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_VDSC_PW2) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
+#define ICL_PW_2_POWER_DOMAINS \
+	ICL_PW_3_POWER_DOMAINS, \
+	POWER_DOMAIN_TRANSCODER_VDSC_PW2
+
+I915_DECL_PW_DOMAINS(icl_pwdoms_pw_2,
+	ICL_PW_2_POWER_DOMAINS,
+	POWER_DOMAIN_INIT);
 	/*
 	 * - KVMR (HW control)
 	 */
 
-#define ICL_DISPLAY_DC_OFF_POWER_DOMAINS (		\
-	ICL_PW_2_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
-	BIT_ULL(POWER_DOMAIN_MODESET) |			\
-	BIT_ULL(POWER_DOMAIN_DC_OFF) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(icl_pwdoms_dc_off,
+	ICL_PW_2_POWER_DOMAINS,
+	POWER_DOMAIN_AUX_A,
+	POWER_DOMAIN_MODESET,
+	POWER_DOMAIN_DC_OFF,
+	POWER_DOMAIN_INIT);
 
-#define ICL_DDI_IO_A_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_A)
-#define ICL_DDI_IO_B_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_B)
-#define ICL_DDI_IO_C_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_C)
-#define ICL_DDI_IO_D_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_D)
-#define ICL_DDI_IO_E_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_E)
-#define ICL_DDI_IO_F_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_F)
+I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_a,	POWER_DOMAIN_PORT_DDI_IO_A);
+I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_b,	POWER_DOMAIN_PORT_DDI_IO_B);
+I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_c,	POWER_DOMAIN_PORT_DDI_IO_C);
+I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_d,	POWER_DOMAIN_PORT_DDI_IO_D);
+I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_e,	POWER_DOMAIN_PORT_DDI_IO_E);
+I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_f,	POWER_DOMAIN_PORT_DDI_IO_F);
 
-#define ICL_AUX_A_IO_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_IO_A))
-
-#define ICL_AUX_B_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_B)
-#define ICL_AUX_C_TC1_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_C)
-#define ICL_AUX_D_TC2_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_D)
-#define ICL_AUX_E_TC3_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_E)
-#define ICL_AUX_F_TC4_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_F)
-#define ICL_AUX_C_TBT1_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_TBT_C)
-#define ICL_AUX_D_TBT2_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_TBT_D)
-#define ICL_AUX_E_TBT3_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_TBT_E)
-#define ICL_AUX_F_TBT4_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_TBT_F)
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_a,
+	POWER_DOMAIN_AUX_A,
+	POWER_DOMAIN_AUX_IO_A);
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_b,		POWER_DOMAIN_AUX_B);
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_c,		POWER_DOMAIN_AUX_C);
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_d,		POWER_DOMAIN_AUX_D);
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_e,		POWER_DOMAIN_AUX_E);
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_f,		POWER_DOMAIN_AUX_F);
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt1,	POWER_DOMAIN_AUX_TBT_C);
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt2,	POWER_DOMAIN_AUX_TBT_D);
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt3,	POWER_DOMAIN_AUX_TBT_E);
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt4,	POWER_DOMAIN_AUX_TBT_F);
 
 static const struct i915_power_well_desc icl_power_wells[] = {
 	{
 		.name = "always-on",
-		.domains = POWER_DOMAIN_MASK,
+		.domain_list = &i9xx_pwdoms_always_on,
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
 		.name = "PW_1",
 		/* Handled by the DMC firmware */
-		.domains = 0,
+		.domain_list = I915_PW_DOMAINS_NONE,
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
 		.has_fuses = true,
@@ -796,12 +808,12 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		},
 	}, {
 		.name = "DC_off",
-		.domains = ICL_DISPLAY_DC_OFF_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_dc_off,
 		.ops = &gen9_dc_off_power_well_ops,
 		.id = SKL_DISP_DC_OFF,
 	}, {
 		.name = "PW_2",
-		.domains = ICL_PW_2_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_pw_2,
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
 		.id = SKL_DISP_PW_2,
@@ -810,7 +822,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		},
 	}, {
 		.name = "PW_3",
-		.domains = ICL_PW_3_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_pw_3,
 		.ops = &hsw_power_well_ops,
 		.has_vga = true,
 		.irq_pipe_mask = BIT(PIPE_B),
@@ -821,7 +833,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		},
 	}, {
 		.name = "DDI_IO_A",
-		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_ddi_io_a,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -829,7 +841,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		},
 	}, {
 		.name = "DDI_IO_B",
-		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_ddi_io_b,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -837,7 +849,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		},
 	}, {
 		.name = "DDI_IO_C",
-		.domains = ICL_DDI_IO_C_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_ddi_io_c,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -845,7 +857,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		},
 	}, {
 		.name = "DDI_IO_D",
-		.domains = ICL_DDI_IO_D_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_ddi_io_d,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -853,7 +865,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		},
 	}, {
 		.name = "DDI_IO_E",
-		.domains = ICL_DDI_IO_E_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_ddi_io_e,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -861,7 +873,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		},
 	}, {
 		.name = "DDI_IO_F",
-		.domains = ICL_DDI_IO_F_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_ddi_io_f,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -869,7 +881,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_A",
-		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_aux_a,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -877,7 +889,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_B",
-		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_aux_b,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -885,7 +897,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_C",
-		.domains = ICL_AUX_C_TC1_IO_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_aux_c,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
 		.id = DISP_PW_ID_NONE,
@@ -894,7 +906,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_D",
-		.domains = ICL_AUX_D_TC2_IO_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_aux_d,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
 		.id = DISP_PW_ID_NONE,
@@ -903,7 +915,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_E",
-		.domains = ICL_AUX_E_TC3_IO_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_aux_e,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
 		.id = DISP_PW_ID_NONE,
@@ -912,7 +924,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_F",
-		.domains = ICL_AUX_F_TC4_IO_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_aux_f,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
 		.id = DISP_PW_ID_NONE,
@@ -921,7 +933,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_TBT1",
-		.domains = ICL_AUX_C_TBT1_IO_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_aux_tbt1,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
@@ -930,7 +942,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_TBT2",
-		.domains = ICL_AUX_D_TBT2_IO_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_aux_tbt2,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
@@ -939,7 +951,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_TBT3",
-		.domains = ICL_AUX_E_TBT3_IO_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_aux_tbt3,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
@@ -948,7 +960,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_TBT4",
-		.domains = ICL_AUX_F_TBT4_IO_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_aux_tbt4,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
@@ -957,7 +969,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		},
 	}, {
 		.name = "PW_4",
-		.domains = ICL_PW_4_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_pw_4,
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_C),
 		.has_fuses = true,
@@ -968,113 +980,122 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 	},
 };
 
-#define TGL_PW_5_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PIPE_D) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_D) |     \
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_D) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
+#define TGL_PW_5_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_D, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_D, \
+	POWER_DOMAIN_TRANSCODER_D
 
-#define TGL_PW_4_POWER_DOMAINS (			\
-	TGL_PW_5_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_C) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(tgl_pwdoms_pw_5,
+	TGL_PW_5_POWER_DOMAINS,
+	POWER_DOMAIN_INIT);
 
-#define TGL_PW_3_POWER_DOMAINS (			\
-	TGL_PW_4_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC1) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC2) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC3) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC4) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC5) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC6) |	\
-	BIT_ULL(POWER_DOMAIN_VGA) |			\
-	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
-	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_USBC1) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_USBC2) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_USBC3) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_USBC4) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_USBC5) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_USBC6) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_TBT1) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_TBT2) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_TBT3) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_TBT4) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_TBT5) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_TBT6) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
+#define TGL_PW_4_POWER_DOMAINS \
+	TGL_PW_5_POWER_DOMAINS, \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
+	POWER_DOMAIN_TRANSCODER_C
 
-#define TGL_PW_2_POWER_DOMAINS (			\
-	TGL_PW_3_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_VDSC_PW2) |	\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(tgl_pwdoms_pw_4,
+	TGL_PW_4_POWER_DOMAINS,
+	POWER_DOMAIN_INIT);
 
-#define TGL_DISPLAY_DC_OFF_POWER_DOMAINS (		\
-	TGL_PW_3_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
-	BIT_ULL(POWER_DOMAIN_MODESET) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
+#define TGL_PW_3_POWER_DOMAINS \
+	TGL_PW_4_POWER_DOMAINS, \
+	POWER_DOMAIN_PIPE_B, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
+	POWER_DOMAIN_TRANSCODER_B, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC1, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC2, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC3, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC4, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC5, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC6, \
+	POWER_DOMAIN_VGA, \
+	POWER_DOMAIN_AUDIO_MMIO, \
+	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_AUX_USBC1, \
+	POWER_DOMAIN_AUX_USBC2, \
+	POWER_DOMAIN_AUX_USBC3, \
+	POWER_DOMAIN_AUX_USBC4, \
+	POWER_DOMAIN_AUX_USBC5, \
+	POWER_DOMAIN_AUX_USBC6, \
+	POWER_DOMAIN_AUX_TBT1, \
+	POWER_DOMAIN_AUX_TBT2, \
+	POWER_DOMAIN_AUX_TBT3, \
+	POWER_DOMAIN_AUX_TBT4, \
+	POWER_DOMAIN_AUX_TBT5, \
+	POWER_DOMAIN_AUX_TBT6
 
-#define TGL_DDI_IO_TC1_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC1)
-#define TGL_DDI_IO_TC2_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC2)
-#define TGL_DDI_IO_TC3_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC3)
-#define TGL_DDI_IO_TC4_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC4)
-#define TGL_DDI_IO_TC5_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC5)
-#define TGL_DDI_IO_TC6_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC6)
+I915_DECL_PW_DOMAINS(tgl_pwdoms_pw_3,
+	TGL_PW_3_POWER_DOMAINS,
+	POWER_DOMAIN_INIT);
 
-#define TGL_AUX_A_IO_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_AUX_A) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_IO_A))
-#define TGL_AUX_B_IO_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_B)
-#define TGL_AUX_C_IO_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_C)
+I915_DECL_PW_DOMAINS(tgl_pwdoms_pw_2,
+	TGL_PW_3_POWER_DOMAINS,
+	POWER_DOMAIN_TRANSCODER_VDSC_PW2,
+	POWER_DOMAIN_INIT);
 
-#define TGL_AUX_IO_USBC1_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC1)
-#define TGL_AUX_IO_USBC2_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC2)
-#define TGL_AUX_IO_USBC3_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC3)
-#define TGL_AUX_IO_USBC4_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC4)
-#define TGL_AUX_IO_USBC5_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC5)
-#define TGL_AUX_IO_USBC6_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC6)
+I915_DECL_PW_DOMAINS(tgl_pwdoms_dc_off,
+	TGL_PW_3_POWER_DOMAINS,
+	POWER_DOMAIN_AUX_A,
+	POWER_DOMAIN_AUX_B,
+	POWER_DOMAIN_AUX_C,
+	POWER_DOMAIN_MODESET,
+	POWER_DOMAIN_INIT);
 
-#define TGL_AUX_IO_TBT1_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT1)
-#define TGL_AUX_IO_TBT2_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT2)
-#define TGL_AUX_IO_TBT3_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT3)
-#define TGL_AUX_IO_TBT4_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT4)
-#define TGL_AUX_IO_TBT5_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT5)
-#define TGL_AUX_IO_TBT6_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT6)
+I915_DECL_PW_DOMAINS(tgl_pwdoms_ddi_io_tc1,	POWER_DOMAIN_PORT_DDI_IO_TC1);
+I915_DECL_PW_DOMAINS(tgl_pwdoms_ddi_io_tc2,	POWER_DOMAIN_PORT_DDI_IO_TC2);
+I915_DECL_PW_DOMAINS(tgl_pwdoms_ddi_io_tc3,	POWER_DOMAIN_PORT_DDI_IO_TC3);
+I915_DECL_PW_DOMAINS(tgl_pwdoms_ddi_io_tc4,	POWER_DOMAIN_PORT_DDI_IO_TC4);
+I915_DECL_PW_DOMAINS(tgl_pwdoms_ddi_io_tc5,	POWER_DOMAIN_PORT_DDI_IO_TC5);
+I915_DECL_PW_DOMAINS(tgl_pwdoms_ddi_io_tc6,	POWER_DOMAIN_PORT_DDI_IO_TC6);
 
-#define TGL_TC_COLD_OFF_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_AUX_USBC1)	|	\
-	BIT_ULL(POWER_DOMAIN_AUX_USBC2)	|	\
-	BIT_ULL(POWER_DOMAIN_AUX_USBC3)	|	\
-	BIT_ULL(POWER_DOMAIN_AUX_USBC4)	|	\
-	BIT_ULL(POWER_DOMAIN_AUX_USBC5)	|	\
-	BIT_ULL(POWER_DOMAIN_AUX_USBC6)	|	\
-	BIT_ULL(POWER_DOMAIN_AUX_TBT1) |	\
-	BIT_ULL(POWER_DOMAIN_AUX_TBT2) |	\
-	BIT_ULL(POWER_DOMAIN_AUX_TBT3) |	\
-	BIT_ULL(POWER_DOMAIN_AUX_TBT4) |	\
-	BIT_ULL(POWER_DOMAIN_AUX_TBT5) |	\
-	BIT_ULL(POWER_DOMAIN_AUX_TBT6) |	\
-	BIT_ULL(POWER_DOMAIN_TC_COLD_OFF))
+I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_a,
+	POWER_DOMAIN_AUX_A,
+	POWER_DOMAIN_AUX_IO_A);
+I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_b,		POWER_DOMAIN_AUX_B);
+I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_c,		POWER_DOMAIN_AUX_C);
+
+I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_usbc1,	POWER_DOMAIN_AUX_USBC1);
+I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_usbc2,	POWER_DOMAIN_AUX_USBC2);
+I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_usbc3,	POWER_DOMAIN_AUX_USBC3);
+I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_usbc4,	POWER_DOMAIN_AUX_USBC4);
+I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_usbc5,	POWER_DOMAIN_AUX_USBC5);
+I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_usbc6,	POWER_DOMAIN_AUX_USBC6);
+
+I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_tbt1,	POWER_DOMAIN_AUX_TBT1);
+I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_tbt2,	POWER_DOMAIN_AUX_TBT2);
+I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_tbt3,	POWER_DOMAIN_AUX_TBT3);
+I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_tbt4,	POWER_DOMAIN_AUX_TBT4);
+I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_tbt5,	POWER_DOMAIN_AUX_TBT5);
+I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_tbt6,	POWER_DOMAIN_AUX_TBT6);
+
+I915_DECL_PW_DOMAINS(tgl_pwdoms_tc_cold_off,
+	POWER_DOMAIN_AUX_USBC1,
+	POWER_DOMAIN_AUX_USBC2,
+	POWER_DOMAIN_AUX_USBC3,
+	POWER_DOMAIN_AUX_USBC4,
+	POWER_DOMAIN_AUX_USBC5,
+	POWER_DOMAIN_AUX_USBC6,
+	POWER_DOMAIN_AUX_TBT1,
+	POWER_DOMAIN_AUX_TBT2,
+	POWER_DOMAIN_AUX_TBT3,
+	POWER_DOMAIN_AUX_TBT4,
+	POWER_DOMAIN_AUX_TBT5,
+	POWER_DOMAIN_AUX_TBT6,
+	POWER_DOMAIN_TC_COLD_OFF);
 
 static const struct i915_power_well_desc tgl_power_wells[] = {
 	{
 		.name = "always-on",
-		.domains = POWER_DOMAIN_MASK,
+		.domain_list = &i9xx_pwdoms_always_on,
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
 		.name = "PW_1",
 		/* Handled by the DMC firmware */
-		.domains = 0,
+		.domain_list = I915_PW_DOMAINS_NONE,
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
 		.has_fuses = true,
@@ -1084,12 +1105,12 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	}, {
 		.name = "DC_off",
-		.domains = TGL_DISPLAY_DC_OFF_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_dc_off,
 		.ops = &gen9_dc_off_power_well_ops,
 		.id = SKL_DISP_DC_OFF,
 	}, {
 		.name = "PW_2",
-		.domains = TGL_PW_2_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_pw_2,
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
 		.id = SKL_DISP_PW_2,
@@ -1098,7 +1119,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	}, {
 		.name = "PW_3",
-		.domains = TGL_PW_3_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_pw_3,
 		.ops = &hsw_power_well_ops,
 		.has_vga = true,
 		.irq_pipe_mask = BIT(PIPE_B),
@@ -1109,7 +1130,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	}, {
 		.name = "DDI_IO_A",
-		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_ddi_io_a,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1117,7 +1138,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		}
 	}, {
 		.name = "DDI_IO_B",
-		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_ddi_io_b,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1125,7 +1146,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		}
 	}, {
 		.name = "DDI_IO_C",
-		.domains = ICL_DDI_IO_C_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_ddi_io_c,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1133,7 +1154,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		}
 	}, {
 		.name = "DDI_IO_TC1",
-		.domains = TGL_DDI_IO_TC1_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_ddi_io_tc1,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1141,7 +1162,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	}, {
 		.name = "DDI_IO_TC2",
-		.domains = TGL_DDI_IO_TC2_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_ddi_io_tc2,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1149,7 +1170,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	}, {
 		.name = "DDI_IO_TC3",
-		.domains = TGL_DDI_IO_TC3_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_ddi_io_tc3,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1157,7 +1178,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	}, {
 		.name = "DDI_IO_TC4",
-		.domains = TGL_DDI_IO_TC4_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_ddi_io_tc4,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1165,7 +1186,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	}, {
 		.name = "DDI_IO_TC5",
-		.domains = TGL_DDI_IO_TC5_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_ddi_io_tc5,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1173,7 +1194,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	}, {
 		.name = "DDI_IO_TC6",
-		.domains = TGL_DDI_IO_TC6_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_ddi_io_tc6,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1181,12 +1202,12 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	}, {
 		.name = "TC_cold_off",
-		.domains = TGL_TC_COLD_OFF_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_tc_cold_off,
 		.ops = &tgl_tc_cold_off_ops,
 		.id = TGL_DISP_PW_TC_COLD_OFF,
 	}, {
 		.name = "AUX_A",
-		.domains = TGL_AUX_A_IO_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_aux_a,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1194,7 +1215,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_B",
-		.domains = TGL_AUX_B_IO_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_aux_b,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1202,7 +1223,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_C",
-		.domains = TGL_AUX_C_IO_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_aux_c,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1210,7 +1231,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_USBC1",
-		.domains = TGL_AUX_IO_USBC1_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_aux_usbc1,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
 		.id = DISP_PW_ID_NONE,
@@ -1219,7 +1240,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_USBC2",
-		.domains = TGL_AUX_IO_USBC2_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_aux_usbc2,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
 		.id = DISP_PW_ID_NONE,
@@ -1228,7 +1249,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_USBC3",
-		.domains = TGL_AUX_IO_USBC3_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_aux_usbc3,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
 		.id = DISP_PW_ID_NONE,
@@ -1237,7 +1258,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_USBC4",
-		.domains = TGL_AUX_IO_USBC4_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_aux_usbc4,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
 		.id = DISP_PW_ID_NONE,
@@ -1246,7 +1267,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_USBC5",
-		.domains = TGL_AUX_IO_USBC5_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_aux_usbc5,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
 		.id = DISP_PW_ID_NONE,
@@ -1255,7 +1276,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_USBC6",
-		.domains = TGL_AUX_IO_USBC6_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_aux_usbc6,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
 		.id = DISP_PW_ID_NONE,
@@ -1264,7 +1285,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_TBT1",
-		.domains = TGL_AUX_IO_TBT1_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_aux_tbt1,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
@@ -1273,7 +1294,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_TBT2",
-		.domains = TGL_AUX_IO_TBT2_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_aux_tbt2,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
@@ -1282,7 +1303,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_TBT3",
-		.domains = TGL_AUX_IO_TBT3_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_aux_tbt3,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
@@ -1291,7 +1312,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_TBT4",
-		.domains = TGL_AUX_IO_TBT4_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_aux_tbt4,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
@@ -1300,7 +1321,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_TBT5",
-		.domains = TGL_AUX_IO_TBT5_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_aux_tbt5,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
@@ -1309,7 +1330,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_TBT6",
-		.domains = TGL_AUX_IO_TBT6_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_aux_tbt6,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
@@ -1318,7 +1339,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	}, {
 		.name = "PW_4",
-		.domains = TGL_PW_4_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_pw_4,
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
 		.irq_pipe_mask = BIT(PIPE_C),
@@ -1328,7 +1349,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		}
 	}, {
 		.name = "PW_5",
-		.domains = TGL_PW_5_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_pw_5,
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
 		.irq_pipe_mask = BIT(PIPE_D),
@@ -1339,25 +1360,31 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 	},
 };
 
-#define RKL_PW_4_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_C) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
+#define RKL_PW_4_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
+	POWER_DOMAIN_TRANSCODER_C
 
-#define RKL_PW_3_POWER_DOMAINS (			\
-	RKL_PW_4_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC1) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC2) |	\
-	BIT_ULL(POWER_DOMAIN_VGA) |			\
-	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
-	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_USBC1) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_USBC2) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(rkl_pwdoms_pw_4,
+	RKL_PW_4_POWER_DOMAINS,
+	POWER_DOMAIN_INIT);
+
+#define RKL_PW_3_POWER_DOMAINS \
+	RKL_PW_4_POWER_DOMAINS, \
+	POWER_DOMAIN_PIPE_B, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
+	POWER_DOMAIN_TRANSCODER_B, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC1, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC2, \
+	POWER_DOMAIN_VGA, \
+	POWER_DOMAIN_AUDIO_MMIO, \
+	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_AUX_USBC1, \
+	POWER_DOMAIN_AUX_USBC2
+
+I915_DECL_PW_DOMAINS(rkl_pwdoms_pw_3,
+	RKL_PW_3_POWER_DOMAINS,
+	POWER_DOMAIN_INIT);
 
 /*
  * There is no PW_2/PG_2 on RKL.
@@ -1380,24 +1407,24 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
  * - top-level GTC (DDI-level GTC is in the well associated with the DDI)
  */
 
-#define RKL_DISPLAY_DC_OFF_POWER_DOMAINS (		\
-	RKL_PW_3_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
-	BIT_ULL(POWER_DOMAIN_MODESET) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(rkl_pwdoms_dc_off,
+	RKL_PW_3_POWER_DOMAINS,
+	POWER_DOMAIN_AUX_A,
+	POWER_DOMAIN_AUX_B,
+	POWER_DOMAIN_MODESET,
+	POWER_DOMAIN_INIT);
 
 static const struct i915_power_well_desc rkl_power_wells[] = {
 	{
 		.name = "always-on",
-		.domains = POWER_DOMAIN_MASK,
+		.domain_list = &i9xx_pwdoms_always_on,
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
 		.name = "PW_1",
 		/* Handled by the DMC firmware */
-		.domains = 0,
+		.domain_list = I915_PW_DOMAINS_NONE,
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
 		.has_fuses = true,
@@ -1407,12 +1434,12 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		},
 	}, {
 		.name = "DC_off",
-		.domains = RKL_DISPLAY_DC_OFF_POWER_DOMAINS,
+		.domain_list = &rkl_pwdoms_dc_off,
 		.ops = &gen9_dc_off_power_well_ops,
 		.id = SKL_DISP_DC_OFF,
 	}, {
 		.name = "PW_3",
-		.domains = RKL_PW_3_POWER_DOMAINS,
+		.domain_list = &rkl_pwdoms_pw_3,
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_B),
 		.has_vga = true,
@@ -1423,7 +1450,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		},
 	}, {
 		.name = "PW_4",
-		.domains = RKL_PW_4_POWER_DOMAINS,
+		.domain_list = &rkl_pwdoms_pw_4,
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
 		.irq_pipe_mask = BIT(PIPE_C),
@@ -1433,7 +1460,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		}
 	}, {
 		.name = "DDI_IO_A",
-		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_ddi_io_a,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1441,7 +1468,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		}
 	}, {
 		.name = "DDI_IO_B",
-		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_ddi_io_b,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1449,7 +1476,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		}
 	}, {
 		.name = "DDI_IO_TC1",
-		.domains = TGL_DDI_IO_TC1_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_ddi_io_tc1,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1457,7 +1484,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		},
 	}, {
 		.name = "DDI_IO_TC2",
-		.domains = TGL_DDI_IO_TC2_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_ddi_io_tc2,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1465,7 +1492,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_A",
-		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_aux_a,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1473,7 +1500,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_B",
-		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_aux_b,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1481,7 +1508,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_USBC1",
-		.domains = TGL_AUX_IO_USBC1_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_aux_usbc1,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1489,7 +1516,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_USBC2",
-		.domains = TGL_AUX_IO_USBC2_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_aux_usbc2,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1501,43 +1528,46 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 /*
  * DG1 onwards Audio MMIO/VERBS lies in PG0 power well.
  */
-#define DG1_PW_3_POWER_DOMAINS (			\
-	TGL_PW_4_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC1) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC2) |	\
-	BIT_ULL(POWER_DOMAIN_VGA) |			\
-	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_USBC1) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_USBC2) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
+#define DG1_PW_3_POWER_DOMAINS \
+	TGL_PW_4_POWER_DOMAINS, \
+	POWER_DOMAIN_PIPE_B, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
+	POWER_DOMAIN_TRANSCODER_B, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC1, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC2, \
+	POWER_DOMAIN_VGA, \
+	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_AUX_USBC1, \
+	POWER_DOMAIN_AUX_USBC2
 
-#define DG1_DISPLAY_DC_OFF_POWER_DOMAINS (		\
-	DG1_PW_3_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
-	BIT_ULL(POWER_DOMAIN_MODESET) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(dg1_pwdoms_pw_3,
+	DG1_PW_3_POWER_DOMAINS,
+	POWER_DOMAIN_INIT);
 
-#define DG1_PW_2_POWER_DOMAINS (			\
-	DG1_PW_3_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_VDSC_PW2) |	\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(dg1_pwdoms_dc_off,
+	DG1_PW_3_POWER_DOMAINS,
+	POWER_DOMAIN_AUDIO_MMIO,
+	POWER_DOMAIN_AUX_A,
+	POWER_DOMAIN_AUX_B,
+	POWER_DOMAIN_MODESET,
+	POWER_DOMAIN_INIT);
+
+I915_DECL_PW_DOMAINS(dg1_pwdoms_pw_2,
+	DG1_PW_3_POWER_DOMAINS,
+	POWER_DOMAIN_TRANSCODER_VDSC_PW2,
+	POWER_DOMAIN_INIT);
 
 static const struct i915_power_well_desc dg1_power_wells[] = {
 	{
 		.name = "always-on",
-		.domains = POWER_DOMAIN_MASK,
+		.domain_list = &i9xx_pwdoms_always_on,
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
 		.name = "PW_1",
 		/* Handled by the DMC firmware */
-		.domains = 0,
+		.domain_list = I915_PW_DOMAINS_NONE,
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
 		.has_fuses = true,
@@ -1547,12 +1577,12 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		},
 	}, {
 		.name = "DC_off",
-		.domains = DG1_DISPLAY_DC_OFF_POWER_DOMAINS,
+		.domain_list = &dg1_pwdoms_dc_off,
 		.ops = &gen9_dc_off_power_well_ops,
 		.id = SKL_DISP_DC_OFF,
 	}, {
 		.name = "PW_2",
-		.domains = DG1_PW_2_POWER_DOMAINS,
+		.domain_list = &dg1_pwdoms_pw_2,
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
 		.id = SKL_DISP_PW_2,
@@ -1561,7 +1591,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		},
 	}, {
 		.name = "PW_3",
-		.domains = DG1_PW_3_POWER_DOMAINS,
+		.domain_list = &dg1_pwdoms_pw_3,
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_B),
 		.has_vga = true,
@@ -1572,7 +1602,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		},
 	}, {
 		.name = "DDI_IO_A",
-		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_ddi_io_a,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1580,7 +1610,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		}
 	}, {
 		.name = "DDI_IO_B",
-		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_ddi_io_b,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1588,7 +1618,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		}
 	}, {
 		.name = "DDI_IO_TC1",
-		.domains = TGL_DDI_IO_TC1_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_ddi_io_tc1,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1596,7 +1626,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		},
 	}, {
 		.name = "DDI_IO_TC2",
-		.domains = TGL_DDI_IO_TC2_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_ddi_io_tc2,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1604,7 +1634,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_A",
-		.domains = TGL_AUX_A_IO_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_aux_a,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1612,7 +1642,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_B",
-		.domains = TGL_AUX_B_IO_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_aux_b,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1620,7 +1650,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_USBC1",
-		.domains = TGL_AUX_IO_USBC1_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_aux_usbc1,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
 		.id = DISP_PW_ID_NONE,
@@ -1629,7 +1659,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_USBC2",
-		.domains = TGL_AUX_IO_USBC2_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_aux_usbc2,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
 		.id = DISP_PW_ID_NONE,
@@ -1638,7 +1668,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		},
 	}, {
 		.name = "PW_4",
-		.domains = TGL_PW_4_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_pw_4,
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
 		.irq_pipe_mask = BIT(PIPE_C),
@@ -1648,7 +1678,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		}
 	}, {
 		.name = "PW_5",
-		.domains = TGL_PW_5_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_pw_5,
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
 		.irq_pipe_mask = BIT(PIPE_D),
@@ -1677,54 +1707,66 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
  * to top.  This allows pipes to be power gated independently.
  */
 
-#define XELPD_PW_D_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PIPE_D) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_D) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_D) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define XELPD_PW_C_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_C) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define XELPD_PW_B_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define XELPD_PW_A_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PIPE_A) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_A) |	\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define XELPD_PW_2_POWER_DOMAINS (			\
-	XELPD_PW_B_POWER_DOMAINS |			\
-	XELPD_PW_C_POWER_DOMAINS |			\
-	XELPD_PW_D_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_D_XELPD) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_E_XELPD) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC1) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC2) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC3) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC4) |	\
-	BIT_ULL(POWER_DOMAIN_VGA) |			\
-	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_D_XELPD) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_E_XELPD) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_USBC1) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_USBC2) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_USBC3) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_USBC4) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_TBT1) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_TBT2) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_TBT3) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_TBT4) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
+#define XELPD_PW_D_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_D, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_D, \
+	POWER_DOMAIN_TRANSCODER_D
+
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_d,
+	XELPD_PW_D_POWER_DOMAINS,
+	POWER_DOMAIN_INIT);
+
+#define XELPD_PW_C_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
+	POWER_DOMAIN_TRANSCODER_C
+
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_c,
+	XELPD_PW_C_POWER_DOMAINS,
+	POWER_DOMAIN_INIT);
+
+#define XELPD_PW_B_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_B, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
+	POWER_DOMAIN_TRANSCODER_B
+
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_b,
+	XELPD_PW_B_POWER_DOMAINS,
+	POWER_DOMAIN_INIT);
+
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_a,
+	POWER_DOMAIN_PIPE_A,
+	POWER_DOMAIN_PIPE_PANEL_FITTER_A,
+	POWER_DOMAIN_INIT);
+
+#define XELPD_PW_2_POWER_DOMAINS \
+	XELPD_PW_B_POWER_DOMAINS, \
+	XELPD_PW_C_POWER_DOMAINS, \
+	XELPD_PW_D_POWER_DOMAINS, \
+	POWER_DOMAIN_PORT_DDI_LANES_C, \
+	POWER_DOMAIN_PORT_DDI_LANES_D_XELPD, \
+	POWER_DOMAIN_PORT_DDI_LANES_E_XELPD, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC1, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC2, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC3, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC4, \
+	POWER_DOMAIN_VGA, \
+	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_AUX_C, \
+	POWER_DOMAIN_AUX_D_XELPD, \
+	POWER_DOMAIN_AUX_E_XELPD, \
+	POWER_DOMAIN_AUX_USBC1, \
+	POWER_DOMAIN_AUX_USBC2, \
+	POWER_DOMAIN_AUX_USBC3, \
+	POWER_DOMAIN_AUX_USBC4, \
+	POWER_DOMAIN_AUX_TBT1, \
+	POWER_DOMAIN_AUX_TBT2, \
+	POWER_DOMAIN_AUX_TBT3, \
+	POWER_DOMAIN_AUX_TBT4
+
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_2,
+	XELPD_PW_2_POWER_DOMAINS,
+	POWER_DOMAIN_INIT);
 
 /*
  * XELPD PW_1/PG_1 domains (under HW/DMC control):
@@ -1743,45 +1785,46 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
  *  - Top-level GTC (DDI-level GTC is in the well associated with the DDI)
  */
 
-#define XELPD_DISPLAY_DC_OFF_POWER_DOMAINS (		\
-	XELPD_PW_2_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_PORT_DSI) |		\
-	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
-	BIT_ULL(POWER_DOMAIN_MODESET) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_dc_off,
+	XELPD_PW_2_POWER_DOMAINS,
+	POWER_DOMAIN_PORT_DSI,
+	POWER_DOMAIN_AUDIO_MMIO,
+	POWER_DOMAIN_AUX_A,
+	POWER_DOMAIN_AUX_B,
+	POWER_DOMAIN_MODESET,
+	POWER_DOMAIN_INIT);
 
-#define XELPD_AUX_IO_D_XELPD_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_D_XELPD)
-#define XELPD_AUX_IO_E_XELPD_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_E_XELPD)
-#define XELPD_AUX_IO_USBC1_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC1)
-#define XELPD_AUX_IO_USBC2_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC2)
-#define XELPD_AUX_IO_USBC3_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC3)
-#define XELPD_AUX_IO_USBC4_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC4)
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_d_xelpd,		POWER_DOMAIN_AUX_D_XELPD);
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_e_xelpd,		POWER_DOMAIN_AUX_E_XELPD);
 
-#define XELPD_AUX_IO_TBT1_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_TBT1)
-#define XELPD_AUX_IO_TBT2_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_TBT2)
-#define XELPD_AUX_IO_TBT3_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_TBT3)
-#define XELPD_AUX_IO_TBT4_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_TBT4)
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_usbc1,		POWER_DOMAIN_AUX_USBC1);
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_usbc2,		POWER_DOMAIN_AUX_USBC2);
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_usbc3,		POWER_DOMAIN_AUX_USBC3);
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_usbc4,		POWER_DOMAIN_AUX_USBC4);
 
-#define XELPD_DDI_IO_D_XELPD_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_D_XELPD)
-#define XELPD_DDI_IO_E_XELPD_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_E_XELPD)
-#define XELPD_DDI_IO_TC1_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC1)
-#define XELPD_DDI_IO_TC2_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC2)
-#define XELPD_DDI_IO_TC3_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC3)
-#define XELPD_DDI_IO_TC4_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC4)
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_tbt1,		POWER_DOMAIN_AUX_TBT1);
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_tbt2,		POWER_DOMAIN_AUX_TBT2);
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_tbt3,		POWER_DOMAIN_AUX_TBT3);
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_tbt4,		POWER_DOMAIN_AUX_TBT4);
+
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_d_xelpd,	POWER_DOMAIN_PORT_DDI_IO_D_XELPD);
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_e_xelpd,	POWER_DOMAIN_PORT_DDI_IO_E_XELPD);
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_tc1,		POWER_DOMAIN_PORT_DDI_IO_TC1);
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_tc2,		POWER_DOMAIN_PORT_DDI_IO_TC2);
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_tc3,		POWER_DOMAIN_PORT_DDI_IO_TC3);
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_tc4,		POWER_DOMAIN_PORT_DDI_IO_TC4);
 
 static const struct i915_power_well_desc xelpd_power_wells[] = {
 	{
 		.name = "always-on",
-		.domains = POWER_DOMAIN_MASK,
+		.domain_list = &i9xx_pwdoms_always_on,
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
 		.name = "PW_1",
 		/* Handled by the DMC firmware */
-		.domains = 0,
+		.domain_list = I915_PW_DOMAINS_NONE,
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
 		.has_fuses = true,
@@ -1791,12 +1834,12 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		},
 	}, {
 		.name = "DC_off",
-		.domains = XELPD_DISPLAY_DC_OFF_POWER_DOMAINS,
+		.domain_list = &xelpd_pwdoms_dc_off,
 		.ops = &gen9_dc_off_power_well_ops,
 		.id = SKL_DISP_DC_OFF,
 	}, {
 		.name = "PW_2",
-		.domains = XELPD_PW_2_POWER_DOMAINS,
+		.domain_list = &xelpd_pwdoms_pw_2,
 		.ops = &hsw_power_well_ops,
 		.has_vga = true,
 		.has_fuses = true,
@@ -1806,7 +1849,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		},
 	}, {
 		.name = "PW_A",
-		.domains = XELPD_PW_A_POWER_DOMAINS,
+		.domain_list = &xelpd_pwdoms_pw_a,
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_A),
 		.has_fuses = true,
@@ -1816,7 +1859,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		},
 	}, {
 		.name = "PW_B",
-		.domains = XELPD_PW_B_POWER_DOMAINS,
+		.domain_list = &xelpd_pwdoms_pw_b,
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_B),
 		.has_fuses = true,
@@ -1826,7 +1869,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		},
 	}, {
 		.name = "PW_C",
-		.domains = XELPD_PW_C_POWER_DOMAINS,
+		.domain_list = &xelpd_pwdoms_pw_c,
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_C),
 		.has_fuses = true,
@@ -1836,7 +1879,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		},
 	}, {
 		.name = "PW_D",
-		.domains = XELPD_PW_D_POWER_DOMAINS,
+		.domain_list = &xelpd_pwdoms_pw_d,
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_D),
 		.has_fuses = true,
@@ -1846,7 +1889,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		},
 	}, {
 		.name = "DDI_IO_A",
-		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_ddi_io_a,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1854,7 +1897,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		}
 	}, {
 		.name = "DDI_IO_B",
-		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_ddi_io_b,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1862,7 +1905,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		}
 	}, {
 		.name = "DDI_IO_C",
-		.domains = ICL_DDI_IO_C_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_ddi_io_c,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1870,7 +1913,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		}
 	}, {
 		.name = "DDI_IO_D_XELPD",
-		.domains = XELPD_DDI_IO_D_XELPD_POWER_DOMAINS,
+		.domain_list = &xelpd_pwdoms_ddi_io_d_xelpd,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1878,7 +1921,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		}
 	}, {
 		.name = "DDI_IO_E_XELPD",
-		.domains = XELPD_DDI_IO_E_XELPD_POWER_DOMAINS,
+		.domain_list = &xelpd_pwdoms_ddi_io_e_xelpd,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1886,7 +1929,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		}
 	}, {
 		.name = "DDI_IO_TC1",
-		.domains = XELPD_DDI_IO_TC1_POWER_DOMAINS,
+		.domain_list = &xelpd_pwdoms_ddi_io_tc1,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1894,7 +1937,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		}
 	}, {
 		.name = "DDI_IO_TC2",
-		.domains = XELPD_DDI_IO_TC2_POWER_DOMAINS,
+		.domain_list = &xelpd_pwdoms_ddi_io_tc2,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1902,7 +1945,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		}
 	}, {
 		.name = "DDI_IO_TC3",
-		.domains = XELPD_DDI_IO_TC3_POWER_DOMAINS,
+		.domain_list = &xelpd_pwdoms_ddi_io_tc3,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1910,7 +1953,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		}
 	}, {
 		.name = "DDI_IO_TC4",
-		.domains = XELPD_DDI_IO_TC4_POWER_DOMAINS,
+		.domain_list = &xelpd_pwdoms_ddi_io_tc4,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1918,7 +1961,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		}
 	}, {
 		.name = "AUX_A",
-		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_aux_a,
 		.ops = &icl_aux_power_well_ops,
 		.fixed_enable_delay = true,
 		.id = DISP_PW_ID_NONE,
@@ -1927,7 +1970,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_B",
-		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
+		.domain_list = &icl_pwdoms_aux_b,
 		.ops = &icl_aux_power_well_ops,
 		.fixed_enable_delay = true,
 		.id = DISP_PW_ID_NONE,
@@ -1936,7 +1979,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_C",
-		.domains = TGL_AUX_C_IO_POWER_DOMAINS,
+		.domain_list = &tgl_pwdoms_aux_c,
 		.ops = &icl_aux_power_well_ops,
 		.fixed_enable_delay = true,
 		.id = DISP_PW_ID_NONE,
@@ -1945,7 +1988,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_D_XELPD",
-		.domains = XELPD_AUX_IO_D_XELPD_POWER_DOMAINS,
+		.domain_list = &xelpd_pwdoms_aux_d_xelpd,
 		.ops = &icl_aux_power_well_ops,
 		.fixed_enable_delay = true,
 		.id = DISP_PW_ID_NONE,
@@ -1954,7 +1997,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_E_XELPD",
-		.domains = XELPD_AUX_IO_E_XELPD_POWER_DOMAINS,
+		.domain_list = &xelpd_pwdoms_aux_e_xelpd,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1962,7 +2005,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_USBC1",
-		.domains = XELPD_AUX_IO_USBC1_POWER_DOMAINS,
+		.domain_list = &xelpd_pwdoms_aux_usbc1,
 		.ops = &icl_aux_power_well_ops,
 		.fixed_enable_delay = true,
 		.id = DISP_PW_ID_NONE,
@@ -1971,7 +2014,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_USBC2",
-		.domains = XELPD_AUX_IO_USBC2_POWER_DOMAINS,
+		.domain_list = &xelpd_pwdoms_aux_usbc2,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1979,7 +2022,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_USBC3",
-		.domains = XELPD_AUX_IO_USBC3_POWER_DOMAINS,
+		.domain_list = &xelpd_pwdoms_aux_usbc3,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1987,7 +2030,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_USBC4",
-		.domains = XELPD_AUX_IO_USBC4_POWER_DOMAINS,
+		.domain_list = &xelpd_pwdoms_aux_usbc4,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -1995,7 +2038,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_TBT1",
-		.domains = XELPD_AUX_IO_TBT1_POWER_DOMAINS,
+		.domain_list = &xelpd_pwdoms_aux_tbt1,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
@@ -2004,7 +2047,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_TBT2",
-		.domains = XELPD_AUX_IO_TBT2_POWER_DOMAINS,
+		.domain_list = &xelpd_pwdoms_aux_tbt2,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
@@ -2013,7 +2056,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_TBT3",
-		.domains = XELPD_AUX_IO_TBT3_POWER_DOMAINS,
+		.domain_list = &xelpd_pwdoms_aux_tbt3,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
@@ -2022,7 +2065,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		},
 	}, {
 		.name = "AUX_TBT4",
-		.domains = XELPD_AUX_IO_TBT4_POWER_DOMAINS,
+		.domain_list = &xelpd_pwdoms_aux_tbt4,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
@@ -2032,6 +2075,24 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 	},
 };
 
+static void init_power_well_domains(const struct i915_power_well_desc *desc,
+				    struct i915_power_well *power_well)
+{
+	int j;
+
+	if (!desc->domain_list)
+		return;
+
+	if (desc->domain_list->count == 0) {
+		power_well->domains = GENMASK_ULL(POWER_DOMAIN_NUM - 1, 0);
+
+		return;
+	}
+
+	for (j = 0; j < desc->domain_list->count; j++)
+		power_well->domains |= BIT_ULL(desc->domain_list->list[j]);
+}
+
 static int
 __set_power_wells(struct i915_power_domains *power_domains,
 		  const struct i915_power_well_desc *power_well_descs,
@@ -2062,9 +2123,13 @@ __set_power_wells(struct i915_power_domains *power_domains,
 		if (BIT_ULL(id) & skip_mask)
 			continue;
 
-		power_domains->power_wells[plt_idx++].desc =
+		power_domains->power_wells[plt_idx].desc =
 			&power_well_descs[i];
 
+		init_power_well_domains(&power_well_descs[i], &power_domains->power_wells[plt_idx]);
+
+		plt_idx++;
+
 		if (id == DISP_PW_ID_NONE)
 			continue;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 8d9bc7a654106..b3d648dfeaea3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -155,7 +155,7 @@ const char *intel_power_well_name(struct i915_power_well *power_well)
 
 u64 intel_power_well_domains(struct i915_power_well *power_well)
 {
-	return power_well->desc->domains;
+	return power_well->domains;
 }
 
 int intel_power_well_refcount(struct i915_power_well *power_well)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
index 26fe9e1048bcc..0926b858d7155 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -50,7 +50,10 @@ enum i915_power_well_id {
 
 struct i915_power_well_desc {
 	const char *name;
-	u64 domains;
+	const struct i915_power_domain_list {
+		const enum intel_display_power_domain *list;
+		u8 count;
+	} *domain_list;
 	/* Mask of pipes whose IRQ logic is backed by the pw */
 	u16 irq_pipe_mask:4;
 	u16 always_on:1;
@@ -99,6 +102,7 @@ struct i915_power_well_desc {
 
 struct i915_power_well {
 	const struct i915_power_well_desc *desc;
+	u64 domains;
 	/* power well enable/disable usage count */
 	int count;
 	/* cached hw enabled state */
-- 
2.30.2

