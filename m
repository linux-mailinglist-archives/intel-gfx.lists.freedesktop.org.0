Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58200A6450B
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Mar 2025 09:19:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BADE210E3C1;
	Mon, 17 Mar 2025 08:19:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HzPa1hOK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5289710E029;
 Mon, 17 Mar 2025 08:19:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742199572; x=1773735572;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ShJr0kmpX/MHJx8/Y1tS3APs/1iirlSYrzEvhtXLFSw=;
 b=HzPa1hOKlhbKoUlIkoty2izxV4/1zvA1rXiPT6Y1yKvNSZdEDcNYW7ML
 AjQMhEPZv+wtjpJOhNrnEwOQjrogkkKjBiJmZDoKv9jesoL27nWAc2JU3
 wokMlvp0Oaq38M4oZxXFvRtqlEqFejuPUcSiO0UqCyMzrfvGWQPSl8TWa
 nvlTmicq67zrxBiaG88AZC/Biq2Odw9/VMwPTZM2bVFED0f3/4Ad1HHtv
 idhHnJ/Vj35NbkbVsX45UlA+vq3Sl5VoWyj+QgUHAkia6OqRZEv44pfc8
 eOVssfKNQ2b/3zsg7KEavZxTVmoZ3mq3VQgfF25bUdOOWf6DQmDIZw0bU Q==;
X-CSE-ConnectionGUID: jBEZ1RnLS+GQikP6rEjFAQ==
X-CSE-MsgGUID: /0yWRpeXR6GtYehfy77D1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11375"; a="54653524"
X-IronPort-AV: E=Sophos;i="6.14,253,1736841600"; d="scan'208";a="54653524"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 01:19:31 -0700
X-CSE-ConnectionGUID: lnzeMx2IRduKCJPnxycn3w==
X-CSE-MsgGUID: f+W9bnavRkShrCeHarVBKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,253,1736841600"; d="scan'208";a="121677172"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.231])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 01:19:29 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 10/11] drm/i915/display: Rename
 intel_psr_needs_block_dc_vblank
Date: Mon, 17 Mar 2025 10:19:04 +0200
Message-ID: <20250317081905.3683654-11-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250317081905.3683654-1-jouni.hogander@intel.com>
References: <20250317081905.3683654-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Scope of intel_psr_needs_block_dc_vblank has changed now. Rename it as
intel_psr_needs_vblank_notification. Also rename
intel_crtc::block_dc_for_vblank as intel_crtc:vblank_psr_notify

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c          | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_irq.c   | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_types.h | 2 +-
 drivers/gpu/drm/i915/display/intel_psr.c           | 8 +++++---
 drivers/gpu/drm/i915/display/intel_psr.h           | 2 +-
 5 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 5b2603ef2ff75..bdf30ab963967 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -124,7 +124,7 @@ void intel_crtc_vblank_on(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	crtc->block_dc_for_vblank = intel_psr_needs_block_dc_vblank(crtc_state);
+	crtc->vblank_psr_notify = intel_psr_needs_vblank_notification(crtc_state);
 
 	assert_vblank_disabled(&crtc->base);
 	drm_crtc_set_max_vblank_count(&crtc->base,
@@ -154,7 +154,7 @@ void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state)
 	drm_crtc_vblank_off(&crtc->base);
 	assert_vblank_disabled(&crtc->base);
 
-	crtc->block_dc_for_vblank = false;
+	crtc->vblank_psr_notify = false;
 
 	flush_work(&display->irq.vblank_dc_work);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 62fbdcbb4a123..833f8227da803 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1742,7 +1742,7 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
 	if (gen11_dsi_configure_te(crtc, true))
 		return 0;
 
-	if (crtc->block_dc_for_vblank && display->irq.vblank_wa_num_pipes++ == 0)
+	if (crtc->vblank_psr_notify && display->irq.vblank_wa_num_pipes++ == 0)
 		schedule_work(&display->irq.vblank_dc_work);
 
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
@@ -1773,7 +1773,7 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
 	bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
 
-	if (crtc->block_dc_for_vblank && --display->irq.vblank_wa_num_pipes == 0)
+	if (crtc->vblank_psr_notify && --display->irq.vblank_wa_num_pipes == 0)
 		schedule_work(&display->irq.vblank_dc_work);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 3d203a2003f10..4f3fdfacbc1b1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1440,7 +1440,7 @@ struct intel_crtc {
 	struct intel_pipe_crc pipe_crc;
 #endif
 
-	bool block_dc_for_vblank;
+	bool vblank_psr_notify;
 };
 
 struct intel_plane_error {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index d2a28a83e4f20..228996f1f26d2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2354,15 +2354,17 @@ void intel_psr_resume(struct intel_dp *intel_dp)
 }
 
 /**
- * intel_psr_needs_block_dc_vblank - Check if block dc entry is needed
+ * intel_psr_needs_vblank_notification - Check if PSR need vblank enable/disable
+ * notification.
  * @crtc_state: CRTC status
  *
  * We need to block DC6 entry in case of Panel Replay as enabling VBI doesn't
  * prevent it in case of Panel Replay. Panel Replay switches main link off on
  * DC entry. This means vblank interrupts are not fired and is a problem if
- * user-space is polling for vblank events.
+ * user-space is polling for vblank events. Also Wa_16025596647 needs
+ * information when vblank is enabled/disabled.
  */
-bool intel_psr_needs_block_dc_vblank(const struct intel_crtc_state *crtc_state)
+bool intel_psr_needs_vblank_notification(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_display *display = to_intel_display(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index a914b7ee3756a..c61384bb7382a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -59,7 +59,7 @@ void intel_psr2_program_trans_man_trk_ctl(struct intel_dsb *dsb,
 					  const struct intel_crtc_state *crtc_state);
 void intel_psr_pause(struct intel_dp *intel_dp);
 void intel_psr_resume(struct intel_dp *intel_dp);
-bool intel_psr_needs_block_dc_vblank(const struct intel_crtc_state *crtc_state);
+bool intel_psr_needs_vblank_notification(const struct intel_crtc_state *crtc_state);
 void intel_psr_notify_pipe_change(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc, bool enable);
 void intel_psr_notify_dc5_dc6(struct intel_display *display);
-- 
2.43.0

