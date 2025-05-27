Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7E1AC4B71
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 11:26:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD52210E450;
	Tue, 27 May 2025 09:25:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kUEaDRNG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACD0710E413;
 Tue, 27 May 2025 09:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748337935; x=1779873935;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IuMa9iehbIh8kYnK0mpKktlj0JIxId0euEnrV8DRN1k=;
 b=kUEaDRNGjsEGYsKPMdWW9K8mNZOnvG7b+kHi60CmqashUdfvSHZknrCY
 uAPThFwNFvmFrC+NaFS3tysRejLH9nG3RQN5GIH9MS/Kt9eFI3jYNSmpT
 aWVHOOraM4NV6oIhPdDABONVP5xYy2NYESapJtOpJVZMdRnVeolnW32UT
 SCMgpLo3/OzFLXAPn0L5AUYxPPp8+KdDI4qfESVlGP5KsXc6Flr3P4ZGL
 zr078fcPP1ECiU+qLEpQZV23en7JNySldP743++Qq9nUAQc8oiCEbGDHg
 F2n0mflXhBQyvxWU2w49flJO0caY9v0LrHGoT8HMcfr3RKVszBTiIimUU A==;
X-CSE-ConnectionGUID: QbP/CujIQHGfBUYd5/BHIg==
X-CSE-MsgGUID: cJhzuhlxRuyvL58z//93RA==
X-IronPort-AV: E=McAfee;i="6700,10204,11445"; a="54114210"
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="54114210"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 02:25:35 -0700
X-CSE-ConnectionGUID: s3LcXKZtThSo3uiiPTpKiA==
X-CSE-MsgGUID: +5Y6yN8uTAWGbn2bN3+ATg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="179922971"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.119])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 02:25:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 1/6] drm/i915/bw: pass struct dram_info pointer around
Date: Tue, 27 May 2025 12:25:21 +0300
Message-Id: <1752b4987ff39a685c28cebae1be4ce326b67c7b.1748337870.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1748337870.git.jani.nikula@intel.com>
References: <cover.1748337870.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Have just one place to figure out the pointer to struct dram_info, and
pass that around. This simplifies future changes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 44 ++++++++++++-------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index a5dd2932b852..6c537635b120 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -218,11 +218,10 @@ intel_read_qgv_point_info(struct intel_display *display,
 }
 
 static int icl_get_qgv_points(struct intel_display *display,
+			      const struct dram_info *dram_info,
 			      struct intel_qgv_info *qi,
 			      bool is_y_tile)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-	const struct dram_info *dram_info = &i915->dram_info;
 	int i, ret;
 
 	qi->num_points = dram_info->num_qgv_points;
@@ -418,19 +417,20 @@ static const struct intel_sa_info xe3lpd_sa_info = {
 	.derating = 10,
 };
 
-static int icl_get_bw_info(struct intel_display *display, const struct intel_sa_info *sa)
+static int icl_get_bw_info(struct intel_display *display,
+			   const struct dram_info *dram_info,
+			   const struct intel_sa_info *sa)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_qgv_info qi = {};
 	bool is_y_tile = true; /* assume y tile may be used */
-	int num_channels = max_t(u8, 1, i915->dram_info.num_channels);
+	int num_channels = max_t(u8, 1, dram_info->num_channels);
 	int ipqdepth, ipqdepthpch = 16;
 	int dclk_max;
 	int maxdebw;
 	int num_groups = ARRAY_SIZE(display->bw.max);
 	int i, ret;
 
-	ret = icl_get_qgv_points(display, &qi, is_y_tile);
+	ret = icl_get_qgv_points(display, dram_info, &qi, is_y_tile);
 	if (ret) {
 		drm_dbg_kms(display->drm,
 			    "Failed to get memory subsystem information, ignoring bandwidth limits");
@@ -488,11 +488,11 @@ static int icl_get_bw_info(struct intel_display *display, const struct intel_sa_
 	return 0;
 }
 
-static int tgl_get_bw_info(struct intel_display *display, const struct intel_sa_info *sa)
+static int tgl_get_bw_info(struct intel_display *display,
+			   const struct dram_info *dram_info,
+			   const struct intel_sa_info *sa)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_qgv_info qi = {};
-	const struct dram_info *dram_info = &i915->dram_info;
 	bool is_y_tile = true; /* assume y tile may be used */
 	int num_channels = max_t(u8, 1, dram_info->num_channels);
 	int ipqdepth, ipqdepthpch = 16;
@@ -502,7 +502,7 @@ static int tgl_get_bw_info(struct intel_display *display, const struct intel_sa_
 	int num_groups = ARRAY_SIZE(display->bw.max);
 	int i, ret;
 
-	ret = icl_get_qgv_points(display, &qi, is_y_tile);
+	ret = icl_get_qgv_points(display, dram_info, &qi, is_y_tile);
 	if (ret) {
 		drm_dbg_kms(display->drm,
 			    "Failed to get memory subsystem information, ignoring bandwidth limits");
@@ -632,15 +632,15 @@ static void dg2_get_bw_info(struct intel_display *display)
 }
 
 static int xe2_hpd_get_bw_info(struct intel_display *display,
+			       const struct dram_info *dram_info,
 			       const struct intel_sa_info *sa)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_qgv_info qi = {};
-	int num_channels = i915->dram_info.num_channels;
+	int num_channels = dram_info->num_channels;
 	int peakbw, maxdebw;
 	int ret, i;
 
-	ret = icl_get_qgv_points(display, &qi, true);
+	ret = icl_get_qgv_points(display, dram_info, &qi, true);
 	if (ret) {
 		drm_dbg_kms(display->drm,
 			    "Failed to get memory subsystem information, ignoring bandwidth limits");
@@ -769,26 +769,26 @@ void intel_bw_init_hw(struct intel_display *display)
 		return;
 
 	if (DISPLAY_VER(display) >= 30)
-		tgl_get_bw_info(display, &xe3lpd_sa_info);
+		tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
 	else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx &&
 		 dram_info->type == INTEL_DRAM_GDDR_ECC)
-		xe2_hpd_get_bw_info(display, &xe2_hpd_ecc_sa_info);
+		xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_ecc_sa_info);
 	else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx)
-		xe2_hpd_get_bw_info(display, &xe2_hpd_sa_info);
+		xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_sa_info);
 	else if (DISPLAY_VER(display) >= 14)
-		tgl_get_bw_info(display, &mtl_sa_info);
+		tgl_get_bw_info(display, dram_info, &mtl_sa_info);
 	else if (display->platform.dg2)
 		dg2_get_bw_info(display);
 	else if (display->platform.alderlake_p)
-		tgl_get_bw_info(display, &adlp_sa_info);
+		tgl_get_bw_info(display, dram_info, &adlp_sa_info);
 	else if (display->platform.alderlake_s)
-		tgl_get_bw_info(display, &adls_sa_info);
+		tgl_get_bw_info(display, dram_info, &adls_sa_info);
 	else if (display->platform.rocketlake)
-		tgl_get_bw_info(display, &rkl_sa_info);
+		tgl_get_bw_info(display, dram_info, &rkl_sa_info);
 	else if (DISPLAY_VER(display) == 12)
-		tgl_get_bw_info(display, &tgl_sa_info);
+		tgl_get_bw_info(display, dram_info, &tgl_sa_info);
 	else if (DISPLAY_VER(display) == 11)
-		icl_get_bw_info(display, &icl_sa_info);
+		icl_get_bw_info(display, dram_info, &icl_sa_info);
 }
 
 static unsigned int intel_bw_crtc_num_active_planes(const struct intel_crtc_state *crtc_state)
-- 
2.39.5

