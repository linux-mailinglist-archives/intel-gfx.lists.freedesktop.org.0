Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F3BB0EE6A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jul 2025 11:28:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 942B810E779;
	Wed, 23 Jul 2025 09:28:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c0TInMve";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68C0A10E774;
 Wed, 23 Jul 2025 09:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753262889; x=1784798889;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HhBoSOv9meeiAeflFWw2smPN+J+xVKlHe1zjqrg2KXA=;
 b=c0TInMvekO/oy/bIlgmqJ1lcrDUJOd5xyXECmtN5mGCtiaCbvzwx3dSB
 PdO4NyeujYkVTr4oX5ywNcsN8X94tUf17toMJx8q78/KM7jBM2/Qmwzf6
 KmBsCcM6okV+YYfLH+deqh77Boi/HpQj0ERCfZifoATVaz1fXOXmJfh8J
 wk6CHetAt7w4Yn4aqEuKa4DI36pkIpwKiOZda1bWPaSRlgj+uXwJ8oCOt
 q7g7KHDiCgZ7eRqbROvLat2vfbLmocrqBvdo42KqyrsKDuSb3NJko5Leh
 vuAwt061kuwt3oFETrtlRAyH0Y3j+rexVqdaJrZUFxNRlHNgxNjsZ6jlE Q==;
X-CSE-ConnectionGUID: /GVXCI27QiydvKIXycjaVw==
X-CSE-MsgGUID: Er/gqNcfTW2yTlRUx8DRoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="55638093"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="55638093"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 02:28:08 -0700
X-CSE-ConnectionGUID: HkNXp6tZTK+lwfwGVq0spw==
X-CSE-MsgGUID: zlbKJxGuRo2S7gio+19HbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="163926521"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 02:28:06 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	uma.shankar@intel.com,
	imre.deak@intel.com
Subject: [PATCH v2] drm/xe/display: Block hpd during suspend
Date: Wed, 23 Jul 2025 14:59:46 +0530
Message-ID: <20250723092946.1975018-1-dibin.moolakadan.subrahmanian@intel.com>
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

To address this, introduce  'intel_encoder_block_all_hpds' and
'intel_encoder_unblock_all_hpds' functions, which iterate over all
encoders and block/unblock HPD respectively.

These are used to:
- Block HPD IRQs before calling 'intel_hpd_cancel_work' in suspend
  and shutdown
- Unblock HPD IRQs after 'intel_hpd_init' in resume

This will prevent 'dig_port_work' being scheduled during display
suspend.

Continuation of previous patch discussion:
https://patchwork.freedesktop.org/patch/663964/

Changes in v2:
 - Add 'intel_encoder_block_all_hpds' to 'xe_display_pm_shutdown'
 - Add 'intel_hpd_cancel_work' to 'xe_display_fini_early' to cancel
   any HPD pending work at late driver removal

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_encoder.c | 23 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_encoder.h |  3 +++
 drivers/gpu/drm/i915/display/intel_hotplug.c |  2 --
 drivers/gpu/drm/xe/display/xe_display.c      |  6 +++++
 4 files changed, 32 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_encoder.c b/drivers/gpu/drm/i915/display/intel_encoder.c
index 0b7bd26f4339..4e2b77b87678 100644
--- a/drivers/gpu/drm/i915/display/intel_encoder.c
+++ b/drivers/gpu/drm/i915/display/intel_encoder.c
@@ -8,6 +8,7 @@
 #include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_encoder.h"
+#include "intel_hotplug.h"
 
 static void intel_encoder_link_check_work_fn(struct work_struct *work)
 {
@@ -37,6 +38,28 @@ void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, int dela
 			 &encoder->link_check_work, msecs_to_jiffies(delay_ms));
 }
 
+void intel_encoder_unblock_all_hpds(struct intel_display *display)
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
+void intel_encoder_block_all_hpds(struct intel_display *display)
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
 void intel_encoder_suspend_all(struct intel_display *display)
 {
 	struct intel_encoder *encoder;
diff --git a/drivers/gpu/drm/i915/display/intel_encoder.h b/drivers/gpu/drm/i915/display/intel_encoder.h
index 3fa5589f0b1c..e1d3aeab7c00 100644
--- a/drivers/gpu/drm/i915/display/intel_encoder.h
+++ b/drivers/gpu/drm/i915/display/intel_encoder.h
@@ -17,4 +17,7 @@ void intel_encoder_link_check_flush_work(struct intel_encoder *encoder);
 void intel_encoder_suspend_all(struct intel_display *display);
 void intel_encoder_shutdown_all(struct intel_display *display);
 
+void intel_encoder_block_all_hpds(struct intel_display *display);
+void intel_encoder_unblock_all_hpds(struct intel_display *display);
+
 #endif /* __INTEL_ENCODER_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 265aa97fcc75..c69b535497bf 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -971,8 +971,6 @@ void intel_hpd_cancel_work(struct intel_display *display)
 
 	spin_lock_irq(&display->irq.lock);
 
-	drm_WARN_ON(display->drm, get_blocked_hpd_pin_mask(display));
-
 	display->hotplug.long_hpd_pin_mask = 0;
 	display->hotplug.short_hpd_pin_mask = 0;
 	display->hotplug.event_bits = 0;
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index e2e0771cf274..9e984a045059 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -96,6 +96,7 @@ static void xe_display_fini_early(void *arg)
 	if (!xe->info.probe_display)
 		return;
 
+	intel_hpd_cancel_work(display);
 	intel_display_driver_remove_nogem(display);
 	intel_display_driver_remove_noirq(display);
 	intel_opregion_cleanup(display);
@@ -340,6 +341,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
 
 	xe_display_flush_cleanup_work(xe);
 
+	intel_encoder_block_all_hpds(display);
+
 	intel_hpd_cancel_work(display);
 
 	if (has_display(xe)) {
@@ -369,6 +372,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 	}
 
 	xe_display_flush_cleanup_work(xe);
+	intel_encoder_block_all_hpds(display);
 	intel_dp_mst_suspend(display);
 	intel_hpd_cancel_work(display);
 
@@ -471,6 +475,8 @@ void xe_display_pm_resume(struct xe_device *xe)
 
 	intel_hpd_init(display);
 
+	intel_encoder_unblock_all_hpds(display);
+
 	if (has_display(xe)) {
 		intel_display_driver_resume(display);
 		drm_kms_helper_poll_enable(&xe->drm);
-- 
2.43.0

