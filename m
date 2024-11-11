Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C6B9C3C15
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 11:34:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FD6310E46D;
	Mon, 11 Nov 2024 10:34:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mWyLCZ8e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 343DC10E46D;
 Mon, 11 Nov 2024 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731321293; x=1762857293;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2WTYItUALCW36ieGhVaORvmsuQWxqcJTfRHi3iPRqcg=;
 b=mWyLCZ8eh5IfQONux9mmQ4G/d/vkF7wsAh64Tn1T5peFpjzHWrX6qsI/
 YaliwdGqbxhAEUkGLxtfTdK9oIW+Dn8qbsrbn5OigXadxrUD4Tg4G+RlM
 XucIhqZ4VyIjWFYkf8RHw5TuYDUVjDbElDTuDj5Y+hQ0VZ7YS1xbjUY/N
 RyCjXC7K2gJKl2DbAOlutfrn3p+Tvb3MidXyvszPSKQzeGQIGxDX10HBz
 8rJhVdnynssgDiJZsdehJSFijkRKBZU6rx8ZDd8amSTWGceb05Xqs79RP
 TdYBEmesJ0DMdLlM1arwPW2vK8ORSsOWPp6P/dnOo7ov4WyBOw+Pn1ulS w==;
X-CSE-ConnectionGUID: HxNLEdyERV+kB7Z+mXbKKg==
X-CSE-MsgGUID: 9ojmlq8GTHef05uXlPfzeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="35058759"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="35058759"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 02:34:53 -0800
X-CSE-ConnectionGUID: iK6/89r6Q7abN7f72/ahLg==
X-CSE-MsgGUID: WBdHkYmXSmabgHs/RDqEuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86805464"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.75])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 02:34:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Vinod Govindapillai <vinod.govindapillai@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI v3 08/15] drm/i915/display: convert HAS_MBUS_JOINING() to struct
 intel_display
Date: Mon, 11 Nov 2024 12:33:57 +0200
Message-Id: <c198dd5a0ab0a5f37edce3d18ddb4991cf3d4792.1731321183.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731321183.git.jani.nikula@intel.com>
References: <cover.1731321183.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Convert HAS_MBUS_JOINING() to struct intel_display. Do minimal drive-by
conversions to struct intel_display in the callers while at it.

v2: Rebase

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com> # v1
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com> # v1
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.h   |  2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  | 25 +++++++++++--------
 2 files changed, 15 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 3145536ace6f..d858ad7fae7e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -169,7 +169,7 @@ struct intel_display_platforms {
 #define HAS_IPS(__display)		((__display)->platform.haswell_ult || (__display)->platform.broadwell)
 #define HAS_LRR(i915)			(DISPLAY_VER(i915) >= 12)
 #define HAS_LSPCON(i915)		(IS_DISPLAY_VER(i915, 9, 10))
-#define HAS_MBUS_JOINING(i915)		(IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
+#define HAS_MBUS_JOINING(__display)	((__display)->platform.alderlake_p || DISPLAY_VER(__display) >= 14)
 #define HAS_MSO(i915)			(DISPLAY_VER(i915) >= 12)
 #define HAS_OVERLAY(i915)		(DISPLAY_INFO(i915)->has_overlay)
 #define HAS_PSR(i915)			(DISPLAY_INFO(i915)->has_psr)
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d3bbf335c749..8407d6820706 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2496,6 +2496,7 @@ static u8 intel_dbuf_enabled_slices(const struct intel_dbuf_state *dbuf_state)
 static int
 skl_compute_ddb(struct intel_atomic_state *state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_dbuf_state *old_dbuf_state;
 	struct intel_dbuf_state *new_dbuf_state = NULL;
@@ -2524,7 +2525,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
 			return ret;
 	}
 
-	if (HAS_MBUS_JOINING(i915)) {
+	if (HAS_MBUS_JOINING(display)) {
 		new_dbuf_state->joined_mbus =
 			adlp_check_mbus_joined(new_dbuf_state->active_pipes);
 
@@ -2984,7 +2985,7 @@ static void skl_wm_get_hw_state(struct drm_i915_private *i915)
 		to_intel_dbuf_state(i915->display.dbuf.obj.state);
 	struct intel_crtc *crtc;
 
-	if (HAS_MBUS_JOINING(i915))
+	if (HAS_MBUS_JOINING(display))
 		dbuf_state->joined_mbus = intel_de_read(i915, MBUS_CTL) & MBUS_JOIN;
 
 	dbuf_state->mdclk_cdclk_ratio = intel_mdclk_cdclk_ratio(display, &display->cdclk.hw);
@@ -3364,23 +3365,24 @@ int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state,
 void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915,
 					 int ratio, bool joined_mbus)
 {
+	struct intel_display *display = &i915->display;
 	enum dbuf_slice slice;
 
-	if (!HAS_MBUS_JOINING(i915))
+	if (!HAS_MBUS_JOINING(display))
 		return;
 
-	if (DISPLAY_VER(i915) >= 20)
-		intel_de_rmw(i915, MBUS_CTL, MBUS_TRANSLATION_THROTTLE_MIN_MASK,
+	if (DISPLAY_VER(display) >= 20)
+		intel_de_rmw(display, MBUS_CTL, MBUS_TRANSLATION_THROTTLE_MIN_MASK,
 			     MBUS_TRANSLATION_THROTTLE_MIN(ratio - 1));
 
 	if (joined_mbus)
 		ratio *= 2;
 
-	drm_dbg_kms(&i915->drm, "Updating dbuf ratio to %d (mbus joined: %s)\n",
+	drm_dbg_kms(display->drm, "Updating dbuf ratio to %d (mbus joined: %s)\n",
 		    ratio, str_yes_no(joined_mbus));
 
-	for_each_dbuf_slice(i915, slice)
-		intel_de_rmw(i915, DBUF_CTL_S(slice),
+	for_each_dbuf_slice(display, slice)
+		intel_de_rmw(display, DBUF_CTL_S(slice),
 			     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
 			     DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
 }
@@ -3569,17 +3571,18 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 
 static void skl_mbus_sanitize(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct intel_dbuf_state *dbuf_state =
-		to_intel_dbuf_state(i915->display.dbuf.obj.state);
+		to_intel_dbuf_state(display->dbuf.obj.state);
 
-	if (!HAS_MBUS_JOINING(i915))
+	if (!HAS_MBUS_JOINING(display))
 		return;
 
 	if (!dbuf_state->joined_mbus ||
 	    adlp_check_mbus_joined(dbuf_state->active_pipes))
 		return;
 
-	drm_dbg_kms(&i915->drm, "Disabling redundant MBUS joining (active pipes 0x%x)\n",
+	drm_dbg_kms(display->drm, "Disabling redundant MBUS joining (active pipes 0x%x)\n",
 		    dbuf_state->active_pipes);
 
 	dbuf_state->joined_mbus = false;
-- 
2.39.5

