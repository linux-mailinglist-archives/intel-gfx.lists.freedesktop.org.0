Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91779A5CB9A
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 18:06:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27D2610E5FF;
	Tue, 11 Mar 2025 17:06:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HO6rdGSs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B5B810E5FF;
 Tue, 11 Mar 2025 17:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741712794; x=1773248794;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rf/5S1gnH4vDqfgTt9JLz8DeZDTW/N2HvsnKWXYJyQ8=;
 b=HO6rdGSsf86HxliCON0QdQPFHV6MjGHuEnCgGSFscQDDQpd/fHcX7xa7
 RIW+QoRp2I3tQf26GuR9z5vNK0asVy7TKVtoSDyvR2tKeOBsvBvOMz6uB
 vwxlG+TJl0nBOBX6QN54NVq0LHJ3jqjZKZf2LB3ve48unFYdy0QKqjtY4
 dikp/avG+sW7a7jeCNOznCkMUltE7VDVsxwCjFvZnsqgK1H1QJVIgWJfe
 xSKs0Ts69+SehM+uOF7lRzMOQ3MgEbUIc5oK3mqggsJSfJIw1Gd/tmvjs
 6Uid0p84JOkObzPqyjzIjTL0GB4wtqDVgx52qHv/h4Sv2cEnM9sdMkTg0 Q==;
X-CSE-ConnectionGUID: JW4rHUKyRcuNdlRddnhVVw==
X-CSE-MsgGUID: DgQ2iRCeTEmhNp1T7OLTbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="45547741"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="45547741"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:06:34 -0700
X-CSE-ConnectionGUID: BIIiQyJORRWeRQZro+hHnQ==
X-CSE-MsgGUID: stdcOnHyRaW33FZJlFjG0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="120889199"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:06:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RFC 3/7] drm/i915: convert i915 and xe display members into pointers
Date: Tue, 11 Mar 2025 19:06:10 +0200
Message-Id: <99e249858b4f55a2a188f1aff4a39b720d742a13.1741712601.git.jani.nikula@intel.com>
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

As the first step towards making struct intel_display an opaque pointer
in i915 and xe drivers, convert the struct drm_i915_private and struct
xe_device display members into pointers.

Initially, add temporary struct intel_display __display members, and
point display at it to avoid dynamic allocation. In follow-up, we can
drop this, and switch to dynamic allocation.

Note: This is just the manual parts. All the conversions all over the
place are scripted, and the results of that are in a separate patch for
now.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c      | 3 +++
 drivers/gpu/drm/i915/i915_drv.h         | 3 ++-
 drivers/gpu/drm/xe/display/xe_display.c | 3 +++
 drivers/gpu/drm/xe/xe_device_types.h    | 3 ++-
 4 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index ce3cc93ea211..fcddb18dfd82 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -754,6 +754,9 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* Set up device info and initial runtime info. */
 	intel_device_info_driver_create(i915, pdev->device, match_info);
 
+	/* Transitional. To be allocated dynamically. */
+	i915->display = &i915->__display;
+
 	intel_display_device_probe(pdev);
 
 	return i915;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ffc346379cc2..8ea147dd0fd8 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -179,7 +179,8 @@ struct i915_selftest_stash {
 struct drm_i915_private {
 	struct drm_device drm;
 
-	struct intel_display display;
+	struct intel_display *display;
+	struct intel_display __display; /* Transitional. Do not use. */
 
 	/* FIXME: Device release actions should all be moved to drmm_ */
 	bool do_release;
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 0b0aca7a25af..5e9c8aee5ef4 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -101,6 +101,9 @@ static void display_destroy(struct drm_device *dev, void *dummy)
  */
 int xe_display_create(struct xe_device *xe)
 {
+	/* Transitional. To be allocated dynamically. */
+	xe->display = &xe->__display;
+
 	spin_lock_init(&xe->display.fb_tracking.lock);
 
 	xe->display.hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 72ef0b6fc425..a7362c756caf 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -569,7 +569,8 @@ struct xe_device {
 	 * drm_i915_private during build. After cleanup these should go away,
 	 * migrating to the right sub-structs
 	 */
-	struct intel_display display;
+	struct intel_display *display;
+	struct intel_display __display; /* Transitional. Do not use. */
 	enum intel_pch pch_type;
 
 	struct dram_info {
-- 
2.39.5

