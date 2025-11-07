Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A666C3F53F
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 11:08:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 958EF10EA62;
	Fri,  7 Nov 2025 10:08:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nTpOspxq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA74D10EA62;
 Fri,  7 Nov 2025 10:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762510093; x=1794046093;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jGuSemxFTfWjNxAO5eZ2SiiEOBQbqenoxroufj1pUxI=;
 b=nTpOspxqKk6H4bF9vQquqXLwJ7JNMRhRlcLV17PBO4oCvRFS3GQlMG7v
 lCjCG5hZKd+xVmOXxeWFKhqn104F5prjBy7XYn5UaAE1sd85UOkWyK1vr
 YPrVDr3jbKE/yrTdsvKOtZoGqnPMGK5FXQYkYG1D+HKh9v3FliM+UpE1a
 GwUpiAdbjzU8Sbqwdbk/acAV1ljY22tSAwwl3OaAdfkueQxEiYTtREVmS
 zIgy0yxG4NmF3vLhCMj/a4SB3FqUEZTTo7/pg/epXS9SmIzJ4hfDYowat
 gxuakQvAL5NGd9aHFiRYbVaoNcqqOBmia5jwGhpkj7HR1YsfwgiLTH8uc Q==;
X-CSE-ConnectionGUID: k6fATGWYS1WLD7PbpguuPA==
X-CSE-MsgGUID: Pi7cN1WuRgWSCXVwupH5Bg==
X-IronPort-AV: E=McAfee;i="6800,10657,11605"; a="75268600"
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="75268600"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 02:08:13 -0800
X-CSE-ConnectionGUID: OzuyaZZGQ5y0vr1t+KF0Pg==
X-CSE-MsgGUID: fMPeJJmxRVugqciwK034kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="225262945"
Received: from aotchere-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.246.114])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 02:08:10 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, uma.shankar@intel.com,
 kunal1.joshi@intel.com
Subject: [PATCH] drm/i915/fbc: Apply wa_15018326506
Date: Fri,  7 Nov 2025 12:07:34 +0200
Message-ID: <20251107100734.67236-1-vinod.govindapillai@intel.com>
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

Disable FBC as part for the wa for the bmg variant

Bspec: 74212
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_wa.c |  4 ++++
 drivers/gpu/drm/i915/display/intel_display_wa.h |  1 +
 drivers/gpu/drm/i915/display/intel_fbc.c        | 10 ++++++++++
 3 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index c528aaa679ca..ba2272d85a04 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -10,6 +10,7 @@
 #include "intel_display_core.h"
 #include "intel_display_regs.h"
 #include "intel_display_wa.h"
+#include "intel_step.h"
 
 static void gen11_display_wa_apply(struct intel_display *display)
 {
@@ -69,6 +70,9 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 		return DISPLAY_VER(display) == 13;
 	case INTEL_DISPLAY_WA_22014263786:
 		return IS_DISPLAY_VERx100(display, 1100, 1400);
+	case INTEL_DISPLAY_WA_15018326506:
+		return DISPLAY_VERx100(display) == 1401 &&
+		       INTEL_DISPLAY_STEP(display) == STEP_C0;
 	default:
 		drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name);
 		break;
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index 3644e8e2b724..f648b00cb97d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -26,6 +26,7 @@ enum intel_display_wa {
 	INTEL_DISPLAY_WA_16025573575,
 	INTEL_DISPLAY_WA_14011503117,
 	INTEL_DISPLAY_WA_22014263786,
+	INTEL_DISPLAY_WA_15018326506,
 };
 
 bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name);
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index a1e3083022ee..16cd99db2978 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1521,6 +1521,16 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 		return 0;
 	}
 
+	/*
+	 * wa_15018326506:
+	 * Fixes: Underrun during media decode
+	 * Workaround: Do not enable FBC
+	 */
+	if (intel_display_wa(display, 15018326506)) {
+		plane_state->no_fbc_reason = "Wa_15018326506";
+		return 0;
+	}
+
 	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
 	if (intel_display_vtd_active(display) &&
 	    (display->platform.skylake || display->platform.broxton)) {
-- 
2.43.0

