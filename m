Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 398D5BEA8D9
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 18:14:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6767810EC7F;
	Fri, 17 Oct 2025 16:14:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ey6NpuLS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 284CC10EC7F;
 Fri, 17 Oct 2025 16:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760717686; x=1792253686;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iQVnPCQJhw1PiUuVzjdTHVX+OmYiGoE6mUdSEsxABp0=;
 b=ey6NpuLSSnP174zBsXaC9dUYetRanKf4pYzuj0e7ecRha0EN4masatr6
 /7QMV8K/xNI/L+xXQwKd4na/CvuFc/KOyHZd7jSb5+I3c8jAQRqlj05DL
 WBlM6pwigiocvcPN/Wl76nKGJ64HN/QTSD2EfJtask7ms1nsa6DbGTFEp
 I98LYb/R9gAR0ncBae20U4SdvGEUWpsCTKixYar9aDRau6R1nwbqjdQHU
 3pFglnuqVOUkqwWSj5QynVhvfaXKG4VjiajW8KOsMzZHOauDFaNhW4M/z
 6T3W7f2Ei2THbJ7hQRRCg11XbLe2NwdGR+gfW1W2BWQg3HvBTtM6kpGZq g==;
X-CSE-ConnectionGUID: gfhsUbMmTqOmSAMF907Cpw==
X-CSE-MsgGUID: B1/OulefRlq7NPG+QLp9cQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11585"; a="61961811"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="61961811"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 09:14:45 -0700
X-CSE-ConnectionGUID: OBvuHUB5RS6PgPS4Zd7P3g==
X-CSE-MsgGUID: A77bM+geRVmBQtC1+mUXgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="187026490"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.129])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 09:14:44 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 6/9] drm/i915/scaler: Assign scalers earlier
Date: Fri, 17 Oct 2025 19:14:14 +0300
Message-ID: <20251017161417.4399-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251017161417.4399-1-ville.syrjala@linux.intel.com>
References: <20251017161417.4399-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0c483a4994c2..0beed5f9c13a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4229,12 +4229,6 @@ static int intel_crtc_atomic_check_late(struct intel_atomic_state *state,
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
@@ -5748,13 +5742,23 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 
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

