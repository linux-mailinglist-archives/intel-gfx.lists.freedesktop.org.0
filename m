Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E377AA8B054
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 08:29:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD5EC10E83B;
	Wed, 16 Apr 2025 06:29:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EmeIGZFb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 607BC10E83A
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744784993; x=1776320993;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cdle4LkhKj4XV9Oj8cmzqk1kyrn/v5Y1rz4sM1dDjgw=;
 b=EmeIGZFbo9xF/+CY94NPpqdrBT2slNWRERyYgmn2725QCSrSOUGaFFQt
 EFyQCRBXIpS2PXcvCQHrNKWoXp3NVllL0O4BU35EKN+jShKC383XD7V7H
 yNekoVBcjj0+awR6tRgyWVeYwccdk8yu/uEcUfTSRTT0iZ+gov1Yf19dR
 NYiSOnImo6Z7Ry6OUmc4F6Atytb5fRGyY48JN443joSxdEmgDak7hxBCZ
 Jo/yJmvoXk/sbm3RXvVFBnXqEYypeYJDkeskORGMOCTAD48CvZTWqQIuz
 uFKEBwAfUZeb6O2kunTfGKur3ajypc/3uYKpZu5PmGanieChQoAu7Zz9O g==;
X-CSE-ConnectionGUID: rtd+IOAxTdaWqS7ax7B6uw==
X-CSE-MsgGUID: /9uoAdlBTAOUnQ3FLR7Zlw==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="71710253"
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="71710253"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 23:29:53 -0700
X-CSE-ConnectionGUID: Jf9VOJwoRX6PapKvLsHx0g==
X-CSE-MsgGUID: T9lwHUHNS86uHmMLhJKEMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="130880207"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa007.jf.intel.com with ESMTP; 15 Apr 2025 23:29:52 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v1 6/8] drm/i915/vrr: Implement vblank evasion with DC
 balancing
Date: Wed, 16 Apr 2025 11:57:35 +0530
Message-ID: <20250416062737.1766703-7-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250416062737.1766703-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250416062737.1766703-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add vblank evasion logic when vrr is already enabled along with
dc balance is computed.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      | 31 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vblank.c   | 26 ++++++++++++++--
 3 files changed, 54 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 94468a9d2e0d..0e06c71e9086 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1303,7 +1303,7 @@ struct intel_crtc_state {
 
 	/* Variable Refresh Rate state */
 	struct {
-		bool enable, in_range;
+		bool enable, in_range, dc_balance;
 		u8 pipeline_full;
 		u16 flipline, vmin, vmax, guardband;
 		u32 vsync_end, vsync_start;
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 72fe390c5af2..ed27cbff44fc 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -577,7 +577,36 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
 	if (crtc_state->has_psr)
 		intel_dsb_emit_wait_dsl(dsb, DSB_OPCODE_WAIT_DSL_OUT, 0, 0);
 
-	if (pre_commit_is_vrr_active(state, crtc)) {
+	if (pre_commit_is_vrr_active(state, crtc) && crtc_state->vrr.dc_balance) {
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
index 680013f00fc0..9b63e4217881 100644
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
+	if (!crtc_state->vrr.dc_balance) {
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

