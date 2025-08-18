Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E666AB29B17
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 09:45:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73DD410E3E7;
	Mon, 18 Aug 2025 07:45:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UoLQY9kK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90F2710E3EF;
 Mon, 18 Aug 2025 07:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755503154; x=1787039154;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ziKYSy/AfxmsiYTIbM7YvfS3EL0mGUjEJ5NbIvhMT9Y=;
 b=UoLQY9kK/QG7/O9MuCxBkvRRGUt4gFSewCJad4g+ziw1hm6GKMlkcl/O
 +7u1tewO/6ukcvrkIWB2KXBFaS1J2rdG19JTkWBs+i2via7LI7hFUsSl8
 d+D3Ebsatu603L0FPBeNEyipu2rybA3EPN+7DFXWL+zDRP9kxTiPCwvCQ
 B5T6QKlI1SPjBXFWc3QdbU9TrlqFrm8q/yfvJg51ELbu23TaNQdAk9AN0
 kh/ENna3zItV2rImV9EJG/N45Ng4fBlVBbLTVLeY/jN3+VOaIvIK7Kf4G
 VfwFrtifBdIKJGMdzWIm/lBEwgwPIui2fBrXQsOY4uZKCsyAuBzl07CKG A==;
X-CSE-ConnectionGUID: f5KaP8Z7RkiD15/8LQCEPQ==
X-CSE-MsgGUID: IA1R1ZeQTd2pf3aI62p4Bg==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="61347949"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="61347949"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 00:45:54 -0700
X-CSE-ConnectionGUID: 3aA/7wdxQRCkKv2ZTmfgeQ==
X-CSE-MsgGUID: 5vUVai5MT1eWv3tlxcH9oA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="167121998"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 00:45:53 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 11/12] drm/i915/panel: Refactor helper to get highest fixed
 mode
Date: Mon, 18 Aug 2025 13:01:27 +0530
Message-ID: <20250818073128.2319762-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250818073128.2319762-1-ankit.k.nautiyal@intel.com>
References: <20250818073128.2319762-1-ankit.k.nautiyal@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_dp.c    | 14 +++++++++-----
 drivers/gpu/drm/i915/display/intel_panel.c | 11 +++++------
 drivers/gpu/drm/i915/display/intel_panel.h |  3 +--
 3 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0c2bec1fbe42..2fa80b2750f8 100644
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

