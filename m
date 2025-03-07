Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBEFA565D1
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 11:53:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE2DA10EB58;
	Fri,  7 Mar 2025 10:53:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MCOTaicd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88F7410EB5F;
 Fri,  7 Mar 2025 10:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741344784; x=1772880784;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gt+xl1iyRAaHoSJ+W2dy/uvvWiEhefMaEUNHxo6BEFI=;
 b=MCOTaicdZtNZnTyhLBLGPqxjV0x6XduJWjgyEXpIQc2yHm3oNRpLurS/
 JCTMWCvDo4Re10WtPoW3qzGw2177PmUBp1FC78OYXPeii2fNDv9P+8jct
 J04KuD4FL5o3VATjthraBNq7wf4KDsfb2Qhde4gtZ7t4X4vbUCc1q1lcW
 sg0lE5cmfkE/lEZZaWZi3fGF9AMHBfNBBdcuQJt7WeceriHczp6Cv7erj
 uZFvzwvcXIhyVgQOz2j18S5kFi53L6kPIvJ4ywf5RcoAgIUwRawdJAmVG
 uz55jSG34aZS2FxcRM0Ysw94nsYv9Gg6lUOwnNerSM2gTgHFRvEDmJgP/ g==;
X-CSE-ConnectionGUID: JdBSdO3zRAa296FiAzWIeA==
X-CSE-MsgGUID: /Wi1xgUeQTO/VqaZOdmWCw==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42301660"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="42301660"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:53:04 -0800
X-CSE-ConnectionGUID: 9736kw6YRWO1Q/DWuuz3sA==
X-CSE-MsgGUID: ComR16AKSPiuqwakGFW/+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="123481636"
Received: from mlehtone-mobl.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.100])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:53:03 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [RFC PATCH 10/11] drm/i915/display: Rename
 intel_psr_needs_block_dc_vblank
Date: Fri,  7 Mar 2025 12:52:36 +0200
Message-ID: <20250307105237.2909849-11-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250307105237.2909849-1-jouni.hogander@intel.com>
References: <20250307105237.2909849-1-jouni.hogander@intel.com>
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
index 62fbdcbb4a12..833f8227da80 100644
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
index 3d203a2003f1..4f3fdfacbc1b 100644
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
index 2782b84b0d12..74aa7ba34fda 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2352,15 +2352,17 @@ void intel_psr_resume(struct intel_dp *intel_dp)
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

