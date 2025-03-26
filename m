Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E21A71BC8
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 17:26:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 783EE10E731;
	Wed, 26 Mar 2025 16:26:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LUQYYbbq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4ADF10E730;
 Wed, 26 Mar 2025 16:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743006361; x=1774542361;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=322NOdHHbJJcC+uRYt3ePWMksd+SU0LT/yEuT3hV8eA=;
 b=LUQYYbbqd6moMJkdo/c5f7NI2rUoVU3tTH6gNyonXy28I0W2WrnixtBU
 z6XVfaTl/JIxTWlcoNNGMcXZi8etOHoR3+x/XZBO4BGak+Y++VCqzPwNw
 Ra8Jp5yJdkiriMx3eRUi1f9RH8g6h+SaVb0Q2kbh0SC2GCJJbbhVt0B3a
 2vsWSh6LtBCMZ69uhg5Zu0S6j2fzeoV6lvPsTKTmVFGCST4NoW1dS/fNO
 NrPFwEYKNOd5WnAFGM5rStZUdgKpY1Iqa0f1yCqC+6Oa9o2T6Yy6iLnba
 KfrzjBIDxsXLcZLRBBwxdpyK47mJm0FDO/smp3mAjbQnk+rFCX91xwEWt g==;
X-CSE-ConnectionGUID: EnIZflZJRou4yuCizuizXQ==
X-CSE-MsgGUID: rze+f3uYRHmuz5RKo9cAiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44029561"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="44029561"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 09:26:01 -0700
X-CSE-ConnectionGUID: +Wt08UCZSJ60sl6egu32nQ==
X-CSE-MsgGUID: UDtIkN9xRqSw+RmVBoKU4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="130016297"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Mar 2025 09:25:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Mar 2025 18:25:57 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 04/14] drm/i915: Pass intel_dbuf_bw to skl_*_calc_dbuf_bw()
 explicitly
Date: Wed, 26 Mar 2025 18:25:34 +0200
Message-ID: <20250326162544.3642-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
References: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
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

Make skl_*_calc_dbuf_bw() a bit lower level passing in the
to be mutated dbuf_bw struct in explicitly. This will allow
more reuse later.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 898ddaf7e76b..67d088da1f38 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1188,7 +1188,7 @@ static bool intel_bw_state_changed(struct intel_display *display,
 	return false;
 }
 
-static void skl_plane_calc_dbuf_bw(struct intel_bw_state *bw_state,
+static void skl_plane_calc_dbuf_bw(struct intel_dbuf_bw *dbuf_bw,
 				   struct intel_crtc *crtc,
 				   enum plane_id plane_id,
 				   const struct skl_ddb_entry *ddb,
@@ -1196,7 +1196,6 @@ static void skl_plane_calc_dbuf_bw(struct intel_bw_state *bw_state,
 {
 	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *i915 = to_i915(display->drm);
-	struct intel_dbuf_bw *dbuf_bw = &bw_state->dbuf_bw[crtc->pipe];
 	unsigned int dbuf_mask = skl_ddb_dbuf_slice_mask(i915, ddb);
 	enum dbuf_slice slice;
 
@@ -1210,12 +1209,11 @@ static void skl_plane_calc_dbuf_bw(struct intel_bw_state *bw_state,
 	}
 }
 
-static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
+static void skl_crtc_calc_dbuf_bw(struct intel_dbuf_bw *dbuf_bw,
 				  const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct intel_dbuf_bw *dbuf_bw = &bw_state->dbuf_bw[crtc->pipe];
 	enum plane_id plane_id;
 
 	memset(dbuf_bw, 0, sizeof(*dbuf_bw));
@@ -1231,12 +1229,12 @@ static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
 		if (plane_id == PLANE_CURSOR)
 			continue;
 
-		skl_plane_calc_dbuf_bw(bw_state, crtc, plane_id,
+		skl_plane_calc_dbuf_bw(dbuf_bw, crtc, plane_id,
 				       &crtc_state->wm.skl.plane_ddb[plane_id],
 				       crtc_state->data_rate[plane_id]);
 
 		if (DISPLAY_VER(display) < 11)
-			skl_plane_calc_dbuf_bw(bw_state, crtc, plane_id,
+			skl_plane_calc_dbuf_bw(dbuf_bw, crtc, plane_id,
 					       &crtc_state->wm.skl.plane_ddb_y[plane_id],
 					       crtc_state->data_rate[plane_id]);
 	}
@@ -1311,7 +1309,8 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 
 		old_bw_state = intel_atomic_get_old_bw_state(state);
 
-		skl_crtc_calc_dbuf_bw(new_bw_state, crtc_state);
+		skl_crtc_calc_dbuf_bw(&new_bw_state->dbuf_bw[crtc->pipe],
+				      crtc_state);
 	}
 
 	if (!old_bw_state)
-- 
2.45.3

