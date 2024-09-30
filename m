Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CD598AA8A
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 19:04:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FE5110E103;
	Mon, 30 Sep 2024 17:04:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="InrsUOiH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37F0910E564;
 Mon, 30 Sep 2024 17:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727715872; x=1759251872;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wv/z6me/dAxCAC9m5Qy/Qbu/FrFoky+C3MJnDCGJuTY=;
 b=InrsUOiH7Af59qhWoqY725Uoeu3MdCLyEoiGJj+dy+p+Ego1I6nKtU7T
 1qgFaHCOB0XhlkXqC5lKr/mVvAOQ8GKCtwVM3rQGX+np3Xx4dLY4EEWrM
 3d90yqH4YgcZizo/yWXocoBgAr2+PySUUqX9hLUwuVejOFFciB+ijziZQ
 5aKsDQRHVimJXqRhBYAIjb452H4IlQ0itrKHReleBIBoGbtDNYbBsrKIy
 vYbvwBW1mq9JBGZoux/oBgKi2LUl2j2o2wF3glSVuiCi+HRtx+JCjmBBo
 KhCC6qqGld7hmCcTUKw8Ge9/3+hrNo/Hya8JHd1b6wVvyw+rGvTNHfO0a A==;
X-CSE-ConnectionGUID: jWPoWn2QSP2Ky+68R40PnQ==
X-CSE-MsgGUID: YgSudmD7Tgeb86R2XLzIVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="44276960"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="44276960"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 10:04:32 -0700
X-CSE-ConnectionGUID: nqmFlbMlQ3KYNdJISOTjlQ==
X-CSE-MsgGUID: IFqXjsPWR5mz49ltVrWZIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="73490930"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Sep 2024 10:04:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Sep 2024 20:04:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 04/13] drm/i915/dsb: Enable programmable DSB interrupt
Date: Mon, 30 Sep 2024 20:04:06 +0300
Message-ID: <20240930170415.23841-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240930170415.23841-1-ville.syrjala@linux.intel.com>
References: <20240930170415.23841-1-ville.syrjala@linux.intel.com>
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

The DSB can signal a programmable interrupt in response to
a specific DSB command getting executed. Hook that up.

For now we'll just use this to signal the completion of the
commit via a vblank event. If, in the future, we'll need to
do other things in response to DSB interrupts we may need to
come up with some kind of fancier DSB interrupt framework where
the caller can specify a custom handler...

Reviewed-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_dsb.c      | 29 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dsb.h      |  1 +
 3 files changed, 30 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 7fb3eeb0e0f2..915c8d2e1664 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1358,6 +1358,8 @@ struct intel_crtc {
 
 	/* armed event for async flip */
 	struct drm_pending_vblank_event *flip_done_event;
+	/* armed event for DSB based updates */
+	struct drm_pending_vblank_event *dsb_event;
 
 	/* Access to these should be protected by dev_priv->irq_lock. */
 	bool cpu_fifo_underrun_disabled;
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 45ec56b2d50f..9d323347b4de 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -4,6 +4,8 @@
  *
  */
 
+#include <drm/drm_vblank.h>
+
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
@@ -379,6 +381,12 @@ void intel_dsb_nonpost_end(struct intel_dsb *dsb)
 	intel_dsb_noop(dsb, 4);
 }
 
+void intel_dsb_interrupt(struct intel_dsb *dsb)
+{
+	intel_dsb_emit(dsb, 0,
+		       DSB_OPCODE_INTERRUPT << DSB_OPCODE_SHIFT);
+}
+
 static void intel_dsb_emit_wait_dsl(struct intel_dsb *dsb,
 				    u32 opcode, int lower, int upper)
 {
@@ -544,7 +552,7 @@ static void _intel_dsb_chain(struct intel_atomic_state *state,
 
 	intel_dsb_reg_write(dsb, DSB_INTERRUPT(pipe, chained_dsb->id),
 			    dsb_error_int_status(display) | DSB_PROG_INT_STATUS |
-			    dsb_error_int_en(display));
+			    dsb_error_int_en(display) | DSB_PROG_INT_EN);
 
 	if (ctrl & DSB_WAIT_FOR_VBLANK) {
 		int dewake_scanline = dsb_dewake_scanline_start(state, crtc);
@@ -612,7 +620,7 @@ static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 
 	intel_de_write_fw(display, DSB_INTERRUPT(pipe, dsb->id),
 			  dsb_error_int_status(display) | DSB_PROG_INT_STATUS |
-			  dsb_error_int_en(display));
+			  dsb_error_int_en(display) | DSB_PROG_INT_EN);
 
 	intel_de_write_fw(display, DSB_HEAD(pipe, dsb->id),
 			  intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf));
@@ -775,6 +783,23 @@ void intel_dsb_irq_handler(struct intel_display *display,
 	tmp = intel_de_read_fw(display, DSB_INTERRUPT(pipe, dsb_id));
 	intel_de_write_fw(display, DSB_INTERRUPT(pipe, dsb_id), tmp);
 
+	if (tmp & DSB_PROG_INT_STATUS) {
+		spin_lock(&display->drm->event_lock);
+
+		if (crtc->dsb_event) {
+			/*
+			 * Update vblank counter/timestmap in case it
+			 * hasn't been done yet for this frame.
+			 */
+			drm_crtc_accurate_vblank_count(&crtc->base);
+
+			drm_crtc_send_vblank_event(&crtc->base, crtc->dsb_event);
+			crtc->dsb_event = NULL;
+		}
+
+		spin_unlock(&display->drm->event_lock);
+	}
+
 	errors = tmp & dsb_error_int_status(display);
 	if (errors)
 		drm_err(display->drm, "[CRTC:%d:%s] DSB %d error interrupt: 0x%x\n",
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index c352c12aa59f..ff3b89dfffc1 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -39,6 +39,7 @@ void intel_dsb_reg_write_masked(struct intel_dsb *dsb,
 void intel_dsb_noop(struct intel_dsb *dsb, int count);
 void intel_dsb_nonpost_start(struct intel_dsb *dsb);
 void intel_dsb_nonpost_end(struct intel_dsb *dsb);
+void intel_dsb_interrupt(struct intel_dsb *dsb);
 void intel_dsb_wait_scanline_in(struct intel_atomic_state *state,
 				struct intel_dsb *dsb,
 				int lower, int upper);
-- 
2.45.2

