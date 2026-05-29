Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mFfCDApzGWoQwwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:05:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8FF6014EB
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:05:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 449A110FD6F;
	Fri, 29 May 2026 11:05:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ihbpKOIH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7620F10FD62;
 Fri, 29 May 2026 11:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780052743; x=1811588743;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H/dETC9T9ABw3LAOTIjpeKIAv80BZS2nDhdAim8oAMs=;
 b=ihbpKOIHCPgd7jGMSNeuWvuHYqi+33CIYC3i39d+I5X2O/bwdRV361ar
 /qauKxC6hSfaq8022BoaIrW5c7XFo6p0GI1SIze0tnLwAayuEl8YZXXeO
 WYexpt3qWm8djGYFrmGyTg7LyxnffZEidjD8xOS7v7v3FjJPntk7J1O+c
 pGYlHwaoSr0Wjp9eTi2AoKCD8a1ffxQxxu01v0yEcMNepRmVi7lf5anvB
 7qseAq3NU0nQR9uMsk+FzX4BY0/inPo3E+utmKPsguxPMVDugseniBfzX
 8cUFJCT87B61P2lZoCzaIaFskV7wSo+za9rMSly/RQ2t6Sjze/c6kCb0W Q==;
X-CSE-ConnectionGUID: segER0x1Q2KVznEa1sKI0g==
X-CSE-MsgGUID: fg04rqUJSfyipJIoJ6Mo3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="92015073"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="92015073"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:43 -0700
X-CSE-ConnectionGUID: MPuKskHeTEGlmdwEZG0GXg==
X-CSE-MsgGUID: UiI/n4a2RrWoyzYYKW/E2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="280942253"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.147])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 19/24] drm/{i915,
 xe}: make intel_dmc_suspend() part of display suspend/shutdown calls
Date: Fri, 29 May 2026 14:04:03 +0300
Message-ID: <96b661da7cec4ef7f9c0e5e140f59990659281cf.1780051905.git.jani.nikula@intel.com>
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
	NEURAL_HAM(-0.00)[-0.973];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: CF8FF6014EB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move the intel_dmc_suspend() calls from i915 and xe suspend and shutdown
hooks all the way down to a shared location in
__intel_display_driver_pm_suspend().

This is a change in the suspend/shutdown sequences, but hopefully one
without problems.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 2 ++
 drivers/gpu/drm/i915/i915_driver.c                  | 4 ----
 drivers/gpu/drm/xe/display/xe_display.c             | 4 ----
 3 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index bc632ac8c9b4..6cac36157bea 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -755,6 +755,8 @@ static int __intel_display_driver_pm_suspend(struct intel_display *display, bool
 
 	intel_encoder_suspend_all(display);
 
+	intel_dmc_suspend(display);
+
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 209ac512455d..40fc15017486 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1045,8 +1045,6 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 
 	intel_irq_suspend(i915);
 
-	intel_dmc_suspend(display);
-
 	i915_gem_suspend(i915);
 
 	/*
@@ -1117,8 +1115,6 @@ static int i915_drm_suspend(struct drm_device *dev)
 
 	dev_priv->suspend_count++;
 
-	intel_dmc_suspend(display);
-
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	i915_gem_drain_freed_objects(dev_priv);
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 561ec1ed6845..9416405667d8 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -198,8 +198,6 @@ void xe_display_shutdown(struct xe_device *xe)
 	intel_display_driver_shutdown(display);
 
 	intel_opregion_suspend(display, PCI_D3cold);
-
-	intel_dmc_suspend(display);
 }
 
 void xe_display_shutdown_late(struct xe_device *xe)
@@ -276,8 +274,6 @@ void xe_display_pm_suspend(struct xe_device *xe)
 	intel_display_driver_pm_suspend(display);
 
 	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
-
-	intel_dmc_suspend(display);
 }
 
 void xe_display_pm_suspend_late(struct xe_device *xe)
-- 
2.47.3

