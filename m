Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F190A87CE7
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 12:05:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC24410E566;
	Mon, 14 Apr 2025 10:05:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TTio2/fA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 226ED10E55B;
 Mon, 14 Apr 2025 10:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744625144; x=1776161144;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2gBNtFKaJD0t9dLcbmxOCPgf26EZg7sMLTwWVg0IFGc=;
 b=TTio2/fAU3q71qzhjl4Q79fwSoFEiJuSq7ja8SPeQCXlTdqCnj2Ov0et
 LDSnVOdTxQmwS4Ptoup7zz4O9LYW8Fx5CEKg4bOXfPGtuD3sZ0yH68hnV
 Hcv8O0fFLHG135KeCkR4Dc2w7MerPtAatnq3R/3hI8qjgfH52GxZgCRfj
 SCkvgRpDJAhPuAt0+g8zUUVzDnSmUx51EuMWWoZOFto2NeESjiB5LqkAl
 YVFhuQ9A4g8Zw3qZEYfwsPlDC1CAKXV0XAUszDJWQvDj9ZugVIfXYcDMu
 VdJH85TNuF8+mvNVD9Qt2NIuYLI35uKShyW13Ve61xKm8GmZreH8lffS8 Q==;
X-CSE-ConnectionGUID: evQaKT1lT8ui7NOB/6EaiQ==
X-CSE-MsgGUID: FG4HrLwCTgmbXCNY5QCzAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="48789134"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="48789134"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:05:44 -0700
X-CSE-ConnectionGUID: BPcfd6pHRvS8eQjYMlwyBA==
X-CSE-MsgGUID: jS6n7kVJSxiOoqxisd5IJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="129743227"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.194])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:05:43 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v3 13/13] drm/i915/display: Rename vblank DC workaround
 functions and variables
Date: Mon, 14 Apr 2025 13:05:08 +0300
Message-ID: <20250414100508.1208774-14-jouni.hogander@intel.com>
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

We have extended using vblank DC workaround mechanism for
Wa_16025596647. Rename related functions and variables:

vblank_wa_num_pipes -> vblank_enable_count
vblank_dc_work -> vblank_notify_work
intel_display_vblank_dc_work -> intel_display_vblank_notify_work

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c     |  2 +-
 .../gpu/drm/i915/display/intel_display_core.h |  4 ++--
 .../gpu/drm/i915/display/intel_display_irq.c  | 19 ++++++++++---------
 3 files changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index bdf30ab96396..537859630363 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -156,7 +156,7 @@ void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state)
 
 	crtc->vblank_psr_notify = false;
 
-	flush_work(&display->irq.vblank_dc_work);
+	flush_work(&display->irq.vblank_notify_work);
 }
 
 struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc *crtc)
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 650ab055e148..613af57abd1b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -470,9 +470,9 @@ struct intel_display {
 		/* For i915gm/i945gm vblank irq workaround */
 		u8 vblank_enabled;
 
-		int vblank_wa_num_pipes;
+		int vblank_enable_count;
 
-		struct work_struct vblank_dc_work;
+		struct work_struct vblank_notify_work;
 
 		u32 de_irq_mask[I915_MAX_PIPES];
 		u32 pipestat_irq_mask[I915_MAX_PIPES];
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 7d301f9eb960..240cbed5f9e2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1701,13 +1701,13 @@ static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
 	return true;
 }
 
-static void intel_display_vblank_dc_work(struct work_struct *work)
+static void intel_display_vblank_notify_work(struct work_struct *work)
 {
 	struct intel_display *display =
-		container_of(work, typeof(*display), irq.vblank_dc_work);
-	int vblank_wa_num_pipes = READ_ONCE(display->irq.vblank_wa_num_pipes);
+		container_of(work, typeof(*display), irq.vblank_notify_work);
+	int vblank_enable_count = READ_ONCE(display->irq.vblank_enable_count);
 
-	intel_psr_notify_vblank_enable_disable(display, vblank_wa_num_pipes);
+	intel_psr_notify_vblank_enable_disable(display, vblank_enable_count);
 }
 
 int bdw_enable_vblank(struct drm_crtc *_crtc)
@@ -1721,8 +1721,8 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
 	if (gen11_dsi_configure_te(crtc, true))
 		return 0;
 
-	if (crtc->vblank_psr_notify && display->irq.vblank_wa_num_pipes++ == 0)
-		schedule_work(&display->irq.vblank_dc_work);
+	if (crtc->vblank_psr_notify && display->irq.vblank_enable_count++ == 0)
+		schedule_work(&display->irq.vblank_notify_work);
 
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
 	bdw_enable_pipe_irq(display, pipe, GEN8_PIPE_VBLANK);
@@ -1752,8 +1752,8 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
 	bdw_disable_pipe_irq(display, pipe, GEN8_PIPE_VBLANK);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
 
-	if (crtc->vblank_psr_notify && --display->irq.vblank_wa_num_pipes == 0)
-		schedule_work(&display->irq.vblank_dc_work);
+	if (crtc->vblank_psr_notify && --display->irq.vblank_enable_count == 0)
+		schedule_work(&display->irq.vblank_notify_work);
 }
 
 static u32 vlv_dpinvgtt_pipe_fault_mask(enum pipe pipe)
@@ -2320,5 +2320,6 @@ void intel_display_irq_init(struct intel_display *display)
 
 	intel_hotplug_irq_init(display);
 
-	INIT_WORK(&display->irq.vblank_dc_work, intel_display_vblank_dc_work);
+	INIT_WORK(&display->irq.vblank_notify_work,
+		  intel_display_vblank_notify_work);
 }
-- 
2.43.0

