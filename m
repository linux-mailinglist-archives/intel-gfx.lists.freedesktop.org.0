Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F5AB96FF1
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 19:20:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F0A010E66D;
	Tue, 23 Sep 2025 17:20:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fODeGiCY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7A9110E66D;
 Tue, 23 Sep 2025 17:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758648032; x=1790184032;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3pSL/SZXlpHu3OlygGodpBNHBkDzcYtS3N9rNz1oo8g=;
 b=fODeGiCYF67gA9RIUooNBtp7adTrt8Vv3rr13YGABsG1i5QEsOv+cnA3
 9r5HjEkE7nWC5cM0jJnsnpA+Qdo4SmlEdJQxFHeH1OH95onyyFGG7+Yyg
 +bVXCsP6Eiijg5WoNZLpQ8nE3maFjMbwfilwQxjPPe7q1a3BO7DIbAdcK
 Y7XyZYt6pGp/unIKPmB0cujub6quxqdFRkOT/2FZenxTihwDtEKADkd7u
 CTj3SduQAJn2aGepHrfJvoqrWyD0JGRNi1zrkAuzgEgGrtKqH/eWIxkUf
 WhDdXqt9ff9NP64iBT0W7MgkLtu1bbrwSrzIP0++1Fjjc2JgOQXGzOsdJ w==;
X-CSE-ConnectionGUID: 9YgqtsfbT+SNK8feUtRPig==
X-CSE-MsgGUID: m4t4i2SnQQW4zRiHlKesjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="78375389"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="78375389"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:32 -0700
X-CSE-ConnectionGUID: GLVP9HjWS76q2YLh/2OXvw==
X-CSE-MsgGUID: HfIToPckRh29aHLixoY5ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="207747864"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:31 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 11/20] drm/i915/cdclk: Rework bw_min_cdclk handling
Date: Tue, 23 Sep 2025 20:19:33 +0300
Message-ID: <20250923171943.7319-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
References: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Update bw_min_cdclk directly from intel_bw_calc_min_cdclk()
rather than doing it later from intel_compute_min_cdclk().
This will allow better control over when to update the
cdclk. For now we preserve the current behaviour by allowing
the cdclk to decrease when any pipe needs to do a full modeset.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 38 ++++++++++------------
 1 file changed, 18 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index aa5793326b0c..4d649d893567 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2872,8 +2872,13 @@ int intel_cdclk_update_bw_min_cdclk(struct intel_atomic_state *state,
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_cdclk_state *cdclk_state;
+	bool allow_cdclk_decrease = intel_any_crtc_needs_modeset(state);
+	int ret;
 
-	if (new_min_cdclk <= old_min_cdclk)
+	if (new_min_cdclk == old_min_cdclk)
+		return 0;
+
+	if (!allow_cdclk_decrease && new_min_cdclk < old_min_cdclk)
 		return 0;
 
 	cdclk_state = intel_atomic_get_cdclk_state(state);
@@ -2882,9 +2887,18 @@ int intel_cdclk_update_bw_min_cdclk(struct intel_atomic_state *state,
 
 	old_min_cdclk = cdclk_state->bw_min_cdclk;
 
-	if (new_min_cdclk <= old_min_cdclk)
+	if (new_min_cdclk == old_min_cdclk)
 		return 0;
 
+	if (!allow_cdclk_decrease && new_min_cdclk < old_min_cdclk)
+		return 0;
+
+	cdclk_state->bw_min_cdclk = new_min_cdclk;
+
+	ret = intel_atomic_lock_global_state(&cdclk_state->base);
+	if (ret)
+		return ret;
+
 	*need_cdclk_calc = true;
 
 	drm_dbg_kms(display->drm,
@@ -2907,7 +2921,6 @@ static int intel_compute_min_cdclk(struct intel_atomic_state *state)
 	struct intel_display *display = to_intel_display(state);
 	struct intel_cdclk_state *cdclk_state =
 		intel_atomic_get_new_cdclk_state(state);
-	const struct intel_bw_state *bw_state;
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *crtc_state;
 	int min_cdclk, i;
@@ -2930,23 +2943,8 @@ static int intel_compute_min_cdclk(struct intel_atomic_state *state)
 			return ret;
 	}
 
-	bw_state = intel_atomic_get_new_bw_state(state);
-	if (bw_state) {
-		min_cdclk = intel_bw_min_cdclk(display, bw_state);
-
-		if (cdclk_state->bw_min_cdclk != min_cdclk) {
-			int ret;
-
-			cdclk_state->bw_min_cdclk = min_cdclk;
-
-			ret = intel_atomic_lock_global_state(&cdclk_state->base);
-			if (ret)
-				return ret;
-		}
-	}
-
-	min_cdclk = max(cdclk_state->force_min_cdclk,
-			cdclk_state->bw_min_cdclk);
+	min_cdclk = cdclk_state->force_min_cdclk;
+	min_cdclk = max(min_cdclk, cdclk_state->bw_min_cdclk);
 	for_each_pipe(display, pipe)
 		min_cdclk = max(min_cdclk, cdclk_state->min_cdclk[pipe]);
 
-- 
2.49.1

