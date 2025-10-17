Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D428BEA8B9
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 18:14:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED8A310EC7A;
	Fri, 17 Oct 2025 16:14:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T8F5yDkC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5059710EA4B;
 Fri, 17 Oct 2025 16:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760717674; x=1792253674;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+Gf07rHK5vW6ru6T3VCBbRNwDxNez3LedGbd3544jIo=;
 b=T8F5yDkCzSfsMu3DNn7OLU6P1vvWuNlraW2jrYlR9VAfvkOk5QKZBUgT
 3wTCKCUNksICM/KiE0r/2PbpYCK8jARFJfGYKGTrnsblALL03zZgafDse
 iKDIMubYT7Th3ywEQb6KtrPtXg0tQg3DCHNFrPKHtgC7phQoZgimZzT+N
 dd5h0i1NSK/KWrNIF7qTjCWoOrUpKWevinPWCTGGn3pOw3smZ1r6+cA71
 BCjKsDnccXwGBmvq1k20IQT02DRQF15tZWEf1ZZ92QFeY5br3Tc9UDC+8
 TGHD+KhVZD4bGg0QQgfR9L1K/m5IWuyyHe5cH2dt67GDpKltuBQpc67vF g==;
X-CSE-ConnectionGUID: qhFCXEQETumnQ3SlaIbfVg==
X-CSE-MsgGUID: iNqdUHwBQ2+V+eQBPDpMIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11585"; a="62142219"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="62142219"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 09:14:34 -0700
X-CSE-ConnectionGUID: 4jAMobr4TRmvr3HjUFpeUw==
X-CSE-MsgGUID: g+rv0PS2SiyKADYI3p1oFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="188062870"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.129])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 09:14:33 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/9] drm/i915:
 s/intel_atomic_check_crtcs()/intel_atomic_check_crtcs_late()/
Date: Fri, 17 Oct 2025 19:14:11 +0300
Message-ID: <20251017161417.4399-4-ville.syrjala@linux.intel.com>
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

Rename the current intel_atomic_check_crtcs() to
intel_atomic_check_crtcs_late() to indicate it is indeed
done rather late during intel_atomic_check(). I'll be
introducing a similar function that will get called earlier
and I want to use the typical foo() vs. foo_late() naming
there.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bbb6ff929d64..89f63c3b1ecd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4191,8 +4191,8 @@ static int hsw_compute_linetime_wm(struct intel_atomic_state *state,
 	return 0;
 }
 
-static int intel_crtc_atomic_check(struct intel_atomic_state *state,
-				   struct intel_crtc *crtc)
+static int intel_crtc_atomic_check_late(struct intel_atomic_state *state,
+					struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
 	struct intel_crtc_state *crtc_state =
@@ -5746,7 +5746,7 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 		new_crtc_state->update_pipe = true;
 }
 
-static int intel_atomic_check_crtcs(struct intel_atomic_state *state)
+static int intel_atomic_check_crtcs_late(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state __maybe_unused *crtc_state;
@@ -5756,7 +5756,7 @@ static int intel_atomic_check_crtcs(struct intel_atomic_state *state)
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
 		int ret;
 
-		ret = intel_crtc_atomic_check(state, crtc);
+		ret = intel_crtc_atomic_check_late(state, crtc);
 		if (ret) {
 			drm_dbg_atomic(display->drm,
 				       "[CRTC:%d:%s] atomic driver check failed\n",
@@ -6474,7 +6474,7 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
-	ret = intel_atomic_check_crtcs(state);
+	ret = intel_atomic_check_crtcs_late(state);
 	if (ret)
 		goto fail;
 
-- 
2.49.1

