Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F287BAE82E3
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 14:40:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4631210E707;
	Wed, 25 Jun 2025 12:40:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cp7zvVOc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06EAA10E705;
 Wed, 25 Jun 2025 12:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750855200; x=1782391200;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fCgQdez79AWHBxK5IU46UFieu+hhyoeDa619vJHakkM=;
 b=cp7zvVOcdl4oJa3lMI8sPnQ4Xqu/xFdgg0sJce0XMQ/pQWYK/+Z2y525
 rV0BlqhXvQb+VBAPfPiy9ttbWYnP6u7QuMe9oO0J2H0MUoawmYAY8IBhv
 kfqFq6WETTZl15Qfp8+H4Z0sEyQw+kiv28f46hAUTBgCywyU4fxDoVzrr
 sEk6jby+fEZSiKpOVR/eUhjsHFcrwMO71FO0LnSJsETYkLPu8wcpuK+Ik
 DAOJbU7bsOVOrUHysc4aTF+ZjdSyyeLeM87PgJDxJogIq1peOerl45zCy
 hzm1+CcKisslwwoKQTK7ViZBMvLK5MRvg/o/1bGl4pJB4xo5hCyKBduH+ w==;
X-CSE-ConnectionGUID: DPNfEjJ7QfSYoLNKBe6fHw==
X-CSE-MsgGUID: FYBMuKDsRdGYf+Lcbxng7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="53259046"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="53259046"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 05:39:59 -0700
X-CSE-ConnectionGUID: l/iBQ3vURo6zrqjvK17lVQ==
X-CSE-MsgGUID: hNeeB+oSS9C8etA4aWwwzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="151969488"
Received: from monicael-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.78])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 05:39:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 3/3] drm/i915/power: convert {SKL,
 ICL}_PW_CTL_IDX_TO_PG() macros to a function
Date: Wed, 25 Jun 2025 15:39:38 +0300
Message-Id: <3aa74825db0b900f93b94aa89d0242a354929b85.1750855148.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750855147.git.jani.nikula@intel.com>
References: <cover.1750855147.git.jani.nikula@intel.com>
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

Add pw_ctl_idx_to_pg() helper function to deduplicate the open-coded
usage of the {SKL,ICL}_PW_CTL_IDX_TO_PG() macros.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../i915/display/intel_display_power_well.c   | 24 +++++++++----------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 9d60dfc4939d..4a876fa815bd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -36,16 +36,15 @@
 
 /*
  * PG0 is HW controlled, so doesn't have a corresponding power well control knob
- * SKL_DISP_PW1_IDX..SKL_DISP_PW2_IDX -> PG1..PG2
- */
-#define  SKL_PW_CTL_IDX_TO_PG(pw_idx)		\
-	((pw_idx) - SKL_PW_CTL_IDX_PW_1 + SKL_PG1)
-/*
- * PG0 is HW controlled, so doesn't have a corresponding power well control knob
- * ICL_DISP_PW1_IDX..ICL_DISP_PW4_IDX -> PG1..PG4
+ *
+ * {ICL,SKL}_DISP_PW1_IDX..{ICL,SKL}_DISP_PW4_IDX -> PG1..PG4
  */
-#define  ICL_PW_CTL_IDX_TO_PG(pw_idx)		\
-	((pw_idx) - ICL_PW_CTL_IDX_PW_1 + SKL_PG1)
+static enum skl_power_gate pw_idx_to_pg(struct intel_display *display, int pw_idx)
+{
+	int pw1_idx = DISPLAY_VER(display) >= 11 ? ICL_PW_CTL_IDX_PW_1 : SKL_PW_CTL_IDX_PW_1;
+
+	return pw_idx - pw1_idx + SKL_PG1;
+}
 
 struct i915_power_well_regs {
 	i915_reg_t bios;
@@ -363,8 +362,7 @@ static void hsw_power_well_enable(struct intel_display *display,
 	if (power_well->desc->has_fuses) {
 		enum skl_power_gate pg;
 
-		pg = DISPLAY_VER(display) >= 11 ? ICL_PW_CTL_IDX_TO_PG(pw_idx) :
-						 SKL_PW_CTL_IDX_TO_PG(pw_idx);
+		pg = pw_idx_to_pg(display, pw_idx);
 
 		/* Wa_16013190616:adlp */
 		if (display->platform.alderlake_p && pg == SKL_PG1)
@@ -388,8 +386,8 @@ static void hsw_power_well_enable(struct intel_display *display,
 	if (power_well->desc->has_fuses) {
 		enum skl_power_gate pg;
 
-		pg = DISPLAY_VER(display) >= 11 ? ICL_PW_CTL_IDX_TO_PG(pw_idx) :
-						 SKL_PW_CTL_IDX_TO_PG(pw_idx);
+		pg = pw_idx_to_pg(display, pw_idx);
+
 		gen9_wait_for_power_well_fuses(display, pg);
 	}
 
-- 
2.39.5

