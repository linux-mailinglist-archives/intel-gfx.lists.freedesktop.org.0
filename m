Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMKxOUyWwmkbfQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 14:49:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99106309B3D
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 14:49:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D09B10E6DD;
	Tue, 24 Mar 2026 13:48:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VxkGv6Cq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89E6510E6DD;
 Tue, 24 Mar 2026 13:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774360137; x=1805896137;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=odMcdOnpF6bg3ebkNVu+6Hpi+UXHD+lD72kFyoWHqfE=;
 b=VxkGv6CqPanLvCOXBMC73ZPZeoBwEq8xOrO0PzN8CmQxzJMsDj5bFV2q
 C9z3xYiuQMgjff0mzT64CQG18m6FaBY9bEHCGWZgVy5Ya08sAuZPOWtlb
 pdXmZht/CfXXG1BvpdGJGXJlnfmhYaTZAjn+LKsUmN4njiuR0Xc7h28ek
 5Gv9KS042Cz0IalNc/43Q6w0YoKSPLszME4xt20cnkiPiNx5HurfKSoNd
 4ctqziv+m9L+VdC+WhAR9AjYG7QVWphWUY6aSJhjXrlquH1z15iaCykAl
 q73SAkhKOSI24GbBgdoV8bth+Q52QYWpskenpg4lTsBb7QVWwUqqHrwx1 Q==;
X-CSE-ConnectionGUID: a5lpUG/iSQa8BAIIC8hzTQ==
X-CSE-MsgGUID: 8rAu1u6yTgGyEC1rJMPVgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="75254817"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="75254817"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 06:48:57 -0700
X-CSE-ConnectionGUID: BYBmF+xeRKaBCfHikmU7WA==
X-CSE-MsgGUID: p2/Hhvx5R0WZectn4UmBaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="224323794"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.220])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 06:48:56 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/9] drm/i915/wm: Don't compute separate SAGV watermarks for
 RKL
Date: Tue, 24 Mar 2026 15:48:36 +0200
Message-ID: <20260324134843.2364-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260324134843.2364-1-ville.syrjala@linux.intel.com>
References: <20260324134843.2364-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 99106309B3D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

RKL is supposed to use the old SKL/ICL method for determining
whether the watermarks tolerate SAGV or not, not the TGL+ method.
Make it so.

BSpec: 49325
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_device.h   |  1 +
 drivers/gpu/drm/i915/display/skl_watermark.c      | 15 ++++++++-------
 2 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 1170ac346615..074e3ba8fb77 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -200,6 +200,7 @@ struct intel_display_platforms {
 #define HAS_PSR_TRANS_PUSH_FRAME_CHANGE(__display)	(DISPLAY_VER(__display) >= 20)
 #define HAS_SAGV(__display)		(DISPLAY_VER(__display) >= 9 && \
 					 !(__display)->platform.broxton && !(__display)->platform.geminilake)
+#define HAS_SAGV_WM(__display)		(DISPLAY_VER(__display) >= 12 && !(__display)->platform.rocketlake)
 #define HAS_TRANSCODER(__display, trans)	((DISPLAY_RUNTIME_INFO(__display)->cpu_transcoder_mask & \
 						  BIT(trans)) != 0)
 #define HAS_UNCOMPRESSED_JOINER(__display)	(DISPLAY_VER(__display) >= 13)
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 09988f46e083..bcdca1b99fe4 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -388,7 +388,7 @@ bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 	if (crtc_state->inherited)
 		return false;
 
-	if (DISPLAY_VER(display) >= 12)
+	if (HAS_SAGV_WM(display))
 		return tgl_crtc_can_enable_sagv(crtc_state);
 	else
 		return skl_crtc_can_enable_sagv(crtc_state);
@@ -1939,7 +1939,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 	result->enable = true;
 	result->auto_min_alloc_wm_enable = xe3_auto_min_alloc_capable(plane, level);
 
-	if (DISPLAY_VER(display) < 12 && display->sagv.block_time_us)
+	if (!HAS_SAGV_WM(display) && display->sagv.block_time_us)
 		result->can_sagv = latency >= display->sagv.block_time_us;
 }
 
@@ -2065,7 +2065,7 @@ static int skl_build_plane_wm_single(struct intel_crtc_state *crtc_state,
 	skl_compute_transition_wm(display, &wm->trans_wm,
 				  &wm->wm[0], &wm_params);
 
-	if (DISPLAY_VER(display) >= 12) {
+	if (HAS_SAGV_WM(display)) {
 		tgl_compute_sagv_wm(crtc_state, plane, &wm_params, wm);
 
 		skl_compute_transition_wm(display, &wm->sagv.trans_wm,
@@ -2324,7 +2324,7 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
 		}
 	}
 
-	if (DISPLAY_VER(display) >= 12 &&
+	if (HAS_SAGV_WM(display) &&
 	    display->sagv.block_time_us &&
 	    skl_prefill_vblank_too_short(&ctx, crtc_state,
 					 display->sagv.block_time_us)) {
@@ -2997,8 +2997,9 @@ skl_compute_wm(struct intel_atomic_state *state)
 		 * other crtcs can't be allowed to use the more optimal
 		 * normal (ie. non-SAGV) watermarks.
 		 */
-		pipe_wm->use_sagv_wm = !HAS_HW_SAGV_WM(display) &&
-			DISPLAY_VER(display) >= 12 &&
+		pipe_wm->use_sagv_wm =
+			HAS_SAGV_WM(display) &&
+			!HAS_HW_SAGV_WM(display) &&
 			intel_crtc_can_enable_sagv(new_crtc_state);
 
 		ret = skl_wm_add_affected_planes(state, crtc);
@@ -3064,7 +3065,7 @@ static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 				val = intel_de_read(display, CUR_WM_SAGV_TRANS(pipe));
 
 			skl_wm_level_from_reg_val(display, val, &wm->sagv.trans_wm);
-		} else if (DISPLAY_VER(display) >= 12) {
+		} else if (HAS_SAGV_WM(display)) {
 			wm->sagv.wm0 = wm->wm[0];
 			wm->sagv.trans_wm = wm->trans_wm;
 		}
-- 
2.52.0

