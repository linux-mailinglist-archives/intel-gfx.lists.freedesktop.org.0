Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aHuTGlmVHmrPlAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 10:33:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFDC62A99E
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 10:33:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EECA113931;
	Tue,  2 Jun 2026 08:33:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ehU2W7vS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C527C113927;
 Tue,  2 Jun 2026 08:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780389206; x=1811925206;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rYNoJBmjEOPz8xXI/IR7F5ljLhn2uXfcgW5LuEYOmy4=;
 b=ehU2W7vSeYjg1tNdQJUBSAi5TzTWvBudJoeOanoztuSw0NHm6voveHKH
 BLltFLo+E/DMCRMa1mUX4m1hTBBvFu70P296wVFl2n6p7fyPjKzvAFojv
 E41plZySRIpX1WiXdqhcn8+rMsSW0VfNbD7X7hV/eE2nCaLtWvX8dV8R7
 XzlyXGn2OOFkGnz2QFkDxU3fZFyg4heQrpSAXfaWn3uX0a/nrBLMtM2wt
 dIVWjO5+d28KP3DvWLUoe4MHFyOiVSA+3WS6gG/x/aiURdSxCAXeGHGZR
 4y+3+BVIXW7H9aWUBLpsO2VyKOQNwzVotySx1k5nfs8ZoXU6rtYO8n/Uy g==;
X-CSE-ConnectionGUID: UyIkbkDQRxCM5GtZP0Hjuw==
X-CSE-MsgGUID: wJdpbLlPQTaBlvGS9Zg3yA==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="103830265"
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="103830265"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 01:33:25 -0700
X-CSE-ConnectionGUID: AdSD1L1oT0K/Q2EwueOm2A==
X-CSE-MsgGUID: bNjyeEfyQG25DdtvgRzfjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="267484368"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.253])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 01:33:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, imre.deak@intel.com, jani.nikula@intel.com
Subject: [CI 06/12] drm/{i915,
 xe}: move more calls inside intel_display_driver_pm_resume()
Date: Tue,  2 Jun 2026 11:32:46 +0300
Message-ID: <2cb01e10de88e6436c54643acbcef2afd3188a58.1780389001.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1780389001.git.jani.nikula@intel.com>
References: <cover.1780389001.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.407];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: EDFDC62A99E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The intel_display_driver_pm_resume() calls are surrounded by near
identical display calls. Move the calls inside
intel_display_driver_pm_resume().

There's a slight functional change in that
intel_display_driver_pm_resume() returns early for
!HAS_DISPLAY(). Assume this is what we want, and there are no cases
where display engine is present but all pipes have been fused off.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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

