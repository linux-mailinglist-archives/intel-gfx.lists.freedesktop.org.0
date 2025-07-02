Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E23AF0E8C
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jul 2025 10:57:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4280C10E337;
	Wed,  2 Jul 2025 08:56:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BUOQa876";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1351310E330;
 Wed,  2 Jul 2025 08:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751446617; x=1782982617;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hPm82jcAQjMDnbhkGLzORLT1vPb0/MiZVkTE+ZMWjrw=;
 b=BUOQa8760mcJhUVncoZKG3bH+X4J7YQAIYuG+dXaaDYVCJ0A2kSSXbnF
 f9GCNnKH2XNDkMlCzOgJoqan/U2i7vzBm8+Bmd5phqu94oZ7zN9+N8L54
 TEcKxt7P3GTVjvCsiRbEulig3My0nzw+xHkrx/+xPxGqvBeE/wekcnxo5
 QvcIUstQq3PvdjOCHU87juYXz6w3h9KERPL42RXh9ESHjZRZDUBwCezvf
 DhPwRZaQpzOYbqkvq/eobdyQeEKcXD7kKiCtKn0HdRb6I4xbRPStK7rnZ
 CAm1nnbpZV+IYA9QFQnogI1qKmqWwRpRsO/XL0n4ENKZ46CzRrL9nXmxR A==;
X-CSE-ConnectionGUID: MWbWSf+PQj+CUGuDGA2rOA==
X-CSE-MsgGUID: tbmL32Z7TXiwmCJEvwv6iA==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="53448057"
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="53448057"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 01:56:57 -0700
X-CSE-ConnectionGUID: peWCg8lNSDacMn+sSdGtZQ==
X-CSE-MsgGUID: 0XT2WMF5Sm6YQbScf+Bhyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="191187793"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 01:56:55 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 gustavo.sousa@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 1/2] drm/i915/display_wa: Add helpers to check wa
Date: Wed,  2 Jul 2025 14:16:18 +0530
Message-ID: <20250702084620.3837426-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250702084620.3837426-1-ankit.k.nautiyal@intel.com>
References: <20250702084620.3837426-1-ankit.k.nautiyal@intel.com>
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

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_wa.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_display_wa.h |  9 +++++++++
 drivers/gpu/drm/i915/display/intel_fbc.c        |  2 +-
 3 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index f57280e9d041..f5e8d58d9a68 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -3,6 +3,8 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include "drm/drm_print.h"
+
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_core.h"
@@ -39,3 +41,16 @@ void intel_display_wa_apply(struct intel_display *display)
 	else if (DISPLAY_VER(display) == 11)
 		gen11_display_wa_apply(display);
 }
+
+bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa)
+{
+	switch (wa) {
+	case INTEL_DISPLAY_WA_16023588340:
+		return intel_display_needs_wa_16023588340(display);
+	default:
+		drm_WARN(display->drm, 1, "Missing Wa number: %d\n", wa);
+		break;
+	}
+
+	return false;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index babd9d16603d..146ee70d66f7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -21,4 +21,13 @@ static inline bool intel_display_needs_wa_16023588340(struct intel_display *disp
 bool intel_display_needs_wa_16023588340(struct intel_display *display);
 #endif
 
+enum intel_display_wa {
+	INTEL_DISPLAY_WA_16023588340,
+};
+
+bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa);
+
+#define intel_display_wa(__display, __wa) \
+	__intel_display_wa((__display), INTEL_DISPLAY_WA_##__wa)
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

