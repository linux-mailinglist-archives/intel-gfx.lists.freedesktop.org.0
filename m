Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0260597C957
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 14:37:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93B8E10E2B7;
	Thu, 19 Sep 2024 12:37:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RobvtMM+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02EA510E1DF
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2024 12:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726749473; x=1758285473;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pmgKs5mEL/eKmrN8Ff/tON7o+e3HiPO6obKrx6LoDpU=;
 b=RobvtMM+Whhtob/oQioTdZM0Euycrb7gwtpJ5Me2lJeidkP1aTJxGVn/
 9qWR9+eEKp/xlqDySXwYkr/0+i0Kr24vzJAPofVYiHdQzecCV7/aMQAB8
 FjkJX1/d7wsYaKP3Ho7f5bkwDuSy9CqwNeTq+8HvUJxyOkZGEWlIpDDWI
 DrNMdF0LUPJayGH5nu0uhP3PJYd8oUFfS5cqPkSjcwUA9zSMnpo96egC3
 CE//CgxlYhsuEW/2WgVLJC6DWJECk4aSlR5Z4RLL4uH05/xLdzm2tnauh
 z3cZcEYYtUcebSOENDNwR54MEe/CrNiq6Je9UoAfdgscCBOhvsUPr5y4u Q==;
X-CSE-ConnectionGUID: GzsnESuvQ0S8XE5kBJQLEw==
X-CSE-MsgGUID: lsna9whdRO6CM2Il+1KP+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="48240571"
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="48240571"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 05:37:53 -0700
X-CSE-ConnectionGUID: BHHJeCJ+SpebrEsuw6Xo7A==
X-CSE-MsgGUID: RpiPE2EQQ1m3ICkRorQ3nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="74900480"
Received: from jhogande-mobl1.fi.intel.com ([10.237.72.58])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 05:37:51 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 2/2] drm/i915/display: Prevent DC6 while vblank is enabled
 for Panel Replay
Date: Thu, 19 Sep 2024 15:37:25 +0300
Message-Id: <20240919123725.1222869-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240919123725.1222869-1-jouni.hogander@intel.com>
References: <20240919123725.1222869-1-jouni.hogander@intel.com>
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

v3:
  - do flush_work for vblank_work on intel_crtc_vblank_off
  - no need to use READ_ONCE in bdw_enable_vblank
  - check crtc->block_dc_for_vblank in bdw_disable_vblank as well
  - move adding block_dc_for_vblank into this patch
v2:
  - use READ_ONCE in intel_display_vblank_work
  - use DC_STATE_DISABLE instead of DC_STATE_EN_UPTO_DC6
  - use intel_crtc->block_dc6_needed

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2296
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c     |  7 +++++
 .../gpu/drm/i915/display/intel_display_core.h |  2 ++
 .../gpu/drm/i915/display/intel_display_irq.c  | 27 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  2 ++
 4 files changed, 38 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index f95d169fc324a..315d3f1230846 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -124,6 +124,8 @@ void intel_crtc_vblank_on(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
+	crtc->block_dc_for_vblank = intel_psr_needs_block_dc_vblank(crtc_state);
+
 	assert_vblank_disabled(&crtc->base);
 	drm_crtc_set_max_vblank_count(&crtc->base,
 				      intel_crtc_max_vblank_count(crtc_state));
@@ -140,6 +142,7 @@ void intel_crtc_vblank_on(const struct intel_crtc_state *crtc_state)
 void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_display *display = to_intel_display(crtc);
 
 	/*
 	 * Should really happen exactly when we disable the pipe
@@ -150,6 +153,10 @@ void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state)
 
 	drm_crtc_vblank_off(&crtc->base);
 	assert_vblank_disabled(&crtc->base);
+
+	crtc->block_dc_for_vblank = false;
+
+	flush_work(&display->irq.vblank_work);
 }
 
 struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc *crtc)
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
index b830756124c32..03428f92abd82 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1361,9 +1361,27 @@ static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
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
@@ -1371,6 +1389,9 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
 	if (gen11_dsi_configure_te(crtc, true))
 		return 0;
 
+	if (display->irq.vblank_enabled++ == 0 && crtc->block_dc_for_vblank)
+		schedule_work(&display->irq.vblank_work);
+
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
 	bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
@@ -1436,6 +1457,7 @@ void ilk_disable_vblank(struct drm_crtc *crtc)
 void bdw_disable_vblank(struct drm_crtc *_crtc)
 {
 	struct intel_crtc *crtc = to_intel_crtc(_crtc);
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	unsigned long irqflags;
@@ -1446,6 +1468,9 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
 	bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+
+	if (--display->irq.vblank_enabled == 0 && crtc->block_dc_for_vblank)
+		schedule_work(&display->irq.vblank_work);
 }
 
 void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
@@ -1882,4 +1907,6 @@ void intel_display_irq_init(struct drm_i915_private *i915)
 		i915->display.irq.display_irqs_enabled = false;
 
 	intel_hotplug_irq_init(i915);
+
+	INIT_WORK(&i915->display.irq.vblank_work, intel_display_vblank_work);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 000ab373c8879..245c1381b455f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1413,6 +1413,8 @@ struct intel_crtc {
 #ifdef CONFIG_DEBUG_FS
 	struct intel_pipe_crc pipe_crc;
 #endif
+
+	u8 block_dc_for_vblank;
 };
 
 struct intel_plane {
-- 
2.34.1

