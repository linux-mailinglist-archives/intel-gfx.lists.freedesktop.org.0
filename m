Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2956188ECEC
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 18:46:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA37E10FEC7;
	Wed, 27 Mar 2024 17:46:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qx1JA5AF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4214F10FED3
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 17:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711561571; x=1743097571;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qFZH0xPC8f33ZBKReC8wYpJitlSmsG/b6/093EYq0mA=;
 b=Qx1JA5AFy/9XeUvavmIErs4Hude25zpJKWsUO95vvRWr9jqYYrjc/G7i
 ZvvEZ6RF6wVFf7ZgjaX7fosH0hGv/d2j55138F/ofRa+mDR74rUAYbwUE
 ZarYCZBN+5wGruXL652C3UUxeI87WWrPq4xw9vLh+3VUkCte3fnOozEhd
 hhG3q6J1ac9pTZdpyyLsmo1y3VofcTCrQRKKVgrLq0Xl46ExldmT4SlPh
 NTMnuqed+mfM97wDIjN65C/5aVQ+dFn03cmU1djBchITVMPOkYz4UYie7
 Rf0XI0YlaeuU5li438J6PBTForIhnsi37VVhY+n/LDeZ69xb2iGAqolDL A==;
X-CSE-ConnectionGUID: FjA4u6rnQ26MhiTWRYAqZg==
X-CSE-MsgGUID: akIFosYnSomoW/gtClzNaQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6795445"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6795445"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 10:46:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="827785911"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="827785911"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 27 Mar 2024 10:46:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Mar 2024 19:46:08 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 08/13] drm/i915: Extract intel_dbuf_mdclk_min_tracker_update()
Date: Wed, 27 Mar 2024 19:45:39 +0200
Message-ID: <20240327174544.983-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240327174544.983-1-ville.syrjala@linux.intel.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
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

Extact the stuff that writes the dbuf/mbus ration stuff
into its own function. Will help with correctly sequencing
the operations done during mbus programming.

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

