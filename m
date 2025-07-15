Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2556EB0513C
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jul 2025 07:50:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC35310E1AE;
	Tue, 15 Jul 2025 05:50:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SLrqA6kU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D92A710E1AE;
 Tue, 15 Jul 2025 05:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752558631; x=1784094631;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/dS9fctYpy3OsnFCiq5dXb2r6JRSB5ijRGnAc+zXhbg=;
 b=SLrqA6kUXXJqy7/PT17nHmZ0ytA1O3563OvNUVyO+zPI+vuRajmEZV0H
 sEU3Oy9n/lngdCFyM6yqay8wCaBtfb4tPKBlh8l64J9Cxi1Qdv0ZpBf4f
 isLZgAq2DdTRWhWvJNF6hmCDiAHLuWknfHvFM1wCWQEwPKWb7PFp2zhyB
 7cUcJvOrmfxas1/RLG4/fblZiHMazrOVBDRpDzpEq9vTd29/ct8Ll355m
 C1l3o1sXtF7OjsSjpyFoOuyj8CkyFEhX1QMJohbC7gnHnTCpEmXoN8piG
 owfh6qmSl08q7kXa1XpaVW9Nj+zHmtM6x04H/o22rqm93ixIX5SBZjpsH g==;
X-CSE-ConnectionGUID: MWzyHpd0SBKiHumq6aMsRQ==
X-CSE-MsgGUID: HmWgD4T+SgObltugkI8sXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="57375160"
X-IronPort-AV: E=Sophos;i="6.16,312,1744095600"; d="scan'208";a="57375160"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 22:50:30 -0700
X-CSE-ConnectionGUID: 8wZgNjOARJODmikunqJXtQ==
X-CSE-MsgGUID: r3hXqKRbSiW3gob8T0ZNkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,312,1744095600"; d="scan'208";a="157234461"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 22:50:28 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	uma.shankar@intel.com,
	imre.deak@intel.com
Subject: [PATCH] drm/xe/display: Avoid dig_port work during suspend
Date: Tue, 15 Jul 2025 11:22:19 +0530
Message-ID: <20250715055219.410193-1-dibin.moolakadan.subrahmanian@intel.com>
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

 To address this, introduce a new `ignore_dig_port` flag in the
 hotplug in structure. This flag is checked in the interrupt handler to
 prevent queuing of `dig_port_work` while the system is mid-suspend.
 This behavior is consistent with the existing approach of suppressing
 hotplug_work during suspend.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  3 +++
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 22 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_hotplug.h  |  2 ++
 drivers/gpu/drm/xe/display/xe_display.c       |  4 ++++
 4 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 8c226406c5cd..376682c53798 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -209,6 +209,9 @@ struct intel_hotplug {
 	 * cue to ignore the long HPDs and can be set / unset using debugfs.
 	 */
 	bool ignore_long_hpd;
+
+	/* Flag to ignore dig_port work , used in suspend*/
+	bool ignore_dig_port;
 };
 
 struct intel_vbt_data {
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 265aa97fcc75..b2891b7c3205 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -223,6 +223,26 @@ queue_detection_work(struct intel_display *display, struct work_struct *work)
 	return queue_work(display->wq.unordered, work);
 }
 
+void intel_hpd_ignore_dig_port_work(struct intel_display *display, bool value)
+{
+	if (!HAS_DISPLAY(display))
+		return;
+
+	spin_lock_irq(&display->irq.lock);
+	display->hotplug.ignore_dig_port = value;
+	spin_unlock_irq(&display->irq.lock);
+}
+
+bool intel_hpd_can_queue_dig_port(struct intel_display *display)
+{
+	if (!HAS_DISPLAY(display))
+		return FALSE;
+
+	lockdep_assert_held(&display->irq.lock);
+
+	return !display->hotplug.ignore_dig_port;
+}
+
 static void
 intel_hpd_irq_storm_switch_to_polling(struct intel_display *display)
 {
@@ -691,7 +711,7 @@ void intel_hpd_irq_handler(struct intel_display *display,
 	 * queue for otherwise the flush_work in the pageflip code will
 	 * deadlock.
 	 */
-	if (queue_dig)
+	if (queue_dig && intel_hpd_can_queue_dig_port(display))
 		queue_work(display->hotplug.dp_wq, &display->hotplug.dig_port_work);
 	if (queue_hp)
 		queue_delayed_detection_work(display,
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/drm/i915/display/intel_hotplug.h
index edc41c9d3d65..9dc40ec7074c 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.h
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
@@ -34,5 +34,7 @@ void intel_hpd_debugfs_register(struct intel_display *display);
 void intel_hpd_enable_detection_work(struct intel_display *display);
 void intel_hpd_disable_detection_work(struct intel_display *display);
 bool intel_hpd_schedule_detection(struct intel_display *display);
+void intel_hpd_ignore_dig_port_work(struct intel_display *display, bool value);
+bool intel_hpd_can_queue_dig_port(struct intel_display *display);
 
 #endif /* __INTEL_HOTPLUG_H__ */
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index e2e0771cf274..2db71bd07c9f 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -342,6 +342,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
 
 	intel_hpd_cancel_work(display);
 
+	intel_hpd_ignore_dig_port_work(display, 1);
+
 	if (has_display(xe)) {
 		intel_display_driver_suspend_access(display);
 		intel_encoder_suspend_all(display);
@@ -469,6 +471,8 @@ void xe_display_pm_resume(struct xe_device *xe)
 	if (has_display(xe))
 		intel_display_driver_resume_access(display);
 
+	intel_hpd_ignore_dig_port_work(display, 0);
+
 	intel_hpd_init(display);
 
 	if (has_display(xe)) {
-- 
2.43.0

