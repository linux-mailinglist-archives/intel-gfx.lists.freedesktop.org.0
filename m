Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98804B96FD5
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 19:20:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3486710E654;
	Tue, 23 Sep 2025 17:20:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Be+XAYdK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68D2B10E64F;
 Tue, 23 Sep 2025 17:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758648000; x=1790184000;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hdAhjS8+1fb7x3TR1/8oi0trMJTNnoFQ4lBbB2rLQQY=;
 b=Be+XAYdKIzGNVmFjyqIjryzDlJd/7FxFJabhroEPSUqTEM2IQ+5Decs/
 MwQJ5liRSt3ylGtP40WYRbp9OHiV4HNg2DCuMx+juYTdG8usOmB3GsBwq
 g8ZHsbjv/MM8lbfRtGyg/1IpkpThSTDXF/aKytX7n7BFgPsJt9ZQtB7Hf
 wxdxZcwaUZlzLFP4p/F+Fl4ANhXVB4zdwMQxGxi6y4baoyq6LCc1y/OE0
 H5eGR5oIAQCn0E5e1+rzRaWiJ6Za6paqaf34IyN/TqqimqzWFOsq54IC5
 GVNxGRaDv9B8dTwzAKqxN7gc+xkWc6nROPyr5s77DQCJnAzIqjd3Z+kiK A==;
X-CSE-ConnectionGUID: WgrY9GkQTFeraIVEnaJiaQ==
X-CSE-MsgGUID: ZGEs+2EzSP6Yzqb7ZTA20g==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="60990974"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="60990974"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:00 -0700
X-CSE-ConnectionGUID: CxUFcsW1TumF5d8Y8M8JSQ==
X-CSE-MsgGUID: lff2bTLZQmylbK8bwoKhzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="176898399"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:19:59 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 03/20] drm/i915/bw: Skip the bw_state->active_pipes update if
 no pipe is changing its active state
Date: Tue, 23 Sep 2025 20:19:25 +0300
Message-ID: <20250923171943.7319-4-ville.syrjala@linux.intel.com>
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

Currently we may end up doing a bunch of redundant bw_state
recomputation whenever any modeset happens. Skip a bunch of
that by only considering whether any pipe actually changes
its active state.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c      | 25 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_bw.h      |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 3 files changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index ac6da20d9529..f05b9a35f17a 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -13,6 +13,7 @@
 #include "intel_atomic.h"
 #include "intel_bw.h"
 #include "intel_cdclk.h"
+#include "intel_crtc.h"
 #include "intel_display_core.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
@@ -1530,10 +1531,14 @@ static int intel_bw_modeset_checks(struct intel_atomic_state *state)
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_bw_state *old_bw_state;
 	struct intel_bw_state *new_bw_state;
+	int ret;
 
 	if (DISPLAY_VER(display) < 9)
 		return 0;
 
+	if (!intel_any_crtc_active_changed(state))
+		return 0;
+
 	new_bw_state = intel_atomic_get_bw_state(state);
 	if (IS_ERR(new_bw_state))
 		return PTR_ERR(new_bw_state);
@@ -1543,13 +1548,9 @@ static int intel_bw_modeset_checks(struct intel_atomic_state *state)
 	new_bw_state->active_pipes =
 		intel_calc_active_pipes(state, old_bw_state->active_pipes);
 
-	if (new_bw_state->active_pipes != old_bw_state->active_pipes) {
-		int ret;
-
-		ret = intel_atomic_lock_global_state(&new_bw_state->base);
-		if (ret)
-			return ret;
-	}
+	ret = intel_atomic_lock_global_state(&new_bw_state->base);
+	if (ret)
+		return ret;
 
 	return 0;
 }
@@ -1599,7 +1600,7 @@ static int intel_bw_check_sagv_mask(struct intel_atomic_state *state)
 	return 0;
 }
 
-int intel_bw_atomic_check(struct intel_atomic_state *state, bool any_ms)
+int intel_bw_atomic_check(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
 	bool changed = false;
@@ -1610,11 +1611,9 @@ int intel_bw_atomic_check(struct intel_atomic_state *state, bool any_ms)
 	if (DISPLAY_VER(display) < 9)
 		return 0;
 
-	if (any_ms) {
-		ret = intel_bw_modeset_checks(state);
-		if (ret)
-			return ret;
-	}
+	ret = intel_bw_modeset_checks(state);
+	if (ret)
+		return ret;
 
 	ret = intel_bw_check_sagv_mask(state);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index d51f50c9d302..c064e80a7a7f 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -28,7 +28,7 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state);
 
 void intel_bw_init_hw(struct intel_display *display);
 int intel_bw_init(struct intel_display *display);
-int intel_bw_atomic_check(struct intel_atomic_state *state, bool any_ms);
+int intel_bw_atomic_check(struct intel_atomic_state *state);
 int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 			    bool *need_cdclk_calc);
 int intel_bw_min_cdclk(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 18b9baa96241..9e9afb4f3b4b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6414,7 +6414,7 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
-	ret = intel_bw_atomic_check(state, any_ms);
+	ret = intel_bw_atomic_check(state);
 	if (ret)
 		goto fail;
 
-- 
2.49.1

