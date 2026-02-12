Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QOLiCZsgjmk+/wAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 19:48:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F681306B7
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 19:48:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE0EF10E779;
	Thu, 12 Feb 2026 18:48:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y2ynDwSV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 962E410E297;
 Thu, 12 Feb 2026 18:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770922136; x=1802458136;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tX463kLIKnr53/Qu95N1uj9800jgx9/lTCLHdttTw+M=;
 b=Y2ynDwSVOZwydWsNJDzAtvMrvSJbmmdwKjfdUarRetDhLNI14/jz70tq
 FpmNJIc37jcb9uMz7KfL4MTO7RTwgG+M76cTN6qAcXmXBV7VcTfWsFmml
 j75cgW1LtUD7qnffKB3GCfLQkcm4K1bw0F2RsqdvXTODax4eracyaQM4Q
 e9S9DnyYluK3sNHroY1cw3idVItFa2CrOFAIGwkLrV7dT5J7LaZN6sNxD
 92j+rREeopYVPN4NX4Sm+HIfmfmuPpH8Aoj1VhApAFHexkQVTs3dAs8Fi
 nfU83d/cedeVHCWHZe8Ok9s2fEjAe5P3ptTZb4LPLQD0TTwRdcI+5csF+ w==;
X-CSE-ConnectionGUID: TJAHnuZUS5CreLBHBxMUVg==
X-CSE-MsgGUID: XjZXFxPJStm/dycaSaPUWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72204164"
X-IronPort-AV: E=Sophos;i="6.21,287,1763452800"; d="scan'208";a="72204164"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 10:48:42 -0800
X-CSE-ConnectionGUID: 8AoMNw5HSLW81CNZrJKQow==
X-CSE-MsgGUID: rzxzUyaBTyeyGelDoUw7Tw==
X-ExtLoop1: 1
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.217])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 10:48:40 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 12/15] drm/i915/display: convert W/As in intel_pmdemand.c
 to new framework
Date: Thu, 12 Feb 2026 20:46:10 +0200
Message-ID: <20260212184737.352515-13-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260212184737.352515-1-luciano.coelho@intel.com>
References: <20260212184737.352515-1-luciano.coelho@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: C5F681306B7
X-Rspamd-Action: no action

Convert the low-hanging fruits of workaround checks to the workaround
framework.  Instead of having display structure checks for the
workarounds all over, concentrate the checks in intel_wa.c.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_wa.c | 2 ++
 drivers/gpu/drm/i915/display/intel_display_wa.h | 1 +
 drivers/gpu/drm/i915/display/intel_pmdemand.c   | 8 +++++---
 3 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index 72f645686efd..77ea2e5b8144 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -100,6 +100,8 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 			IS_DISPLAY_STEP(display, STEP_A0, STEP_A2);
 	case INTEL_DISPLAY_WA_14014143976:
 		return IS_DISPLAY_STEP(display, STEP_E0, STEP_FOREVER);
+	case INTEL_DISPLAY_WA_14016740474:
+		return IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_C0);
 	case INTEL_DISPLAY_WA_14020863754:
 		return DISPLAY_VERx100(display) == 3000 ||
 			DISPLAY_VERx100(display) == 2000 ||
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index d8359f88de29..3d2cf05ffacc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -39,6 +39,7 @@ enum intel_display_wa {
 	INTEL_DISPLAY_WA_14011508470,
 	INTEL_DISPLAY_WA_14011765242,
 	INTEL_DISPLAY_WA_14014143976,
+	INTEL_DISPLAY_WA_14016740474,
 	INTEL_DISPLAY_WA_14020863754,
 	INTEL_DISPLAY_WA_14025769978,
 	INTEL_DISPLAY_WA_15013987218,
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index dc44a7a169c1..3b7471df6287 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -15,6 +15,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_trace.h"
 #include "intel_display_utils.h"
+#include "intel_display_wa.h"
 #include "intel_pmdemand.h"
 #include "intel_step.h"
 #include "skl_watermark.h"
@@ -129,9 +130,10 @@ int intel_pmdemand_init(struct intel_display *display)
 				     &pmdemand_state->base,
 				     &intel_pmdemand_funcs);
 
-	if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_C0))
-		/* Wa_14016740474 */
-		intel_de_rmw(display, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEOUT_DISABLE);
+	/* Wa_14016740474 */
+	if (intel_display_wa(display, 14016740474))
+		intel_de_rmw(display, XELPD_CHICKEN_DCPR_3, 0,
+			     DMD_RSP_TIMEOUT_DISABLE);
 
 	return 0;
 }
-- 
2.51.0

