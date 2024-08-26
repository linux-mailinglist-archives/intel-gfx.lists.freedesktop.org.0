Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24ADC95EF91
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 13:14:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C104D10E1DF;
	Mon, 26 Aug 2024 11:14:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BqKVrsDS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13FE910E1D9;
 Mon, 26 Aug 2024 11:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724670860; x=1756206860;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OwikE7SmuWUQsMJG90hUHb/Ztnh2MQf839sy5uxGtiI=;
 b=BqKVrsDSa3lY9cqrwBF3lFr0W1pzMp4YhcQaihgiQfXsq+nM2wrYWzho
 lsgGLGi71FLs3Y69puwoyn3y8cig8GJ/tFh3SsOhFKQBxWFJU0rbWiLJy
 IEhubiVjocWfpmHoLaUThq6vuKW2R9wz0lVht4pXrtAzfa5KyGAwYmEEM
 uP7h64lWXUyalDmHVLNM0Vun4pjA/3an2EK3WxGio/um6C4JAbmM9XhZC
 G6s+sUbNZfOI84I+flxkmq3oBQGxbb8WUMpWklnSI91pJTB3HDo1KYGHr
 UeyQDSTwZahOClWRYB50CjkbRNtbrTqINGw25HIu2PARUytT1hReGzN0m g==;
X-CSE-ConnectionGUID: WSyFSv+1Tr6i0dE6jJfHKA==
X-CSE-MsgGUID: ZuFiQenzRlSeJTQINz6zLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11175"; a="23213578"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="23213578"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 04:14:20 -0700
X-CSE-ConnectionGUID: Dbs/mLPxTeyw201VVMIm9Q==
X-CSE-MsgGUID: p1iBbC99QhujjC4vu5n4lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="67291422"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 04:14:18 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 09/12] drm/i915/display: Move helpers for primary joiner to
 intel_dss
Date: Mon, 26 Aug 2024 16:45:23 +0530
Message-ID: <20240826111527.1113622-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
References: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Move helpers to get/check primary joiner pipes to intel_dss.
Rename them to align with other intel_dss helpers.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../drm/i915/display/intel_crtc_state_dump.c  |  3 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 33 ++++++-------------
 drivers/gpu/drm/i915/display/intel_display.h  |  1 -
 drivers/gpu/drm/i915/display/intel_dss.c      | 13 ++++++++
 drivers/gpu/drm/i915/display/intel_dss.h      |  4 +++
 5 files changed, 29 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 705ec5ad385c..f2764f283f9b 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -9,6 +9,7 @@
 #include "i915_drv.h"
 #include "intel_crtc_state_dump.h"
 #include "intel_display_types.h"
+#include "intel_dss.h"
 #include "intel_hdmi.h"
 #include "intel_vdsc.h"
 #include "intel_vrr.h"
@@ -225,7 +226,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 
 	drm_printf(&p, "joiner: %s, pipes: 0x%x\n",
 		   intel_crtc_is_joiner_secondary(pipe_config) ? "secondary" :
-		   intel_crtc_is_joiner_primary(pipe_config) ? "primary" : "no",
+		   intel_dss_is_primary_joiner_pipe(pipe_config) ? "primary" : "no",
 		   pipe_config->joiner_pipes);
 
 	drm_printf(&p, "splitter: %s, link count %d, overlap %d\n",
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1c0d297c250b..a7b136689695 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -249,15 +249,10 @@ is_trans_port_sync_mode(const struct intel_crtc_state *crtc_state)
 		is_trans_port_sync_slave(crtc_state);
 }
 
-static enum pipe joiner_primary_pipe(const struct intel_crtc_state *crtc_state)
-{
-	return ffs(crtc_state->joiner_pipes) - 1;
-}
-
 u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
 {
 	if (crtc_state->joiner_pipes)
-		return crtc_state->joiner_pipes & ~BIT(joiner_primary_pipe(crtc_state));
+		return crtc_state->joiner_pipes & ~BIT(intel_dss_get_primary_joiner_pipe(crtc_state));
 	else
 		return 0;
 }
@@ -267,15 +262,7 @@ bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	return crtc_state->joiner_pipes &&
-		crtc->pipe != joiner_primary_pipe(crtc_state);
-}
-
-bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-
-	return crtc_state->joiner_pipes &&
-		crtc->pipe == joiner_primary_pipe(crtc_state);
+		crtc->pipe != intel_dss_get_primary_joiner_pipe(crtc_state);
 }
 
 static int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
@@ -288,7 +275,7 @@ struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	if (intel_crtc_is_joiner_secondary(crtc_state))
-		return intel_crtc_for_pipe(i915, joiner_primary_pipe(crtc_state));
+		return intel_crtc_for_pipe(i915, intel_dss_get_primary_joiner_pipe(crtc_state));
 	else
 		return to_intel_crtc(crtc_state->uapi.crtc);
 }
@@ -2888,7 +2875,7 @@ static void intel_joiner_adjust_pipe_src(struct intel_crtc_state *crtc_state)
 	if (num_pipes < 2)
 		return;
 
-	primary_pipe = joiner_primary_pipe(crtc_state);
+	primary_pipe = intel_dss_get_primary_joiner_pipe(crtc_state);
 	width = drm_rect_width(&crtc_state->pipe_src);
 
 	drm_rect_translate_to(&crtc_state->pipe_src,
@@ -3555,7 +3542,7 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 		 *primary_pipes, *secondary_pipes);
 }
 
-static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
+static enum pipe get_intel_dss_get_primary_joiner_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
 {
 	if ((secondary_pipes & BIT(pipe)) == 0)
 		return pipe;
@@ -3571,7 +3558,7 @@ static u8 get_joiner_secondary_pipes(enum pipe pipe, u8 primary_pipes, u8 second
 {
 	enum pipe primary_pipe, next_primary_pipe;
 
-	primary_pipe = get_joiner_primary_pipe(pipe, primary_pipes, secondary_pipes);
+	primary_pipe = get_intel_dss_get_primary_joiner_pipe(pipe, primary_pipes, secondary_pipes);
 
 	if ((primary_pipes & BIT(primary_pipe)) == 0)
 		return 0;
@@ -3658,7 +3645,7 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 	enabled_joiner_pipes(dev_priv, &primary_pipes, &secondary_pipes);
 	if (secondary_pipes & BIT(crtc->pipe)) {
 		cpu_transcoder = (enum transcoder)
-			get_joiner_primary_pipe(crtc->pipe, primary_pipes, secondary_pipes);
+			get_intel_dss_get_primary_joiner_pipe(crtc->pipe, primary_pipes, secondary_pipes);
 		if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
 			enabled_transcoders |= BIT(cpu_transcoder);
 	}
@@ -3798,7 +3785,7 @@ static void intel_joiner_get_config(struct intel_crtc_state *crtc_state)
 		return;
 
 	crtc_state->joiner_pipes =
-		BIT(get_joiner_primary_pipe(pipe, primary_pipes, secondary_pipes)) |
+		BIT(get_intel_dss_get_primary_joiner_pipe(pipe, primary_pipes, secondary_pipes)) |
 		get_joiner_secondary_pipes(pipe, primary_pipes, secondary_pipes);
 }
 
@@ -5982,7 +5969,7 @@ static int intel_atomic_check_joiner(struct intel_atomic_state *state,
 
 	/* sanity check */
 	if (drm_WARN_ON(&i915->drm,
-			primary_crtc->pipe != joiner_primary_pipe(primary_crtc_state)))
+			primary_crtc->pipe != intel_dss_get_primary_joiner_pipe(primary_crtc_state)))
 		return -EINVAL;
 
 	if (primary_crtc_state->joiner_pipes & ~joiner_pipes(i915)) {
@@ -6380,7 +6367,7 @@ static int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state)
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
 		/* Kill old joiner link, we may re-establish afterwards */
 		if (intel_crtc_needs_modeset(crtc_state) &&
-		    intel_crtc_is_joiner_primary(crtc_state))
+		    intel_dss_is_primary_joiner_pipe(crtc_state))
 			kill_joiner_secondaries(state, crtc);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index b9316373dad3..0135c959632d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -423,7 +423,6 @@ enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
 bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
 bool is_trans_port_sync_master(const struct intel_crtc_state *state);
 bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
-bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
 u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
 struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dss.c b/drivers/gpu/drm/i915/display/intel_dss.c
index 89a8c9205a3f..1a8bfd8e9247 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.c
+++ b/drivers/gpu/drm/i915/display/intel_dss.c
@@ -269,3 +269,16 @@ u8 intel_dss_get_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
 
 	return BIT(crtc->pipe) | crtc_state->joiner_pipes;
 }
+
+enum pipe intel_dss_get_primary_joiner_pipe(const struct intel_crtc_state *crtc_state)
+{
+	return ffs(crtc_state->joiner_pipes) - 1;
+}
+
+bool intel_dss_is_primary_joiner_pipe(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	return crtc_state->joiner_pipes &&
+		crtc->pipe == intel_dss_get_primary_joiner_pipe(crtc_state);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dss.h b/drivers/gpu/drm/i915/display/intel_dss.h
index cf2ee3f028bb..e627582f6883 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.h
+++ b/drivers/gpu/drm/i915/display/intel_dss.h
@@ -8,6 +8,8 @@
 
 #include "linux/types.h"
 
+enum pipe;
+
 struct intel_crtc_state;
 struct intel_display;
 struct intel_encoder;
@@ -34,6 +36,8 @@ void intel_dss_get_uncompressed_joiner_pipes(struct intel_display *display,
 					     u8 *primary_pipes,
 					     u8 *secondary_pipes);
 u8 intel_dss_get_joined_pipe_mask(const struct intel_crtc_state *crtc_state);
+enum pipe intel_dss_get_primary_joiner_pipe(const struct intel_crtc_state *crtc_state);
+bool intel_dss_is_primary_joiner_pipe(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_DSS_H__ */
 
-- 
2.45.2

