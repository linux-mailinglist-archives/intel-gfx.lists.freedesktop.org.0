Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MGVsJotUqWkj4wAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 11:01:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 507A320F39D
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 11:01:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B93EC10EC09;
	Thu,  5 Mar 2026 10:01:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hTNtj/wd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC6ED10EC01;
 Thu,  5 Mar 2026 10:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772704899; x=1804240899;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AY6ySmY7PqTPPeDDURUtcceHAmsvy9Bwtsg+1BxHHJw=;
 b=hTNtj/wdeI2vr0IRkxllw2UxGJB02vZXNXkwPjvuVQScCPgY9ylatAcJ
 Gv++Mtobv6fPUJxeQfPsoCxk2JRGInVdl9LNrT0Y2+KWliR/Y2K5aj4yA
 oEjKEqClIpGZC3780gLpvq3OvGzt4Uh/p7MK8LqAobDpC4R+1q6nWTbCQ
 O/dYvInzsihaED7K3ZOe0V+RVznm4jdj9q2zXQTbkFdT55vyW3tu5m3IK
 D5F+hykKMgjAhoPrXN2bId+rPqSEEipPBvWb3yvFRPqROz8f0rKP55kRa
 ZzKupCasKAw0pQpcLJqKPv7Mgcfa7lWeo3krNma5oqQzaIDfhaRbf8ZFE A==;
X-CSE-ConnectionGUID: /5o4EVN0Tdm2S/ANpV+ljA==
X-CSE-MsgGUID: SH6oa/n3Qku9/SL9RVuAow==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="73758120"
X-IronPort-AV: E=Sophos;i="6.23,102,1770624000"; d="scan'208";a="73758120"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 02:01:39 -0800
X-CSE-ConnectionGUID: sr988YkGRau/wt36oR3/6A==
X-CSE-MsgGUID: 2VVfsckIR72PrrPFhpFalA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,102,1770624000"; d="scan'208";a="215460312"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.57])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 02:01:36 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH v5 14/16] drm/i915/display: convert W/As in intel_psr.c to new
 framework
Date: Thu,  5 Mar 2026 11:59:17 +0200
Message-ID: <20260305100100.332956-15-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260305100100.332956-1-luciano.coelho@intel.com>
References: <20260305100100.332956-1-luciano.coelho@intel.com>
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
X-Rspamd-Queue-Id: 507A320F39D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RSPAMD_EMAILBL_FAIL(0.00)[luciano.coelho.intel.com:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

Convert the low-hanging fruits of workaround checks to the workaround
framework.  Instead of having display structure checks for the
workarounds all over, concentrate the checks in intel_display_wa.c.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
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
index 9296ca3a4ff4..17cfb585f74a 100644
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
@@ -1545,8 +1546,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 	}
 
 	/* Wa_16011181250 */
-	if (display->platform.rocketlake || display->platform.alderlake_s ||
-	    display->platform.dg2) {
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_16011181250)) {
 		drm_dbg_kms(display->drm,
 			    "PSR2 is defeatured for this platform\n");
 		return false;
@@ -1828,8 +1828,7 @@ void intel_psr_set_non_psr_pipes(struct intel_dp *intel_dp,
 	u8 active_pipes = 0;
 
 	/* Wa_16025596647 */
-	if (DISPLAY_VER(display) != 20 &&
-	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
+	if (!intel_display_wa(display, INTEL_DISPLAY_WA_16025596647))
 		return;
 
 	/* Not needed by Panel Replay  */
@@ -3978,8 +3977,7 @@ static void psr_dc5_dc6_wa_work(struct work_struct *work)
  */
 void intel_psr_notify_dc5_dc6(struct intel_display *display)
 {
-	if (DISPLAY_VER(display) != 20 &&
-	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
+	if (!intel_display_wa(display, INTEL_DISPLAY_WA_16025596647))
 		return;
 
 	schedule_work(&display->psr_dc5_dc6_wa_work);
@@ -3994,8 +3992,7 @@ void intel_psr_notify_dc5_dc6(struct intel_display *display)
  */
 void intel_psr_dc5_dc6_wa_init(struct intel_display *display)
 {
-	if (DISPLAY_VER(display) != 20 &&
-	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
+	if (!intel_display_wa(display, INTEL_DISPLAY_WA_16025596647))
 		return;
 
 	INIT_WORK(&display->psr_dc5_dc6_wa_work, psr_dc5_dc6_wa_work);
@@ -4016,8 +4013,7 @@ void intel_psr_notify_pipe_change(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	struct intel_encoder *encoder;
 
-	if (DISPLAY_VER(display) != 20 &&
-	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
+	if (!intel_display_wa(display, INTEL_DISPLAY_WA_16025596647))
 		return;
 
 	for_each_intel_encoder_with_psr(display->drm, encoder) {
-- 
2.51.0

