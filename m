Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F12E79C3A91
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 10:10:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8187510E44E;
	Mon, 11 Nov 2024 09:10:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ehq9sq0X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F2B810E44E;
 Mon, 11 Nov 2024 09:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731316247; x=1762852247;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oboRSnq1uqsL2XEgJUbxINb+rRzOzWtQNDTp3fnM/vo=;
 b=ehq9sq0XuYaaUo0BEqUYOJ8u5Sj+6IH127NJg9KEUFQUm27LHeEyQqE1
 n3CFBxtuMWbxz1+RW/uQOwQ1us4bawsPAvEOARFRlVAHVqsC9sDSrg51C
 x+W3QJqEbVKaSFvaIUwSqupQzR2SenzWHgi5+RiQDsic29wAuQZ7zLN19
 cKMHOfoLV3DCDW6QSK48GuOpqZEFgfJcanNq0gnTg05PE2fWsp8y5WdJX
 6hEy0vHaCxnyAg8S5XCa6IbMH+xUdBrL3G8oOJ30tkxvjM6gOIED3V0as
 S97KTFfuIcCfk/RLlhHo+aC+9C7bsKQlmwNs9t0CwuD9mICo9I9GTTgtk w==;
X-CSE-ConnectionGUID: eH0ozxt/RBC9JZnajYJkDg==
X-CSE-MsgGUID: 2f8av6kJQHWdvNrh7gByhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="35052510"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="35052510"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:42 -0800
X-CSE-ConnectionGUID: ATdzpGvqSZ68smfLHLiNNQ==
X-CSE-MsgGUID: bbfKtXgrQfqd++2wjY6hOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86762756"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:40 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 23/23] drm/i915/display: Use VRR timings for XE2LPD+ in
 modeset sequence
Date: Mon, 11 Nov 2024 14:42:21 +0530
Message-ID: <20241111091221.2992818-24-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
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

While enabling pipe currently we use the non vrr timings first and then
enable the VRR timings later.
From XE2LPD+ we will always have VRR timing generarator in use, so start
the transcoder in vrr mode.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++--
 drivers/gpu/drm/i915/display/intel_vblank.c  |  8 +++++---
 2 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a62353948686..6d12a9b620be 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7142,8 +7142,16 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
-		/* VRR will be enable later, if required */
-		intel_crtc_update_active_timings(pipe_crtc_state, false);
+		/*
+		 * For XE2LPD+ we are always using VRR TG.
+		 * For previous platforms VRR will be enable later, if required
+		 */
+		if (DISPLAY_VER(dev_priv) >= 20)
+			intel_crtc_update_active_timings(pipe_crtc_state,
+							 pipe_crtc_state->vrr.tg_enable);
+		else
+			intel_crtc_update_active_timings(pipe_crtc_state, false);
+
 	}
 
 	dev_priv->display.funcs.display->crtc_enable(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index a95fb3349eba..ca4a6add6926 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -626,9 +626,11 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 	adjusted_mode = &crtc_state->hw.adjusted_mode;
 
 	if (crtc->mode_flags & I915_MODE_FLAG_VRR) {
-		/* timing changes should happen with VRR disabled */
-		drm_WARN_ON(crtc->base.dev, intel_crtc_needs_modeset(new_crtc_state) ||
-			    new_crtc_state->update_m_n || new_crtc_state->update_lrr);
+		/* Prior to XE2LPD+, timing changes should happen with VRR disabled */
+		if (DISPLAY_VER(display) < 20) {
+			drm_WARN_ON(crtc->base.dev, intel_crtc_needs_modeset(new_crtc_state) ||
+				    new_crtc_state->update_m_n || new_crtc_state->update_lrr);
+		}
 
 		if (intel_vrr_is_push_sent(crtc_state))
 			evade->vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
-- 
2.45.2

