Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aOABM/xyGWoQwwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:05:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5A46014B7
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:05:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0312810FD46;
	Fri, 29 May 2026 11:05:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e6v13V2Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5284010FD47;
 Fri, 29 May 2026 11:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780052730; x=1811588730;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OOliScCmLAVysTZe7SEAcNmoM550CkD/Y96o8KLRc0A=;
 b=e6v13V2YjHHilw6GoZcmeZ1cwJxMn+gmNDc2U+zKNkk/68biscFifT6o
 /rjkZP7FgNbw3VZ/GPIA50vij6KqOi7oeHNr9TLV8kIxWqVYiMMKjXuHC
 FRAclf5cdzMxJsJhXSGjD5FdGhpXW7iQC4x7spEh5yd2o39lIGeiCKivu
 EY8wFuOmNfReRVfAix/ZfAhOMKDkzvkoFrxxR+hKcRfbK32XDoouCtLMz
 XCA3SZsw/kNJjriAfkLELZYwGYSysFTTa3iW/wTD07Mx+4imwq8xPi6Kr
 2Rsv7Urd8jJPIZKnaj6/r1yfwXO4yzhcwYkv4MPbWpSrZ9cZv3nQX1o9R g==;
X-CSE-ConnectionGUID: xhHKEtb7TiG3MnERKth6Xw==
X-CSE-MsgGUID: Fw4bkRnfSKewrrGsZKKk0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="92015047"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="92015047"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:29 -0700
X-CSE-ConnectionGUID: GUuDs4ErQ/6Myfi2xLI0Mw==
X-CSE-MsgGUID: IJenpK8kQUSalGqyKZj81A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="280942104"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.147])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 16/24] drm/i915/display: deduplicate suspend and shutdown a bit
Date: Fri, 29 May 2026 14:04:00 +0300
Message-ID: <7d345f3f6d1df1b3b65919e3cfd7465fbe51e5f5.1780051905.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
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
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 7B5A46014B7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

intel_display_driver_shutdown() and intel_display_driver_pm_suspend()
are quite similar. Abstract a shared function to call from both.

This is intentionally just the first non-functional step. More gradual
changes will follow.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   | 45 ++++++++++---------
 1 file changed, 23 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 90b2a62798c1..0dd0b15641eb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -66,6 +66,8 @@
 #include "intel_wm.h"
 #include "skl_watermark.h"
 
+static int __intel_display_driver_pm_suspend(struct intel_display *display, bool shutdown);
+
 bool intel_display_driver_probe_defer(struct pci_dev *pdev)
 {
 	struct drm_privacy_screen *privacy_screen;
@@ -686,18 +688,7 @@ void intel_display_driver_shutdown(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return;
 
-	intel_display_power_disable(display);
-
-	drm_client_dev_suspend(display->drm);
-	drm_kms_helper_poll_disable(display->drm);
-
-	intel_display_driver_disable_user_access(display);
-
-	drm_atomic_helper_shutdown(display->drm);
-
-	flush_workqueue(display->wq.cleanup);
-
-	intel_dp_mst_suspend(display);
+	__intel_display_driver_pm_suspend(display, true);
 
 	intel_encoder_block_all_hpds(display);
 
@@ -726,10 +717,9 @@ void intel_display_driver_shutdown_late(struct intel_display *display)
  * turn all crtc's off, but do not adjust state
  * This has to be paired with a call to intel_modeset_setup_hw_state.
  */
-int intel_display_driver_pm_suspend(struct intel_display *display)
+static int __intel_display_driver_pm_suspend(struct intel_display *display, bool shutdown)
 {
-	struct drm_atomic_commit *state;
-	int ret;
+	int ret = 0;
 
 	if (!HAS_DISPLAY(display))
 		return 0;
@@ -745,13 +735,19 @@ int intel_display_driver_pm_suspend(struct intel_display *display)
 	drm_kms_helper_poll_disable(display->drm);
 	intel_display_driver_disable_user_access(display);
 
-	state = drm_atomic_helper_suspend(display->drm);
-	ret = PTR_ERR_OR_ZERO(state);
-	if (ret)
-		drm_err(display->drm, "Suspending crtc's failed with %i\n",
-			ret);
-	else
-		display->restore.modeset_state = state;
+	if (shutdown) {
+		drm_atomic_helper_shutdown(display->drm);
+	} else {
+		struct drm_atomic_commit *state;
+
+		state = drm_atomic_helper_suspend(display->drm);
+		ret = PTR_ERR_OR_ZERO(state);
+		if (ret)
+			drm_err(display->drm, "Suspending crtc's failed with %i\n",
+				ret);
+		else
+			display->restore.modeset_state = state;
+	}
 
 	/* ensure all DPT VMAs have been unpinned for intel_dpt_suspend() */
 	flush_workqueue(display->wq.cleanup);
@@ -761,6 +757,11 @@ int intel_display_driver_pm_suspend(struct intel_display *display)
 	return ret;
 }
 
+int intel_display_driver_pm_suspend(struct intel_display *display)
+{
+	return __intel_display_driver_pm_suspend(display, false);
+}
+
 void intel_display_driver_pm_suspend_late(struct intel_display *display, bool s2idle)
 {
 	if (!HAS_DISPLAY(display))
-- 
2.47.3

