Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E4DACC8CB
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 16:09:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E5DB10E90B;
	Tue,  3 Jun 2025 14:09:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EaThaRvJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6291410E905;
 Tue,  3 Jun 2025 14:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748959752; x=1780495752;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nbGUwf+VlpoawBs9+HMBFZbJEL0fv79uOAiS+y5aKZ4=;
 b=EaThaRvJ8dsw37xzi9o/I196zQLirO+fFXSzIMzt3TTzoZxc+1ahCx2S
 Dg9tmThDHbXz6NQLpd5p91ba31dD8X7FZKsuk5sAPzirMPtepJJGGA5so
 i5jeU9+LdYbaNApTOvmSbdzff2kOwv5a+tKwXQBdMZlCiuP+1bSfstLD9
 TsrHr/yBNjpBZ18cTUcsgF1szKOki6l1mTDTHlMa6o0qKeIta7cQ5wn2S
 NGeAObZT3kaaX/5XrsG3KZdnJwFsx10Pjx8HtRmgUqIO3GhIoxuzhi3EO
 pH5+1+qx69evs9pf8Acds/WkUrS2Ra1x4g0onO9mPCA208lPVw9FP/on9 A==;
X-CSE-ConnectionGUID: eEJW2G4DQc2sjutos4ZOPw==
X-CSE-MsgGUID: bKKLWavQRw6PEvX87Lswvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="61265881"
X-IronPort-AV: E=Sophos;i="6.16,206,1744095600"; d="scan'208";a="61265881"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 07:09:12 -0700
X-CSE-ConnectionGUID: juW1YGBESlu7Xn7CqpekSw==
X-CSE-MsgGUID: UZXsJO1SQBaO/wlNqAOJEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,206,1744095600"; d="scan'208";a="150155726"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.220])
 by orviesa005.jf.intel.com with SMTP; 03 Jun 2025 07:09:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Jun 2025 17:09:08 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v3 10/12] drm/i915/flipq: Implement Wa_16018781658 for LNL-A0
Date: Tue,  3 Jun 2025 17:08:34 +0300
Message-ID: <20250603140836.21432-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250603140836.21432-1-ville.syrjala@linux.intel.com>
References: <20250603140836.21432-1-ville.syrjala@linux.intel.com>
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

v2: Ignore INT_VECTOR if there is a real PIPEDMC interrupt
    (nothing in the hw appears to clear INT_VECTOR)

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c   | 19 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_flipq.c | 12 ++++++++++++
 2 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index a23a726dea0d..469a51c5399d 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1517,9 +1517,26 @@ void intel_pipedmc_irq_handler(struct intel_display *display, enum pipe pipe)
 	}
 
 	int_vector = intel_de_read(display, PIPEDMC_STATUS(pipe)) & PIPEDMC_INT_VECTOR_MASK;
-	if (tmp == 0 && int_vector != 0)
+	/* Wa_16018781658 */
+	if (tmp == 0 && int_vector == PIPEDMC_INT_VECTOR_FLIPQ_PROG_DONE) {
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
+	} else if (tmp == 0 && int_vector != 0) {
 		drm_err(display->drm, "[CRTC:%d:%s]] PIPEDMC interrupt vector 0x%x\n",
 			crtc->base.base.id, crtc->base.name, tmp);
+	}
 }
 
 void intel_pipedmc_enable_event(struct intel_crtc *crtc,
diff --git a/drivers/gpu/drm/i915/display/intel_flipq.c b/drivers/gpu/drm/i915/display/intel_flipq.c
index 434f9d854c40..37e5603c860e 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.c
+++ b/drivers/gpu/drm/i915/display/intel_flipq.c
@@ -245,6 +245,14 @@ void intel_flipq_enable(const struct intel_crtc_state *crtc_state)
 
 	intel_pipedmc_enable_event(crtc, flipq_event_id(display));
 
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
 
@@ -255,6 +263,10 @@ void intel_flipq_disable(const struct intel_crtc_state *crtc_state)
 
 	intel_de_write(display, PIPEDMC_FQ_CTRL(crtc->pipe), 0);
 
+	/* Wa_16018781658 */
+	if (display->platform.lunarlake && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0))
+		intel_pipedmc_disable_event(crtc, PIPEDMC_EVENT_DELAYED_VBLANK);
+
 	intel_pipedmc_disable_event(crtc, flipq_event_id(display));
 
 	intel_de_write(display, PIPEDMC_SCANLINECMPLOWER(crtc->pipe), 0);
-- 
2.49.0

