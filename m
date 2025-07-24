Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB2EB103B5
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jul 2025 10:38:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3033D10E249;
	Thu, 24 Jul 2025 08:37:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BRg14A4I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6964710E249;
 Thu, 24 Jul 2025 08:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753346279; x=1784882279;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EfZrCAgs5m1xFLRx6wyw4U+1lNZ+LmGaLTxkJK/3n6U=;
 b=BRg14A4I61ilvnFmALsgKlnUSxFl4rSpB0QkYEHywgQxzV3rvQ/XmAxq
 t3hYa6An8LUz+vAxBpvIfU5lQFyxwHDmybGDvMLVWF7d88Z+TJ2NT+cXD
 xXycbsez4QZSZ63bKa6ap8YkriBfp6vytUt8e4XQfA5vBYten4MlHJfVb
 4E3pxhqytNnZWMMQ1d/j4WvOikWWtK399Eq5v45cLZNGbWeo78/hzLgfk
 5qtaWRfmOqrbA9lalNybqrJb2cnC+L+9X2Dy43JvCSBfVZRgwWleQjPXS
 Ur6TaWA4Yalw8aL+r118xSdj/UjL4H9qqcRf5CqHLag1wvMOPW7DWuIB9 g==;
X-CSE-ConnectionGUID: 23sATYKdSb+f83xM11NSxQ==
X-CSE-MsgGUID: ormvjNDpT0awnj92WfHX/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="78189661"
X-IronPort-AV: E=Sophos;i="6.16,336,1744095600"; d="scan'208";a="78189661"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 01:37:58 -0700
X-CSE-ConnectionGUID: klNQkqtWTaeu9xOOCWLDew==
X-CSE-MsgGUID: ASbqpn2ARrCqq5hAL+W5cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,336,1744095600"; d="scan'208";a="164335720"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 01:37:57 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, imre.deak@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [PATCH v3] drm/xe/display: Block hpd during suspend
Date: Thu, 24 Jul 2025 14:09:27 +0530
Message-ID: <20250724083928.2298199-1-dibin.moolakadan.subrahmanian@intel.com>
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
 - Add 'intel_encoder_block_all_hpds' to 'xe_display_pm_shutdown'.(Imre
   Deak)
 - Add 'intel_hpd_cancel_work' to 'xe_display_fini_early' to cancel
   any HPD pending work at late driver removal. (Imre Deak)

Changes in v3:
 - Move 'intel_encoder_block_all_hpds' after intel_dp_mst_suspend
   in 'xe_display_pm_shutdown'.(Imre Deak)

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
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
index e2e0771cf274..8b68d70db6c8 100644
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
@@ -370,6 +373,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 
 	xe_display_flush_cleanup_work(xe);
 	intel_dp_mst_suspend(display);
+	intel_encoder_block_all_hpds(display);
 	intel_hpd_cancel_work(display);
 
 	if (has_display(xe))
@@ -471,6 +475,8 @@ void xe_display_pm_resume(struct xe_device *xe)
 
 	intel_hpd_init(display);
 
+	intel_encoder_unblock_all_hpds(display);
+
 	if (has_display(xe)) {
 		intel_display_driver_resume(display);
 		drm_kms_helper_poll_enable(&xe->drm);
-- 
2.43.0

