Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD79B4796E
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Sep 2025 09:47:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0916010E446;
	Sun,  7 Sep 2025 07:46:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O4sX49HU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B23010E197;
 Sun,  7 Sep 2025 07:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757231200; x=1788767200;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ngx/gp3fOnUBoSL1jP5DMLG9RF3pynEjAKEMMfV7i+I=;
 b=O4sX49HUf364RcrL6IQzb5BI+8jaJXI9pQS4Z5uNSc1N3+ciG/15bH8U
 Hci39hbmcTO/JicKdojxZj9TFvc4UEo5a1PaPEO/wIk5FJs4oonJ+hbqz
 /6UTaLw1DTbhnEAuNnJDuj/WCBvqslOHhfuGP/PBZCabvZBptgU7xnBVG
 EkoIR4WCay05OvfxiCJhFUKD+om2WW4SQPo4DRUs7HjKZ+AiIqMWcGqSm
 MDrnDItde2Q7zM3xpRdKIuDdgc48uP4al1BqAq9QyGeleO7d8/d/CIk+8
 hZH2bE+pbvcAwlDxr7anUlyNW7XDNw/syUPDn6DXJzmY2YKrP2lIw1SuV Q==;
X-CSE-ConnectionGUID: 5Sl6367XTh+6PyjJD8qj9Q==
X-CSE-MsgGUID: AJzVP4zOSvOukx4oBu2kKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11545"; a="70220302"
X-IronPort-AV: E=Sophos;i="6.18,246,1751266800"; d="scan'208";a="70220302"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2025 00:46:40 -0700
X-CSE-ConnectionGUID: btAdYnZcSkSxSw8M/ctcDA==
X-CSE-MsgGUID: 3QKeOnGGQiOppexLo8Eh5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,246,1751266800"; d="scan'208";a="176874046"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2025 00:46:38 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 13/14] drm/i915/panel: Refactor helper to get highest fixed
 mode
Date: Sun,  7 Sep 2025 13:02:40 +0530
Message-ID: <20250907073241.19632-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250907073241.19632-1-ankit.k.nautiyal@intel.com>
References: <20250907073241.19632-1-ankit.k.nautiyal@intel.com>
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
index d5d30bdc6848..beab66ce0550 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1760,11 +1760,15 @@ static int intel_dp_mode_clock(const struct intel_crtc_state *crtc_state,
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

