Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D7FB4079F
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 16:49:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F187310E783;
	Tue,  2 Sep 2025 14:49:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BROVpWIr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7226010E799;
 Tue,  2 Sep 2025 14:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756824575; x=1788360575;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xIs/pD/nxdOTIgrnZKnis7mceUYZ6YiNcb3a/AP/SVo=;
 b=BROVpWIrUZcRQTPEZRP8fAGVKOfEGurqaN8WxwXnPpPkeSmxI08pTx+i
 wafdaN2mprVVXO7IorJ37YY4MPxr7L7UcY98bIRKhqx9664XoYvXpKJPD
 nECHIDuDORL963OdA0oJQxxYIdsr8tsjFiWHuDNUKGddZQGskArl2LBDV
 4MHcP4NAf3L7Rkk61uzfIMzC/DA3UxcILeDirI8Z9G7Qm/a4TDm2meLuM
 Ta7mmz+Gro5bknIKbr7+ctTU/YxTBwxAjDedBM5QaInsLRsePAYPMrOkT
 POEEQWIjlc4VOjwJ7hFf+pAr9H1kkIYCci+Ak8QWKKUKuvikX/DJ6V8lH Q==;
X-CSE-ConnectionGUID: wS0PrzCXS4WGve62yHY1Dg==
X-CSE-MsgGUID: y73KORGbR62RewYkpoBB7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59167604"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59167604"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 07:49:35 -0700
X-CSE-ConnectionGUID: pjRh95K0SOi1afdcdzkuVg==
X-CSE-MsgGUID: 7LzuWrypTeOfctxCKs8wkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="170553411"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.193])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 07:49:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/power: drop a couple of &i915->drm usages
Date: Tue,  2 Sep 2025 17:49:29 +0300
Message-ID: <20250902144929.3026700-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
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

Switch from &i915->drm to display->drm.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 31c2a07bb188..0c48d9cf3528 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -500,7 +500,6 @@ static void icl_tc_port_assert_ref_held(struct intel_display *display,
 
 static void icl_tc_cold_exit(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	int ret, tries = 0;
 
 	while (1) {
@@ -515,7 +514,7 @@ static void icl_tc_cold_exit(struct intel_display *display)
 		msleep(1);
 
 	/* TODO: turn failure into a error as soon i915 CI updates ICL IFWI */
-	drm_dbg_kms(&i915->drm, "TC cold block %s\n", ret ? "failed" :
+	drm_dbg_kms(display->drm, "TC cold block %s\n", ret ? "failed" :
 		    "succeeded");
 }
 
@@ -1766,7 +1765,6 @@ static void chv_pipe_power_well_disable(struct intel_display *display,
 static void
 tgl_tc_cold_request(struct intel_display *display, bool block)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	u8 tries = 0;
 	int ret;
 
@@ -1799,10 +1797,9 @@ tgl_tc_cold_request(struct intel_display *display, bool block)
 	}
 
 	if (ret)
-		drm_err(&i915->drm, "TC cold %sblock failed\n",
-			block ? "" : "un");
+		drm_err(display->drm, "TC cold %sblock failed\n", block ? "" : "un");
 	else
-		drm_dbg_kms(&i915->drm, "TC cold %sblock succeeded\n",
+		drm_dbg_kms(display->drm, "TC cold %sblock succeeded\n",
 			    block ? "" : "un");
 }
 
-- 
2.47.2

