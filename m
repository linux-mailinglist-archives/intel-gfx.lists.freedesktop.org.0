Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE46196F4D4
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 14:56:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84F2210EA51;
	Fri,  6 Sep 2024 12:56:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HaPzhB7H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1212810EA4F
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 12:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725627410; x=1757163410;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=erND+wA5DeNqS+4+oBtW9t4oLWeESBjmZohbQdOyfxE=;
 b=HaPzhB7H90T3bChCIdaK9rVdU0NZmJTPUbuWRfOJLCToDMlm+xGPkd+b
 +L9BrSIQsmYmroFhnN8/0ng6Zgi5OkBC6izCz47YFBuSETYwa794PJRDn
 0ih5NaK2FFCDWHvuoZpAou+gPhlav2TnOtSIEd8Tk5Ccizdr0adAXAArk
 JTup0GHxo9nErTSqKNQuEIH+gNb0Oq1lEpdAIIaiCPNWg4i3F4OsBVRp6
 EAjGxkRIG/fBEJui2NpBt3TZdamNjEyLsThQDMZF+32kFIkotW5DBJqd2
 Kh4WX8i4oNBb38tQfRmXAcJ74GmK+R6wjZG5Uq0FDbVUSS8/kOFYS6hMm A==;
X-CSE-ConnectionGUID: 1vEC4zZQSS2oT3S7rzwQKg==
X-CSE-MsgGUID: +UKL0drXTQyVtatsBscPCw==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="24257418"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="24257418"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:56:50 -0700
X-CSE-ConnectionGUID: QuyoBmmCQuesubL3dpjYvg==
X-CSE-MsgGUID: CSS/v3ZFQa6al/smpsUjfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="66691097"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:56:49 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 13/14] drm/i915/display: Consider ultrajoiner for computing
 maxdotclock
Date: Fri,  6 Sep 2024 18:28:06 +0530
Message-ID: <20240906125807.3960642-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

Move helper to check ultrajoiner from intel_dp to intel_display and
use it to compute maxdotclock.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 21 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_display.h |  2 ++
 drivers/gpu/drm/i915/display/intel_dp.c      |  8 --------
 3 files changed, 21 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f05e4cfd2146..cb52d412c961 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8199,12 +8199,29 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 	drm_helper_move_panel_connectors_to_head(&dev_priv->drm);
 }
 
+static bool intel_display_can_use_joiner(struct intel_display *display)
+{
+	/* icl+ might use joiner */
+	return (DISPLAY_VER(display) >= 11);
+}
+
+bool intel_display_can_use_ultrajoiner(struct intel_display *display)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	return ((DISPLAY_VER(display) == 14 && IS_DGFX(i915)) ||
+		DISPLAY_VER(display) > 14);
+}
+
 static int max_dotclock(struct drm_i915_private *i915)
 {
+	struct intel_display *display = to_intel_display(&i915->drm);
 	int max_dotclock = i915->display.cdclk.max_dotclk_freq;
 
-	/* icl+ might use joiner */
-	if (DISPLAY_VER(i915) >= 11)
+	if (intel_display_can_use_joiner(display))
+		max_dotclock *= 2;
+
+	if (intel_display_can_use_ultrajoiner(display))
 		max_dotclock *= 2;
 
 	return max_dotclock;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index ac7b007b3b15..aa7e1b52d165 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -53,6 +53,7 @@ struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_digital_port;
+struct intel_display;
 struct intel_dp;
 struct intel_encoder;
 struct intel_initial_plane_config;
@@ -600,5 +601,6 @@ bool assert_port_valid(struct drm_i915_private *i915, enum port port);
 bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915);
 
 int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state);
+bool intel_display_can_use_ultrajoiner(struct intel_display *display);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f8e642a57ec7..79837ba05a14 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1308,14 +1308,6 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
 	return true;
 }
 
-static bool intel_display_can_use_ultrajoiner(struct intel_display *display)
-{
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	return ((DISPLAY_VER(display) == 14 && IS_DGFX(i915)) ||
-		DISPLAY_VER(display) > 14);
-}
-
 bool intel_dp_need_ultrajoiner(struct intel_dp *dp, int clock)
 {
 	const struct intel_encoder *encoder = &dp_to_dig_port(dp)->base;
-- 
2.45.2

