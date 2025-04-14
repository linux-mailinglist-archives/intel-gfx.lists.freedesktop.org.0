Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23021A87CE4
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 12:05:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDE9710E559;
	Mon, 14 Apr 2025 10:05:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fydaQYm2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DE0310E559;
 Mon, 14 Apr 2025 10:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744625142; x=1776161142;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+/QQKPmtJmfxrQMYJouTgouhtwHqIpBTv2H4lrQqGkw=;
 b=fydaQYm2v0gaZKez2FSyMssO2IJMbFhauwi0YIPZPWSOzCYYrV0daHO2
 3AvhdhXlMfnIy7QTi816/hEA+pOUSTYSMAEsxSRpfIRE3Ed9DWwDR/5Hz
 OdBOlsH32Ns5lBKFaq8Jrlv7KiHK0bt3VY4PFpFU7V3vCCkhUdcSSnsiG
 3ad++HNF/I+ZGH/W3tp5J6v+y9R9yop3tUdjRGl0dkwXVszg8wgFN/Jmh
 Z3uDM/1hyaGq0HGn5NdeepbuQ++/hfcp37lqYy6GMzlJq2gnldlWQdLHy
 PGh95DdJFyvbw4ykCO9J2pOlr0ZOA/+I5tNba7yTylBhGU0DGchRyRrUy g==;
X-CSE-ConnectionGUID: TdNo0O3yRj2EatoZifbt5w==
X-CSE-MsgGUID: I5lckNxSTtSNIa7Zp4Cl1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="48789132"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="48789132"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:05:42 -0700
X-CSE-ConnectionGUID: LrSstV5XQlGkhVzcltDkWw==
X-CSE-MsgGUID: YL3p4TucQH2P9oDt4GeLGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="129743222"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.194])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:05:41 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v3 12/13] drm/i915/display: Rename
 intel_psr_needs_block_dc_vblank
Date: Mon, 14 Apr 2025 13:05:07 +0300
Message-ID: <20250414100508.1208774-13-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250414100508.1208774-1-jouni.hogander@intel.com>
References: <20250414100508.1208774-1-jouni.hogander@intel.com>
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
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c          | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_irq.c   | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_types.h | 2 +-
 drivers/gpu/drm/i915/display/intel_psr.c           | 8 +++++---
 drivers/gpu/drm/i915/display/intel_psr.h           | 2 +-
 5 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 5b2603ef2ff7..bdf30ab96396 100644
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
index ab68fe675a51..7d301f9eb960 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1721,7 +1721,7 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
 	if (gen11_dsi_configure_te(crtc, true))
 		return 0;
 
-	if (crtc->block_dc_for_vblank && display->irq.vblank_wa_num_pipes++ == 0)
+	if (crtc->vblank_psr_notify && display->irq.vblank_wa_num_pipes++ == 0)
 		schedule_work(&display->irq.vblank_dc_work);
 
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
@@ -1752,7 +1752,7 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
 	bdw_disable_pipe_irq(display, pipe, GEN8_PIPE_VBLANK);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
 
-	if (crtc->block_dc_for_vblank && --display->irq.vblank_wa_num_pipes == 0)
+	if (crtc->vblank_psr_notify && --display->irq.vblank_wa_num_pipes == 0)
 		schedule_work(&display->irq.vblank_dc_work);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0e2945aa6057..ee84c1215e54 100644
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
index ae60a9d346cd..127eec4272fd 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2325,15 +2325,17 @@ void intel_psr_resume(struct intel_dp *intel_dp)
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
index a914b7ee3756..c61384bb7382 100644
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

