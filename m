Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 503BDA5CBA2
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 18:06:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E022A10E632;
	Tue, 11 Mar 2025 17:06:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eFmhjyVP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C82B10E632;
 Tue, 11 Mar 2025 17:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741712806; x=1773248806;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iGPnQGP8F4LSSdFgvuD7QArdtph9lUsjUf5d5KbCjJM=;
 b=eFmhjyVPeMxITv72HogZDwnDC538oWZWlv4JSvA2+ECO8d2LAN5WdkIp
 iqdXdUMtbXBde+1dB6c+72MYBjUNeqgr5luwqQSZTDkFLC0E0cnLN/zjL
 E/HHbV1pazkP70yB7C3BfIm+8cotHiaTsY//n9X9FW0YhS/wHSLNSpadp
 +IiuEMX4NqcyzmRPgQvIuUFnDNMUz8cMKSVByJDn+ka1Q5KCQJIo6FYCN
 sv5Aqkb6uBj3p/04nNRXHEqrC+QvryMuryqpm/jeKWuEW90V0SpBNESbz
 5hYwSR9IDkRtMONtnIc+oErZt5gyd/Fam/S4tDw2au7Tws16B3SEACcm/ A==;
X-CSE-ConnectionGUID: iOnIvx64TMuy2+6EItHz4w==
X-CSE-MsgGUID: RvmfJvFVQdGgjJtBmgkN0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="45547759"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="45547759"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:06:46 -0700
X-CSE-ConnectionGUID: vJCY/nt/QaGNOoUgmfQFig==
X-CSE-MsgGUID: Z4S2l+BWTUq7+JxRUxVkWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="120889268"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:06:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RFC 5/7] drm/i915: allocate struct intel_display dynamically
Date: Tue, 11 Mar 2025 19:06:12 +0200
Message-Id: <b640706540a0897c1196a1e088e4fde321405adf.1741712601.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741712601.git.jani.nikula@intel.com>
References: <cover.1741712601.git.jani.nikula@intel.com>
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

A quick hack to allocate struct intel_display dynamically. No error
handling yet.

For xe, xe->display may be NULL for DRM_XE_DISPLAY=n or
xe.probe_display=n. This needs to be handled gracefully.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c      | 4 ++--
 drivers/gpu/drm/i915/i915_drv.h         | 1 -
 drivers/gpu/drm/xe/display/xe_display.c | 4 ++--
 drivers/gpu/drm/xe/xe_device_types.h    | 1 -
 4 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 5e190085041f..284fcbe3b2c4 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -754,8 +754,8 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* Set up device info and initial runtime info. */
 	intel_device_info_driver_create(i915, pdev->device, match_info);
 
-	/* Transitional. To be allocated dynamically. */
-	i915->display = &i915->__display;
+	/* FIXME: Error handling. */
+	i915->display = kzalloc(sizeof(struct intel_display), GFP_KERNEL);
 
 	intel_display_device_probe(pdev);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 8ea147dd0fd8..32d5cca0ffc6 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -180,7 +180,6 @@ struct drm_i915_private {
 	struct drm_device drm;
 
 	struct intel_display *display;
-	struct intel_display __display; /* Transitional. Do not use. */
 
 	/* FIXME: Device release actions should all be moved to drmm_ */
 	bool do_release;
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 7c2f85ce7d2d..258518e65bdc 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -101,8 +101,8 @@ static void display_destroy(struct drm_device *dev, void *dummy)
  */
 int xe_display_create(struct xe_device *xe)
 {
-	/* Transitional. To be allocated dynamically. */
-	xe->display = &xe->__display;
+	/* FIXME: Error handling. */
+	xe->display = kzalloc(sizeof(struct intel_display), GFP_KERNEL);
 
 	spin_lock_init(&xe->display->fb_tracking.lock);
 
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index a7362c756caf..454975cd3327 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -570,7 +570,6 @@ struct xe_device {
 	 * migrating to the right sub-structs
 	 */
 	struct intel_display *display;
-	struct intel_display __display; /* Transitional. Do not use. */
 	enum intel_pch pch_type;
 
 	struct dram_info {
-- 
2.39.5

