Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5928C4DD31
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 13:46:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 939DB10E575;
	Tue, 11 Nov 2025 12:46:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LbLGIo2E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82DF610E575;
 Tue, 11 Nov 2025 12:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762865182; x=1794401182;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3ZYlaaidbH9Sa1BH2DpRjUdXXm0DdkQcM6PF/qCSqzc=;
 b=LbLGIo2EO+UxmYPrHhXGtucg2swql7xX0cwUxcQXcgzVvSwSeQ6R9fUp
 CWtxY5qdd0+3pDRs8CBfM9Ak1f1zV39t3S1uQlNviEs7vmlcQZrf2GwfN
 3/g2nDGyIFaJPn2GpyfQXB84PSOxv6O9A+DtB5Igubp0nPVsG/15Qm+gx
 51pDXzUgLX9MmH86D0xBPuSI6gAumDGYZKk4hIlK5m3tY0MtoL22YxdCa
 4syYUwuO8FfU78SDuxsk2GZZii24hQaPZNv9J3/BPsQMDpysjKH9D8bCD
 KKanjGIFKqgBChtjLiSSIO0RlPN7SWj4yJLMajg2TttlYKajp1R6FXx3P A==;
X-CSE-ConnectionGUID: TjcsPd7iSmuCJPWKWtcI6A==
X-CSE-MsgGUID: JK80bD/GTXCwg+tznx5dQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="68772675"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="68772675"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 04:46:22 -0800
X-CSE-ConnectionGUID: M8iXZ1XWTIyCReWzUiTxyw==
X-CSE-MsgGUID: hJZjh1IcQpSKm2dcfBoh0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="188919931"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.246.254])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 04:46:17 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, uma.shankar@intel.com,
 kunal1.joshi@intel.com, jani.nikula@intel.com, lucas.demarchi@intel.com,
 matthew.d.roper@intel.com
Subject: [PATCH v2] drm/i915/fbc: Apply wa_15018326506
Date: Tue, 11 Nov 2025 14:46:06 +0200
Message-ID: <20251111124606.402380-1-vinod.govindapillai@intel.com>
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

Disable FBC in bmg as per the wa recommendation.

v2: use the bmg platform instead of a specific stepping

Bspec: 74212
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_wa.c |  2 ++
 drivers/gpu/drm/i915/display/intel_display_wa.h |  1 +
 drivers/gpu/drm/i915/display/intel_fbc.c        | 10 ++++++++++
 3 files changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index e38e5e87877c..b2e71fa61c0a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -70,6 +70,8 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 		return DISPLAY_VER(display) == 13;
 	case INTEL_DISPLAY_WA_22014263786:
 		return IS_DISPLAY_VERx100(display, 1100, 1400);
+	case INTEL_DISPLAY_WA_15018326506:
+		return display->platform.battlemage;
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

