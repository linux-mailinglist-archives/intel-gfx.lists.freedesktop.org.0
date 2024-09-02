Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA9F96893B
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 15:54:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7223410E2F5;
	Mon,  2 Sep 2024 13:54:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FZ4Qqda5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2648110E2F5
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 13:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725285252; x=1756821252;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZU7Y36ImtXpmCpsh+av46D/QwXCFfCFxJoXgI+BQh4w=;
 b=FZ4Qqda5mzGx7PK3+qKLzlZ16LJAUSH8e2QncEfjHN7kYCVbi/2OcLYO
 a+wlqxjbltcHOPc9hcJG1WqjC/cpLpvxUns0ucZDhpGnHzleMdY0Kdedi
 mT6uvK/OW7v+aFufjAP53pFft85Q+d0WDRP8ee0fY4UnyKFs1Rl2RcEp0
 uO3U13yRW2yOpjhyMk3WonbNGh9zRVBBNNfKUTEb7RWPYdt0GDFIAhwiy
 KFwszr8mEdGlaxI5LSqcTBeAook6Hxijza+tZG7LTYQU3WXLKtVvzw6/l
 HJ47rhXu3CIINEUOjfe87WFEYETMwQk9NHTqdfeo/4utH39GfB0ftS4G6 g==;
X-CSE-ConnectionGUID: hWjxIR0SS+ioRYLemI8XjQ==
X-CSE-MsgGUID: eGORo7SHRQmN+0GXUT1Szw==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="41343651"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="41343651"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 06:54:12 -0700
X-CSE-ConnectionGUID: 3M1j+pJ3TcyfpomrdckFKA==
X-CSE-MsgGUID: 2fk0MTJ9THqyKN3RyE9XFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="64623907"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 02 Sep 2024 06:54:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Sep 2024 16:54:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 10/13] drm/i915: Extract intel_crtc_prepare_vblank_event()
Date: Mon,  2 Sep 2024 16:53:39 +0300
Message-ID: <20240902135342.1050-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240902135342.1050-1-ville.syrjala@linux.intel.com>
References: <20240902135342.1050-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract the code for staging the vblank event for the
flip done interrupt handler. We'll reuse this for DSB
stuff later.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 21 +++++++++++++++------
 drivers/gpu/drm/i915/display/intel_crtc.h |  3 +++
 2 files changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 77cfab1d13de..30616101b4f2 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -495,12 +495,8 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 	intel_psr_lock(new_crtc_state);
 
 	if (new_crtc_state->do_async_flip) {
-		spin_lock_irq(&crtc->base.dev->event_lock);
-		/* arm the event for the flip done irq handler */
-		crtc->flip_done_event = new_crtc_state->uapi.event;
-		spin_unlock_irq(&crtc->base.dev->event_lock);
-
-		new_crtc_state->uapi.event = NULL;
+		intel_crtc_prepare_vblank_event(new_crtc_state,
+						&crtc->flip_done_event);
 		return;
 	}
 
@@ -600,6 +596,19 @@ void intel_crtc_arm_vblank_event(struct intel_crtc_state *crtc_state)
 	crtc_state->uapi.event = NULL;
 }
 
+void intel_crtc_prepare_vblank_event(struct intel_crtc_state *crtc_state,
+				     struct drm_pending_vblank_event **event)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	unsigned long irqflags;
+
+	spin_lock_irqsave(&crtc->base.dev->event_lock, irqflags);
+	*event = crtc_state->uapi.event;
+	spin_unlock_irqrestore(&crtc->base.dev->event_lock, irqflags);
+
+	crtc_state->uapi.event = NULL;
+}
+
 /**
  * intel_pipe_update_end() - end update of a set of display registers
  * @state: the atomic state
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
index c1dd8c42cea2..4b0bdddc1db5 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc.h
@@ -12,6 +12,7 @@ enum i9xx_plane_id;
 enum pipe;
 struct drm_display_mode;
 struct drm_i915_private;
+struct drm_pending_vblank_event;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
@@ -31,6 +32,8 @@ int intel_usecs_to_scanlines(const struct drm_display_mode *adjusted_mode,
 int intel_scanlines_to_usecs(const struct drm_display_mode *adjusted_mode,
 			     int scanlines);
 void intel_crtc_arm_vblank_event(struct intel_crtc_state *crtc_state);
+void intel_crtc_prepare_vblank_event(struct intel_crtc_state *crtc_state,
+				     struct drm_pending_vblank_event **event);
 u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_state);
 int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe);
 struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc *crtc);
-- 
2.44.2

