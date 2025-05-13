Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D77AB4ADD
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 07:19:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8569410E523;
	Tue, 13 May 2025 05:19:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HVSk1lLL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1C3810E51E;
 Tue, 13 May 2025 05:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747113550; x=1778649550;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1UZFrzvXG7/72BJpIOcdmutEqKbv8bDbhENFfBe1ki8=;
 b=HVSk1lLLwcy8gYWh6XdGsEjDvvMeARxIE0PCx10xhl8dXIfRzMTY7NOt
 8DI99dME51bSSmnWxQjTKS/Inyv4m6xcszimSPdG5wr28vJj6ttD4je1j
 +p8urVFo7hnLLu/Yhugk6GLghV7lp7He1gu4v86JNzS1Q2WapjXX/iaXd
 p2pzFmOEdw5cuZqglfo3RYVWjPqkuTW38AnxoCh7sZZyEV4GL+cDT5YE/
 ZZVdUHyA2KdyRf2nIjsK3G7Md8r5cKkLQ70WkNP7o/8lzHZik7hU0ClBU
 wOk3xy4+69xwCTKSZnWzznl4cfLDEf48L1KRPWx81jbX9frDi5K3ISLQB g==;
X-CSE-ConnectionGUID: b7P0WM3WR3OZHne8ehlzgQ==
X-CSE-MsgGUID: 8+5pTjIOS8yaETkd3WXGog==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="51597850"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="51597850"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 22:19:09 -0700
X-CSE-ConnectionGUID: 8Q7rVT7bQDG3+8UjkoLOdw==
X-CSE-MsgGUID: 8Fu4NBkpQLyujAheNVdEzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="137506197"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 12 May 2025 22:19:08 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v5 11/17] drm/i915/vrr: Implement vblank evasion with DC
 balancing
Date: Tue, 13 May 2025 10:46:54 +0530
Message-ID: <20250513051700.507389-12-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
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
index 481488d1fe67..14b9edbcc6c8 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -578,7 +578,36 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
 	if (crtc_state->has_psr)
 		intel_dsb_emit_wait_dsl(dsb, DSB_OPCODE_WAIT_DSL_OUT, 0, 0);
 
-	if (pre_commit_is_vrr_active(state, crtc)) {
+	if (pre_commit_is_vrr_active(state, crtc) && crtc_state->vrr.dc_balance.enable) {
+		int vblank_delay = intel_vrr_vblank_delay(crtc_state);
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
 		int vblank_delay = intel_vrr_vblank_delay(crtc_state);
 
 		end = intel_vrr_vmin_vblank_start(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 680013f00fc0..eb74d08d6690 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -644,10 +644,30 @@ intel_pre_commit_crtc_state(struct intel_atomic_state *state,
 
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

