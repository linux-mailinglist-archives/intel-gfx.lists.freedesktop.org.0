Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B70836C5B7
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 14:03:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8CA76E93D;
	Tue, 27 Apr 2021 12:03:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72EA06E94B
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 12:03:22 +0000 (UTC)
IronPort-SDR: hulHVJj2lDSwFfYT8Km9kV2ZU6MN1f5N5DtIDsttNWIsJibwgPOM3u3TO0M9IqBj2zdktWskQ+
 zcEx14xT8LLw==
X-IronPort-AV: E=McAfee;i="6200,9189,9966"; a="196606102"
X-IronPort-AV: E=Sophos;i="5.82,254,1613462400"; d="scan'208";a="196606102"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 05:03:21 -0700
IronPort-SDR: AGQCq9qFZVlQWG+huaRya9KH5YE0zj21Ybt8C4WniaFxZ2i63wO2kFIUV+gKMjjOH3SyEaIWbk
 imiJV1Fk5n5Q==
X-IronPort-AV: E=Sophos;i="5.82,254,1613462400"; d="scan'208";a="429785298"
Received: from aalbarra-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.41.45])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 05:03:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Apr 2021 15:03:15 +0300
Message-Id: <20210427120315.12342-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915/display: move crtc and dpll
 declarations where they belong
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The definitions are in the crtc and dpll files; move the declarations to
the corresponding headers.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        | 1 +
 drivers/gpu/drm/i915/display/intel_crt.c      | 1 +
 drivers/gpu/drm/i915/display/intel_crtc.h     | 3 +++
 drivers/gpu/drm/i915/display/intel_ddi.c      | 1 +
 drivers/gpu/drm/i915/display/intel_display.h  | 6 ------
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 1 +
 drivers/gpu/drm/i915/display/intel_dpll.h     | 5 +++++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1 +
 drivers/gpu/drm/i915/display/intel_sdvo.c     | 1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        | 1 +
 drivers/gpu/drm/i915/i915_trace.h             | 1 +
 11 files changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 37e2d93d064c..781630a40f06 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -31,6 +31,7 @@
 #include "intel_atomic.h"
 #include "intel_combo_phy.h"
 #include "intel_connector.h"
+#include "intel_crtc.h"
 #include "intel_ddi.h"
 #include "intel_dsi.h"
 #include "intel_panel.h"
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index c85092eaa5c2..1aac8bead4eb 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -36,6 +36,7 @@
 #include "i915_drv.h"
 #include "intel_connector.h"
 #include "intel_crt.h"
+#include "intel_crtc.h"
 #include "intel_ddi.h"
 #include "intel_display_types.h"
 #include "intel_fdi.h"
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
index 08112d557411..a5ae997581aa 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc.h
@@ -18,5 +18,8 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe);
 struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc *crtc);
 void intel_crtc_state_reset(struct intel_crtc_state *crtc_state,
 			    struct intel_crtc *crtc);
+u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc);
+void intel_crtc_vblank_on(const struct intel_crtc_state *crtc_state);
+void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index f4249f087fa7..93d94d50b63d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -31,6 +31,7 @@
 #include "intel_audio.h"
 #include "intel_combo_phy.h"
 #include "intel_connector.h"
+#include "intel_crtc.h"
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index b68bcd502206..fc0df4c63e8d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -557,9 +557,6 @@ enum tc_port intel_port_to_tc(struct drm_i915_private *dev_priv,
 			      enum port port);
 int intel_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
 				      struct drm_file *file_priv);
-u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc);
-void intel_crtc_vblank_on(const struct intel_crtc_state *crtc_state);
-void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state);
 
 int ilk_get_lanes_required(int target_clock, int link_bw, int bpp);
 void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
@@ -598,9 +595,6 @@ void intel_dp_get_m_n(struct intel_crtc *crtc,
 void intel_dp_set_m_n(const struct intel_crtc_state *crtc_state,
 		      enum link_m_n_set m_n);
 int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n *m_n);
-bool bxt_find_best_dpll(struct intel_crtc_state *crtc_state,
-			struct dpll *best_clock);
-int chv_calc_dpll_params(int refclk, struct dpll *pll_clock);
 
 bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state);
 void hsw_enable_ips(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 3558bce242ee..a30ca4380a06 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -32,6 +32,7 @@
 #include "intel_atomic.h"
 #include "intel_audio.h"
 #include "intel_connector.h"
+#include "intel_crtc.h"
 #include "intel_ddi.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.h b/drivers/gpu/drm/i915/display/intel_dpll.h
index 7ff4b0d29ed1..88247027fd5a 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll.h
@@ -6,6 +6,8 @@
 #ifndef _INTEL_DPLL_H_
 #define _INTEL_DPLL_H_
 
+#include <linux/types.h>
+
 struct dpll;
 struct drm_i915_private;
 struct intel_crtc;
@@ -37,5 +39,8 @@ void vlv_prepare_pll(struct intel_crtc *crtc,
 		     const struct intel_crtc_state *pipe_config);
 void chv_prepare_pll(struct intel_crtc *crtc,
 		     const struct intel_crtc_state *pipe_config);
+bool bxt_find_best_dpll(struct intel_crtc_state *crtc_state,
+			struct dpll *best_clock);
+int chv_calc_dpll_params(int refclk, struct dpll *pll_clock);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index e1c916640768..da2ff0b3ceac 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -23,6 +23,7 @@
 
 #include "intel_display_types.h"
 #include "intel_dpio_phy.h"
+#include "intel_dpll.h"
 #include "intel_dpll_mgr.h"
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index f770d6bcd2c9..f6eb95c717d2 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -38,6 +38,7 @@
 #include "i915_drv.h"
 #include "intel_atomic.h"
 #include "intel_connector.h"
+#include "intel_crtc.h"
 #include "intel_display_types.h"
 #include "intel_fifo_underrun.h"
 #include "intel_gmbus.h"
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 0d52da613101..ac0553d492aa 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -33,6 +33,7 @@
 #include "i915_drv.h"
 #include "intel_atomic.h"
 #include "intel_connector.h"
+#include "intel_crtc.h"
 #include "intel_display_types.h"
 #include "intel_dsi.h"
 #include "intel_fifo_underrun.h"
diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
index a4addcc64978..cac385e526c1 100644
--- a/drivers/gpu/drm/i915/i915_trace.h
+++ b/drivers/gpu/drm/i915/i915_trace.h
@@ -8,6 +8,7 @@
 
 #include <drm/drm_drv.h>
 
+#include "display/intel_crtc.h"
 #include "display/intel_display_types.h"
 #include "gt/intel_engine.h"
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
