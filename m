Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPloNfJyGWoQwwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:05:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1E56014A7
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:05:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 534FF10FD3E;
	Fri, 29 May 2026 11:05:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cJectrPI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7E5A10FD40;
 Fri, 29 May 2026 11:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780052720; x=1811588720;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dqHBzRRYh+0k55XoKBZ19NgSJCPi0morkDp8ChvgTfk=;
 b=cJectrPIBr347ts5ik2WUDwcnJOAkOlFf9K2G54TWJsgZvwrDryPhTxT
 ewuLbgZgkoGIWY4Lnacks5ONDzbFUOXgCTK444EqG+n5SSttcA9H9FmzK
 BvxjP1tWOsRqoJk8J0wp8NCy3i4a6HC/j+nd+ZhieFWrMnRrwXJpT8JHM
 J59Yh16hezk69jVWJWmRuedF56IWpcghMCvjEq3+V9zqQEbD/X42cLK/m
 F0jUMUB2vJ6fAnuMa0TDWIerWiKwWg9ZZ0pxQQOUsOUYHMvg4APiYbH7h
 xQS/kXcGsdONPGZRR4/sF5Kynnp9xnS+ROzsEkwQBoSNGpXa/ldjeuoOQ g==;
X-CSE-ConnectionGUID: d1N76Kb6Sc2yMdCPUs56YQ==
X-CSE-MsgGUID: 1mtAnhJNTxiF59wLz9DCqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="92015019"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="92015019"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:20 -0700
X-CSE-ConnectionGUID: /jOFx0U5Qc+XHvrcNmGZBA==
X-CSE-MsgGUID: PQU/hXzOSyG1UU+qf4z4Lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="280942013"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.147])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 14/24] drm/{i915, xe}: add intel_display_driver_shutdown_late()
Date: Fri, 29 May 2026 14:03:58 +0300
Message-ID: <0738680bb4946b7296c703c5f3d07c382a68fc27.1780051905.git.jani.nikula@intel.com>
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
	NEURAL_HAM(-0.00)[-0.971];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:email]
X-Rspamd-Queue-Id: 8C1E56014A7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add new function intel_display_driver_shutdown_late() to be called
"later" in the struct pci_driver .shutdown hook.

There's a slight functional change in that
intel_display_driver_shutdown_late() returns early for
!HAS_DISPLAY(). Assume this is what we want, and there are no cases
where display engine is present but all pipes have been fused off.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_display_driver.h |  1 +
 drivers/gpu/drm/i915/i915_driver.c                  |  7 ++-----
 drivers/gpu/drm/xe/display/xe_display.c             |  7 +------
 4 files changed, 17 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 7fee9ef88224..7f2d191b9ef0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -681,6 +681,19 @@ void intel_display_driver_unregister(struct intel_display *display)
 	intel_vga_unregister(display);
 }
 
+void intel_display_driver_shutdown_late(struct intel_display *display)
+{
+	if (!HAS_DISPLAY(display))
+		return;
+
+	/*
+	 * The only requirement is to reboot with display DC states disabled,
+	 * for now leaving all display power wells in the INIT power domain
+	 * enabled.
+	 */
+	intel_display_power_driver_remove(display);
+}
+
 /*
  * turn all crtc's off, but do not adjust state
  * This has to be paired with a call to intel_modeset_setup_hw_state.
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index adfde02465ea..61515577758b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -24,6 +24,7 @@ void intel_display_driver_remove(struct intel_display *display);
 void intel_display_driver_remove_noirq(struct intel_display *display);
 void intel_display_driver_remove_nogem(struct intel_display *display);
 void intel_display_driver_unregister(struct intel_display *display);
+void intel_display_driver_shutdown_late(struct intel_display *display);
 
 int intel_display_driver_pm_suspend(struct intel_display *display);
 void intel_display_driver_pm_suspend_late(struct intel_display *display, bool s2idle);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index b637c4dedf1b..140c562a8627 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1073,17 +1073,14 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 	i915_gem_suspend(i915);
 
 	/*
-	 * The only requirement is to reboot with display DC states disabled,
-	 * for now leaving all display power wells in the INIT power domain
-	 * enabled.
-	 *
 	 * TODO:
 	 * - unify the pci_driver::shutdown sequence here with the
 	 *   pci_driver.driver.pm.poweroff,poweroff_late sequence.
 	 * - unify the driver remove and system/runtime suspend sequences with
 	 *   the above unified shutdown/poweroff sequence.
 	 */
-	intel_display_power_driver_remove(display);
+
+	intel_display_driver_shutdown_late(display);
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
 
 	intel_runtime_pm_driver_last_release(&i915->runtime_pm);
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index e17e05a8854c..fdc999c62bc9 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -219,12 +219,7 @@ void xe_display_shutdown_late(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	/*
-	 * The only requirement is to reboot with display DC states disabled,
-	 * for now leaving all display power wells in the INIT power domain
-	 * enabled.
-	 */
-	intel_display_power_driver_remove(display);
+	intel_display_driver_shutdown_late(display);
 }
 
 /* IRQ-related functions */
-- 
2.47.3

