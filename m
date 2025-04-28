Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6D7A9E822
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 08:23:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D104610E3AF;
	Mon, 28 Apr 2025 06:23:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FgnzsAlo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9680410E3A6;
 Mon, 28 Apr 2025 06:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745821399; x=1777357399;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1UZFrzvXG7/72BJpIOcdmutEqKbv8bDbhENFfBe1ki8=;
 b=FgnzsAloLMFJy7nh7xFedo+eYXX0CSJ69Trrm2p4C+qhTblp9MOtjaV1
 RMXRFX7ChrP/7qCaYZH8Mr3TD8OsnxZb+C7s8iysOKenuwE8MTb18iB7q
 M1SIj0XmpvuiFPGj7lPvPs1SG5Cbji+OfcCMHp3LZAUDQA+Rra3Aj7/7R
 N/KMdoKaWbZDDLB8zRZfvlTTxqq2RvdKIutJaAs7Wgy/ZLwYORKtKxU9n
 3qOv9KMRp9vvq40oCzma8m+10K8AKny6hsQZuShXQKeCP7gXJ3aCf3gxB
 fm0HwGpRPr79WVSufs7xrkPJLWAwjcSe/brdsm3+HD10aytL+eVVkKogk w==;
X-CSE-ConnectionGUID: 9VzE/lgQRAmGkUqFYd8ObQ==
X-CSE-MsgGUID: BLAZocozQoSa5TRigyhaeQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51204192"
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="51204192"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 23:23:18 -0700
X-CSE-ConnectionGUID: hv4Y+jD7SHaiP42h7H+6iA==
X-CSE-MsgGUID: YJ3slpquTzaidRrirrrRhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="138231236"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa005.fm.intel.com with ESMTP; 27 Apr 2025 23:23:16 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v3 11/15] drm/i915/vrr: Implement vblank evasion with DC
 balancing
Date: Mon, 28 Apr 2025 11:50:54 +0530
Message-ID: <20250428062058.2811655-12-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
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

