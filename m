Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF7849F8A8
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 12:49:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E407310E740;
	Fri, 28 Jan 2022 11:49:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76EDD10E714
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 11:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643370564; x=1674906564;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=aTQY0KmANwErK3WxsnTXYZn9/g4CjhyF2sGilIoxkbQ=;
 b=e0IPA1VhE8LWXJ7p6IQsZyF5rkAhS1qJqjzz1e77RlK4mB5xurpdtuwK
 ebwS8GNhRkspue9kgu76AweBd1XuuWFITCL56ecNMVxw/cCsnLDgZuiRJ
 PbEvyvWh58wf1rFxFVQ6QzkdsIHG5g17ssCqrTupmUNjadYCpRGzYxdbm
 4XF8VuB/JZ8cdfe+3rfcx++c5S81rub5ItKSG/zQH9Dhn0pOypGSLTCum
 /V186Tp2m+FNny4sSYbPFo26t4xfdxv6QFcqUynUY7fiP2Hme0+NOoNV0
 FE9irikSzeujX2hrjmx8xPp0Tc2wKOBuLixaZVohPDFfLMq7qRAwh4mwS Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="310420922"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="310420922"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:24 -0800
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="480712824"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:22 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 13:48:59 +0200
Message-Id: <20220128114914.2339526-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220128114914.2339526-1-imre.deak@intel.com>
References: <20220128114914.2339526-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/19] drm/i915: Move the power domain->well
 mappings to intel_display_power_map.c
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

Move the list of platform specific power domain -> power well
definitions to intel_display_power_map.c. While at it group the
platforms' power domain macros with the corresponding power well lists
and keep all the power domain lists in the same order (matching the enum
order).

No functional changes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |    1 +
 .../drm/i915/display/intel_display_power.c    | 2483 +----------------
 .../drm/i915/display/intel_display_power.h    |    5 +
 .../display/intel_display_power_internal.h    |   93 +
 .../i915/display/intel_display_power_map.c    | 2277 +++++++++++++++
 5 files changed, 2392 insertions(+), 2467 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_power_internal.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_power_map.c

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index a26e6736bebbc..c6444d6f944b8 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -210,6 +210,7 @@ i915-y += \
 	display/intel_cursor.o \
 	display/intel_display.o \
 	display/intel_display_power.o \
+	display/intel_display_power_map.o \
 	display/intel_dmc.o \
 	display/intel_dpio_phy.o \
 	display/intel_dpll.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 72e8eb82f3c74..2ec9c7bd65640 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -11,6 +11,7 @@
 #include "intel_crt.h"
 #include "intel_de.h"
 #include "intel_display_power.h"
+#include "intel_display_power_internal.h"
 #include "intel_display_types.h"
 #include "intel_dmc.h"
 #include "intel_dpio_phy.h"
@@ -80,204 +81,9 @@ struct i915_power_well_ops {
 			   struct i915_power_well *power_well);
 };
 
-/* Power well structure for haswell */
-struct i915_power_well_desc {
-	const char *name;
-	bool always_on;
-	u64 domains;
-	/* unique identifier for this power well */
-	enum i915_power_well_id id;
-	/*
-	 * Arbitraty data associated with this power well. Platform and power
-	 * well specific.
-	 */
-	union {
-		struct {
-			/*
-			 * request/status flag index in the PUNIT power well
-			 * control/status registers.
-			 */
-			u8 idx;
-		} vlv;
-		struct {
-			enum dpio_phy phy;
-		} bxt;
-		struct {
-			/*
-			 * request/status flag index in the power well
-			 * constrol/status registers.
-			 */
-			u8 idx;
-			/* Mask of pipes whose IRQ logic is backed by the pw */
-			u8 irq_pipe_mask;
-			/*
-			 * Instead of waiting for the status bit to ack enables,
-			 * just wait a specific amount of time and then consider
-			 * the well enabled.
-			 */
-			u16 fixed_enable_delay;
-			/* The pw is backing the VGA functionality */
-			bool has_vga:1;
-			bool has_fuses:1;
-			/*
-			 * The pw is for an ICL+ TypeC PHY port in
-			 * Thunderbolt mode.
-			 */
-			bool is_tc_tbt:1;
-		} hsw;
-	};
-	const struct i915_power_well_ops *ops;
-};
-
-struct i915_power_well {
-	const struct i915_power_well_desc *desc;
-	/* power well enable/disable usage count */
-	int count;
-	/* cached hw enabled state */
-	bool hw_enabled;
-};
-
 bool intel_display_power_well_is_enabled(struct drm_i915_private *dev_priv,
 					 enum i915_power_well_id power_well_id);
 
-const char *
-intel_display_power_domain_str(enum intel_display_power_domain domain)
-{
-	switch (domain) {
-	case POWER_DOMAIN_DISPLAY_CORE:
-		return "DISPLAY_CORE";
-	case POWER_DOMAIN_PIPE_A:
-		return "PIPE_A";
-	case POWER_DOMAIN_PIPE_B:
-		return "PIPE_B";
-	case POWER_DOMAIN_PIPE_C:
-		return "PIPE_C";
-	case POWER_DOMAIN_PIPE_D:
-		return "PIPE_D";
-	case POWER_DOMAIN_PIPE_A_PANEL_FITTER:
-		return "PIPE_A_PANEL_FITTER";
-	case POWER_DOMAIN_PIPE_B_PANEL_FITTER:
-		return "PIPE_B_PANEL_FITTER";
-	case POWER_DOMAIN_PIPE_C_PANEL_FITTER:
-		return "PIPE_C_PANEL_FITTER";
-	case POWER_DOMAIN_PIPE_D_PANEL_FITTER:
-		return "PIPE_D_PANEL_FITTER";
-	case POWER_DOMAIN_TRANSCODER_A:
-		return "TRANSCODER_A";
-	case POWER_DOMAIN_TRANSCODER_B:
-		return "TRANSCODER_B";
-	case POWER_DOMAIN_TRANSCODER_C:
-		return "TRANSCODER_C";
-	case POWER_DOMAIN_TRANSCODER_D:
-		return "TRANSCODER_D";
-	case POWER_DOMAIN_TRANSCODER_EDP:
-		return "TRANSCODER_EDP";
-	case POWER_DOMAIN_TRANSCODER_DSI_A:
-		return "TRANSCODER_DSI_A";
-	case POWER_DOMAIN_TRANSCODER_DSI_C:
-		return "TRANSCODER_DSI_C";
-	case POWER_DOMAIN_TRANSCODER_VDSC_PW2:
-		return "TRANSCODER_VDSC_PW2";
-	case POWER_DOMAIN_PORT_DDI_A_LANES:
-		return "PORT_DDI_A_LANES";
-	case POWER_DOMAIN_PORT_DDI_B_LANES:
-		return "PORT_DDI_B_LANES";
-	case POWER_DOMAIN_PORT_DDI_C_LANES:
-		return "PORT_DDI_C_LANES";
-	case POWER_DOMAIN_PORT_DDI_D_LANES:
-		return "PORT_DDI_D_LANES";
-	case POWER_DOMAIN_PORT_DDI_E_LANES:
-		return "PORT_DDI_E_LANES";
-	case POWER_DOMAIN_PORT_DDI_F_LANES:
-		return "PORT_DDI_F_LANES";
-	case POWER_DOMAIN_PORT_DDI_G_LANES:
-		return "PORT_DDI_G_LANES";
-	case POWER_DOMAIN_PORT_DDI_H_LANES:
-		return "PORT_DDI_H_LANES";
-	case POWER_DOMAIN_PORT_DDI_I_LANES:
-		return "PORT_DDI_I_LANES";
-	case POWER_DOMAIN_PORT_DDI_A_IO:
-		return "PORT_DDI_A_IO";
-	case POWER_DOMAIN_PORT_DDI_B_IO:
-		return "PORT_DDI_B_IO";
-	case POWER_DOMAIN_PORT_DDI_C_IO:
-		return "PORT_DDI_C_IO";
-	case POWER_DOMAIN_PORT_DDI_D_IO:
-		return "PORT_DDI_D_IO";
-	case POWER_DOMAIN_PORT_DDI_E_IO:
-		return "PORT_DDI_E_IO";
-	case POWER_DOMAIN_PORT_DDI_F_IO:
-		return "PORT_DDI_F_IO";
-	case POWER_DOMAIN_PORT_DDI_G_IO:
-		return "PORT_DDI_G_IO";
-	case POWER_DOMAIN_PORT_DDI_H_IO:
-		return "PORT_DDI_H_IO";
-	case POWER_DOMAIN_PORT_DDI_I_IO:
-		return "PORT_DDI_I_IO";
-	case POWER_DOMAIN_PORT_DSI:
-		return "PORT_DSI";
-	case POWER_DOMAIN_PORT_CRT:
-		return "PORT_CRT";
-	case POWER_DOMAIN_PORT_OTHER:
-		return "PORT_OTHER";
-	case POWER_DOMAIN_VGA:
-		return "VGA";
-	case POWER_DOMAIN_AUDIO_MMIO:
-		return "AUDIO_MMIO";
-	case POWER_DOMAIN_AUDIO_PLAYBACK:
-		return "AUDIO_PLAYBACK";
-	case POWER_DOMAIN_AUX_A:
-		return "AUX_A";
-	case POWER_DOMAIN_AUX_B:
-		return "AUX_B";
-	case POWER_DOMAIN_AUX_C:
-		return "AUX_C";
-	case POWER_DOMAIN_AUX_D:
-		return "AUX_D";
-	case POWER_DOMAIN_AUX_E:
-		return "AUX_E";
-	case POWER_DOMAIN_AUX_F:
-		return "AUX_F";
-	case POWER_DOMAIN_AUX_G:
-		return "AUX_G";
-	case POWER_DOMAIN_AUX_H:
-		return "AUX_H";
-	case POWER_DOMAIN_AUX_I:
-		return "AUX_I";
-	case POWER_DOMAIN_AUX_IO_A:
-		return "AUX_IO_A";
-	case POWER_DOMAIN_AUX_C_TBT:
-		return "AUX_C_TBT";
-	case POWER_DOMAIN_AUX_D_TBT:
-		return "AUX_D_TBT";
-	case POWER_DOMAIN_AUX_E_TBT:
-		return "AUX_E_TBT";
-	case POWER_DOMAIN_AUX_F_TBT:
-		return "AUX_F_TBT";
-	case POWER_DOMAIN_AUX_G_TBT:
-		return "AUX_G_TBT";
-	case POWER_DOMAIN_AUX_H_TBT:
-		return "AUX_H_TBT";
-	case POWER_DOMAIN_AUX_I_TBT:
-		return "AUX_I_TBT";
-	case POWER_DOMAIN_GMBUS:
-		return "GMBUS";
-	case POWER_DOMAIN_INIT:
-		return "INIT";
-	case POWER_DOMAIN_MODESET:
-		return "MODESET";
-	case POWER_DOMAIN_GT_IRQ:
-		return "GT_IRQ";
-	case POWER_DOMAIN_DC_OFF:
-		return "DC_OFF";
-	case POWER_DOMAIN_TC_COLD_OFF:
-		return "TC_COLD_OFF";
-	default:
-		MISSING_CASE(domain);
-		return "?";
-	}
-}
-
 static void intel_power_well_enable(struct drm_i915_private *dev_priv,
 				    struct i915_power_well *power_well)
 {
@@ -1640,8 +1446,6 @@ static void vlv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
 	vlv_set_power_well(dev_priv, power_well, false);
 }
 
-#define POWER_DOMAIN_MASK (GENMASK_ULL(POWER_DOMAIN_NUM - 1, 0))
-
 #define BITS_SET(val, bits) (((val) & (bits)) == (bits))
 
 static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
@@ -2608,697 +2412,34 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
 	}
 }
 
-#define I830_PIPES_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_PIPE_A) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_A_PANEL_FITTER) |	\
-	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |	\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define VLV_DISPLAY_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_DISPLAY_CORE) |	\
-	BIT_ULL(POWER_DOMAIN_PIPE_A) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_A_PANEL_FITTER) |	\
-	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DSI) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_CRT) |		\
-	BIT_ULL(POWER_DOMAIN_VGA) |			\
-	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
-	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
-	BIT_ULL(POWER_DOMAIN_GMBUS) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define VLV_DPIO_CMN_BC_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_CRT) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define VLV_DPIO_TX_B_LANES_01_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define VLV_DPIO_TX_B_LANES_23_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define VLV_DPIO_TX_C_LANES_01_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define VLV_DPIO_TX_C_LANES_23_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define CHV_DISPLAY_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_DISPLAY_CORE) |	\
-	BIT_ULL(POWER_DOMAIN_PIPE_A) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_C) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_A_PANEL_FITTER) |	\
-	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
-	BIT_ULL(POWER_DOMAIN_PIPE_C_PANEL_FITTER) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DSI) |		\
-	BIT_ULL(POWER_DOMAIN_VGA) |			\
-	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
-	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_D) |		\
-	BIT_ULL(POWER_DOMAIN_GMBUS) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define CHV_DPIO_CMN_BC_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define CHV_DPIO_CMN_D_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_AUX_D) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define HSW_DISPLAY_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_A_PANEL_FITTER) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_C_PANEL_FITTER) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_CRT) | /* DDI E */	\
-	BIT_ULL(POWER_DOMAIN_VGA) |				\
-	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
-	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define BDW_DISPLAY_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_C_PANEL_FITTER) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_CRT) | /* DDI E */	\
-	BIT_ULL(POWER_DOMAIN_VGA) |				\
-	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
-	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define SKL_DISPLAY_POWERWELL_2_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_C_PANEL_FITTER) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_E_LANES) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |                       \
-	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_D) |			\
-	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
-	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
-	BIT_ULL(POWER_DOMAIN_VGA) |				\
-	BIT_ULL(POWER_DOMAIN_INIT))
-#define SKL_DISPLAY_DDI_IO_A_E_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_A_IO) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_E_IO) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-#define SKL_DISPLAY_DDI_IO_B_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_IO) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-#define SKL_DISPLAY_DDI_IO_C_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_IO) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-#define SKL_DISPLAY_DDI_IO_D_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_IO) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-#define SKL_DISPLAY_DC_OFF_POWER_DOMAINS (		\
-	SKL_DISPLAY_POWERWELL_2_POWER_DOMAINS |		\
-	BIT_ULL(POWER_DOMAIN_GT_IRQ) |			\
-	BIT_ULL(POWER_DOMAIN_MODESET) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define BXT_DISPLAY_POWERWELL_2_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_C_PANEL_FITTER) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
-	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
-	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
-	BIT_ULL(POWER_DOMAIN_VGA) |				\
-	BIT_ULL(POWER_DOMAIN_INIT))
-#define BXT_DISPLAY_DC_OFF_POWER_DOMAINS (		\
-	BXT_DISPLAY_POWERWELL_2_POWER_DOMAINS |		\
-	BIT_ULL(POWER_DOMAIN_GT_IRQ) |			\
-	BIT_ULL(POWER_DOMAIN_MODESET) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
-	BIT_ULL(POWER_DOMAIN_GMBUS) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
-#define BXT_DPIO_CMN_A_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_A_LANES) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
-#define BXT_DPIO_CMN_BC_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define GLK_DISPLAY_POWERWELL_2_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_C_PANEL_FITTER) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |                       \
-	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
-	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
-	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
-	BIT_ULL(POWER_DOMAIN_VGA) |				\
-	BIT_ULL(POWER_DOMAIN_INIT))
-#define GLK_DISPLAY_DDI_IO_A_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_A_IO))
-#define GLK_DISPLAY_DDI_IO_B_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_IO))
-#define GLK_DISPLAY_DDI_IO_C_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_IO))
-#define GLK_DPIO_CMN_A_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_A_LANES) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
-#define GLK_DPIO_CMN_B_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
-#define GLK_DPIO_CMN_C_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
-#define GLK_DISPLAY_AUX_A_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_AUX_A) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_IO_A) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-#define GLK_DISPLAY_AUX_B_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-#define GLK_DISPLAY_AUX_C_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-#define GLK_DISPLAY_DC_OFF_POWER_DOMAINS (		\
-	GLK_DISPLAY_POWERWELL_2_POWER_DOMAINS |		\
-	BIT_ULL(POWER_DOMAIN_GT_IRQ) |			\
-	BIT_ULL(POWER_DOMAIN_MODESET) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
-	BIT_ULL(POWER_DOMAIN_GMBUS) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-/*
- * ICL PW_0/PG_0 domains (HW/DMC control):
- * - PCI
- * - clocks except port PLL
- * - central power except FBC
- * - shared functions except pipe interrupts, pipe MBUS, DBUF registers
- * ICL PW_1/PG_1 domains (HW/DMC control):
- * - DBUF function
- * - PIPE_A and its planes, except VGA
- * - transcoder EDP + PSR
- * - transcoder DSI
- * - DDI_A
- * - FBC
- */
-#define ICL_PW_4_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_C_PANEL_FITTER) |	\
-	BIT_ULL(POWER_DOMAIN_INIT))
-	/* VDSC/joining */
-#define ICL_PW_3_POWER_DOMAINS (			\
-	ICL_PW_4_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_E_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_F_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_D) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_E) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_F) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_C_TBT) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_D_TBT) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_E_TBT) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_F_TBT) |		\
-	BIT_ULL(POWER_DOMAIN_VGA) |			\
-	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
-	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
-	/*
-	 * - transcoder WD
-	 * - KVMR (HW control)
-	 */
-#define ICL_PW_2_POWER_DOMAINS (			\
-	ICL_PW_3_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_VDSC_PW2) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-	/*
-	 * - KVMR (HW control)
-	 */
-#define ICL_DISPLAY_DC_OFF_POWER_DOMAINS (		\
-	ICL_PW_2_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_MODESET) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
-	BIT_ULL(POWER_DOMAIN_DC_OFF) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define ICL_DDI_IO_A_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_A_IO))
-#define ICL_DDI_IO_B_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_IO))
-#define ICL_DDI_IO_C_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_IO))
-#define ICL_DDI_IO_D_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_IO))
-#define ICL_DDI_IO_E_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_E_IO))
-#define ICL_DDI_IO_F_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_F_IO))
-
-#define ICL_AUX_A_IO_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_AUX_IO_A) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_A))
-#define ICL_AUX_B_IO_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_AUX_B))
-#define ICL_AUX_C_TC1_IO_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_AUX_C))
-#define ICL_AUX_D_TC2_IO_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_AUX_D))
-#define ICL_AUX_E_TC3_IO_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_AUX_E))
-#define ICL_AUX_F_TC4_IO_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_AUX_F))
-#define ICL_AUX_C_TBT1_IO_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_AUX_C_TBT))
-#define ICL_AUX_D_TBT2_IO_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_AUX_D_TBT))
-#define ICL_AUX_E_TBT3_IO_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_AUX_E_TBT))
-#define ICL_AUX_F_TBT4_IO_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_AUX_F_TBT))
-
-#define TGL_PW_5_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PIPE_D) |			\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_D) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_D_PANEL_FITTER) |     \
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define TGL_PW_4_POWER_DOMAINS (			\
-	TGL_PW_5_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_C_PANEL_FITTER) |	\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define TGL_PW_3_POWER_DOMAINS (			\
-	TGL_PW_4_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC1) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC2) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC3) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC4) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC5) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC6) |	\
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
-	BIT_ULL(POWER_DOMAIN_VGA) |			\
-	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
-	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define TGL_PW_2_POWER_DOMAINS (			\
-	TGL_PW_3_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_VDSC_PW2) |	\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define TGL_DISPLAY_DC_OFF_POWER_DOMAINS (		\
-	TGL_PW_3_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_MODESET) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define TGL_DDI_IO_TC1_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC1)
-#define TGL_DDI_IO_TC2_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC2)
-#define TGL_DDI_IO_TC3_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC3)
-#define TGL_DDI_IO_TC4_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC4)
-#define TGL_DDI_IO_TC5_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC5)
-#define TGL_DDI_IO_TC6_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC6)
-
-#define TGL_AUX_A_IO_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_AUX_IO_A) |	\
-	BIT_ULL(POWER_DOMAIN_AUX_A))
-#define TGL_AUX_B_IO_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_AUX_B))
-#define TGL_AUX_C_IO_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_AUX_C))
-
-#define TGL_AUX_IO_USBC1_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC1)
-#define TGL_AUX_IO_USBC2_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC2)
-#define TGL_AUX_IO_USBC3_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC3)
-#define TGL_AUX_IO_USBC4_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC4)
-#define TGL_AUX_IO_USBC5_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC5)
-#define TGL_AUX_IO_USBC6_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC6)
-
-#define TGL_AUX_IO_TBT1_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT1)
-#define TGL_AUX_IO_TBT2_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT2)
-#define TGL_AUX_IO_TBT3_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT3)
-#define TGL_AUX_IO_TBT4_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT4)
-#define TGL_AUX_IO_TBT5_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT5)
-#define TGL_AUX_IO_TBT6_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT6)
-
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
-
-#define RKL_PW_4_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_C_PANEL_FITTER) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define RKL_PW_3_POWER_DOMAINS (			\
-	RKL_PW_4_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
-	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
-	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
-	BIT_ULL(POWER_DOMAIN_VGA) |			\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC1) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC2) |	\
-	BIT_ULL(POWER_DOMAIN_AUX_USBC1) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_USBC2) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-/*
- * There is no PW_2/PG_2 on RKL.
- *
- * RKL PW_1/PG_1 domains (under HW/DMC control):
- * - DBUF function (note: registers are in PW0)
- * - PIPE_A and its planes and VDSC/joining, except VGA
- * - transcoder A
- * - DDI_A and DDI_B
- * - FBC
- *
- * RKL PW_0/PG_0 domains (under HW/DMC control):
- * - PCI
- * - clocks except port PLL
- * - shared functions:
- *     * interrupts except pipe interrupts
- *     * MBus except PIPE_MBUS_DBOX_CTL
- *     * DBUF registers
- * - central power except FBC
- * - top-level GTC (DDI-level GTC is in the well associated with the DDI)
- */
-
-#define RKL_DISPLAY_DC_OFF_POWER_DOMAINS (		\
-	RKL_PW_3_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_MODESET) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-/*
- * DG1 onwards Audio MMIO/VERBS lies in PG0 power well.
- */
-#define DG1_PW_3_POWER_DOMAINS (			\
-	TGL_PW_4_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
-	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC1) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC2) |	\
-	BIT_ULL(POWER_DOMAIN_AUX_USBC1) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_USBC2) |		\
-	BIT_ULL(POWER_DOMAIN_VGA) |			\
-	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define DG1_PW_2_POWER_DOMAINS (			\
-	DG1_PW_3_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_VDSC_PW2) |	\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define DG1_DISPLAY_DC_OFF_POWER_DOMAINS (		\
-	DG1_PW_3_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
-	BIT_ULL(POWER_DOMAIN_MODESET) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-/*
- * XE_LPD Power Domains
- *
- * Previous platforms required that PG(n-1) be enabled before PG(n).  That
- * dependency chain turns into a dependency tree on XE_LPD:
- *
- *       PG0
- *        |
- *     --PG1--
- *    /       \
- *  PGA     --PG2--
- *         /   |   \
- *       PGB  PGC  PGD
- *
- * Power wells must be enabled from top to bottom and disabled from bottom
- * to top.  This allows pipes to be power gated independently.
- */
-
-#define XELPD_PW_D_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PIPE_D) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_D_PANEL_FITTER) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_D) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define XELPD_PW_C_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_C_PANEL_FITTER) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define XELPD_PW_B_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
-	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define XELPD_PW_A_POWER_DOMAINS (			\
-	BIT_ULL(POWER_DOMAIN_PIPE_A) |			\
-	BIT_ULL(POWER_DOMAIN_PIPE_A_PANEL_FITTER) |	\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define XELPD_PW_2_POWER_DOMAINS (			\
-	XELPD_PW_B_POWER_DOMAINS |			\
-	XELPD_PW_C_POWER_DOMAINS |			\
-	XELPD_PW_D_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
-	BIT_ULL(POWER_DOMAIN_VGA) |			\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_D_XELPD) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_E_XELPD) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC1) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC2) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC3) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC4) |	\
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
-
-/*
- * XELPD PW_1/PG_1 domains (under HW/DMC control):
- *  - DBUF function (registers are in PW0)
- *  - Transcoder A
- *  - DDI_A and DDI_B
- *
- * XELPD PW_0/PW_1 domains (under HW/DMC control):
- *  - PCI
- *  - Clocks except port PLL
- *  - Shared functions:
- *     * interrupts except pipe interrupts
- *     * MBus except PIPE_MBUS_DBOX_CTL
- *     * DBUF registers
- *  - Central power except FBC
- *  - Top-level GTC (DDI-level GTC is in the well associated with the DDI)
- */
-
-#define XELPD_DISPLAY_DC_OFF_POWER_DOMAINS (		\
-	XELPD_PW_2_POWER_DOMAINS |			\
-	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
-	BIT_ULL(POWER_DOMAIN_MODESET) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
-	BIT_ULL(POWER_DOMAIN_PORT_DSI) |		\
-	BIT_ULL(POWER_DOMAIN_INIT))
-
-#define XELPD_AUX_IO_D_XELPD_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_D_XELPD)
-#define XELPD_AUX_IO_E_XELPD_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_E_XELPD)
-#define XELPD_AUX_IO_USBC1_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC1)
-#define XELPD_AUX_IO_USBC2_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC2)
-#define XELPD_AUX_IO_USBC3_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC3)
-#define XELPD_AUX_IO_USBC4_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC4)
-
-#define XELPD_AUX_IO_TBT1_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_TBT1)
-#define XELPD_AUX_IO_TBT2_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_TBT2)
-#define XELPD_AUX_IO_TBT3_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_TBT3)
-#define XELPD_AUX_IO_TBT4_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_TBT4)
-
-#define XELPD_DDI_IO_D_XELPD_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_D_XELPD)
-#define XELPD_DDI_IO_E_XELPD_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_E_XELPD)
-#define XELPD_DDI_IO_TC1_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC1)
-#define XELPD_DDI_IO_TC2_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC2)
-#define XELPD_DDI_IO_TC3_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC3)
-#define XELPD_DDI_IO_TC4_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC4)
-
-static const struct i915_power_well_ops i9xx_always_on_power_well_ops = {
+const struct i915_power_well_ops i9xx_always_on_power_well_ops = {
 	.sync_hw = i9xx_power_well_sync_hw_noop,
 	.enable = i9xx_always_on_power_well_noop,
 	.disable = i9xx_always_on_power_well_noop,
 	.is_enabled = i9xx_always_on_power_well_enabled,
 };
 
-static const struct i915_power_well_ops chv_pipe_power_well_ops = {
+const struct i915_power_well_ops chv_pipe_power_well_ops = {
 	.sync_hw = chv_pipe_power_well_sync_hw,
 	.enable = chv_pipe_power_well_enable,
 	.disable = chv_pipe_power_well_disable,
 	.is_enabled = chv_pipe_power_well_enabled,
 };
 
-static const struct i915_power_well_ops chv_dpio_cmn_power_well_ops = {
+const struct i915_power_well_ops chv_dpio_cmn_power_well_ops = {
 	.sync_hw = i9xx_power_well_sync_hw_noop,
 	.enable = chv_dpio_cmn_power_well_enable,
 	.disable = chv_dpio_cmn_power_well_disable,
 	.is_enabled = vlv_power_well_enabled,
 };
 
-static const struct i915_power_well_desc i9xx_always_on_power_well[] = {
-	{
-		.name = "always-on",
-		.always_on = true,
-		.domains = POWER_DOMAIN_MASK,
-		.ops = &i9xx_always_on_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-	},
-};
-
-static const struct i915_power_well_ops i830_pipes_power_well_ops = {
+const struct i915_power_well_ops i830_pipes_power_well_ops = {
 	.sync_hw = i830_pipes_power_well_sync_hw,
 	.enable = i830_pipes_power_well_enable,
 	.disable = i830_pipes_power_well_disable,
 	.is_enabled = i830_pipes_power_well_enabled,
 };
 
-static const struct i915_power_well_desc i830_power_wells[] = {
-	{
-		.name = "always-on",
-		.always_on = true,
-		.domains = POWER_DOMAIN_MASK,
-		.ops = &i9xx_always_on_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-	},
-	{
-		.name = "pipes",
-		.domains = I830_PIPES_POWER_DOMAINS,
-		.ops = &i830_pipes_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-	},
-};
-
 static const struct i915_power_well_regs hsw_power_well_regs = {
 	.bios	= HSW_PWR_WELL_CTL1,
 	.driver	= HSW_PWR_WELL_CTL2,
@@ -3306,7 +2447,7 @@ static const struct i915_power_well_regs hsw_power_well_regs = {
 	.debug	= HSW_PWR_WELL_CTL4,
 };
 
-static const struct i915_power_well_ops hsw_power_well_ops = {
+const struct i915_power_well_ops hsw_power_well_ops = {
 	.regs = &hsw_power_well_regs,
 	.sync_hw = hsw_power_well_sync_hw,
 	.enable = hsw_power_well_enable,
@@ -3314,197 +2455,41 @@ static const struct i915_power_well_ops hsw_power_well_ops = {
 	.is_enabled = hsw_power_well_enabled,
 };
 
-static const struct i915_power_well_ops gen9_dc_off_power_well_ops = {
+const struct i915_power_well_ops gen9_dc_off_power_well_ops = {
 	.sync_hw = i9xx_power_well_sync_hw_noop,
 	.enable = gen9_dc_off_power_well_enable,
 	.disable = gen9_dc_off_power_well_disable,
 	.is_enabled = gen9_dc_off_power_well_enabled,
 };
 
-static const struct i915_power_well_ops bxt_dpio_cmn_power_well_ops = {
+const struct i915_power_well_ops bxt_dpio_cmn_power_well_ops = {
 	.sync_hw = i9xx_power_well_sync_hw_noop,
 	.enable = bxt_dpio_cmn_power_well_enable,
 	.disable = bxt_dpio_cmn_power_well_disable,
 	.is_enabled = bxt_dpio_cmn_power_well_enabled,
 };
 
-static const struct i915_power_well_desc hsw_power_wells[] = {
-	{
-		.name = "always-on",
-		.always_on = true,
-		.domains = POWER_DOMAIN_MASK,
-		.ops = &i9xx_always_on_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-	},
-	{
-		.name = "display",
-		.domains = HSW_DISPLAY_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = HSW_DISP_PW_GLOBAL,
-		{
-			.hsw.idx = HSW_PW_CTL_IDX_GLOBAL,
-			.hsw.has_vga = true,
-		},
-	},
-};
-
-static const struct i915_power_well_desc bdw_power_wells[] = {
-	{
-		.name = "always-on",
-		.always_on = true,
-		.domains = POWER_DOMAIN_MASK,
-		.ops = &i9xx_always_on_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-	},
-	{
-		.name = "display",
-		.domains = BDW_DISPLAY_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = HSW_DISP_PW_GLOBAL,
-		{
-			.hsw.idx = HSW_PW_CTL_IDX_GLOBAL,
-			.hsw.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
-			.hsw.has_vga = true,
-		},
-	},
-};
-
-static const struct i915_power_well_ops vlv_display_power_well_ops = {
+const struct i915_power_well_ops vlv_display_power_well_ops = {
 	.sync_hw = i9xx_power_well_sync_hw_noop,
 	.enable = vlv_display_power_well_enable,
 	.disable = vlv_display_power_well_disable,
 	.is_enabled = vlv_power_well_enabled,
 };
 
-static const struct i915_power_well_ops vlv_dpio_cmn_power_well_ops = {
+const struct i915_power_well_ops vlv_dpio_cmn_power_well_ops = {
 	.sync_hw = i9xx_power_well_sync_hw_noop,
 	.enable = vlv_dpio_cmn_power_well_enable,
 	.disable = vlv_dpio_cmn_power_well_disable,
 	.is_enabled = vlv_power_well_enabled,
 };
 
-static const struct i915_power_well_ops vlv_dpio_power_well_ops = {
+const struct i915_power_well_ops vlv_dpio_power_well_ops = {
 	.sync_hw = i9xx_power_well_sync_hw_noop,
 	.enable = vlv_power_well_enable,
 	.disable = vlv_power_well_disable,
 	.is_enabled = vlv_power_well_enabled,
 };
 
-static const struct i915_power_well_desc vlv_power_wells[] = {
-	{
-		.name = "always-on",
-		.always_on = true,
-		.domains = POWER_DOMAIN_MASK,
-		.ops = &i9xx_always_on_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-	},
-	{
-		.name = "display",
-		.domains = VLV_DISPLAY_POWER_DOMAINS,
-		.ops = &vlv_display_power_well_ops,
-		.id = VLV_DISP_PW_DISP2D,
-		{
-			.vlv.idx = PUNIT_PWGT_IDX_DISP2D,
-		},
-	},
-	{
-		.name = "dpio-tx-b-01",
-		.domains = VLV_DPIO_TX_B_LANES_01_POWER_DOMAINS |
-			   VLV_DPIO_TX_B_LANES_23_POWER_DOMAINS |
-			   VLV_DPIO_TX_C_LANES_01_POWER_DOMAINS |
-			   VLV_DPIO_TX_C_LANES_23_POWER_DOMAINS,
-		.ops = &vlv_dpio_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.vlv.idx = PUNIT_PWGT_IDX_DPIO_TX_B_LANES_01,
-		},
-	},
-	{
-		.name = "dpio-tx-b-23",
-		.domains = VLV_DPIO_TX_B_LANES_01_POWER_DOMAINS |
-			   VLV_DPIO_TX_B_LANES_23_POWER_DOMAINS |
-			   VLV_DPIO_TX_C_LANES_01_POWER_DOMAINS |
-			   VLV_DPIO_TX_C_LANES_23_POWER_DOMAINS,
-		.ops = &vlv_dpio_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.vlv.idx = PUNIT_PWGT_IDX_DPIO_TX_B_LANES_23,
-		},
-	},
-	{
-		.name = "dpio-tx-c-01",
-		.domains = VLV_DPIO_TX_B_LANES_01_POWER_DOMAINS |
-			   VLV_DPIO_TX_B_LANES_23_POWER_DOMAINS |
-			   VLV_DPIO_TX_C_LANES_01_POWER_DOMAINS |
-			   VLV_DPIO_TX_C_LANES_23_POWER_DOMAINS,
-		.ops = &vlv_dpio_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.vlv.idx = PUNIT_PWGT_IDX_DPIO_TX_C_LANES_01,
-		},
-	},
-	{
-		.name = "dpio-tx-c-23",
-		.domains = VLV_DPIO_TX_B_LANES_01_POWER_DOMAINS |
-			   VLV_DPIO_TX_B_LANES_23_POWER_DOMAINS |
-			   VLV_DPIO_TX_C_LANES_01_POWER_DOMAINS |
-			   VLV_DPIO_TX_C_LANES_23_POWER_DOMAINS,
-		.ops = &vlv_dpio_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.vlv.idx = PUNIT_PWGT_IDX_DPIO_TX_C_LANES_23,
-		},
-	},
-	{
-		.name = "dpio-common",
-		.domains = VLV_DPIO_CMN_BC_POWER_DOMAINS,
-		.ops = &vlv_dpio_cmn_power_well_ops,
-		.id = VLV_DISP_PW_DPIO_CMN_BC,
-		{
-			.vlv.idx = PUNIT_PWGT_IDX_DPIO_CMN_BC,
-		},
-	},
-};
-
-static const struct i915_power_well_desc chv_power_wells[] = {
-	{
-		.name = "always-on",
-		.always_on = true,
-		.domains = POWER_DOMAIN_MASK,
-		.ops = &i9xx_always_on_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-	},
-	{
-		.name = "display",
-		/*
-		 * Pipe A power well is the new disp2d well. Pipe B and C
-		 * power wells don't actually exist. Pipe A power well is
-		 * required for any pipe to work.
-		 */
-		.domains = CHV_DISPLAY_POWER_DOMAINS,
-		.ops = &chv_pipe_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-	},
-	{
-		.name = "dpio-common-bc",
-		.domains = CHV_DPIO_CMN_BC_POWER_DOMAINS,
-		.ops = &chv_dpio_cmn_power_well_ops,
-		.id = VLV_DISP_PW_DPIO_CMN_BC,
-		{
-			.vlv.idx = PUNIT_PWGT_IDX_DPIO_CMN_BC,
-		},
-	},
-	{
-		.name = "dpio-common-d",
-		.domains = CHV_DPIO_CMN_D_POWER_DOMAINS,
-		.ops = &chv_dpio_cmn_power_well_ops,
-		.id = CHV_DISP_PW_DPIO_CMN_D,
-		{
-			.vlv.idx = PUNIT_PWGT_IDX_DPIO_CMN_D,
-		},
-	},
-};
-
 bool intel_display_power_well_is_enabled(struct drm_i915_private *dev_priv,
 					 enum i915_power_well_id power_well_id)
 {
@@ -3517,279 +2502,13 @@ bool intel_display_power_well_is_enabled(struct drm_i915_private *dev_priv,
 	return ret;
 }
 
-static const struct i915_power_well_desc skl_power_wells[] = {
-	{
-		.name = "always-on",
-		.always_on = true,
-		.domains = POWER_DOMAIN_MASK,
-		.ops = &i9xx_always_on_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-	},
-	{
-		.name = "power well 1",
-		/* Handled by the DMC firmware */
-		.always_on = true,
-		.domains = 0,
-		.ops = &hsw_power_well_ops,
-		.id = SKL_DISP_PW_1,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
-			.hsw.has_fuses = true,
-		},
-	},
-	{
-		.name = "MISC IO power well",
-		/* Handled by the DMC firmware */
-		.always_on = true,
-		.domains = 0,
-		.ops = &hsw_power_well_ops,
-		.id = SKL_DISP_PW_MISC_IO,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_MISC_IO,
-		},
-	},
-	{
-		.name = "DC off",
-		.domains = SKL_DISPLAY_DC_OFF_POWER_DOMAINS,
-		.ops = &gen9_dc_off_power_well_ops,
-		.id = SKL_DISP_DC_OFF,
-	},
-	{
-		.name = "power well 2",
-		.domains = SKL_DISPLAY_POWERWELL_2_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = SKL_DISP_PW_2,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_PW_2,
-			.hsw.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
-			.hsw.has_vga = true,
-			.hsw.has_fuses = true,
-		},
-	},
-	{
-		.name = "DDI A/E IO power well",
-		.domains = SKL_DISPLAY_DDI_IO_A_E_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_DDI_A_E,
-		},
-	},
-	{
-		.name = "DDI B IO power well",
-		.domains = SKL_DISPLAY_DDI_IO_B_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_DDI_B,
-		},
-	},
-	{
-		.name = "DDI C IO power well",
-		.domains = SKL_DISPLAY_DDI_IO_C_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_DDI_C,
-		},
-	},
-	{
-		.name = "DDI D IO power well",
-		.domains = SKL_DISPLAY_DDI_IO_D_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_DDI_D,
-		},
-	},
-};
-
-static const struct i915_power_well_desc bxt_power_wells[] = {
-	{
-		.name = "always-on",
-		.always_on = true,
-		.domains = POWER_DOMAIN_MASK,
-		.ops = &i9xx_always_on_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-	},
-	{
-		.name = "power well 1",
-		/* Handled by the DMC firmware */
-		.always_on = true,
-		.domains = 0,
-		.ops = &hsw_power_well_ops,
-		.id = SKL_DISP_PW_1,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
-			.hsw.has_fuses = true,
-		},
-	},
-	{
-		.name = "DC off",
-		.domains = BXT_DISPLAY_DC_OFF_POWER_DOMAINS,
-		.ops = &gen9_dc_off_power_well_ops,
-		.id = SKL_DISP_DC_OFF,
-	},
-	{
-		.name = "power well 2",
-		.domains = BXT_DISPLAY_POWERWELL_2_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = SKL_DISP_PW_2,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_PW_2,
-			.hsw.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
-			.hsw.has_vga = true,
-			.hsw.has_fuses = true,
-		},
-	},
-	{
-		.name = "dpio-common-a",
-		.domains = BXT_DPIO_CMN_A_POWER_DOMAINS,
-		.ops = &bxt_dpio_cmn_power_well_ops,
-		.id = BXT_DISP_PW_DPIO_CMN_A,
-		{
-			.bxt.phy = DPIO_PHY1,
-		},
-	},
-	{
-		.name = "dpio-common-bc",
-		.domains = BXT_DPIO_CMN_BC_POWER_DOMAINS,
-		.ops = &bxt_dpio_cmn_power_well_ops,
-		.id = VLV_DISP_PW_DPIO_CMN_BC,
-		{
-			.bxt.phy = DPIO_PHY0,
-		},
-	},
-};
-
-static const struct i915_power_well_desc glk_power_wells[] = {
-	{
-		.name = "always-on",
-		.always_on = true,
-		.domains = POWER_DOMAIN_MASK,
-		.ops = &i9xx_always_on_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-	},
-	{
-		.name = "power well 1",
-		/* Handled by the DMC firmware */
-		.always_on = true,
-		.domains = 0,
-		.ops = &hsw_power_well_ops,
-		.id = SKL_DISP_PW_1,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
-			.hsw.has_fuses = true,
-		},
-	},
-	{
-		.name = "DC off",
-		.domains = GLK_DISPLAY_DC_OFF_POWER_DOMAINS,
-		.ops = &gen9_dc_off_power_well_ops,
-		.id = SKL_DISP_DC_OFF,
-	},
-	{
-		.name = "power well 2",
-		.domains = GLK_DISPLAY_POWERWELL_2_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = SKL_DISP_PW_2,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_PW_2,
-			.hsw.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
-			.hsw.has_vga = true,
-			.hsw.has_fuses = true,
-		},
-	},
-	{
-		.name = "dpio-common-a",
-		.domains = GLK_DPIO_CMN_A_POWER_DOMAINS,
-		.ops = &bxt_dpio_cmn_power_well_ops,
-		.id = BXT_DISP_PW_DPIO_CMN_A,
-		{
-			.bxt.phy = DPIO_PHY1,
-		},
-	},
-	{
-		.name = "dpio-common-b",
-		.domains = GLK_DPIO_CMN_B_POWER_DOMAINS,
-		.ops = &bxt_dpio_cmn_power_well_ops,
-		.id = VLV_DISP_PW_DPIO_CMN_BC,
-		{
-			.bxt.phy = DPIO_PHY0,
-		},
-	},
-	{
-		.name = "dpio-common-c",
-		.domains = GLK_DPIO_CMN_C_POWER_DOMAINS,
-		.ops = &bxt_dpio_cmn_power_well_ops,
-		.id = GLK_DISP_PW_DPIO_CMN_C,
-		{
-			.bxt.phy = DPIO_PHY2,
-		},
-	},
-	{
-		.name = "AUX A",
-		.domains = GLK_DISPLAY_AUX_A_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = GLK_PW_CTL_IDX_AUX_A,
-		},
-	},
-	{
-		.name = "AUX B",
-		.domains = GLK_DISPLAY_AUX_B_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = GLK_PW_CTL_IDX_AUX_B,
-		},
-	},
-	{
-		.name = "AUX C",
-		.domains = GLK_DISPLAY_AUX_C_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = GLK_PW_CTL_IDX_AUX_C,
-		},
-	},
-	{
-		.name = "DDI A IO power well",
-		.domains = GLK_DISPLAY_DDI_IO_A_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = GLK_PW_CTL_IDX_DDI_A,
-		},
-	},
-	{
-		.name = "DDI B IO power well",
-		.domains = GLK_DISPLAY_DDI_IO_B_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_DDI_B,
-		},
-	},
-	{
-		.name = "DDI C IO power well",
-		.domains = GLK_DISPLAY_DDI_IO_C_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_DDI_C,
-		},
-	},
-};
-
 static const struct i915_power_well_regs icl_aux_power_well_regs = {
 	.bios	= ICL_PWR_WELL_CTL_AUX1,
 	.driver	= ICL_PWR_WELL_CTL_AUX2,
 	.debug	= ICL_PWR_WELL_CTL_AUX4,
 };
 
-static const struct i915_power_well_ops icl_aux_power_well_ops = {
+const struct i915_power_well_ops icl_aux_power_well_ops = {
 	.regs = &icl_aux_power_well_regs,
 	.sync_hw = hsw_power_well_sync_hw,
 	.enable = icl_aux_power_well_enable,
@@ -3803,7 +2522,7 @@ static const struct i915_power_well_regs icl_ddi_power_well_regs = {
 	.debug	= ICL_PWR_WELL_CTL_DDI4,
 };
 
-static const struct i915_power_well_ops icl_ddi_power_well_ops = {
+const struct i915_power_well_ops icl_ddi_power_well_ops = {
 	.regs = &icl_ddi_power_well_regs,
 	.sync_hw = hsw_power_well_sync_hw,
 	.enable = hsw_power_well_enable,
@@ -3811,219 +2530,6 @@ static const struct i915_power_well_ops icl_ddi_power_well_ops = {
 	.is_enabled = hsw_power_well_enabled,
 };
 
-static const struct i915_power_well_desc icl_power_wells[] = {
-	{
-		.name = "always-on",
-		.always_on = true,
-		.domains = POWER_DOMAIN_MASK,
-		.ops = &i9xx_always_on_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-	},
-	{
-		.name = "power well 1",
-		/* Handled by the DMC firmware */
-		.always_on = true,
-		.domains = 0,
-		.ops = &hsw_power_well_ops,
-		.id = SKL_DISP_PW_1,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
-			.hsw.has_fuses = true,
-		},
-	},
-	{
-		.name = "DC off",
-		.domains = ICL_DISPLAY_DC_OFF_POWER_DOMAINS,
-		.ops = &gen9_dc_off_power_well_ops,
-		.id = SKL_DISP_DC_OFF,
-	},
-	{
-		.name = "power well 2",
-		.domains = ICL_PW_2_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = SKL_DISP_PW_2,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
-			.hsw.has_fuses = true,
-		},
-	},
-	{
-		.name = "power well 3",
-		.domains = ICL_PW_3_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = ICL_DISP_PW_3,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
-			.hsw.irq_pipe_mask = BIT(PIPE_B),
-			.hsw.has_vga = true,
-			.hsw.has_fuses = true,
-		},
-	},
-	{
-		.name = "DDI A IO",
-		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
-		},
-	},
-	{
-		.name = "DDI B IO",
-		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
-		},
-	},
-	{
-		.name = "DDI C IO",
-		.domains = ICL_DDI_IO_C_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_C,
-		},
-	},
-	{
-		.name = "DDI D IO",
-		.domains = ICL_DDI_IO_D_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_D,
-		},
-	},
-	{
-		.name = "DDI E IO",
-		.domains = ICL_DDI_IO_E_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_E,
-		},
-	},
-	{
-		.name = "DDI F IO",
-		.domains = ICL_DDI_IO_F_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_F,
-		},
-	},
-	{
-		.name = "AUX A",
-		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
-		},
-	},
-	{
-		.name = "AUX B",
-		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
-		},
-	},
-	{
-		.name = "AUX C TC1",
-		.domains = ICL_AUX_C_TC1_IO_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
-			.hsw.is_tc_tbt = false,
-		},
-	},
-	{
-		.name = "AUX D TC2",
-		.domains = ICL_AUX_D_TC2_IO_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_D,
-			.hsw.is_tc_tbt = false,
-		},
-	},
-	{
-		.name = "AUX E TC3",
-		.domains = ICL_AUX_E_TC3_IO_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_E,
-			.hsw.is_tc_tbt = false,
-		},
-	},
-	{
-		.name = "AUX F TC4",
-		.domains = ICL_AUX_F_TC4_IO_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_F,
-			.hsw.is_tc_tbt = false,
-		},
-	},
-	{
-		.name = "AUX C TBT1",
-		.domains = ICL_AUX_C_TBT1_IO_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT1,
-			.hsw.is_tc_tbt = true,
-		},
-	},
-	{
-		.name = "AUX D TBT2",
-		.domains = ICL_AUX_D_TBT2_IO_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT2,
-			.hsw.is_tc_tbt = true,
-		},
-	},
-	{
-		.name = "AUX E TBT3",
-		.domains = ICL_AUX_E_TBT3_IO_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT3,
-			.hsw.is_tc_tbt = true,
-		},
-	},
-	{
-		.name = "AUX F TBT4",
-		.domains = ICL_AUX_F_TBT4_IO_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT4,
-			.hsw.is_tc_tbt = true,
-		},
-	},
-	{
-		.name = "power well 4",
-		.domains = ICL_PW_4_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
-			.hsw.has_fuses = true,
-			.hsw.irq_pipe_mask = BIT(PIPE_C),
-		},
-	},
-};
-
 static void
 tgl_tc_cold_request(struct drm_i915_private *i915, bool block)
 {
@@ -4101,878 +2607,13 @@ tgl_tc_cold_off_power_well_is_enabled(struct drm_i915_private *dev_priv,
 	return power_well->count;
 }
 
-static const struct i915_power_well_ops tgl_tc_cold_off_ops = {
+const struct i915_power_well_ops tgl_tc_cold_off_ops = {
 	.sync_hw = tgl_tc_cold_off_power_well_sync_hw,
 	.enable = tgl_tc_cold_off_power_well_enable,
 	.disable = tgl_tc_cold_off_power_well_disable,
 	.is_enabled = tgl_tc_cold_off_power_well_is_enabled,
 };
 
-static const struct i915_power_well_desc tgl_power_wells[] = {
-	{
-		.name = "always-on",
-		.always_on = true,
-		.domains = POWER_DOMAIN_MASK,
-		.ops = &i9xx_always_on_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-	},
-	{
-		.name = "power well 1",
-		/* Handled by the DMC firmware */
-		.always_on = true,
-		.domains = 0,
-		.ops = &hsw_power_well_ops,
-		.id = SKL_DISP_PW_1,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
-			.hsw.has_fuses = true,
-		},
-	},
-	{
-		.name = "DC off",
-		.domains = TGL_DISPLAY_DC_OFF_POWER_DOMAINS,
-		.ops = &gen9_dc_off_power_well_ops,
-		.id = SKL_DISP_DC_OFF,
-	},
-	{
-		.name = "power well 2",
-		.domains = TGL_PW_2_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = SKL_DISP_PW_2,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
-			.hsw.has_fuses = true,
-		},
-	},
-	{
-		.name = "power well 3",
-		.domains = TGL_PW_3_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = ICL_DISP_PW_3,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
-			.hsw.irq_pipe_mask = BIT(PIPE_B),
-			.hsw.has_vga = true,
-			.hsw.has_fuses = true,
-		},
-	},
-	{
-		.name = "DDI A IO",
-		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
-		}
-	},
-	{
-		.name = "DDI B IO",
-		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
-		}
-	},
-	{
-		.name = "DDI C IO",
-		.domains = ICL_DDI_IO_C_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_C,
-		}
-	},
-	{
-		.name = "DDI IO TC1",
-		.domains = TGL_DDI_IO_TC1_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
-		},
-	},
-	{
-		.name = "DDI IO TC2",
-		.domains = TGL_DDI_IO_TC2_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
-		},
-	},
-	{
-		.name = "DDI IO TC3",
-		.domains = TGL_DDI_IO_TC3_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC3,
-		},
-	},
-	{
-		.name = "DDI IO TC4",
-		.domains = TGL_DDI_IO_TC4_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC4,
-		},
-	},
-	{
-		.name = "DDI IO TC5",
-		.domains = TGL_DDI_IO_TC5_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC5,
-		},
-	},
-	{
-		.name = "DDI IO TC6",
-		.domains = TGL_DDI_IO_TC6_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC6,
-		},
-	},
-	{
-		.name = "TC cold off",
-		.domains = TGL_TC_COLD_OFF_POWER_DOMAINS,
-		.ops = &tgl_tc_cold_off_ops,
-		.id = TGL_DISP_PW_TC_COLD_OFF,
-	},
-	{
-		.name = "AUX A",
-		.domains = TGL_AUX_A_IO_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
-		},
-	},
-	{
-		.name = "AUX B",
-		.domains = TGL_AUX_B_IO_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
-		},
-	},
-	{
-		.name = "AUX C",
-		.domains = TGL_AUX_C_IO_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
-		},
-	},
-	{
-		.name = "AUX USBC1",
-		.domains = TGL_AUX_IO_USBC1_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
-			.hsw.is_tc_tbt = false,
-		},
-	},
-	{
-		.name = "AUX USBC2",
-		.domains = TGL_AUX_IO_USBC2_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
-			.hsw.is_tc_tbt = false,
-		},
-	},
-	{
-		.name = "AUX USBC3",
-		.domains = TGL_AUX_IO_USBC3_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC3,
-			.hsw.is_tc_tbt = false,
-		},
-	},
-	{
-		.name = "AUX USBC4",
-		.domains = TGL_AUX_IO_USBC4_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC4,
-			.hsw.is_tc_tbt = false,
-		},
-	},
-	{
-		.name = "AUX USBC5",
-		.domains = TGL_AUX_IO_USBC5_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC5,
-			.hsw.is_tc_tbt = false,
-		},
-	},
-	{
-		.name = "AUX USBC6",
-		.domains = TGL_AUX_IO_USBC6_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC6,
-			.hsw.is_tc_tbt = false,
-		},
-	},
-	{
-		.name = "AUX TBT1",
-		.domains = TGL_AUX_IO_TBT1_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1,
-			.hsw.is_tc_tbt = true,
-		},
-	},
-	{
-		.name = "AUX TBT2",
-		.domains = TGL_AUX_IO_TBT2_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2,
-			.hsw.is_tc_tbt = true,
-		},
-	},
-	{
-		.name = "AUX TBT3",
-		.domains = TGL_AUX_IO_TBT3_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3,
-			.hsw.is_tc_tbt = true,
-		},
-	},
-	{
-		.name = "AUX TBT4",
-		.domains = TGL_AUX_IO_TBT4_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4,
-			.hsw.is_tc_tbt = true,
-		},
-	},
-	{
-		.name = "AUX TBT5",
-		.domains = TGL_AUX_IO_TBT5_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT5,
-			.hsw.is_tc_tbt = true,
-		},
-	},
-	{
-		.name = "AUX TBT6",
-		.domains = TGL_AUX_IO_TBT6_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT6,
-			.hsw.is_tc_tbt = true,
-		},
-	},
-	{
-		.name = "power well 4",
-		.domains = TGL_PW_4_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
-			.hsw.has_fuses = true,
-			.hsw.irq_pipe_mask = BIT(PIPE_C),
-		}
-	},
-	{
-		.name = "power well 5",
-		.domains = TGL_PW_5_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_PW_5,
-			.hsw.has_fuses = true,
-			.hsw.irq_pipe_mask = BIT(PIPE_D),
-		},
-	},
-};
-
-static const struct i915_power_well_desc rkl_power_wells[] = {
-	{
-		.name = "always-on",
-		.always_on = true,
-		.domains = POWER_DOMAIN_MASK,
-		.ops = &i9xx_always_on_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-	},
-	{
-		.name = "power well 1",
-		/* Handled by the DMC firmware */
-		.always_on = true,
-		.domains = 0,
-		.ops = &hsw_power_well_ops,
-		.id = SKL_DISP_PW_1,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
-			.hsw.has_fuses = true,
-		},
-	},
-	{
-		.name = "DC off",
-		.domains = RKL_DISPLAY_DC_OFF_POWER_DOMAINS,
-		.ops = &gen9_dc_off_power_well_ops,
-		.id = SKL_DISP_DC_OFF,
-	},
-	{
-		.name = "power well 3",
-		.domains = RKL_PW_3_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = ICL_DISP_PW_3,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
-			.hsw.irq_pipe_mask = BIT(PIPE_B),
-			.hsw.has_vga = true,
-			.hsw.has_fuses = true,
-		},
-	},
-	{
-		.name = "power well 4",
-		.domains = RKL_PW_4_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
-			.hsw.has_fuses = true,
-			.hsw.irq_pipe_mask = BIT(PIPE_C),
-		}
-	},
-	{
-		.name = "DDI A IO",
-		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
-		}
-	},
-	{
-		.name = "DDI B IO",
-		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
-		}
-	},
-	{
-		.name = "DDI IO TC1",
-		.domains = TGL_DDI_IO_TC1_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
-		},
-	},
-	{
-		.name = "DDI IO TC2",
-		.domains = TGL_DDI_IO_TC2_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
-		},
-	},
-	{
-		.name = "AUX A",
-		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
-		},
-	},
-	{
-		.name = "AUX B",
-		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
-		},
-	},
-	{
-		.name = "AUX USBC1",
-		.domains = TGL_AUX_IO_USBC1_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
-		},
-	},
-	{
-		.name = "AUX USBC2",
-		.domains = TGL_AUX_IO_USBC2_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
-		},
-	},
-};
-
-static const struct i915_power_well_desc dg1_power_wells[] = {
-	{
-		.name = "always-on",
-		.always_on = true,
-		.domains = POWER_DOMAIN_MASK,
-		.ops = &i9xx_always_on_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-	},
-	{
-		.name = "power well 1",
-		/* Handled by the DMC firmware */
-		.always_on = true,
-		.domains = 0,
-		.ops = &hsw_power_well_ops,
-		.id = SKL_DISP_PW_1,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
-			.hsw.has_fuses = true,
-		},
-	},
-	{
-		.name = "DC off",
-		.domains = DG1_DISPLAY_DC_OFF_POWER_DOMAINS,
-		.ops = &gen9_dc_off_power_well_ops,
-		.id = SKL_DISP_DC_OFF,
-	},
-	{
-		.name = "power well 2",
-		.domains = DG1_PW_2_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = SKL_DISP_PW_2,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
-			.hsw.has_fuses = true,
-		},
-	},
-	{
-		.name = "power well 3",
-		.domains = DG1_PW_3_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = ICL_DISP_PW_3,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
-			.hsw.irq_pipe_mask = BIT(PIPE_B),
-			.hsw.has_vga = true,
-			.hsw.has_fuses = true,
-		},
-	},
-	{
-		.name = "DDI A IO",
-		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
-		}
-	},
-	{
-		.name = "DDI B IO",
-		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
-		}
-	},
-	{
-		.name = "DDI IO TC1",
-		.domains = TGL_DDI_IO_TC1_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
-		},
-	},
-	{
-		.name = "DDI IO TC2",
-		.domains = TGL_DDI_IO_TC2_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
-		},
-	},
-	{
-		.name = "AUX A",
-		.domains = TGL_AUX_A_IO_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
-		},
-	},
-	{
-		.name = "AUX B",
-		.domains = TGL_AUX_B_IO_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
-		},
-	},
-	{
-		.name = "AUX USBC1",
-		.domains = TGL_AUX_IO_USBC1_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
-			.hsw.is_tc_tbt = false,
-		},
-	},
-	{
-		.name = "AUX USBC2",
-		.domains = TGL_AUX_IO_USBC2_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
-			.hsw.is_tc_tbt = false,
-		},
-	},
-	{
-		.name = "power well 4",
-		.domains = TGL_PW_4_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
-			.hsw.has_fuses = true,
-			.hsw.irq_pipe_mask = BIT(PIPE_C),
-		}
-	},
-	{
-		.name = "power well 5",
-		.domains = TGL_PW_5_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_PW_5,
-			.hsw.has_fuses = true,
-			.hsw.irq_pipe_mask = BIT(PIPE_D),
-		},
-	},
-};
-
-static const struct i915_power_well_desc xelpd_power_wells[] = {
-	{
-		.name = "always-on",
-		.always_on = true,
-		.domains = POWER_DOMAIN_MASK,
-		.ops = &i9xx_always_on_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-	},
-	{
-		.name = "power well 1",
-		/* Handled by the DMC firmware */
-		.always_on = true,
-		.domains = 0,
-		.ops = &hsw_power_well_ops,
-		.id = SKL_DISP_PW_1,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
-			.hsw.has_fuses = true,
-		},
-	},
-	{
-		.name = "DC off",
-		.domains = XELPD_DISPLAY_DC_OFF_POWER_DOMAINS,
-		.ops = &gen9_dc_off_power_well_ops,
-		.id = SKL_DISP_DC_OFF,
-	},
-	{
-		.name = "power well 2",
-		.domains = XELPD_PW_2_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = SKL_DISP_PW_2,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
-			.hsw.has_vga = true,
-			.hsw.has_fuses = true,
-		},
-	},
-	{
-		.name = "power well A",
-		.domains = XELPD_PW_A_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = XELPD_PW_CTL_IDX_PW_A,
-			.hsw.irq_pipe_mask = BIT(PIPE_A),
-			.hsw.has_fuses = true,
-		},
-	},
-	{
-		.name = "power well B",
-		.domains = XELPD_PW_B_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = XELPD_PW_CTL_IDX_PW_B,
-			.hsw.irq_pipe_mask = BIT(PIPE_B),
-			.hsw.has_fuses = true,
-		},
-	},
-	{
-		.name = "power well C",
-		.domains = XELPD_PW_C_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = XELPD_PW_CTL_IDX_PW_C,
-			.hsw.irq_pipe_mask = BIT(PIPE_C),
-			.hsw.has_fuses = true,
-		},
-	},
-	{
-		.name = "power well D",
-		.domains = XELPD_PW_D_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = XELPD_PW_CTL_IDX_PW_D,
-			.hsw.irq_pipe_mask = BIT(PIPE_D),
-			.hsw.has_fuses = true,
-		},
-	},
-	{
-		.name = "DDI A IO",
-		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
-		}
-	},
-	{
-		.name = "DDI B IO",
-		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
-		}
-	},
-	{
-		.name = "DDI C IO",
-		.domains = ICL_DDI_IO_C_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_C,
-		}
-	},
-	{
-		.name = "DDI IO D_XELPD",
-		.domains = XELPD_DDI_IO_D_XELPD_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = XELPD_PW_CTL_IDX_DDI_D,
-		}
-	},
-	{
-		.name = "DDI IO E_XELPD",
-		.domains = XELPD_DDI_IO_E_XELPD_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = XELPD_PW_CTL_IDX_DDI_E,
-		}
-	},
-	{
-		.name = "DDI IO TC1",
-		.domains = XELPD_DDI_IO_TC1_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
-		}
-	},
-	{
-		.name = "DDI IO TC2",
-		.domains = XELPD_DDI_IO_TC2_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
-		}
-	},
-	{
-		.name = "DDI IO TC3",
-		.domains = XELPD_DDI_IO_TC3_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC3,
-		}
-	},
-	{
-		.name = "DDI IO TC4",
-		.domains = XELPD_DDI_IO_TC4_POWER_DOMAINS,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC4,
-		}
-	},
-	{
-		.name = "AUX A",
-		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
-			.hsw.fixed_enable_delay = 600,
-		},
-	},
-	{
-		.name = "AUX B",
-		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
-			.hsw.fixed_enable_delay = 600,
-		},
-	},
-	{
-		.name = "AUX C",
-		.domains = TGL_AUX_C_IO_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
-			.hsw.fixed_enable_delay = 600,
-		},
-	},
-	{
-		.name = "AUX D_XELPD",
-		.domains = XELPD_AUX_IO_D_XELPD_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = XELPD_PW_CTL_IDX_AUX_D,
-			.hsw.fixed_enable_delay = 600,
-		},
-	},
-	{
-		.name = "AUX E_XELPD",
-		.domains = XELPD_AUX_IO_E_XELPD_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = XELPD_PW_CTL_IDX_AUX_E,
-		},
-	},
-	{
-		.name = "AUX USBC1",
-		.domains = XELPD_AUX_IO_USBC1_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
-			.hsw.fixed_enable_delay = 600,
-		},
-	},
-	{
-		.name = "AUX USBC2",
-		.domains = XELPD_AUX_IO_USBC2_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
-		},
-	},
-	{
-		.name = "AUX USBC3",
-		.domains = XELPD_AUX_IO_USBC3_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC3,
-		},
-	},
-	{
-		.name = "AUX USBC4",
-		.domains = XELPD_AUX_IO_USBC4_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC4,
-		},
-	},
-	{
-		.name = "AUX TBT1",
-		.domains = XELPD_AUX_IO_TBT1_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1,
-			.hsw.is_tc_tbt = true,
-		},
-	},
-	{
-		.name = "AUX TBT2",
-		.domains = XELPD_AUX_IO_TBT2_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2,
-			.hsw.is_tc_tbt = true,
-		},
-	},
-	{
-		.name = "AUX TBT3",
-		.domains = XELPD_AUX_IO_TBT3_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3,
-			.hsw.is_tc_tbt = true,
-		},
-	},
-	{
-		.name = "AUX TBT4",
-		.domains = XELPD_AUX_IO_TBT4_POWER_DOMAINS,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4,
-			.hsw.is_tc_tbt = true,
-		},
-	},
-};
-
 static int
 sanitize_disable_power_well_option(const struct drm_i915_private *dev_priv,
 				   int disable_power_well)
@@ -5051,57 +2692,6 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
 	return mask;
 }
 
-static int
-__set_power_wells(struct i915_power_domains *power_domains,
-		  const struct i915_power_well_desc *power_well_descs,
-		  int power_well_descs_sz, u64 skip_mask)
-{
-	struct drm_i915_private *i915 = container_of(power_domains,
-						     struct drm_i915_private,
-						     power_domains);
-	u64 power_well_ids = 0;
-	int power_well_count = 0;
-	int i, plt_idx = 0;
-
-	for (i = 0; i < power_well_descs_sz; i++)
-		if (!(BIT_ULL(power_well_descs[i].id) & skip_mask))
-			power_well_count++;
-
-	power_domains->power_well_count = power_well_count;
-	power_domains->power_wells =
-				kcalloc(power_well_count,
-					sizeof(*power_domains->power_wells),
-					GFP_KERNEL);
-	if (!power_domains->power_wells)
-		return -ENOMEM;
-
-	for (i = 0; i < power_well_descs_sz; i++) {
-		enum i915_power_well_id id = power_well_descs[i].id;
-
-		if (BIT_ULL(id) & skip_mask)
-			continue;
-
-		power_domains->power_wells[plt_idx++].desc =
-			&power_well_descs[i];
-
-		if (id == DISP_PW_ID_NONE)
-			continue;
-
-		drm_WARN_ON(&i915->drm, id >= sizeof(power_well_ids) * 8);
-		drm_WARN_ON(&i915->drm, power_well_ids & BIT_ULL(id));
-		power_well_ids |= BIT_ULL(id);
-	}
-
-	return 0;
-}
-
-#define set_power_wells_mask(power_domains, __power_well_descs, skip_mask) \
-	__set_power_wells(power_domains, __power_well_descs, \
-			  ARRAY_SIZE(__power_well_descs), skip_mask)
-
-#define set_power_wells(power_domains, __power_well_descs) \
-	set_power_wells_mask(power_domains, __power_well_descs, 0)
-
 /**
  * intel_power_domains_init - initializes the power domain structures
  * @dev_priv: i915 device instance
@@ -5112,7 +2702,6 @@ __set_power_wells(struct i915_power_domains *power_domains,
 int intel_power_domains_init(struct drm_i915_private *dev_priv)
 {
 	struct i915_power_domains *power_domains = &dev_priv->power_domains;
-	int err;
 
 	dev_priv->params.disable_power_well =
 		sanitize_disable_power_well_option(dev_priv,
@@ -5130,47 +2719,7 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
 	INIT_DELAYED_WORK(&power_domains->async_put_work,
 			  intel_display_power_put_async_work);
 
-	/*
-	 * The enabling order will be from lower to higher indexed wells,
-	 * the disabling order is reversed.
-	 */
-	if (!HAS_DISPLAY(dev_priv)) {
-		power_domains->power_well_count = 0;
-		err = 0;
-	} else if (DISPLAY_VER(dev_priv) >= 13) {
-		err = set_power_wells(power_domains, xelpd_power_wells);
-	} else if (IS_DG1(dev_priv)) {
-		err = set_power_wells(power_domains, dg1_power_wells);
-	} else if (IS_ALDERLAKE_S(dev_priv)) {
-		err = set_power_wells_mask(power_domains, tgl_power_wells,
-					   BIT_ULL(TGL_DISP_PW_TC_COLD_OFF));
-	} else if (IS_ROCKETLAKE(dev_priv)) {
-		err = set_power_wells(power_domains, rkl_power_wells);
-	} else if (DISPLAY_VER(dev_priv) == 12) {
-		err = set_power_wells(power_domains, tgl_power_wells);
-	} else if (DISPLAY_VER(dev_priv) == 11) {
-		err = set_power_wells(power_domains, icl_power_wells);
-	} else if (IS_GEMINILAKE(dev_priv)) {
-		err = set_power_wells(power_domains, glk_power_wells);
-	} else if (IS_BROXTON(dev_priv)) {
-		err = set_power_wells(power_domains, bxt_power_wells);
-	} else if (DISPLAY_VER(dev_priv) == 9) {
-		err = set_power_wells(power_domains, skl_power_wells);
-	} else if (IS_CHERRYVIEW(dev_priv)) {
-		err = set_power_wells(power_domains, chv_power_wells);
-	} else if (IS_BROADWELL(dev_priv)) {
-		err = set_power_wells(power_domains, bdw_power_wells);
-	} else if (IS_HASWELL(dev_priv)) {
-		err = set_power_wells(power_domains, hsw_power_wells);
-	} else if (IS_VALLEYVIEW(dev_priv)) {
-		err = set_power_wells(power_domains, vlv_power_wells);
-	} else if (IS_I830(dev_priv)) {
-		err = set_power_wells(power_domains, i830_power_wells);
-	} else {
-		err = set_power_wells(power_domains, i9xx_always_on_power_well);
-	}
-
-	return err;
+	return intel_init_power_wells(power_domains);
 }
 
 /**
@@ -5181,7 +2730,7 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
  */
 void intel_power_domains_cleanup(struct drm_i915_private *dev_priv)
 {
-	kfree(dev_priv->power_domains.power_wells);
+	intel_cleanup_power_wells(&dev_priv->power_domains);
 }
 
 static void intel_power_domains_sync_hw(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index b30e6133c66d0..a0e68ae691021 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -197,6 +197,7 @@ struct intel_display_power_domain_set {
 	for ((domain) = 0; (domain) < POWER_DOMAIN_NUM; (domain)++)	\
 		for_each_if(BIT_ULL(domain) & (mask))
 
+/* intel_display_power.c */
 int intel_power_domains_init(struct drm_i915_private *dev_priv);
 void intel_power_domains_cleanup(struct drm_i915_private *dev_priv);
 void intel_power_domains_init_hw(struct drm_i915_private *dev_priv, bool resume);
@@ -316,4 +317,8 @@ void chv_phy_powergate_lanes(struct intel_encoder *encoder,
 bool chv_phy_powergate_ch(struct drm_i915_private *dev_priv, enum dpio_phy phy,
 			  enum dpio_channel ch, bool override);
 
+/* intel_display_power_map.c */
+const char *
+intel_display_power_domain_str(enum intel_display_power_domain domain);
+
 #endif /* __INTEL_DISPLAY_POWER_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_internal.h b/drivers/gpu/drm/i915/display/intel_display_power_internal.h
new file mode 100644
index 0000000000000..3fc7c7d0bc9e9
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_power_internal.h
@@ -0,0 +1,93 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_DISPLAY_POWER_INTERNAL_H__
+#define __INTEL_DISPLAY_POWER_INTERNAL_H__
+
+#include "i915_reg_defs.h"
+
+#include "intel_display.h"
+#include "intel_display_power.h"
+
+struct i915_power_well_regs;
+
+/* Power well structure for haswell */
+struct i915_power_well_desc {
+	const char *name;
+	bool always_on;
+	u64 domains;
+	/* unique identifier for this power well */
+	enum i915_power_well_id id;
+	/*
+	 * Arbitraty data associated with this power well. Platform and power
+	 * well specific.
+	 */
+	union {
+		struct {
+			/*
+			 * request/status flag index in the PUNIT power well
+			 * control/status registers.
+			 */
+			u8 idx;
+		} vlv;
+		struct {
+			enum dpio_phy phy;
+		} bxt;
+		struct {
+			/*
+			 * request/status flag index in the power well
+			 * constrol/status registers.
+			 */
+			u8 idx;
+			/* Mask of pipes whose IRQ logic is backed by the pw */
+			u8 irq_pipe_mask;
+			/*
+			 * Instead of waiting for the status bit to ack enables,
+			 * just wait a specific amount of time and then consider
+			 * the well enabled.
+			 */
+			u16 fixed_enable_delay;
+			/* The pw is backing the VGA functionality */
+			bool has_vga:1;
+			bool has_fuses:1;
+			/*
+			 * The pw is for an ICL+ TypeC PHY port in
+			 * Thunderbolt mode.
+			 */
+			bool is_tc_tbt:1;
+		} hsw;
+	};
+	const struct i915_power_well_ops *ops;
+};
+
+struct i915_power_well {
+	const struct i915_power_well_desc *desc;
+	/* power well enable/disable usage count */
+	int count;
+	/* cached hw enabled state */
+	bool hw_enabled;
+};
+
+/* intel_display_power.c */
+extern const struct i915_power_well_ops i9xx_always_on_power_well_ops;
+extern const struct i915_power_well_ops chv_pipe_power_well_ops;
+extern const struct i915_power_well_ops chv_dpio_cmn_power_well_ops;
+extern const struct i915_power_well_ops i830_pipes_power_well_ops;
+extern const struct i915_power_well_ops hsw_power_well_ops;
+extern const struct i915_power_well_ops hsw_power_well_ops;
+extern const struct i915_power_well_ops gen9_dc_off_power_well_ops;
+extern const struct i915_power_well_ops bxt_dpio_cmn_power_well_ops;
+extern const struct i915_power_well_ops vlv_display_power_well_ops;
+extern const struct i915_power_well_ops vlv_dpio_cmn_power_well_ops;
+extern const struct i915_power_well_ops vlv_dpio_power_well_ops;
+extern const struct i915_power_well_ops icl_ddi_power_well_ops;
+extern const struct i915_power_well_ops icl_aux_power_well_ops;
+extern const struct i915_power_well_ops tgl_tc_cold_off_ops;
+
+/* intel_display_power_map.c */
+int intel_init_power_wells(struct i915_power_domains *power_domains);
+void intel_cleanup_power_wells(struct i915_power_domains *power_domains);
+
+#endif
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
new file mode 100644
index 0000000000000..e8732f6e85098
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -0,0 +1,2277 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#include "i915_drv.h"
+
+#include "vlv_sideband_reg.h"
+
+#include "intel_display_power.h"
+#include "intel_display_power_internal.h"
+
+#define POWER_DOMAIN_MASK (GENMASK_ULL(POWER_DOMAIN_NUM - 1, 0))
+
+const char *
+intel_display_power_domain_str(enum intel_display_power_domain domain)
+{
+	switch (domain) {
+	case POWER_DOMAIN_DISPLAY_CORE:
+		return "DISPLAY_CORE";
+	case POWER_DOMAIN_PIPE_A:
+		return "PIPE_A";
+	case POWER_DOMAIN_PIPE_B:
+		return "PIPE_B";
+	case POWER_DOMAIN_PIPE_C:
+		return "PIPE_C";
+	case POWER_DOMAIN_PIPE_D:
+		return "PIPE_D";
+	case POWER_DOMAIN_PIPE_A_PANEL_FITTER:
+		return "PIPE_A_PANEL_FITTER";
+	case POWER_DOMAIN_PIPE_B_PANEL_FITTER:
+		return "PIPE_B_PANEL_FITTER";
+	case POWER_DOMAIN_PIPE_C_PANEL_FITTER:
+		return "PIPE_C_PANEL_FITTER";
+	case POWER_DOMAIN_PIPE_D_PANEL_FITTER:
+		return "PIPE_D_PANEL_FITTER";
+	case POWER_DOMAIN_TRANSCODER_A:
+		return "TRANSCODER_A";
+	case POWER_DOMAIN_TRANSCODER_B:
+		return "TRANSCODER_B";
+	case POWER_DOMAIN_TRANSCODER_C:
+		return "TRANSCODER_C";
+	case POWER_DOMAIN_TRANSCODER_D:
+		return "TRANSCODER_D";
+	case POWER_DOMAIN_TRANSCODER_EDP:
+		return "TRANSCODER_EDP";
+	case POWER_DOMAIN_TRANSCODER_DSI_A:
+		return "TRANSCODER_DSI_A";
+	case POWER_DOMAIN_TRANSCODER_DSI_C:
+		return "TRANSCODER_DSI_C";
+	case POWER_DOMAIN_TRANSCODER_VDSC_PW2:
+		return "TRANSCODER_VDSC_PW2";
+	case POWER_DOMAIN_PORT_DDI_A_LANES:
+		return "PORT_DDI_A_LANES";
+	case POWER_DOMAIN_PORT_DDI_B_LANES:
+		return "PORT_DDI_B_LANES";
+	case POWER_DOMAIN_PORT_DDI_C_LANES:
+		return "PORT_DDI_C_LANES";
+	case POWER_DOMAIN_PORT_DDI_D_LANES:
+		return "PORT_DDI_D_LANES";
+	case POWER_DOMAIN_PORT_DDI_E_LANES:
+		return "PORT_DDI_E_LANES";
+	case POWER_DOMAIN_PORT_DDI_F_LANES:
+		return "PORT_DDI_F_LANES";
+	case POWER_DOMAIN_PORT_DDI_G_LANES:
+		return "PORT_DDI_G_LANES";
+	case POWER_DOMAIN_PORT_DDI_H_LANES:
+		return "PORT_DDI_H_LANES";
+	case POWER_DOMAIN_PORT_DDI_I_LANES:
+		return "PORT_DDI_I_LANES";
+	case POWER_DOMAIN_PORT_DDI_A_IO:
+		return "PORT_DDI_A_IO";
+	case POWER_DOMAIN_PORT_DDI_B_IO:
+		return "PORT_DDI_B_IO";
+	case POWER_DOMAIN_PORT_DDI_C_IO:
+		return "PORT_DDI_C_IO";
+	case POWER_DOMAIN_PORT_DDI_D_IO:
+		return "PORT_DDI_D_IO";
+	case POWER_DOMAIN_PORT_DDI_E_IO:
+		return "PORT_DDI_E_IO";
+	case POWER_DOMAIN_PORT_DDI_F_IO:
+		return "PORT_DDI_F_IO";
+	case POWER_DOMAIN_PORT_DDI_G_IO:
+		return "PORT_DDI_G_IO";
+	case POWER_DOMAIN_PORT_DDI_H_IO:
+		return "PORT_DDI_H_IO";
+	case POWER_DOMAIN_PORT_DDI_I_IO:
+		return "PORT_DDI_I_IO";
+	case POWER_DOMAIN_PORT_DSI:
+		return "PORT_DSI";
+	case POWER_DOMAIN_PORT_CRT:
+		return "PORT_CRT";
+	case POWER_DOMAIN_PORT_OTHER:
+		return "PORT_OTHER";
+	case POWER_DOMAIN_VGA:
+		return "VGA";
+	case POWER_DOMAIN_AUDIO_MMIO:
+		return "AUDIO_MMIO";
+	case POWER_DOMAIN_AUDIO_PLAYBACK:
+		return "AUDIO_PLAYBACK";
+	case POWER_DOMAIN_AUX_A:
+		return "AUX_A";
+	case POWER_DOMAIN_AUX_B:
+		return "AUX_B";
+	case POWER_DOMAIN_AUX_C:
+		return "AUX_C";
+	case POWER_DOMAIN_AUX_D:
+		return "AUX_D";
+	case POWER_DOMAIN_AUX_E:
+		return "AUX_E";
+	case POWER_DOMAIN_AUX_F:
+		return "AUX_F";
+	case POWER_DOMAIN_AUX_G:
+		return "AUX_G";
+	case POWER_DOMAIN_AUX_H:
+		return "AUX_H";
+	case POWER_DOMAIN_AUX_I:
+		return "AUX_I";
+	case POWER_DOMAIN_AUX_IO_A:
+		return "AUX_IO_A";
+	case POWER_DOMAIN_AUX_C_TBT:
+		return "AUX_C_TBT";
+	case POWER_DOMAIN_AUX_D_TBT:
+		return "AUX_D_TBT";
+	case POWER_DOMAIN_AUX_E_TBT:
+		return "AUX_E_TBT";
+	case POWER_DOMAIN_AUX_F_TBT:
+		return "AUX_F_TBT";
+	case POWER_DOMAIN_AUX_G_TBT:
+		return "AUX_G_TBT";
+	case POWER_DOMAIN_AUX_H_TBT:
+		return "AUX_H_TBT";
+	case POWER_DOMAIN_AUX_I_TBT:
+		return "AUX_I_TBT";
+	case POWER_DOMAIN_GMBUS:
+		return "GMBUS";
+	case POWER_DOMAIN_INIT:
+		return "INIT";
+	case POWER_DOMAIN_MODESET:
+		return "MODESET";
+	case POWER_DOMAIN_GT_IRQ:
+		return "GT_IRQ";
+	case POWER_DOMAIN_DC_OFF:
+		return "DC_OFF";
+	case POWER_DOMAIN_TC_COLD_OFF:
+		return "TC_COLD_OFF";
+	default:
+		MISSING_CASE(domain);
+		return "?";
+	}
+}
+
+static const struct i915_power_well_desc i9xx_always_on_power_well[] = {
+	{
+		.name = "always-on",
+		.domains = POWER_DOMAIN_MASK,
+		.ops = &i9xx_always_on_power_well_ops,
+		.always_on = true,
+		.id = DISP_PW_ID_NONE,
+	},
+};
+
+#define I830_PIPES_POWER_DOMAINS (		\
+	BIT_ULL(POWER_DOMAIN_PIPE_A) |		\
+	BIT_ULL(POWER_DOMAIN_PIPE_B) |		\
+	BIT_ULL(POWER_DOMAIN_PIPE_A_PANEL_FITTER) |	\
+	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |	\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |	\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+static const struct i915_power_well_desc i830_power_wells[] = {
+	{
+		.name = "always-on",
+		.domains = POWER_DOMAIN_MASK,
+		.ops = &i9xx_always_on_power_well_ops,
+		.always_on = true,
+		.id = DISP_PW_ID_NONE,
+	}, {
+		.name = "pipes",
+		.domains = I830_PIPES_POWER_DOMAINS,
+		.ops = &i830_pipes_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+	},
+};
+
+#define HSW_DISPLAY_POWER_DOMAINS (			\
+	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_A_PANEL_FITTER) |		\
+	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |		\
+	BIT_ULL(POWER_DOMAIN_PIPE_C_PANEL_FITTER) |		\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |		\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |		\
+	BIT_ULL(POWER_DOMAIN_PORT_CRT) | /* DDI E */	\
+	BIT_ULL(POWER_DOMAIN_VGA) |				\
+	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
+	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+static const struct i915_power_well_desc hsw_power_wells[] = {
+	{
+		.name = "always-on",
+		.domains = POWER_DOMAIN_MASK,
+		.ops = &i9xx_always_on_power_well_ops,
+		.always_on = true,
+		.id = DISP_PW_ID_NONE,
+	}, {
+		.name = "display",
+		.domains = HSW_DISPLAY_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = HSW_DISP_PW_GLOBAL,
+		{
+			.hsw.idx = HSW_PW_CTL_IDX_GLOBAL,
+			.hsw.has_vga = true,
+		},
+	},
+};
+
+#define BDW_DISPLAY_POWER_DOMAINS (			\
+	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |		\
+	BIT_ULL(POWER_DOMAIN_PIPE_C_PANEL_FITTER) |		\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |		\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |		\
+	BIT_ULL(POWER_DOMAIN_PORT_CRT) | /* DDI E */	\
+	BIT_ULL(POWER_DOMAIN_VGA) |				\
+	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
+	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+static const struct i915_power_well_desc bdw_power_wells[] = {
+	{
+		.name = "always-on",
+		.domains = POWER_DOMAIN_MASK,
+		.ops = &i9xx_always_on_power_well_ops,
+		.always_on = true,
+		.id = DISP_PW_ID_NONE,
+	}, {
+		.name = "display",
+		.domains = BDW_DISPLAY_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = HSW_DISP_PW_GLOBAL,
+		{
+			.hsw.idx = HSW_PW_CTL_IDX_GLOBAL,
+			.hsw.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
+			.hsw.has_vga = true,
+		},
+	},
+};
+
+#define VLV_DISPLAY_POWER_DOMAINS (		\
+	BIT_ULL(POWER_DOMAIN_DISPLAY_CORE) |	\
+	BIT_ULL(POWER_DOMAIN_PIPE_A) |		\
+	BIT_ULL(POWER_DOMAIN_PIPE_B) |		\
+	BIT_ULL(POWER_DOMAIN_PIPE_A_PANEL_FITTER) |	\
+	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |	\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DSI) |		\
+	BIT_ULL(POWER_DOMAIN_PORT_CRT) |		\
+	BIT_ULL(POWER_DOMAIN_VGA) |			\
+	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
+	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
+	BIT_ULL(POWER_DOMAIN_GMBUS) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define VLV_DPIO_CMN_BC_POWER_DOMAINS (		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_CRT) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define VLV_DPIO_TX_B_LANES_01_POWER_DOMAINS (	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |	\
+	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define VLV_DPIO_TX_B_LANES_23_POWER_DOMAINS (	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |	\
+	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define VLV_DPIO_TX_C_LANES_01_POWER_DOMAINS (	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |	\
+	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define VLV_DPIO_TX_C_LANES_23_POWER_DOMAINS (	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |	\
+	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+static const struct i915_power_well_desc vlv_power_wells[] = {
+	{
+		.name = "always-on",
+		.domains = POWER_DOMAIN_MASK,
+		.ops = &i9xx_always_on_power_well_ops,
+		.always_on = true,
+		.id = DISP_PW_ID_NONE,
+	}, {
+		.name = "display",
+		.domains = VLV_DISPLAY_POWER_DOMAINS,
+		.ops = &vlv_display_power_well_ops,
+		.id = VLV_DISP_PW_DISP2D,
+		{
+			.vlv.idx = PUNIT_PWGT_IDX_DISP2D,
+		},
+	}, {
+		.name = "dpio-tx-b-01",
+		.domains = VLV_DPIO_TX_B_LANES_01_POWER_DOMAINS |
+			   VLV_DPIO_TX_B_LANES_23_POWER_DOMAINS |
+			   VLV_DPIO_TX_C_LANES_01_POWER_DOMAINS |
+			   VLV_DPIO_TX_C_LANES_23_POWER_DOMAINS,
+		.ops = &vlv_dpio_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.vlv.idx = PUNIT_PWGT_IDX_DPIO_TX_B_LANES_01,
+		},
+	}, {
+		.name = "dpio-tx-b-23",
+		.domains = VLV_DPIO_TX_B_LANES_01_POWER_DOMAINS |
+			   VLV_DPIO_TX_B_LANES_23_POWER_DOMAINS |
+			   VLV_DPIO_TX_C_LANES_01_POWER_DOMAINS |
+			   VLV_DPIO_TX_C_LANES_23_POWER_DOMAINS,
+		.ops = &vlv_dpio_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.vlv.idx = PUNIT_PWGT_IDX_DPIO_TX_B_LANES_23,
+		},
+	}, {
+		.name = "dpio-tx-c-01",
+		.domains = VLV_DPIO_TX_B_LANES_01_POWER_DOMAINS |
+			   VLV_DPIO_TX_B_LANES_23_POWER_DOMAINS |
+			   VLV_DPIO_TX_C_LANES_01_POWER_DOMAINS |
+			   VLV_DPIO_TX_C_LANES_23_POWER_DOMAINS,
+		.ops = &vlv_dpio_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.vlv.idx = PUNIT_PWGT_IDX_DPIO_TX_C_LANES_01,
+		},
+	}, {
+		.name = "dpio-tx-c-23",
+		.domains = VLV_DPIO_TX_B_LANES_01_POWER_DOMAINS |
+			   VLV_DPIO_TX_B_LANES_23_POWER_DOMAINS |
+			   VLV_DPIO_TX_C_LANES_01_POWER_DOMAINS |
+			   VLV_DPIO_TX_C_LANES_23_POWER_DOMAINS,
+		.ops = &vlv_dpio_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.vlv.idx = PUNIT_PWGT_IDX_DPIO_TX_C_LANES_23,
+		},
+	}, {
+		.name = "dpio-common",
+		.domains = VLV_DPIO_CMN_BC_POWER_DOMAINS,
+		.ops = &vlv_dpio_cmn_power_well_ops,
+		.id = VLV_DISP_PW_DPIO_CMN_BC,
+		{
+			.vlv.idx = PUNIT_PWGT_IDX_DPIO_CMN_BC,
+		},
+	},
+};
+
+#define CHV_DISPLAY_POWER_DOMAINS (		\
+	BIT_ULL(POWER_DOMAIN_DISPLAY_CORE) |	\
+	BIT_ULL(POWER_DOMAIN_PIPE_A) |		\
+	BIT_ULL(POWER_DOMAIN_PIPE_B) |		\
+	BIT_ULL(POWER_DOMAIN_PIPE_C) |		\
+	BIT_ULL(POWER_DOMAIN_PIPE_A_PANEL_FITTER) |	\
+	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
+	BIT_ULL(POWER_DOMAIN_PIPE_C_PANEL_FITTER) |	\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |	\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |	\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DSI) |		\
+	BIT_ULL(POWER_DOMAIN_VGA) |			\
+	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
+	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_D) |		\
+	BIT_ULL(POWER_DOMAIN_GMBUS) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define CHV_DPIO_CMN_BC_POWER_DOMAINS (		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |	\
+	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define CHV_DPIO_CMN_D_POWER_DOMAINS (		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |	\
+	BIT_ULL(POWER_DOMAIN_AUX_D) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+static const struct i915_power_well_desc chv_power_wells[] = {
+	{
+		.name = "always-on",
+		.domains = POWER_DOMAIN_MASK,
+		.ops = &i9xx_always_on_power_well_ops,
+		.always_on = true,
+		.id = DISP_PW_ID_NONE,
+	}, {
+		.name = "display",
+		/*
+		 * Pipe A power well is the new disp2d well. Pipe B and C
+		 * power wells don't actually exist. Pipe A power well is
+		 * required for any pipe to work.
+		 */
+		.domains = CHV_DISPLAY_POWER_DOMAINS,
+		.ops = &chv_pipe_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+	}, {
+		.name = "dpio-common-bc",
+		.domains = CHV_DPIO_CMN_BC_POWER_DOMAINS,
+		.ops = &chv_dpio_cmn_power_well_ops,
+		.id = VLV_DISP_PW_DPIO_CMN_BC,
+		{
+			.vlv.idx = PUNIT_PWGT_IDX_DPIO_CMN_BC,
+		},
+	}, {
+		.name = "dpio-common-d",
+		.domains = CHV_DPIO_CMN_D_POWER_DOMAINS,
+		.ops = &chv_dpio_cmn_power_well_ops,
+		.id = CHV_DISP_PW_DPIO_CMN_D,
+		{
+			.vlv.idx = PUNIT_PWGT_IDX_DPIO_CMN_D,
+		},
+	},
+};
+
+#define SKL_DISPLAY_POWERWELL_2_POWER_DOMAINS (		\
+	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |		\
+	BIT_ULL(POWER_DOMAIN_PIPE_C_PANEL_FITTER) |		\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |		\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_E_LANES) |		\
+	BIT_ULL(POWER_DOMAIN_VGA) |				\
+	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
+	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_B) |                       \
+	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_D) |			\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define SKL_DISPLAY_DC_OFF_POWER_DOMAINS (		\
+	SKL_DISPLAY_POWERWELL_2_POWER_DOMAINS |		\
+	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
+	BIT_ULL(POWER_DOMAIN_MODESET) |			\
+	BIT_ULL(POWER_DOMAIN_GT_IRQ) |			\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define SKL_DISPLAY_DDI_IO_A_E_POWER_DOMAINS (		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_A_IO) |		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_E_IO) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define SKL_DISPLAY_DDI_IO_B_POWER_DOMAINS (		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_IO) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define SKL_DISPLAY_DDI_IO_C_POWER_DOMAINS (		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_IO) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define SKL_DISPLAY_DDI_IO_D_POWER_DOMAINS (		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_IO) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+static const struct i915_power_well_desc skl_power_wells[] = {
+	{
+		.name = "always-on",
+		.domains = POWER_DOMAIN_MASK,
+		.ops = &i9xx_always_on_power_well_ops,
+		.always_on = true,
+		.id = DISP_PW_ID_NONE,
+	}, {
+		.name = "power well 1",
+		/* Handled by the DMC firmware */
+		.domains = 0,
+		.ops = &hsw_power_well_ops,
+		.always_on = true,
+		.id = SKL_DISP_PW_1,
+		{
+			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
+			.hsw.has_fuses = true,
+		},
+	}, {
+		.name = "MISC IO power well",
+		/* Handled by the DMC firmware */
+		.domains = 0,
+		.ops = &hsw_power_well_ops,
+		.always_on = true,
+		.id = SKL_DISP_PW_MISC_IO,
+		{
+			.hsw.idx = SKL_PW_CTL_IDX_MISC_IO,
+		},
+	}, {
+		.name = "DC off",
+		.domains = SKL_DISPLAY_DC_OFF_POWER_DOMAINS,
+		.ops = &gen9_dc_off_power_well_ops,
+		.id = SKL_DISP_DC_OFF,
+	}, {
+		.name = "power well 2",
+		.domains = SKL_DISPLAY_POWERWELL_2_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = SKL_DISP_PW_2,
+		{
+			.hsw.idx = SKL_PW_CTL_IDX_PW_2,
+			.hsw.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
+			.hsw.has_vga = true,
+			.hsw.has_fuses = true,
+		},
+	}, {
+		.name = "DDI A/E IO power well",
+		.domains = SKL_DISPLAY_DDI_IO_A_E_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = SKL_PW_CTL_IDX_DDI_A_E,
+		},
+	}, {
+		.name = "DDI B IO power well",
+		.domains = SKL_DISPLAY_DDI_IO_B_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = SKL_PW_CTL_IDX_DDI_B,
+		},
+	}, {
+		.name = "DDI C IO power well",
+		.domains = SKL_DISPLAY_DDI_IO_C_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = SKL_PW_CTL_IDX_DDI_C,
+		},
+	}, {
+		.name = "DDI D IO power well",
+		.domains = SKL_DISPLAY_DDI_IO_D_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = SKL_PW_CTL_IDX_DDI_D,
+		},
+	},
+};
+
+#define BXT_DISPLAY_POWERWELL_2_POWER_DOMAINS (		\
+	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |		\
+	BIT_ULL(POWER_DOMAIN_PIPE_C_PANEL_FITTER) |		\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |		\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |		\
+	BIT_ULL(POWER_DOMAIN_VGA) |				\
+	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
+	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define BXT_DISPLAY_DC_OFF_POWER_DOMAINS (		\
+	BXT_DISPLAY_POWERWELL_2_POWER_DOMAINS |		\
+	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
+	BIT_ULL(POWER_DOMAIN_GMBUS) |			\
+	BIT_ULL(POWER_DOMAIN_MODESET) |			\
+	BIT_ULL(POWER_DOMAIN_GT_IRQ) |			\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define BXT_DPIO_CMN_A_POWER_DOMAINS (			\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_A_LANES) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define BXT_DPIO_CMN_BC_POWER_DOMAINS (			\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+static const struct i915_power_well_desc bxt_power_wells[] = {
+	{
+		.name = "always-on",
+		.domains = POWER_DOMAIN_MASK,
+		.ops = &i9xx_always_on_power_well_ops,
+		.always_on = true,
+		.id = DISP_PW_ID_NONE,
+	}, {
+		.name = "power well 1",
+		/* Handled by the DMC firmware */
+		.domains = 0,
+		.ops = &hsw_power_well_ops,
+		.always_on = true,
+		.id = SKL_DISP_PW_1,
+		{
+			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
+			.hsw.has_fuses = true,
+		},
+	}, {
+		.name = "DC off",
+		.domains = BXT_DISPLAY_DC_OFF_POWER_DOMAINS,
+		.ops = &gen9_dc_off_power_well_ops,
+		.id = SKL_DISP_DC_OFF,
+	}, {
+		.name = "power well 2",
+		.domains = BXT_DISPLAY_POWERWELL_2_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = SKL_DISP_PW_2,
+		{
+			.hsw.idx = SKL_PW_CTL_IDX_PW_2,
+			.hsw.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
+			.hsw.has_vga = true,
+			.hsw.has_fuses = true,
+		},
+	}, {
+		.name = "dpio-common-a",
+		.domains = BXT_DPIO_CMN_A_POWER_DOMAINS,
+		.ops = &bxt_dpio_cmn_power_well_ops,
+		.id = BXT_DISP_PW_DPIO_CMN_A,
+		{
+			.bxt.phy = DPIO_PHY1,
+		},
+	}, {
+		.name = "dpio-common-bc",
+		.domains = BXT_DPIO_CMN_BC_POWER_DOMAINS,
+		.ops = &bxt_dpio_cmn_power_well_ops,
+		.id = VLV_DISP_PW_DPIO_CMN_BC,
+		{
+			.bxt.phy = DPIO_PHY0,
+		},
+	},
+};
+
+#define GLK_DISPLAY_POWERWELL_2_POWER_DOMAINS (		\
+	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |		\
+	BIT_ULL(POWER_DOMAIN_PIPE_C_PANEL_FITTER) |		\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |		\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |		\
+	BIT_ULL(POWER_DOMAIN_VGA) |				\
+	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
+	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_B) |                       \
+	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define GLK_DISPLAY_DC_OFF_POWER_DOMAINS (		\
+	GLK_DISPLAY_POWERWELL_2_POWER_DOMAINS |		\
+	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
+	BIT_ULL(POWER_DOMAIN_GMBUS) |			\
+	BIT_ULL(POWER_DOMAIN_MODESET) |			\
+	BIT_ULL(POWER_DOMAIN_GT_IRQ) |			\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define GLK_DISPLAY_DDI_IO_A_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_A_IO)
+#define GLK_DISPLAY_DDI_IO_B_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_IO)
+#define GLK_DISPLAY_DDI_IO_C_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_IO)
+
+#define GLK_DPIO_CMN_A_POWER_DOMAINS (			\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_A_LANES) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define GLK_DPIO_CMN_B_POWER_DOMAINS (			\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define GLK_DPIO_CMN_C_POWER_DOMAINS (			\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define GLK_DISPLAY_AUX_A_POWER_DOMAINS (		\
+	BIT_ULL(POWER_DOMAIN_AUX_A) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_IO_A) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define GLK_DISPLAY_AUX_B_POWER_DOMAINS (		\
+	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define GLK_DISPLAY_AUX_C_POWER_DOMAINS (		\
+	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+static const struct i915_power_well_desc glk_power_wells[] = {
+	{
+		.name = "always-on",
+		.domains = POWER_DOMAIN_MASK,
+		.ops = &i9xx_always_on_power_well_ops,
+		.always_on = true,
+		.id = DISP_PW_ID_NONE,
+	}, {
+		.name = "power well 1",
+		/* Handled by the DMC firmware */
+		.domains = 0,
+		.ops = &hsw_power_well_ops,
+		.always_on = true,
+		.id = SKL_DISP_PW_1,
+		{
+			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
+			.hsw.has_fuses = true,
+		},
+	}, {
+		.name = "DC off",
+		.domains = GLK_DISPLAY_DC_OFF_POWER_DOMAINS,
+		.ops = &gen9_dc_off_power_well_ops,
+		.id = SKL_DISP_DC_OFF,
+	}, {
+		.name = "power well 2",
+		.domains = GLK_DISPLAY_POWERWELL_2_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = SKL_DISP_PW_2,
+		{
+			.hsw.idx = SKL_PW_CTL_IDX_PW_2,
+			.hsw.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
+			.hsw.has_vga = true,
+			.hsw.has_fuses = true,
+		},
+	}, {
+		.name = "dpio-common-a",
+		.domains = GLK_DPIO_CMN_A_POWER_DOMAINS,
+		.ops = &bxt_dpio_cmn_power_well_ops,
+		.id = BXT_DISP_PW_DPIO_CMN_A,
+		{
+			.bxt.phy = DPIO_PHY1,
+		},
+	}, {
+		.name = "dpio-common-b",
+		.domains = GLK_DPIO_CMN_B_POWER_DOMAINS,
+		.ops = &bxt_dpio_cmn_power_well_ops,
+		.id = VLV_DISP_PW_DPIO_CMN_BC,
+		{
+			.bxt.phy = DPIO_PHY0,
+		},
+	}, {
+		.name = "dpio-common-c",
+		.domains = GLK_DPIO_CMN_C_POWER_DOMAINS,
+		.ops = &bxt_dpio_cmn_power_well_ops,
+		.id = GLK_DISP_PW_DPIO_CMN_C,
+		{
+			.bxt.phy = DPIO_PHY2,
+		},
+	}, {
+		.name = "AUX A",
+		.domains = GLK_DISPLAY_AUX_A_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = GLK_PW_CTL_IDX_AUX_A,
+		},
+	}, {
+		.name = "AUX B",
+		.domains = GLK_DISPLAY_AUX_B_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = GLK_PW_CTL_IDX_AUX_B,
+		},
+	}, {
+		.name = "AUX C",
+		.domains = GLK_DISPLAY_AUX_C_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = GLK_PW_CTL_IDX_AUX_C,
+		},
+	}, {
+		.name = "DDI A IO power well",
+		.domains = GLK_DISPLAY_DDI_IO_A_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = GLK_PW_CTL_IDX_DDI_A,
+		},
+	}, {
+		.name = "DDI B IO power well",
+		.domains = GLK_DISPLAY_DDI_IO_B_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = SKL_PW_CTL_IDX_DDI_B,
+		},
+	}, {
+		.name = "DDI C IO power well",
+		.domains = GLK_DISPLAY_DDI_IO_C_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = SKL_PW_CTL_IDX_DDI_C,
+		},
+	},
+};
+
+/*
+ * ICL PW_0/PG_0 domains (HW/DMC control):
+ * - PCI
+ * - clocks except port PLL
+ * - central power except FBC
+ * - shared functions except pipe interrupts, pipe MBUS, DBUF registers
+ * ICL PW_1/PG_1 domains (HW/DMC control):
+ * - DBUF function
+ * - PIPE_A and its planes, except VGA
+ * - transcoder EDP + PSR
+ * - transcoder DSI
+ * - DDI_A
+ * - FBC
+ */
+#define ICL_PW_4_POWER_DOMAINS (			\
+	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_C_PANEL_FITTER) |	\
+	BIT_ULL(POWER_DOMAIN_INIT))
+	/* VDSC/joining */
+
+#define ICL_PW_3_POWER_DOMAINS (			\
+	ICL_PW_4_POWER_DOMAINS |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |		\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_E_LANES) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_F_LANES) |	\
+	BIT_ULL(POWER_DOMAIN_VGA) |			\
+	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
+	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_D) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_E) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_F) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_C_TBT) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_D_TBT) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_E_TBT) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_F_TBT) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+	/*
+	 * - transcoder WD
+	 * - KVMR (HW control)
+	 */
+
+#define ICL_PW_2_POWER_DOMAINS (			\
+	ICL_PW_3_POWER_DOMAINS |			\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_VDSC_PW2) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+	/*
+	 * - KVMR (HW control)
+	 */
+
+#define ICL_DISPLAY_DC_OFF_POWER_DOMAINS (		\
+	ICL_PW_2_POWER_DOMAINS |			\
+	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
+	BIT_ULL(POWER_DOMAIN_MODESET) |			\
+	BIT_ULL(POWER_DOMAIN_DC_OFF) |			\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define ICL_DDI_IO_A_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_A_IO)
+#define ICL_DDI_IO_B_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_B_IO)
+#define ICL_DDI_IO_C_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_C_IO)
+#define ICL_DDI_IO_D_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_D_IO)
+#define ICL_DDI_IO_E_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_E_IO)
+#define ICL_DDI_IO_F_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_F_IO)
+
+#define ICL_AUX_A_IO_POWER_DOMAINS (			\
+	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_IO_A))
+
+#define ICL_AUX_B_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_B)
+#define ICL_AUX_C_TC1_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_C)
+#define ICL_AUX_D_TC2_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_D)
+#define ICL_AUX_E_TC3_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_E)
+#define ICL_AUX_F_TC4_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_F)
+#define ICL_AUX_C_TBT1_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_C_TBT)
+#define ICL_AUX_D_TBT2_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_D_TBT)
+#define ICL_AUX_E_TBT3_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_E_TBT)
+#define ICL_AUX_F_TBT4_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_F_TBT)
+
+static const struct i915_power_well_desc icl_power_wells[] = {
+	{
+		.name = "always-on",
+		.domains = POWER_DOMAIN_MASK,
+		.ops = &i9xx_always_on_power_well_ops,
+		.always_on = true,
+		.id = DISP_PW_ID_NONE,
+	}, {
+		.name = "power well 1",
+		/* Handled by the DMC firmware */
+		.domains = 0,
+		.ops = &hsw_power_well_ops,
+		.always_on = true,
+		.id = SKL_DISP_PW_1,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
+			.hsw.has_fuses = true,
+		},
+	}, {
+		.name = "DC off",
+		.domains = ICL_DISPLAY_DC_OFF_POWER_DOMAINS,
+		.ops = &gen9_dc_off_power_well_ops,
+		.id = SKL_DISP_DC_OFF,
+	}, {
+		.name = "power well 2",
+		.domains = ICL_PW_2_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = SKL_DISP_PW_2,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
+			.hsw.has_fuses = true,
+		},
+	}, {
+		.name = "power well 3",
+		.domains = ICL_PW_3_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = ICL_DISP_PW_3,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
+			.hsw.irq_pipe_mask = BIT(PIPE_B),
+			.hsw.has_vga = true,
+			.hsw.has_fuses = true,
+		},
+	}, {
+		.name = "DDI A IO",
+		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
+		},
+	}, {
+		.name = "DDI B IO",
+		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
+		},
+	}, {
+		.name = "DDI C IO",
+		.domains = ICL_DDI_IO_C_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_DDI_C,
+		},
+	}, {
+		.name = "DDI D IO",
+		.domains = ICL_DDI_IO_D_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_DDI_D,
+		},
+	}, {
+		.name = "DDI E IO",
+		.domains = ICL_DDI_IO_E_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_DDI_E,
+		},
+	}, {
+		.name = "DDI F IO",
+		.domains = ICL_DDI_IO_F_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_DDI_F,
+		},
+	}, {
+		.name = "AUX A",
+		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
+		},
+	}, {
+		.name = "AUX B",
+		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
+		},
+	}, {
+		.name = "AUX C TC1",
+		.domains = ICL_AUX_C_TC1_IO_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
+			.hsw.is_tc_tbt = false,
+		},
+	}, {
+		.name = "AUX D TC2",
+		.domains = ICL_AUX_D_TC2_IO_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_AUX_D,
+			.hsw.is_tc_tbt = false,
+		},
+	}, {
+		.name = "AUX E TC3",
+		.domains = ICL_AUX_E_TC3_IO_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_AUX_E,
+			.hsw.is_tc_tbt = false,
+		},
+	}, {
+		.name = "AUX F TC4",
+		.domains = ICL_AUX_F_TC4_IO_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_AUX_F,
+			.hsw.is_tc_tbt = false,
+		},
+	}, {
+		.name = "AUX C TBT1",
+		.domains = ICL_AUX_C_TBT1_IO_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT1,
+			.hsw.is_tc_tbt = true,
+		},
+	}, {
+		.name = "AUX D TBT2",
+		.domains = ICL_AUX_D_TBT2_IO_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT2,
+			.hsw.is_tc_tbt = true,
+		},
+	}, {
+		.name = "AUX E TBT3",
+		.domains = ICL_AUX_E_TBT3_IO_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT3,
+			.hsw.is_tc_tbt = true,
+		},
+	}, {
+		.name = "AUX F TBT4",
+		.domains = ICL_AUX_F_TBT4_IO_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT4,
+			.hsw.is_tc_tbt = true,
+		},
+	}, {
+		.name = "power well 4",
+		.domains = ICL_PW_4_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
+			.hsw.has_fuses = true,
+			.hsw.irq_pipe_mask = BIT(PIPE_C),
+		},
+	},
+};
+
+#define TGL_PW_5_POWER_DOMAINS (			\
+	BIT_ULL(POWER_DOMAIN_PIPE_D) |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_D_PANEL_FITTER) |     \
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_D) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define TGL_PW_4_POWER_DOMAINS (			\
+	TGL_PW_5_POWER_DOMAINS |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_C_PANEL_FITTER) |	\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define TGL_PW_3_POWER_DOMAINS (			\
+	TGL_PW_4_POWER_DOMAINS |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC1) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC2) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC3) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC4) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC5) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC6) |	\
+	BIT_ULL(POWER_DOMAIN_VGA) |			\
+	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
+	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC1) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC2) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC3) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC4) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC5) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC6) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT1) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT2) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT3) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT4) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT5) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT6) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define TGL_PW_2_POWER_DOMAINS (			\
+	TGL_PW_3_POWER_DOMAINS |			\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_VDSC_PW2) |	\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define TGL_DISPLAY_DC_OFF_POWER_DOMAINS (		\
+	TGL_PW_3_POWER_DOMAINS |			\
+	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
+	BIT_ULL(POWER_DOMAIN_MODESET) |			\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define TGL_DDI_IO_TC1_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC1)
+#define TGL_DDI_IO_TC2_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC2)
+#define TGL_DDI_IO_TC3_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC3)
+#define TGL_DDI_IO_TC4_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC4)
+#define TGL_DDI_IO_TC5_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC5)
+#define TGL_DDI_IO_TC6_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC6)
+
+#define TGL_AUX_A_IO_POWER_DOMAINS (		\
+	BIT_ULL(POWER_DOMAIN_AUX_A) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_IO_A))
+#define TGL_AUX_B_IO_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_B)
+#define TGL_AUX_C_IO_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_C)
+
+#define TGL_AUX_IO_USBC1_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC1)
+#define TGL_AUX_IO_USBC2_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC2)
+#define TGL_AUX_IO_USBC3_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC3)
+#define TGL_AUX_IO_USBC4_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC4)
+#define TGL_AUX_IO_USBC5_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC5)
+#define TGL_AUX_IO_USBC6_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC6)
+
+#define TGL_AUX_IO_TBT1_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT1)
+#define TGL_AUX_IO_TBT2_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT2)
+#define TGL_AUX_IO_TBT3_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT3)
+#define TGL_AUX_IO_TBT4_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT4)
+#define TGL_AUX_IO_TBT5_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT5)
+#define TGL_AUX_IO_TBT6_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT6)
+
+#define TGL_TC_COLD_OFF_POWER_DOMAINS (		\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC1)	|	\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC2)	|	\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC3)	|	\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC4)	|	\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC5)	|	\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC6)	|	\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT1) |	\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT2) |	\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT3) |	\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT4) |	\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT5) |	\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT6) |	\
+	BIT_ULL(POWER_DOMAIN_TC_COLD_OFF))
+
+static const struct i915_power_well_desc tgl_power_wells[] = {
+	{
+		.name = "always-on",
+		.domains = POWER_DOMAIN_MASK,
+		.ops = &i9xx_always_on_power_well_ops,
+		.always_on = true,
+		.id = DISP_PW_ID_NONE,
+	}, {
+		.name = "power well 1",
+		/* Handled by the DMC firmware */
+		.domains = 0,
+		.ops = &hsw_power_well_ops,
+		.always_on = true,
+		.id = SKL_DISP_PW_1,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
+			.hsw.has_fuses = true,
+		},
+	}, {
+		.name = "DC off",
+		.domains = TGL_DISPLAY_DC_OFF_POWER_DOMAINS,
+		.ops = &gen9_dc_off_power_well_ops,
+		.id = SKL_DISP_DC_OFF,
+	}, {
+		.name = "power well 2",
+		.domains = TGL_PW_2_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = SKL_DISP_PW_2,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
+			.hsw.has_fuses = true,
+		},
+	}, {
+		.name = "power well 3",
+		.domains = TGL_PW_3_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = ICL_DISP_PW_3,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
+			.hsw.irq_pipe_mask = BIT(PIPE_B),
+			.hsw.has_vga = true,
+			.hsw.has_fuses = true,
+		},
+	}, {
+		.name = "DDI A IO",
+		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
+		}
+	}, {
+		.name = "DDI B IO",
+		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
+		}
+	}, {
+		.name = "DDI C IO",
+		.domains = ICL_DDI_IO_C_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_DDI_C,
+		}
+	}, {
+		.name = "DDI IO TC1",
+		.domains = TGL_DDI_IO_TC1_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
+		},
+	}, {
+		.name = "DDI IO TC2",
+		.domains = TGL_DDI_IO_TC2_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
+		},
+	}, {
+		.name = "DDI IO TC3",
+		.domains = TGL_DDI_IO_TC3_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC3,
+		},
+	}, {
+		.name = "DDI IO TC4",
+		.domains = TGL_DDI_IO_TC4_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC4,
+		},
+	}, {
+		.name = "DDI IO TC5",
+		.domains = TGL_DDI_IO_TC5_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC5,
+		},
+	}, {
+		.name = "DDI IO TC6",
+		.domains = TGL_DDI_IO_TC6_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC6,
+		},
+	}, {
+		.name = "TC cold off",
+		.domains = TGL_TC_COLD_OFF_POWER_DOMAINS,
+		.ops = &tgl_tc_cold_off_ops,
+		.id = TGL_DISP_PW_TC_COLD_OFF,
+	}, {
+		.name = "AUX A",
+		.domains = TGL_AUX_A_IO_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
+		},
+	}, {
+		.name = "AUX B",
+		.domains = TGL_AUX_B_IO_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
+		},
+	}, {
+		.name = "AUX C",
+		.domains = TGL_AUX_C_IO_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
+		},
+	}, {
+		.name = "AUX USBC1",
+		.domains = TGL_AUX_IO_USBC1_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
+			.hsw.is_tc_tbt = false,
+		},
+	}, {
+		.name = "AUX USBC2",
+		.domains = TGL_AUX_IO_USBC2_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
+			.hsw.is_tc_tbt = false,
+		},
+	}, {
+		.name = "AUX USBC3",
+		.domains = TGL_AUX_IO_USBC3_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC3,
+			.hsw.is_tc_tbt = false,
+		},
+	}, {
+		.name = "AUX USBC4",
+		.domains = TGL_AUX_IO_USBC4_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC4,
+			.hsw.is_tc_tbt = false,
+		},
+	}, {
+		.name = "AUX USBC5",
+		.domains = TGL_AUX_IO_USBC5_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC5,
+			.hsw.is_tc_tbt = false,
+		},
+	}, {
+		.name = "AUX USBC6",
+		.domains = TGL_AUX_IO_USBC6_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC6,
+			.hsw.is_tc_tbt = false,
+		},
+	}, {
+		.name = "AUX TBT1",
+		.domains = TGL_AUX_IO_TBT1_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1,
+			.hsw.is_tc_tbt = true,
+		},
+	}, {
+		.name = "AUX TBT2",
+		.domains = TGL_AUX_IO_TBT2_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2,
+			.hsw.is_tc_tbt = true,
+		},
+	}, {
+		.name = "AUX TBT3",
+		.domains = TGL_AUX_IO_TBT3_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3,
+			.hsw.is_tc_tbt = true,
+		},
+	}, {
+		.name = "AUX TBT4",
+		.domains = TGL_AUX_IO_TBT4_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4,
+			.hsw.is_tc_tbt = true,
+		},
+	}, {
+		.name = "AUX TBT5",
+		.domains = TGL_AUX_IO_TBT5_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT5,
+			.hsw.is_tc_tbt = true,
+		},
+	}, {
+		.name = "AUX TBT6",
+		.domains = TGL_AUX_IO_TBT6_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT6,
+			.hsw.is_tc_tbt = true,
+		},
+	}, {
+		.name = "power well 4",
+		.domains = TGL_PW_4_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
+			.hsw.has_fuses = true,
+			.hsw.irq_pipe_mask = BIT(PIPE_C),
+		}
+	}, {
+		.name = "power well 5",
+		.domains = TGL_PW_5_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_PW_5,
+			.hsw.has_fuses = true,
+			.hsw.irq_pipe_mask = BIT(PIPE_D),
+		},
+	},
+};
+
+#define RKL_PW_4_POWER_DOMAINS (			\
+	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_C_PANEL_FITTER) |	\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define RKL_PW_3_POWER_DOMAINS (			\
+	RKL_PW_4_POWER_DOMAINS |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC1) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC2) |	\
+	BIT_ULL(POWER_DOMAIN_VGA) |			\
+	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
+	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC1) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC2) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+/*
+ * There is no PW_2/PG_2 on RKL.
+ *
+ * RKL PW_1/PG_1 domains (under HW/DMC control):
+ * - DBUF function (note: registers are in PW0)
+ * - PIPE_A and its planes and VDSC/joining, except VGA
+ * - transcoder A
+ * - DDI_A and DDI_B
+ * - FBC
+ *
+ * RKL PW_0/PG_0 domains (under HW/DMC control):
+ * - PCI
+ * - clocks except port PLL
+ * - shared functions:
+ *     * interrupts except pipe interrupts
+ *     * MBus except PIPE_MBUS_DBOX_CTL
+ *     * DBUF registers
+ * - central power except FBC
+ * - top-level GTC (DDI-level GTC is in the well associated with the DDI)
+ */
+
+#define RKL_DISPLAY_DC_OFF_POWER_DOMAINS (		\
+	RKL_PW_3_POWER_DOMAINS |			\
+	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
+	BIT_ULL(POWER_DOMAIN_MODESET) |			\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+static const struct i915_power_well_desc rkl_power_wells[] = {
+	{
+		.name = "always-on",
+		.domains = POWER_DOMAIN_MASK,
+		.ops = &i9xx_always_on_power_well_ops,
+		.always_on = true,
+		.id = DISP_PW_ID_NONE,
+	}, {
+		.name = "power well 1",
+		/* Handled by the DMC firmware */
+		.domains = 0,
+		.ops = &hsw_power_well_ops,
+		.always_on = true,
+		.id = SKL_DISP_PW_1,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
+			.hsw.has_fuses = true,
+		},
+	}, {
+		.name = "DC off",
+		.domains = RKL_DISPLAY_DC_OFF_POWER_DOMAINS,
+		.ops = &gen9_dc_off_power_well_ops,
+		.id = SKL_DISP_DC_OFF,
+	}, {
+		.name = "power well 3",
+		.domains = RKL_PW_3_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = ICL_DISP_PW_3,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
+			.hsw.irq_pipe_mask = BIT(PIPE_B),
+			.hsw.has_vga = true,
+			.hsw.has_fuses = true,
+		},
+	}, {
+		.name = "power well 4",
+		.domains = RKL_PW_4_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
+			.hsw.has_fuses = true,
+			.hsw.irq_pipe_mask = BIT(PIPE_C),
+		}
+	}, {
+		.name = "DDI A IO",
+		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
+		}
+	}, {
+		.name = "DDI B IO",
+		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
+		}
+	}, {
+		.name = "DDI IO TC1",
+		.domains = TGL_DDI_IO_TC1_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
+		},
+	}, {
+		.name = "DDI IO TC2",
+		.domains = TGL_DDI_IO_TC2_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
+		},
+	}, {
+		.name = "AUX A",
+		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
+		},
+	}, {
+		.name = "AUX B",
+		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
+		},
+	}, {
+		.name = "AUX USBC1",
+		.domains = TGL_AUX_IO_USBC1_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
+		},
+	}, {
+		.name = "AUX USBC2",
+		.domains = TGL_AUX_IO_USBC2_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
+		},
+	},
+};
+
+/*
+ * DG1 onwards Audio MMIO/VERBS lies in PG0 power well.
+ */
+#define DG1_PW_3_POWER_DOMAINS (			\
+	TGL_PW_4_POWER_DOMAINS |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC1) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC2) |	\
+	BIT_ULL(POWER_DOMAIN_VGA) |			\
+	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC1) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC2) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define DG1_DISPLAY_DC_OFF_POWER_DOMAINS (		\
+	DG1_PW_3_POWER_DOMAINS |			\
+	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
+	BIT_ULL(POWER_DOMAIN_MODESET) |			\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define DG1_PW_2_POWER_DOMAINS (			\
+	DG1_PW_3_POWER_DOMAINS |			\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_VDSC_PW2) |	\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+static const struct i915_power_well_desc dg1_power_wells[] = {
+	{
+		.name = "always-on",
+		.domains = POWER_DOMAIN_MASK,
+		.ops = &i9xx_always_on_power_well_ops,
+		.always_on = true,
+		.id = DISP_PW_ID_NONE,
+	}, {
+		.name = "power well 1",
+		/* Handled by the DMC firmware */
+		.domains = 0,
+		.ops = &hsw_power_well_ops,
+		.always_on = true,
+		.id = SKL_DISP_PW_1,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
+			.hsw.has_fuses = true,
+		},
+	}, {
+		.name = "DC off",
+		.domains = DG1_DISPLAY_DC_OFF_POWER_DOMAINS,
+		.ops = &gen9_dc_off_power_well_ops,
+		.id = SKL_DISP_DC_OFF,
+	}, {
+		.name = "power well 2",
+		.domains = DG1_PW_2_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = SKL_DISP_PW_2,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
+			.hsw.has_fuses = true,
+		},
+	}, {
+		.name = "power well 3",
+		.domains = DG1_PW_3_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = ICL_DISP_PW_3,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
+			.hsw.irq_pipe_mask = BIT(PIPE_B),
+			.hsw.has_vga = true,
+			.hsw.has_fuses = true,
+		},
+	}, {
+		.name = "DDI A IO",
+		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
+		}
+	}, {
+		.name = "DDI B IO",
+		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
+		}
+	}, {
+		.name = "DDI IO TC1",
+		.domains = TGL_DDI_IO_TC1_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
+		},
+	}, {
+		.name = "DDI IO TC2",
+		.domains = TGL_DDI_IO_TC2_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
+		},
+	}, {
+		.name = "AUX A",
+		.domains = TGL_AUX_A_IO_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
+		},
+	}, {
+		.name = "AUX B",
+		.domains = TGL_AUX_B_IO_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
+		},
+	}, {
+		.name = "AUX USBC1",
+		.domains = TGL_AUX_IO_USBC1_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
+			.hsw.is_tc_tbt = false,
+		},
+	}, {
+		.name = "AUX USBC2",
+		.domains = TGL_AUX_IO_USBC2_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
+			.hsw.is_tc_tbt = false,
+		},
+	}, {
+		.name = "power well 4",
+		.domains = TGL_PW_4_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
+			.hsw.has_fuses = true,
+			.hsw.irq_pipe_mask = BIT(PIPE_C),
+		}
+	}, {
+		.name = "power well 5",
+		.domains = TGL_PW_5_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_PW_5,
+			.hsw.has_fuses = true,
+			.hsw.irq_pipe_mask = BIT(PIPE_D),
+		},
+	},
+};
+
+/*
+ * XE_LPD Power Domains
+ *
+ * Previous platforms required that PG(n-1) be enabled before PG(n).  That
+ * dependency chain turns into a dependency tree on XE_LPD:
+ *
+ *       PG0
+ *        |
+ *     --PG1--
+ *    /       \
+ *  PGA     --PG2--
+ *         /   |   \
+ *       PGB  PGC  PGD
+ *
+ * Power wells must be enabled from top to bottom and disabled from bottom
+ * to top.  This allows pipes to be power gated independently.
+ */
+
+#define XELPD_PW_D_POWER_DOMAINS (			\
+	BIT_ULL(POWER_DOMAIN_PIPE_D) |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_D_PANEL_FITTER) |	\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_D) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define XELPD_PW_C_POWER_DOMAINS (			\
+	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_C_PANEL_FITTER) |	\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define XELPD_PW_B_POWER_DOMAINS (			\
+	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
+	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define XELPD_PW_A_POWER_DOMAINS (			\
+	BIT_ULL(POWER_DOMAIN_PIPE_A) |			\
+	BIT_ULL(POWER_DOMAIN_PIPE_A_PANEL_FITTER) |	\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define XELPD_PW_2_POWER_DOMAINS (			\
+	XELPD_PW_B_POWER_DOMAINS |			\
+	XELPD_PW_C_POWER_DOMAINS |			\
+	XELPD_PW_D_POWER_DOMAINS |			\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_D_XELPD) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_E_XELPD) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC1) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC2) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC3) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC4) |	\
+	BIT_ULL(POWER_DOMAIN_VGA) |			\
+	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_D_XELPD) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_E_XELPD) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC1) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC2) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC3) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC4) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT1) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT2) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT3) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT4) |			\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+/*
+ * XELPD PW_1/PG_1 domains (under HW/DMC control):
+ *  - DBUF function (registers are in PW0)
+ *  - Transcoder A
+ *  - DDI_A and DDI_B
+ *
+ * XELPD PW_0/PW_1 domains (under HW/DMC control):
+ *  - PCI
+ *  - Clocks except port PLL
+ *  - Shared functions:
+ *     * interrupts except pipe interrupts
+ *     * MBus except PIPE_MBUS_DBOX_CTL
+ *     * DBUF registers
+ *  - Central power except FBC
+ *  - Top-level GTC (DDI-level GTC is in the well associated with the DDI)
+ */
+
+#define XELPD_DISPLAY_DC_OFF_POWER_DOMAINS (		\
+	XELPD_PW_2_POWER_DOMAINS |			\
+	BIT_ULL(POWER_DOMAIN_PORT_DSI) |		\
+	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
+	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
+	BIT_ULL(POWER_DOMAIN_MODESET) |			\
+	BIT_ULL(POWER_DOMAIN_INIT))
+
+#define XELPD_AUX_IO_D_XELPD_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_D_XELPD)
+#define XELPD_AUX_IO_E_XELPD_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_E_XELPD)
+#define XELPD_AUX_IO_USBC1_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC1)
+#define XELPD_AUX_IO_USBC2_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC2)
+#define XELPD_AUX_IO_USBC3_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC3)
+#define XELPD_AUX_IO_USBC4_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC4)
+
+#define XELPD_AUX_IO_TBT1_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_TBT1)
+#define XELPD_AUX_IO_TBT2_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_TBT2)
+#define XELPD_AUX_IO_TBT3_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_TBT3)
+#define XELPD_AUX_IO_TBT4_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_TBT4)
+
+#define XELPD_DDI_IO_D_XELPD_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_D_XELPD)
+#define XELPD_DDI_IO_E_XELPD_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_E_XELPD)
+#define XELPD_DDI_IO_TC1_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC1)
+#define XELPD_DDI_IO_TC2_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC2)
+#define XELPD_DDI_IO_TC3_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC3)
+#define XELPD_DDI_IO_TC4_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC4)
+
+static const struct i915_power_well_desc xelpd_power_wells[] = {
+	{
+		.name = "always-on",
+		.domains = POWER_DOMAIN_MASK,
+		.ops = &i9xx_always_on_power_well_ops,
+		.always_on = true,
+		.id = DISP_PW_ID_NONE,
+	}, {
+		.name = "power well 1",
+		/* Handled by the DMC firmware */
+		.domains = 0,
+		.ops = &hsw_power_well_ops,
+		.always_on = true,
+		.id = SKL_DISP_PW_1,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
+			.hsw.has_fuses = true,
+		},
+	}, {
+		.name = "DC off",
+		.domains = XELPD_DISPLAY_DC_OFF_POWER_DOMAINS,
+		.ops = &gen9_dc_off_power_well_ops,
+		.id = SKL_DISP_DC_OFF,
+	}, {
+		.name = "power well 2",
+		.domains = XELPD_PW_2_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = SKL_DISP_PW_2,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
+			.hsw.has_vga = true,
+			.hsw.has_fuses = true,
+		},
+	}, {
+		.name = "power well A",
+		.domains = XELPD_PW_A_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = XELPD_PW_CTL_IDX_PW_A,
+			.hsw.irq_pipe_mask = BIT(PIPE_A),
+			.hsw.has_fuses = true,
+		},
+	}, {
+		.name = "power well B",
+		.domains = XELPD_PW_B_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = XELPD_PW_CTL_IDX_PW_B,
+			.hsw.irq_pipe_mask = BIT(PIPE_B),
+			.hsw.has_fuses = true,
+		},
+	}, {
+		.name = "power well C",
+		.domains = XELPD_PW_C_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = XELPD_PW_CTL_IDX_PW_C,
+			.hsw.irq_pipe_mask = BIT(PIPE_C),
+			.hsw.has_fuses = true,
+		},
+	}, {
+		.name = "power well D",
+		.domains = XELPD_PW_D_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = XELPD_PW_CTL_IDX_PW_D,
+			.hsw.irq_pipe_mask = BIT(PIPE_D),
+			.hsw.has_fuses = true,
+		},
+	}, {
+		.name = "DDI A IO",
+		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
+		}
+	}, {
+		.name = "DDI B IO",
+		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
+		}
+	}, {
+		.name = "DDI C IO",
+		.domains = ICL_DDI_IO_C_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_DDI_C,
+		}
+	}, {
+		.name = "DDI IO D_XELPD",
+		.domains = XELPD_DDI_IO_D_XELPD_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = XELPD_PW_CTL_IDX_DDI_D,
+		}
+	}, {
+		.name = "DDI IO E_XELPD",
+		.domains = XELPD_DDI_IO_E_XELPD_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = XELPD_PW_CTL_IDX_DDI_E,
+		}
+	}, {
+		.name = "DDI IO TC1",
+		.domains = XELPD_DDI_IO_TC1_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
+		}
+	}, {
+		.name = "DDI IO TC2",
+		.domains = XELPD_DDI_IO_TC2_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
+		}
+	}, {
+		.name = "DDI IO TC3",
+		.domains = XELPD_DDI_IO_TC3_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC3,
+		}
+	}, {
+		.name = "DDI IO TC4",
+		.domains = XELPD_DDI_IO_TC4_POWER_DOMAINS,
+		.ops = &icl_ddi_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC4,
+		}
+	}, {
+		.name = "AUX A",
+		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
+			.hsw.fixed_enable_delay = 600,
+		},
+	}, {
+		.name = "AUX B",
+		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
+			.hsw.fixed_enable_delay = 600,
+		},
+	}, {
+		.name = "AUX C",
+		.domains = TGL_AUX_C_IO_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
+			.hsw.fixed_enable_delay = 600,
+		},
+	}, {
+		.name = "AUX D_XELPD",
+		.domains = XELPD_AUX_IO_D_XELPD_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = XELPD_PW_CTL_IDX_AUX_D,
+			.hsw.fixed_enable_delay = 600,
+		},
+	}, {
+		.name = "AUX E_XELPD",
+		.domains = XELPD_AUX_IO_E_XELPD_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = XELPD_PW_CTL_IDX_AUX_E,
+		},
+	}, {
+		.name = "AUX USBC1",
+		.domains = XELPD_AUX_IO_USBC1_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
+			.hsw.fixed_enable_delay = 600,
+		},
+	}, {
+		.name = "AUX USBC2",
+		.domains = XELPD_AUX_IO_USBC2_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
+		},
+	}, {
+		.name = "AUX USBC3",
+		.domains = XELPD_AUX_IO_USBC3_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC3,
+		},
+	}, {
+		.name = "AUX USBC4",
+		.domains = XELPD_AUX_IO_USBC4_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC4,
+		},
+	}, {
+		.name = "AUX TBT1",
+		.domains = XELPD_AUX_IO_TBT1_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1,
+			.hsw.is_tc_tbt = true,
+		},
+	}, {
+		.name = "AUX TBT2",
+		.domains = XELPD_AUX_IO_TBT2_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2,
+			.hsw.is_tc_tbt = true,
+		},
+	}, {
+		.name = "AUX TBT3",
+		.domains = XELPD_AUX_IO_TBT3_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3,
+			.hsw.is_tc_tbt = true,
+		},
+	}, {
+		.name = "AUX TBT4",
+		.domains = XELPD_AUX_IO_TBT4_POWER_DOMAINS,
+		.ops = &icl_aux_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4,
+			.hsw.is_tc_tbt = true,
+		},
+	},
+};
+
+static int
+__set_power_wells(struct i915_power_domains *power_domains,
+		  const struct i915_power_well_desc *power_well_descs,
+		  int power_well_descs_sz, u64 skip_mask)
+{
+	struct drm_i915_private *i915 = container_of(power_domains,
+						     struct drm_i915_private,
+						     power_domains);
+	u64 power_well_ids = 0;
+	int power_well_count = 0;
+	int i, plt_idx = 0;
+
+	for (i = 0; i < power_well_descs_sz; i++)
+		if (!(BIT_ULL(power_well_descs[i].id) & skip_mask))
+			power_well_count++;
+
+	power_domains->power_well_count = power_well_count;
+	power_domains->power_wells =
+				kcalloc(power_well_count,
+					sizeof(*power_domains->power_wells),
+					GFP_KERNEL);
+	if (!power_domains->power_wells)
+		return -ENOMEM;
+
+	for (i = 0; i < power_well_descs_sz; i++) {
+		enum i915_power_well_id id = power_well_descs[i].id;
+
+		if (BIT_ULL(id) & skip_mask)
+			continue;
+
+		power_domains->power_wells[plt_idx++].desc =
+			&power_well_descs[i];
+
+		if (id == DISP_PW_ID_NONE)
+			continue;
+
+		drm_WARN_ON(&i915->drm, id >= sizeof(power_well_ids) * 8);
+		drm_WARN_ON(&i915->drm, power_well_ids & BIT_ULL(id));
+		power_well_ids |= BIT_ULL(id);
+	}
+
+	return 0;
+}
+
+#define set_power_wells_mask(power_domains, __power_well_descs, skip_mask) \
+	__set_power_wells(power_domains, __power_well_descs, \
+			  ARRAY_SIZE(__power_well_descs), skip_mask)
+
+#define set_power_wells(power_domains, __power_well_descs) \
+	set_power_wells_mask(power_domains, __power_well_descs, 0)
+
+int intel_init_power_wells(struct i915_power_domains *power_domains)
+{
+	struct drm_i915_private *i915 = container_of(power_domains,
+						     struct drm_i915_private,
+						     power_domains);
+	/*
+	 * The enabling order will be from lower to higher indexed wells,
+	 * the disabling order is reversed.
+	 */
+	if (!HAS_DISPLAY(i915)) {
+		power_domains->power_well_count = 0;
+		return 0;
+	}
+
+	if (DISPLAY_VER(i915) >= 13)
+		return set_power_wells(power_domains, xelpd_power_wells);
+	else if (IS_DG1(i915))
+		return set_power_wells(power_domains, dg1_power_wells);
+	else if (IS_ALDERLAKE_S(i915))
+		return set_power_wells_mask(power_domains, tgl_power_wells,
+					   BIT_ULL(TGL_DISP_PW_TC_COLD_OFF));
+	else if (IS_ROCKETLAKE(i915))
+		return set_power_wells(power_domains, rkl_power_wells);
+	else if (DISPLAY_VER(i915) == 12)
+		return set_power_wells(power_domains, tgl_power_wells);
+	else if (DISPLAY_VER(i915) == 11)
+		return set_power_wells(power_domains, icl_power_wells);
+	else if (IS_GEMINILAKE(i915))
+		return set_power_wells(power_domains, glk_power_wells);
+	else if (IS_BROXTON(i915))
+		return set_power_wells(power_domains, bxt_power_wells);
+	else if (DISPLAY_VER(i915) == 9)
+		return set_power_wells(power_domains, skl_power_wells);
+	else if (IS_CHERRYVIEW(i915))
+		return set_power_wells(power_domains, chv_power_wells);
+	else if (IS_BROADWELL(i915))
+		return set_power_wells(power_domains, bdw_power_wells);
+	else if (IS_HASWELL(i915))
+		return set_power_wells(power_domains, hsw_power_wells);
+	else if (IS_VALLEYVIEW(i915))
+		return set_power_wells(power_domains, vlv_power_wells);
+	else if (IS_I830(i915))
+		return set_power_wells(power_domains, i830_power_wells);
+	else
+		return set_power_wells(power_domains, i9xx_always_on_power_well);
+}
+
+void intel_cleanup_power_wells(struct i915_power_domains *power_domains)
+{
+	struct drm_i915_private *i915 = container_of(power_domains,
+						     struct drm_i915_private,
+						     power_domains);
+
+	kfree(i915->power_domains.power_wells);
+}
-- 
2.27.0

