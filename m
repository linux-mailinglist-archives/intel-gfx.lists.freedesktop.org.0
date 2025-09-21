Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA64B8D50E
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Sep 2025 06:49:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F60910E340;
	Sun, 21 Sep 2025 04:49:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CqOa5CnM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2D9B10E33B;
 Sun, 21 Sep 2025 04:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758430150; x=1789966150;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JVaYxqg1ETX2ejgLWiMEUFC6jMeyNGhhlNxHoD8Zb2g=;
 b=CqOa5CnMpizBhYqwBQ1UruudpQ7XQlWgXnb1wCmJR878E6UUn569j+n4
 o72lxvJSFSCQFPMgXcPW5UTIcMvNpY45TZKpwcQqNxSE7jbXNVOL5bVGO
 XboGWsXsx+PLtBAywnNWlptfL3sWRmRv9vZyntjtxNNXd+p9XohPiwXqu
 vBXz3pN03v8A/FxB6VCmErptkAN2khDcpsOBAi2JkuqgC9ppchlh/E1iV
 Eh2/xstfD6RUAk3uvLsltuyFFosSW+35tK3gG1EjoK/8FV6FfP7mm3sHJ
 IJTH0dC9Rsmo5w/TUmg+Hs0bUxAIxe5uDCqAScbmQriuEd8paeaHLCUUj Q==;
X-CSE-ConnectionGUID: F8NvgpLpRACZL+piF2PdRg==
X-CSE-MsgGUID: 30xFkc2IQ36EZleen8e9mQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11559"; a="72154743"
X-IronPort-AV: E=Sophos;i="6.18,282,1751266800"; d="scan'208";a="72154743"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 21:49:10 -0700
X-CSE-ConnectionGUID: LvSTQe79T9iapnJR2bMBPw==
X-CSE-MsgGUID: Yeg4T5iFSY6fRLuUEUGnWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,282,1751266800"; d="scan'208";a="176097727"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 21:49:07 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 6/9] drm/i915/display: Use set context latency in evasion logic
Date: Sun, 21 Sep 2025 10:05:32 +0530
Message-ID: <20250921043535.2012978-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
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

Currently we use difference between vactive and vblank delay to
implicitly wait for SCL lines.

Remove the function intel_mode_vblank_delay as we can simply use
the set context latency instead.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c    | 4 ++--
 drivers/gpu/drm/i915/display/intel_vblank.c | 7 +------
 drivers/gpu/drm/i915/display/intel_vblank.h | 1 -
 3 files changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index ca31e928ecb0..dfe928aefdcd 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -130,7 +130,7 @@ static int dsb_vblank_delay(struct intel_atomic_state *state,
 		 */
 		return intel_vrr_scl_delay(crtc_state) + 1;
 	else
-		return intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
+		return crtc_state->set_context_latency;
 }
 
 static int dsb_vtotal(struct intel_atomic_state *state,
@@ -733,7 +733,7 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
 		start = end - vblank_delay - latency;
 		intel_dsb_wait_scanline_out(state, dsb, start, end);
 	} else {
-		int vblank_delay = intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
+		int vblank_delay = crtc_state->set_context_latency;
 
 		end = intel_mode_vblank_start(&crtc_state->hw.adjusted_mode);
 		start = end - vblank_delay - latency;
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 9441b7bacd27..8c4cb6913ef9 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -619,11 +619,6 @@ int intel_mode_vtotal(const struct drm_display_mode *mode)
 	return vtotal;
 }
 
-int intel_mode_vblank_delay(const struct drm_display_mode *mode)
-{
-	return intel_mode_vblank_start(mode) - intel_mode_vdisplay(mode);
-}
-
 static const struct intel_crtc_state *
 pre_commit_crtc_state(const struct intel_crtc_state *old_crtc_state,
 		      const struct intel_crtc_state *new_crtc_state)
@@ -685,7 +680,7 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 	} else {
 		evade->vblank_start = intel_mode_vblank_start(adjusted_mode);
 
-		vblank_delay = intel_mode_vblank_delay(adjusted_mode);
+		vblank_delay = crtc_state->set_context_latency;
 	}
 
 	/* FIXME needs to be calibrated sensibly */
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
index 21fbb08d61d5..0fd6f7aeffd4 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.h
+++ b/drivers/gpu/drm/i915/display/intel_vblank.h
@@ -25,7 +25,6 @@ int intel_mode_vdisplay(const struct drm_display_mode *mode);
 int intel_mode_vblank_start(const struct drm_display_mode *mode);
 int intel_mode_vblank_end(const struct drm_display_mode *mode);
 int intel_mode_vtotal(const struct drm_display_mode *mode);
-int intel_mode_vblank_delay(const struct drm_display_mode *mode);
 
 void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 			     const struct intel_crtc_state *new_crtc_state,
-- 
2.45.2

