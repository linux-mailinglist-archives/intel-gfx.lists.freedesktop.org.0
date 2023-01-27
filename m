Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2922767EC6F
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 18:31:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9196410E9BB;
	Fri, 27 Jan 2023 17:31:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B764210E9BB
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jan 2023 17:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674840660; x=1706376660;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TUNp0kYdHTg2hbuKqJ8n3gIGTrCZVkEXpk7ZuIz5A6Q=;
 b=CmnCieK5jgFW18f2JqinNi4uCXuPDGNqIcoL343zenhs41UcwoZ9Ln2X
 Taq/9qXkf4juMbJNhJzJ/IgHbki44Wir0nDPFaWTkp57Z7DOlMCz4BGBS
 a+JtvYp1m0qRhhvRf82Gcvcj+ppVIQWb6eo4UZSNTGZ+tinHEa4GHZL7T
 UNwOV5HEKluOQPoczHIzGvu27bIPKJzkl4iWgiVyYdOcz5OgZVaBPnQMP
 gZYRTDle5XrWxit15c1F5AtjXctl+7hhCSQO5Kv34wCKFGQiaFXTFf4E1
 oAoopOuEzVyvZ/ndHOzlB+IEGaEmG5picl5BiMHCCvtBdjT/+FErbmijx w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="327160523"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="327160523"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 09:30:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="752061825"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="752061825"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 27 Jan 2023 09:30:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Jan 2023 19:30:53 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Jan 2023 19:30:43 +0200
Message-Id: <20230127173044.24108-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230127173044.24108-1-ville.syrjala@linux.intel.com>
References: <20230127173044.24108-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/4] drm/i915: Extract skl_wm_latency()
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

Extract the skl+ wm latency determination into a small helper
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
2.39.1

