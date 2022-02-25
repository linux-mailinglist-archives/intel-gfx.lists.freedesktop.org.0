Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 893804C523B
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Feb 2022 00:45:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D31B610E22D;
	Fri, 25 Feb 2022 23:45:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF73410E223;
 Fri, 25 Feb 2022 23:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645832733; x=1677368733;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=kNAJDgnT8VDyCnUWMabHMNvsEQHQKPVjDGcm+9K/tWM=;
 b=GUoWAkVA+R89k7Ot4mWfQx4wxIUsDx7WrLIuva602mMNcU8ddrxlO+k4
 kQCPWqxUQcuTvanTGyAtqk3qCkyQxe+tX+HpurWnGT/+Gr2zTBWbFzuzW
 t+28r5OdpljOB6HrK1SG8pDCXmmqBdKdGX2N/0sNyAVBzd3LTCBQvWGSr
 C22rY5Bs012gwHo9Nv83jPn1vc+ImYaCFYobPPbZ8qNCUjfh+NU7WsOur
 02QnYWyu6tX5ZV+HJWOJF3/+f5yr0RfxkXMTGEUiwgC8F4FutrZLT5EXw
 ePjdNCUMi7Eae/wHY+pSwL8RQbMyiO0YlFo8cHQpoXP0pe8BPld+0uqUZ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10269"; a="313322603"
X-IronPort-AV: E=Sophos;i="5.90,137,1643702400"; d="scan'208";a="313322603"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 15:45:32 -0800
X-IronPort-AV: E=Sophos;i="5.90,137,1643702400"; d="scan'208";a="544202773"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 15:45:32 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 25 Feb 2022 15:46:31 -0800
Message-Id: <20220225234631.3725943-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220225234631.3725943-1-lucas.demarchi@intel.com>
References: <20220225234631.3725943-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 4/4] drm/i915: Use str_on_off()
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

Remove the local onoff() implementation and adopt the
str_on_off() from linux/string_helpers.h.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c              | 6 ++++--
 drivers/gpu/drm/i915/display/intel_display.c       | 7 ++++---
 drivers/gpu/drm/i915/display/intel_display_trace.h | 3 ++-
 drivers/gpu/drm/i915/display/intel_dpll.c          | 3 ++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c      | 7 +++++--
 drivers/gpu/drm/i915/display/intel_fdi.c           | 8 +++++---
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c         | 3 ++-
 drivers/gpu/drm/i915/gt/intel_rc6.c                | 5 +++--
 drivers/gpu/drm/i915/i915_utils.h                  | 5 -----
 drivers/gpu/drm/i915/vlv_suspend.c                 | 3 ++-
 10 files changed, 29 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index f67bbaaad8e0..22345051e667 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -5,6 +5,8 @@
  * DisplayPort support for G4x,ILK,SNB,IVB,VLV,CHV (HSW+ handled by the DDI code).
  */
 
+#include <linux/string_helpers.h>
+
 #include "g4x_dp.h"
 #include "intel_audio.h"
 #include "intel_backlight.h"
@@ -192,7 +194,7 @@ static void assert_dp_port(struct intel_dp *intel_dp, bool state)
 	I915_STATE_WARN(cur_state != state,
 			"[ENCODER:%d:%s] state assertion failure (expected %s, current %s)\n",
 			dig_port->base.base.base.id, dig_port->base.base.name,
-			onoff(state), onoff(cur_state));
+			str_on_off(state), str_on_off(cur_state));
 }
 #define assert_dp_port_disabled(d) assert_dp_port((d), false)
 
@@ -202,7 +204,7 @@ static void assert_edp_pll(struct drm_i915_private *dev_priv, bool state)
 
 	I915_STATE_WARN(cur_state != state,
 			"eDP PLL state assertion failure (expected %s, current %s)\n",
-			onoff(state), onoff(cur_state));
+			str_on_off(state), str_on_off(cur_state));
 }
 #define assert_edp_pll_enabled(d) assert_edp_pll((d), true)
 #define assert_edp_pll_disabled(d) assert_edp_pll((d), false)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2283c7bad2cd..6cae58f921a5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -401,7 +401,7 @@ static void wait_for_pipe_scanline_moving(struct intel_crtc *crtc, bool state)
 	if (wait_for(pipe_scanline_is_moving(dev_priv, pipe) == state, 100))
 		drm_err(&dev_priv->drm,
 			"pipe %c scanline %s wait timed out\n",
-			pipe_name(pipe), onoff(state));
+			pipe_name(pipe), str_on_off(state));
 }
 
 static void intel_wait_for_pipe_scanline_stopped(struct intel_crtc *crtc)
@@ -457,7 +457,7 @@ void assert_transcoder(struct drm_i915_private *dev_priv,
 	I915_STATE_WARN(cur_state != state,
 			"transcoder %s assertion failure (expected %s, current %s)\n",
 			transcoder_name(cpu_transcoder),
-			onoff(state), onoff(cur_state));
+			str_on_off(state), str_on_off(cur_state));
 }
 
 static void assert_plane(struct intel_plane *plane, bool state)
@@ -469,7 +469,8 @@ static void assert_plane(struct intel_plane *plane, bool state)
 
 	I915_STATE_WARN(cur_state != state,
 			"%s assertion failure (expected %s, current %s)\n",
-			plane->base.name, onoff(state), onoff(cur_state));
+			plane->base.name, str_on_off(state),
+			str_on_off(cur_state));
 }
 
 #define assert_plane_enabled(p) assert_plane(p, true)
diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index dcdd242fffd9..2dd5a4b7f5d8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -9,6 +9,7 @@
 #if !defined(__INTEL_DISPLAY_TRACE_H__) || defined(TRACE_HEADER_MULTI_READ)
 #define __INTEL_DISPLAY_TRACE_H__
 
+#include <linux/string_helpers.h>
 #include <linux/types.h>
 #include <linux/tracepoint.h>
 
@@ -161,7 +162,7 @@ TRACE_EVENT(intel_memory_cxsr,
 			   ),
 
 	    TP_printk("%s->%s, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
-		      onoff(__entry->old), onoff(__entry->new),
+		      str_on_off(__entry->old), str_on_off(__entry->new),
 		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
 		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
 		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 14f5ffe27d05..0ae37fdbf2a5 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -4,6 +4,7 @@
  */
 
 #include <linux/kernel.h>
+#include <linux/string_helpers.h>
 
 #include "intel_crtc.h"
 #include "intel_de.h"
@@ -1945,7 +1946,7 @@ static void assert_pll(struct drm_i915_private *dev_priv,
 	cur_state = intel_de_read(dev_priv, DPLL(pipe)) & DPLL_VCO_ENABLE;
 	I915_STATE_WARN(cur_state != state,
 			"PLL state assertion failure (expected %s, current %s)\n",
-			onoff(state), onoff(cur_state));
+			str_on_off(state), str_on_off(cur_state));
 }
 
 void assert_pll_enabled(struct drm_i915_private *i915, enum pipe pipe)
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 569903d47aea..f10eae7a75c6 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -21,6 +21,8 @@
  * DEALINGS IN THE SOFTWARE.
  */
 
+#include <linux/string_helpers.h>
+
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dpio_phy.h"
@@ -178,13 +180,14 @@ void assert_shared_dpll(struct drm_i915_private *dev_priv,
 	struct intel_dpll_hw_state hw_state;
 
 	if (drm_WARN(&dev_priv->drm, !pll,
-		     "asserting DPLL %s with no DPLL\n", onoff(state)))
+		     "asserting DPLL %s with no DPLL\n", str_on_off(state)))
 		return;
 
 	cur_state = intel_dpll_get_hw_state(dev_priv, pll, &hw_state);
 	I915_STATE_WARN(cur_state != state,
 	     "%s assertion failure (expected %s, current %s)\n",
-			pll->info->name, onoff(state), onoff(cur_state));
+			pll->info->name, str_on_off(state),
+			str_on_off(cur_state));
 }
 
 static enum tc_port icl_pll_id_to_tc_port(enum intel_dpll_id id)
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 4e4b43669b14..67d2484afbaa 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -3,6 +3,8 @@
  * Copyright © 2020 Intel Corporation
  */
 
+#include <linux/string_helpers.h>
+
 #include "intel_atomic.h"
 #include "intel_crtc.h"
 #include "intel_ddi.h"
@@ -34,7 +36,7 @@ static void assert_fdi_tx(struct drm_i915_private *dev_priv,
 	}
 	I915_STATE_WARN(cur_state != state,
 			"FDI TX state assertion failure (expected %s, current %s)\n",
-			onoff(state), onoff(cur_state));
+			str_on_off(state), str_on_off(cur_state));
 }
 
 void assert_fdi_tx_enabled(struct drm_i915_private *i915, enum pipe pipe)
@@ -55,7 +57,7 @@ static void assert_fdi_rx(struct drm_i915_private *dev_priv,
 	cur_state = intel_de_read(dev_priv, FDI_RX_CTL(pipe)) & FDI_RX_ENABLE;
 	I915_STATE_WARN(cur_state != state,
 			"FDI RX state assertion failure (expected %s, current %s)\n",
-			onoff(state), onoff(cur_state));
+			str_on_off(state), str_on_off(cur_state));
 }
 
 void assert_fdi_rx_enabled(struct drm_i915_private *i915, enum pipe pipe)
@@ -93,7 +95,7 @@ static void assert_fdi_rx_pll(struct drm_i915_private *i915,
 	cur_state = intel_de_read(i915, FDI_RX_CTL(pipe)) & FDI_RX_PLL_ENABLE;
 	I915_STATE_WARN(cur_state != state,
 			"FDI RX PLL assertion failure (expected %s, current %s)\n",
-			onoff(state), onoff(cur_state));
+			str_on_off(state), str_on_off(cur_state));
 }
 
 void assert_fdi_rx_pll_enabled(struct drm_i915_private *i915, enum pipe pipe)
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
index df880f44700a..1385b46aeb26 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
@@ -26,6 +26,7 @@
  */
 
 #include <linux/kernel.h>
+#include <linux/string_helpers.h>
 
 #include "i915_drv.h"
 #include "intel_de.h"
@@ -581,7 +582,7 @@ static void assert_dsi_pll(struct drm_i915_private *i915, bool state)
 
 	I915_STATE_WARN(cur_state != state,
 			"DSI PLL state assertion failure (expected %s, current %s)\n",
-			onoff(state), onoff(cur_state));
+			str_on_off(state), str_on_off(cur_state));
 }
 
 void assert_dsi_pll_enabled(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 6df359c534fe..63db136cbc27 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -4,6 +4,7 @@
  */
 
 #include <linux/pm_runtime.h>
+#include <linux/string_helpers.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
@@ -430,8 +431,8 @@ static bool bxt_check_bios_rc6_setup(struct intel_rc6 *rc6)
 	rc_sw_target >>= RC_SW_TARGET_STATE_SHIFT;
 	drm_dbg(&i915->drm, "BIOS enabled RC states: "
 			 "HW_CTRL %s HW_RC6 %s SW_TARGET_STATE %x\n",
-			 onoff(rc_ctl & GEN6_RC_CTL_HW_ENABLE),
-			 onoff(rc_ctl & GEN6_RC_CTL_RC6_ENABLE),
+			 str_on_off(rc_ctl & GEN6_RC_CTL_HW_ENABLE),
+			 str_on_off(rc_ctl & GEN6_RC_CTL_RC6_ENABLE),
 			 rc_sw_target);
 
 	if (!(intel_uncore_read(uncore, RC6_LOCATION) & RC6_CTX_IN_DRAM)) {
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index 6d26920d0632..3ff9611ff81c 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -400,11 +400,6 @@ wait_remaining_ms_from_jiffies(unsigned long timestamp_jiffies, int to_wait_ms)
 #define MBps(x) KBps(1000 * (x))
 #define GBps(x) ((u64)1000 * MBps((x)))
 
-static inline const char *onoff(bool v)
-{
-	return v ? "on" : "off";
-}
-
 void add_taint_for_CI(struct drm_i915_private *i915, unsigned int taint);
 static inline void __add_taint_for_CI(unsigned int taint)
 {
diff --git a/drivers/gpu/drm/i915/vlv_suspend.c b/drivers/gpu/drm/i915/vlv_suspend.c
index 1d9da32195c2..664fde244f59 100644
--- a/drivers/gpu/drm/i915/vlv_suspend.c
+++ b/drivers/gpu/drm/i915/vlv_suspend.c
@@ -3,6 +3,7 @@
  * Copyright © 2020 Intel Corporation
  */
 
+#include <linux/string_helpers.h>
 #include <linux/kernel.h>
 
 #include <drm/drm_print.h>
@@ -375,7 +376,7 @@ static void vlv_wait_for_gt_wells(struct drm_i915_private *dev_priv,
 	if (vlv_wait_for_pw_status(dev_priv, mask, val))
 		drm_dbg(&dev_priv->drm,
 			"timeout waiting for GT wells to go %s\n",
-			onoff(wait_for_on));
+			str_on_off(wait_for_on));
 }
 
 static void vlv_check_no_gt_access(struct drm_i915_private *i915)
-- 
2.35.1

