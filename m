Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 993807B213E
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 17:28:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FCD110E04B;
	Thu, 28 Sep 2023 15:28:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 155EC10E04B
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 15:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695914901; x=1727450901;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Osecp3O8yT72OUTyb9IAy4npV3VjpM8OdExucagRCYo=;
 b=iap532z67c9Bsg8Vy/W4znxuKA2AuRla4J3rL9HgT+zR/gaQzrx9F19i
 dCJjAWHaL2DsCyFBm2dLPkmEtdJ/145djtUKSxcpbdPbGv3hOkavvIQ6P
 9kH5tbrbtWfHrJ0e5LtYRwMbmuZ8zHKMfmG+b0XVgxYZmEzW5jjTQ08zX
 ZnP1QBdp5gXPcrPh1cgw4mCAeNxqRv5KL1d0nfel99RR+V3o3apW2lryB
 mjcvPEG+yjwXeO/gsnurh9egdSs7Ixq+X/GfqUdJDEvtHoU2GwxjqXfvs
 O/B4ZmJtYvDQ2M0BnFBgn+zH6giu9C3tu0LiYQmp5pDOfBctr1Ckqk4XE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="384898412"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="384898412"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 08:24:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="865305235"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="865305235"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 28 Sep 2023 08:24:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 28 Sep 2023 18:24:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Sep 2023 18:24:49 +0300
Message-ID: <20230928152450.30109-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Stop accessing crtc->state from
 the flip done irq
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

Assuming crtc->state is pointing at the correct thing for the
async flip commit is nonsense. If we had already queued up multiple
commits this would point at the very lates crtc state even if the
older commits hadn't even happened yet.

Instead properly stage/arm the event like we do for async flips.
Since we don't need to arm multiple of these at the same time we
don't need a list like the normal vblank even processing uses.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c          | 9 ++++++++-
 drivers/gpu/drm/i915/display/intel_display_irq.c   | 9 ++++-----
 drivers/gpu/drm/i915/display/intel_display_types.h | 3 +++
 3 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 1fd068e6e26c..8a84a31c7b48 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -553,8 +553,15 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 
 	intel_psr_lock(new_crtc_state);
 
-	if (new_crtc_state->do_async_flip)
+	if (new_crtc_state->do_async_flip) {
+		spin_lock_irq(&crtc->base.dev->event_lock);
+		/* arm the event for the flip done irq handler */
+		crtc->flip_done_event = new_crtc_state->uapi.event;
+		spin_unlock_irq(&crtc->base.dev->event_lock);
+
+		new_crtc_state->uapi.event = NULL;
 		return;
+	}
 
 	if (intel_crtc_needs_vblank_work(new_crtc_state))
 		intel_crtc_vblank_work_init(new_crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index bff4a76310c0..d3df615f0e48 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -340,16 +340,15 @@ static void flip_done_handler(struct drm_i915_private *i915,
 			      enum pipe pipe)
 {
 	struct intel_crtc *crtc = intel_crtc_for_pipe(i915, pipe);
-	struct drm_crtc_state *crtc_state = crtc->base.state;
-	struct drm_pending_vblank_event *e = crtc_state->event;
 	struct drm_device *dev = &i915->drm;
 	unsigned long irqflags;
 
 	spin_lock_irqsave(&dev->event_lock, irqflags);
 
-	crtc_state->event = NULL;
-
-	drm_crtc_send_vblank_event(&crtc->base, e);
+	if (crtc->flip_done_event) {
+		drm_crtc_send_vblank_event(&crtc->base, crtc->flip_done_event);
+		crtc->flip_done_event = NULL;
+	}
 
 	spin_unlock_irqrestore(&dev->event_lock, irqflags);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8d8b2f8d37a9..a8ae1a25a550 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1461,6 +1461,9 @@ struct intel_crtc {
 
 	struct intel_crtc_state *config;
 
+	/* armed event for async flip */
+	struct drm_pending_vblank_event *flip_done_event;
+
 	/* Access to these should be protected by dev_priv->irq_lock. */
 	bool cpu_fifo_underrun_disabled;
 	bool pch_fifo_underrun_disabled;
-- 
2.41.0

