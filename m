Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B429458FC0
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 14:51:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ED3E89E36;
	Mon, 22 Nov 2021 13:51:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D61D389ED3
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 13:51:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="215498541"
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="215498541"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 05:51:24 -0800
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="456642641"
Received: from rmcdonax-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.19.217])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 05:51:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Nov 2021 15:51:03 +0200
Message-Id: <0afc1d559c463fb5f9fc74b768df6a4e6bfcd2c6.1637588831.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1637588831.git.jani.nikula@intel.com>
References: <cover.1637588831.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/8] drm/i915/display: remove
 intel_wait_for_vblank()
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

There are only three call sites remaining for
intel_wait_for_vblank(). Remove the function, and open code it to avoid
new users from showing up.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c         | 2 +-
 drivers/gpu/drm/i915/display/intel_crt.c           | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c       | 8 ++++++--
 drivers/gpu/drm/i915/display/intel_display_types.h | 8 --------
 4 files changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 91c19e0a98d7..e3b863ee0bbb 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1690,7 +1690,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	intel_de_write(dev_priv, CDCLK_CTL, val);
 
 	if (pipe != INVALID_PIPE)
-		intel_wait_for_vblank(dev_priv, pipe);
+		drm_crtc_wait_one_vblank(&intel_get_crtc_for_pipe(dev_priv, pipe)->base);
 
 	if (DISPLAY_VER(dev_priv) >= 11) {
 		ret = sandybridge_pcode_write(dev_priv, SKL_PCODE_CDCLK_CONTROL,
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 8796527f74e5..43b3f6044f96 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -721,7 +721,7 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
 		intel_uncore_posting_read(uncore, pipeconf_reg);
 		/* Wait for next Vblank to substitue
 		 * border color for Color info */
-		intel_wait_for_vblank(dev_priv, pipe);
+		drm_crtc_wait_one_vblank(&intel_get_crtc_for_pipe(dev_priv, pipe)->base);
 		st00 = intel_uncore_read8(uncore, _VGA_MSR_WRITE);
 		status = ((st00 & (1 << 4)) != 0) ?
 			connector_status_connected :
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 48d93d1f6c1a..1fc602bdfde1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2098,8 +2098,12 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	 * to change the workaround. */
 	hsw_workaround_pipe = new_crtc_state->hsw_workaround_pipe;
 	if (IS_HASWELL(dev_priv) && hsw_workaround_pipe != INVALID_PIPE) {
-		intel_wait_for_vblank(dev_priv, hsw_workaround_pipe);
-		intel_wait_for_vblank(dev_priv, hsw_workaround_pipe);
+		struct intel_crtc *wa_crtc;
+
+		wa_crtc = intel_get_crtc_for_pipe(dev_priv, hsw_workaround_pipe);
+
+		drm_crtc_wait_one_vblank(&wa_crtc->base);
+		drm_crtc_wait_one_vblank(&wa_crtc->base);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index a5508b8cdf63..2a18c4e554ef 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2016,14 +2016,6 @@ intel_crtc_needs_modeset(const struct intel_crtc_state *crtc_state)
 	return drm_atomic_crtc_needs_modeset(&crtc_state->uapi);
 }
 
-static inline void
-intel_wait_for_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
-{
-	struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
-
-	drm_crtc_wait_one_vblank(&crtc->base);
-}
-
 static inline void
 intel_wait_for_vblank_if_active(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
-- 
2.30.2

