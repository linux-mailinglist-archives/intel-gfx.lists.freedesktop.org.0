Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B8C979C2E
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 09:43:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7773E10E115;
	Mon, 16 Sep 2024 07:43:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FNu01wZn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCC7810E115
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 07:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726472618; x=1758008618;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1jq6fAFlERMu6QNpAP6QAfnW22qHneWLyiS7b5NfGpQ=;
 b=FNu01wZnG11V/tgYs8GyD4AYyxCOHhyTQ1inkn+/7c85O7BMwf5KCOSZ
 h6vODhhswf8rEdgCoCQWXFR7OKQ2+F+YrEbHhonQFJrJxxIAxAniOLrAq
 LC5upjhfWwlrdVt1Fhg9tBP4fwRF0Q2y+fW3uitHVGj9QwhGWfx7ozRtR
 uWxhuGNwVnT1bPlDImmyq95sFYFtUP4mBPY/yuzI/eUe9/aoj2PEqKuvX
 ZQPbBSww5IIZMWyteVLfgBhr/WVtnzInt2/ykI4LjsDCyB2w6q63KNHd3
 5Dh1a5f/HB3cd1OEOvx7put2S3TlWl8QHtsewEUpOLlCWpD7hnKvQENmH w==;
X-CSE-ConnectionGUID: 3gSTYyVKS6GHBPlE/IEI3w==
X-CSE-MsgGUID: yzbOtEosSYOzoLIPJm5IaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11196"; a="25224135"
X-IronPort-AV: E=Sophos;i="6.10,232,1719903600"; d="scan'208";a="25224135"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 00:43:38 -0700
X-CSE-ConnectionGUID: gYh9/c9qTiSXhHuzsF2URw==
X-CSE-MsgGUID: PVYBk8PVTAG34VCABsj8MA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,232,1719903600"; d="scan'208";a="99646587"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.28])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 00:43:36 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 2/2] drm/i915/display: Prevent DC6 while vblank is enabled
 for Panel Replay
Date: Mon, 16 Sep 2024 10:43:20 +0300
Message-Id: <20240916074320.2108380-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240916074320.2108380-1-jouni.hogander@intel.com>
References: <20240916074320.2108380-1-jouni.hogander@intel.com>
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

We need to block DC6 entry in case of Panel Replay as enabling VBI doesn't
prevent DC6 in case of Panel Replay. This causes problems if user-space is
polling for vblank events.

Fix this by setting target DC state as DC_STATE_EN_UPTO_DC5 when both
source and sink are supporting eDP Panel Replay and VBI is enabled.

v2:
  - use READ_ONCE in intel_display_vblank_work
  - use DC_STATE_DISABLE instead of DC_STATE_EN_UPTO_DC6
  - use intel_crtc->block_dc6_needed

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2296
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  2 ++
 .../gpu/drm/i915/display/intel_display_irq.c  | 28 +++++++++++++++++++
 2 files changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 0a711114ff2b4..0707bc2047931 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -457,6 +457,8 @@ struct intel_display {
 		/* For i915gm/i945gm vblank irq workaround */
 		u8 vblank_enabled;
 
+		struct work_struct vblank_work;
+
 		u32 de_irq_mask[I915_MAX_PIPES];
 		u32 pipestat_irq_mask[I915_MAX_PIPES];
 	} irq;
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 8f13f148c73e3..4bdc67e1baa31 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1361,16 +1361,38 @@ static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
 	return true;
 }
 
+static void intel_display_vblank_work(struct work_struct *work)
+{
+	struct intel_display *display =
+		container_of(work, typeof(*display), irq.vblank_work);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	u8 vblank_enabled = READ_ONCE(display->irq.vblank_enabled);
+
+	/*
+	 * NOTE: intel_display_power_set_target_dc_state is used only by PSR
+	 * code for DC3CO handling. DC3CO target state is currently disabled in
+	 * PSR code. If DC3CO is taken into use we need take that into account
+	 * here as well.
+	 */
+	intel_display_power_set_target_dc_state(i915, vblank_enabled ? DC_STATE_DISABLE :
+						DC_STATE_EN_UPTO_DC6);
+}
+
 int bdw_enable_vblank(struct drm_crtc *_crtc)
 {
 	struct intel_crtc *crtc = to_intel_crtc(_crtc);
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	unsigned long irqflags;
+	u8 block_dc6_needed = READ_ONCE(crtc->block_dc6_needed);
 
 	if (gen11_dsi_configure_te(crtc, true))
 		return 0;
 
+	if (display->irq.vblank_enabled++ == 0 && block_dc6_needed)
+		schedule_work(&display->irq.vblank_work);
+
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
 	bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
@@ -1436,6 +1458,7 @@ void ilk_disable_vblank(struct drm_crtc *crtc)
 void bdw_disable_vblank(struct drm_crtc *_crtc)
 {
 	struct intel_crtc *crtc = to_intel_crtc(_crtc);
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	unsigned long irqflags;
@@ -1446,6 +1469,9 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
 	bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+
+	if (--display->irq.vblank_enabled == 0)
+		schedule_work(&display->irq.vblank_work);
 }
 
 void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
@@ -1871,4 +1897,6 @@ void intel_display_irq_init(struct drm_i915_private *i915)
 		i915->display.irq.display_irqs_enabled = false;
 
 	intel_hotplug_irq_init(i915);
+
+	INIT_WORK(&i915->display.irq.vblank_work, intel_display_vblank_work);
 }
-- 
2.34.1

