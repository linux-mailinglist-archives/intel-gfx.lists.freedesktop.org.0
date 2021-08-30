Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D9B3FB67F
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 14:53:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 039ED89CDD;
	Mon, 30 Aug 2021 12:53:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F33589CDD
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 12:53:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10091"; a="215137246"
X-IronPort-AV: E=Sophos;i="5.84,363,1620716400"; d="scan'208";a="215137246"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2021 05:53:55 -0700
X-IronPort-AV: E=Sophos;i="5.84,363,1620716400"; d="scan'208";a="540447517"
Received: from anikolae-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.249.47.21])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2021 05:53:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Date: Mon, 30 Aug 2021 15:53:40 +0300
Message-Id: <c7c2db4e1434ed9a3545f2561a03dc593db5e674.1630327990.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1630327990.git.jani.nikula@intel.com>
References: <cover.1630327990.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/debugfs: clean up LPSP status
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

Clean up the LPSP status printout. No functional changes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 37 ++++++-------------
 1 file changed, 11 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 8fdacb252bb1..d2a14a9c6857 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1323,9 +1323,6 @@ static int i915_drrs_status(struct seq_file *m, void *unused)
 	return 0;
 }
 
-#define LPSP_STATUS(COND) (COND ? seq_puts(m, "LPSP: enabled\n") : \
-				seq_puts(m, "LPSP: disabled\n"))
-
 static bool
 intel_lpsp_power_well_enabled(struct drm_i915_private *i915,
 			      enum i915_power_well_id power_well_id)
@@ -1344,32 +1341,20 @@ intel_lpsp_power_well_enabled(struct drm_i915_private *i915,
 static int i915_lpsp_status(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *i915 = node_to_i915(m->private);
-
-	if (DISPLAY_VER(i915) >= 13) {
-		LPSP_STATUS(!intel_lpsp_power_well_enabled(i915,
-							   SKL_DISP_PW_2));
+	bool lpsp_enabled = false;
+
+	if (DISPLAY_VER(i915) >= 13 || IS_DISPLAY_VER(i915, 9, 10)) {
+		lpsp_enabled = !intel_lpsp_power_well_enabled(i915, SKL_DISP_PW_2);
+	} else if (IS_DISPLAY_VER(i915, 11, 12)) {
+		lpsp_enabled = !intel_lpsp_power_well_enabled(i915, ICL_DISP_PW_3);
+	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
+		lpsp_enabled = !intel_lpsp_power_well_enabled(i915, HSW_DISP_PW_GLOBAL);
+	} else {
+		seq_puts(m, "LPSP: not supported\n");
 		return 0;
 	}
 
-	switch (DISPLAY_VER(i915)) {
-	case 12:
-	case 11:
-		LPSP_STATUS(!intel_lpsp_power_well_enabled(i915, ICL_DISP_PW_3));
-		break;
-	case 10:
-	case 9:
-		LPSP_STATUS(!intel_lpsp_power_well_enabled(i915, SKL_DISP_PW_2));
-		break;
-	default:
-		/*
-		 * Apart from HASWELL/BROADWELL other legacy platform doesn't
-		 * support lpsp.
-		 */
-		if (IS_HASWELL(i915) || IS_BROADWELL(i915))
-			LPSP_STATUS(!intel_lpsp_power_well_enabled(i915, HSW_DISP_PW_GLOBAL));
-		else
-			seq_puts(m, "LPSP: not supported\n");
-	}
+	seq_printf(m, "LPSP: %s\n", enableddisabled(lpsp_enabled));
 
 	return 0;
 }
-- 
2.20.1

