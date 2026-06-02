Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGKlC1SVHmrPlAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 10:33:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D56C262A997
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 10:33:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 644B5113935;
	Tue,  2 Jun 2026 08:33:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A4XozIMm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19C3B11392A;
 Tue,  2 Jun 2026 08:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780389201; x=1811925201;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JL/WgDilLNieNWIodbHbqLAnzeUKIqalSEbPDjrR8Pc=;
 b=A4XozIMmRAE4CStqyXLKXl6f0nhzkQ+IccKkkD9vubJ3XXwGJPI733mW
 BepmA6D1ICtBgJ5NvJHR2vgYvxtFe0pFF3Crl5zZWAtrBhVFk6koutGGF
 refIkpZbzgsBRcUYo2LQ1Yt6Hq/O3LZiBu56knL/vmaE8aI3se5UTIlup
 ZKcCan3YGwNMADsWOjX348nj6Cuu1Z07ekp1ekQFG+G0/c0BQWv2Qp6QZ
 YXeTZ+KRif1BjOHxXBjBR1obFrlL0U8t268IxQ8oC4KuUmMJHElLf71X2
 EjZpnB5SG95kVnoYW6NPkSXERbrZYfeZ43vhR5espKQn1mQUeu16NQ9BW A==;
X-CSE-ConnectionGUID: stF1Q7brQOqdckUsgHhTfg==
X-CSE-MsgGUID: Wo/I328dTZ6dCCwnr9ecnQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="85056641"
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="85056641"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 01:33:21 -0700
X-CSE-ConnectionGUID: J+YrHHcISUOVzh4z3Z8gHg==
X-CSE-MsgGUID: Lxf7keGvTWy4QjmtwvagXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="281953269"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.253])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 01:33:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, imre.deak@intel.com, jani.nikula@intel.com
Subject: [CI 05/12] drm/{i915,
 xe}: move more calls inside intel_display_driver_pm_suspend()
Date: Tue,  2 Jun 2026 11:32:45 +0300
Message-ID: <82cfac0b966a8a82c8cf85e6b7b050223b7d5e33.1780389001.git.jani.nikula@intel.com>
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
	NEURAL_HAM(-0.00)[-0.412];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: D56C262A997
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The intel_display_driver_pm_suspend() calls are surrounded by near
identical display calls. Move the calls inside
intel_display_driver_pm_suspend().

There's a slight functional change in that
intel_display_driver_pm_suspend() returns early for
!HAS_DISPLAY(). Assume this is what we want, and there are no cases
where display engine is present but all pipes have been fused off.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   | 11 ++++++++++
 drivers/gpu/drm/i915/i915_driver.c            |  9 --------
 drivers/gpu/drm/xe/display/xe_display.c       | 22 ++-----------------
 3 files changed, 13 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 9be4c94740dc..41a2244985fa 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -686,6 +686,17 @@ int intel_display_driver_pm_suspend(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return 0;
 
+	/*
+	 * We do a lot of poking in a lot of registers, make sure they work
+	 * properly.
+	 */
+	intel_display_power_disable(display);
+
+	drm_client_dev_suspend(display->drm);
+
+	drm_kms_helper_poll_disable(display->drm);
+	intel_display_driver_disable_user_access(display);
+
 	state = drm_atomic_helper_suspend(display->drm);
 	ret = PTR_ERR_OR_ZERO(state);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index bd73d64c1ccb..f161723f653e 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1130,15 +1130,6 @@ static int i915_drm_suspend(struct drm_device *dev)
 
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
-	/* We do a lot of poking in a lot of registers, make sure they work
-	 * properly. */
-	intel_display_power_disable(display);
-	drm_client_dev_suspend(dev);
-	if (intel_display_device_present(display)) {
-		drm_kms_helper_poll_disable(dev);
-		intel_display_driver_disable_user_access(display);
-	}
-
 	intel_display_driver_pm_suspend(display);
 
 	intel_encoder_block_all_hpds(display);
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 38ebcc2b712a..027db7b6ceb5 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -198,14 +198,7 @@ void xe_display_shutdown(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	intel_display_power_disable(display);
-	drm_client_dev_suspend(&xe->drm);
-
-	if (intel_display_device_present(display)) {
-		drm_kms_helper_poll_disable(&xe->drm);
-		intel_display_driver_disable_user_access(display);
-		intel_display_driver_pm_suspend(display);
-	}
+	intel_display_driver_pm_suspend(display);
 
 	intel_encoder_block_all_hpds(display);
 	intel_hpd_cancel_work(display);
@@ -297,18 +290,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	/*
-	 * We do a lot of poking in a lot of registers, make sure they work
-	 * properly.
-	 */
-	intel_display_power_disable(display);
-	drm_client_dev_suspend(&xe->drm);
-
-	if (intel_display_device_present(display)) {
-		drm_kms_helper_poll_disable(&xe->drm);
-		intel_display_driver_disable_user_access(display);
-		intel_display_driver_pm_suspend(display);
-	}
+	intel_display_driver_pm_suspend(display);
 
 	intel_encoder_block_all_hpds(display);
 
-- 
2.47.3

