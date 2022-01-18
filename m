Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6D349229D
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 10:24:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C06041129F0;
	Tue, 18 Jan 2022 09:24:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDC0E112976
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 09:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642497852; x=1674033852;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WKR537Uluzp7elDH3xZAXJIUt+VQ8LAtuFeykgTVkek=;
 b=d7s3LDA645wPCDRjfNNAbvjE5kyZtJY9zP8ZocC2OGhcfpXfTjJu64bF
 M6Z5NCQcjswurqhlCNox8J5c//P4FeUKL/pca06sYbEI9313zXrGu3UVJ
 inX/y0O4BbPuu5XhLqOJx+jQOxH8I73+cYu+F9zwNJ4lJ86yjfyKvNhKD
 mV+8IzpqS/zV/oVCYQnG5+5aPGo1ZmG0h8snDIBKBljRuouugEeljYkvU
 +QSnp/piMuhWVdcJa1yLr+Qkuj341GqhOhiQMp+eoz3qXRY9UsULTE1zU
 w1YCGuXQA71D56stNWJ8b2CNFBRVuJhHhBUcqyy6M1V1sSWiTvJJEECtD w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="244732540"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="244732540"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 01:24:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="622081151"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga002.fm.intel.com with SMTP; 18 Jan 2022 01:24:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Jan 2022 11:24:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jan 2022 11:23:44 +0200
Message-Id: <20220118092354.11631-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
References: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/15] drm/i915: Extract skl_allocate_plane_ddb()
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

Replace some copy-pasta with a function.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 41 +++++++++++++++++++--------------
 1 file changed, 24 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index cd1b5f09f241..93ff07f6ef26 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -5073,9 +5073,24 @@ struct skl_plane_ddb_iter {
 	u16 start, size;
 };
 
+static u16
+skl_allocate_plane_ddb(struct skl_plane_ddb_iter *iter,
+		       const struct skl_wm_level *wm,
+		       u64 data_rate)
+{
+	u16 extra;
+
+	extra = min_t(u16, iter->size,
+		      DIV64_U64_ROUND_UP(iter->size * data_rate, iter->data_rate));
+	iter->size -= extra;
+	iter->data_rate -= data_rate;
+
+	return wm->min_ddb_alloc + extra;
+}
+
 static int
-skl_allocate_plane_ddb(struct intel_atomic_state *state,
-		       struct intel_crtc *crtc)
+skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
+			    struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state =
@@ -5160,8 +5175,6 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 	for_each_plane_id_on_crtc(crtc, plane_id) {
 		const struct skl_plane_wm *wm =
 			&crtc_state->wm.skl.optimal.planes[plane_id];
-		u64 data_rate;
-		u16 extra;
 
 		if (plane_id == PLANE_CURSOR)
 			continue;
@@ -5173,22 +5186,16 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 		if (iter.data_rate == 0)
 			break;
 
-		data_rate = crtc_state->plane_data_rate[plane_id];
-		extra = min_t(u16, iter.size,
-			      DIV64_U64_ROUND_UP(iter.size * data_rate, iter.data_rate));
-		iter.total[plane_id] = wm->wm[level].min_ddb_alloc + extra;
-		iter.size -= extra;
-		iter.data_rate -= data_rate;
+		iter.total[plane_id] =
+			skl_allocate_plane_ddb(&iter, &wm->wm[level],
+					       crtc_state->plane_data_rate[plane_id]);
 
 		if (iter.data_rate == 0)
 			break;
 
-		data_rate = crtc_state->uv_plane_data_rate[plane_id];
-		extra = min_t(u16, iter.size,
-			      DIV64_U64_ROUND_UP(iter.size * data_rate, iter.data_rate));
-		iter.uv_total[plane_id] = wm->uv_wm[level].min_ddb_alloc + extra;
-		iter.size -= extra;
-		iter.data_rate -= data_rate;
+		iter.uv_total[plane_id] =
+			skl_allocate_plane_ddb(&iter, &wm->uv_wm[level],
+					       crtc_state->uv_plane_data_rate[plane_id]);
 	}
 	drm_WARN_ON(&dev_priv->drm, iter.size != 0 || iter.data_rate != 0);
 
@@ -6136,7 +6143,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
-		ret = skl_allocate_plane_ddb(state, crtc);
+		ret = skl_crtc_allocate_plane_ddb(state, crtc);
 		if (ret)
 			return ret;
 
-- 
2.32.0

