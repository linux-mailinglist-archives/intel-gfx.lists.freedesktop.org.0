Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C699C110E
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 22:37:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B90410E8F5;
	Thu,  7 Nov 2024 21:37:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UYZMda9T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B5EB10E8F3;
 Thu,  7 Nov 2024 21:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731015458; x=1762551458;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=91GvqkW4yPVpoo8eHt2UeTJKInpJ0sfk9qDyLls1oKw=;
 b=UYZMda9TzCMfG8pJNJ6Lst/zxvO3SnIkZ3JtF/peSTwcrU3gaYilfySR
 cDTSCM4KuIwFUltv+lJy4pq6KFuHs7KUk3Ji6aR4cYSo7WsqgAJEV0iLS
 PaYOavwzg9YSfInxA1k0+h71zZCQqnlGshCq+1EnD/3QHdbpQZ3xL/1Vb
 xwYj3/6iGS5s0z87RpJXyuIOwYn7qYcTeTGLxGgrzMGWul0Jo7GsrwUhX
 Ojh2dNMXJCqx27b0EBod2FKpu4aOtfgq0WbWTfIbXlJrkwdE5a9NHBkhh
 RnTJUyNZ1PoubWp01632YqqRDJqWWJuVh8jTAvxn8dnQrLngMefxifSxA A==;
X-CSE-ConnectionGUID: 5zsWJeyrSCakV8AgpUk2+w==
X-CSE-MsgGUID: uzB/6AbnT9Cb1S7rDYC80Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="56282996"
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="56282996"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:37:38 -0800
X-CSE-ConnectionGUID: tX4Lz8rFRxm5WBGTFwgv3Q==
X-CSE-MsgGUID: /LcehD97RwK9Hbs6jdQCfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="85574845"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.233])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:37:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Vinod Govindapillai <vinod.govindapillai@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI v2 v2 08/15] drm/i915/display: convert HAS_MBUS_JOINING() to
 struct intel_display
Date: Thu,  7 Nov 2024 23:36:42 +0200
Message-Id: <a1bc01c934019c6602515194ca21781310d582d1.1731015334.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731015333.git.jani.nikula@intel.com>
References: <cover.1731015333.git.jani.nikula@intel.com>
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
index 8c6ca92fe78e..a9a8995af855 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -168,7 +168,7 @@ struct intel_display_platforms {
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

