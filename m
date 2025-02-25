Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D904A44A30
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 19:24:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEF7010E794;
	Tue, 25 Feb 2025 18:24:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mgQoh4S5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A56510E793;
 Tue, 25 Feb 2025 18:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740507881; x=1772043881;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xku03V5fJSaKYGqA1F2Fxp5Pzm0t+jp9vJ/aUzZZB+I=;
 b=mgQoh4S5bqUxSqy6pWefF3cWc8MIH/5abp4ApYoxQwTjg1jTQtV1kr09
 9X0Z3U9C8NkIs+yQMs/oePaN0s1FPwffiZEfx7bTwuWLFOEQ3IBUGZJR1
 7lgDVbnuSuIl6aO3bjp+tAlwFyq7WBuQeDkpG9g8TKr0ecE766LX/jl9M
 NvFVDIOmCTus0l1TLwReqrFhcf47weA3lWX0UEPKY02uOU9dY0sNo7PYk
 fpU32mMGxrGNfDWNP1RFxSOOSdwk3fd7AI7BDKYJ+EqYUc09Jn3KWCIiD
 YdI51ShM53yd05C/RXaVfLNeNgUMR++9929OfCGl+Tag3J76//RpIvO/I g==;
X-CSE-ConnectionGUID: h+wXRvKxQ2+zWq89VkJN/w==
X-CSE-MsgGUID: jvbpaH6ET8+hHBjKxPJcRQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="41245936"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208,223";a="41245936"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 10:24:41 -0800
X-CSE-ConnectionGUID: 9AU93LCZRbuizNFjtWqrTw==
X-CSE-MsgGUID: 2Rid8mJITRCRq2N380tnGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; 
 d="scan'208,223";a="117081417"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa009.fm.intel.com with ESMTP; 25 Feb 2025 10:24:39 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com
Subject: [PATCH 1/2] drm/i915/display: Add MMIO path for double-buffered LUT
 registers
Date: Tue, 25 Feb 2025 23:39:04 +0530
Message-Id: <20250225180905.1588084-2-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250225180905.1588084-1-chaitanya.kumar.borah@intel.com>
References: <20250225180905.1588084-1-chaitanya.kumar.borah@intel.com>
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

This patch makes the following changes

	- Adds the macro HAS_DOUBLE_BUFFERED_LUT() to distinguish
	  platforms that have double buffered LUT registers.

	- Program LUT values in active region through
	  intel_pre_update_crtc()

	- Disable updating of LUT values during vblank.

	- Disable pre-loading of LUT values as they are no longer
	  single buffered.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c          | 4 ++++
 drivers/gpu/drm/i915/display/intel_crtc.c           | 4 +++-
 drivers/gpu/drm/i915/display/intel_display.c        | 6 +++++-
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 4 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index cfe14162231d..c3ee34b96c15 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -2022,6 +2022,10 @@ static bool intel_can_preload_luts(struct intel_atomic_state *state,
 {
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
+	struct intel_display *display = to_intel_display(crtc);
+
+	if (HAS_DOUBLE_BUFFERED_LUT(display))
+		return false;
 
 	return !old_crtc_state->post_csc_lut &&
 		!old_crtc_state->pre_csc_lut;
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 5b2603ef2ff7..927f9acf61c4 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -432,10 +432,12 @@ static void intel_crtc_vblank_work(struct kthread_work *base)
 	struct intel_crtc_state *crtc_state =
 		container_of(work, typeof(*crtc_state), vblank_work);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	trace_intel_crtc_vblank_work_start(crtc);
 
-	intel_color_load_luts(crtc_state);
+	if (!HAS_DOUBLE_BUFFERED_LUT(display))
+		intel_color_load_luts(crtc_state);
 
 	if (crtc_state->uapi.event) {
 		spin_lock_irq(&crtc->base.dev->event_lock);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 065fdf6dbb88..919e236a9650 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6879,9 +6879,13 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 
 	if (!modeset &&
 	    intel_crtc_needs_color_update(new_crtc_state) &&
-	    !new_crtc_state->use_dsb)
+	    !new_crtc_state->use_dsb) {
 		intel_color_commit_noarm(NULL, new_crtc_state);
 
+		if (HAS_DOUBLE_BUFFERED_LUT(display))
+			intel_color_load_luts(new_crtc_state);
+	}
+
 	if (!new_crtc_state->use_dsb)
 		intel_crtc_planes_update_noarm(NULL, state, crtc);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index fc33791f02b9..419d0213e412 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -155,6 +155,7 @@ struct intel_display_platforms {
 #define HAS_DMC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dmc)
 #define HAS_DMC_WAKELOCK(__display)	(DISPLAY_VER(__display) >= 20)
 #define HAS_DOUBLE_BUFFERED_M_N(__display)	(DISPLAY_VER(__display) >= 9 || (__display)->platform.broadwell)
+#define HAS_DOUBLE_BUFFERED_LUT(__display)	(DISPLAY_VER(__display) >= 30)
 #define HAS_DOUBLE_WIDE(__display)	(DISPLAY_VER(__display) < 4)
 #define HAS_DP_MST(__display)		(DISPLAY_INFO(__display)->has_dp_mst)
 #define HAS_DP20(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
-- 
2.25.1

