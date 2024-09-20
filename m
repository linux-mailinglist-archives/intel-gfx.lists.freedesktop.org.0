Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 902E097D11D
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 08:24:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F30010E7A8;
	Fri, 20 Sep 2024 06:24:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LV+U1yq3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5116E10E7A7
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2024 06:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726813443; x=1758349443;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1RBsERF751BpFQ6UG9qD3n1Jaql+jrZ1qYOdSiBkaMk=;
 b=LV+U1yq3ONKKEQAxj/HbSVUsXQJiEySJOs4N2IZtkwvMge3K0RNI5X7B
 UGIOwwylHIG8ng9hMrbB9IJVExGPtmC0kZiw9fEz+e7PZuAAejRfiw6bg
 dAP0AkigkPLzC6lQOVDRFN3vLPpm3jE5M7g/wLPVlLII/R+kG50C4G37l
 UsEo2EoxbNBuSa5kOupN7k72PUoFH7fA0xYTR2QCcVjQqxp9oZ+P9Cb1R
 XPVZPLY8dVYflVoyx9AnTexXPz7rOZ73aN74ehmdhFGBAD6vUcqEYejP0
 Tix1Ix+1Ie4DLyf47TGh3tIa6UED+IqdunTLfc9csdAxLjAchzWPeQ7V0 Q==;
X-CSE-ConnectionGUID: fAtwobmOQ/C4QUbJkgieBA==
X-CSE-MsgGUID: W0bb82+WRdq9ijw+1WZ1nA==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="29704288"
X-IronPort-AV: E=Sophos;i="6.10,243,1719903600"; d="scan'208";a="29704288"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 23:24:02 -0700
X-CSE-ConnectionGUID: 8qi8UhAwS+WHA9Cymj/f6w==
X-CSE-MsgGUID: cZQt9VslQ4G4oAyvSx2Z3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,243,1719903600"; d="scan'208";a="107656114"
Received: from carterle-desk.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.217])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 23:24:00 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 2/2] drm/i915/display: Prevent DC6 while vblank is enabled
 for Panel Replay
Date: Fri, 20 Sep 2024 09:23:40 +0300
Message-Id: <20240920062340.1333777-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240920062340.1333777-1-jouni.hogander@intel.com>
References: <20240920062340.1333777-1-jouni.hogander@intel.com>
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

v4:
  - s/vblank_work/vblank_dc_work/
  - changed type of block_dc_for_vblank to bool
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
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c     |  7 +++++
 .../gpu/drm/i915/display/intel_display_core.h |  2 ++
 .../gpu/drm/i915/display/intel_display_irq.c  | 28 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  2 ++
 4 files changed, 39 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index f95d169fc324a..3a28d8450a384 100644
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
+	flush_work(&display->irq.vblank_dc_work);
 }
 
 struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc *crtc)
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 0a711114ff2b4..ac4c005fe3489 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -457,6 +457,8 @@ struct intel_display {
 		/* For i915gm/i945gm vblank irq workaround */
 		u8 vblank_enabled;
 
+		struct work_struct vblank_dc_work;
+
 		u32 de_irq_mask[I915_MAX_PIPES];
 		u32 pipestat_irq_mask[I915_MAX_PIPES];
 	} irq;
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 0ccbf7a1f2bf6..6878dde85031c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1360,9 +1360,27 @@ static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
 	return true;
 }
 
+static void intel_display_vblank_dc_work(struct work_struct *work)
+{
+	struct intel_display *display =
+		container_of(work, typeof(*display), irq.vblank_dc_work);
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
@@ -1370,6 +1388,9 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
 	if (gen11_dsi_configure_te(crtc, true))
 		return 0;
 
+	if (display->irq.vblank_enabled++ == 0 && crtc->block_dc_for_vblank)
+		schedule_work(&display->irq.vblank_dc_work);
+
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
 	bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
@@ -1435,6 +1456,7 @@ void ilk_disable_vblank(struct drm_crtc *crtc)
 void bdw_disable_vblank(struct drm_crtc *_crtc)
 {
 	struct intel_crtc *crtc = to_intel_crtc(_crtc);
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	unsigned long irqflags;
@@ -1445,6 +1467,9 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
 	bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+
+	if (--display->irq.vblank_enabled == 0 && crtc->block_dc_for_vblank)
+		schedule_work(&display->irq.vblank_dc_work);
 }
 
 void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
@@ -1881,4 +1906,7 @@ void intel_display_irq_init(struct drm_i915_private *i915)
 		i915->display.irq.display_irqs_enabled = false;
 
 	intel_hotplug_irq_init(i915);
+
+	INIT_WORK(&i915->display.irq.vblank_dc_work,
+		  intel_display_vblank_dc_work);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 3e694c1204dbf..513e843e19b9e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1413,6 +1413,8 @@ struct intel_crtc {
 #ifdef CONFIG_DEBUG_FS
 	struct intel_pipe_crc pipe_crc;
 #endif
+
+	bool block_dc_for_vblank;
 };
 
 struct intel_plane {
-- 
2.34.1

