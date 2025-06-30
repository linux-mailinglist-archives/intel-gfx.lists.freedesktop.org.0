Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED391AED428
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jun 2025 07:59:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 499AA10E391;
	Mon, 30 Jun 2025 05:59:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h+8KC8iR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5484610E38F;
 Mon, 30 Jun 2025 05:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751263196; x=1782799196;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1sEgAE3iFBqY1GG4V1MvyDHPsvdt3YF0sABtYz/YGbY=;
 b=h+8KC8iRWxobgb4xzNRbafns1Sfgpc1jXS3NzDQXantoRrpbrlHIKtER
 ZmqTqODS2mqHSTu/4eROPFpAxX0itD77TcRJrAKZUq9uZxUZd8QK8SI19
 sd4LGain55c1UidgNq12GeMqsQ5vhwoYpFI9BVpMs7zEdMNx6zrHbgeZ4
 QKYp4KlqQ5g7hdjFyOYpPu9lf0OxGa4ZiB07TFReiKBzuOeVoLTQxhTg7
 E8lTXfuJCCPbkoJxLJOYu/0DfHM+KePudOYe87kPBFXZy6Y+fwW+FEP0d
 rdPJ+Fk8FPVInG19fmypXyY5vSz1EhrCMTLogamdVXukHlDvQF64zabOJ A==;
X-CSE-ConnectionGUID: ppPSpR7fSZqiQ3PlhbNs6Q==
X-CSE-MsgGUID: HXWZzImiSc6XBvuMFqj5fg==
X-IronPort-AV: E=McAfee;i="6800,10657,11479"; a="52709243"
X-IronPort-AV: E=Sophos;i="6.16,277,1744095600"; d="scan'208";a="52709243"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2025 22:59:56 -0700
X-CSE-ConnectionGUID: +2XlxlawQS6MThSN7yqrcQ==
X-CSE-MsgGUID: 2LAO76TsRGO1Qu4CmLqsVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,277,1744095600"; d="scan'208";a="153459096"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2025 22:59:54 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, gustavo.sousa@intel.com,
 jani.nikula@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 1/2] drm/i915/display_wa: Add helpers to check wa
Date: Mon, 30 Jun 2025 11:19:17 +0530
Message-ID: <20250630054918.2823537-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250630054918.2823537-1-ankit.k.nautiyal@intel.com>
References: <20250630054918.2823537-1-ankit.k.nautiyal@intel.com>
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

Introduce a generic helper to check display workarounds using an enum.

Convert Wa_16023588340 to use the new interface, simplifying WA checks
and making future additions easier.

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_wa.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_display_wa.h |  9 +++++++++
 drivers/gpu/drm/i915/display/intel_fbc.c        |  2 +-
 3 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index f57280e9d041..70ba66fc7e26 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -39,3 +39,16 @@ void intel_display_wa_apply(struct intel_display *display)
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
+		MISSING_CASE(wa);
+		break;
+	}
+
+	return false;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index babd9d16603d..853939ebf1ac 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -7,6 +7,7 @@
 #define __INTEL_DISPLAY_WA_H__
 
 #include <linux/types.h>
+#include <i915_utils.h>
 
 struct intel_display;
 
@@ -21,4 +22,12 @@ static inline bool intel_display_needs_wa_16023588340(struct intel_display *disp
 bool intel_display_needs_wa_16023588340(struct intel_display *display);
 #endif
 
+enum intel_display_wa {
+	INTEL_DISPLAY_WA_16023588340,
+};
+
+bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa);
+
+#define _intel_display_wa_expand(__wa) INTEL_DISPLAY_WA_##__wa
+#define intel_display_wa(__display, __wa) __intel_display_wa((__display), _intel_display_wa_expand(__wa))
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index ec1ef8694c35..f4b7ff549fd4 100644
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

