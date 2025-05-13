Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7CDAB548B
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 14:17:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0FBA10E5A1;
	Tue, 13 May 2025 12:17:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zy/PwuFa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3CA210E59D;
 Tue, 13 May 2025 12:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747138646; x=1778674646;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Vombe9TppTQnZGlx/bNwJaZQz2AR3NqL4tSw2NX/H9E=;
 b=Zy/PwuFaCTXCG3nUDlQdK2YzjhQ1XGP5iEjIMvCTVcDxMND40AtE15+8
 GaDzbqaY5iy7XDD1JGSxptsMEdGVaIFWAQuaimiUy78dYL1QOgyPZwiHf
 +JMwUpYF64wU8rO6ELsM6SPrvIPyN9HbiQ4qEh/OWfypZJVk1YJbMT1SN
 d/I2Kkl1UGGQ84zWDnsFvOqp1UgHmgFZU5V4ZJL2EiorXOgkUK9O9fEYj
 YZXWOBadkEZKv1TW6UuREvHXGWa5BXUXm5HDL85gWIR9RRh1HBnE2s72I
 006BhF8Z8jx+phLtXPkTxtjR8rnccSn9sYplMuH63yhTjfYpTSyw9nBbX g==;
X-CSE-ConnectionGUID: g+lpsOpcT0OqMB4m5EiPzA==
X-CSE-MsgGUID: 3MfwbexxSiOCYdCfQiKAJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="48235889"
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="48235889"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 05:17:26 -0700
X-CSE-ConnectionGUID: vUNkVFAdR+mCMEyCO5vVSg==
X-CSE-MsgGUID: 5fY/EPHRT4uWleu/kjjg+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="138205810"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 05:17:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/8] drm/i915/sbi: move sbi_lock under struct intel_display
Date: Tue, 13 May 2025 15:17:02 +0300
Message-Id: <9f5b4933ae99fddb2ed8b3041e2e66d2a256b109.1747138550.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747138550.git.jani.nikula@intel.com>
References: <cover.1747138550.git.jani.nikula@intel.com>
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
index b4937e102360..6c822de055f0 100644
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
index 0666acfd5a10..b5d601ce63f6 100644
--- a/drivers/gpu/drm/i915/display/intel_sbi.c
+++ b/drivers/gpu/drm/i915/display/intel_sbi.c
@@ -18,7 +18,7 @@ static int intel_sbi_rw(struct intel_display *display, u16 reg,
 	struct intel_uncore *uncore = &i915->uncore;
 	u32 cmd;
 
-	lockdep_assert_held(&i915->sbi_lock);
+	lockdep_assert_held(&display->sbi.lock);
 
 	if (intel_wait_for_register_fw(uncore,
 				       SBI_CTL_STAT, SBI_BUSY, 0,
@@ -58,16 +58,12 @@ static int intel_sbi_rw(struct intel_display *display, u16 reg,
 
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
@@ -88,14 +84,10 @@ void intel_sbi_write(struct intel_display *display, u16 reg, u32 value,
 
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
index 93b4c504b710..6002806d4a3b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -224,9 +224,6 @@ struct drm_i915_private {
 
 	bool irqs_enabled;
 
-	/* LPT/WPT IOSF sideband protection */
-	struct mutex sbi_lock;
-
 	/* VLV/CHV IOSF sideband */
 	struct {
 		struct mutex lock; /* protect sideband access */
-- 
2.39.5

