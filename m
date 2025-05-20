Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9402ABD197
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 10:14:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47A0E10E585;
	Tue, 20 May 2025 08:14:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IIJPmS14";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F7B210E56F;
 Tue, 20 May 2025 08:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747728857; x=1779264857;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9jAli5wFmwSgh0LNx13l+dQClcT3286lEdb1kpTLi8M=;
 b=IIJPmS14zYpUziCHnMZeOA5B5QC0DTAKnUQtZB9/FJkEzAoXSbiEsWLa
 /tAAY8qX8IzBJh9QjqF0Gstoja4sUVpg0Ya62b0Z0K3jJwTwzao+sUNdF
 1M1xLpyPXuVcGee4ZDfCYk4pbhAh6Rtjy8EehkoY9EIYm0kCi+Td4J/9S
 e7dxvs152nj5qnMZjetKsgyF84ipfbyTVa22lYjlABvlbezahueztrVZN
 DjeNHA6JejKfiFLQNwyhfMXfquIBE8UkcohxhhUX/MLCDw/2VuQ3d/N13
 3j4c0YzOu7VWYAevE7Zb6Irt+41wAaRMY02p1WgDk6qeZjraE1nOLj3ib g==;
X-CSE-ConnectionGUID: L/u12VzqQ/ysnd8Nv01LWg==
X-CSE-MsgGUID: O8fAkNa4RxyTc6blbA9hlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="48764851"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="48764851"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:14:16 -0700
X-CSE-ConnectionGUID: cJjS+G52TBCy/O3aTXoHIg==
X-CSE-MsgGUID: C2PHcOzMQc2A8xYYhWDXyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="144476033"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa005.fm.intel.com with ESMTP; 20 May 2025 01:14:14 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 animesh.manna@intel.com, chaitanya.kumar.borah@intel.com
Subject: [v7 08/11] drm/i915/display: use GOSUB to program double buffered LUT
 registers
Date: Tue, 20 May 2025 13:25:34 +0530
Message-Id: <20250520075537.4074010-9-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250520075537.4074010-1-chaitanya.kumar.borah@intel.com>
References: <20250520075537.4074010-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
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

With addition of double buffered GAMMA registers in PTL, we can now
program them in the active region. Use GOSUB instruction of DSB to
program them.

It is done in the following steps:
	1. intel_color_prepare_commit()
		- If the platform supports, prepare a dsb instance (dsb_color)
		  hooked to DSB0.
		- Add all the register write instructions to dsb_color through
		  the load_lut() hook
                - Do not add the vrr_send_push() logic to the buffer as it
		  should be taken care by dsb_commit instance of DSB0
                - Finish preparation of the buffer by aligning it to 64 bit

	2. intel_atomic_dsb_finish()
		- Add the gosub instruction into the dsb_commit instance of DSB0
		  using intel_dsb_gosub()
		- If needed, add the vrr_send_push() logic to dsb_commit after it

v2: Refactor code to simplify commit completion flow.
    Add some helpers along the way (Ville)
v3: s/doubled/double and add display to commit message prefix (Uma)

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c    | 39 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_color.h    |  2 +
 drivers/gpu/drm/i915/display/intel_display.c  | 24 +++++++-----
 .../drm/i915/display/intel_display_device.h   |  1 +
 4 files changed, 47 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index bb2da3a53e9c..ac00b86798fb 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1965,6 +1965,25 @@ void intel_color_modeset(const struct intel_crtc_state *crtc_state)
 	}
 }
 
+bool intel_color_uses_dsb(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->dsb_color;
+}
+
+bool intel_color_uses_chained_dsb(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	return crtc_state->dsb_color && !HAS_DOUBLE_BUFFERED_LUT(display);
+}
+
+bool intel_color_uses_gosub_dsb(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	return crtc_state->dsb_color && HAS_DOUBLE_BUFFERED_LUT(display);
+}
+
 void intel_color_prepare_commit(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
@@ -1982,20 +2001,27 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
 	if (!crtc_state->pre_csc_lut && !crtc_state->post_csc_lut)
 		return;
 
-	crtc_state->dsb_color = intel_dsb_prepare(state, crtc, INTEL_DSB_1, 1024);
-	if (!crtc_state->dsb_color)
+	if (HAS_DOUBLE_BUFFERED_LUT(display))
+		crtc_state->dsb_color = intel_dsb_prepare(state, crtc, INTEL_DSB_0, 1024);
+	else
+		crtc_state->dsb_color = intel_dsb_prepare(state, crtc, INTEL_DSB_1, 1024);
+
+	if (!intel_color_uses_dsb(crtc_state))
 		return;
 
 	display->funcs.color->load_luts(crtc_state);
 
-	if (crtc_state->use_dsb) {
+	if (crtc_state->use_dsb && intel_color_uses_chained_dsb(crtc_state)) {
 		intel_vrr_send_push(crtc_state->dsb_color, crtc_state);
 		intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color);
 		intel_vrr_check_push_sent(crtc_state->dsb_color, crtc_state);
 		intel_dsb_interrupt(crtc_state->dsb_color);
 	}
 
-	intel_dsb_finish(crtc_state->dsb_color);
+	if (intel_color_uses_gosub_dsb(crtc_state))
+		intel_dsb_gosub_finish(crtc_state->dsb_color);
+	else
+		intel_dsb_finish(crtc_state->dsb_color);
 }
 
 void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state)
@@ -2012,11 +2038,6 @@ void intel_color_wait_commit(const struct intel_crtc_state *crtc_state)
 		intel_dsb_wait(crtc_state->dsb_color);
 }
 
-bool intel_color_uses_dsb(const struct intel_crtc_state *crtc_state)
-{
-	return crtc_state->dsb_color;
-}
-
 static bool intel_can_preload_luts(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/drm/i915/display/intel_color.h
index 9d66457c1e89..bf7a12ce9df0 100644
--- a/drivers/gpu/drm/i915/display/intel_color.h
+++ b/drivers/gpu/drm/i915/display/intel_color.h
@@ -24,6 +24,8 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
 				struct intel_crtc *crtc);
 void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state);
 bool intel_color_uses_dsb(const struct intel_crtc_state *crtc_state);
+bool intel_color_uses_chained_dsb(const struct intel_crtc_state *crtc_state);
+bool intel_color_uses_gosub_dsb(const struct intel_crtc_state *crtc_state);
 void intel_color_wait_commit(const struct intel_crtc_state *crtc_state);
 void intel_color_commit_noarm(struct intel_dsb *dsb,
 			      const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index be074f6d0b8f..da3bce48f558 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7238,20 +7238,24 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		if (DISPLAY_VER(display) >= 9)
 			skl_detach_scalers(new_crtc_state->dsb_commit,
 					   new_crtc_state);
-
-		if (!new_crtc_state->dsb_color) {
-			intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
-
-			intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
-			intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
-			intel_vrr_check_push_sent(new_crtc_state->dsb_commit, new_crtc_state);
-			intel_dsb_interrupt(new_crtc_state->dsb_commit);
-		}
 	}
 
-	if (new_crtc_state->dsb_color)
+	if (intel_color_uses_chained_dsb(new_crtc_state))
 		intel_dsb_chain(state, new_crtc_state->dsb_commit,
 				new_crtc_state->dsb_color, true);
+	else if (intel_color_uses_gosub_dsb(new_crtc_state))
+		intel_dsb_gosub(new_crtc_state->dsb_commit,
+				new_crtc_state->dsb_color);
+
+	if (new_crtc_state->use_dsb && !intel_color_uses_chained_dsb(new_crtc_state)) {
+		intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
+
+		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
+		intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
+		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
+					  new_crtc_state);
+		intel_dsb_interrupt(new_crtc_state->dsb_commit);
+	}
 
 	intel_dsb_finish(new_crtc_state->dsb_commit);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index f0ea56cc5def..0ac5484c0043 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -157,6 +157,7 @@ struct intel_display_platforms {
 #define HAS_DMC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dmc)
 #define HAS_DMC_WAKELOCK(__display)	(DISPLAY_VER(__display) >= 20)
 #define HAS_DOUBLE_BUFFERED_M_N(__display)	(DISPLAY_VER(__display) >= 9 || (__display)->platform.broadwell)
+#define HAS_DOUBLE_BUFFERED_LUT(__display)	(DISPLAY_VER(__display) >= 30)
 #define HAS_DOUBLE_WIDE(__display)	(DISPLAY_VER(__display) < 4)
 #define HAS_DP20(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
 #define HAS_DPT(__display)		(DISPLAY_VER(__display) >= 13)
-- 
2.25.1

