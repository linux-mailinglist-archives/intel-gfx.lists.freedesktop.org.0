Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71924A56FE3
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 19:01:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F116110EC21;
	Fri,  7 Mar 2025 18:01:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AbYJShW+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD01610E15D;
 Fri,  7 Mar 2025 18:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741370512; x=1772906512;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+hMr83SAbjcTA4BExQjluRRdjW0KhwYlsL4WPdFfdU4=;
 b=AbYJShW+boQ/KJqI3++YzzjpZefMdv8kn+1kkWwdOJ1Mq+ZEH2ju/ccI
 XKub0vZvMlwBQcN9xcPXECXS6c5NiKiRekE0NZ4sP7x99KIteM97iFSKV
 1cWEGMrFCHaS6PqnKEYrowJvWfYKhsRStUoqFFCjflsJzI+mKF26VubTo
 0xNE24QQgHg+AsLe7ZDX7mqwXsKKCr5h1jmsXjfKJCESeGbla77QUkMUK
 bxJ0xOXIaauDcymVSM/62TRA4NejyRMiGs7ml2MCmz8/lKt+6EVurtiHn
 iXu3hJHJ6HnzzdKWsQ/cxKfB9Vm9HqNgAqwJCF7hUnORfLNMyfpHaFzY1 A==;
X-CSE-ConnectionGUID: X5aajgqxTCms2u3rpGU4kw==
X-CSE-MsgGUID: g1pPGjlXSECkOEeAHxuANA==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="52637126"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="52637126"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 10:01:52 -0800
X-CSE-ConnectionGUID: ZWek0KS9Tric45eHN8UjPQ==
X-CSE-MsgGUID: ms8onMd6Sxa32qXfzvxweg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124621095"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 07 Mar 2025 10:01:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Mar 2025 20:01:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 02/14] drm/i915: s/intel_crtc_bw/intel_dbuf_bw/
Date: Fri,  7 Mar 2025 20:01:27 +0200
Message-ID: <20250307180139.15744-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
References: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
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
index 7b9ae926c5c4..2bc020690515 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1124,15 +1124,15 @@ static bool intel_bw_state_changed(struct drm_i915_private *i915,
 	enum pipe pipe;
 
 	for_each_pipe(i915, pipe) {
-		const struct intel_dbuf_bw *old_crtc_bw =
+		const struct intel_dbuf_bw *old_dbuf_bw =
 			&old_bw_state->dbuf_bw[pipe];
-		const struct intel_dbuf_bw *new_crtc_bw =
+		const struct intel_dbuf_bw *new_dbuf_bw =
 			&new_bw_state->dbuf_bw[pipe];
 		enum dbuf_slice slice;
 
 		for_each_dbuf_slice(i915, slice) {
-			if (old_crtc_bw->max_bw[slice] != new_crtc_bw->max_bw[slice] ||
-			    old_crtc_bw->active_planes[slice] != new_crtc_bw->active_planes[slice])
+			if (old_dbuf_bw->max_bw[slice] != new_dbuf_bw->max_bw[slice] ||
+			    old_dbuf_bw->active_planes[slice] != new_dbuf_bw->active_planes[slice])
 				return true;
 		}
 
@@ -1151,7 +1151,7 @@ static void skl_plane_calc_dbuf_bw(struct intel_bw_state *bw_state,
 				   unsigned int data_rate)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct intel_dbuf_bw *crtc_bw = &bw_state->dbuf_bw[crtc->pipe];
+	struct intel_dbuf_bw *dbuf_bw = &bw_state->dbuf_bw[crtc->pipe];
 	unsigned int dbuf_mask = skl_ddb_dbuf_slice_mask(i915, ddb);
 	enum dbuf_slice slice;
 
@@ -1160,8 +1160,8 @@ static void skl_plane_calc_dbuf_bw(struct intel_bw_state *bw_state,
 	 * equal share of the total bw to each plane.
 	 */
 	for_each_dbuf_slice_in_mask(i915, slice, dbuf_mask) {
-		crtc_bw->max_bw[slice] = max(crtc_bw->max_bw[slice], data_rate);
-		crtc_bw->active_planes[slice] |= BIT(plane_id);
+		dbuf_bw->max_bw[slice] = max(dbuf_bw->max_bw[slice], data_rate);
+		dbuf_bw->active_planes[slice] |= BIT(plane_id);
 	}
 }
 
@@ -1170,10 +1170,10 @@ static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct intel_dbuf_bw *crtc_bw = &bw_state->dbuf_bw[crtc->pipe];
+	struct intel_dbuf_bw *dbuf_bw = &bw_state->dbuf_bw[crtc->pipe];
 	enum plane_id plane_id;
 
-	memset(crtc_bw, 0, sizeof(*crtc_bw));
+	memset(dbuf_bw, 0, sizeof(*dbuf_bw));
 
 	if (!crtc_state->hw.active)
 		return;
@@ -1215,10 +1215,10 @@ intel_bw_dbuf_min_cdclk(struct drm_i915_private *i915,
 		 * equal share of the total bw to each plane.
 		 */
 		for_each_pipe(i915, pipe) {
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

