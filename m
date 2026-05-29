Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id t5pqOOlyGWogwwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:05:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 601AE60148A
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:05:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C07E010FD43;
	Fri, 29 May 2026 11:05:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y4BoOB7T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C86D10FD3E;
 Fri, 29 May 2026 11:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780052710; x=1811588710;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fpxfvlbS92QVXJOkSE0sVaJsKhfK93ZhNRcy+zxPxDo=;
 b=Y4BoOB7TVHrSUEekMr6okHPeeXNVu58dTu8PLYl5TBwXPvjKwHlb7YMY
 zc1MGWYeylaz1Wnj3oOh1inT+Fj8FFbx3GrPNiO0M1fdPbFQPTv3gE9mf
 gk4YedpyqAmdaxUlWT6dALwFYMKNr5Hcdsa0ok2VxWay0EoPawtq7VP1d
 RptNQ2jyarf12jWaM8/Mg4k5GQuT0OzsH/UfK1cd2XuhjLiquqtdTYyR5
 3ZAT1bkoBMP9jm+bw2h+Y63NeI3sImyo5zh/jKhaFewyv4zpeyzYNRFYF
 UOpEQ4/rW7GMnfSrgplz/KyyHnYeh0iZhC2bwuvNiDSh6rZRbXZlftSH6 w==;
X-CSE-ConnectionGUID: 5o7tqUlnRCWHj6q9SrIU1g==
X-CSE-MsgGUID: YDBiLz3ZR/62GqX6FOhaeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="80629263"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="80629263"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:10 -0700
X-CSE-ConnectionGUID: 4DPWxZG+RdW+5XpiL5/PvQ==
X-CSE-MsgGUID: DZjknaGIS16/Hz1kXBxZ1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="236470885"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.147])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 12/24] drm/{i915,
 xe}: add intel_display_driver_pm_{suspend_late, resume_early}()
Date: Fri, 29 May 2026 14:03:56 +0300
Message-ID: <f1cb90066b6f28c0bb9f21cb6eefdcb42411cce8.1780051905.git.jani.nikula@intel.com>
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
	NEURAL_HAM(-0.00)[-0.970];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:email]
X-Rspamd-Queue-Id: 601AE60148A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add new functions intel_display_driver_pm_suspend_late() and
intel_display_driver_pm_resume_early(), to be called from the
corresponding struct dev_pm_ops hooks.

There's a slight functional change for !HAS_DISPLAY() in that the new
functions return early. Assume this is what we want, and there are no
cases where display engine is present but all pipes have been fused off.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_driver.c  | 16 ++++++++++++++++
 .../gpu/drm/i915/display/intel_display_driver.h  |  2 ++
 drivers/gpu/drm/i915/i915_driver.c               |  6 +++---
 drivers/gpu/drm/xe/display/xe_display.c          |  4 ++--
 4 files changed, 23 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index f362532c6834..77fa4497b442 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -714,6 +714,22 @@ int intel_display_driver_pm_suspend(struct intel_display *display)
 	return ret;
 }
 
+void intel_display_driver_pm_suspend_late(struct intel_display *display, bool s2idle)
+{
+	if (!HAS_DISPLAY(display))
+		return;
+
+	intel_display_power_suspend_late(display, s2idle);
+}
+
+void intel_display_driver_pm_resume_early(struct intel_display *display)
+{
+	if (!HAS_DISPLAY(display))
+		return;
+
+	intel_display_power_resume_early(display);
+}
+
 int
 __intel_display_driver_resume(struct intel_display *display,
 			      struct drm_atomic_commit *state,
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index d8a08ca68d4e..adfde02465ea 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -26,6 +26,8 @@ void intel_display_driver_remove_nogem(struct intel_display *display);
 void intel_display_driver_unregister(struct intel_display *display);
 
 int intel_display_driver_pm_suspend(struct intel_display *display);
+void intel_display_driver_pm_suspend_late(struct intel_display *display, bool s2idle);
+void intel_display_driver_pm_resume_early(struct intel_display *display);
 void intel_display_driver_pm_resume(struct intel_display *display);
 
 /* interface for intel_display_reset.c */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 063d4bdec2d9..6fd3e8b155b1 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1181,12 +1181,12 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 	for_each_gt(gt, dev_priv, i)
 		intel_uncore_suspend(gt->uncore);
 
-	intel_display_power_suspend_late(display, s2idle);
+	intel_display_driver_pm_suspend_late(display, s2idle);
 
 	ret = vlv_suspend_complete(dev_priv);
 	if (ret) {
 		drm_err(&dev_priv->drm, "Suspend complete failed: %d\n", ret);
-		intel_display_power_resume_early(display);
+		intel_display_driver_pm_resume_early(display);
 	}
 
 	enable_rpm_wakeref_asserts(rpm);
@@ -1345,7 +1345,7 @@ static int i915_drm_resume_early(struct drm_device *dev)
 	for_each_gt(gt, dev_priv, i)
 		intel_gt_resume_early(gt);
 
-	intel_display_power_resume_early(display);
+	intel_display_driver_pm_resume_early(display);
 
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index f34a9d2ffc16..bbd4f527d5e3 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -314,7 +314,7 @@ void xe_display_pm_suspend_late(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	intel_display_power_suspend_late(display, s2idle);
+	intel_display_driver_pm_suspend_late(display, s2idle);
 }
 
 void xe_display_pm_resume_early(struct xe_device *xe)
@@ -324,7 +324,7 @@ void xe_display_pm_resume_early(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	intel_display_power_resume_early(display);
+	intel_display_driver_pm_resume_early(display);
 }
 
 void xe_display_pm_resume(struct xe_device *xe)
-- 
2.47.3

