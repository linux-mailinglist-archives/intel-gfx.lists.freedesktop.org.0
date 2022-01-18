Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F9549229E
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 10:24:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD3371129EF;
	Tue, 18 Jan 2022 09:24:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F12081129F1
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 09:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642497856; x=1674033856;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=YjVf2ee6vLtnmMI40hs8ZEX2rFGGYlSidWicnXe8y4w=;
 b=ndbNZK4/7NHsi5dNgkS0ikGQqbutcl5hcbLE7ishO5HJK8EJDgFFhlCt
 Jo6ZG52OCPz49kZZxK7GSkQMfuRseTAQrCshZpHOyvNJLH6T+Mw8pcBbV
 Y5LxqTYdwNx0wGcEEiZ1WS4dJ+BMHwGBVsldjZSLBcJncThC4zIS+QJ9g
 GmmubOLA+JQi6XxN9dGOSMyK4hYE9KfptARSs92jQxsUMy1O4/47EG4ll
 y0SJQSSCNHGgqKJsjtRTuVHGJarHU9e6rOaG6e/m1pv5Gr4p0/HhK+8mv
 ghVZ40MK0JwDHB/fQN+IzjBhaKwLyf6zpHaTAxWfcq979cEXHv5Arel46 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="305507321"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="305507321"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 01:24:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="530244695"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga007.fm.intel.com with SMTP; 18 Jan 2022 01:24:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Jan 2022 11:24:12 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jan 2022 11:23:45 +0200
Message-Id: <20220118092354.11631-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
References: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/15] drm/i915: Extract skl_crtc_calc_dbuf_bw()
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

Extract the dbuf slice data_rate calculation into a small
helper. Should make it a bit easier to handle the different
color planes of planar formats correctly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 82 +++++++++++++------------
 1 file changed, 44 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index c35bad21b657..f0d6fad048c7 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -672,6 +672,49 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state)
 	return to_intel_bw_state(bw_state);
 }
 
+static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
+				  const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_dbuf_bw *crtc_bw = &bw_state->dbuf_bw[crtc->pipe];
+	enum plane_id plane_id;
+
+	memset(&crtc_bw->used_bw, 0, sizeof(crtc_bw->used_bw));
+
+	if (!crtc_state->hw.active)
+		return;
+
+	for_each_plane_id_on_crtc(crtc, plane_id) {
+		const struct skl_ddb_entry *ddb_y =
+			&crtc_state->wm.skl.plane_ddb_y[plane_id];
+		const struct skl_ddb_entry *ddb_uv =
+			&crtc_state->wm.skl.plane_ddb_uv[plane_id];
+		unsigned int data_rate = crtc_state->data_rate[plane_id];
+		unsigned int dbuf_mask = 0;
+		enum dbuf_slice slice;
+
+		dbuf_mask |= skl_ddb_dbuf_slice_mask(i915, ddb_y);
+		dbuf_mask |= skl_ddb_dbuf_slice_mask(i915, ddb_uv);
+
+		/*
+		 * FIXME: To calculate that more properly we probably
+		 * need to split per plane data_rate into data_rate_y
+		 * and data_rate_uv for multiplanar formats in order not
+		 * to get accounted those twice if they happen to reside
+		 * on different slices.
+		 * However for pre-icl this would work anyway because
+		 * we have only single slice and for icl+ uv plane has
+		 * non-zero data rate.
+		 * So in worst case those calculation are a bit
+		 * pessimistic, which shouldn't pose any significant
+		 * problem anyway.
+		 */
+		for_each_dbuf_slice_in_mask(i915, slice, dbuf_mask)
+			crtc_bw->used_bw[slice] += data_rate;
+	}
+}
+
 int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
@@ -684,50 +727,13 @@ int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
 	int i;
 
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
-		enum plane_id plane_id;
-		struct intel_dbuf_bw *crtc_bw;
-
 		new_bw_state = intel_atomic_get_bw_state(state);
 		if (IS_ERR(new_bw_state))
 			return PTR_ERR(new_bw_state);
 
 		old_bw_state = intel_atomic_get_old_bw_state(state);
 
-		crtc_bw = &new_bw_state->dbuf_bw[crtc->pipe];
-
-		memset(&crtc_bw->used_bw, 0, sizeof(crtc_bw->used_bw));
-
-		if (!crtc_state->hw.active)
-			continue;
-
-		for_each_plane_id_on_crtc(crtc, plane_id) {
-			const struct skl_ddb_entry *plane_alloc =
-				&crtc_state->wm.skl.plane_ddb_y[plane_id];
-			const struct skl_ddb_entry *uv_plane_alloc =
-				&crtc_state->wm.skl.plane_ddb_uv[plane_id];
-			unsigned int data_rate = crtc_state->data_rate[plane_id];
-			unsigned int dbuf_mask = 0;
-			enum dbuf_slice slice;
-
-			dbuf_mask |= skl_ddb_dbuf_slice_mask(dev_priv, plane_alloc);
-			dbuf_mask |= skl_ddb_dbuf_slice_mask(dev_priv, uv_plane_alloc);
-
-			/*
-			 * FIXME: To calculate that more properly we probably
-			 * need to to split per plane data_rate into data_rate_y
-			 * and data_rate_uv for multiplanar formats in order not
-			 * to get accounted those twice if they happen to reside
-			 * on different slices.
-			 * However for pre-icl this would work anyway because
-			 * we have only single slice and for icl+ uv plane has
-			 * non-zero data rate.
-			 * So in worst case those calculation are a bit
-			 * pessimistic, which shouldn't pose any significant
-			 * problem anyway.
-			 */
-			for_each_dbuf_slice_in_mask(dev_priv, slice, dbuf_mask)
-				crtc_bw->used_bw[slice] += data_rate;
-		}
+		skl_crtc_calc_dbuf_bw(new_bw_state, crtc_state);
 	}
 
 	if (!old_bw_state)
-- 
2.32.0

