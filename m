Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BDD78FE02
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 15:05:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD08810E7C7;
	Fri,  1 Sep 2023 13:05:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B1F610E7C7
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 13:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693573499; x=1725109499;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x43ZB0M20K72TbSfT3lgAuczKFCgrZ9jahH7kqkuaxs=;
 b=Zf0aDWYwv561anvU3lNM5XP9kdXjQ02jDNStnLQU1xSNAMFZGyd31OMH
 ioC+WDHUdpwhDWuGVrF15JmeFP5RQXEoslWhLubN1zN6uqzwAHzfHrGhZ
 pE4bi9Pn75HnLOaYd0/chQzJztAvGV9WixeBRWGEgegJgPs9Nla/Pyxpv
 LResAUb7/oyVH2rU3WdX0DnP1myAM0UxtsiOlC776/V6uEkHI4OOm+1gJ
 31uNgJ3vdqQrIaWVt1sBms+ZQQRBfxrR8WpxCvGrSPjTOQwXq3RPLfdyF
 /+eZmIcCy1YKHYtzkDV7UALm+mqHCapVmPZaTu7EvfsRNQDx3S7mgrH0/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="361240553"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="361240553"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 06:04:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="774994785"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="774994785"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga001.jf.intel.com with SMTP; 01 Sep 2023 06:04:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Sep 2023 16:04:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Sep 2023 16:04:30 +0300
Message-ID: <20230901130440.2085-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/12] drm/i915: Change intel_pipe_update_{start,
 end}() calling convention
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

We'll need to also look at the old crtc state in
intel_pipe_update_start() so change the calling convention to
just plumb in the full atomic state instead.

Cc: Manasi Navare <navaremanasi@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c    | 18 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_crtc.h    |  6 ++++--
 drivers/gpu/drm/i915/display/intel_display.c |  4 ++--
 3 files changed, 18 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 5caa928e5ce9..461949b48411 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -470,7 +470,8 @@ static int intel_mode_vblank_start(const struct drm_display_mode *mode)
 
 /**
  * intel_pipe_update_start() - start update of a set of display registers
- * @new_crtc_state: the new crtc state
+ * @state: the atomic state
+ * @crtc: the crtc
  *
  * Mark the start of an update to pipe registers that should be updated
  * atomically regarding vblank. If the next vblank will happens within
@@ -480,10 +481,12 @@ static int intel_mode_vblank_start(const struct drm_display_mode *mode)
  * until a subsequent call to intel_pipe_update_end(). That is done to
  * avoid random delays.
  */
-void intel_pipe_update_start(struct intel_crtc_state *new_crtc_state)
+void intel_pipe_update_start(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc)
 {
-	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct drm_display_mode *adjusted_mode = &new_crtc_state->hw.adjusted_mode;
 	long timeout = msecs_to_jiffies_timeout(1);
 	int scanline, min, max, vblank_start;
@@ -631,15 +634,18 @@ static void dbg_vblank_evade(struct intel_crtc *crtc, ktime_t end) {}
 
 /**
  * intel_pipe_update_end() - end update of a set of display registers
- * @new_crtc_state: the new crtc state
+ * @state: the atomic state
+ * @crtc: the crtc
  *
  * Mark the end of an update started with intel_pipe_update_start(). This
  * re-enables interrupts and verifies the update was actually completed
  * before a vblank.
  */
-void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
+void intel_pipe_update_end(struct intel_atomic_state *state,
+			   struct intel_crtc *crtc)
 {
-	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
+	struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 	int scanline_end = intel_get_crtc_scanline(crtc);
 	u32 end_vbl_count = intel_crtc_get_vblank_counter(crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
index 51a4c8df9e65..22d7993d1f0b 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc.h
@@ -36,8 +36,10 @@ void intel_crtc_state_reset(struct intel_crtc_state *crtc_state,
 u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc);
 void intel_crtc_vblank_on(const struct intel_crtc_state *crtc_state);
 void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state);
-void intel_pipe_update_start(struct intel_crtc_state *new_crtc_state);
-void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state);
+void intel_pipe_update_start(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc);
+void intel_pipe_update_end(struct intel_atomic_state *state,
+			   struct intel_crtc *crtc);
 void intel_wait_for_vblank_workers(struct intel_atomic_state *state);
 struct intel_crtc *intel_first_crtc(struct drm_i915_private *i915);
 struct intel_crtc *intel_crtc_for_pipe(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f6397462e4c2..cfad967b5684 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6559,7 +6559,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	intel_crtc_planes_update_noarm(state, crtc);
 
 	/* Perform vblank evasion around commit operation */
-	intel_pipe_update_start(new_crtc_state);
+	intel_pipe_update_start(state, crtc);
 
 	commit_pipe_pre_planes(state, crtc);
 
@@ -6567,7 +6567,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 
 	commit_pipe_post_planes(state, crtc);
 
-	intel_pipe_update_end(new_crtc_state);
+	intel_pipe_update_end(state, crtc);
 
 	/*
 	 * We usually enable FIFO underrun interrupts as part of the
-- 
2.41.0

