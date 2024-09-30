Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4781898AA8C
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 19:04:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4A4E10E565;
	Mon, 30 Sep 2024 17:04:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XRhltJxz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1274C10E562;
 Mon, 30 Sep 2024 17:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727715875; x=1759251875;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tHcaBZyAo9xnJfpR1AeJl4ZK3ONvCAwesQDcR6w9nSQ=;
 b=XRhltJxzYY2GDGdmy0GBoy6XzCDCdptymb+cChURvrV8Yp2A5j6pd9e0
 rlWE5F1YxjIPbU4yCR1Fe/eMb5eSk6qsvvOtokzWT5x2dT1HWvVFMVvy+
 dlu7QHSO2V2aOlHrFd4zASlYKWwNlUb3LSCo2dE6VSt2tgX5lCar4I/Js
 4Ym91DvzG7jD5+GYyBWJod9OGkSr6fsrA0j/oAESlBv2N2FFTc4TbW3FM
 QLmBltX0SPhBG1V565NqrDfQOjGvjIl5z1/cYL7q8E1kd0dr7ZSIRI6Ja
 XBWxQEW+MoXDx87wXmVAs42KDLKWdebP2frQK5t/cL7Kbe5OPMqdozOrT Q==;
X-CSE-ConnectionGUID: 4qndK+r0SR2QazzVGAp1Vg==
X-CSE-MsgGUID: v3sxUT0MSeqVbgaBmpFsUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="44276965"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="44276965"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 10:04:34 -0700
X-CSE-ConnectionGUID: tMWoSz3wQp62HAN6slniNA==
X-CSE-MsgGUID: d5dR9oGgT6iT968OtJwz9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="73490937"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Sep 2024 10:04:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Sep 2024 20:04:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 05/13] drm/i915/dsb: Introduce intel_dsb_vblank_evade()
Date: Mon, 30 Sep 2024 20:04:07 +0300
Message-ID: <20240930170415.23841-6-ville.syrjala@linux.intel.com>
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

Reviewed-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 31 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dsb.h |  2 ++
 2 files changed, 33 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 9d323347b4de..71208be9225e 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -128,6 +128,12 @@ pre_commit_crtc_state(struct intel_atomic_state *state,
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
@@ -527,6 +533,31 @@ static u32 dsb_error_int_en(struct intel_display *display)
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
2.45.2

