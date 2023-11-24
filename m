Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBF87F6E12
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Nov 2023 09:27:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B3E310E1B7;
	Fri, 24 Nov 2023 08:27:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2155010E1B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Nov 2023 08:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700814465; x=1732350465;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=H1bguD7MZvkXoEbLd0mKIYeDgLD2fivj9kTH2w0L5fc=;
 b=fDEMuNcyZh/cLtitJoQ+/GlfyYHn8Ikfee51pleKu+Gzx6dQPedwCblY
 xA1amofFKxfQeDlmSU/c9VzphZIM5FN7aYn1uYSgEerCQKc8vGdgVBgu+
 Ujbvza+8LiRkRCEF90HKXeSDz/xBv+NMiOkm7b2qkuOXC6bYlOWJ0hKfQ
 oEGMYuuh1A5CrS8pcP3gpfAmxuaiwC+euJpqCwTR+bNbhq2hVqKoLyIr5
 yTWFiykd1ajYXq9uCzORZLVvzOFb0LF24K4RLZwPVZkkCkCqNMculodXk
 5CoS7LTnKyhHnXkNxjZhWQPBYHEwgzwkLSfnisgG9GyTNDWRGWE+1F9oR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="423523563"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="423523563"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 00:27:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="760896282"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="760896282"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 24 Nov 2023 00:27:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Nov 2023 10:27:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Nov 2023 10:27:33 +0200
Message-ID: <20231124082735.25470-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231124082735.25470-1-ville.syrjala@linux.intel.com>
References: <20231124082735.25470-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: Include the PLL name in the debug
 messages
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

Make the log easier to parse by including the name of the PLL
in the debug prints regarding said PLL.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 39 ++++++++++---------
 1 file changed, 20 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 0376adc36780..d86b02de2923 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4469,25 +4469,25 @@ verify_single_dpll_state(struct drm_i915_private *i915,
 	u8 pipe_mask;
 	bool active;
 
-	drm_dbg_kms(&i915->drm, "%s\n", pll->info->name);
-
 	active = intel_dpll_get_hw_state(i915, pll, &dpll_hw_state);
 
 	if (!(pll->info->flags & INTEL_DPLL_ALWAYS_ON)) {
 		I915_STATE_WARN(i915, !pll->on && pll->active_mask,
-				"pll in active use but not on in sw tracking\n");
+				"%s: pll in active use but not on in sw tracking\n",
+				pll->info->name);
 		I915_STATE_WARN(i915, pll->on && !pll->active_mask,
-				"pll is on but not used by any active pipe\n");
+				"%s: pll is on but not used by any active pipe\n",
+				pll->info->name);
 		I915_STATE_WARN(i915, pll->on != active,
-				"pll on state mismatch (expected %i, found %i)\n",
-				pll->on, active);
+				"%s: pll on state mismatch (expected %i, found %i)\n",
+				pll->info->name, pll->on, active);
 	}
 
 	if (!crtc) {
 		I915_STATE_WARN(i915,
 				pll->active_mask & ~pll->state.pipe_mask,
-				"more active pll users than references: 0x%x vs 0x%x\n",
-				pll->active_mask, pll->state.pipe_mask);
+				"%s: more active pll users than references: 0x%x vs 0x%x\n",
+				pll->info->name, pll->active_mask, pll->state.pipe_mask);
 
 		return;
 	}
@@ -4496,21 +4496,22 @@ verify_single_dpll_state(struct drm_i915_private *i915,
 
 	if (new_crtc_state->hw.active)
 		I915_STATE_WARN(i915, !(pll->active_mask & pipe_mask),
-				"pll active mismatch (expected pipe %c in active mask 0x%x)\n",
-				pipe_name(crtc->pipe), pll->active_mask);
+				"%s: pll active mismatch (expected pipe %c in active mask 0x%x)\n",
+				pll->info->name, pipe_name(crtc->pipe), pll->active_mask);
 	else
 		I915_STATE_WARN(i915, pll->active_mask & pipe_mask,
-				"pll active mismatch (didn't expect pipe %c in active mask 0x%x)\n",
-				pipe_name(crtc->pipe), pll->active_mask);
+				"%s: pll active mismatch (didn't expect pipe %c in active mask 0x%x)\n",
+				pll->info->name, pipe_name(crtc->pipe), pll->active_mask);
 
 	I915_STATE_WARN(i915, !(pll->state.pipe_mask & pipe_mask),
-			"pll enabled crtcs mismatch (expected 0x%x in 0x%x)\n",
-			pipe_mask, pll->state.pipe_mask);
+			"%s: pll enabled crtcs mismatch (expected 0x%x in 0x%x)\n",
+			pll->info->name, pipe_mask, pll->state.pipe_mask);
 
 	I915_STATE_WARN(i915,
 			pll->on && memcmp(&pll->state.hw_state, &dpll_hw_state,
 					  sizeof(dpll_hw_state)),
-			"pll hw state mismatch\n");
+			"%s: pll hw state mismatch\n",
+			pll->info->name);
 }
 
 void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
@@ -4532,11 +4533,11 @@ void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
 		struct intel_shared_dpll *pll = old_crtc_state->shared_dpll;
 
 		I915_STATE_WARN(i915, pll->active_mask & pipe_mask,
-				"pll active mismatch (didn't expect pipe %c in active mask (0x%x))\n",
-				pipe_name(crtc->pipe), pll->active_mask);
+				"%s: pll active mismatch (didn't expect pipe %c in active mask (0x%x))\n",
+				pll->info->name, pipe_name(crtc->pipe), pll->active_mask);
 		I915_STATE_WARN(i915, pll->state.pipe_mask & pipe_mask,
-				"pll enabled crtcs mismatch (found pipe %c in enabled mask (0x%x))\n",
-				pipe_name(crtc->pipe), pll->state.pipe_mask);
+				"%s: pll enabled crtcs mismatch (found pipe %c in enabled mask (0x%x))\n",
+				pll->info->name, pipe_name(crtc->pipe), pll->state.pipe_mask);
 	}
 }
 
-- 
2.41.0

