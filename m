Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B62F1654097
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 13:01:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A5D810E4F3;
	Thu, 22 Dec 2022 12:01:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25A3410E4F3
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 12:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671710463; x=1703246463;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=txydARkglnYh2MqMf+NXt2VNK8CtxfKSvHu6mw6s1Nc=;
 b=i9FgxwAX5LpSbDgl6H0x+ifsnFlPVGpplCgPp0D1M7CUMrEF8kRMd5wf
 wiqqKqLvGloUXmbU/for0O8LQc4wFUSbEeLm2PwpilM/HEw5AJZUmtXig
 4m67x0s/gp6bXX9BFe0ySQoVF4VDQ80u2s8gw5Oj+59r6BvS2bkKSJWtk
 35QjQrI083HaZ2qsStFb71WpKf1G3Q4gBzyH2QgOYRtKHYGF6sVnMvmWc
 YyRrfsw9SH5pOtb1eTYGOmg5f+gqZZaK3GKeVqCFke3fwDe8zODBFyIys
 vEq9/iAUYmjtrN8rgyr7oJDdNKxVTcrOdBvx2rjRxCfmuYNbMFlwn2gV3 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="303541481"
X-IronPort-AV: E=Sophos;i="5.96,265,1665471600"; d="scan'208";a="303541481"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2022 04:01:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="794079212"
X-IronPort-AV: E=Sophos;i="5.96,265,1665471600"; d="scan'208";a="794079212"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 22 Dec 2022 04:01:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 22 Dec 2022 14:01:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Dec 2022 14:00:47 +0200
Message-Id: <20221222120048.8740-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20221222120048.8740-1-ville.syrjala@linux.intel.com>
References: <20221222120048.8740-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: Extract skl_wm_latency()
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

Extract the skl+ wm latnecy determination into a small helper
so that everyone has the same idea what the latency should be.

This introduces a slight functional change in that
skl_cursor_allocation() will now start to account for the
extra 4 usec that the kbk/cfl/cml IPC w/a adds.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 40 +++++++++++++-------
 1 file changed, 26 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index ae4e9e680c2e..65c746d018b5 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -704,6 +704,28 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 				 const struct skl_wm_level *result_prev,
 				 struct skl_wm_level *result /* out */);
 
+static unsigned int skl_wm_latency(struct drm_i915_private *i915, int level,
+				   const struct skl_wm_params *wp)
+{
+	unsigned int latency = i915->display.wm.skl_latency[level];
+
+	if (latency == 0)
+		return 0;
+
+	/*
+	 * WaIncreaseLatencyIPCEnabled: kbl,cfl
+	 * Display WA #1141: kbl,cfl
+	 */
+	if ((IS_KABYLAKE(i915) || IS_COFFEELAKE(i915) || IS_COMETLAKE(i915)) &&
+	    skl_watermark_ipc_enabled(i915))
+		latency += 4;
+
+	if (skl_needs_memory_bw_wa(i915) && wp->x_tiled)
+		latency += 15;
+
+	return latency;
+}
+
 static unsigned int
 skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 		      int num_active)
@@ -723,7 +745,7 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 	drm_WARN_ON(&i915->drm, ret);
 
 	for (level = 0; level <= max_level; level++) {
-		unsigned int latency = i915->display.wm.skl_latency[level];
+		unsigned int latency = skl_wm_latency(i915, level, &wp);
 
 		skl_compute_plane_wm(crtc_state, plane, level, latency, &wp, &wm, &wm);
 		if (wm.min_ddb_alloc == U16_MAX)
@@ -1834,17 +1856,6 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 		return;
 	}
 
-	/*
-	 * WaIncreaseLatencyIPCEnabled: kbl,cfl
-	 * Display WA #1141: kbl,cfl
-	 */
-	if ((IS_KABYLAKE(i915) || IS_COFFEELAKE(i915) || IS_COMETLAKE(i915)) &&
-	    skl_watermark_ipc_enabled(i915))
-		latency += 4;
-
-	if (skl_needs_memory_bw_wa(i915) && wp->x_tiled)
-		latency += 15;
-
 	method1 = skl_wm_method1(i915, wp->plane_pixel_rate,
 				 wp->cpp, latency, wp->dbuf_block_size);
 	method2 = skl_wm_method2(wp->plane_pixel_rate,
@@ -1971,7 +1982,7 @@ skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
 
 	for (level = 0; level <= max_level; level++) {
 		struct skl_wm_level *result = &levels[level];
-		unsigned int latency = i915->display.wm.skl_latency[level];
+		unsigned int latency = skl_wm_latency(i915, level, wm_params);
 
 		skl_compute_plane_wm(crtc_state, plane, level, latency,
 				     wm_params, result_prev, result);
@@ -1991,7 +2002,8 @@ static void tgl_compute_sagv_wm(const struct intel_crtc_state *crtc_state,
 	unsigned int latency = 0;
 
 	if (i915->display.sagv.block_time_us)
-		latency = i915->display.sagv.block_time_us + i915->display.wm.skl_latency[0];
+		latency = i915->display.sagv.block_time_us +
+			skl_wm_latency(i915, 0, wm_params);
 
 	skl_compute_plane_wm(crtc_state, plane, 0, latency,
 			     wm_params, &levels[0],
-- 
2.38.2

