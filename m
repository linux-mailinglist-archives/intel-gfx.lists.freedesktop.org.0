Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89883968936
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 15:54:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32AFE10E2F4;
	Mon,  2 Sep 2024 13:53:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DZyj2sTL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FC1110E2F5
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 13:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725285238; x=1756821238;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=RekUDLpZdv2Tu+ptpcPnFyeZzFedQarnDcbUmi2rp+I=;
 b=DZyj2sTLY9DSEDrqAjXW6YGHK9gvecJQNWTw9k7t97x1yqYk/AT82Tzk
 k9plJV3lJCcGdfIDyIjB7Q5QmYuWNLdQvRxs2tbQLGGHvbw8AoJHkFLLW
 ggFRXc/eX+hLyu/h68m56w4nhXKe0V1BnRcE0bysBaS0l8C9iUcXDjVdW
 Kkd+PRXzJETZsZeqKCXZ0d6nJfDV7tIbb7c2oTM1xSQ+2DtN0L51O0guc
 3Qy7pKTu/4IXuGOHgO84foz4h9Ya1K41iadMMrQv9vCDtibCuX2xsDFbm
 1HlQPc4cjkGKUV+ECB7dSON7TGzCkcTX0OHcP+DJfVG+J+yLYzFH3jzuP Q==;
X-CSE-ConnectionGUID: wTIFBA5OSaCyTW40yqDmYQ==
X-CSE-MsgGUID: QN39ohJrQKactfqn4tRajw==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="41343622"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="41343622"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 06:53:58 -0700
X-CSE-ConnectionGUID: QuTF5DfhSWO0Zt+Sfr+G6Q==
X-CSE-MsgGUID: B3SNees5QbabW58ylglflg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="64623867"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 02 Sep 2024 06:53:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Sep 2024 16:53:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 05/13] drm/i915/dsb: Introduce intel_dsb_vblank_evade()
Date: Mon,  2 Sep 2024 16:53:34 +0300
Message-ID: <20240902135342.1050-6-ville.syrjala@linux.intel.com>
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

Add a helper for performing vblank evasion on the DSB. DSB based
plane updates will need this to guarantee all the double buffered
arming registers will get programmed atomically within the same
frame.

With VRR we more or less have two vblanks to worry about:
- vmax vblank start in case no push was sent
- vmin vblank start in case a push was already sent during
  the vertical active. Only a concern for mailbox updates,
  which I suppose could happen if the legacy cursor updates
  take the non-fastpath without setting
  state->legacy_cursor_update to false.
Since we don't know which case is relevant we'll just evade
both.

We must also make sure to evade both the delayed vblank
(for pipe/plane registers) and the undelayed vblank
(for transcoder registers and chained DSBs w/
DSB_WAIT_FOR_VBLANK).

TODO: come up with a sensible usec number for the evasion...

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 31 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dsb.h |  2 ++
 2 files changed, 33 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 6de33c0c16c3..997196ba69ca 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -126,6 +126,12 @@ pre_commit_crtc_state(struct intel_atomic_state *state,
 		return old_crtc_state;
 }
 
+static int dsb_vblank_delay(const struct intel_crtc_state *crtc_state)
+{
+	return intel_mode_vblank_start(&crtc_state->hw.adjusted_mode) -
+		intel_mode_vdisplay(&crtc_state->hw.adjusted_mode);
+}
+
 static int dsb_vtotal(struct intel_atomic_state *state,
 		      struct intel_crtc *crtc)
 {
@@ -525,6 +531,31 @@ static u32 dsb_error_int_en(struct intel_display *display)
 	return errors;
 }
 
+void intel_dsb_vblank_evade(struct intel_atomic_state *state,
+			    struct intel_dsb *dsb)
+{
+	struct intel_crtc *crtc = dsb->crtc;
+	const struct intel_crtc_state *crtc_state = pre_commit_crtc_state(state, crtc);
+	/* FIXME calibrate sensibly */
+	int latency = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, 20);
+	int vblank_delay = dsb_vblank_delay(crtc_state);
+	int start, end;
+
+	if (pre_commit_is_vrr_active(state, crtc)) {
+		end = intel_vrr_vmin_vblank_start(crtc_state);
+		start = end - vblank_delay - latency;
+		intel_dsb_wait_scanline_out(state, dsb, start, end);
+
+		end = intel_vrr_vmax_vblank_start(crtc_state);
+		start = end - vblank_delay - latency;
+		intel_dsb_wait_scanline_out(state, dsb, start, end);
+	} else {
+		end = intel_mode_vblank_start(&crtc_state->hw.adjusted_mode);
+		start = end - vblank_delay - latency;
+		intel_dsb_wait_scanline_out(state, dsb, start, end);
+	}
+}
+
 static void _intel_dsb_chain(struct intel_atomic_state *state,
 			     struct intel_dsb *dsb,
 			     struct intel_dsb *chained_dsb,
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index ff3b89dfffc1..cce5cb1c6071 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -46,6 +46,8 @@ void intel_dsb_wait_scanline_in(struct intel_atomic_state *state,
 void intel_dsb_wait_scanline_out(struct intel_atomic_state *state,
 				 struct intel_dsb *dsb,
 				 int lower, int upper);
+void intel_dsb_vblank_evade(struct intel_atomic_state *state,
+			    struct intel_dsb *dsb);
 void intel_dsb_chain(struct intel_atomic_state *state,
 		     struct intel_dsb *dsb,
 		     struct intel_dsb *chained_dsb,
-- 
2.44.2

