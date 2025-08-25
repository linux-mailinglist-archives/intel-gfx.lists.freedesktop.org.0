Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF250B34001
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Aug 2025 14:49:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77C7C10E46B;
	Mon, 25 Aug 2025 12:49:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E0AsZCXY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D619C10E46B;
 Mon, 25 Aug 2025 12:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756126195; x=1787662195;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DOPVQV8nJv612ifAHFGD5/rYc5n+xo5+x+b+XnaSxvg=;
 b=E0AsZCXY9db844AguwsqC/BycZ6Bgtz+89dk9CfYGOS/R8DYNJDnPmAN
 Y+yHp1l/v0LQ5o2/lCCqIsPGPCnBXNAkW6n1NpiHcLAPAmxdQT2LRAaca
 ZYjNiodr6mL62UO5ePt2FlxlSnE3trOSBpxk89Y9SbKPrFsRTvtwW5RXp
 3uz/8pj/uRuJgD2xENkY9QFsKQVVT/3MYKrrlsWOgNdDobNdE0KoDCcDY
 D+Qd/omo1h1ICuSw3i5KCOaCEVkpdpW0mskkm9ksnxvUQEwcKrXwKryiM
 of7LrOkHD3eDW4QdJdJISUS7A215q3eE2ReZZRQINgRhBos/mwrlaiC+v A==;
X-CSE-ConnectionGUID: 6J6cQnn9Q4GZYuTVBLWSeA==
X-CSE-MsgGUID: Yh8zA8+/S46KrvX8tDdqcw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62164128"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62164128"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 05:49:55 -0700
X-CSE-ConnectionGUID: vRYmP+c5TviolR6oFZx5mw==
X-CSE-MsgGUID: CnKVD8CSR92YLn1FWmxlag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,213,1751266800"; d="scan'208";a="200230030"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 05:49:53 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 11/12] drm/i915/panel: Refactor helper to get highest fixed
 mode
Date: Mon, 25 Aug 2025 18:05:47 +0530
Message-ID: <20250825123548.3022474-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250825123548.3022474-1-ankit.k.nautiyal@intel.com>
References: <20250825123548.3022474-1-ankit.k.nautiyal@intel.com>
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

Refactor intel_panel_highest_mode() to return the fixed mode with the
highest pixel clock, removing the fallback to the adjusted mode. This makes
the function semantics clearer and better suited for future use cases where
fallback is not desirable.

Update the caller in intel_dp_mode_clock() to handle the NULL case
explicitly by falling back to the adjusted mode's crtc_clock. This also
addresses the existing FIXME comment about ambiguity between clock and
crtc_clock, by using mode->clock for fixed modes and mode->crtc_clock for
adjusted modes.

v2: Avoid introducing a new function and refactor existing one instead.
(Jani).

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c    | 14 +++++++++-----
 drivers/gpu/drm/i915/display/intel_panel.c | 11 +++++------
 drivers/gpu/drm/i915/display/intel_panel.h |  3 +--
 3 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4dc1ce383b8e..4c3a4b7c0abe 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1759,11 +1759,15 @@ static int intel_dp_mode_clock(const struct intel_crtc_state *crtc_state,
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 
-	/* FIXME a bit of a mess wrt clock vs. crtc_clock */
-	if (has_seamless_m_n(connector))
-		return intel_panel_highest_mode(connector, adjusted_mode)->clock;
-	else
-		return adjusted_mode->crtc_clock;
+	if (has_seamless_m_n(connector)) {
+		const struct drm_display_mode *highest_mode;
+
+		highest_mode = intel_panel_highest_mode(connector);
+		if (highest_mode)
+			return highest_mode->clock;
+	}
+
+	return adjusted_mode->crtc_clock;
 }
 
 /* Optimize link config in order: max bpp, min clock, min lanes */
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 2a20aaaaac39..ac0f04073ecb 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -144,18 +144,17 @@ intel_panel_downclock_mode(struct intel_connector *connector,
 }
 
 const struct drm_display_mode *
-intel_panel_highest_mode(struct intel_connector *connector,
-			 const struct drm_display_mode *adjusted_mode)
+intel_panel_highest_mode(struct intel_connector *connector)
 {
-	const struct drm_display_mode *fixed_mode, *best_mode = adjusted_mode;
+	const struct drm_display_mode *fixed_mode, *highest_mode = NULL;
 
 	/* pick the fixed_mode that has the highest clock */
 	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
-		if (fixed_mode->clock > best_mode->clock)
-			best_mode = fixed_mode;
+		if (!highest_mode || fixed_mode->clock > highest_mode->clock)
+			highest_mode = fixed_mode;
 	}
 
-	return best_mode;
+	return highest_mode;
 }
 
 int intel_panel_get_modes(struct intel_connector *connector)
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index 56a6412cf0fb..8a17600e46a3 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -37,8 +37,7 @@ const struct drm_display_mode *
 intel_panel_downclock_mode(struct intel_connector *connector,
 			   const struct drm_display_mode *adjusted_mode);
 const struct drm_display_mode *
-intel_panel_highest_mode(struct intel_connector *connector,
-			 const struct drm_display_mode *adjusted_mode);
+intel_panel_highest_mode(struct intel_connector *connector);
 int intel_panel_get_modes(struct intel_connector *connector);
 enum drrs_type intel_panel_drrs_type(struct intel_connector *connector);
 enum drm_mode_status
-- 
2.45.2

