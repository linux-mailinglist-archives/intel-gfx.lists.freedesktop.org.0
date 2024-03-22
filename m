Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1318B886B66
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 12:40:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D735310F4E7;
	Fri, 22 Mar 2024 11:40:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m9xQUO5p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0236D10F4E7
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 11:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711107652; x=1742643652;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2lxYUjDbmqT61E7Mf2jIA3zDoXHRpVQPLkfrm9lZHOQ=;
 b=m9xQUO5pIidNDaOP/lUuESxxa0tk9Eprb+dFamS+TnHid7OIXr0qvTd8
 g6K7AtpNOK+LsW1j4ViZ0e8V7bIAxdIP+70lGQLKGYdyyQZHxaHhYCLGG
 ecoic9pCWmnSZXtlfYUf2ymm4hTwafhqY6vUNP64gcoaQp4ToEPk6+n7n
 Tzs3QG3cG24Yzevw0qiWUpC37g78/tbi6p1yTvEO2eFQi0MsqJ5G5xioB
 I4jZQXxl7N4nRuv0X8h5ULxgJ3QInbNB/yjF3kpIGBQVtxQuJFXtQ9XXM
 CmPINq+j2+5IR9kKjWMR1kHdTWmkYpzMrMNI3MwpiMSVu9dH5i7LqO3OJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="9939213"
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; 
   d="scan'208";a="9939213"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 04:40:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="14906484"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa009.fm.intel.com with ESMTP; 22 Mar 2024 04:40:50 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com, Stanislav.Lisovskiy@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 2/5] drm/i915: Break intel_dbuf_mbus_update into 2 separate
 parts
Date: Fri, 22 Mar 2024 13:40:43 +0200
Message-Id: <20240322114046.24930-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240322114046.24930-1-stanislav.lisovskiy@intel.com>
References: <20240322114046.24930-1-stanislav.lisovskiy@intel.com>
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

We need to be able to update dbuf min tracker and mdclk ratio
separately if mbus_join state didn't change, so lets add one
degree of freedom and make it possible.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 55 ++++++++++++--------
 1 file changed, 33 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 8ff69da664807..2b947870527fc 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3570,16 +3570,38 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915, u8 ratio
 			     DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
 }
 
+static void intel_dbuf_mdclk_min_tracker_update(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_dbuf_state *old_dbuf_state =
+		intel_atomic_get_old_dbuf_state(state);
+	const struct intel_dbuf_state *new_dbuf_state =
+		intel_atomic_get_new_dbuf_state(state);
+
+	if (DISPLAY_VER(i915) >= 20 &&
+	    old_dbuf_state->mdclk_cdclk_ratio != new_dbuf_state->mdclk_cdclk_ratio) {
+		/*
+		 * For Xe2LPD and beyond, when there is a change in the ratio
+		 * between MDCLK and CDCLK, updates to related registers need to
+		 * happen at a specific point in the CDCLK change sequence. In
+		 * that case, we defer to the call to
+		 * intel_dbuf_mdclk_cdclk_ratio_update() to the CDCLK logic.
+		 */
+		return;
+	}
+
+	intel_dbuf_mdclk_cdclk_ratio_update(i915, new_dbuf_state->mdclk_cdclk_ratio,
+					    new_dbuf_state->joined_mbus);
+}
+
 /*
  * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus state before
  * update the request state of all DBUS slices.
  */
-static void intel_dbuf_mbus_update(struct intel_atomic_state *state)
+static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	u32 mbus_ctl;
-	const struct intel_dbuf_state *old_dbuf_state =
-		intel_atomic_get_old_dbuf_state(state);
 	const struct intel_dbuf_state *new_dbuf_state =
 		intel_atomic_get_new_dbuf_state(state);
 
@@ -3600,21 +3622,6 @@ static void intel_dbuf_mbus_update(struct intel_atomic_state *state)
 	intel_de_rmw(i915, MBUS_CTL,
 		     MBUS_HASHING_MODE_MASK | MBUS_JOIN |
 		     MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
-
-	if (DISPLAY_VER(i915) >= 20 &&
-	    old_dbuf_state->mdclk_cdclk_ratio != new_dbuf_state->mdclk_cdclk_ratio) {
-		/*
-		 * For Xe2LPD and beyond, when there is a change in the ratio
-		 * between MDCLK and CDCLK, updates to related registers need to
-		 * happen at a specific point in the CDCLK change sequence. In
-		 * that case, we defer to the call to
-		 * intel_dbuf_mdclk_cdclk_ratio_update() to the CDCLK logic.
-		 */
-		return;
-	}
-
-	intel_dbuf_mdclk_cdclk_ratio_update(i915, new_dbuf_state->mdclk_cdclk_ratio,
-					    new_dbuf_state->joined_mbus);
 }
 
 void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
@@ -3632,8 +3639,10 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
 
 	WARN_ON(!new_dbuf_state->base.changed);
 
-	if (!old_dbuf_state->joined_mbus && new_dbuf_state->joined_mbus)
-		intel_dbuf_mbus_update(state);
+	if (!old_dbuf_state->joined_mbus && new_dbuf_state->joined_mbus) {
+		intel_dbuf_mbus_join_update(state);
+		intel_dbuf_mdclk_min_tracker_update(state);
+	}
 
 	gen9_dbuf_slices_update(i915,
 				old_dbuf_state->enabled_slices |
@@ -3655,8 +3664,10 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 
 	WARN_ON(!new_dbuf_state->base.changed);
 
-	if (old_dbuf_state->joined_mbus && !new_dbuf_state->joined_mbus)
-		intel_dbuf_mbus_update(state);
+	if (old_dbuf_state->joined_mbus && !new_dbuf_state->joined_mbus) {
+		intel_dbuf_mbus_join_update(state);
+		intel_dbuf_mdclk_min_tracker_update(state);
+	}
 
 	gen9_dbuf_slices_update(i915,
 				new_dbuf_state->enabled_slices);
-- 
2.37.3

