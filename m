Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DA8838A59
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 10:32:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25FC810E188;
	Tue, 23 Jan 2024 09:31:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D10E10E636
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 09:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706002300; x=1737538300;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/CYJ1lG7GeW1KhUqdQFo00rmhWiUsaXb5MXUGxW9Ej4=;
 b=Ie4S0nh22lsDbYF3UKYsZXm7D7vjDqISPQmLoGWmADlvb2dgEm6kowqf
 XoAdxjxwXWnbWUxOyFS0xbSpJBa0g48/uyefTGzAyqUHwmn7/pCH+kNNI
 iv6jLXmqUDGB6ypVFwEiw1nXUnTegu5Bpo13Dg7k6hAoChwnyQFKRl+jg
 iRdOMwFWWNmsb5zWMWr3rkzv4+6f+J0D5Dwpv76ldVN+2wj1xBgENMZsm
 dY0hp7gyQQC27v1Q/QBAiEZTNmfYZd7AKCvg3h4Y4qoFrr7O2tDtW0Io8
 zcItAvAmX+QVTNv8iyftrJMhOFclrIYjstUa1u3pHrbt4In0uVjC2iRmg A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="14817465"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="14817465"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 01:31:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="820028851"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="820028851"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 23 Jan 2024 01:31:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 23 Jan 2024 11:31:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 1/3] drm/i915: Include the PLL name in the debug messages
Date: Tue, 23 Jan 2024 11:31:35 +0200
Message-ID: <20240123093137.9133-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
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

Make the log easier to parse by including the name of the PLL
in the debug prints regarding said PLL.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 39 ++++++++++---------
 1 file changed, 20 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 7a6f777eb80f..ce97677d44f0 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4475,25 +4475,25 @@ verify_single_dpll_state(struct drm_i915_private *i915,
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
@@ -4502,21 +4502,22 @@ verify_single_dpll_state(struct drm_i915_private *i915,
 
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
@@ -4538,11 +4539,11 @@ void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
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
2.43.0

