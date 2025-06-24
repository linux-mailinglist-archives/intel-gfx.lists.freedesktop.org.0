Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D552AAE6D34
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 19:01:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3026B10E610;
	Tue, 24 Jun 2025 17:01:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BAtVmrjz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20EFD10E610;
 Tue, 24 Jun 2025 17:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750784476; x=1782320476;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0ch0hSapAqm8fPXY3Dgc8s/eEqQReLRt7zbftkQQqPM=;
 b=BAtVmrjzINIcp5CuQ7IyDgh2YQxq9cWbXl8RN5k3EXT9s/wFQ0xHElG4
 xey7w0OLPRLCZ9Yp0JNULvHESCAibLDr6bF163R7S/CN5qhSoDkCiznE+
 NtPoYRNDuRAjlzz1hbdlqw0cV5uecVMdYL95WyXQJpSqtn3L/UhRTF0lI
 IzRuDhK/jcFhiLtMlW06oGZ7w0pEo9x3oGcCyLYB4xmd70kutzT6o01f5
 8BkoW9Utrn+zikawB0JrxXHzVTFDqCPIzcjFNdm/2XLSY+sHQSd3X+BDW
 pYI6HkYQPkLbUCuvmW1Y/XIiZt1G3aq5Y0JQx5LYwNN9s7HBmXTZtR/W3 A==;
X-CSE-ConnectionGUID: gn+kzOJOR8uhJ+fF+FLaZw==
X-CSE-MsgGUID: 4Ok6W8PcQ1W3g7EJ3b2fuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="56820895"
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="56820895"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 10:01:16 -0700
X-CSE-ConnectionGUID: FVHNfHJyS3aEthvUWTdCxQ==
X-CSE-MsgGUID: ZfJd4OOsShi3Sjb+8JHVBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="157749646"
Received: from vpanait-mobl.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.73])
 by orviesa005.jf.intel.com with SMTP; 24 Jun 2025 10:01:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Jun 2025 20:01:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v5 7/9] drm/i915/flipq: Implement Wa_16018781658 for LNL-A0
Date: Tue, 24 Jun 2025 20:00:47 +0300
Message-ID: <20250624170049.27284-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250624170049.27284-1-ville.syrjala@linux.intel.com>
References: <20250624170049.27284-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c   | 19 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_flipq.c | 12 ++++++++++++
 2 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 1b2e721d36a3..44835432a79f 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1645,9 +1645,26 @@ void intel_pipedmc_irq_handler(struct intel_display *display, enum pipe pipe)
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
index ee69b85cb104..7833423e8538 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.c
+++ b/drivers/gpu/drm/i915/display/intel_flipq.c
@@ -261,6 +261,14 @@ void intel_flipq_enable(const struct intel_crtc_state *crtc_state)
 
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
 
@@ -273,6 +281,10 @@ void intel_flipq_disable(const struct intel_crtc_state *crtc_state)
 
 	intel_de_write(display, PIPEDMC_FQ_CTRL(crtc->pipe), 0);
 
+	/* Wa_16018781658 */
+	if (display->platform.lunarlake && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0))
+		intel_pipedmc_disable_event(crtc, PIPEDMC_EVENT_DELAYED_VBLANK);
+
 	intel_pipedmc_disable_event(crtc, flipq_event_id(display));
 
 	intel_de_write(display, PIPEDMC_SCANLINECMPLOWER(crtc->pipe), 0);
-- 
2.49.0

