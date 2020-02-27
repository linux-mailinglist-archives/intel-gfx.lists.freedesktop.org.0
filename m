Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78421172459
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 18:01:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9CF189F49;
	Thu, 27 Feb 2020 17:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6052589F49
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 17:01:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 09:01:05 -0800
X-IronPort-AV: E=Sophos;i="5.70,492,1574150400"; d="scan'208";a="242107194"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 09:01:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 19:00:47 +0200
Message-Id: <20200227170047.31089-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200227170047.31089-1-jani.nikula@intel.com>
References: <20200227170047.31089-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: move watermark structs more
 towards usage
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

Shrink i915_drv.h a bit by moving watermark structs where they are
needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_types.h    | 16 ++++++++
 drivers/gpu/drm/i915/i915_drv.h               | 40 -------------------
 drivers/gpu/drm/i915/intel_pm.c               | 24 +++++++++++
 3 files changed, 40 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0a06043d4d4c..2b357ca60454 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -641,6 +641,14 @@ struct intel_crtc_scaler_state {
 /* Flag to use the scanline counter instead of the pixel counter */
 #define I915_MODE_FLAG_USE_SCANLINE_COUNTER (1<<2)
 
+struct intel_wm_level {
+	bool enable;
+	u32 pri_val;
+	u32 spr_val;
+	u32 cur_val;
+	u32 fbc_val;
+};
+
 struct intel_pipe_wm {
 	struct intel_wm_level wm[5];
 	bool fbc_wm_enabled;
@@ -649,6 +657,14 @@ struct intel_pipe_wm {
 	bool sprites_scaled;
 };
 
+struct skl_wm_level {
+	u16 min_ddb_alloc;
+	u16 plane_res_b;
+	u8 plane_res_l;
+	bool plane_en;
+	bool ignore_lines;
+};
+
 struct skl_plane_wm {
 	struct skl_wm_level wm[8];
 	struct skl_wm_level uv_wm[8];
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 714d564ba900..2e33dc8b4495 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -59,7 +59,6 @@
 #include <drm/drm_connector.h>
 #include <drm/i915_mei_hdcp_interface.h>
 
-#include "i915_fixed.h"
 #include "i915_params.h"
 #include "i915_reg.h"
 #include "i915_utils.h"
@@ -732,14 +731,6 @@ enum intel_ddb_partitioning {
 	INTEL_DDB_PART_5_6, /* IVB+ */
 };
 
-struct intel_wm_level {
-	bool enable;
-	u32 pri_val;
-	u32 spr_val;
-	u32 cur_val;
-	u32 fbc_val;
-};
-
 struct ilk_wm_values {
 	u32 wm_pipe[3];
 	u32 wm_lp[3];
@@ -798,30 +789,6 @@ static inline bool skl_ddb_entry_equal(const struct skl_ddb_entry *e1,
 	return false;
 }
 
-struct skl_wm_level {
-	u16 min_ddb_alloc;
-	u16 plane_res_b;
-	u8 plane_res_l;
-	bool plane_en;
-	bool ignore_lines;
-};
-
-/* Stores plane specific WM parameters */
-struct skl_wm_params {
-	bool x_tiled, y_tiled;
-	bool rc_surface;
-	bool is_planar;
-	u32 width;
-	u8 cpp;
-	u32 plane_pixel_rate;
-	u32 y_min_scanlines;
-	u32 plane_bytes_per_line;
-	uint_fixed_16_16_t plane_blocks_per_line;
-	uint_fixed_16_16_t y_tile_minimum;
-	u32 linetime_us;
-	u32 dbuf_block_size;
-};
-
 enum intel_pipe_crc_source {
 	INTEL_PIPE_CRC_SOURCE_NONE,
 	INTEL_PIPE_CRC_SOURCE_PLANE1,
@@ -865,13 +832,6 @@ struct i915_virtual_gpu {
 	u32 caps;
 };
 
-/* used in computing the new watermarks state */
-struct intel_wm_config {
-	unsigned int num_pipes_active;
-	bool sprites_enabled;
-	bool sprites_scaled;
-};
-
 struct intel_cdclk_config {
 	unsigned int cdclk, vco, ref, bypass;
 	u8 voltage_level;
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 22aa205793e5..033a790b3b85 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -40,12 +40,36 @@
 #include "gt/intel_llc.h"
 
 #include "i915_drv.h"
+#include "i915_fixed.h"
 #include "i915_irq.h"
 #include "i915_trace.h"
 #include "intel_pm.h"
 #include "intel_sideband.h"
 #include "../../../platform/x86/intel_ips.h"
 
+/* Stores plane specific WM parameters */
+struct skl_wm_params {
+	bool x_tiled, y_tiled;
+	bool rc_surface;
+	bool is_planar;
+	u32 width;
+	u8 cpp;
+	u32 plane_pixel_rate;
+	u32 y_min_scanlines;
+	u32 plane_bytes_per_line;
+	uint_fixed_16_16_t plane_blocks_per_line;
+	uint_fixed_16_16_t y_tile_minimum;
+	u32 linetime_us;
+	u32 dbuf_block_size;
+};
+
+/* used in computing the new watermarks state */
+struct intel_wm_config {
+	unsigned int num_pipes_active;
+	bool sprites_enabled;
+	bool sprites_scaled;
+};
+
 static void gen9_init_clock_gating(struct drm_i915_private *dev_priv)
 {
 	if (HAS_LLC(dev_priv)) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
