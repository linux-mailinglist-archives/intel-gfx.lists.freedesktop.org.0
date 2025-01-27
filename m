Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE73A1D479
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 11:29:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B237C10E3A1;
	Mon, 27 Jan 2025 10:29:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q9Z67zpy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FDFB10E3A4;
 Mon, 27 Jan 2025 10:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737973751; x=1769509751;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cuOhf+NIqTh7WByxtessDDjDxFIHIGk49u1WbED85aQ=;
 b=Q9Z67zpygBHrKaSjZmBLOHH1Qgjxg5WOd28rpmrZuVBZShT1V7RM9amj
 0s3kZg2P0474XdDbtuOQHjGlkG+9ZgS1brQZmdqyT7m1LwsA/5Ph6DWxy
 DI84A7kjrdQPuSL0LwxJMdPvT/LqbmbnNUETf25pWpkT3adeoVesis11x
 wq4Y2Mj+XtdAWR0vsH8HQOKRlaKbOxFnJLqdGni3GmWnGUqvzQ/z93iIz
 b9eNNJGLEQmVYHAa0jSqLaxJYXNeBKXWRYCaIhE9VlbLq5Jb2TK58K6hG
 Z32C5HqSVLqM3WjvS+KNW/yF/LtfH+GOc6V2vF1u/I68uAPi0ADOMCRSF Q==;
X-CSE-ConnectionGUID: vd24LUvOTuaFBgwODl90XA==
X-CSE-MsgGUID: DtGNxcEUTcWc+ah2LYN+9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="38529857"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="38529857"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 02:29:11 -0800
X-CSE-ConnectionGUID: 0nw7WyKNQd+YtKmPCqTKHg==
X-CSE-MsgGUID: k15wYD1BTbuZsUR5SIB9HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108837829"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.95])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 02:29:10 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, ville.syrjala@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 03/12] drm/i915/psr: Split setting sff and cff bits away
 from intel_psr_force_update
Date: Mon, 27 Jan 2025 12:28:37 +0200
Message-ID: <20250127102846.1237560-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250127102846.1237560-1-jouni.hogander@intel.com>
References: <20250127102846.1237560-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

This is a clean-up and a preparation for adding own SFF and CFF registers
for LunarLake onwards.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 88 +++++++++---------------
 1 file changed, 31 insertions(+), 57 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5605da120c6c5..4df03d00c4b74 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2327,15 +2327,6 @@ static u32 man_trk_ctl_continuos_full_frame(struct intel_display *display)
 static void intel_psr_force_update(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
-
-	if (intel_dp->psr.psr2_sel_fetch_enabled)
-		intel_de_write(display,
-			       PSR2_MAN_TRK_CTL(display, cpu_transcoder),
-			       man_trk_ctl_enable_bit_get(display) |
-			       man_trk_ctl_partial_frame_bit_get(display) |
-			       man_trk_ctl_single_full_frame_bit_get(display) |
-			       man_trk_ctl_continuos_full_frame(display));
 
 	/*
 	 * Display WA #0884: skl+
@@ -3135,31 +3126,31 @@ static void intel_psr_work(struct work_struct *work)
 	mutex_unlock(&intel_dp->psr.lock);
 }
 
-static void _psr_invalidate_handle(struct intel_dp *intel_dp)
+static void intel_psr_configure_full_frame_update(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
-	if (intel_dp->psr.psr2_sel_fetch_enabled) {
-		u32 val;
+	if (!intel_dp->psr.psr2_sel_fetch_enabled)
+		return;
 
-		if (intel_dp->psr.psr2_sel_fetch_cff_enabled) {
-			/* Send one update otherwise lag is observed in screen */
-			intel_de_write(display,
-				       CURSURFLIVE(display, intel_dp->psr.pipe),
-				       0);
-			return;
+	intel_de_write(display,
+		       PSR2_MAN_TRK_CTL(display, cpu_transcoder),
+		       man_trk_ctl_enable_bit_get(display) |
+		       man_trk_ctl_partial_frame_bit_get(display) |
+		       man_trk_ctl_single_full_frame_bit_get(display) |
+		       man_trk_ctl_continuos_full_frame(display));
+}
+
+static void _psr_invalidate_handle(struct intel_dp *intel_dp)
+{
+	if (intel_dp->psr.psr2_sel_fetch_enabled) {
+		if (!intel_dp->psr.psr2_sel_fetch_cff_enabled) {
+			intel_dp->psr.psr2_sel_fetch_cff_enabled = true;
+			intel_psr_configure_full_frame_update(intel_dp);
 		}
 
-		val = man_trk_ctl_enable_bit_get(display) |
-		      man_trk_ctl_partial_frame_bit_get(display) |
-		      man_trk_ctl_continuos_full_frame(display);
-		intel_de_write(display,
-			       PSR2_MAN_TRK_CTL(display, cpu_transcoder),
-			       val);
-		intel_de_write(display,
-			       CURSURFLIVE(display, intel_dp->psr.pipe), 0);
-		intel_dp->psr.psr2_sel_fetch_cff_enabled = true;
+		intel_psr_force_update(intel_dp);
 	} else {
 		intel_psr_exit(intel_dp);
 	}
@@ -3240,44 +3231,27 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
-	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
 	if (intel_dp->psr.psr2_sel_fetch_enabled) {
 		if (intel_dp->psr.psr2_sel_fetch_cff_enabled) {
 			/* can we turn CFF off? */
-			if (intel_dp->psr.busy_frontbuffer_bits == 0) {
-				u32 val = man_trk_ctl_enable_bit_get(display) |
-					man_trk_ctl_partial_frame_bit_get(display) |
-					man_trk_ctl_single_full_frame_bit_get(display) |
-					man_trk_ctl_continuos_full_frame(display);
-
-				/*
-				 * Set psr2_sel_fetch_cff_enabled as false to allow selective
-				 * updates. Still keep cff bit enabled as we don't have proper
-				 * SU configuration in case update is sent for any reason after
-				 * sff bit gets cleared by the HW on next vblank.
-				 */
-				intel_de_write(display,
-					       PSR2_MAN_TRK_CTL(display, cpu_transcoder),
-					       val);
-				intel_de_write(display,
-					       CURSURFLIVE(display, intel_dp->psr.pipe),
-					       0);
+			if (intel_dp->psr.busy_frontbuffer_bits == 0)
 				intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
-			}
-		} else {
-			/*
-			 * continuous full frame is disabled, only a single full
-			 * frame is required
-			 */
-			intel_psr_force_update(intel_dp);
 		}
-	} else {
-		intel_psr_force_update(intel_dp);
 
-		if (!intel_dp->psr.active && !intel_dp->psr.busy_frontbuffer_bits)
-			queue_work(dev_priv->unordered_wq, &intel_dp->psr.work);
+		/*
+		 * Still keep cff bit enabled as we don't have proper SU
+		 * configuration in case update is sent for any reason after
+		 * sff bit gets cleared by the HW on next vblank.
+		 */
+		intel_psr_configure_full_frame_update(intel_dp);
 	}
+
+	intel_psr_force_update(intel_dp);
+
+	if (!intel_dp->psr.psr2_sel_fetch_enabled && !intel_dp->psr.active &&
+	    !intel_dp->psr.busy_frontbuffer_bits)
+		queue_work(dev_priv->unordered_wq, &intel_dp->psr.work);
 }
 
 /**
-- 
2.43.0

