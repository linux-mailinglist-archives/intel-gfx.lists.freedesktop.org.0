Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 886E5AB9BCD
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 14:17:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2184210EA9A;
	Fri, 16 May 2025 12:17:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lR7oD7gT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 850FB10EA9A;
 Fri, 16 May 2025 12:17:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747397855; x=1778933855;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xTARCBAKwEJQS92wocN//BjoxyecCu1VB7fLQo0G/4s=;
 b=lR7oD7gT2nf3SeqFD/GXjJu1zrxsRVKtlWYT9m9LlkqMHn1R9pvZdXLd
 TF843AvGxGMUW3oHsJQeaXDcqNP1vIOFxgGtpJaDku4ALUUQCu/ikEd5j
 TzOPAsRjwhnf9rD6g4v1t3P36HEqRF3h4dExBsxSFpdJSxbpZDjKjDpGd
 syHSM0PUwN/Xxp/P8Carik4kyFRBQ3qkdhfhR/VSiERfqYCgXxwvGV8tR
 MvDieKtN70hSVAl1TCenhQr3j4w5HAXt9sirV/vZrHltHtzhj4AW2H+7L
 Ih/1Twzjs8br65sLTQe7p3+yZZrwOzrFg9FZYZVEPBkW9nhpJp2+PdFgc g==;
X-CSE-ConnectionGUID: 2CTDVOgeR8W/t1mpVxqatg==
X-CSE-MsgGUID: Yuzj239EQ2G8p6wAe4oroA==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="74766572"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="74766572"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 05:17:35 -0700
X-CSE-ConnectionGUID: vBTjoq1HSPyWYtG8Q5qhZA==
X-CSE-MsgGUID: GJVp2L0CSi2X9n9L26PNUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="143568592"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.133])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 05:17:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 7/7] drm/xe/display: use xe->display to decide whether to do
 anything
Date: Fri, 16 May 2025 15:17:00 +0300
Message-Id: <945d2a987214044a81f4816684972961b772b45a.1747397638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747397638.git.jani.nikula@intel.com>
References: <cover.1747397638.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Since we only initialize xe->display when xe->info.probe_display, we can
use !xe->display to bail out early. This seems cleaner and more accurate
than relying on xe->info.probe_display, since xe->display may indeed be
NULL.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 40 ++++++++++++-------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 8b2aa7dc6e07..1e59b6dd2c3b 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -92,7 +92,7 @@ static void xe_display_fini_early(void *arg)
 	struct xe_device *xe = arg;
 	struct intel_display *display = xe->display;
 
-	if (!xe->info.probe_display)
+	if (!display)
 		return;
 
 	intel_display_driver_remove_nogem(display);
@@ -106,7 +106,7 @@ int xe_display_init_early(struct xe_device *xe)
 	struct intel_display *display = xe->display;
 	int err;
 
-	if (!xe->info.probe_display)
+	if (!display)
 		return 0;
 
 	/* Fake uncore lock */
@@ -160,7 +160,7 @@ int xe_display_init(struct xe_device *xe)
 	struct intel_display *display = xe->display;
 	int err;
 
-	if (!xe->info.probe_display)
+	if (!display)
 		return 0;
 
 	err = intel_display_driver_probe(display);
@@ -174,7 +174,7 @@ void xe_display_register(struct xe_device *xe)
 {
 	struct intel_display *display = xe->display;
 
-	if (!xe->info.probe_display)
+	if (!display)
 		return;
 
 	intel_display_driver_register(display);
@@ -185,7 +185,7 @@ void xe_display_unregister(struct xe_device *xe)
 {
 	struct intel_display *display = xe->display;
 
-	if (!xe->info.probe_display)
+	if (!display)
 		return;
 
 	intel_power_domains_disable(display);
@@ -198,7 +198,7 @@ void xe_display_irq_handler(struct xe_device *xe, u32 master_ctl)
 {
 	struct intel_display *display = xe->display;
 
-	if (!xe->info.probe_display)
+	if (!display)
 		return;
 
 	if (master_ctl & DISPLAY_IRQ)
@@ -209,7 +209,7 @@ void xe_display_irq_enable(struct xe_device *xe, u32 gu_misc_iir)
 {
 	struct intel_display *display = xe->display;
 
-	if (!xe->info.probe_display)
+	if (!display)
 		return;
 
 	if (gu_misc_iir & GU_MISC_GSE)
@@ -220,7 +220,7 @@ void xe_display_irq_reset(struct xe_device *xe)
 {
 	struct intel_display *display = xe->display;
 
-	if (!xe->info.probe_display)
+	if (!display)
 		return;
 
 	gen11_display_irq_reset(display);
@@ -230,7 +230,7 @@ void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt)
 {
 	struct intel_display *display = xe->display;
 
-	if (!xe->info.probe_display)
+	if (!display)
 		return;
 
 	if (gt->info.id == XE_GT0)
@@ -271,7 +271,7 @@ static void xe_display_enable_d3cold(struct xe_device *xe)
 {
 	struct intel_display *display = xe->display;
 
-	if (!xe->info.probe_display)
+	if (!display)
 		return;
 
 	/*
@@ -294,7 +294,7 @@ static void xe_display_disable_d3cold(struct xe_device *xe)
 {
 	struct intel_display *display = xe->display;
 
-	if (!xe->info.probe_display)
+	if (!display)
 		return;
 
 	intel_dmc_resume(display);
@@ -319,7 +319,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
 	struct intel_display *display = xe->display;
 	bool s2idle = suspend_to_idle();
 
-	if (!xe->info.probe_display)
+	if (!display)
 		return;
 
 	/*
@@ -353,7 +353,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 {
 	struct intel_display *display = xe->display;
 
-	if (!xe->info.probe_display)
+	if (!display)
 		return;
 
 	intel_power_domains_disable(display);
@@ -384,7 +384,7 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe)
 {
 	struct intel_display *display = xe->display;
 
-	if (!xe->info.probe_display)
+	if (!display)
 		return;
 
 	if (xe->d3cold.allowed) {
@@ -400,7 +400,7 @@ void xe_display_pm_suspend_late(struct xe_device *xe)
 	struct intel_display *display = xe->display;
 	bool s2idle = suspend_to_idle();
 
-	if (!xe->info.probe_display)
+	if (!display)
 		return;
 
 	intel_display_power_suspend_late(display, s2idle);
@@ -410,7 +410,7 @@ void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
 {
 	struct intel_display *display = xe->display;
 
-	if (!xe->info.probe_display)
+	if (!display)
 		return;
 
 	if (xe->d3cold.allowed)
@@ -428,7 +428,7 @@ void xe_display_pm_shutdown_late(struct xe_device *xe)
 {
 	struct intel_display *display = xe->display;
 
-	if (!xe->info.probe_display)
+	if (!display)
 		return;
 
 	/*
@@ -443,7 +443,7 @@ void xe_display_pm_resume_early(struct xe_device *xe)
 {
 	struct intel_display *display = xe->display;
 
-	if (!xe->info.probe_display)
+	if (!display)
 		return;
 
 	intel_display_power_resume_early(display);
@@ -453,7 +453,7 @@ void xe_display_pm_resume(struct xe_device *xe)
 {
 	struct intel_display *display = xe->display;
 
-	if (!xe->info.probe_display)
+	if (!display)
 		return;
 
 	intel_dmc_resume(display);
@@ -488,7 +488,7 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
 {
 	struct intel_display *display = xe->display;
 
-	if (!xe->info.probe_display)
+	if (!display)
 		return;
 
 	if (xe->d3cold.allowed) {
-- 
2.39.5

