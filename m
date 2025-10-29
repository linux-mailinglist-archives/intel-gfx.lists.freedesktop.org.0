Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE00C19283
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 09:47:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E9DE10E751;
	Wed, 29 Oct 2025 08:47:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O8LaO04J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BF5E10E752;
 Wed, 29 Oct 2025 08:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761727636; x=1793263636;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cv9RpHcifduRFn9z3022ngoROCE5ZygppHHbWiorHEg=;
 b=O8LaO04JoRFHVMwE5BIIeXhdxtJ0Ioni16RRu65K4M0TJI5qBXd6TmIi
 lzxafTeZapDCuf2BuAHcZu06BE4x6ey15giP/2zBe1te0CgRO0joAq8hx
 cCE7GK6WiHsWtnrNSis8I9d7y0+HKV11AWVWNBBkhsVUAbROXeYMUWtRw
 Zukf49woS8qaBUiJN/2QUtjVJ9zWlqQkyqL5/eidZxp+dztCswS/sGrbf
 ApWYKVxhsilu/CGVyL//IhEH+Pb5H9njiSuB41yf7HEE1dZEZHiqoZQlQ
 9Aiq+DqMUtrdh8yMaAd7Owwb/DlhnBMBTosmI5UBLK/g+gm/Egx4UvXKm g==;
X-CSE-ConnectionGUID: obR147dDSw2xjj1w1iD6YA==
X-CSE-MsgGUID: dfK7ork6S4yZQ8r2dmlkYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74132164"
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="74132164"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:47:16 -0700
X-CSE-ConnectionGUID: Nzh9h2L3Sk22l4MPO8WLaA==
X-CSE-MsgGUID: Z3qeXubRTA2hNCnnc+2nDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="184785145"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.242])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:47:15 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v2 6/9] drm/i915/scaler: Assign scalers earlier
Date: Wed, 29 Oct 2025 10:46:44 +0200
Message-ID: <20251029084647.4165-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251029084647.4165-1-ville.syrjala@linux.intel.com>
References: <20251029084647.4165-1-ville.syrjala@linux.intel.com>
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

Move the scaler assignment into intel_atomic_check_crtcs(). The
scaler assignment and scale factors are needed for the prefill
vs. vblank length checks performed during
intel_compute_global_watermarks().

I think originally the scaler code itself did some current cdclk
vs. scaling factor checks, which explains why it's being called
so late during intel_atomic_check(). But we've long ago switched
the logic on its head so that scaling dictates the minimum cdclk,
not the other way around.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b4f5df88d172..2eb714fbc35f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4234,12 +4234,6 @@ static int intel_crtc_atomic_check_late(struct intel_atomic_state *state,
 		return ret;
 	}
 
-	if (DISPLAY_VER(display) >= 9) {
-		ret = intel_atomic_setup_scalers(state, crtc);
-		if (ret)
-			return ret;
-	}
-
 	if (HAS_IPS(display)) {
 		ret = hsw_ips_compute_config(state, crtc);
 		if (ret)
@@ -5756,13 +5750,23 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 
 static int intel_atomic_check_crtcs(struct intel_atomic_state *state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *new_crtc_state;
 	struct intel_crtc *crtc;
 	int i;
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		int ret;
+
 		new_crtc_state->min_cdclk = intel_crtc_min_cdclk(new_crtc_state);
 
+		if (DISPLAY_VER(display) >= 9) {
+			ret = intel_atomic_setup_scalers(state, crtc);
+			if (ret)
+				return ret;
+		}
+	}
+
 	return 0;
 }
 
-- 
2.49.1

