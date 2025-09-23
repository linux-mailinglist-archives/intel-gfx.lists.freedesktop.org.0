Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F317B97012
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 19:21:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3676F10E681;
	Tue, 23 Sep 2025 17:21:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nkFcRwf2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F22E910E681;
 Tue, 23 Sep 2025 17:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758648067; x=1790184067;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XUtOnmryNEHWkK/5rHW2QFBrdrEIvszkcKLLDsg+Be0=;
 b=nkFcRwf2moYkUATsBDSRn+IVoWsjh7pXGqUx506k1IWtvMnv9a+/rcGG
 y9tnvny3846l00KfzoFsYXEGCAWx8vkGEqn2UxRHxGCzstq+f64o0w0FQ
 vIyPuObhDWCkzLq5nnIoi2dMIbvw2lT6t75N1RSkBv3UE0Vj2bpuf4yic
 Q7+xrwDdQEchvUFNvRcpYJJGw5L8Shew5/eCCg5UMRD19xxez3jRe4dzl
 BWyktU++gJriifdDsaAbe7cjcet0FTrjml5NS8vqLwXSezNtmooMAlA9a
 AyDluHgvSSbRsP6BTd6hLmlkT6U2jH/vPf/oyf872peHZkS5pbUXu7Dvw g==;
X-CSE-ConnectionGUID: VPj2BF7SRdmAyi+6Nt4Jgg==
X-CSE-MsgGUID: 2qHSYo7iQ1eMCrjzf9b8yQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="60859530"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="60859530"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:21:07 -0700
X-CSE-ConnectionGUID: p6rysYSaSkigTFupkUTAcQ==
X-CSE-MsgGUID: 3tTGSc08ToGTzoo6swF8/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="177608608"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:21:05 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 20/20] drm/i915/cdclk: Move intel_cdclk_atomic_check()
Date: Tue, 23 Sep 2025 20:19:42 +0300
Message-ID: <20250923171943.7319-21-ville.syrjala@linux.intel.com>
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

Move intel_cdclk_atomic_check() a bit so that we don't need an
extra intel_modeset_calc_cdclk() forward declaration.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 82 +++++++++++-----------
 1 file changed, 40 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 487d15ef206d..51afd877799e 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3310,48 +3310,6 @@ static int intel_crtcs_calc_min_cdclk(struct intel_atomic_state *state,
 	return 0;
 }
 
-static int intel_modeset_calc_cdclk(struct intel_atomic_state *state);
-
-int intel_cdclk_atomic_check(struct intel_atomic_state *state)
-{
-	const struct intel_cdclk_state *old_cdclk_state;
-	struct intel_cdclk_state *new_cdclk_state;
-	bool need_cdclk_calc = false;
-	int ret;
-
-	ret = intel_cdclk_modeset_checks(state, &need_cdclk_calc);
-	if (ret)
-		return ret;
-
-	ret = intel_crtcs_calc_min_cdclk(state, &need_cdclk_calc);
-	if (ret)
-		return ret;
-
-	ret = intel_bw_calc_min_cdclk(state, &need_cdclk_calc);
-	if (ret)
-		return ret;
-
-	old_cdclk_state = intel_atomic_get_old_cdclk_state(state);
-	new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
-
-	if (new_cdclk_state &&
-	    old_cdclk_state->force_min_cdclk != new_cdclk_state->force_min_cdclk) {
-		ret = intel_atomic_lock_global_state(&new_cdclk_state->base);
-		if (ret)
-			return ret;
-
-		need_cdclk_calc = true;
-	}
-
-	if (need_cdclk_calc) {
-		ret = intel_modeset_calc_cdclk(state);
-		if (ret)
-			return ret;
-	}
-
-	return 0;
-}
-
 int intel_cdclk_state_set_joined_mbus(struct intel_atomic_state *state, bool joined_mbus)
 {
 	struct intel_cdclk_state *cdclk_state;
@@ -3502,6 +3460,46 @@ static int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 	return 0;
 }
 
+int intel_cdclk_atomic_check(struct intel_atomic_state *state)
+{
+	const struct intel_cdclk_state *old_cdclk_state;
+	struct intel_cdclk_state *new_cdclk_state;
+	bool need_cdclk_calc = false;
+	int ret;
+
+	ret = intel_cdclk_modeset_checks(state, &need_cdclk_calc);
+	if (ret)
+		return ret;
+
+	ret = intel_crtcs_calc_min_cdclk(state, &need_cdclk_calc);
+	if (ret)
+		return ret;
+
+	ret = intel_bw_calc_min_cdclk(state, &need_cdclk_calc);
+	if (ret)
+		return ret;
+
+	old_cdclk_state = intel_atomic_get_old_cdclk_state(state);
+	new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
+
+	if (new_cdclk_state &&
+	    old_cdclk_state->force_min_cdclk != new_cdclk_state->force_min_cdclk) {
+		ret = intel_atomic_lock_global_state(&new_cdclk_state->base);
+		if (ret)
+			return ret;
+
+		need_cdclk_calc = true;
+	}
+
+	if (need_cdclk_calc) {
+		ret = intel_modeset_calc_cdclk(state);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 void intel_cdclk_update_hw_state(struct intel_display *display)
 {
 	const struct intel_bw_state *bw_state =
-- 
2.49.1

