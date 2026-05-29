Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EIlZJupyGWoQwwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:05:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0F0601492
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:05:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D48A410FD4D;
	Fri, 29 May 2026 11:05:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WRk24XBR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31F6E10FD40;
 Fri, 29 May 2026 11:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780052706; x=1811588706;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KZ3lWg2kEcNEczczbyDUyalhx75fC6TClCZeUdPGrb4=;
 b=WRk24XBRB0PckS+Qu2Am0SEstzeZ0Ocsn7rCe0Cooef2T2tyt88ALnNL
 KPZrDAct49fGxD4KOU2etI6bi7Re/nYPjMacESl0h+IxzRVvGoow79VBf
 9NBJ0l1ZkujnTpdOHm0zzKoM82W4ge7AqFJs6L4sWk3xWvkSG8kvKG8vj
 64keJyo1vU3DLQWgdI2W5vpUPGgJ6/otMCe0RMF9ELdHEcWHHeBONcav9
 rZqETO0++xL/mSY5Toyq56Q2eBJ9e4OyFz+HSwn+i8/HIK/frUd6WHW9+
 BR2K9t+XZTy8VRUa9VnRRigQxVR5fOKwH6dscbTgVb/fg2Ozg762W68Lm Q==;
X-CSE-ConnectionGUID: 5VRghLjQQd+iVgxK6b1Zow==
X-CSE-MsgGUID: Q2F5SQkJQPSYtOeDKMfCjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="80629257"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="80629257"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:06 -0700
X-CSE-ConnectionGUID: z2z6ajzURvilYFFxxDH/CA==
X-CSE-MsgGUID: il6EJ/otSPeBKwVbHzl2GA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="236470877"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.147])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 11/24] drm/{i915,
 xe}: move more calls inside intel_display_driver_pm_resume()
Date: Fri, 29 May 2026 14:03:55 +0300
Message-ID: <440eb1a957a092dcd9676dfa9d679480414d10a3.1780051905.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1780051905.git.jani.nikula@intel.com>
References: <cover.1780051905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.969];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:email]
X-Rspamd-Queue-Id: 4F0F0601492
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The intel_display_driver_pm_resume() calls are surrounded by near
identical display calls. Move the calls inside
intel_display_driver_pm_resume().

There's a slight functional change in that
intel_display_driver_pm_resume() returns early for
!HAS_DISPLAY(). Assume this is what we want, and there are no cases
where display engine is present but all pipes have been fused off.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   | 18 +++++++++++++++
 drivers/gpu/drm/i915/i915_driver.c            | 19 ----------------
 drivers/gpu/drm/xe/display/xe_display.c       | 22 +------------------
 3 files changed, 19 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 41a2244985fa..f362532c6834 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -43,6 +43,7 @@
 #include "intel_dp_tunnel.h"
 #include "intel_dpll.h"
 #include "intel_dpll_mgr.h"
+#include "intel_encoder.h"
 #include "intel_fb.h"
 #include "intel_fbc.h"
 #include "intel_fbdev.h"
@@ -761,6 +762,12 @@ void intel_display_driver_pm_resume(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return;
 
+	intel_display_driver_resume_access(display);
+
+	intel_hpd_init(display);
+
+	intel_encoder_unblock_all_hpds(display);
+
 	/* MST sideband requires HPD interrupts enabled */
 	intel_dp_mst_resume(display);
 
@@ -790,4 +797,15 @@ void intel_display_driver_pm_resume(struct intel_display *display)
 			"Restoring old state failed with %i\n", ret);
 	if (state)
 		drm_atomic_commit_put(state);
+
+	intel_display_driver_enable_user_access(display);
+	drm_kms_helper_poll_enable(display->drm);
+
+	intel_hpd_poll_disable(display);
+
+	intel_opregion_resume(display);
+
+	drm_client_dev_resume(display->drm);
+
+	intel_display_power_enable(display);
 }
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index f161723f653e..063d4bdec2d9 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1309,27 +1309,8 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_clock_gating_init(&dev_priv->drm);
 
-	if (intel_display_device_present(display))
-		intel_display_driver_resume_access(display);
-
-	intel_hpd_init(display);
-
-	intel_encoder_unblock_all_hpds(display);
-
 	intel_display_driver_pm_resume(display);
 
-	if (intel_display_device_present(display)) {
-		intel_display_driver_enable_user_access(display);
-		drm_kms_helper_poll_enable(dev);
-	}
-	intel_hpd_poll_disable(display);
-
-	intel_opregion_resume(display);
-
-	drm_client_dev_resume(dev);
-
-	intel_display_power_enable(display);
-
 	intel_gvt_resume(dev_priv);
 
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 027db7b6ceb5..f34a9d2ffc16 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -341,27 +341,7 @@ void xe_display_pm_resume(struct xe_device *xe)
 
 	intel_display_driver_init_hw(display);
 
-	if (intel_display_device_present(display))
-		intel_display_driver_resume_access(display);
-
-	intel_hpd_init(display);
-
-	intel_encoder_unblock_all_hpds(display);
-
-	if (intel_display_device_present(display)) {
-		intel_display_driver_pm_resume(display);
-		intel_display_driver_enable_user_access(display);
-		drm_kms_helper_poll_enable(&xe->drm);
-	}
-
-	if (intel_display_device_present(display))
-		intel_hpd_poll_disable(display);
-
-	intel_opregion_resume(display);
-
-	drm_client_dev_resume(&xe->drm);
-
-	intel_display_power_enable(display);
+	intel_display_driver_pm_resume(display);
 }
 
 static void xe_display_enable_d3cold(struct xe_device *xe)
-- 
2.47.3

