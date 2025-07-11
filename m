Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B96B8B0122B
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jul 2025 06:29:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D23810E995;
	Fri, 11 Jul 2025 04:29:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W6SFKGp0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9327310E995;
 Fri, 11 Jul 2025 04:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752208174; x=1783744174;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MIChO99nWuDyPuNoMxVGxgwR9PA4WffQvdU7iXIU2cU=;
 b=W6SFKGp0FzQj5mWlFVami70mLfMCHiqPdekmdAT+COay1iLg3BY7YtcO
 iYtmmCHJQpgMIRg+/BRPKEKvKmqwPe9upAcNqKT8u8CM9cNWX4H3URpWy
 PY4YbU27t2s/xQrRtGTzJCDtsDxp26MmTdOu1JGRkTLO3OSDq/HO4Yo0i
 0j0XaEfP8CgVr74anr3hRLxkB0/uQixjMJSSnDJB62Ga/Eqs4MnZNB188
 9RfVKamE/qIceCMJM+bq1GRTpfvNFCG1CsoPypu02u1VqLM7tBUUgS0n6
 JOpklO97FdjBP6T7M3OKYekj6rrfVV9S0j5wNFhd5aMgZ94A1Ybz44l/4 g==;
X-CSE-ConnectionGUID: uLBQt+49TuiFHuLkB/sVVA==
X-CSE-MsgGUID: KHntbbjwQhiHvxq2pacLew==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="72081792"
X-IronPort-AV: E=Sophos;i="6.16,302,1744095600"; d="scan'208";a="72081792"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 21:29:33 -0700
X-CSE-ConnectionGUID: 3rTzDK9mTZy52i1Wacd9lw==
X-CSE-MsgGUID: LfR8GFrUSe+9rW4OoqiSsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,302,1744095600"; d="scan'208";a="156824775"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 21:29:31 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, gustavo.sousa@intel.com,
 lucas.demarchi@intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 1/2] drm/i915/display_wa: Add helpers to check wa
Date: Fri, 11 Jul 2025 09:48:59 +0530
Message-ID: <20250711041901.1607823-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250711041901.1607823-1-ankit.k.nautiyal@intel.com>
References: <20250711041901.1607823-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Introduce a generic helper to check display workarounds using an enum.

Convert Wa_16023588340 to use the new interface, simplifying WA checks
and making future additions easier.

v2: Use drm_WARN instead of MISSING_CASE and simplify intel_display_wa
macro. (Jani)
v3: Print Missing wa number, instead of enum value. (Gustavo, Jani)

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_wa.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_display_wa.h |  9 +++++++++
 drivers/gpu/drm/i915/display/intel_fbc.c        |  2 +-
 3 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index f57280e9d041..32719e2c6025 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -3,6 +3,8 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include <drm/drm_print.h>
+
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_core.h"
@@ -39,3 +41,16 @@ void intel_display_wa_apply(struct intel_display *display)
 	else if (DISPLAY_VER(display) == 11)
 		gen11_display_wa_apply(display);
 }
+
+bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name)
+{
+	switch (wa) {
+	case INTEL_DISPLAY_WA_16023588340:
+		return intel_display_needs_wa_16023588340(display);
+	default:
+		drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name);
+		break;
+	}
+
+	return false;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index babd9d16603d..8319e16eb460 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -21,4 +21,13 @@ static inline bool intel_display_needs_wa_16023588340(struct intel_display *disp
 bool intel_display_needs_wa_16023588340(struct intel_display *display);
 #endif
 
+enum intel_display_wa {
+	INTEL_DISPLAY_WA_16023588340,
+};
+
+bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name);
+
+#define intel_display_wa(__display, __wa) \
+	__intel_display_wa((__display), INTEL_DISPLAY_WA_##__wa, __stringify(__wa))
+
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 6e26cb4c5724..e2e03af520b2 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1464,7 +1464,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 		return 0;
 	}
 
-	if (intel_display_needs_wa_16023588340(display)) {
+	if (intel_display_wa(display, 16023588340)) {
 		plane_state->no_fbc_reason = "Wa_16023588340";
 		return 0;
 	}
-- 
2.45.2

