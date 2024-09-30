Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E1B989ADA
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 08:48:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CE5810E051;
	Mon, 30 Sep 2024 06:48:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="btHOcbIn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 858BC10E051
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2024 06:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727678893; x=1759214893;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZwYI4YTsVVVDPVX/1HUUQYrjGaJfQVELFfPbndqd5YY=;
 b=btHOcbInloG7gy8yAqIHr9u2iI6OYLtdtQc/bxpMrJhHjGjmsG8oCnUX
 LdJjxUtp4UcMozuPX1Ms0vUKtPAvF1BCGu0HN+u9ic5wB9UCJScCc/sQ/
 j4EurctLaRzvNm1oKW+Ir3K3WiWi9UC0+M2hqDLGAEUCd1vxZVFqNNmv+
 vh+FO3p++p2GcwrXN9D7VQl9ksFFtyj4iClVeHrezpIYfGc4N81lIb6XO
 DQTBRUYGT/+/C/OSccd+4vhdHlB+QhzwHGa4rLgp4pkEXtNQhzuWiXs2y
 ZZ4NjBl/+Fb6opMAurU5U3stpQ8mnc2D9v4SSF1f58xzjbg54/WQx9+v/ w==;
X-CSE-ConnectionGUID: VWOplcgPRyeWq8LnFGd21g==
X-CSE-MsgGUID: YYdk46iMSdCLiOs1YT9Mvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="14376361"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="14376361"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2024 23:48:13 -0700
X-CSE-ConnectionGUID: LIJ6kjy7Qy6Zqf+S92Dxjw==
X-CSE-MsgGUID: iMp6CK0uRMiHSBGN+8Y9iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="73064496"
Received: from ettammin-desk.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.213])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2024 23:48:12 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 1/2] drm/i915/display: Add own counter for Panel Replay vblank
 workaround
Date: Mon, 30 Sep 2024 09:47:51 +0300
Message-Id: <20240930064752.1602148-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
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

We are about to change meaning of vblank_enabled to fix Panel Replay vblank
workaround. For sake of clarity we need to rename it. Vblank_enabled is
used for i915gm/i945gm vblank irq workaround as well -> instead of rename
add new counter named as vblank_wa_pipes.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h | 2 ++
 drivers/gpu/drm/i915/display/intel_display_irq.c  | 8 ++++----
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 982dd94691954..aff06bbf62c90 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -455,6 +455,8 @@ struct intel_display {
 		/* For i915gm/i945gm vblank irq workaround */
 		u8 vblank_enabled;
 
+		u8 vblank_wa_pipes;
+
 		struct work_struct vblank_dc_work;
 
 		u32 de_irq_mask[I915_MAX_PIPES];
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 6878dde85031c..d71f4b0ee7357 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1365,7 +1365,7 @@ static void intel_display_vblank_dc_work(struct work_struct *work)
 	struct intel_display *display =
 		container_of(work, typeof(*display), irq.vblank_dc_work);
 	struct drm_i915_private *i915 = to_i915(display->drm);
-	u8 vblank_enabled = READ_ONCE(display->irq.vblank_enabled);
+	u8 vblank_wa_pipes = READ_ONCE(display->irq.vblank_wa_pipes);
 
 	/*
 	 * NOTE: intel_display_power_set_target_dc_state is used only by PSR
@@ -1373,7 +1373,7 @@ static void intel_display_vblank_dc_work(struct work_struct *work)
 	 * PSR code. If DC3CO is taken into use we need take that into account
 	 * here as well.
 	 */
-	intel_display_power_set_target_dc_state(i915, vblank_enabled ? DC_STATE_DISABLE :
+	intel_display_power_set_target_dc_state(i915, vblank_wa_pipes ? DC_STATE_DISABLE :
 						DC_STATE_EN_UPTO_DC6);
 }
 
@@ -1388,7 +1388,7 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
 	if (gen11_dsi_configure_te(crtc, true))
 		return 0;
 
-	if (display->irq.vblank_enabled++ == 0 && crtc->block_dc_for_vblank)
+	if (display->irq.vblank_wa_pipes++ == 0 && crtc->block_dc_for_vblank)
 		schedule_work(&display->irq.vblank_dc_work);
 
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
@@ -1468,7 +1468,7 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
 	bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
 
-	if (--display->irq.vblank_enabled == 0 && crtc->block_dc_for_vblank)
+	if (--display->irq.vblank_wa_pipes == 0 && crtc->block_dc_for_vblank)
 		schedule_work(&display->irq.vblank_dc_work);
 }
 
-- 
2.34.1

