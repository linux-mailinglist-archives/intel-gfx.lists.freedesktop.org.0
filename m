Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CtwO0WVHmrElAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 10:33:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A6C62A97A
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 10:33:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CDCB11392E;
	Tue,  2 Jun 2026 08:33:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bAvP6hCp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A98F611392D;
 Tue,  2 Jun 2026 08:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780389186; x=1811925186;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=A0dZKpxfn/Qntsj1klHT8f+RpzGSU7y4FrcRkgT1uFA=;
 b=bAvP6hCpSLb7a4ZDE5CIi8m6Gaao3a2o/p1t82Z2VrIJwmQolddPSnxP
 kZiJbTwX31PwSWopcY7wCdYfcGDdSMf0bFC/QzGc8T5EQel5FMrY0ua8B
 EsPK7JecdrE9VA2oP3M2Hrt2qeWMes6O7ya8471xFRC3TT/7R9+ub191c
 CSTpHI8A7pDeKi/+jXK5+HyvjI6Ze7oVZjxKZEyLwnRwe3l1Rpw4fsQzv
 DSoCdzdAnFgHRLSTjCoZxCWEGijLrozh7jVRJm4VWx8duNZk18OF+fKeq
 Goit3azXOYMLBmqJqgzVY6wtKveSwsCh554GmxRhK69oN1AH0L4011+S8 w==;
X-CSE-ConnectionGUID: 2BYPzBJASvmoQqOGd31AOQ==
X-CSE-MsgGUID: 1AS60nYERDi6BzfmGRc9RA==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="81196478"
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="81196478"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 01:33:06 -0700
X-CSE-ConnectionGUID: RiRwzViCTLmek+jyUpBdAA==
X-CSE-MsgGUID: HlSEIJC7T5SRrP/ztKtWZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="245649515"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.253])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 01:33:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, imre.deak@intel.com, jani.nikula@intel.com
Subject: [CI 02/12] drm/xe/display: rename xe_display_pm_shutdown*() to
 xe_display_shutdown*()
Date: Tue,  2 Jun 2026 11:32:42 +0300
Message-ID: <8d5b5aa92cff77a99b3687c231a50ec576d6f37e.1780389001.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: A3A6C62A97A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The shutdown functions get called from the struct pci_driver .shutdown
hook, not through the struct dev_pm_ops hooks. Name accordingly,
dropping the "pm" from the name, even if shutdown has a lot of
similarities with suspend.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c |  4 ++--
 drivers/gpu/drm/xe/display/xe_display.h | 10 ++++++----
 drivers/gpu/drm/xe/xe_device.c          |  4 ++--
 3 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index d1c450a18713..3567b3018083 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -326,7 +326,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
 	intel_dmc_suspend(display);
 }
 
-void xe_display_pm_shutdown(struct xe_device *xe)
+void xe_display_shutdown(struct xe_device *xe)
 {
 	struct intel_display *display = xe->display;
 
@@ -400,7 +400,7 @@ void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
 	intel_dmc_wl_flush_release_work(display);
 }
 
-void xe_display_pm_shutdown_late(struct xe_device *xe)
+void xe_display_shutdown_late(struct xe_device *xe)
 {
 	struct intel_display *display = xe->display;
 
diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
index 60291cb154df..e5f9aed93206 100644
--- a/drivers/gpu/drm/xe/display/xe_display.h
+++ b/drivers/gpu/drm/xe/display/xe_display.h
@@ -29,15 +29,16 @@ int xe_display_init(struct xe_device *xe);
 void xe_display_register(struct xe_device *xe);
 void xe_display_unregister(struct xe_device *xe);
 
+void xe_display_shutdown(struct xe_device *xe);
+void xe_display_shutdown_late(struct xe_device *xe);
+
 void xe_display_irq_handler(struct xe_device *xe, u32 master_ctl);
 void xe_display_irq_enable(struct xe_device *xe, u32 gu_misc_iir);
 void xe_display_irq_reset(struct xe_device *xe);
 void xe_display_irq_postinstall(struct xe_device *xe);
 
 void xe_display_pm_suspend(struct xe_device *xe);
-void xe_display_pm_shutdown(struct xe_device *xe);
 void xe_display_pm_suspend_late(struct xe_device *xe);
-void xe_display_pm_shutdown_late(struct xe_device *xe);
 void xe_display_pm_resume_early(struct xe_device *xe);
 void xe_display_pm_resume(struct xe_device *xe);
 void xe_display_pm_runtime_suspend(struct xe_device *xe);
@@ -65,15 +66,16 @@ static inline int xe_display_init(struct xe_device *xe) { return 0; }
 static inline void xe_display_register(struct xe_device *xe) {}
 static inline void xe_display_unregister(struct xe_device *xe) {}
 
+static inline void xe_display_shutdown(struct xe_device *xe) {}
+static inline void xe_display_shutdown_late(struct xe_device *xe) {}
+
 static inline void xe_display_irq_handler(struct xe_device *xe, u32 master_ctl) {}
 static inline void xe_display_irq_enable(struct xe_device *xe, u32 gu_misc_iir) {}
 static inline void xe_display_irq_reset(struct xe_device *xe) {}
 static inline void xe_display_irq_postinstall(struct xe_device *xe) {}
 
 static inline void xe_display_pm_suspend(struct xe_device *xe) {}
-static inline void xe_display_pm_shutdown(struct xe_device *xe) {}
 static inline void xe_display_pm_suspend_late(struct xe_device *xe) {}
-static inline void xe_display_pm_shutdown_late(struct xe_device *xe) {}
 static inline void xe_display_pm_resume_early(struct xe_device *xe) {}
 static inline void xe_display_pm_resume(struct xe_device *xe) {}
 static inline void xe_display_pm_runtime_suspend(struct xe_device *xe) {}
diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index 69498aef3cd9..51e3a2dd7b22 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -1128,14 +1128,14 @@ void xe_device_shutdown(struct xe_device *xe)
 
 	drm_dbg(&xe->drm, "Shutting down device\n");
 
-	xe_display_pm_shutdown(xe);
+	xe_display_shutdown(xe);
 
 	xe_irq_suspend(xe);
 
 	for_each_gt(gt, xe, id)
 		xe_gt_shutdown(gt);
 
-	xe_display_pm_shutdown_late(xe);
+	xe_display_shutdown_late(xe);
 
 	if (!xe_driver_flr_disabled(xe)) {
 		/* BOOM! */
-- 
2.47.3

