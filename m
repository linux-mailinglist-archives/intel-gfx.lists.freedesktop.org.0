Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4CAA05862
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 11:41:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6020210E855;
	Wed,  8 Jan 2025 10:41:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b2dgXIIL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4276F10E855
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 10:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736332907; x=1767868907;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lApBL4Nugo6wxWj8oOSiI9CSQ3hyKrDxXt2maHZ3xGE=;
 b=b2dgXIILZkfOpf+iACfZyRw59NALMRDHt8GcU/P+D3YqIXPLyAwsefKY
 fU/Oos89H3Sw6Bhk7N2qdJszRoFJ7PCW4yzy/ez9BAKSxYjPVTe//JqNO
 6VeriOhIWVhjdI1reT5OhYBx11ajFUNmR4w6LnLex1Qow0Yc7MLBJrp6B
 F3zhXU+lToy/OfnytJlCaISNLtaKhe2U8VY3r9Asr3ZOK9edgn83oUoFa
 3XON737rNy+E/LyUDV1W3i5C4X1bQDMJWWh6mfYh6s44iEl9umqycW1us
 VHjdTCEq3uGMNBTFw4kNKptsxvY6BJ45b4fR2VEqZPLjXjVOXNH+Ex8+e Q==;
X-CSE-ConnectionGUID: 6LNmeYjPSrq7imVwm1A2xA==
X-CSE-MsgGUID: HYj1ePPDRrGb3x7U7cLwHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="47218542"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="47218542"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 02:41:46 -0800
X-CSE-ConnectionGUID: dB56m56DR4K4Yvt/RRphZQ==
X-CSE-MsgGUID: mRbwThGoTWykqDVCwCLLgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="102979022"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.152])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 02:41:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/6] drm/i915/display: add
 intel_display_gpu_reset_clobbers_display() helper
Date: Wed,  8 Jan 2025 12:41:19 +0200
Message-Id: <14809d0398a260febbeb0e4bf2c25f97cc3bb8d7.1736332802.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1736332802.git.jani.nikula@intel.com>
References: <cover.1736332802.git.jani.nikula@intel.com>
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

Add a helper for checking the gpu_reset_clobbers_display flag to make it
easier to relocate the flag later.

We keep the intel_gt_gpu_reset_clobbers_display() helper to not have to
duplicate the gt -> display pointer chase.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_reset.c | 11 +++++++++--
 drivers/gpu/drm/i915/display/intel_display_reset.h |  3 +++
 drivers/gpu/drm/i915/gt/intel_reset.c              |  3 ++-
 3 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index 1e6421d51c51..93399ace7761 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -13,12 +13,19 @@
 #include "intel_hotplug.h"
 #include "intel_pps.h"
 
+bool intel_display_gpu_reset_clobbers_display(struct intel_display *display)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	return INTEL_INFO(i915)->gpu_reset_clobbers_display;
+}
+
 static bool gpu_reset_clobbers_display(struct intel_display *display)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
 
-	return (INTEL_INFO(i915)->gpu_reset_clobbers_display &&
-		intel_has_gpu_reset(to_gt(i915)));
+	return intel_display_gpu_reset_clobbers_display(display) &&
+		intel_has_gpu_reset(to_gt(i915));
 }
 
 void intel_display_reset_prepare(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
index 9a1fe99bfcd4..5acc07aab7b5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.h
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
@@ -6,9 +6,12 @@
 #ifndef __INTEL_RESET_H__
 #define __INTEL_RESET_H__
 
+#include <linux/types.h>
+
 struct intel_display;
 
 void intel_display_reset_prepare(struct intel_display *display);
 void intel_display_reset_finish(struct intel_display *display);
+bool intel_display_gpu_reset_clobbers_display(struct intel_display *display);
 
 #endif /* __INTEL_RESET_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 0d863aa58fb6..774caaaa4ce5 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1181,8 +1181,9 @@ static int resume(struct intel_gt *gt)
 bool intel_gt_gpu_reset_clobbers_display(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
+	struct intel_display *display = &i915->display;
 
-	return INTEL_INFO(i915)->gpu_reset_clobbers_display;
+	return intel_display_gpu_reset_clobbers_display(display);
 }
 
 /**
-- 
2.39.5

