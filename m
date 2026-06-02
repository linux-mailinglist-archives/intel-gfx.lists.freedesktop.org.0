Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AM2TCEKVHmrElAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 10:33:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4E762A972
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 10:33:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E44B11392C;
	Tue,  2 Jun 2026 08:33:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dWVM0QsK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C37AB11392A;
 Tue,  2 Jun 2026 08:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780389183; x=1811925183;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pnylgrIYdQdO1cI7cgrZH1+bo5tCjmSDbEQ9VBY7H2Q=;
 b=dWVM0QsKdYXa5gRXXExPska58eBG6VMpvbtcTl9CeCdYI+Q4YvFjJ5HX
 AE/yU3eLDTiaQhweCGr+KwdIsQ1S69eVRapbjpYGMDDhmIQyCxFn4+fZq
 rtXVu6sSUQZlnQTzFiTeIfUnVNbQCidlbVpQN+46JMepZ32TJXmjvxiA0
 Rltb3RqjXJ2G8fbOnbDjMrXorgp5Jl0lTHIqjv+WW7YyXg4QUlHlXVTkd
 crMJt8JD36Qe8IpDwYfp7HWR3HKuy0Ng5MrLn/fBe91cAzb9X/WVpeJWa
 WSFDUgfDTZlNP1IlyI1ioGHDYwrm+TFoPUXst4u/UUbauOU2sXHrk/ZNx Q==;
X-CSE-ConnectionGUID: 1ZbML2olRSmXRiV7wzA/uQ==
X-CSE-MsgGUID: i+/3VfaoSAWe2ndS6nldwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="81196473"
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="81196473"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 01:33:02 -0700
X-CSE-ConnectionGUID: /3nzuG/5RPWE309tGlRHxw==
X-CSE-MsgGUID: fYo3RXddTEyvzS7eDQtP+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="245649507"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.253])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 01:33:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, imre.deak@intel.com, jani.nikula@intel.com
Subject: [CI 01/12] drm/i915/display: add "pm" to
 intel_display_driver_{suspend, resume}() names
Date: Tue,  2 Jun 2026 11:32:41 +0300
Message-ID: <b4dd07b6375752900f583d56eda16a1c2a0b1e49.1780389001.git.jani.nikula@intel.com>
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
	NEURAL_HAM(-0.00)[-0.419];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: AC4E762A972
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Start naming the functions that are supposed to be called from the
struct dem_pm_ops hooks with intel_display_driver_pm_*() to distinguish
them better from the rest.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c |  4 ++--
 drivers/gpu/drm/i915/display/intel_display_driver.h |  5 +++--
 drivers/gpu/drm/i915/i915_driver.c                  | 12 ++++++------
 drivers/gpu/drm/xe/display/xe_display.c             |  6 +++---
 4 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index d0729936f681..9be4c94740dc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -678,7 +678,7 @@ void intel_display_driver_unregister(struct intel_display *display)
  * turn all crtc's off, but do not adjust state
  * This has to be paired with a call to intel_modeset_setup_hw_state.
  */
-int intel_display_driver_suspend(struct intel_display *display)
+int intel_display_driver_pm_suspend(struct intel_display *display)
 {
 	struct drm_atomic_commit *state;
 	int ret;
@@ -741,7 +741,7 @@ __intel_display_driver_resume(struct intel_display *display,
 	return ret;
 }
 
-void intel_display_driver_resume(struct intel_display *display)
+void intel_display_driver_pm_resume(struct intel_display *display)
 {
 	struct drm_atomic_commit *state = display->restore.modeset_state;
 	struct drm_modeset_acquire_ctx ctx;
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index 5270c26a32e0..d8a08ca68d4e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -24,8 +24,9 @@ void intel_display_driver_remove(struct intel_display *display);
 void intel_display_driver_remove_noirq(struct intel_display *display);
 void intel_display_driver_remove_nogem(struct intel_display *display);
 void intel_display_driver_unregister(struct intel_display *display);
-int intel_display_driver_suspend(struct intel_display *display);
-void intel_display_driver_resume(struct intel_display *display);
+
+int intel_display_driver_pm_suspend(struct intel_display *display);
+void intel_display_driver_pm_resume(struct intel_display *display);
 
 /* interface for intel_display_reset.c */
 int __intel_display_driver_resume(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 60d5e06675ab..bd73d64c1ccb 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1114,10 +1114,10 @@ static int i915_drm_prepare(struct drm_device *dev)
 	intel_pxp_suspend_prepare(i915->pxp);
 
 	/*
-	 * NB intel_display_driver_suspend() may issue new requests after we've
-	 * ostensibly marked the GPU as ready-to-sleep here. We need to
-	 * split out that work and pull it forward so that after point,
-	 * the GPU is not woken again.
+	 * NB intel_display_driver_pm_suspend() may issue new requests after
+	 * we've ostensibly marked the GPU as ready-to-sleep here. We need to
+	 * split out that work and pull it forward so that after point, the GPU
+	 * is not woken again.
 	 */
 	return i915_gem_backup_suspend(i915);
 }
@@ -1139,7 +1139,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 		intel_display_driver_disable_user_access(display);
 	}
 
-	intel_display_driver_suspend(display);
+	intel_display_driver_pm_suspend(display);
 
 	intel_encoder_block_all_hpds(display);
 
@@ -1325,7 +1325,7 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_encoder_unblock_all_hpds(display);
 
-	intel_display_driver_resume(display);
+	intel_display_driver_pm_resume(display);
 
 	if (intel_display_device_present(display)) {
 		intel_display_driver_enable_user_access(display);
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 8d55e7a37d6d..d1c450a18713 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -309,7 +309,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
 	if (intel_display_device_present(display)) {
 		drm_kms_helper_poll_disable(&xe->drm);
 		intel_display_driver_disable_user_access(display);
-		intel_display_driver_suspend(display);
+		intel_display_driver_pm_suspend(display);
 	}
 
 	intel_encoder_block_all_hpds(display);
@@ -339,7 +339,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 	if (intel_display_device_present(display)) {
 		drm_kms_helper_poll_disable(&xe->drm);
 		intel_display_driver_disable_user_access(display);
-		intel_display_driver_suspend(display);
+		intel_display_driver_pm_suspend(display);
 	}
 
 	intel_encoder_block_all_hpds(display);
@@ -447,7 +447,7 @@ void xe_display_pm_resume(struct xe_device *xe)
 	intel_encoder_unblock_all_hpds(display);
 
 	if (intel_display_device_present(display)) {
-		intel_display_driver_resume(display);
+		intel_display_driver_pm_resume(display);
 		intel_display_driver_enable_user_access(display);
 		drm_kms_helper_poll_enable(&xe->drm);
 	}
-- 
2.47.3

