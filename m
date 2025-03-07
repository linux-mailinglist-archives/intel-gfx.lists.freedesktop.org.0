Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D61EDA56FF3
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 19:02:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AC9310EC22;
	Fri,  7 Mar 2025 18:02:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="krHYMHiK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B87A610EC22;
 Fri,  7 Mar 2025 18:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741370547; x=1772906547;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fGOlZ+TCOoADui2ApQsPyT3X0HVSqWjmIeteEgLdGtc=;
 b=krHYMHiKZ5twWeG5a7msB71Mdr2WCgirhVINGbDzruuPvPJAna8Yknx/
 FePXQyNMcadCx8XV5nQ/i1EKxzjhmOwhz6hGtcWwt31MNzi7O9P1gpXEf
 WXXxb0Ci95C1UNl0CdRstBq7T+dlpJXkv6GJ6Hf4hRwCI+ENjI2z/WBwr
 q4s5tAGOMt3WJqsJG6trWWIX/nVt0KBcBuYTm+FcHarb0SglqlNvClr1A
 ptp3jLoPymnxza/rtWP/gyITshGTBfmaq6nRFoo08QNtJEMBzITKJ9+2e
 S7isKFztC1nWNhdt2hODKvGT8Q2bnPfqBL56u5Kggx0DzOz4dpw+fuM0f Q==;
X-CSE-ConnectionGUID: LRPRePf1QCO0L8IBv/JYpA==
X-CSE-MsgGUID: c7w0w0J9RYaQs4m3LLKsNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="52637200"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="52637200"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 10:02:26 -0800
X-CSE-ConnectionGUID: x5gSqOlhRt+ay4hiVAt0tg==
X-CSE-MsgGUID: TtdWBnMiRW6yymbk6xrzLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124621229"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 07 Mar 2025 10:02:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Mar 2025 20:02:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 12/14] drm/i915: Make intel_bw_modeset_checks() internal to
 intel_bw_atomic_check()
Date: Fri,  7 Mar 2025 20:01:37 +0200
Message-ID: <20250307180139.15744-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
References: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
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
index a39b75640b03..3407606be461 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1379,7 +1379,7 @@ static int intel_bw_check_data_rate(struct intel_atomic_state *state, bool *chan
 	return 0;
 }
 
-int intel_bw_modeset_checks(struct intel_atomic_state *state)
+static int intel_bw_modeset_checks(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_bw_state *old_bw_state;
@@ -1448,7 +1448,7 @@ static int intel_bw_check_sagv_mask(struct intel_atomic_state *state)
 	return 0;
 }
 
-int intel_bw_atomic_check(struct intel_atomic_state *state)
+int intel_bw_atomic_check(struct intel_atomic_state *state, bool any_ms)
 {
 	bool changed = false;
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
@@ -1459,6 +1459,12 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
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
index 0efc9858faa1..d5e29599c158 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -67,8 +67,7 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state);
 
 void intel_bw_init_hw(struct drm_i915_private *dev_priv);
 int intel_bw_init(struct drm_i915_private *dev_priv);
-int intel_bw_modeset_checks(struct intel_atomic_state *state);
-int intel_bw_atomic_check(struct intel_atomic_state *state);
+int intel_bw_atomic_check(struct intel_atomic_state *state, bool any_ms);
 int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 				  u32 points_mask);
 int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 69e4c9be28f3..e75a2f167d7d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6423,17 +6423,11 @@ int intel_atomic_check(struct drm_device *dev,
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

