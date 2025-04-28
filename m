Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A808A9E825
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 08:23:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9407210E39A;
	Mon, 28 Apr 2025 06:23:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fv/wZRPD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4219510E38D;
 Mon, 28 Apr 2025 06:23:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745821405; x=1777357405;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PqqmAsf3sI1ejiZdg9nmGlCxf8WgmMhiA8rp1knmU9Q=;
 b=Fv/wZRPDC16EgQSC5olo5tnAtQ38x+o138kr3xqnNObOH2RTQ3xtnOv1
 ZyEkZLrRxjxYyUDZmydeI5mN1zBsZJzRPAxQn3HEdQauUXKkTHWY4sXPq
 rNQSMZk6+9WRvAAOcobH24NksUKCQnQOV+kZCDTH0d+1NzJaqLkEioJfs
 AjdZEpp30O4HehEeBxgZFnCjBYg4NBWKT6IlcxV+szq4cCvOvc5reTPLR
 dQhOnFO8bN6YC5watWMeCx6WyjfScgIxUKrmPlCTNaAflYCuAmn77K61/
 NEjgSvD7I3wVPSJ2QMgr4F3V5/NIqxcUItGKFnH9/qLaXSua75w69prea w==;
X-CSE-ConnectionGUID: 4qsp3oMgRaKola+2Y2+E7Q==
X-CSE-MsgGUID: 2pDV3358RpusTCUQVvjYxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51204198"
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="51204198"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 23:23:25 -0700
X-CSE-ConnectionGUID: XbT7+WcxT06Yllor+zZhYg==
X-CSE-MsgGUID: 0wr3TgOFRTm7iIDUi4bSDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="138231254"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa005.fm.intel.com with ESMTP; 27 Apr 2025 23:23:23 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v3 15/15] drm/i915/vrr: enable dc balance bit
Date: Mon, 28 Apr 2025 11:50:58 +0530
Message-ID: <20250428062058.2811655-16-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
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

Enable dc balance from vrr compute config and enable
double buffer adjustment bit when vrr is enabled in
adaptive vtotal mode. Along with this enable frame
counters for DC balance odd and even frame count
calculation.

--v2: Update commit message

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 0f0e21cb05a9..2111503dff92 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -259,7 +259,12 @@ void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
 static
 void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	crtc_state->vrr.enable = true;
+
+	if (HAS_VRR_DC_BALANCE(display))
+		crtc_state->vrr.dc_balance.enable = true;
+
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
 
@@ -623,6 +628,8 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	ctl = VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state);
 	if (crtc_state->cmrr.enable)
 		ctl |= VRR_CTL_CMRR_ENABLE;
+	if (crtc_state->vrr.dc_balance.enable)
+		ctl |= VRR_CTL_DCB_ADJ_ENABLE;
 
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), ctl);
 
@@ -641,6 +648,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 			       crtc_state->vrr.dc_balance.slope);
 		intel_de_write(display, PIPEDMC_DCB_VBLANK(display, cpu_transcoder),
 			       crtc_state->vrr.dc_balance.vblank_target);
+		/* FIXME reset counters? */
+		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(display, cpu_transcoder),
+			       ADAPTIVE_SYNC_COUNTER_EN);
 		intel_pipedmc_dcb_enable(NULL, crtc);
 	}
 }
-- 
2.48.1

