Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C7F0631CAF
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 10:19:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94B1E10E17D;
	Mon, 21 Nov 2022 09:18:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9354B10E17D
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 09:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669022332; x=1700558332;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=y2rBYRKP4muVWHLDsDrHTTO6cYprImV71M8sk8yYvvI=;
 b=C0v0b56k2ABaFXUbWtNkJUbD3x5XZ/Z49cL5WPYDvGk+FsSYnHEm0IcT
 Hw+T/GfN92C/AQ62VY8+LW0CTEW4SMqHFYPFOcT9FTpcIbXO+fDIkW+OY
 Yjnpsj1o0RFOjx3wwHb031FsH/aW3ZBa5/kZyeGUPRJMXSfDiEwa1fStv
 4/3q0JW3bYCzGwoegc2KqH9rpQ3Ecd2guRSgBo0KVWoowyG++D4gAvgQM
 OdhU6pKs7pbz5U36rOIwjuUXaKNw1oesoEns1Da/M2SYqGwrSE1Ef8vJl
 N2nqJxj+QgDoMMS9T+PHKqsk8TrFcemLn63xksl/WRXBhe+V9t8nfMGxe Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="399801171"
X-IronPort-AV: E=Sophos;i="5.96,180,1665471600"; d="scan'208";a="399801171"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 01:18:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="815647579"
X-IronPort-AV: E=Sophos;i="5.96,180,1665471600"; d="scan'208";a="815647579"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga005.jf.intel.com with ESMTP; 21 Nov 2022 01:18:50 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Nov 2022 14:48:55 +0530
Message-Id: <20221121091855.3562288-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/fbc: Disable FBC when VT-d is enabled
 for Gen9
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

The WaFbcTurnOffFbcWhenHyperVisorIsUsed is applicable for all GEN9
platforms as per BspecID: 0852

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index b5ee5ea0d010..efd5659b3b60 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1652,9 +1652,9 @@ static int intel_sanitize_fbc_option(struct drm_i915_private *i915)
 
 static bool need_fbc_vtd_wa(struct drm_i915_private *i915)
 {
-	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
+	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt,cnl,kbl */
 	if (i915_vtd_active(i915) &&
-	    (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
+	    (DISPLAY_VER(i915) == 9) || DISPLAY_VER(i915) == 10) {
 		drm_info(&i915->drm,
 			 "Disabling framebuffer compression (FBC) to prevent screen flicker with VT-d enabled\n");
 		return true;
-- 
2.25.1

