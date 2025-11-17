Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7464CC62700
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 06:45:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84A7110E2D8;
	Mon, 17 Nov 2025 05:44:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dfv5TD9e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1152110E2CD;
 Mon, 17 Nov 2025 05:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763358294; x=1794894294;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Zh4ZHkEc6sdrw/a5UBxqgXZNpZti9vSGXDYMQ1TdA8Y=;
 b=Dfv5TD9eUwoAaX7wP/yTB4sR5WTs+irujlcub26wdr03jlbktqxxmQsJ
 JO5IU2QLAd2uCmLADT3p4vkvIz+ZwyPZYJhmxOZCiMVwVUPDJUcps4k6E
 wqCD+lfxOrpVFJrjVpaju91BK+cVWdoDLrM9sBMBJ2AtCPUG32t2jc83O
 36sifsNM8KzeowFdLzSd7q2WJUk+LGM/mG1/0jozv8PsGgPAhl/JXmSXw
 07+rng1TCz0/2xZ+j2LhQ332B+vS/uFSVp0nccGg6wwmJhToMWLZFnsOV
 mZdR0fQaebT1UZpMk4t2DzIycrS5jEf7DGRmHMsvsi5qrpsnnJMAJ2Gr6 g==;
X-CSE-ConnectionGUID: xut0J5T5R6+xnEAK91VWLA==
X-CSE-MsgGUID: 7IySGlKvQe+xwqgqI+GBYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="65446052"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="65446052"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 21:44:54 -0800
X-CSE-ConnectionGUID: Ep5sFI8iRRSY+liFtGyfxA==
X-CSE-MsgGUID: KM03vO0xSuKbb2lVi//icg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="190016381"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 16 Nov 2025 21:44:52 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v8 12/18] drm/i915/vrr: Implement vblank evasion with DC
 balancing
Date: Mon, 17 Nov 2025 11:14:36 +0530
Message-ID: <20251117054442.4047665-13-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add vblank evasion logic when vrr is already enabled along with
dc balance is computed.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c    | 31 ++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vblank.c | 26 +++++++++++++++--
 2 files changed, 53 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 4ad4efbf9253..83130bb74aa9 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -704,7 +704,36 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
 	if (crtc_state->has_psr)
 		intel_dsb_emit_wait_dsl(dsb, DSB_OPCODE_WAIT_DSL_OUT, 0, 0);
 
-	if (pre_commit_is_vrr_active(state, crtc)) {
+	if (pre_commit_is_vrr_active(state, crtc) && crtc_state->vrr.dc_balance.enable) {
+		int vblank_delay = crtc_state->set_context_latency;
+		int vmin_vblank_start, vmax_vblank_start;
+
+		vmin_vblank_start = intel_vrr_dcb_vmin_vblank_start_next(crtc_state);
+
+		if (vmin_vblank_start >= 0) {
+			end = vmin_vblank_start;
+			start = end - vblank_delay - latency;
+			intel_dsb_wait_scanline_out(state, dsb, start, end);
+		}
+
+		vmax_vblank_start = intel_vrr_dcb_vmax_vblank_start_next(crtc_state);
+
+		if (vmax_vblank_start >= 0) {
+			end = vmax_vblank_start;
+			start = end - vblank_delay - latency;
+			intel_dsb_wait_scanline_out(state, dsb, start, end);
+		}
+
+		vmin_vblank_start = intel_vrr_dcb_vmin_vblank_start_final(crtc_state);
+		end = vmin_vblank_start;
+		start = end - vblank_delay - latency;
+		intel_dsb_wait_scanline_out(state, dsb, start, end);
+
+		vmax_vblank_start = intel_vrr_dcb_vmax_vblank_start_final(crtc_state);
+		end = vmax_vblank_start;
+		start = end - vblank_delay - latency;
+		intel_dsb_wait_scanline_out(state, dsb, start, end);
+	} else if (pre_commit_is_vrr_active(state, crtc)) {
 		int vblank_delay = crtc_state->set_context_latency;
 
 		end = intel_vrr_vmin_vblank_start(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index de20baeb9d99..df5879489963 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -654,10 +654,30 @@ intel_pre_commit_crtc_state(struct intel_atomic_state *state,
 
 static int vrr_vblank_start(const struct intel_crtc_state *crtc_state)
 {
-	if (intel_vrr_is_push_sent(crtc_state))
-		return intel_vrr_vmin_vblank_start(crtc_state);
+	bool is_push_sent = intel_vrr_is_push_sent(crtc_state);
+	int vblank_start;
+
+	if (!crtc_state->vrr.dc_balance.enable) {
+		if (is_push_sent)
+			return intel_vrr_vmin_vblank_start(crtc_state);
+		else
+			return intel_vrr_vmax_vblank_start(crtc_state);
+	}
+
+	if (is_push_sent)
+		vblank_start = intel_vrr_dcb_vmin_vblank_start_next(crtc_state);
 	else
-		return intel_vrr_vmax_vblank_start(crtc_state);
+		vblank_start = intel_vrr_dcb_vmax_vblank_start_next(crtc_state);
+
+	if (vblank_start >= 0)
+		return vblank_start;
+
+	if (is_push_sent)
+		vblank_start = intel_vrr_dcb_vmin_vblank_start_final(crtc_state);
+	else
+		vblank_start = intel_vrr_dcb_vmax_vblank_start_final(crtc_state);
+
+	return vblank_start;
 }
 
 void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
-- 
2.48.1

