Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 421BE49C683
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 10:40:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9DA910E846;
	Wed, 26 Jan 2022 09:39:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8861610E7EC;
 Wed, 26 Jan 2022 09:39:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643189972; x=1674725972;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wRejAROzch563bPo6DTQyhdZ6Zo5EFcZ/Ovk8SHTsQE=;
 b=FIl9RbaRLVILnF91elRY0z96LFWKrCRrChGcAJ3IfOxuQH7gbQ8uTN9z
 lZocX15nLylFIsiWoYUrrFzIPCYvSlk/AV33VsH0a+MyC7p/B2yNMmF+c
 StenLkWogBPZeNfbUFNYxe7jUolQB8he+dy1T6bvSYnyq5Q3YqJrtcrxG
 15vwRqMVQQCxMDs62z2VB82tPo9a8zPflm8Aft3/g1QBPRrIxCGrZuh/h
 +JuRUgPJJ0ydonFQgtOIBd94eGNi1Fxi5mqcGRv3rMHJjHYjuCIhC4eVX
 CUfsIcIJUnhUEEO49tIyaRJuSTl0eEgRXLr4RIYfCI7wbAC5pM8YJW7kj g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="309830634"
X-IronPort-AV: E=Sophos;i="5.88,317,1635231600"; d="scan'208";a="309830634"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 01:39:31 -0800
X-IronPort-AV: E=Sophos;i="5.88,317,1635231600"; d="scan'208";a="477433096"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 01:39:30 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 linux-security-module@vger.kernel.org, nouveau@lists.freedesktop.org,
 netdev@vger.kernel.org
Date: Wed, 26 Jan 2022 01:39:46 -0800
Message-Id: <20220126093951.1470898-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220126093951.1470898-1-lucas.demarchi@intel.com>
References: <20220126093951.1470898-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/11] drm/i915: Use str_on_off()
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
Cc: Emma Anholt <emma@anholt.net>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Chris Wilson <chris@chris-wilson.co.uk>, Vishal Kulkarni <vishal@chelsio.com>,
 Francis Laniel <laniel_francis@privacyrequired.com>,
 Kentaro Takeda <takedakn@nttdata.co.jp>, Leo Li <sunpeng.li@amd.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Ben Skeggs <bskeggs@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, Harry Wentland <harry.wentland@amd.com>,
 Petr Mladek <pmladek@suse.com>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Julia Lawall <julia.lawall@lip6.fr>,
 Rahul Lakkireddy <rahul.lakkireddy@chelsio.com>,
 Steven Rostedt <rostedt@goodmis.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Raju Rangoju <rajur@chelsio.com>, Alex Deucher <alexander.deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove the local onoff() implementation and adopt the
str_on_off() from linux/string_helpers.h.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Acked-by: Jani Nikula <jani.nikula@intel.com>
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
index f37677df6ebf..3e729bff1232 100644
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
@@ -191,7 +193,7 @@ static void assert_dp_port(struct intel_dp *intel_dp, bool state)
 	I915_STATE_WARN(cur_state != state,
 			"[ENCODER:%d:%s] state assertion failure (expected %s, current %s)\n",
 			dig_port->base.base.base.id, dig_port->base.base.name,
-			onoff(state), onoff(cur_state));
+			str_on_off(state), str_on_off(cur_state));
 }
 #define assert_dp_port_disabled(d) assert_dp_port((d), false)
 
@@ -201,7 +203,7 @@ static void assert_edp_pll(struct drm_i915_private *dev_priv, bool state)
 
 	I915_STATE_WARN(cur_state != state,
 			"eDP PLL state assertion failure (expected %s, current %s)\n",
-			onoff(state), onoff(cur_state));
+			str_on_off(state), str_on_off(cur_state));
 }
 #define assert_edp_pll_enabled(d) assert_edp_pll((d), true)
 #define assert_edp_pll_disabled(d) assert_edp_pll((d), false)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8920bdb53b7b..49f994f36fce 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -377,7 +377,7 @@ static void wait_for_pipe_scanline_moving(struct intel_crtc *crtc, bool state)
 	if (wait_for(pipe_scanline_is_moving(dev_priv, pipe) == state, 100))
 		drm_err(&dev_priv->drm,
 			"pipe %c scanline %s wait timed out\n",
-			pipe_name(pipe), onoff(state));
+			pipe_name(pipe), str_on_off(state));
 }
 
 static void intel_wait_for_pipe_scanline_stopped(struct intel_crtc *crtc)
@@ -435,7 +435,7 @@ void assert_transcoder(struct drm_i915_private *dev_priv,
 	I915_STATE_WARN(cur_state != state,
 			"transcoder %s assertion failure (expected %s, current %s)\n",
 			transcoder_name(cpu_transcoder),
-			onoff(state), onoff(cur_state));
+			str_on_off(state), str_on_off(cur_state));
 }
 
 static void assert_plane(struct intel_plane *plane, bool state)
@@ -447,7 +447,8 @@ static void assert_plane(struct intel_plane *plane, bool state)
 
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
index 1ce0c171f4fb..1c401fd09eef 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -4,6 +4,7 @@
  */
 
 #include <linux/kernel.h>
+#include <linux/string_helpers.h>
 
 #include "intel_crtc.h"
 #include "intel_de.h"
@@ -1933,7 +1934,7 @@ static void assert_pll(struct drm_i915_private *dev_priv,
 	cur_state = intel_de_read(dev_priv, DPLL(pipe)) & DPLL_VCO_ENABLE;
 	I915_STATE_WARN(cur_state != state,
 			"PLL state assertion failure (expected %s, current %s)\n",
-			onoff(state), onoff(cur_state));
+			str_on_off(state), str_on_off(cur_state));
 }
 
 void assert_pll_enabled(struct drm_i915_private *i915, enum pipe pipe)
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 6723c3de5a80..a787995c0f79 100644
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
index 3d6e22923601..0fd2941313aa 100644
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
@@ -29,7 +31,7 @@ static void assert_fdi_tx(struct drm_i915_private *dev_priv,
 	}
 	I915_STATE_WARN(cur_state != state,
 			"FDI TX state assertion failure (expected %s, current %s)\n",
-			onoff(state), onoff(cur_state));
+			str_on_off(state), str_on_off(cur_state));
 }
 
 void assert_fdi_tx_enabled(struct drm_i915_private *i915, enum pipe pipe)
@@ -50,7 +52,7 @@ static void assert_fdi_rx(struct drm_i915_private *dev_priv,
 	cur_state = intel_de_read(dev_priv, FDI_RX_CTL(pipe)) & FDI_RX_ENABLE;
 	I915_STATE_WARN(cur_state != state,
 			"FDI RX state assertion failure (expected %s, current %s)\n",
-			onoff(state), onoff(cur_state));
+			str_on_off(state), str_on_off(cur_state));
 }
 
 void assert_fdi_rx_enabled(struct drm_i915_private *i915, enum pipe pipe)
@@ -88,7 +90,7 @@ static void assert_fdi_rx_pll(struct drm_i915_private *i915,
 	cur_state = intel_de_read(i915, FDI_RX_CTL(pipe)) & FDI_RX_PLL_ENABLE;
 	I915_STATE_WARN(cur_state != state,
 			"FDI RX PLL assertion failure (expected %s, current %s)\n",
-			onoff(state), onoff(cur_state));
+			str_on_off(state), str_on_off(cur_state));
 }
 
 void assert_fdi_rx_pll_enabled(struct drm_i915_private *i915, enum pipe pipe)
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
index 1b81797dd02e..7f9c0a7c3446 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
@@ -26,6 +26,7 @@
  */
 
 #include <linux/kernel.h>
+#include <linux/string_helpers.h>
 
 #include "i915_drv.h"
 #include "intel_de.h"
@@ -580,7 +581,7 @@ static void assert_dsi_pll(struct drm_i915_private *i915, bool state)
 
 	I915_STATE_WARN(cur_state != state,
 			"DSI PLL state assertion failure (expected %s, current %s)\n",
-			onoff(state), onoff(cur_state));
+			str_on_off(state), str_on_off(cur_state));
 }
 
 void assert_dsi_pll_enabled(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index bb0d6e363f5d..cde83e382ebe 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -4,6 +4,7 @@
  */
 
 #include <linux/pm_runtime.h>
+#include <linux/string_helpers.h>
 
 #include "i915_drv.h"
 #include "i915_vgpu.h"
@@ -428,8 +429,8 @@ static bool bxt_check_bios_rc6_setup(struct intel_rc6 *rc6)
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
index 23adb64d640a..a49a7da57d5a 100644
--- a/drivers/gpu/drm/i915/vlv_suspend.c
+++ b/drivers/gpu/drm/i915/vlv_suspend.c
@@ -3,6 +3,7 @@
  * Copyright © 2020 Intel Corporation
  */
 
+#include <linux/string_helpers.h>
 #include <linux/kernel.h>
 
 #include <drm/drm_print.h>
@@ -373,7 +374,7 @@ static void vlv_wait_for_gt_wells(struct drm_i915_private *dev_priv,
 	if (vlv_wait_for_pw_status(dev_priv, mask, val))
 		drm_dbg(&dev_priv->drm,
 			"timeout waiting for GT wells to go %s\n",
-			onoff(wait_for_on));
+			str_on_off(wait_for_on));
 }
 
 static void vlv_check_no_gt_access(struct drm_i915_private *i915)
-- 
2.34.1

