Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A25849500
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 09:04:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C971112425;
	Mon,  5 Feb 2024 08:04:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TCLwdCee";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3533411241C
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Feb 2024 08:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707120242; x=1738656242;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jrEZCGt6pwcE6XlKrUukyVhPnFLCmDcymgZWn3vof+k=;
 b=TCLwdCeep6sMQAS7arvSqXiSBxntkbPKfZefjxwYbFr/zI7TPMW00xoo
 FAARtN7R40fqImvgrW/nX7OgIHIehyd5Krn7GPuP9b56TJARDHzqeowdo
 W73ZwJofcySs+rZVhF+AznEIGRKiXkknxwktW5jue+DeOPKHEPVB+VGFy
 U0gfg3xX3NktF3qJe/tAacfYu48FEVzScWvRGMdzTpIorT0NTaZwv2HG+
 CluzpaepcypfgGILWV0KAc+JKPMcx417j5sONV+YGqDgaWAx1pSvjXVOI
 W4hi4UNs6IzyttUV80vgLYgVkPLhydjxi+zqEDkLfM8DvptjFy+NMSZ0v A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="4266545"
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="4266545"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 00:04:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; d="scan'208";a="31745711"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa001.fm.intel.com with ESMTP; 05 Feb 2024 00:03:27 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Subject: [PATCH 2/2] drm/i915/lnl: Program PKGC_LATENCY register
Date: Mon,  5 Feb 2024 13:31:26 +0530
Message-Id: <20240205080126.1159496-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240201085158.1000285-3-suraj.kandpal@intel.com>
References: <20240201085158.1000285-3-suraj.kandpal@intel.com>
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

Program the PKGC_LATENCY register with the highest latency from
level 1 and above LP registers else program with all 1's.
This is used to improve package C residency by sending the highest
latency tolerance requirement (LTR) when the planes are done with the
frame until the next frame programming window (set context latency,
window 2) starts.
Bspec: 68986

--v2
-Fix indentation [Chaitanya]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 31 ++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 051a02ac01a4..1ce4b33a407a 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3394,6 +3394,34 @@ static void skl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 	adjust_wm_latency(i915, wm, num_levels, read_latency);
 }
 
+/*
+ * Program PKG_C_LATENCY Pkg C with highest valid latency from
+ * watermark level1 and up and above. If watermark level 1 is
+ * invalid program it with all 1's.
+ * Program PKG_C_LATENCY Added Wake Time = 0.
+ */
+static void intel_program_pkgc_latency(struct drm_i915_private *i915,
+				       u16 wm_latency[])
+{
+	u16 max_value = 0;
+	u32 clear = 0, val = 0;
+	int max_level = i915->display.wm.num_levels, i;
+
+	for (i = 1; i <= max_level; i++) {
+		if (wm_latency[i] == 0)
+			break;
+		else if (wm_latency[i] > max_value)
+			max_value = wm_latency[i];
+	}
+
+	if (max_value == 0)
+		max_value = ~0 & LNL_PKG_C_LATENCY_MASK;
+
+	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
+	val |= max_value;
+	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val);
+}
+
 static void skl_setup_wm_latency(struct drm_i915_private *i915)
 {
 	if (HAS_HW_SAGV_WM(i915))
@@ -3407,6 +3435,9 @@ static void skl_setup_wm_latency(struct drm_i915_private *i915)
 		skl_read_wm_latency(i915, i915->display.wm.skl_latency);
 
 	intel_print_wm_latency(i915, "Gen9 Plane", i915->display.wm.skl_latency);
+
+	if (DISPLAY_VER(i915) >= 20)
+		intel_program_pkgc_latency(i915, i915->display.wm.skl_latency);
 }
 
 static const struct intel_wm_funcs skl_wm_funcs = {
-- 
2.25.1

