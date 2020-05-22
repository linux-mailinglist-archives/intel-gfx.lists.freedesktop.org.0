Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C7C1DE7ED
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2020 15:22:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED6D46E843;
	Fri, 22 May 2020 13:22:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D45396E843
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 May 2020 13:22:38 +0000 (UTC)
IronPort-SDR: T/ZyCwTEkXjPVCXtwtKVxKJobRSKKTHLypAYUE0m+7XBBidRbW3Ufxh4Q7eltJQX2xHyO4NGXS
 IYgrBZafnK0g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 06:22:38 -0700
IronPort-SDR: /pXPVsu/bxtS3jSWRH96Rej/bllVc2EpvQb0iRV8tpcqTb3DL1KHvVFX5zPz//uXTpBDYE0O5J
 YYUortQABDuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,421,1583222400"; d="scan'208";a="309367960"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by FMSMGA003.fm.intel.com with ESMTP; 22 May 2020 06:22:36 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 May 2020 16:18:43 +0300
Message-Id: <20200522131843.20477-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Fix includes and local vars order
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
Cc: chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Removed duplicate include and fixed comment > 80 chars.

v2: Added newline after system include and between functions

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c    | 44 ++++++++++++----------
 drivers/gpu/drm/i915/display/intel_bw.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c |  3 +-
 drivers/gpu/drm/i915/display/intel_cdclk.h |  1 +
 drivers/gpu/drm/i915/intel_pm.c            |  3 +-
 drivers/gpu/drm/i915/intel_pm.h            |  2 +-
 6 files changed, 31 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 8d2f58e39595..a79bd7aeb03b 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -5,13 +5,12 @@
 
 #include <drm/drm_atomic_state_helper.h>
 
+#include "intel_atomic.h"
 #include "intel_bw.h"
-#include "intel_pm.h"
+#include "intel_cdclk.h"
 #include "intel_display_types.h"
-#include "intel_sideband.h"
-#include "intel_atomic.h"
 #include "intel_pm.h"
-#include "intel_cdclk.h"
+#include "intel_sideband.h"
 
 /* Parameters for Qclk Geyserville (QGV) */
 struct intel_qgv_point {
@@ -352,6 +351,7 @@ static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_state *crtc_
 
 	return data_rate;
 }
+
 void intel_bw_crtc_update(struct intel_bw_state *bw_state,
 			  const struct intel_crtc_state *crtc_state)
 {
@@ -431,13 +431,13 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state)
 int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	int i;
+	struct intel_bw_state *new_bw_state = NULL;
+	struct intel_bw_state *old_bw_state = NULL;
 	const struct intel_crtc_state *crtc_state;
 	struct intel_crtc *crtc;
 	int max_bw = 0;
 	int slice_id;
-	struct intel_bw_state *new_bw_state = NULL;
-	struct intel_bw_state *old_bw_state = NULL;
+	int i;
 
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
 		enum plane_id plane_id;
@@ -463,14 +463,17 @@ int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
 			dbuf_mask |= skl_ddb_dbuf_slice_mask(dev_priv, uv_plane_alloc);
 
 			/*
-			 * FIXME: To calculate that more properly we probably need to
-			 * to split per plane data_rate into data_rate_y and data_rate_uv
-			 * for multiplanar formats in order not to get accounted those twice
-			 * if they happen to reside on different slices.
-			 * However for pre-icl this would work anyway because we have only single
-			 * slice and for icl+ uv plane has non-zero data rate.
-			 * So in worst case those calculation are a bit pessimistic, which
-			 * shouldn't pose any significant problem anyway.
+			 * FIXME: To calculate that more properly we probably
+			 * need to to split per plane data_rate into data_rate_y
+			 * and data_rate_uv for multiplanar formats in order not
+			 * to get accounted those twice if they happen to reside
+			 * on different slices.
+			 * However for pre-icl this would work anyway because
+			 * we have only single slice and for icl+ uv plane has
+			 * non-zero data rate.
+			 * So in worst case those calculation are a bit
+			 * pessimistic, which shouldn't pose any significant
+			 * problem anyway.
 			 */
 			for_each_dbuf_slice_in_mask(slice_id, dbuf_mask)
 				crtc_bw->used_bw[slice_id] += data_rate;
@@ -478,11 +481,12 @@ int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
 
 		for_each_dbuf_slice(slice_id) {
 			/*
-			 * Current experimental observations show that contrary to BSpec
-			 * we get underruns once we exceed 64 * CDCLK for slices in total.
-			 * As a temporary measure in order not to keep CDCLK bumped up all the
-			 * time we calculate CDCLK according to this formula for  overall bw
-			 * consumed by slices.
+			 * Current experimental observations show that contrary
+			 * to BSpec we get underruns once we exceed 64 * CDCLK
+			 * for slices in total.
+			 * As a temporary measure in order not to keep CDCLK
+			 * bumped up all the time we calculate CDCLK according
+			 * to this formula for  overall bw consumed by slices.
 			 */
 			max_bw += crtc_bw->used_bw[slice_id];
 		}
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index af1a981dec84..46c6eecbd917 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -9,8 +9,8 @@
 #include <drm/drm_atomic.h>
 
 #include "intel_display.h"
-#include "intel_global_state.h"
 #include "intel_display_power.h"
+#include "intel_global_state.h"
 
 struct drm_i915_private;
 struct intel_atomic_state;
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index dda9bae02a86..f9b0fc7317de 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -22,11 +22,12 @@
  */
 
 #include <linux/time.h>
+
 #include "intel_atomic.h"
+#include "intel_bw.h"
 #include "intel_cdclk.h"
 #include "intel_display_types.h"
 #include "intel_sideband.h"
-#include "intel_bw.h"
 
 /**
  * DOC: CDCLK / RAWCLK
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index d62e11d620c0..5731806e4cee 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -7,6 +7,7 @@
 #define __INTEL_CDCLK_H__
 
 #include <linux/types.h>
+
 #include "i915_drv.h"
 #include "intel_display.h"
 #include "intel_global_state.h"
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 937d91c28de9..79b673e6051e 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -33,6 +33,7 @@
 #include <drm/drm_plane_helper.h>
 
 #include "display/intel_atomic.h"
+#include "display/intel_bw.h"
 #include "display/intel_display_types.h"
 #include "display/intel_fbc.h"
 #include "display/intel_sprite.h"
@@ -43,7 +44,7 @@
 #include "i915_fixed.h"
 #include "i915_irq.h"
 #include "i915_trace.h"
-#include "display/intel_bw.h"
+
 #include "intel_pm.h"
 #include "intel_sideband.h"
 #include "../../../platform/x86/intel_ips.h"
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
index d665bf77ae80..a2473594c2db 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -8,10 +8,10 @@
 
 #include <linux/types.h>
 
+#include "display/intel_bw.h"
 #include "display/intel_global_state.h"
 
 #include "i915_reg.h"
-#include "display/intel_bw.h"
 
 struct drm_device;
 struct drm_i915_private;
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
