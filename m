Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3894D996C71
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 15:43:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EEA210E721;
	Wed,  9 Oct 2024 13:43:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MoZUum28";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DC2210E720
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 13:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728481382; x=1760017382;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dtW+LOutLatXhsvJcsglzFVFgOeTKI3hF7q5cPuyBr8=;
 b=MoZUum2832GZnYvx6ZBDmgl6dJi+h/K9Q+2cSu8mw88WXRiod19QmpBU
 3+nyHKlsZR2N0VwbfFQPJgUWiedyDgSD6vA9cwCCyCEEzfsPzgLI9LVC5
 evmb6A4X1j+d3e1/DIZqIGa9OGa9esdYW9MY2+a35QExFd+9Nrvqk+Muj
 TIc3D7PwaqUXwcju2elCVM65PRkLAJUmQ5EswSY/37eWe7coFjLffVCiq
 P551cM0VGA9SiBO0mT6jkYEi0fl7HQtf0DOMKihQSl42hnywVf146dEe1
 lo3A8xpsxAQCWAtoWj4Xw2R272zA6YA/YhwaDeSJTdKEuCQ9j7FNYKKyX w==;
X-CSE-ConnectionGUID: nhjPrLCkTpqcnjdamA0uXA==
X-CSE-MsgGUID: WmwASwdiQvKqVLPglPUPpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="38347626"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="38347626"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 06:43:02 -0700
X-CSE-ConnectionGUID: 6HlphbEAQlurYCD3CNRFgw==
X-CSE-MsgGUID: zhpaKz46Q1O+dTGZN1cchg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76150956"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.231])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 06:43:01 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 1/2] drm/i915/display: Add own counter for Panel Replay
 vblank workaround
Date: Wed,  9 Oct 2024 16:42:24 +0300
Message-Id: <20241009134225.1322820-1-jouni.hogander@intel.com>
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

v2:
  - s/vblank_wa_pipes/vblank_wa_num_pipes/
  - use int as a type for the counter

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h | 2 ++
 drivers/gpu/drm/i915/display/intel_display_irq.c  | 8 ++++----
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 982dd9469195..45697af25fa9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -455,6 +455,8 @@ struct intel_display {
 		/* For i915gm/i945gm vblank irq workaround */
 		u8 vblank_enabled;
 
+		int vblank_wa_num_pipes;
+
 		struct work_struct vblank_dc_work;
 
 		u32 de_irq_mask[I915_MAX_PIPES];
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index a4367ddc7a44..8226ea218d77 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1424,7 +1424,7 @@ static void intel_display_vblank_dc_work(struct work_struct *work)
 	struct intel_display *display =
 		container_of(work, typeof(*display), irq.vblank_dc_work);
 	struct drm_i915_private *i915 = to_i915(display->drm);
-	u8 vblank_enabled = READ_ONCE(display->irq.vblank_enabled);
+	int vblank_wa_num_pipes = READ_ONCE(display->irq.vblank_wa_num_pipes);
 
 	/*
 	 * NOTE: intel_display_power_set_target_dc_state is used only by PSR
@@ -1432,7 +1432,7 @@ static void intel_display_vblank_dc_work(struct work_struct *work)
 	 * PSR code. If DC3CO is taken into use we need take that into account
 	 * here as well.
 	 */
-	intel_display_power_set_target_dc_state(i915, vblank_enabled ? DC_STATE_DISABLE :
+	intel_display_power_set_target_dc_state(i915, vblank_wa_num_pipes ? DC_STATE_DISABLE :
 						DC_STATE_EN_UPTO_DC6);
 }
 
@@ -1447,7 +1447,7 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
 	if (gen11_dsi_configure_te(crtc, true))
 		return 0;
 
-	if (display->irq.vblank_enabled++ == 0 && crtc->block_dc_for_vblank)
+	if (display->irq.vblank_wa_num_pipes++ == 0 && crtc->block_dc_for_vblank)
 		schedule_work(&display->irq.vblank_dc_work);
 
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
@@ -1478,7 +1478,7 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
 	bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
 
-	if (--display->irq.vblank_enabled == 0 && crtc->block_dc_for_vblank)
+	if (--display->irq.vblank_wa_num_pipes == 0 && crtc->block_dc_for_vblank)
 		schedule_work(&display->irq.vblank_dc_work);
 }
 
-- 
2.34.1

