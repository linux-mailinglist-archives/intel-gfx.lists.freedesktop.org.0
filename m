Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9768FA8806D
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 14:33:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 795B110E5A0;
	Mon, 14 Apr 2025 12:33:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eyLw8sN5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 639F110E59E;
 Mon, 14 Apr 2025 12:33:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744634011; x=1776170011;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LT5PoLBy1nKQPSlnTCt2kkh9xoOP1gjQsiviCp6yTUM=;
 b=eyLw8sN5YBTXC+F2BmpLaAkCAU/sWMgq9iQq6Ys+R2Hh048n/wgpn3iC
 hCFAfi/2QNO7k4Lp49Ti8lM2T6fcpgUTTpd7+NU0mH9mkvArewL59Z11F
 27llj0sOl45YIuKZfFq9SrLoX7wUvnWUlHd3WfcX9VYcMYTWTLBgaVNGx
 J6Gza4MneJwgwJXw5CEgM+Ar7LHvvFTXHfnIldQ6wTfAjX0mQ9yg3IKBs
 TKh0ya4vjG63dCFfAD7PSkSYjoCT4nZn43qIXIpdJh1X1BJJeCfUyQZA+
 BdDhqNdYtuI1vJ5kqp3AK4j40th2KNE7VlpiSAd9zFCp9hDwpBzigaP9V A==;
X-CSE-ConnectionGUID: g/QLZM6jTg2M2RKGYSl0fQ==
X-CSE-MsgGUID: yUk87DFSS/aQMJ8v+R3j2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="46011934"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="46011934"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 05:33:31 -0700
X-CSE-ConnectionGUID: xRRiIeWNTIOkCG7JzMQb/w==
X-CSE-MsgGUID: giyuzuwYQXyfX/ZWBDAEfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="134781631"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 05:33:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/3] drm/i915/pch: abstract fake PCH detection better
Date: Mon, 14 Apr 2025 15:33:09 +0300
Message-Id: <603a303f682d970787eecb10d9427ed1b65e2140.1744633934.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744633934.git.jani.nikula@intel.com>
References: <cover.1744633934.git.jani.nikula@intel.com>
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

Abstract detection of platforms with south display on the same PCI
device or SoC die as north display, and all around clarify what this
means. Debug log about it for good measure.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pch.c | 47 ++++++++++++++----------
 1 file changed, 28 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pch.c b/drivers/gpu/drm/i915/display/intel_pch.c
index fec1919e5386..5035b63a4889 100644
--- a/drivers/gpu/drm/i915/display/intel_pch.c
+++ b/drivers/gpu/drm/i915/display/intel_pch.c
@@ -39,6 +39,28 @@
 #define INTEL_PCH_P3X_DEVICE_ID_TYPE		0x7000
 #define INTEL_PCH_QEMU_DEVICE_ID_TYPE		0x2900 /* qemu q35 has 2918 */
 
+/*
+ * Check for platforms where the south display is on the same PCI device or SoC
+ * die as the north display. The PCH (if it even exists) is not involved in
+ * display. Return a fake PCH type for south display handling on these
+ * platforms, without actually detecting the PCH, and PCH_NONE otherwise.
+ */
+static enum intel_pch intel_pch_fake_for_south_display(struct intel_display *display)
+{
+	enum intel_pch pch_type = PCH_NONE;
+
+	if (DISPLAY_VER(display) >= 20)
+		pch_type = PCH_LNL;
+	else if (display->platform.battlemage || display->platform.meteorlake)
+		pch_type = PCH_MTL;
+	else if (display->platform.dg2)
+		pch_type = PCH_DG2;
+	else if (display->platform.dg1)
+		pch_type = PCH_DG1;
+
+	return pch_type;
+}
+
 /* Map PCH device id to PCH type, or PCH_NONE if unknown. */
 static enum intel_pch
 intel_pch_type(const struct intel_display *display, unsigned short id)
@@ -258,25 +280,12 @@ void intel_pch_detect(struct intel_display *display)
 	unsigned short id;
 	enum intel_pch pch_type;
 
-	/*
-	 * South display engine on the same PCI device: just assign the fake
-	 * PCH.
-	 */
-	if (DISPLAY_VER(display) >= 20) {
-		display->pch_type = PCH_LNL;
-		return;
-	} else if (display->platform.battlemage || display->platform.meteorlake) {
-		/*
-		 * Both north display and south display are on the SoC die.
-		 * The real PCH (if it even exists) is uninvolved in display.
-		 */
-		display->pch_type = PCH_MTL;
-		return;
-	} else if (display->platform.dg2) {
-		display->pch_type = PCH_DG2;
-		return;
-	} else if (display->platform.dg1) {
-		display->pch_type = PCH_DG1;
+	pch_type = intel_pch_fake_for_south_display(display);
+	if (pch_type != PCH_NONE) {
+		display->pch_type = pch_type;
+		drm_dbg_kms(display->drm,
+			    "PCH not involved in display, using fake PCH type %d for south display\n",
+			    pch_type);
 		return;
 	}
 
-- 
2.39.5

