Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FB6501D16
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 23:07:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60C6C10E337;
	Thu, 14 Apr 2022 21:07:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BDE910E255
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 21:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649970425; x=1681506425;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DWFka2wHdV5znqKE6AuagNL4WzQYQe/DEtSZbHI4Hjc=;
 b=JmvugOA4jw3LI4OOpLihu9/kCfsQSiTAUIEvq067zwfFXbkSQ9lEwaRb
 wOWJOqRjDrLZUXHabfik3u61Su9gXDVWOueiNoKHNsC33M0ILrijebaHU
 ehVKb3PYjQMxKwSuTQ5U/GQMGIGF7JdxVbHLKlD7YtJpjp1Mdkpzh3zFO
 s1NIyeufqE+f1xkqzJUBsKt4zaM0mxI8eX49pWE935vsnZwoQpqBgGPAl
 VrJooA1yxcOxM+RquQ7bnflGy+a8yhOcw6qmjKVMjms4pXKYC8LUL40aM
 F40bU1YEZ2XEpXvDO71H0nPaHcHsUzgxORC1pE2E8hog4Gf+GLeEvSvHE A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="288089714"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="288089714"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 14:07:04 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="527550308"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 14:07:03 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Apr 2022 00:06:42 +0300
Message-Id: <20220414210657.1785773-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220414210657.1785773-1-imre.deak@intel.com>
References: <20220414210657.1785773-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 03/18] drm/i915: Move the power domain->well
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the list of platform specific power domain -> power well
definitions to intel_display_power_map.c. While at it group the
platforms' power domain macros with the corresponding power well lists
and keep all the power domain lists in the same order (matching the enum
order).

No functional changes.

v2:
- s/intel_display_power_internal.h/intel_display_power_map.h/ (Jani)
- Simplify intel_cleanup_power_wells().
- Don't move intel_display_power_domain_str().
v3:
- Rename intel_init/cleanup_power_wells() to
  intel_display_power_map_init/cleanup().
- Add documentation to intel_display_power_map_init/cleanup().

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com> (v2)
---
 drivers/gpu/drm/i915/Makefile                 |    1 +
 .../drm/i915/display/intel_display_power.c    | 2260 +----------------
 .../i915/display/intel_display_power_map.c    | 2150 ++++++++++++++++
 .../i915/display/intel_display_power_map.h    |   14 +
 4 files changed, 2168 insertions(+), 2257 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_power_map.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_power_map.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 7e37455ba88d0..ff1a1b85792f0 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -220,6 +220,7 @@ i915-y += \
 	display/intel_cursor.o \
 	display/intel_display.o \
 	display/intel_display_power.o \
+	display/intel_display_power_map.o \
 	display/intel_display_power_well.o \
 	display/intel_dmc.o \
 	display/intel_dpio_phy.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index f3c14e721abcb..d2f2fb24ca42b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -11,6 +11,7 @@
 #include "intel_combo_phy.h"
 #include "intel_de.h"
 #include "intel_display_power.h"
+#include "intel_display_power_map.h"
 #include "intel_display_power_well.h"
 #include "intel_display_types.h"
 #include "intel_dmc.h"
@@ -848,2169 +849,6 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
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
@@ -3089,57 +927,6 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
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
@@ -3150,7 +937,6 @@ __set_power_wells(struct i915_power_domains *power_domains,
 int intel_power_domains_init(struct drm_i915_private *dev_priv)
 {
 	struct i915_power_domains *power_domains = &dev_priv->power_domains;
-	int err;
 
 	dev_priv->params.disable_power_well =
 		sanitize_disable_power_well_option(dev_priv,
@@ -3168,47 +954,7 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
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
+	return intel_display_power_map_init(power_domains);
 }
 
 /**
@@ -3219,7 +965,7 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
  */
 void intel_power_domains_cleanup(struct drm_i915_private *dev_priv)
 {
-	kfree(dev_priv->power_domains.power_wells);
+	intel_display_power_map_cleanup(&dev_priv->power_domains);
 }
 
 static void intel_power_domains_sync_hw(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
new file mode 100644
index 0000000000000..97e0daec95449
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -0,0 +1,2150 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "i915_reg.h"
+
+#include "vlv_sideband_reg.h"
+
+#include "intel_display_power_map.h"
+#include "intel_display_power_well.h"
+
+#define POWER_DOMAIN_MASK (GENMASK_ULL(POWER_DOMAIN_NUM - 1, 0))
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
+/**
+ * intel_display_power_map_init - initialize power domain -> power well mappings
+ * @power_domains: power domain state
+ *
+ * Creates all the power wells for the current platform, initializes the
+ * dynamic state for them and initializes the mapping of each power well to
+ * all the power domains the power well belongs to.
+ */
+int intel_display_power_map_init(struct i915_power_domains *power_domains)
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
+/**
+ * intel_display_power_map_cleanup - clean up power domain -> power well mappings
+ * @power_domains: power domain state
+ *
+ * Cleans up all the state that was initialized by intel_display_power_map_init().
+ */
+void intel_display_power_map_cleanup(struct i915_power_domains *power_domains)
+{
+	kfree(power_domains->power_wells);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.h b/drivers/gpu/drm/i915/display/intel_display_power_map.h
new file mode 100644
index 0000000000000..da8f7055a44c6
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_DISPLAY_POWER_MAP_H__
+#define __INTEL_DISPLAY_POWER_MAP_H__
+
+struct i915_power_domains;
+
+int intel_display_power_map_init(struct i915_power_domains *power_domains);
+void intel_display_power_map_cleanup(struct i915_power_domains *power_domains);
+
+#endif
-- 
2.30.2

