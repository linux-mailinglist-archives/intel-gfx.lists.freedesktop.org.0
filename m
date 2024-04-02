Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 375A68958C3
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 17:50:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B31DF10FE0C;
	Tue,  2 Apr 2024 15:50:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KgjMQde5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73B0210FE13
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 15:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712073045; x=1743609045;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j5ksDP/3M6Xtbl37Hz5cGEmnesfcT1SQqAPqoc9qP5o=;
 b=KgjMQde5Ga6fUiORSPSwo7p0dfqGJdyBu4FfssNBeJGZqbnUlGQeLxw/
 QelFFNIn2nmaYl98YAVf1oeBWV68ivbYtWRaXjubTrgA3Odka6OspJAYq
 ghNt9dWRfq0kbRmraoL+7uv4TcZa6BjiQAvPLcS7A7IVt6zbWXg+oy2DY
 h0p44NOxO3lArlQNNlTShTSPMXI4rm7J44WSHo6AINwq0DvbWQamoVn/C
 x1G6BLiLh7mF5/4gO6bpreqSt/ZwCIodXLn9ExdDPfbjGh3D5Zr8SmPVC
 nCRAq8az1mmPV2ouvfRCUlsqcwCF9fya+gE/SJEg67vdpdOINK6wHI5Ue g==;
X-CSE-ConnectionGUID: rYnoQEAgTqCm7gb7d65hIQ==
X-CSE-MsgGUID: mY5VQPfnSEmL0TBsM6fX9g==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="17980854"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="17980854"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 08:50:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="827789480"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="827789480"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2024 08:50:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Apr 2024 18:50:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Uma Shankar <uma.shankar@intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v2 08/14] drm/i915: Extract
 intel_dbuf_mdclk_min_tracker_update()
Date: Tue,  2 Apr 2024 18:50:10 +0300
Message-ID: <20240402155016.13733-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
References: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract the stuff that writes the dbuf/mbus ratio stuff
into its own function. Will help with correctly sequencing
the operations done during mbus programming.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 43 ++++++++++++--------
 1 file changed, 25 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index f7e03078bd43..7767c5eada36 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3653,6 +3653,30 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915, u8 ratio
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
 static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
@@ -3683,10 +3707,6 @@ static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state)
 static void update_mbus_pre_enable(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	const struct intel_dbuf_state *old_dbuf_state =
-		intel_atomic_get_old_dbuf_state(state);
-	const struct intel_dbuf_state *new_dbuf_state =
-		intel_atomic_get_new_dbuf_state(state);
 
 	if (!HAS_MBUS_JOINING(i915))
 		return;
@@ -3697,20 +3717,7 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
 	 */
 	intel_dbuf_mbus_join_update(state);
 
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
+	intel_dbuf_mdclk_min_tracker_update(state);
 }
 
 void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
-- 
2.43.2

