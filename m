Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMXQKiP8jmmOGwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 11:25:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC3E1350CB
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 11:25:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B69C010E7EE;
	Fri, 13 Feb 2026 10:25:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LpRcpKw9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0313210E7ED;
 Fri, 13 Feb 2026 10:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770978337; x=1802514337;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ktlxcAJYSD3/9V7+j5T37fgyzj/UuEBCoiFj0ZZ/6SU=;
 b=LpRcpKw92MM6TYXDDLZbXv9XB3fYIE0UPmtTz+HgrH0F+UQ5PRE7luHq
 mq9cePKoXRIrc43AOAVSfpOn+QUXC8ZkomzsTAamxxcNSc9dE8YIeiplv
 dFZ20Ffe9Es9ZJuWNbqRT6IuPkygsvPtbgz7BifFPbjq1TAaY1loRYXj+
 dN58rx7MNhfiMTo2sa2VCQOioIB698+XADqjSJ9/eYjVWu+tGJOopDFT+
 zqXHJEIpUG9MnCqrXl0ugIm3dAgwTuA1QKXg/lz6WOgWshzbZCwuko/xm
 SvtyYY/mGdBSFPAvXfOX4T0HyxspjbxjtvKvY81Zsuss0aj0IAA7+yAyb A==;
X-CSE-ConnectionGUID: WO2YPZ21QUuGWyt3q5GXeg==
X-CSE-MsgGUID: EdFw4Sh/RouwDTc9vOhwDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72150725"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="72150725"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 02:25:37 -0800
X-CSE-ConnectionGUID: zO6lHsOwRji4Ps2kwxy/Bw==
X-CSE-MsgGUID: Lmk0NJPNTiSJmpONpIsUXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="212919780"
Received: from abityuts-desk.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.16])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 02:25:36 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v3 14/16] drm/i915/display: convert W/As in intel_psr.c to new
 framework
Date: Fri, 13 Feb 2026 12:23:42 +0200
Message-ID: <20260213102500.406925-15-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260213102500.406925-1-luciano.coelho@intel.com>
References: <20260213102500.406925-1-luciano.coelho@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 5EC3E1350CB
X-Rspamd-Action: no action

Convert the low-hanging fruits of workaround checks to the workaround
framework.  Instead of having display structure checks for the
workarounds all over, concentrate the checks in intel_display_wa.c.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 .../gpu/drm/i915/display/intel_display_wa.c   | 15 ++++++++++++--
 .../gpu/drm/i915/display/intel_display_wa.h   |  4 ++++
 drivers/gpu/drm/i915/display/intel_psr.c      | 20 ++++++++-----------
 3 files changed, 25 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index da09873dc1cb..73c7b87d5ecd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -112,6 +112,13 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 		return DISPLAY_VER(display) == 20;
 	case INTEL_DISPLAY_WA_15018326506:
 		return display->platform.battlemage;
+	case INTEL_DISPLAY_WA_16011303918:
+	case INTEL_DISPLAY_WA_22011320316:
+		return display->platform.alderlake_p &&
+			IS_DISPLAY_STEP(display, STEP_A0, STEP_B0);
+	case INTEL_DISPLAY_WA_16011181250:
+		return display->platform.rocketlake || display->platform.alderlake_s ||
+			display->platform.dg2;
 	case INTEL_DISPLAY_WA_16011342517:
 		return display->platform.alderlake_p &&
 			IS_DISPLAY_STEP(display, STEP_A0, STEP_D0);
@@ -121,15 +128,19 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 		return intel_display_needs_wa_16023588340(display);
 	case INTEL_DISPLAY_WA_16025573575:
 		return intel_display_needs_wa_16025573575(display);
+	case INTEL_DISPLAY_WA_16025596647:
+		return DISPLAY_VER(display) == 20 &&
+			IS_DISPLAY_VERx100_STEP(display, 3000,
+						STEP_A0, STEP_B0);
 	case INTEL_DISPLAY_WA_18034343758:
 		return DISPLAY_VER(display) == 20 ||
 			(display->platform.pantherlake &&
 			 IS_DISPLAY_STEP(display, STEP_A0, STEP_B0));
 	case INTEL_DISPLAY_WA_22010178259:
 		return DISPLAY_VER(display) == 12;
-	case INTEL_DISPLAY_WA_22011320316:
+	case INTEL_DISPLAY_WA_22012278275:
 		return display->platform.alderlake_p &&
-			IS_DISPLAY_STEP(display, STEP_A0, STEP_B0);
+			IS_DISPLAY_STEP(display, STEP_A0, STEP_E0);
 	case INTEL_DISPLAY_WA_22014263786:
 		return IS_DISPLAY_VERx100(display, 1100, 1400);
 	case INTEL_DISPLAY_WA_22021048059:
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index 4471d6511152..0e9959760b9f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -44,13 +44,17 @@ enum intel_display_wa {
 	INTEL_DISPLAY_WA_14025769978,
 	INTEL_DISPLAY_WA_15013987218,
 	INTEL_DISPLAY_WA_15018326506,
+	INTEL_DISPLAY_WA_16011181250,
+	INTEL_DISPLAY_WA_16011303918,
 	INTEL_DISPLAY_WA_16011342517,
 	INTEL_DISPLAY_WA_16011863758,
 	INTEL_DISPLAY_WA_16023588340,
 	INTEL_DISPLAY_WA_16025573575,
+	INTEL_DISPLAY_WA_16025596647,
 	INTEL_DISPLAY_WA_18034343758,
 	INTEL_DISPLAY_WA_22010178259,
 	INTEL_DISPLAY_WA_22011320316,
+	INTEL_DISPLAY_WA_22012278275,
 	INTEL_DISPLAY_WA_22012358565,
 	INTEL_DISPLAY_WA_22014263786,
 	INTEL_DISPLAY_WA_22021048059,
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5bea2eda744b..95c66ce46513 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -40,6 +40,7 @@
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
+#include "intel_display_wa.h"
 #include "intel_dmc.h"
 #include "intel_dp.h"
 #include "intel_dp_aux.h"
@@ -1082,7 +1083,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	}
 
 	/* Wa_22012278275:adl-p */
-	if (display->platform.alderlake_p && IS_DISPLAY_STEP(display, STEP_A0, STEP_E0)) {
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_22012278275)) {
 		static const u8 map[] = {
 			2, /* 5 lines */
 			1, /* 6 lines */
@@ -1263,7 +1264,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
 		return;
 
 	/* Wa_16011303918:adl-p */
-	if (display->platform.alderlake_p && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0))
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_16011303918))
 		return;
 
 	/*
@@ -1540,8 +1541,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 	}
 
 	/* Wa_16011181250 */
-	if (display->platform.rocketlake || display->platform.alderlake_s ||
-	    display->platform.dg2) {
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_16011181250)) {
 		drm_dbg_kms(display->drm,
 			    "PSR2 is defeatured for this platform\n");
 		return false;
@@ -1823,8 +1823,7 @@ void intel_psr_set_non_psr_pipes(struct intel_dp *intel_dp,
 	u8 active_pipes = 0;
 
 	/* Wa_16025596647 */
-	if (DISPLAY_VER(display) != 20 &&
-	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
+	if (!intel_display_wa(display, INTEL_DISPLAY_WA_16025596647))
 		return;
 
 	/* Not needed by Panel Replay  */
@@ -3973,8 +3972,7 @@ static void psr_dc5_dc6_wa_work(struct work_struct *work)
  */
 void intel_psr_notify_dc5_dc6(struct intel_display *display)
 {
-	if (DISPLAY_VER(display) != 20 &&
-	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
+	if (!intel_display_wa(display, INTEL_DISPLAY_WA_16025596647))
 		return;
 
 	schedule_work(&display->psr_dc5_dc6_wa_work);
@@ -3989,8 +3987,7 @@ void intel_psr_notify_dc5_dc6(struct intel_display *display)
  */
 void intel_psr_dc5_dc6_wa_init(struct intel_display *display)
 {
-	if (DISPLAY_VER(display) != 20 &&
-	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
+	if (!intel_display_wa(display, INTEL_DISPLAY_WA_16025596647))
 		return;
 
 	INIT_WORK(&display->psr_dc5_dc6_wa_work, psr_dc5_dc6_wa_work);
@@ -4011,8 +4008,7 @@ void intel_psr_notify_pipe_change(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	struct intel_encoder *encoder;
 
-	if (DISPLAY_VER(display) != 20 &&
-	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
+	if (!intel_display_wa(display, INTEL_DISPLAY_WA_16025596647))
 		return;
 
 	for_each_intel_encoder_with_psr(display->drm, encoder) {
-- 
2.51.0

