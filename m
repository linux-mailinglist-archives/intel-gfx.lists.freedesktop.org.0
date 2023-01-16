Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD80766BE5B
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jan 2023 13:56:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0755910E3FE;
	Mon, 16 Jan 2023 12:56:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FB1510E3FC
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Jan 2023 12:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673873789; x=1705409789;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9bMxaB9i27iQO2eTBzrClsFjjb/cJDU0jAAC7e4SFic=;
 b=UXIh1goweoSpBey2bY1Wgxc2kg/aKilL838wkPe73Civk7TCQPBBQMN2
 tpsC6CITUxxg4BchyGp6x+Fwj7UfzqXhN2m1lMUWK3rFRgAGCTZg2Wfem
 cUd6vMXkWuHYF9tJ5vHclBptwRT/tNV5SNdLFJef5Yfyw6mBqomdZ3hhQ
 vhAN+NKmvN8XV5wJVl9RLl6jsTuw8zMwaQBlw9BtR2M/Mlk3wz7C99oiX
 10wSbs4O6P+XF4bRS7i/CW5tocvc0FedccIIFHjtaMemifaZx5Sww4DT2
 rXWrwq/oeWfMZ+pqxB38qyKVkvanFrV/INEdNURP6FF6RjG4IL9Q2XFg4 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="386799993"
X-IronPort-AV: E=Sophos;i="5.97,221,1669104000"; d="scan'208";a="386799993"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 04:56:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="904320291"
X-IronPort-AV: E=Sophos;i="5.97,221,1669104000"; d="scan'208";a="904320291"
Received: from amakarev-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.13.137])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 04:56:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Jan 2023 14:56:13 +0200
Message-Id: <3613b8c22e5022ebf61ab942e6bc81b717e8f520.1673873708.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1673873708.git.jani.nikula@intel.com>
References: <cover.1673873708.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/5] drm/i915/display: move more scanline
 functions to intel_vblank.[ch]
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reduce clutter in intel_display.c by moving the scanline moving/stopped
wait functions to intel_vblank.[ch].

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 36 +-------------------
 drivers/gpu/drm/i915/display/intel_vblank.c  | 35 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vblank.h  |  2 ++
 3 files changed, 38 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 734e8e613f8e..b5c0ab0f5e51 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -112,6 +112,7 @@
 #include "intel_sprite.h"
 #include "intel_tc.h"
 #include "intel_tv.h"
+#include "intel_vblank.h"
 #include "intel_vdsc.h"
 #include "intel_vga.h"
 #include "intel_vrr.h"
@@ -384,41 +385,6 @@ struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state)
 		return to_intel_crtc(crtc_state->uapi.crtc);
 }
 
-static bool pipe_scanline_is_moving(struct drm_i915_private *dev_priv,
-				    enum pipe pipe)
-{
-	i915_reg_t reg = PIPEDSL(pipe);
-	u32 line1, line2;
-
-	line1 = intel_de_read(dev_priv, reg) & PIPEDSL_LINE_MASK;
-	msleep(5);
-	line2 = intel_de_read(dev_priv, reg) & PIPEDSL_LINE_MASK;
-
-	return line1 != line2;
-}
-
-static void wait_for_pipe_scanline_moving(struct intel_crtc *crtc, bool state)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum pipe pipe = crtc->pipe;
-
-	/* Wait for the display line to settle/start moving */
-	if (wait_for(pipe_scanline_is_moving(dev_priv, pipe) == state, 100))
-		drm_err(&dev_priv->drm,
-			"pipe %c scanline %s wait timed out\n",
-			pipe_name(pipe), str_on_off(state));
-}
-
-static void intel_wait_for_pipe_scanline_stopped(struct intel_crtc *crtc)
-{
-	wait_for_pipe_scanline_moving(crtc, false);
-}
-
-static void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc)
-{
-	wait_for_pipe_scanline_moving(crtc, true);
-}
-
 static void
 intel_wait_for_pipe_off(const struct intel_crtc_state *old_crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 6392a56ae7d4..bc792b363ffc 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -417,3 +417,38 @@ int intel_get_crtc_scanline(struct intel_crtc *crtc)
 
 	return position;
 }
+
+static bool pipe_scanline_is_moving(struct drm_i915_private *dev_priv,
+				    enum pipe pipe)
+{
+	i915_reg_t reg = PIPEDSL(pipe);
+	u32 line1, line2;
+
+	line1 = intel_de_read(dev_priv, reg) & PIPEDSL_LINE_MASK;
+	msleep(5);
+	line2 = intel_de_read(dev_priv, reg) & PIPEDSL_LINE_MASK;
+
+	return line1 != line2;
+}
+
+static void wait_for_pipe_scanline_moving(struct intel_crtc *crtc, bool state)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+
+	/* Wait for the display line to settle/start moving */
+	if (wait_for(pipe_scanline_is_moving(dev_priv, pipe) == state, 100))
+		drm_err(&dev_priv->drm,
+			"pipe %c scanline %s wait timed out\n",
+			pipe_name(pipe), str_on_off(state));
+}
+
+void intel_wait_for_pipe_scanline_stopped(struct intel_crtc *crtc)
+{
+	wait_for_pipe_scanline_moving(crtc, false);
+}
+
+void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc)
+{
+	wait_for_pipe_scanline_moving(crtc, true);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
index c68eda6488bf..c9fea2c2a990 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.h
+++ b/drivers/gpu/drm/i915/display/intel_vblank.h
@@ -17,5 +17,7 @@ u32 g4x_get_vblank_counter(struct drm_crtc *crtc);
 bool intel_crtc_get_vblank_timestamp(struct drm_crtc *crtc, int *max_error,
 				     ktime_t *vblank_time, bool in_vblank_irq);
 int intel_get_crtc_scanline(struct intel_crtc *crtc);
+void intel_wait_for_pipe_scanline_stopped(struct intel_crtc *crtc);
+void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc);
 
 #endif /* __INTEL_VBLANK_H__ */
-- 
2.34.1

