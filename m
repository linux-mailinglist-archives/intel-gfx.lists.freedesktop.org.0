Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1BDB96FFD
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 19:20:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 848D710E672;
	Tue, 23 Sep 2025 17:20:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RRDqhXEF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1567210E672;
 Tue, 23 Sep 2025 17:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758648043; x=1790184043;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rCOFa20n21ROAzkunKcSqNjdrSxTptf621+UdwsBL70=;
 b=RRDqhXEFQ5JTW5VCNxHP+dipQvFzkdr0uAqgLz/R8kUFpX3Xb5vFflCN
 T7oMXv4VP8Cfh3V3uP5aPaNMYVahILoQuDMgn/6hqJr5HgFIPyRh4qX6T
 8iJIasFcGORR3fJ5HZeaHZ3vj76fsNxAFu0KvkHI+ywzEEJ/6Y7Dt9Pea
 vcFW3wdyIgMtw7gWFmHTYpqYsvUyqj0uppq4MBR9JpmT9NWTaSgkJRcGi
 5Lq8XxaYwh1dijPYHv5nN1QSL6wbKkErbOq+pQt0RRmBvAV+JDuhngdIU
 H9Q+tQBxt9i7zRDGblYUn85Bwa/BxOvgWPGm90MWPW1uaOGe0Ym6SnFkX Q==;
X-CSE-ConnectionGUID: 8LvtjxzkROW0BHGt2fg65Q==
X-CSE-MsgGUID: bKSAYV28T+uNm81c9zGgkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="78375399"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="78375399"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:43 -0700
X-CSE-ConnectionGUID: cyD/XMikQle7qzKGue4fzw==
X-CSE-MsgGUID: kIAEFyySSj6q7UazRddueQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="207747908"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:42 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 14/20] drm/i915/cdclk: Rework crtc min_cdclk handling
Date: Tue, 23 Sep 2025 20:19:36 +0300
Message-ID: <20250923171943.7319-15-ville.syrjala@linux.intel.com>
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

Update crtc min_cdclk directly from when calling
intel_cdclk_update_crtc_min_cdclk() rather than doing it later
from intel_compute_min_cdclk().

This will eg. allow better control over when to update the
cdclk. For now we preserve the current behaviour by allowing
the cdclk to decrease when any pipe needs to do a full modeset.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 39 ++++++++++------------
 1 file changed, 17 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 4e41b53ea3dc..7526b7cc946c 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2843,8 +2843,13 @@ static int intel_cdclk_update_crtc_min_cdclk(struct intel_atomic_state *state,
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
@@ -2853,9 +2858,18 @@ static int intel_cdclk_update_crtc_min_cdclk(struct intel_atomic_state *state,
 
 	old_min_cdclk = cdclk_state->min_cdclk[crtc->pipe];
 
-	if (new_min_cdclk <= old_min_cdclk)
+	if (new_min_cdclk == old_min_cdclk)
 		return 0;
 
+	if (!allow_cdclk_decrease && new_min_cdclk < old_min_cdclk)
+		return 0;
+
+	cdclk_state->min_cdclk[crtc->pipe] = new_min_cdclk;
+
+	ret = intel_atomic_lock_global_state(&cdclk_state->base);
+	if (ret)
+		return ret;
+
 	*need_cdclk_calc = true;
 
 	drm_dbg_kms(display->drm,
@@ -2921,27 +2935,8 @@ static int intel_compute_min_cdclk(struct intel_atomic_state *state)
 	struct intel_display *display = to_intel_display(state);
 	struct intel_cdclk_state *cdclk_state =
 		intel_atomic_get_new_cdclk_state(state);
-	struct intel_crtc *crtc;
-	struct intel_crtc_state *crtc_state;
-	int min_cdclk, i;
 	enum pipe pipe;
-
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
-		int ret;
-
-		min_cdclk = intel_crtc_compute_min_cdclk(crtc_state);
-		if (min_cdclk < 0)
-			return min_cdclk;
-
-		if (cdclk_state->min_cdclk[crtc->pipe] == min_cdclk)
-			continue;
-
-		cdclk_state->min_cdclk[crtc->pipe] = min_cdclk;
-
-		ret = intel_atomic_lock_global_state(&cdclk_state->base);
-		if (ret)
-			return ret;
-	}
+	int min_cdclk;
 
 	min_cdclk = cdclk_state->force_min_cdclk;
 	min_cdclk = max(min_cdclk, cdclk_state->bw_min_cdclk);
-- 
2.49.1

