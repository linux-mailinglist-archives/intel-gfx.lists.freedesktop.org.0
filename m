Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92824A1B4D9
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 12:39:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 998C210E893;
	Fri, 24 Jan 2025 11:39:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jMwKk1Aw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C250F10E7EC;
 Fri, 24 Jan 2025 11:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737718768; x=1769254768;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cuOhf+NIqTh7WByxtessDDjDxFIHIGk49u1WbED85aQ=;
 b=jMwKk1Aw86dAjLgpnfeVpV/IztRek6U2EqEjmJVjzaWx039ZGBsKKIM/
 4XmdBxmwbZnSHX4e2ACD1QAYAZaM8p2yBGoOyWiDY24gC/Ts/73aYW4vU
 +zf2jn3+jgXtU6bxPVd9I29Q4hcUSOXEdthBxKMui2M+B9JD1gul9Dtb5
 TrQbUgw9xSxC+aM5lxShu9bHceeYJZGx9OJCJnfxFEY2TVBQ7e9SGrV8s
 GyA0Lc9KWCuFB09o5t5vajQ4xy0lSGctwPb045R156tFGeGc2sbvzxav7
 sdVEhaaAkyxXbS/uZphQaVpD+NV4OsgJTVRg2XyN+5Nv2CvkEYFjYmfRv Q==;
X-CSE-ConnectionGUID: Ct9+XMstRxacK4qU0JZeRw==
X-CSE-MsgGUID: UCfMcAltQcyguSFMeKl0hA==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="49237762"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="49237762"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 03:39:28 -0800
X-CSE-ConnectionGUID: D4QVdlsrQgK6tV1yVBi1bw==
X-CSE-MsgGUID: RIrnHi/6SWyZb8TcRwwXSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="112757819"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.138])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 03:39:26 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v5 03/13] drm/i915/psr: Split setting sff and cff bits away
 from intel_psr_force_update
Date: Fri, 24 Jan 2025 13:38:56 +0200
Message-ID: <20250124113906.850488-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250124113906.850488-1-jouni.hogander@intel.com>
References: <20250124113906.850488-1-jouni.hogander@intel.com>
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

