Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGsKD1mWwmkbfQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 14:49:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0378309B52
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 14:49:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8393910E6E4;
	Tue, 24 Mar 2026 13:49:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="blKBbZ00";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54F4F10E6DF;
 Tue, 24 Mar 2026 13:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774360150; x=1805896150;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MhcPHbLlj6Oxxq6v9Or80s4U0/TlNcSrroSSsRXnqsY=;
 b=blKBbZ00NM66EEIEqSw0IQRbX9MBYBD6hth/gjjfu6lNEjLEC7HC+RYN
 0ABlyoyi8WUhhzgE1VQsd1blq/3XlJ908w+B65xudfdj63oqCIMzelk7e
 kXz0EYP7CU3wstLgZ18kqKTJQpHPdu4wBE4yvE7KNa8U05MpeeJmTMi0/
 S223VZaC+6azfxWg38DWRdULpl/Yv6wc/GsWZ+PSqZl5Lt3nkQoP/vg7j
 gYSR0+z/iQUCrl4SaSBWZYhINAJhOiruPshvOOAqQ9C9Hzr/75LOH6R1q
 MO+Y0LmInIUbieuubPtAVeAJnuMaBF1DkFXZmTmuHRN3pT1LvxkfLyLas w==;
X-CSE-ConnectionGUID: HmFrAcy2RPSnTto9DiYvUA==
X-CSE-MsgGUID: ax26+RDRSceyvpHcFq5HvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="100818935"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="100818935"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 06:49:10 -0700
X-CSE-ConnectionGUID: T7k4Pcj+TXGk4b4kert1Nw==
X-CSE-MsgGUID: Y/BCCxtCRBqGxZpH+jPJYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="229105146"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.220])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 06:49:09 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 5/9] drm/i915/wm: Extract skl_wm_level_verify()
Date: Tue, 24 Mar 2026 15:48:39 +0200
Message-ID: <20260324134843.2364-6-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: E0378309B52
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reduce duplicated code by extracting the code to
verify a single WM level to a common function.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 94 ++++++++------------
 1 file changed, 36 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index cbc03938442d..3e323e434bfb 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3917,6 +3917,23 @@ void skl_wm_plane_disable_noatomic(struct intel_crtc *crtc,
 	       sizeof(crtc_state->wm.skl.optimal.planes[plane->id]));
 }
 
+static void skl_wm_level_verify(struct intel_plane *plane,
+				const char *wm_name,
+				const struct skl_wm_level *hw_wm_level,
+				const struct skl_wm_level *sw_wm_level)
+{
+	struct intel_display *display = to_intel_display(plane);
+
+	if (skl_wm_level_equals(hw_wm_level, sw_wm_level))
+		return;
+
+	drm_err(display->drm,
+		"[PLANE:%d:%s] mismatch in %s (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
+		plane->base.base.id, plane->base.name, wm_name,
+		sw_wm_level->enable, sw_wm_level->blocks, sw_wm_level->lines,
+		hw_wm_level->enable, hw_wm_level->blocks, hw_wm_level->lines);
+}
+
 void intel_wm_state_verify(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc)
 {
@@ -3956,73 +3973,34 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 			hw_enabled_slices);
 
 	for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
+		const struct skl_plane_wm *hw_plane_wm =
+			&hw->wm.planes[plane->id];
+		const struct skl_plane_wm *sw_plane_wm =
+			&sw_wm->planes[plane->id];
 		const struct skl_ddb_entry *hw_ddb_entry, *sw_ddb_entry;
-		const struct skl_wm_level *hw_wm_level, *sw_wm_level;
 
-		/* Watermarks */
 		for (level = 0; level < display->wm.num_levels; level++) {
-			hw_wm_level = &hw->wm.planes[plane->id].wm[level];
-			sw_wm_level = skl_plane_wm_level(sw_wm, plane->id, level);
+			char wm_name[16];
 
-			if (skl_wm_level_equals(hw_wm_level, sw_wm_level))
-				continue;
+			snprintf(wm_name, sizeof(wm_name), "WM%d", level);
 
-			drm_err(display->drm,
-				"[PLANE:%d:%s] mismatch in WM%d (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
-				plane->base.base.id, plane->base.name, level,
-				sw_wm_level->enable,
-				sw_wm_level->blocks,
-				sw_wm_level->lines,
-				hw_wm_level->enable,
-				hw_wm_level->blocks,
-				hw_wm_level->lines);
+			skl_wm_level_verify(plane, wm_name,
+					    &hw_plane_wm->wm[level],
+					    skl_plane_wm_level(sw_wm, plane->id, level));
 		}
 
-		hw_wm_level = &hw->wm.planes[plane->id].trans_wm;
-		sw_wm_level = skl_plane_trans_wm(sw_wm, plane->id);
+		skl_wm_level_verify(plane, "trans WM",
+				    &hw_plane_wm->trans_wm,
+				    skl_plane_trans_wm(sw_wm, plane->id));
 
-		if (!skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
-			drm_err(display->drm,
-				"[PLANE:%d:%s] mismatch in trans WM (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
-				plane->base.base.id, plane->base.name,
-				sw_wm_level->enable,
-				sw_wm_level->blocks,
-				sw_wm_level->lines,
-				hw_wm_level->enable,
-				hw_wm_level->blocks,
-				hw_wm_level->lines);
-		}
-
-		hw_wm_level = &hw->wm.planes[plane->id].sagv.wm0;
-		sw_wm_level = &sw_wm->planes[plane->id].sagv.wm0;
-
-		if (HAS_HW_SAGV_WM(display) &&
-		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
-			drm_err(display->drm,
-				"[PLANE:%d:%s] mismatch in SAGV WM (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
-				plane->base.base.id, plane->base.name,
-				sw_wm_level->enable,
-				sw_wm_level->blocks,
-				sw_wm_level->lines,
-				hw_wm_level->enable,
-				hw_wm_level->blocks,
-				hw_wm_level->lines);
-		}
-
-		hw_wm_level = &hw->wm.planes[plane->id].sagv.trans_wm;
-		sw_wm_level = &sw_wm->planes[plane->id].sagv.trans_wm;
+		if (HAS_HW_SAGV_WM(display)) {
+			skl_wm_level_verify(plane, "SAGV WM",
+					    &hw_plane_wm->sagv.wm0,
+					    &sw_plane_wm->sagv.wm0);
 
-		if (HAS_HW_SAGV_WM(display) &&
-		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
-			drm_err(display->drm,
-				"[PLANE:%d:%s] mismatch in SAGV trans WM (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
-				plane->base.base.id, plane->base.name,
-				sw_wm_level->enable,
-				sw_wm_level->blocks,
-				sw_wm_level->lines,
-				hw_wm_level->enable,
-				hw_wm_level->blocks,
-				hw_wm_level->lines);
+			skl_wm_level_verify(plane, "SAGV trans WM",
+					    &hw_plane_wm->sagv.trans_wm,
+					    &sw_plane_wm->sagv.trans_wm);
 		}
 
 		/* DDB */
-- 
2.52.0

