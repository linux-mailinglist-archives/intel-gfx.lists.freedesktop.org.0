Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8970CAC4C8F
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 12:59:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19FB610E494;
	Tue, 27 May 2025 10:59:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eaf0jkkf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE03D10E490;
 Tue, 27 May 2025 10:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748343572; x=1779879572;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D5r/0LIEr6WLoay5L68P8DsqTp8dgBBQCZ2CZxWYOto=;
 b=eaf0jkkfA142KyHy2M1Z7F01hl4Wt5WKcZcDev1EKtVIx0vaNqvDSHPe
 8804pDK5WXYT7211sKogY+mN1mVuvlHripn47sYYblcGgJsE0h7K+SGg2
 pTDBEEFx+HmDnTMSLkCEzywREAF4iHCUvn6w54tn02Fvp0I4v0NYB26Ei
 Y2XeWyauQm+TupMpVQod5SbWSa5zeJhfmvYAtj4wyaGbUpQ43hQBtliTP
 OmmIYICYweV8o2W4JZaSFqSexolhHWbpvvcZzWd0cyi72AjH3T5dqMUTz
 9ISQoycBNDi4JLSqjLk4jToGuAWCinbaoJwz7DsrPZ6AZshXforlcUGac A==;
X-CSE-ConnectionGUID: r9GVjU4eS2WZwrZwAr3TJw==
X-CSE-MsgGUID: OSZbDcBuT+yL7eNNp4/LfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11445"; a="72859858"
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="72859858"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 03:59:32 -0700
X-CSE-ConnectionGUID: dXc7JN9hRSeiSY0WDdFpeA==
X-CSE-MsgGUID: 9HwYkhoqSCmgq/X5OTORsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="142768856"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.119])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 03:59:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 3/8] drm/i915/sbi: move sbi_lock under struct intel_display
Date: Tue, 27 May 2025 13:59:09 +0300
Message-Id: <838fa712fc8a691a3f9427e5f4ed551bd1c62c49.1748343520.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1748343520.git.jani.nikula@intel.com>
References: <cover.1748343520.git.jani.nikula@intel.com>
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

With SBI under display, also move sbi_lock to display->sbi.lock.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h  |  5 +++++
 drivers/gpu/drm/i915/display/intel_sbi.c       | 18 +++++-------------
 drivers/gpu/drm/i915/i915_drv.h                |  3 ---
 3 files changed, 10 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 5f5dd2722d99..32cb0e59c81e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -538,6 +538,11 @@ struct intel_display {
 		u32 block_time_us;
 	} sagv;
 
+	struct {
+		/* LPT/WPT IOSF sideband protection */
+		struct mutex lock;
+	} sbi;
+
 	struct {
 		/*
 		 * DG2: Mask of PHYs that were not calibrated by the firmware
diff --git a/drivers/gpu/drm/i915/display/intel_sbi.c b/drivers/gpu/drm/i915/display/intel_sbi.c
index 4b97be7da5c3..198a1ad280e2 100644
--- a/drivers/gpu/drm/i915/display/intel_sbi.c
+++ b/drivers/gpu/drm/i915/display/intel_sbi.c
@@ -19,7 +19,7 @@ static int intel_sbi_rw(struct intel_display *display, u16 reg,
 	struct intel_uncore *uncore = &i915->uncore;
 	u32 cmd;
 
-	lockdep_assert_held(&i915->sbi_lock);
+	lockdep_assert_held(&display->sbi.lock);
 
 	if (intel_wait_for_register_fw(uncore,
 				       SBI_CTL_STAT, SBI_BUSY, 0,
@@ -59,16 +59,12 @@ static int intel_sbi_rw(struct intel_display *display, u16 reg,
 
 void intel_sbi_lock(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	mutex_lock(&i915->sbi_lock);
+	mutex_lock(&display->sbi.lock);
 }
 
 void intel_sbi_unlock(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	mutex_unlock(&i915->sbi_lock);
+	mutex_unlock(&display->sbi.lock);
 }
 
 u32 intel_sbi_read(struct intel_display *display, u16 reg,
@@ -89,14 +85,10 @@ void intel_sbi_write(struct intel_display *display, u16 reg, u32 value,
 
 void intel_sbi_init(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	mutex_init(&i915->sbi_lock);
+	mutex_init(&display->sbi.lock);
 }
 
 void intel_sbi_fini(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	mutex_destroy(&i915->sbi_lock);
+	mutex_destroy(&display->sbi.lock);
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b6c632bd522c..455548cbd820 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -223,9 +223,6 @@ struct drm_i915_private {
 
 	bool irqs_enabled;
 
-	/* LPT/WPT IOSF sideband protection */
-	struct mutex sbi_lock;
-
 	/* VLV/CHV IOSF sideband */
 	struct {
 		struct mutex lock; /* protect sideband access */
-- 
2.39.5

