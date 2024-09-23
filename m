Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4263597E54E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 06:32:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCAC410E375;
	Mon, 23 Sep 2024 04:32:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d39gZuEB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D119110E375
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 04:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727065949; x=1758601949;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Mrp03S9t+ooKD4I4UcLpfT93yqJTRBwHZoueTuwFSjA=;
 b=d39gZuEBR+ql8/WwKTO9rm0YlTCVtHePIh/KnR2AHEPPE5IXLTTDqPJh
 pbgpYTGh/UleAYGlWrOmgFbZi3a+EUF1WzJ1h0J/NqP8ekrA05xzOOEUo
 XkxTNrg8oE4QRpz6kAF1a5Y5TVALtC+PWnvMWLD+/jCr1MJ7lAMf6el3I
 hzKuHGmrQibLg3nrs8pImRQqygoVy1ziRNPIBK3aAVEMXmxTgBYv5C9VH
 zL3oC4+STkIlSFA115cB4j569Nen1HubAypk3TZUc1NMiBzCB18o3Awyw
 y4MI4ZuglLje2ocMRIGvcX8XQf1ABZDiMlca73tCnH7fArr/J4mCBmKUe Q==;
X-CSE-ConnectionGUID: 2U6xNL74Sc+WXwyTFQCAuA==
X-CSE-MsgGUID: Agv4Cpw4T1Wl4d/OYlAKcg==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="37368674"
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="37368674"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 21:32:29 -0700
X-CSE-ConnectionGUID: 365A7/jgSM2bP40i4pr6jw==
X-CSE-MsgGUID: sjL2x9A1Sc6/biuQKNfgKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="101786797"
Received: from dhhellew-desk2.ger.corp.intel.com.ger.corp.intel.com (HELO
 jhogande-mobl1..) ([10.245.245.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 21:32:27 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 1/2] drm/i915/psr: Add new SU area calculation helper to apply
 workarounds
Date: Mon, 23 Sep 2024 07:32:04 +0300
Message-Id: <20240923043205.2016070-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240923043205.2016070-1-jouni.hogander@intel.com>
References: <20240923043205.2016070-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

intel_psr2_sel_fetch_update is already quite long function. Now we are
about to add one more HW workaround. Let's split applying workarounds to
selective update area into a separate function.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5b355d0a35652..f7dfd9435b589 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2488,11 +2488,24 @@ static bool psr2_sel_fetch_pipe_state_supported(const struct intel_crtc_state *c
 	return true;
 }
 
+static void
+intel_psr_apply_su_area_workarounds(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	/* Wa_14014971492 */
+	if (!crtc_state->has_panel_replay &&
+	    ((IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_A0, STEP_B0) ||
+	      IS_ALDERLAKE_P(i915) || IS_TIGERLAKE(i915))) &&
+	    crtc_state->splitter.enable)
+		crtc_state->psr2_su_area.y1 = 0;
+}
+
 int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_plane_state *new_plane_state, *old_plane_state;
 	struct intel_plane *plane;
@@ -2597,12 +2610,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	if (full_update)
 		goto skip_sel_fetch_set_loop;
 
-	/* Wa_14014971492 */
-	if (!crtc_state->has_panel_replay &&
-	    ((IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_A0, STEP_B0) ||
-	      IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv))) &&
-	    crtc_state->splitter.enable)
-		crtc_state->psr2_su_area.y1 = 0;
+	intel_psr_apply_su_area_workarounds(crtc_state);
 
 	ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);
 	if (ret)
-- 
2.34.1

