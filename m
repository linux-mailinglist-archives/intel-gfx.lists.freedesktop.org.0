Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aE/PLRnOjWn87AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 13:56:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB7912DA4D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 13:56:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE1A010E733;
	Thu, 12 Feb 2026 12:56:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i0NL2geo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A803110E26F
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Feb 2026 12:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770901014; x=1802437014;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=t/HAXUm30tLFIIrtnNmQMb4lJ+buyf5mcfBpPBUY2BI=;
 b=i0NL2geoQGvxqkgGkXTDifQZI/N0b9sJuuEwvnmByglEo4o4mZZeA54A
 IyOxa0+27BRBJrasESulG+Lz6FM77N0N8cTwC7syBJ6vQ5vVpN7y6nUFp
 PxHWO0DLeEgXcQeD+h8BwlSGbJWt+k7XK5EKdN/OKsVZAuZ6tGcnzzVqS
 IYRyhy/HX1h9q8bCn5aX8HvsiFJIT9NjSo7Y+nTmqTwl1syXZDE2UWnyj
 Exxzu2WtlWavV7aWOnQ5nqFtYKRPUtmaI5AqXHy8l/mTP9R5kjOqocEhy
 CmMQUhIf0uTQmf9Xqhlwy+StugiUiQKkxUV0soT0swj6KMp9S0TieRMNb w==;
X-CSE-ConnectionGUID: n8vDWIh9RmOfsefx5QwzqQ==
X-CSE-MsgGUID: jKjZVkFFT0+moAFeqIa0jg==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72116751"
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="72116751"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 04:56:54 -0800
X-CSE-ConnectionGUID: FVAhPErMQ363vSPfuVDMSQ==
X-CSE-MsgGUID: Dikyl/nLTSSqzkMfhAVPtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="212698622"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.167])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 04:56:52 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/16] drm/i915/display: convert W/As in intel_display_power.c
 to new framework
Date: Thu, 12 Feb 2026 14:51:51 +0200
Message-ID: <20260212125526.344401-3-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260212125526.344401-1-luciano.coelho@intel.com>
References: <20260212125526.344401-1-luciano.coelho@intel.com>
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 5BB7912DA4D
X-Rspamd-Action: no action

Convert the low-hanging fruits of workaround checks to the workaround
framework.  Instead of having display structure checks for the
workarounds all over, concentrate the checks in intel_wa.c.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 22 +++++++++----------
 .../gpu/drm/i915/display/intel_display_wa.c   | 18 +++++++++++++++
 .../gpu/drm/i915/display/intel_display_wa.h   |  7 ++++++
 3 files changed, 36 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 755935dcfe23..e17692f32d90 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -21,6 +21,7 @@
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
+#include "intel_display_wa.h"
 #include "intel_dmc.h"
 #include "intel_dram.h"
 #include "intel_mchbar_regs.h"
@@ -1621,8 +1622,7 @@ static void tgl_bw_buddy_init(struct intel_display *display)
 	if (display->platform.dgfx && !display->platform.dg1)
 		return;
 
-	if (display->platform.alderlake_s ||
-	    (display->platform.rocketlake && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0)))
+	if (intel_display_wa(display, 1409767108))
 		/* Wa_1409767108 */
 		table = wa_1409767108_buddy_page_masks;
 	else
@@ -1645,7 +1645,7 @@ static void tgl_bw_buddy_init(struct intel_display *display)
 				       table[config].page_mask);
 
 			/* Wa_22010178259:tgl,dg1,rkl,adl-s */
-			if (DISPLAY_VER(display) == 12)
+			if (intel_display_wa(display, 22010178259))
 				intel_de_rmw(display, BW_BUDDY_CTL(i),
 					     BW_BUDDY_TLB_REQ_TIMER_MASK,
 					     BW_BUDDY_TLB_REQ_TIMER(0x8));
@@ -1662,8 +1662,7 @@ static void icl_display_core_init(struct intel_display *display,
 	gen9_set_dc_state(display, DC_STATE_DISABLE);
 
 	/* Wa_14011294188:ehl,jsl,tgl,rkl,adl-s */
-	if (INTEL_PCH_TYPE(display) >= PCH_TGP &&
-	    INTEL_PCH_TYPE(display) < PCH_DG1)
+	if (intel_display_wa(display, 14011294188))
 		intel_de_rmw(display, SOUTH_DSPCLK_GATE_D, 0,
 			     PCH_DPMGUNIT_CLOCK_GATE_DISABLE);
 
@@ -1717,17 +1716,17 @@ static void icl_display_core_init(struct intel_display *display,
 		intel_dmc_load_program(display);
 
 	/* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p,dg2 */
-	if (IS_DISPLAY_VERx100(display, 1200, 1300))
+	if (intel_display_wa(display, 14011508470))
 		intel_de_rmw(display, GEN11_CHICKEN_DCPR_2, 0,
 			     DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
 			     DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR);
 
 	/* Wa_14011503030:xelpd */
-	if (DISPLAY_VER(display) == 13)
+	if (intel_display_wa(display, 14011503030))
 		intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, ~0);
 
 	/* Wa_15013987218 */
-	if (DISPLAY_VER(display) == 20) {
+	if (intel_display_wa(display, 15013987218)) {
 		intel_de_rmw(display, SOUTH_DSPCLK_GATE_D,
 			     0, PCH_GMBUSUNIT_CLOCK_GATE_DISABLE);
 		intel_de_rmw(display, SOUTH_DSPCLK_GATE_D,
@@ -2266,8 +2265,9 @@ void intel_display_power_suspend_late(struct intel_display *display, bool s2idle
 	}
 
 	/* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp,adp */
-	if (INTEL_PCH_TYPE(display) >= PCH_CNP && INTEL_PCH_TYPE(display) < PCH_DG1)
-		intel_de_rmw(display, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
+	if (intel_display_wa(display, 14010685332))
+		intel_de_rmw(display, SOUTH_CHICKEN1,
+			     SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
 }
 
 void intel_display_power_resume_early(struct intel_display *display)
@@ -2281,7 +2281,7 @@ void intel_display_power_resume_early(struct intel_display *display)
 	}
 
 	/* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp,adp */
-	if (INTEL_PCH_TYPE(display) >= PCH_CNP && INTEL_PCH_TYPE(display) < PCH_DG1)
+	if (intel_display_wa(display, 14010685332))
 		intel_de_rmw(display, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0);
 
 	intel_power_domains_resume(display);
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index 99ccc383ee70..80eecfd33a28 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -9,6 +9,7 @@
 #include "intel_display_core.h"
 #include "intel_display_regs.h"
 #include "intel_display_wa.h"
+#include "intel_step.h"
 
 static void gen11_display_wa_apply(struct intel_display *display)
 {
@@ -69,23 +70,40 @@ static bool intel_display_needs_wa_16025573575(struct intel_display *display)
 bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name)
 {
 	switch (wa) {
+	case INTEL_DISPLAY_WA_1409767108:
+		return (display->platform.alderlake_s ||
+			(display->platform.rocketlake &&
+			 IS_DISPLAY_STEP(display, STEP_A0, STEP_B0)));
 	case INTEL_DISPLAY_WA_13012396614:
 		return DISPLAY_VERx100(display) == 3000 ||
 			DISPLAY_VERx100(display) == 3500;
+	case INTEL_DISPLAY_WA_14010685332:
+		return INTEL_PCH_TYPE(display) >= PCH_CNP &&
+			INTEL_PCH_TYPE(display) < PCH_DG1;
+	case INTEL_DISPLAY_WA_14011294188:
+		return INTEL_PCH_TYPE(display) >= PCH_TGP &&
+			INTEL_PCH_TYPE(display) < PCH_DG1;
+	case INTEL_DISPLAY_WA_14011503030:
 	case INTEL_DISPLAY_WA_14011503117:
 		return DISPLAY_VER(display) == 13;
+	case INTEL_DISPLAY_WA_14011508470:
+		return (IS_DISPLAY_VERx100(display, 1200, 1300));
 	case INTEL_DISPLAY_WA_14020863754:
 		return DISPLAY_VERx100(display) == 3000 ||
 			DISPLAY_VERx100(display) == 2000 ||
 			DISPLAY_VERx100(display) == 1401;
 	case INTEL_DISPLAY_WA_14025769978:
 		return DISPLAY_VER(display) == 35;
+	case INTEL_DISPLAY_WA_15013987218:
+		return DISPLAY_VER(display) == 20;
 	case INTEL_DISPLAY_WA_15018326506:
 		return display->platform.battlemage;
 	case INTEL_DISPLAY_WA_16023588340:
 		return intel_display_needs_wa_16023588340(display);
 	case INTEL_DISPLAY_WA_16025573575:
 		return intel_display_needs_wa_16025573575(display);
+	case INTEL_DISPLAY_WA_22010178259:
+		return DISPLAY_VER(display) == 12;
 	case INTEL_DISPLAY_WA_22014263786:
 		return IS_DISPLAY_VERx100(display, 1100, 1400);
 	case INTEL_DISPLAY_WA_22021048059:
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index bb1382148b6e..54f5ea05b293 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -27,13 +27,20 @@ bool intel_display_needs_wa_16023588340(struct intel_display *display);
  * number.
  */
 enum intel_display_wa {
+	INTEL_DISPLAY_WA_1409767108,
 	INTEL_DISPLAY_WA_13012396614,
+	INTEL_DISPLAY_WA_14010685332,
+	INTEL_DISPLAY_WA_14011294188,
+	INTEL_DISPLAY_WA_14011503030,
 	INTEL_DISPLAY_WA_14011503117,
+	INTEL_DISPLAY_WA_14011508470,
 	INTEL_DISPLAY_WA_14020863754,
 	INTEL_DISPLAY_WA_14025769978,
+	INTEL_DISPLAY_WA_15013987218,
 	INTEL_DISPLAY_WA_15018326506,
 	INTEL_DISPLAY_WA_16023588340,
 	INTEL_DISPLAY_WA_16025573575,
+	INTEL_DISPLAY_WA_22010178259,
 	INTEL_DISPLAY_WA_22014263786,
 	INTEL_DISPLAY_WA_22021048059,
 };
-- 
2.51.0

