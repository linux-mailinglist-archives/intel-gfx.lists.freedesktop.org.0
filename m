Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB6AAB9B29
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 13:34:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14FCE10EA6F;
	Fri, 16 May 2025 11:34:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BVgirm3o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68A5510EA66;
 Fri, 16 May 2025 11:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747395284; x=1778931284;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dbN5iKFNX3JzofOVOCbtpQ0kc1OT1m7yZji2XyaUmsA=;
 b=BVgirm3op8DodC+F3YS7YOzJLHD2qfobXwbMH575gP42urqYPVPTerxK
 X7WpwHXCBWVTUsnm0tpeLfNChCXgLuvNgBSiX3rTrGCa/X0Jzv+KDv/Uw
 s2hRL/pPoI3zFJQX2GpS2WVTfdbE7WfAb3ajZDT7xZoGfGdgYHd8WU3t1
 cA7NKqBp2MI9ksO/bCeI1fdC9Nk2xWq3y122UG+VAItjFgVLArjMffQKw
 yqTQ4cI0+zJcmjq38f1htHCxHbOLV6CcKE+4bxPKD0JkzH33sSB13aLb3
 +x+XZ5xmTQrSxfGs+h5/6IkphnEdzxLgWsnxLYH1X9Jom2kNBUlvBePw7 Q==;
X-CSE-ConnectionGUID: RKDhWEGuQvC4XfmZyQ4eNA==
X-CSE-MsgGUID: cAP4Mj7ZQJOslXhhvhnsBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="49349834"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="49349834"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 04:34:44 -0700
X-CSE-ConnectionGUID: P85gI0UmRRuX84OOnC/NAA==
X-CSE-MsgGUID: 5zAJq8zJQBm4Y+4y0YmNGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="143779606"
Received: from johunt-mobl9.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.161])
 by orviesa005.jf.intel.com with SMTP; 16 May 2025 04:34:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 May 2025 14:34:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 10/12] drm/i915/flipq: Implement Wa_16018781658 for LNL-A0
Date: Fri, 16 May 2025 14:34:06 +0300
Message-ID: <20250516113408.11689-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
References: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
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

The normal flip queue completion interrupt doesn't work on LNL-A0,
and instead the firmware implements a workaround via the delayed
vblank event handler. Implement said workaround on the driver side
by enabling the appropriate event and handling the result interrupt
vector value in the PIPEDMC irq handler.

Included here just for reference since LNL-A0 is pre-production
and we don't actually care about it anymore.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c   | 19 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_flipq.c | 12 ++++++++++++
 2 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 10d1be68df79..cd024254db7b 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1516,9 +1516,26 @@ void intel_pipedmc_irq_handler(struct intel_display *display, enum pipe pipe)
 	}
 
 	tmp = intel_de_read(display, PIPEDMC_STATUS(pipe)) & PIPEDMC_INT_VECTOR_MASK;
-	if (tmp)
+	/* Wa_16018781658 */
+	if (tmp == PIPEDMC_INT_VECTOR_FLIPQ_PROG_DONE) {
+		spin_lock(&display->drm->event_lock);
+
+		if (crtc->flipq_event) {
+			/*
+			 * Update vblank counter/timestamp in case it
+			 * hasn't been done yet for this frame.
+			 */
+			drm_crtc_accurate_vblank_count(&crtc->base);
+
+			drm_crtc_send_vblank_event(&crtc->base, crtc->flipq_event);
+			crtc->flipq_event = NULL;
+		}
+
+		spin_unlock(&display->drm->event_lock);
+	} else if (tmp) {
 		drm_err(display->drm, "[CRTC:%d:%s]] PIPEDMC interrupt vector 0x%x\n",
 			crtc->base.base.id, crtc->base.name, tmp);
+	}
 }
 
 void intel_pipedmc_enable_event(struct intel_crtc *crtc,
diff --git a/drivers/gpu/drm/i915/display/intel_flipq.c b/drivers/gpu/drm/i915/display/intel_flipq.c
index c4b4ecd44eb2..fdda8d71c182 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.c
+++ b/drivers/gpu/drm/i915/display/intel_flipq.c
@@ -215,6 +215,14 @@ void intel_flipq_enable(const struct intel_crtc_state *crtc_state)
 
 	intel_pipedmc_enable_event(crtc, PIPEDMC_EVENT_SCANLINE_INRANGE_FQ_TRIGGER);
 
+	/*
+	 * Wa_16018781658
+	 * PIPEDMC_FPQ_CTL2 bit 1 isn't working, firmware implements
+	 * a workaround via the delayed vblank handler.
+	 */
+	if (display->platform.lunarlake && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0))
+		intel_pipedmc_enable_event(crtc, PIPEDMC_EVENT_DELAYED_VBLANK);
+
 	intel_de_write(display, PIPEDMC_FQ_CTRL(crtc->pipe), PIPEDMC_FQ_CTRL_ENABLE);
 }
 
@@ -225,6 +233,10 @@ void intel_flipq_disable(const struct intel_crtc_state *crtc_state)
 
 	intel_de_write(display, PIPEDMC_FQ_CTRL(crtc->pipe), 0);
 
+	/* Wa_16018781658 */
+	if (display->platform.lunarlake && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0))
+		intel_pipedmc_disable_event(crtc, PIPEDMC_EVENT_DELAYED_VBLANK);
+
 	intel_pipedmc_disable_event(crtc, PIPEDMC_EVENT_SCANLINE_INRANGE_FQ_TRIGGER);
 
 	intel_de_write(display, PIPEDMC_SCANLINECMPLOWER(crtc->pipe), 0);
-- 
2.49.0

