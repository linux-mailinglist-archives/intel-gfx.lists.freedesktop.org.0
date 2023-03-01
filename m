Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B676A70D6
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 17:25:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8216710E32E;
	Wed,  1 Mar 2023 16:25:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9691410E32E
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 16:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677687899; x=1709223899;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hy30swEvrLIabQ5c9jyS7HlTnMtEAEkS6pzFtz2jxKU=;
 b=nYbNTXuYF6x6QHu5sY+5KV7GbCHaki8KR/TpF5c2ESOzjcBIiVwumJUD
 7tKe97pjyWG4qB2qpWx/duFz4F6p/Km2wAIdfWXlyPdyPxxQcY8+GVcrB
 di71BuGCGpDq28njPKVoMmScU/aU9Ww7MSfrExYJULLF9F8wsT5ZxX8Ou
 N8ep0Zcuil2iyN56UA0rwzdRYf5jy26PF1CEY0hHHxnxMbunV2bQhrhdc
 RhF5H+isVmt57GGwegI9XQNEBHmnGt/zF+PHDZ+2/nfaVx1sVoeMsV+Eo
 COp1Q/mK6RYZ8Do43zxW1vL6K3slCuOlJeQtJSPFTPsdgoDXiMIfTFf3y w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="335944173"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="335944173"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 08:24:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="674624123"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="674624123"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 01 Mar 2023 08:24:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Mar 2023 18:24:56 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Mar 2023 18:24:49 +0200
Message-Id: <20230301162449.26672-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230301162449.26672-1-ville.syrjala@linux.intel.com>
References: <20230301162449.26672-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915: Reject wm levels that exceed
 vblank time
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The pipe needs a certain amount of time during vblank to prefill
sufficiently. If the vblank is too short the relevant watermark
level must be disabled.

Start implementing the necessary calculations to check this.
Scaler and DSC prefill are left out for now as handling those
is not entirely trivial.

Also the PSR latency reporting override chicken bits would
need to be correctly configured based on the results of these
calculations. Just add some FIXMEs for now.

TODO: bspec isn't exactly crystal clear in its explanations
      so quite a few open questions remain...

v2: Skip inacive pipes
    Handle SAGV latency
v3: Rebase

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 117 ++++++++++++++++++-
 1 file changed, 115 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 7d49a42b9d90..f76a27f0091f 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -12,6 +12,7 @@
 #include "intel_atomic.h"
 #include "intel_atomic_plane.h"
 #include "intel_bw.h"
+#include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display.h"
 #include "intel_display_power.h"
@@ -721,7 +722,7 @@ static unsigned int skl_wm_latency(struct drm_i915_private *i915, int level,
 	    skl_watermark_ipc_enabled(i915))
 		latency += 4;
 
-	if (skl_needs_memory_bw_wa(i915) && wp->x_tiled)
+	if (skl_needs_memory_bw_wa(i915) && wp && wp->x_tiled)
 		latency += 15;
 
 	return latency;
@@ -2201,6 +2202,118 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
+static bool
+skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
+			int wm0_lines, int latency)
+{
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+
+	/* FIXME missing scaler and DSC pre-fill time */
+	return crtc_state->framestart_delay +
+		intel_usecs_to_scanlines(adjusted_mode, latency) +
+		wm0_lines >
+		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
+}
+
+static int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum plane_id plane_id;
+	int wm0_lines = 0;
+
+	for_each_plane_id_on_crtc(crtc, plane_id) {
+		const struct skl_plane_wm *wm = &crtc_state->wm.skl.optimal.planes[plane_id];
+
+		/* FIXME what about !skl_wm_has_lines() platforms? */
+		wm0_lines = max_t(int, wm0_lines, wm->wm[0].lines);
+	}
+
+	return wm0_lines;
+}
+
+static int skl_max_wm_level_for_vblank(struct intel_crtc_state *crtc_state,
+				       int wm0_lines)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	int level;
+
+	for (level = i915->display.wm.num_levels - 1; level >= 0; level--) {
+		int latency;
+
+		/*
+		 * FIXME is it correct to use 0 latency for wm0 here?
+		 * FIXME should we care about the latency w/a's?
+		 * FIXME what if we don't have latency for all levels?
+		 */
+		latency = level == 0 ?
+			0 : skl_wm_latency(i915, level, NULL);
+
+		if (!skl_is_vblank_too_short(crtc_state, wm0_lines, latency))
+			return level;
+	}
+
+	return -EINVAL;
+}
+
+static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	int wm0_lines, level;
+
+	if (!crtc_state->hw.active)
+		return 0;
+
+	wm0_lines = skl_max_wm0_lines(crtc_state);
+
+	level = skl_max_wm_level_for_vblank(crtc_state, wm0_lines);
+	if (level < 0)
+		return level;
+
+	/*
+	 * FIXME PSR needs to toggle LATENCY_REPORTING_REMOVED_PIPE_*
+	 * based on whether we're limited by the vblank duration.
+	 *
+	 * FIXME also related to skl+ w/a 1136 (also unimplemented as of
+	 * now) perhaps?
+	 */
+
+	for (level++; level < i915->display.wm.num_levels; level++) {
+		enum plane_id plane_id;
+
+		for_each_plane_id_on_crtc(crtc, plane_id) {
+			struct skl_plane_wm *wm =
+				&crtc_state->wm.skl.optimal.planes[plane_id];
+
+			/*
+			 * FIXME just clear enable or flag the entire
+			 * thing as bad via min_ddb_alloc=U16_MAX?
+			 */
+			wm->wm[level].enable = false;
+			wm->uv_wm[level].enable = false;
+		}
+	}
+
+	if (DISPLAY_VER(i915) >= 12 &&
+	    i915->display.sagv.block_time_us &&
+	    skl_is_vblank_too_short(crtc_state, wm0_lines,
+				    i915->display.sagv.block_time_us)) {
+		enum plane_id plane_id;
+
+		for_each_plane_id_on_crtc(crtc, plane_id) {
+			struct skl_plane_wm *wm =
+				&crtc_state->wm.skl.optimal.planes[plane_id];
+
+			wm->sagv.wm0.enable = false;
+			wm->sagv.trans_wm.enable = false;
+		}
+	}
+
+	return 0;
+}
+
 static int skl_build_pipe_wm(struct intel_atomic_state *state,
 			     struct intel_crtc *crtc)
 {
@@ -2230,7 +2343,7 @@ static int skl_build_pipe_wm(struct intel_atomic_state *state,
 
 	crtc_state->wm.skl.optimal = crtc_state->wm.skl.raw;
 
-	return 0;
+	return skl_wm_check_vblank(crtc_state);
 }
 
 static void skl_ddb_entry_write(struct drm_i915_private *i915,
-- 
2.39.2

