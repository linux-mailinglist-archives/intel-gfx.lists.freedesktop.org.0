Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBOzJSRuxmmkJwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 12:46:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0556343BB8
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 12:46:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AA5310E369;
	Fri, 27 Mar 2026 11:46:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="funCshAO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB9D110E369;
 Fri, 27 Mar 2026 11:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774612000; x=1806148000;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2SReUIEW+N5fPvKsaAFz3LSS6Xf5KjfFY30T7fnWYAw=;
 b=funCshAOk6dDMe3/WSHK2xQXtgKhxVcyxei2Q+ALl/EQNq01T7KsY9Pv
 Ca/uyF1AGU6X+jkRLCiGDd9EhIF+9EEgmZwQh8jf2SyZMZe5ZnDjC7axH
 RntU7Py/HVD1pfLA0EgTderjdhTNm0ttrCvsPwnI0N8jStgN46qCputBQ
 Siy8x9avuLkiiidKXlJPGMTOUGliY546RxEI8d59m4EFlSNE7G9OqAFEi
 wF/ZYQo2h8JVXpPdtgTdPT1nWJKcfdDZkLDUuWbi0O1U3VtvPjbsckHna
 QWJ/fUMTb5g7jZTsOpFtPKiT/YazmEzr2yE1eTVVHo1BAs+o+nS/D7jdJ A==;
X-CSE-ConnectionGUID: BmPFU/zLTfaGlCar0mgCSQ==
X-CSE-MsgGUID: I2Dw1cQzRPyyX+h3Fihnyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75564585"
X-IronPort-AV: E=Sophos;i="6.23,144,1770624000"; d="scan'208";a="75564585"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 04:46:40 -0700
X-CSE-ConnectionGUID: VhsguT5/QRGXCL7jFoVtkg==
X-CSE-MsgGUID: EQ+A1sM0RCGmuRcvV0NCjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,144,1770624000"; d="scan'208";a="222422328"
Received: from rvuia-mobl.ger.corp.intel.com (HELO jhogande-mobl3.intel.com)
 ([10.245.244.118])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 04:46:39 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 stable@vger.kernel.org
Subject: [PATCH] drm/i915/psr: Do not use pipe_src as borders for SU area
Date: Fri, 27 Mar 2026 13:45:53 +0200
Message-ID: <20260327114553.195285-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: E0556343BB8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This far using crtc_state->pipe_src as borders for Selective Update area
haven't caused visible problems as drm_rect_width(crtc_state->pipe_src) ==
crtc_state->hw.adjusted_mode.crtc_hdisplay and
drm_rect_height(crtc_state->pipe_src) ==
crtc_state->hw.adjusted_mode.crtc_vdisplay when pipe scaling is not
used. On the other hand using pipe scaling is forcing full frame updates and all the
Selective Update area calculations are skipped. Now this improper usage of
crtc_state->pipe_src is causing following warnings:

<4> [7771.978166] xe 0000:00:02.0: [drm] drm_WARN_ON_ONCE(su_lines % vdsc_cfg->slice_height)

after WARN_ON_ONCE was added by commit:

"drm/i915/dsc: Add helper for writing DSC Selective Update ET parameters"

These warnings are seen when DSC and pipe scaling are enabled
simultaneously. This is because on full frame update SU area is improperly
set as pipe_src which is not aligned with DSC slice height.

Fix these by creating local rectangle using
crtc_state->hw.adjusted_mode.crtc_hdisplay and
crtc_state->hw.adjusted_mode.crtc_vdisplay. Use this local rectangle as
borders for SU area.

Fixes: d6774b8c3c58 ("drm/i915: Ensure damage clip area is within pipe area")
Cc: <stable@vger.kernel.org> # v6.0+
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 27 ++++++++++++++----------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2f1b48cd8efd..33b2ae17274a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2689,9 +2689,9 @@ static u32 psr2_pipe_srcsz_early_tpt_calc(struct intel_crtc_state *crtc_state,
 
 static void clip_area_update(struct drm_rect *overlap_damage_area,
 			     struct drm_rect *damage_area,
-			     struct drm_rect *pipe_src)
+			     struct drm_rect *display_area)
 {
-	if (!drm_rect_intersect(damage_area, pipe_src))
+	if (!drm_rect_intersect(damage_area, display_area))
 		return;
 
 	if (overlap_damage_area->y1 == -1) {
@@ -2742,6 +2742,7 @@ static bool intel_psr2_sel_fetch_pipe_alignment(struct intel_crtc_state *crtc_st
 static void
 intel_psr2_sel_fetch_et_alignment(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc,
+				  struct drm_rect *display_area,
 				  bool *cursor_in_su_area)
 {
 	struct intel_crtc_state *crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
@@ -2769,7 +2770,7 @@ intel_psr2_sel_fetch_et_alignment(struct intel_atomic_state *state,
 			continue;
 
 		clip_area_update(&crtc_state->psr2_su_area, &new_plane_state->uapi.dst,
-				 &crtc_state->pipe_src);
+				 display_area);
 		*cursor_in_su_area = true;
 	}
 }
@@ -2866,6 +2867,9 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_plane_state *new_plane_state, *old_plane_state;
 	struct intel_plane *plane;
+	struct drm_rect display_area = { .x1 = 0, .y1 = 0,
+		.x2 = crtc_state->hw.adjusted_mode.crtc_hdisplay,
+		.y2 = crtc_state->hw.adjusted_mode.crtc_vdisplay};
 	bool full_update = false, su_area_changed;
 	int i, ret;
 
@@ -2879,7 +2883,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 
 	crtc_state->psr2_su_area.x1 = 0;
 	crtc_state->psr2_su_area.y1 = -1;
-	crtc_state->psr2_su_area.x2 = drm_rect_width(&crtc_state->pipe_src);
+	crtc_state->psr2_su_area.x2 = drm_rect_width(&display_area);
 	crtc_state->psr2_su_area.y2 = -1;
 
 	/*
@@ -2917,14 +2921,14 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 				damaged_area.y1 = old_plane_state->uapi.dst.y1;
 				damaged_area.y2 = old_plane_state->uapi.dst.y2;
 				clip_area_update(&crtc_state->psr2_su_area, &damaged_area,
-						 &crtc_state->pipe_src);
+						 &display_area);
 			}
 
 			if (new_plane_state->uapi.visible) {
 				damaged_area.y1 = new_plane_state->uapi.dst.y1;
 				damaged_area.y2 = new_plane_state->uapi.dst.y2;
 				clip_area_update(&crtc_state->psr2_su_area, &damaged_area,
-						 &crtc_state->pipe_src);
+						 &display_area);
 			}
 			continue;
 		} else if (new_plane_state->uapi.alpha != old_plane_state->uapi.alpha) {
@@ -2932,7 +2936,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 			damaged_area.y1 = new_plane_state->uapi.dst.y1;
 			damaged_area.y2 = new_plane_state->uapi.dst.y2;
 			clip_area_update(&crtc_state->psr2_su_area, &damaged_area,
-					 &crtc_state->pipe_src);
+					 &display_area);
 			continue;
 		}
 
@@ -2948,7 +2952,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		damaged_area.x1 += new_plane_state->uapi.dst.x1 - src.x1;
 		damaged_area.x2 += new_plane_state->uapi.dst.x1 - src.x1;
 
-		clip_area_update(&crtc_state->psr2_su_area, &damaged_area, &crtc_state->pipe_src);
+		clip_area_update(&crtc_state->psr2_su_area, &damaged_area, &display_area);
 	}
 
 	/*
@@ -2983,7 +2987,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		 * cursor is added into affected planes even when
 		 * cursor is not updated by itself.
 		 */
-		intel_psr2_sel_fetch_et_alignment(state, crtc, &cursor_in_su_area);
+		intel_psr2_sel_fetch_et_alignment(state, crtc, &display_area,
+						  &cursor_in_su_area);
 
 		su_area_changed = intel_psr2_sel_fetch_pipe_alignment(crtc_state);
 
@@ -3059,8 +3064,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 
 skip_sel_fetch_set_loop:
 	if (full_update)
-		clip_area_update(&crtc_state->psr2_su_area, &crtc_state->pipe_src,
-				 &crtc_state->pipe_src);
+		clip_area_update(&crtc_state->psr2_su_area, &display_area,
+				 &display_area);
 
 	psr2_man_trk_ctl_calc(crtc_state, full_update);
 	crtc_state->pipe_srcsz_early_tpt =
-- 
2.43.0

