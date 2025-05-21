Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C80F4ABFCDB
	for <lists+intel-gfx@lfdr.de>; Wed, 21 May 2025 20:29:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EFDA10E75D;
	Wed, 21 May 2025 18:17:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QbAmJfok";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C91C10E7AC;
 Wed, 21 May 2025 18:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747851444; x=1779387444;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f9OVQDuA2ZSE+aaKOxB9AMwgOa3GrrpUcJiBgCFc2dI=;
 b=QbAmJfokR8tTeHTw6rqaduWvw267tidDAlfyJlGKRn11aOH2x11GCvPr
 /yvXyhZULHWBNxlmUi8p3fnBkHhSamabWttkir86f+m9ReeCWm0WopeHy
 Vlj0I3EAMfpyLkAD/dEVITmRT8BXkgpCCSXbD/kZCxpcHmigyiaFpW7mB
 yDSoSqTBgiC1xVVb3PjVoTN10cbYeCpTZZPXzOUxCgX39+CFHROnmCNUm
 BWiwYb3OgF5zzmPeBkFVWNQbnFSYDTvzWXckusvTPpSlCgk9lPekaBXxl
 oAnBS+LjvuKczB6SGo12M9PsBQfdA3/1sDVRgKEv3A//Wrl6ZGgBbaBGz g==;
X-CSE-ConnectionGUID: 8KIUe0DaRnGgIAgbawnGVQ==
X-CSE-MsgGUID: 8DcqG42QSEOE2X95lC1o3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="75244776"
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="75244776"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 11:17:23 -0700
X-CSE-ConnectionGUID: QK3UJhMxSCSiPzCpnbTjHQ==
X-CSE-MsgGUID: 6nCK+6ORSrabcHJm5mZBWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="145322299"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.255])
 by orviesa005.jf.intel.com with SMTP; 21 May 2025 11:17:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 May 2025 21:17:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 11/13] drm/i915/flipq: Implement Wa_16018781658 for LNL-A0
Date: Wed, 21 May 2025 21:16:43 +0300
Message-ID: <20250521181645.32737-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250521181645.32737-1-ville.syrjala@linux.intel.com>
References: <20250521181645.32737-1-ville.syrjala@linux.intel.com>
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
index fa2df7582062..6e549634b585 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1517,9 +1517,26 @@ void intel_pipedmc_irq_handler(struct intel_display *display, enum pipe pipe)
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
index 4d9145b39f16..00667cf64924 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.c
+++ b/drivers/gpu/drm/i915/display/intel_flipq.c
@@ -235,6 +235,14 @@ void intel_flipq_enable(const struct intel_crtc_state *crtc_state)
 
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
 
@@ -245,6 +253,10 @@ void intel_flipq_disable(const struct intel_crtc_state *crtc_state)
 
 	intel_de_write(display, PIPEDMC_FQ_CTRL(crtc->pipe), 0);
 
+	/* Wa_16018781658 */
+	if (display->platform.lunarlake && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0))
+		intel_pipedmc_disable_event(crtc, PIPEDMC_EVENT_DELAYED_VBLANK);
+
 	intel_pipedmc_disable_event(crtc, flipq_event_id(display));
 
 	intel_de_write(display, PIPEDMC_SCANLINECMPLOWER(crtc->pipe), 0);
-- 
2.49.0

