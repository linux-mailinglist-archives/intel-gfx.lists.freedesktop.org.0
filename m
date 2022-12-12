Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3F164A34F
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Dec 2022 15:29:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 870FD10E1A4;
	Mon, 12 Dec 2022 14:29:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1514610E195
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Dec 2022 14:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670855382; x=1702391382;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=onUESMs1TPMicPhk4gjSTv57P+X3qoO1spm+Dw5Rfz4=;
 b=LU/7nd2i6sbLfUdhQ3oHU0DQ2u5U+fv6Jy239XdUnqpsUIXheel3y0RN
 tWTZ/gS24lMl/iJkeujs99zg6YQocPaaNJWrvDKrC2kC8oZB5gesQmlzJ
 SWr0QriJcMVM2bEjFndHBqW5tBo7dJ0BH4qIQYACKDeNOfEe2VuOxtzX7
 pGEBhTYhk2oYY2ns9HWm0EfH9eTLmCjP3+6csKLqbkfTPl5iOXXdE8eSG
 GQjAEAHCg0D9/XG0jtlKJFFCwQqanE8P37Mec5QVde0RdAdCL132ogRLH
 d7nQdhsCwaZDbGnQywooP/nEXG0AcfZIEjaQTMNJn7UZQr8/uT0voxeul A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="315498658"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="315498658"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 06:29:40 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="680692226"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="680692226"
Received: from sshumihi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.5.95])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 06:29:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Dec 2022 16:29:20 +0200
Message-Id: <ad40080099b3d0c95f0fac89053b5c34d2ef4549.1670855299.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1670855299.git.jani.nikula@intel.com>
References: <cover.1670855299.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/7] drm/i915/display: move more scanline
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
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 36 +-------------------
 drivers/gpu/drm/i915/display/intel_vblank.c  | 35 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vblank.h  |  2 ++
 3 files changed, 38 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6cdfdae2c712..0cdb514d7ee0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -115,6 +115,7 @@
 #include "intel_quirks.h"
 #include "intel_sprite.h"
 #include "intel_tc.h"
+#include "intel_vblank.h"
 #include "intel_vga.h"
 #include "i9xx_plane.h"
 #include "skl_scaler.h"
@@ -386,41 +387,6 @@ struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state)
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
index 78a579496ad1..f25ec643a0a3 100644
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
index 9c0034d7454d..54870cabd734 100644
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

