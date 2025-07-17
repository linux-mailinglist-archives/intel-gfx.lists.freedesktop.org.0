Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 147CFB0886D
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 10:52:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CD6110E28D;
	Thu, 17 Jul 2025 08:52:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QB0SdhoP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7303210E156;
 Thu, 17 Jul 2025 08:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752742359; x=1784278359;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gUluMFArTqIartWxKEAbhxtPpT3jrHjwluB6IX7k2PU=;
 b=QB0SdhoP1qm7SHUEnwGeYx+BEkOECeQC/LYkR9SQp/LJWgzBjYMKTCam
 WlDdaa1u8cZwtKROTnb0iXvsHQZCn6vSHbowOscm14Yiv4TjB5AjWk++T
 V78vTIi/LpuKuZBUzeRuroHusFyw2kU2y4zmtVT9hOJgqY3d5mTWgSain
 qiZOoev0nssF99UPet2K0CDkYFo9Tj7PgAeLmX2I4fQVAnFjaOpgKtscE
 umaydujsDXqiwIhTvcQ2TNAvuYyQIuEtLZfnc0bmbpdV++HoH8CNE7+6k
 gdWdz25982ZI1ymigaUYdmzw9ZIyrIpLRTCc/p4b5MTpYwsZ5bBy5SuwS A==;
X-CSE-ConnectionGUID: 6HwqdP8JSwGr5ERT9LFPSw==
X-CSE-MsgGUID: 3nZwGzaFTtOdDF5Wg/3rtw==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="54116845"
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="54116845"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 01:52:39 -0700
X-CSE-ConnectionGUID: L022XyQkQIquVnVJa3pBcA==
X-CSE-MsgGUID: H6v/2U+xSpynPnGi5rOskg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="163378943"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 01:52:37 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	uma.shankar@intel.com,
	imre.deak@intel.com
Subject: [PATCH] drm/xe/display: Block hpd during suspend
Date: Thu, 17 Jul 2025 14:24:25 +0530
Message-ID: <20250717085425.1347043-1-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
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

It has been observed that during `xe_display_pm_suspend()` execution,
an HPD interrupt can still be triggered, resulting in `dig_port_work`
being scheduled. The issue arises when this work executes after
`xe_display_pm_suspend_late()`, by which time the display is fully
suspended.

This can lead to errors such as "DC state mismatch", as the dig_port
work accesses display resources that are no longer available or
powered.

To address this, introduce  'intel_hpd_block_all_encoders()' and
'intel_hpd_unblock_all_encoders()' functions, which iterate over all
encoders and block/unblock HPD respectively.

These are used to:
- Block HPD IRQs before calling 'intel_hpd_cancel_work' in suspend
- Unblock HPD IRQs after 'intel_hpd_init' in resume

This will prevent 'dig_port_work' being scheduled during display
suspend.

Continuation of previous patch discussion:
https://patchwork.freedesktop.org/patch/663964/

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 24 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_hotplug.h |  2 ++
 drivers/gpu/drm/xe/display/xe_display.c      |  4 ++++
 3 files changed, 28 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 265aa97fcc75..7ffd8ded1c26 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -223,6 +223,28 @@ queue_detection_work(struct intel_display *display, struct work_struct *work)
 	return queue_work(display->wq.unordered, work);
 }
 
+void intel_hpd_unblock_all_encoders(struct intel_display *display)
+{
+	struct intel_encoder *encoder;
+
+	if (!HAS_DISPLAY(display))
+		return;
+
+	for_each_intel_encoder(display->drm, encoder)
+		intel_hpd_unblock(encoder);
+}
+
+void intel_hpd_block_all_encoders(struct intel_display *display)
+{
+	struct intel_encoder *encoder;
+
+	if (!HAS_DISPLAY(display))
+		return;
+
+	for_each_intel_encoder(display->drm, encoder)
+		intel_hpd_block(encoder);
+}
+
 static void
 intel_hpd_irq_storm_switch_to_polling(struct intel_display *display)
 {
@@ -971,8 +993,6 @@ void intel_hpd_cancel_work(struct intel_display *display)
 
 	spin_lock_irq(&display->irq.lock);
 
-	drm_WARN_ON(display->drm, get_blocked_hpd_pin_mask(display));
-
 	display->hotplug.long_hpd_pin_mask = 0;
 	display->hotplug.short_hpd_pin_mask = 0;
 	display->hotplug.event_bits = 0;
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/drm/i915/display/intel_hotplug.h
index edc41c9d3d65..3938c93d2385 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.h
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
@@ -34,5 +34,7 @@ void intel_hpd_debugfs_register(struct intel_display *display);
 void intel_hpd_enable_detection_work(struct intel_display *display);
 void intel_hpd_disable_detection_work(struct intel_display *display);
 bool intel_hpd_schedule_detection(struct intel_display *display);
+void intel_hpd_block_all_encoders(struct intel_display *display);
+void intel_hpd_unblock_all_encoders(struct intel_display *display);
 
 #endif /* __INTEL_HOTPLUG_H__ */
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index e2e0771cf274..51584ea3ed09 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -340,6 +340,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
 
 	xe_display_flush_cleanup_work(xe);
 
+	intel_hpd_block_all_encoders(display);
+
 	intel_hpd_cancel_work(display);
 
 	if (has_display(xe)) {
@@ -471,6 +473,8 @@ void xe_display_pm_resume(struct xe_device *xe)
 
 	intel_hpd_init(display);
 
+	intel_hpd_unblock_all_encoders(display);
+
 	if (has_display(xe)) {
 		intel_display_driver_resume(display);
 		drm_kms_helper_poll_enable(&xe->drm);
-- 
2.43.0

