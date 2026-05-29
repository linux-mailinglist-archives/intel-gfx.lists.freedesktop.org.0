Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0CsXEBpzGWogwwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:06:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E57AC601509
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:06:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AA3710FD5A;
	Fri, 29 May 2026 11:06:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B0RgNC8B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7AD410FD5A;
 Fri, 29 May 2026 11:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780052757; x=1811588757;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q5MyP/PEnii/XQFKzbbqyYa0nAduwpdHdHCM6skf3qU=;
 b=B0RgNC8BswNw/Q+ON72qCrNDzRUJEXNmlofe2tjccwMaS8lkRteij63m
 zWxXSEH4RqgIMSE1d0j1mOkn1kDuWg6MZSXycQyMLHqhp/Z9U9v7jcxuI
 8VPh11vRU+q1gT6wu17MsOX2pp+ZpOIAIyRHWctEuW3GhiKJxTqV7QGwH
 +u/G5xy8eg95m9QCNbCVlgJ6E+az77o/bQE/TunHlwDQyw+9nGIq4Rux6
 E5R9p3oNO5qzyVz6opvDtDSjo471qxLR6eJaMdntDfJD8xIBMhubg3gyo
 +omb1wMu5svFuJQc5rVyaVAaImuTgiwUkfGS3itSbt5kj+nbE3yzAdYBx w==;
X-CSE-ConnectionGUID: rlAXhNxjQVaPi4FM7LDRlg==
X-CSE-MsgGUID: hNeexdYLQKaxRoI1bWJUYQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="81087063"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="81087063"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:57 -0700
X-CSE-ConnectionGUID: yX/MZPNoQLOb1IQXu6oUgA==
X-CSE-MsgGUID: rxGImM4iQYWTUVuUPmzCHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="240273015"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.147])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 22/24] drm/i915: add intel_display_driver_pm_runtime*()
 functions
Date: Fri, 29 May 2026 14:04:06 +0300
Message-ID: <9417d53a338b5a14b9bf50cb8585b13b7379a6d3.1780051905.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: E57AC601509
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add new functions intel_display_driver_pm_runtime_suspend(),
intel_display_driver_pm_runtime_suspend_late(),
intel_display_driver_pm_runtime_resume_early(), and
intel_display_driver_pm_runtime_resume(). Initially, only migrate i915,
as there are some differences with xe that will be addressed later.

There are a few functional changes, which should be benign:

- i915_pm_runtime_suspend() moves assert_forcewakes_inactive() call
  before opregion calls.

- i915_pm_runtime_resume() moves intel_opregion_notify_adapter() call
  slightly later.

In the interest of not introducing more severe functional changes, the
calls become slightly asymmetric. We might want to address this later.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   | 56 +++++++++++++++++++
 .../drm/i915/display/intel_display_driver.h   |  5 ++
 drivers/gpu/drm/i915/i915_driver.c            | 44 ++-------------
 3 files changed, 65 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 84807a9bff2b..a27ddf21b08b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -884,3 +884,59 @@ void intel_display_driver_pm_resume(struct intel_display *display)
 
 	intel_display_power_enable(display);
 }
+
+void intel_display_driver_pm_runtime_suspend(struct intel_display *display)
+{
+	intel_display_power_runtime_suspend(display);
+}
+
+void intel_display_driver_pm_runtime_suspend_late(struct intel_display *display)
+{
+	/*
+	 * FIXME: We really should find a document that references the arguments
+	 * used below!
+	 */
+	if (display->platform.broadwell) {
+		/*
+		 * On Broadwell, if we use PCI_D1 the PCH DDI ports will stop
+		 * being detected, and the call we do at i915_pm_runtime_resume()
+		 * won't be able to restore them. Since PCI_D3hot matches the
+		 * actual specification and appears to be working, use it.
+		 */
+		intel_opregion_notify_adapter(display, PCI_D3hot);
+	} else {
+		/*
+		 * current versions of firmware which depend on this opregion
+		 * notification have repurposed the D1 definition to mean
+		 * "runtime suspended" vs. what you would normally expect (D3)
+		 * to distinguish it from notifications that might be sent via
+		 * the suspend path.
+		 */
+		intel_opregion_notify_adapter(display, PCI_D1);
+	}
+
+	if (!display->platform.valleyview && !display->platform.cherryview)
+		intel_hpd_poll_enable(display);
+}
+
+void intel_display_driver_pm_runtime_resume_early(struct intel_display *display)
+{
+	intel_opregion_notify_adapter(display, PCI_D0);
+
+	intel_display_power_runtime_resume(display);
+}
+
+void intel_display_driver_pm_runtime_resume(struct intel_display *display)
+{
+	/*
+	 * On VLV/CHV display interrupts are part of the display
+	 * power well, so hpd is reinitialized from there. For
+	 * everyone else do it here.
+	 */
+	if (!display->platform.valleyview && !display->platform.cherryview) {
+		intel_hpd_init(display);
+		intel_hpd_poll_disable(display);
+	}
+
+	skl_watermark_ipc_update(display);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index 7eca3d17dd82..1b494337d629 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -43,5 +43,10 @@ void intel_display_driver_suspend_access(struct intel_display *display);
 void intel_display_driver_resume_access(struct intel_display *display);
 bool intel_display_driver_check_access(struct intel_display *display);
 
+void intel_display_driver_pm_runtime_suspend(struct intel_display *display);
+void intel_display_driver_pm_runtime_suspend_late(struct intel_display *display);
+void intel_display_driver_pm_runtime_resume_early(struct intel_display *display);
+void intel_display_driver_pm_runtime_resume(struct intel_display *display);
+
 #endif /* __INTEL_DISPLAY_DRIVER_H__ */
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 6b9e1b268a89..519a519d2d96 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1521,7 +1521,7 @@ static int i915_pm_runtime_suspend(struct device *kdev)
 	for_each_gt(gt, dev_priv, i)
 		intel_uncore_suspend(gt->uncore);
 
-	intel_display_power_runtime_suspend(display);
+	intel_display_driver_pm_runtime_suspend(display);
 
 	ret = vlv_suspend_complete(dev_priv);
 	if (ret) {
@@ -1555,33 +1555,9 @@ static int i915_pm_runtime_suspend(struct device *kdev)
 	if (root_pdev)
 		pci_d3cold_disable(root_pdev);
 
-	/*
-	 * FIXME: We really should find a document that references the arguments
-	 * used below!
-	 */
-	if (IS_BROADWELL(dev_priv)) {
-		/*
-		 * On Broadwell, if we use PCI_D1 the PCH DDI ports will stop
-		 * being detected, and the call we do at i915_pm_runtime_resume()
-		 * won't be able to restore them. Since PCI_D3hot matches the
-		 * actual specification and appears to be working, use it.
-		 */
-		intel_opregion_notify_adapter(display, PCI_D3hot);
-	} else {
-		/*
-		 * current versions of firmware which depend on this opregion
-		 * notification have repurposed the D1 definition to mean
-		 * "runtime suspended" vs. what you would normally expect (D3)
-		 * to distinguish it from notifications that might be sent via
-		 * the suspend path.
-		 */
-		intel_opregion_notify_adapter(display, PCI_D1);
-	}
-
 	assert_forcewakes_inactive(&dev_priv->uncore);
 
-	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv))
-		intel_hpd_poll_enable(display);
+	intel_display_driver_pm_runtime_suspend_late(display);
 
 	drm_dbg(&dev_priv->drm, "Device suspended\n");
 	return 0;
@@ -1605,8 +1581,6 @@ static int i915_pm_runtime_resume(struct device *kdev)
 	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm->wakeref_count));
 	disable_rpm_wakeref_asserts(rpm);
 
-	intel_opregion_notify_adapter(display, PCI_D0);
-
 	root_pdev = pcie_find_root_port(pdev);
 	if (root_pdev)
 		pci_d3cold_enable(root_pdev);
@@ -1615,7 +1589,7 @@ static int i915_pm_runtime_resume(struct device *kdev)
 		drm_dbg(&dev_priv->drm,
 			"Unclaimed access during suspend, bios?\n");
 
-	intel_display_power_runtime_resume(display);
+	intel_display_driver_pm_runtime_resume_early(display);
 
 	ret = vlv_resume_prepare(dev_priv, true);
 
@@ -1633,17 +1607,7 @@ static int i915_pm_runtime_resume(struct device *kdev)
 
 	intel_pxp_runtime_resume(dev_priv->pxp);
 
-	/*
-	 * On VLV/CHV display interrupts are part of the display
-	 * power well, so hpd is reinitialized from there. For
-	 * everyone else do it here.
-	 */
-	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv)) {
-		intel_hpd_init(display);
-		intel_hpd_poll_disable(display);
-	}
-
-	skl_watermark_ipc_update(display);
+	intel_display_driver_pm_runtime_resume(display);
 
 	enable_rpm_wakeref_asserts(rpm);
 
-- 
2.47.3

