Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0EA8CD743A
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 23:19:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC33010E21D;
	Mon, 22 Dec 2025 22:19:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OJGkEoiN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47CDF10E1BA;
 Mon, 22 Dec 2025 22:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766441949; x=1797977949;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=TvZ88nu6WoNmmHjJwkZjJSbFOexzl4gjdo6q0q+ZuzE=;
 b=OJGkEoiN/d7jLQcD41MbuoDZaWaCtTevzKPLBQpgnCVNhNIh+9iEuR8J
 ZUUQj7hY7y1ibcyFR8zSM19Z7bwF8ILvfGsRhGfU4H0SVlu6g1MbfjL7H
 UjHItsL/EWg/IKTQxvfSQwTHwzsCH19XeMLVJI8yUtrKNv3zEYMgI/rSB
 ZK67i38ajisGChbb20sMbsDnS0NtVhWOLNKGXh4Uw3jNI9zsM0hpXfdbd
 poZykSH7H9/MZyL6Vxsztb3QIp0GpGO+U7T+mAnH25icCpruiiAsog6Vt
 SE3z5rPznUtCIvd46G/j+wqoEJU62y7jVP30YJTEc9P7nxz7i4X+Hcn9/ g==;
X-CSE-ConnectionGUID: WRVsLa+qRiur4nBwma9KUg==
X-CSE-MsgGUID: vJewy/WvTkmVPBXzRDTWaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="68339743"
X-IronPort-AV: E=Sophos;i="6.21,169,1763452800"; d="scan'208";a="68339743"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 14:19:09 -0800
X-CSE-ConnectionGUID: N8x+4lxoQN2ppc1EtoIZng==
X-CSE-MsgGUID: ElvviOBnTECxinqAPkWHbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,169,1763452800"; d="scan'208";a="199619007"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.137])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 14:19:08 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 22 Dec 2025 19:18:47 -0300
Subject: [PATCH 1/2] drm/i915/display_wa: Keep enum intel_display_wa sorted
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251222-display-wa-13012396614-timing-of-mdclk-source-selection-v1-1-a2f7e9447f7a@intel.com>
References: <20251222-display-wa-13012396614-timing-of-mdclk-source-selection-v1-0-a2f7e9447f7a@intel.com>
In-Reply-To: <20251222-display-wa-13012396614-timing-of-mdclk-source-selection-v1-0-a2f7e9447f7a@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
X-Mailer: b4 0.15-dev
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

For a consistent way of updating enum intel_display_wa, let's sort it by
lineage number and add a comment asking for future updates to keep it
sorted.

In the same way, let's also keep __intel_display_wa() sorted.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
--
Note: this can be easily reviewed with `git show --color-moved`.
---
 drivers/gpu/drm/i915/display/intel_display_wa.c | 12 ++++++------
 drivers/gpu/drm/i915/display/intel_display_wa.h | 11 ++++++++---
 2 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index a00af39f7538..2b360447e92e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -62,18 +62,18 @@ static bool intel_display_needs_wa_16025573575(struct intel_display *display)
 bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name)
 {
 	switch (wa) {
+	case INTEL_DISPLAY_WA_14011503117:
+		return DISPLAY_VER(display) == 13;
+	case INTEL_DISPLAY_WA_14025769978:
+		return DISPLAY_VER(display) == 35;
+	case INTEL_DISPLAY_WA_15018326506:
+		return display->platform.battlemage;
 	case INTEL_DISPLAY_WA_16023588340:
 		return intel_display_needs_wa_16023588340(display);
 	case INTEL_DISPLAY_WA_16025573575:
 		return intel_display_needs_wa_16025573575(display);
-	case INTEL_DISPLAY_WA_14011503117:
-		return DISPLAY_VER(display) == 13;
 	case INTEL_DISPLAY_WA_22014263786:
 		return IS_DISPLAY_VERx100(display, 1100, 1400);
-	case INTEL_DISPLAY_WA_15018326506:
-		return display->platform.battlemage;
-	case INTEL_DISPLAY_WA_14025769978:
-		return DISPLAY_VER(display) == 35;
 	default:
 		drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name);
 		break;
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index a68c0bb7e516..56b586e38306 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -21,13 +21,18 @@ static inline bool intel_display_needs_wa_16023588340(struct intel_display *disp
 bool intel_display_needs_wa_16023588340(struct intel_display *display);
 #endif
 
+/*
+ * This enum lists display workarounds; each entry here must have a
+ * corresponding case in __intel_display_wa().  Keep both sorted by lineage
+ * number.
+ */
 enum intel_display_wa {
+	INTEL_DISPLAY_WA_14011503117,
+	INTEL_DISPLAY_WA_14025769978,
+	INTEL_DISPLAY_WA_15018326506,
 	INTEL_DISPLAY_WA_16023588340,
 	INTEL_DISPLAY_WA_16025573575,
-	INTEL_DISPLAY_WA_14011503117,
 	INTEL_DISPLAY_WA_22014263786,
-	INTEL_DISPLAY_WA_15018326506,
-	INTEL_DISPLAY_WA_14025769978,
 };
 
 bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name);

-- 
2.52.0

