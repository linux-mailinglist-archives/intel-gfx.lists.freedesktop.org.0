Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0113A71BC4
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 17:25:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69BAF10E72A;
	Wed, 26 Mar 2025 16:25:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JJtTAtlu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B0C410E72A;
 Wed, 26 Mar 2025 16:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743006355; x=1774542355;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bn8+l1HbbS3jNDcKUXMVEiHt0S6uk3q6t12V1pZ88gY=;
 b=JJtTAtlu77TyUsOc0pqBCBa/Ft6l73HYmFk5pe9yZiPh0n3BJTgEwSOL
 Db89k0JMqx7sJ6dAncboiu1z3mLPZopT+W0e1WQgWguz5+cXbVxnqugQ9
 P9AK9hm805MPa8aie915h4KHQ0wQak9Optdv4Bag7Ht3FTbGknFq7PURw
 pt51+GeHA27wPXZNehyXIX0S4OvHCLlCwa88saQhX85DeN/AyDRn6isPb
 sdD+zf7CNBSAdJp+6fXAfNPSG1QJfbOibVv8GPqFt7y3E5zgWhCwh53EX
 2pTgpfd8kYmFSi0/VuRd6djkvDkHWhytzxwow0H/RBakyymJ76Kes7BYW w==;
X-CSE-ConnectionGUID: zcuv1OMpQz2NedCWP/XxsQ==
X-CSE-MsgGUID: XRoA0YxDTh2sLr7iXo9Thg==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44029557"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="44029557"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 09:25:55 -0700
X-CSE-ConnectionGUID: 95NW37U2RJi5gTvM/Y3yUw==
X-CSE-MsgGUID: UgZHIttJRLKtEErMnC/LEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="130016280"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Mar 2025 09:25:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Mar 2025 18:25:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 02/14] drm/i915: s/intel_crtc_bw/intel_dbuf_bw/
Date: Wed, 26 Mar 2025 18:25:32 +0200
Message-ID: <20250326162544.3642-3-ville.syrjala@linux.intel.com>
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

Rename the intel_crtc_bw struct to intel_dbuf_bw to better
reflect what it does.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 15c2377193f7..b34db55f5a7e 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1157,15 +1157,15 @@ static bool intel_bw_state_changed(struct intel_display *display,
 	enum pipe pipe;
 
 	for_each_pipe(display, pipe) {
-		const struct intel_dbuf_bw *old_crtc_bw =
+		const struct intel_dbuf_bw *old_dbuf_bw =
 			&old_bw_state->dbuf_bw[pipe];
-		const struct intel_dbuf_bw *new_crtc_bw =
+		const struct intel_dbuf_bw *new_dbuf_bw =
 			&new_bw_state->dbuf_bw[pipe];
 		enum dbuf_slice slice;
 
 		for_each_dbuf_slice(display, slice) {
-			if (old_crtc_bw->max_bw[slice] != new_crtc_bw->max_bw[slice] ||
-			    old_crtc_bw->active_planes[slice] != new_crtc_bw->active_planes[slice])
+			if (old_dbuf_bw->max_bw[slice] != new_dbuf_bw->max_bw[slice] ||
+			    old_dbuf_bw->active_planes[slice] != new_dbuf_bw->active_planes[slice])
 				return true;
 		}
 
@@ -1185,7 +1185,7 @@ static void skl_plane_calc_dbuf_bw(struct intel_bw_state *bw_state,
 {
 	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *i915 = to_i915(display->drm);
-	struct intel_dbuf_bw *crtc_bw = &bw_state->dbuf_bw[crtc->pipe];
+	struct intel_dbuf_bw *dbuf_bw = &bw_state->dbuf_bw[crtc->pipe];
 	unsigned int dbuf_mask = skl_ddb_dbuf_slice_mask(i915, ddb);
 	enum dbuf_slice slice;
 
@@ -1194,8 +1194,8 @@ static void skl_plane_calc_dbuf_bw(struct intel_bw_state *bw_state,
 	 * equal share of the total bw to each plane.
 	 */
 	for_each_dbuf_slice_in_mask(display, slice, dbuf_mask) {
-		crtc_bw->max_bw[slice] = max(crtc_bw->max_bw[slice], data_rate);
-		crtc_bw->active_planes[slice] |= BIT(plane_id);
+		dbuf_bw->max_bw[slice] = max(dbuf_bw->max_bw[slice], data_rate);
+		dbuf_bw->active_planes[slice] |= BIT(plane_id);
 	}
 }
 
@@ -1204,10 +1204,10 @@ static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct intel_dbuf_bw *crtc_bw = &bw_state->dbuf_bw[crtc->pipe];
+	struct intel_dbuf_bw *dbuf_bw = &bw_state->dbuf_bw[crtc->pipe];
 	enum plane_id plane_id;
 
-	memset(crtc_bw, 0, sizeof(*crtc_bw));
+	memset(dbuf_bw, 0, sizeof(*dbuf_bw));
 
 	if (!crtc_state->hw.active)
 		return;
@@ -1249,10 +1249,10 @@ intel_bw_dbuf_min_cdclk(struct intel_display *display,
 		 * equal share of the total bw to each plane.
 		 */
 		for_each_pipe(display, pipe) {
-			const struct intel_dbuf_bw *crtc_bw = &bw_state->dbuf_bw[pipe];
+			const struct intel_dbuf_bw *dbuf_bw = &bw_state->dbuf_bw[pipe];
 
-			max_bw = max(crtc_bw->max_bw[slice], max_bw);
-			num_active_planes += hweight8(crtc_bw->active_planes[slice]);
+			max_bw = max(dbuf_bw->max_bw[slice], max_bw);
+			num_active_planes += hweight8(dbuf_bw->active_planes[slice]);
 		}
 		max_bw *= num_active_planes;
 
-- 
2.45.3

