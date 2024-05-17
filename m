Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 766548C888C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 16:54:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7F2D10EEFD;
	Fri, 17 May 2024 14:54:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b6DiqLuA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4151810EEFB
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 14:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715957654; x=1747493654;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ljFHJp9pPggBvHJx0eb3/VO/hR5xhSdbOjzZVVLaYS0=;
 b=b6DiqLuABn5BhZhA1K410VoqOmlA89GuHjPBIDbxBV7KjI09JSMOxupC
 uMJHh7pqIwrpIGTRGUJ4dcSx499eqAszJNZf+TmeBRgv+5/2PdXn0StQt
 mYwgikKT0soyBaoDBs8WSjyz1YoMZ03icOjiUyGiPxBsGw0EQNOLpg/aJ
 ZvxG4xuKIvrmxa5JMpcto5DZt+yvSRux/GstuABoRwoSNBPCreCQrVZk2
 ElxfhPcDao7bCxBFT677AyZrB4zJBJrHP66e92tU/3Hyr7ZBbG3+KNBJN
 VXROk8FqW9D04920HuIi9POy5qTbtWKFyohj0mqfpN97kydVkMXoxF7Vf g==;
X-CSE-ConnectionGUID: 4QOnhJHXTr6Q4kOR7lqi2Q==
X-CSE-MsgGUID: JRd5FViiQ0aW6aJN57H14g==
X-IronPort-AV: E=McAfee;i="6600,9927,11075"; a="12008042"
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="12008042"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 07:54:14 -0700
X-CSE-ConnectionGUID: 7jEVaC/1Qwu7ILWu678MEA==
X-CSE-MsgGUID: LuYHBXksRrGpViiZUa2BtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="31800985"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 May 2024 07:54:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 May 2024 17:54:11 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/7] drm/i915: Reuse intel_dp_supports_dsc() for MST
Date: Fri, 17 May 2024 17:53:54 +0300
Message-ID: <20240517145356.26103-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240517145356.26103-1-ville.syrjala@linux.intel.com>
References: <20240517145356.26103-1-ville.syrjala@linux.intel.com>
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

intel_dp_supports_dsc() now works for MST as well, reuse it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  4 ++--
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 20 ++++----------------
 3 files changed, 9 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6dfde22e5f9d..a15ef6c015c8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1459,8 +1459,8 @@ bool intel_dp_supports_fec(struct intel_dp *intel_dp,
 		drm_dp_sink_supports_fec(connector->dp.fec_capability);
 }
 
-static bool intel_dp_supports_dsc(struct intel_connector *connector,
-				  const struct intel_crtc_state *crtc_state)
+bool intel_dp_supports_dsc(struct intel_connector *connector,
+			   const struct intel_crtc_state *crtc_state)
 {
 	if (!intel_dp_has_dsc(connector))
 		return false;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index c0d3e315559e..f1d90fc458d9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -170,6 +170,9 @@ bool intel_dp_supports_fec(struct intel_dp *intel_dp,
 			   const struct intel_connector *connector,
 			   const struct intel_crtc_state *pipe_config);
 
+bool intel_dp_supports_dsc(struct intel_connector *connector,
+			   const struct intel_crtc_state *crtc_state);
+
 u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 pipe_bpp);
 
 void intel_ddi_update_pipe(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index b57753d2d82c..4a624c826604 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -400,18 +400,6 @@ static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
 	return 0;
 }
 
-static bool
-intel_dp_mst_dsc_source_support(const struct intel_crtc_state *crtc_state)
-{
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
-
-	/*
-	 * FIXME: Enabling DSC on ICL results in blank screen and FIFO pipe /
-	 * transcoder underruns, re-enable DSC after fixing this issue.
-	 */
-	return DISPLAY_VER(i915) >= 12 && intel_dsc_source_support(crtc_state);
-}
-
 static int mode_hblank_period_ns(const struct drm_display_mode *mode)
 {
 	return DIV_ROUND_CLOSEST_ULL(mul_u32_u32(mode->htotal - mode->hdisplay,
@@ -443,7 +431,7 @@ hblank_expansion_quirk_needs_dsc(const struct intel_connector *connector,
 }
 
 static bool
-adjust_limits_for_dsc_hblank_expansion_quirk(const struct intel_connector *connector,
+adjust_limits_for_dsc_hblank_expansion_quirk(struct intel_connector *connector,
 					     const struct intel_crtc_state *crtc_state,
 					     struct link_config_limits *limits,
 					     bool dsc)
@@ -456,7 +444,7 @@ adjust_limits_for_dsc_hblank_expansion_quirk(const struct intel_connector *conne
 		return true;
 
 	if (!dsc) {
-		if (intel_dp_mst_dsc_source_support(crtc_state)) {
+		if (intel_dp_supports_dsc(connector, crtc_state)) {
 			drm_dbg_kms(&i915->drm,
 				    "[CRTC:%d:%s][CONNECTOR:%d:%s] DSC needed by hblank expansion quirk\n",
 				    crtc->base.base.id, crtc->base.name,
@@ -503,7 +491,7 @@ adjust_limits_for_dsc_hblank_expansion_quirk(const struct intel_connector *conne
 
 static bool
 intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
-				   const struct intel_connector *connector,
+				   struct intel_connector *connector,
 				   struct intel_crtc_state *crtc_state,
 				   bool dsc,
 				   struct link_config_limits *limits)
@@ -602,7 +590,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
 			    str_yes_no(intel_dp->force_dsc_en));
 
-		if (!intel_dp_mst_dsc_source_support(pipe_config))
+		if (!intel_dp_supports_dsc(connector, pipe_config))
 			return -EINVAL;
 
 		if (!intel_dp_mst_compute_config_limits(intel_dp,
-- 
2.44.1

