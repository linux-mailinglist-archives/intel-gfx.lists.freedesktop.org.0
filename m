Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3328BC2C8B
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 23:43:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62A1110E0D9;
	Tue,  7 Oct 2025 21:43:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CQ64gv9v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42F3710E0D9;
 Tue,  7 Oct 2025 21:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759873436; x=1791409436;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/hA9jRKroVvNTtEWrGGZJy9T+3IZCMTHk9r1tFl8/7k=;
 b=CQ64gv9vUxMSpb1ihBWPQ2gNzRfGjvQmttDciVFxY6OUpnBzRLaKXZv2
 n7uc0rO8X7Q7pasFggh3GdkSO1LuK0Od3cL6ufn9CHZE3GijC9U+BiK9D
 yNgVn+5Hg5/yWXPAwx4ioGpJj2fp0wI4DNn7BVo00LBjX1U2f00OBpjAy
 KuVNVm4bATRgV6n5UJvIC7Dcfv3055HPXBwfKoPYJ2JnKdfQCmhPNWABc
 FNZEi4HvZp0fgUAIOnAbHIeX7wMhAT65QW/LUiLfoT9qsWnZqSdwnfcX1
 57Tu4mr5XSftuliASdMqZQRg0Wu8YOtOHZoCyGssLCCiWVnUGsZYhqsm6 Q==;
X-CSE-ConnectionGUID: x2r9VRJ7RpyHAOo2ZzDPrA==
X-CSE-MsgGUID: 3mS1HD75Qqe8UqP05M3jpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="72325792"
X-IronPort-AV: E=Sophos;i="6.18,322,1751266800"; d="scan'208";a="72325792"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 14:43:55 -0700
X-CSE-ConnectionGUID: nM5xL7tWSJSEm7Zhkwd+yg==
X-CSE-MsgGUID: VyLQLN8EShGRCxqhY3PApA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,322,1751266800"; d="scan'208";a="184312506"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.13])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 14:43:53 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, lucas.demarchi@intel.com,
 kunal1.joshi@intel.com, jani.saarinen@intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v3] drm/i915/fbc: update the impacted platforms in
 wa_22014263786
Date: Wed,  8 Oct 2025 00:43:17 +0300
Message-ID: <20251007214317.875781-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
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

wa_22014263786 is not applicable to the BMG and hence exclude it
from the wa.

v2: Limit this wa to display verion 11 to 14, drop DG2 from the
    exclusion list, use intel_display_wa (Lucas)

v3: simplify the wa handling loop (Jani)
    Description of wa moved to place where wa is applied (Ville)

Bspec: 74212, 66624
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_wa.c | 2 ++
 drivers/gpu/drm/i915/display/intel_display_wa.h | 1 +
 drivers/gpu/drm/i915/display/intel_fbc.c        | 9 ++++++---
 3 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index 31cd2c9cd488..c528aaa679ca 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -67,6 +67,8 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 		return intel_display_needs_wa_16025573575(display);
 	case INTEL_DISPLAY_WA_14011503117:
 		return DISPLAY_VER(display) == 13;
+	case INTEL_DISPLAY_WA_22014263786:
+		return IS_DISPLAY_VERx100(display, 1100, 1400);
 	default:
 		drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name);
 		break;
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index abc1df83f066..3644e8e2b724 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -25,6 +25,7 @@ enum intel_display_wa {
 	INTEL_DISPLAY_WA_16023588340,
 	INTEL_DISPLAY_WA_16025573575,
 	INTEL_DISPLAY_WA_14011503117,
+	INTEL_DISPLAY_WA_22014263786,
 };
 
 bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name);
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 4edb4342833e..24473e6b10de 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -928,9 +928,12 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
 	if (IS_DISPLAY_VER(display, 11, 12))
 		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
 			     0, DPFC_CHICKEN_COMP_DUMMY_PIXEL);
-
-	/* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,adlp,mtl */
-	if (DISPLAY_VER(display) >= 11 && !display->platform.dg2)
+	/*
+	 * Wa_22014263786: icl,jsl,tgl,dg1,rkl,adls,adlp,mtl
+	 * Fixes: Screen flicker with FBC and Package C state enabled
+	 * Workaround: Forced SLB invalidation before start of new frame.
+	 */
+	if (intel_display_wa(display, 22014263786))
 		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
 			     0, DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
 
-- 
2.43.0

