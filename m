Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qLxMF87gu2lXpQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 12:41:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1123A2CA74B
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 12:41:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84F1D10E92B;
	Thu, 19 Mar 2026 11:41:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BMpy3a1T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1067F10E92B;
 Thu, 19 Mar 2026 11:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773920460; x=1805456460;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K113yCzTHe/J3m6xE346/toFt/iz1M+AQ/sVbqCIcN4=;
 b=BMpy3a1TqWxsaUPK1WMN26kO5LkNm96bthEO7avZZzJjxIoEJ7evNlIA
 Z138NuCn8QpTL9XpN3OHNdHJjGEzzrIDJITMlJTqz+rkt/GCjAhnBgP0K
 0rwMl1oI4DMeX1T7q7U3Cnvst4HRl0Hk/AuFNC/e9naGWzRQMEqyIy8Wx
 ezFdBijpeuoUx1Bdl347dCMpP/cKYSU6sYjQxDEM4On2jW5kCRdNWc/JH
 cW1JejKDpxGqZ/2I9Sog3bI9DiJJo60qID9tzUmv2qEE9zFVAYlWnlhtW
 g7w8WqC0KXUOAKKRnr3xqq94bsaa4XpYl/gzZ1PXHYN/zpOMATjJvuQIe w==;
X-CSE-ConnectionGUID: P9Pu1Y48SoaPI0qRDlFCUg==
X-CSE-MsgGUID: T/ZxzSNUSYGR/Fxb+WMs2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="78891641"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="78891641"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 04:41:00 -0700
X-CSE-ConnectionGUID: GcuASjCXTOGmRQhunyYrXg==
X-CSE-MsgGUID: iH/1S8gQQmm/u3JO2i/DxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="222970905"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.169])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 04:40:58 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 5/9] drm/i915/wm: Nuke wm->uv_wm[]
Date: Thu, 19 Mar 2026 13:40:30 +0200
Message-ID: <20260319114034.7093-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260319114034.7093-1-ville.syrjala@linux.intel.com>
References: <20260319114034.7093-1-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid]
X-Rspamd-Queue-Id: 1123A2CA74B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We currently keep around the full watermarks for the UV plane
on pre-icl, even though the hardware doesn't need most of this
information. The only thing we need to keep is the min_ddb_alloc
for the UV plane. Move that into the main wm->wm[].min_ddb_alloc_uv
alongside the other min_ddb_alloc (used for Y/RGB).

This makes our state tracking match the hardware more closely,
and avoids having to justify everwhere why uv_wm[] is being
ignored.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  | 43 ++++++++-----------
 2 files changed, 19 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 93b8b2f91484..e2496db1642a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -835,6 +835,7 @@ struct intel_pipe_wm {
 
 struct skl_wm_level {
 	u16 min_ddb_alloc;
+	u16 min_ddb_alloc_uv; /* for pre-icl */
 	u16 blocks;
 	u8 lines;
 	bool enable;
@@ -845,7 +846,6 @@ struct skl_wm_level {
 
 struct skl_plane_wm {
 	struct skl_wm_level wm[8];
-	struct skl_wm_level uv_wm[8];
 	struct skl_wm_level trans_wm;
 	struct {
 		struct skl_wm_level wm0;
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 7c4c42dde991..8b1b371fbfab 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1356,14 +1356,13 @@ skl_check_wm_level(struct skl_wm_level *wm, const struct skl_ddb_entry *ddb)
 }
 
 static void
-skl_check_wm_level_nv12(struct skl_wm_level *wm, struct skl_wm_level *uv_wm,
-			const struct skl_ddb_entry *ddb_y, const struct skl_ddb_entry *ddb)
+skl_check_wm_level_nv12(struct skl_wm_level *wm,
+			const struct skl_ddb_entry *ddb_y,
+			const struct skl_ddb_entry *ddb)
 {
 	if (wm->min_ddb_alloc > skl_ddb_entry_size(ddb_y) ||
-	    uv_wm->min_ddb_alloc > skl_ddb_entry_size(ddb)) {
+	    wm->min_ddb_alloc_uv > skl_ddb_entry_size(ddb))
 		memset(wm, 0, sizeof(*wm));
-		memset(uv_wm, 0, sizeof(*uv_wm));
-	}
 }
 
 static bool skl_need_wm_copy_wa(struct intel_display *display, int level,
@@ -1427,11 +1426,10 @@ static void
 skl_allocate_plane_ddb_nv12(struct skl_plane_ddb_iter *iter,
 			    const struct skl_wm_level *wm,
 			    struct skl_ddb_entry *ddb_y, u64 data_rate_y,
-			    const struct skl_wm_level *uv_wm,
 			    struct skl_ddb_entry *ddb, u64 data_rate)
 {
 	_skl_allocate_plane_ddb(iter, wm->min_ddb_alloc, ddb_y, data_rate_y);
-	_skl_allocate_plane_ddb(iter, uv_wm->min_ddb_alloc, ddb, data_rate);
+	_skl_allocate_plane_ddb(iter, wm->min_ddb_alloc_uv, ddb, data_rate);
 }
 
 static int
@@ -1499,7 +1497,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 			}
 
 			blocks += wm->wm[level].min_ddb_alloc;
-			blocks += wm->uv_wm[level].min_ddb_alloc;
+			blocks += wm->wm[level].min_ddb_alloc_uv;
 		}
 
 		if (blocks <= iter.size) {
@@ -1543,7 +1541,6 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 		    crtc_state->nv12_planes & BIT(plane_id))
 			skl_allocate_plane_ddb_nv12(&iter, &wm->wm[level],
 						    ddb_y, crtc_state->rel_data_rate_y[plane_id],
-						    &wm->uv_wm[level],
 						    ddb, crtc_state->rel_data_rate[plane_id]);
 		else
 			skl_allocate_plane_ddb(&iter, &wm->wm[level],
@@ -1573,9 +1570,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 
 			if (DISPLAY_VER(display) < 11 &&
 			    crtc_state->nv12_planes & BIT(plane_id))
-				skl_check_wm_level_nv12(&wm->wm[level],
-							&wm->uv_wm[level],
-							ddb_y, ddb);
+				skl_check_wm_level_nv12(&wm->wm[level], ddb_y, ddb);
 			else
 				skl_check_wm_level(&wm->wm[level], ddb);
 
@@ -2084,9 +2079,11 @@ static int skl_build_plane_wm_uv(struct intel_crtc_state *crtc_state,
 				 const struct intel_plane_state *plane_state,
 				 struct intel_plane *plane)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct skl_plane_wm *wm = &crtc_state->wm.skl.raw.planes[plane->id];
+	struct skl_wm_level uv_wm[ARRAY_SIZE(wm->wm)] = {};
 	struct skl_wm_params wm_params;
-	int ret;
+	int ret, level;
 
 	/* uv plane watermarks must also be validated for NV12/Planar */
 	ret = skl_compute_plane_wm_params(crtc_state, plane_state,
@@ -2094,7 +2091,14 @@ static int skl_build_plane_wm_uv(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
-	skl_compute_wm_levels(crtc_state, plane, &wm_params, wm->uv_wm);
+	skl_compute_wm_levels(crtc_state, plane, &wm_params, uv_wm);
+
+	/*
+	 * Only keep the min_ddb_alloc for UV as
+	 * the hardware needs nothing else.
+	 */
+	for (level = 0; level < display->wm.num_levels; level++)
+		wm->wm[level].min_ddb_alloc_uv = uv_wm[level].min_ddb_alloc;
 
 	return 0;
 }
@@ -2317,7 +2321,6 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
 			 * thing as bad via min_ddb_alloc=U16_MAX?
 			 */
 			wm->wm[level].enable = false;
-			wm->uv_wm[level].enable = false;
 		}
 	}
 
@@ -2388,11 +2391,6 @@ static bool skl_plane_wm_equals(struct intel_display *display,
 	int level;
 
 	for (level = 0; level < display->wm.num_levels; level++) {
-		/*
-		 * We don't check uv_wm as the hardware doesn't actually
-		 * use it. It only gets used for calculating the required
-		 * ddb allocation.
-		 */
 		if (!skl_wm_level_equals(&wm1->wm[level], &wm2->wm[level]))
 			return false;
 	}
@@ -2753,11 +2751,6 @@ static bool skl_plane_selected_wm_equals(struct intel_plane *plane,
 	int level;
 
 	for (level = 0; level < display->wm.num_levels; level++) {
-		/*
-		 * We don't check uv_wm as the hardware doesn't actually
-		 * use it. It only gets used for calculating the required
-		 * ddb allocation.
-		 */
 		if (!skl_wm_level_equals(skl_plane_wm_level(old_pipe_wm, plane->id, level),
 					 skl_plane_wm_level(new_pipe_wm, plane->id, level)))
 			return false;
-- 
2.52.0

