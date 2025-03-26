Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D63A71BD5
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 17:26:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE34410E73A;
	Wed, 26 Mar 2025 16:26:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X2WIZWBB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A360310E739;
 Wed, 26 Mar 2025 16:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743006386; x=1774542386;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4dS+lrzpXhEu1uzFtFItCu2WMkZ24SQK1vUML0Z1TKo=;
 b=X2WIZWBByOCti5mDl/maNUUsT5cWxVzFgRdeLOuCxs2TrPd0J4pGRYzT
 nl9WQznZEKcoidmTDZIsHLVPdykg9ANPtYLO9DZO3uLoKPpqiQCLWlUJb
 dohcNnTx4ZkCyBM/qV70IL2/D1k7ao5XL8Auw3KwWD6LIFIfGk8Aj0Cs/
 2pj0FGqyDnRs1mT2VNkhOnOwDpw28nS6EKdEu7N+kxBJlxgPgEnOHtjlt
 Lw46A55rNIzqSCICMbdnEYXJnHKAh76ynZaN5o7zehQ3tlM6+GHegDUpV
 yhOJPIreajrVwhBNWKguyNOfXt2SqZ54UYe+N9cpA9F4venuCSHZ+nAG2 A==;
X-CSE-ConnectionGUID: MVNNyUHPSBSccVS7U/NbXA==
X-CSE-MsgGUID: vR7Yf5Q9TeKUFdH53OagLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44029592"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="44029592"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 09:26:26 -0700
X-CSE-ConnectionGUID: sfkkPxMxSpq5fds9RqhtnQ==
X-CSE-MsgGUID: 85hVnBT1QLSXdKwRvu95vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="130016452"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Mar 2025 09:26:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Mar 2025 18:26:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 12/14] drm/i915: Make intel_bw_modeset_checks() internal to
 intel_bw_atomic_check()
Date: Wed, 26 Mar 2025 18:25:42 +0200
Message-ID: <20250326162544.3642-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
References: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
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

Now that all the sagv computation has been moved from the
skl+ watermark code into intel_bw_atomic_check() there is
no point in calling intel_bw_modeset_checks() before the
wm computation. Hide it within intel_bw_atomic_check().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c      | 10 ++++++++--
 drivers/gpu/drm/i915/display/intel_bw.h      |  3 +--
 drivers/gpu/drm/i915/display/intel_display.c |  8 +-------
 3 files changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index b54704f9af4e..b8bb2e395bb7 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1414,7 +1414,7 @@ static int intel_bw_check_data_rate(struct intel_atomic_state *state, bool *chan
 	return 0;
 }
 
-int intel_bw_modeset_checks(struct intel_atomic_state *state)
+static int intel_bw_modeset_checks(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_bw_state *old_bw_state;
@@ -1483,7 +1483,7 @@ static int intel_bw_check_sagv_mask(struct intel_atomic_state *state)
 	return 0;
 }
 
-int intel_bw_atomic_check(struct intel_atomic_state *state)
+int intel_bw_atomic_check(struct intel_atomic_state *state, bool any_ms)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *i915 = to_i915(display->drm);
@@ -1495,6 +1495,12 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	if (DISPLAY_VER(i915) < 9)
 		return 0;
 
+	if (any_ms) {
+		ret = intel_bw_modeset_checks(state);
+		if (ret)
+			return ret;
+	}
+
 	ret = intel_bw_check_sagv_mask(state);
 	if (ret)
 		return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index ac435674c3ed..eb2cc883e9c1 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -66,8 +66,7 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state);
 
 void intel_bw_init_hw(struct intel_display *display);
 int intel_bw_init(struct intel_display *display);
-int intel_bw_modeset_checks(struct intel_atomic_state *state);
-int intel_bw_atomic_check(struct intel_atomic_state *state);
+int intel_bw_atomic_check(struct intel_atomic_state *state, bool any_ms);
 int icl_pcode_restrict_qgv_points(struct intel_display *display,
 				  u32 points_mask);
 int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0ecfcb68e56d..a7884051c7fd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6416,17 +6416,11 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
-	if (any_ms) {
-		ret = intel_bw_modeset_checks(state);
-		if (ret)
-			goto fail;
-	}
-
 	ret = intel_compute_global_watermarks(state);
 	if (ret)
 		goto fail;
 
-	ret = intel_bw_atomic_check(state);
+	ret = intel_bw_atomic_check(state, any_ms);
 	if (ret)
 		goto fail;
 
-- 
2.45.3

