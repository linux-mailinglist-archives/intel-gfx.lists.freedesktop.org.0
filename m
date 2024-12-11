Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE009ED4A6
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 19:22:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 074B110E49B;
	Wed, 11 Dec 2024 18:22:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V/KRF11b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F58E10E1E8;
 Wed, 11 Dec 2024 18:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733941342; x=1765477342;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fqhJ9LRtgovKGrsvHYzuF+ngTZGufRiU4H+pUqBpsx0=;
 b=V/KRF11b1vz2jM4u1LPdDoczP1KPItRAq3CndfJ/ca/eA/E8lK7EqznJ
 0gop+5N6UV73TpIk9Djg7PAMNt1WEwA4wOtL7uFqJYrbrmOGDqeVmFY7S
 b/gPDW7rfjd4HKOSSwNXivh/D3QOtIXRLELSQAMp3DxzNvPE1XkkZYx6L
 hTwTyoU0KibSxFMSdI/GY3nOF0VQpzuSNFNsIFFqoHtkK3jSPfhpxabPF
 YQcRhi4wNo4fKLNHc7dRf/0axsP7MDU4WApIVtV47cKE3RmnJO1YFS+YA
 ynM4HFq9oZnPih6qudTVrgSFgcK17cnTsO9Ms0ZYgc8Sq1Zu9VVT/zAVf w==;
X-CSE-ConnectionGUID: PGrLPtE8Rd2wc+tMkGEbqw==
X-CSE-MsgGUID: 4UJBa2E4Ss6Mmkqf6RdvGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="44809497"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208,223";a="44809497"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 10:22:22 -0800
X-CSE-ConnectionGUID: rgRyQYJ2Q6O4UibidB9DBQ==
X-CSE-MsgGUID: 9ZV2NjdWR6u/kkvtsOr4jA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,226,1728975600"; d="scan'208,223";a="95977109"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa006.jf.intel.com with ESMTP; 11 Dec 2024 10:22:20 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ville.syrjala@linux.intel.com,
 chaitanya.kumar.borah@intel.com
Subject: [RFC PATCH] drm/xe/display: Program double buffered LUT registers
Date: Wed, 11 Dec 2024 23:48:30 +0530
Message-Id: <20241211181830.3348155-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
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

From PTL, LUT registers are made double buffered. This helps us
to program them in the active region without any concern of tearing.
This particulary helps in case of displays with high refresh rates
where vblank periods are shorter.

This patch tries to incorporates LUT programming to the noarm commit path
for PTL without making significant changes to the color callback framework
itself. DSB0 is still used to program to non LUT color registers
(for ex. CTM). However, it does not chain DSB1 to program the LUT
registers. Instead, it is programmed through intel_pre_update_crtc path.

LUT programming is also disabled in the vblank worker.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 28 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_crtc.c    |  4 ++-
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 3 files changed, 31 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 7cd902bbd244..513b2718bf5a 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1911,6 +1911,16 @@ static void chv_load_luts(const struct intel_crtc_state *crtc_state)
 			  crtc_state->cgm_mode);
 }
 
+static void ptl_color_commit_noarm(struct intel_dsb *dsb,
+				   const struct intel_crtc_state *crtc_state)
+{
+	icl_load_csc_matrix(dsb, crtc_state);
+	if (crtc_state->preload_luts || intel_crtc_needs_modeset(crtc_state) || dsb)
+		return;
+
+	icl_load_luts(crtc_state);
+}
+
 void intel_color_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -1980,6 +1990,9 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
 	if (!crtc_state->pre_csc_lut && !crtc_state->post_csc_lut)
 		return;
 
+	if (DISPLAY_VER(display) >= 30)
+		return;
+
 	crtc_state->dsb_color_vblank = intel_dsb_prepare(state, crtc, INTEL_DSB_1, 1024);
 	if (!crtc_state->dsb_color_vblank)
 		return;
@@ -3842,6 +3855,17 @@ static const struct intel_color_funcs i9xx_color_funcs = {
 	.get_config = i9xx_get_config,
 };
 
+static const struct intel_color_funcs ptl_color_funcs = {
+	.color_check = icl_color_check,
+	.color_commit_noarm = ptl_color_commit_noarm,
+	.color_commit_arm = icl_color_commit_arm,
+	.load_luts = icl_load_luts,
+	.read_luts = icl_read_luts,
+	.lut_equal = icl_lut_equal,
+	.read_csc = icl_read_csc,
+	.get_config = skl_get_config,
+};
+
 static const struct intel_color_funcs tgl_color_funcs = {
 	.color_check = icl_color_check,
 	.color_commit_noarm = icl_color_commit_noarm,
@@ -3989,7 +4013,9 @@ void intel_color_init_hooks(struct intel_display *display)
 		else
 			display->funcs.color = &i9xx_color_funcs;
 	} else {
-		if (DISPLAY_VER(display) >= 12)
+		if (DISPLAY_VER(display) >= 30)
+			display->funcs.color = &ptl_color_funcs;
+		else if (DISPLAY_VER(display) >= 12)
 			display->funcs.color = &tgl_color_funcs;
 		else if (DISPLAY_VER(display) == 11)
 			display->funcs.color = &icl_color_funcs;
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index a2c528d707f4..cb02af401085 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -429,10 +429,12 @@ static void intel_crtc_vblank_work(struct kthread_work *base)
 	struct intel_crtc_state *crtc_state =
 		container_of(work, typeof(*crtc_state), vblank_work);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	trace_intel_crtc_vblank_work_start(crtc);
 
-	intel_color_load_luts(crtc_state);
+	if (DISPLAY_VER(display) < 30)
+		intel_color_load_luts(crtc_state);
 
 	if (crtc_state->uapi.event) {
 		spin_lock_irq(&crtc->base.dev->event_lock);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 35c8904ecf44..a0bcffe470e5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7203,7 +7203,7 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 
 	if (!modeset &&
 	    intel_crtc_needs_color_update(new_crtc_state) &&
-	    !new_crtc_state->use_dsb)
+	    (!new_crtc_state->use_dsb || !new_crtc_state->dsb_color_vblank))
 		intel_color_commit_noarm(NULL, new_crtc_state);
 
 	if (!new_crtc_state->use_dsb)
-- 
2.25.1

