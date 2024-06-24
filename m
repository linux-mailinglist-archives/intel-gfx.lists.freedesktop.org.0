Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9523F9156F8
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 21:11:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE3A610E54D;
	Mon, 24 Jun 2024 19:11:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iauHbr7G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DEB410E54D
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 19:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719256260; x=1750792260;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wXBqttQ0LB1p2oR2fMehcf/uL/moWYX7sX8PTRqHuDY=;
 b=iauHbr7GN7gsP0xI5oIQpcSsr7KwJF3Cno7IDzeAUJPQvBz6f2REAjDO
 PamTLqm6ToHIoiCETI5HrgPDuzPEvCpZ2Ov+Ts4ZPKZ3pWOEz4PEai76a
 K5o69L6D7cTF0cvqDrumhaez02dWyU1Povk/gyTkmD0FDIFnwoSRG4sOY
 2O58Xgky+O6ddjoJzm4eBywgQV1ONYtcqjqAHFZxn6ZDB/QB0TeaBeafV
 rBqtXAbwGrjafekfWSTPnNi7c8Xcr6A25vcEx4aGD0WvPLAfCiQ8acGdH
 Xgye20bNytbRkP7p04ajgKHeg4/1TA1JXr7tVQqUiotBjQGnLeERvDg3W w==;
X-CSE-ConnectionGUID: +gjGCZNdSse7SuCN15L5QQ==
X-CSE-MsgGUID: brVvJJemSPWrnUtnPKMgig==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="16374172"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="16374172"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 12:10:47 -0700
X-CSE-ConnectionGUID: gVRqgtYoRxmS0bIBQeyQcg==
X-CSE-MsgGUID: 5G6ZTe0BQXyCFJNCO23djQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="43371947"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jun 2024 12:10:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jun 2024 22:10:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 04/14] drm/i915/dsb: Convert dewake_scanline to a hw scanline
 number earlier
Date: Mon, 24 Jun 2024 22:10:22 +0300
Message-ID: <20240624191032.27333-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
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

Currently we switch from out software idea of a scanline
to the hw's idea of a scanline during the commit phase in
_intel_dsb_commit(). While that is slightly easier due to
fastsets fiddling with the timings, we'll also need to
generate proper hw scanline numbers already when emitting
DSB scanline wait instructions. So this approach won't
do in the future. Switch to hw scanline numbers earlier.

Also intel_dsb_dewake_scanline() itself already makes
some assumptions about VRR that don't take into account
VRR toggling during fastsets, so technically delaying
the sw->hw conversion doesn't even help us.

The other reason for delaying the conversion was that we
are using intel_get_crtc_scanline() during intel_dsb_commit()
which gives us the current sw scanline. But this is pretty
low level stuff anyway so just using raw PIPEDSL reads seems
fine here, and that of course gives us the hw scanline
directly, reducing the need to do so many conversions.

v2: Return the non-hw scanline from intel_dsb_dewake_scanline()

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c    | 21 ++++++++++++---------
 drivers/gpu/drm/i915/display/intel_vblank.c |  9 ++++-----
 drivers/gpu/drm/i915/display/intel_vblank.h |  3 ++-
 3 files changed, 18 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index ded696363258..cee33c66a26b 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -6,6 +6,7 @@
 
 #include "i915_drv.h"
 #include "i915_irq.h"
+#include "i915_reg.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
@@ -42,7 +43,7 @@ struct intel_dsb {
 	 */
 	unsigned int ins_start_offset;
 
-	int dewake_scanline;
+	int hw_dewake_scanline;
 };
 
 /**
@@ -376,7 +377,7 @@ static u32 dsb_error_int_en(struct intel_display *display)
 }
 
 static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
-			      int dewake_scanline)
+			      int hw_dewake_scanline)
 {
 	struct intel_crtc *crtc = dsb->crtc;
 	struct intel_display *display = to_intel_display(crtc->base.dev);
@@ -406,10 +407,8 @@ static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 	intel_de_write_fw(display, DSB_HEAD(pipe, dsb->id),
 			  intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf));
 
-	if (dewake_scanline >= 0) {
-		int diff, hw_dewake_scanline;
-
-		hw_dewake_scanline = intel_crtc_scanline_to_hw(crtc, dewake_scanline);
+	if (hw_dewake_scanline >= 0) {
+		int diff, position;
 
 		intel_de_write_fw(display, DSB_PMCTRL(pipe, dsb->id),
 				  DSB_ENABLE_DEWAKE |
@@ -419,7 +418,9 @@ static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 		 * Force DEwake immediately if we're already past
 		 * or close to racing past the target scanline.
 		 */
-		diff = dewake_scanline - intel_get_crtc_scanline(crtc);
+		position = intel_de_read_fw(display, PIPEDSL(display, pipe)) & PIPEDSL_LINE_MASK;
+
+		diff = hw_dewake_scanline - position;
 		intel_de_write_fw(display, DSB_PMCTRL_2(pipe, dsb->id),
 				  (diff >= 0 && diff < 5 ? DSB_FORCE_DEWAKE : 0) |
 				  DSB_BLOCK_DEWAKE_EXTENSION);
@@ -441,7 +442,7 @@ void intel_dsb_commit(struct intel_dsb *dsb,
 {
 	_intel_dsb_commit(dsb,
 			  wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0,
-			  wait_for_vblank ? dsb->dewake_scanline : -1);
+			  wait_for_vblank ? dsb->hw_dewake_scanline : -1);
 }
 
 void intel_dsb_wait(struct intel_dsb *dsb)
@@ -529,7 +530,9 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
 	dsb->size = size / 4; /* in dwords */
 	dsb->free_pos = 0;
 	dsb->ins_start_offset = 0;
-	dsb->dewake_scanline = intel_dsb_dewake_scanline(crtc_state);
+
+	dsb->hw_dewake_scanline =
+		intel_crtc_scanline_to_hw(crtc_state, intel_dsb_dewake_scanline(crtc_state));
 
 	return dsb;
 
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index f183e0d4b2ba..56c8033eec4c 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -284,13 +284,12 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
 	return (position + vtotal + crtc->scanline_offset) % vtotal;
 }
 
-int intel_crtc_scanline_to_hw(struct intel_crtc *crtc, int scanline)
+int intel_crtc_scanline_to_hw(const struct intel_crtc_state *crtc_state,
+			      int scanline)
 {
-	const struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(&crtc->base);
-	const struct drm_display_mode *mode = &vblank->hwmode;
-	int vtotal = intel_mode_vtotal(mode);
+	int vtotal = intel_mode_vtotal(&crtc_state->hw.adjusted_mode);
 
-	return (scanline + vtotal - crtc->scanline_offset) % vtotal;
+	return (scanline + vtotal - intel_crtc_scanline_offset(crtc_state)) % vtotal;
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
index 7e526f6861e4..45a4a961aaab 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.h
+++ b/drivers/gpu/drm/i915/display/intel_vblank.h
@@ -40,6 +40,7 @@ void intel_wait_for_pipe_scanline_stopped(struct intel_crtc *crtc);
 void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc);
 void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
 				      bool vrr_enable);
-int intel_crtc_scanline_to_hw(struct intel_crtc *crtc, int scanline);
+int intel_crtc_scanline_to_hw(const struct intel_crtc_state *crtc_state,
+			      int scanline);
 
 #endif /* __INTEL_VBLANK_H__ */
-- 
2.44.2

